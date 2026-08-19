package com.itextpdf.p017io.image;

import androidx.exifinterface.media.ExifInterface;
import androidx.fragment.app.FragmentTransaction;
import com.itextpdf.p017io.font.PdfEncodings;
import com.itextpdf.p017io.util.StreamUtil;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.net.URL;
import java.util.HashMap;

/* JADX INFO: loaded from: classes6.dex */
public final class GifImageHelper {
    static final int MAX_STACK_SIZE = 4096;

    private static int newBpc(int i) {
        if (i != 1 && i != 2) {
            if (i == 3) {
                return 4;
            }
            if (i != 4) {
                return 8;
            }
        }
        return i;
    }

    private static class GifParameters {
        int bgColor;
        int bgIndex;
        int currentFrame;
        byte[] fromData;
        URL fromUrl;
        boolean gctFlag;

        /* JADX INFO: renamed from: ih */
        int f2879ih;
        GifImageData image;
        InputStream input;
        boolean interlace;

        /* JADX INFO: renamed from: iw */
        int f2880iw;

        /* JADX INFO: renamed from: ix */
        int f2881ix;

        /* JADX INFO: renamed from: iy */
        int f2882iy;
        boolean lctFlag;
        int lctSize;
        int m_bpc;
        byte[] m_curr_table;
        int m_gbpc;
        byte[] m_global_table;
        int m_line_stride;
        byte[] m_local_table;
        byte[] m_out;
        int pixelAspect;
        byte[] pixelStack;
        byte[] pixels;
        short[] prefix;
        byte[] suffix;
        int transIndex;
        byte[] block = new byte[256];
        int blockSize = 0;
        int dispose = 0;
        boolean transparency = false;
        int delay = 0;

        public GifParameters(GifImageData gifImageData) {
            this.image = gifImageData;
        }
    }

    public static void processImage(GifImageData gifImageData) {
        processImage(gifImageData, -1);
    }

    public static void processImage(GifImageData gifImageData, int i) {
        GifParameters gifParameters = new GifParameters(gifImageData);
        try {
            if (gifImageData.getData() == null) {
                gifImageData.loadData();
            }
            process(new ByteArrayInputStream(gifImageData.getData()), gifParameters, i);
        } catch (IOException e) {
            throw new com.itextpdf.p017io.exceptions.IOException(com.itextpdf.p017io.exceptions.IOException.GifImageException, (Throwable) e);
        }
    }

    private static void process(InputStream inputStream, GifParameters gifParameters, int i) throws IOException {
        gifParameters.input = inputStream;
        readHeader(gifParameters);
        readContents(gifParameters, i);
        if (gifParameters.currentFrame <= i) {
            throw new com.itextpdf.p017io.exceptions.IOException(com.itextpdf.p017io.exceptions.IOException.CannotFind1Frame).setMessageParams(Integer.valueOf(i));
        }
    }

    private static void readHeader(GifParameters gifParameters) throws IOException {
        StringBuilder sb = new StringBuilder("");
        for (int i = 0; i < 6; i++) {
            sb.append((char) gifParameters.input.read());
        }
        if (!sb.toString().startsWith("GIF8")) {
            throw new com.itextpdf.p017io.exceptions.IOException(com.itextpdf.p017io.exceptions.IOException.GifSignatureNotFound);
        }
        readLSD(gifParameters);
        if (gifParameters.gctFlag) {
            gifParameters.m_global_table = readColorTable(gifParameters.m_gbpc, gifParameters);
        }
    }

    private static void readLSD(GifParameters gifParameters) throws IOException {
        gifParameters.image.setLogicalWidth(readShort(gifParameters));
        gifParameters.image.setLogicalHeight(readShort(gifParameters));
        int i = gifParameters.input.read();
        gifParameters.gctFlag = (i & 128) != 0;
        gifParameters.m_gbpc = (i & 7) + 1;
        gifParameters.bgIndex = gifParameters.input.read();
        gifParameters.pixelAspect = gifParameters.input.read();
    }

    private static int readShort(GifParameters gifParameters) throws IOException {
        return (gifParameters.input.read() << 8) | gifParameters.input.read();
    }

    private static int readBlock(GifParameters gifParameters) throws IOException {
        gifParameters.blockSize = gifParameters.input.read();
        if (gifParameters.blockSize <= 0) {
            gifParameters.blockSize = 0;
            return 0;
        }
        gifParameters.blockSize = gifParameters.input.read(gifParameters.block, 0, gifParameters.blockSize);
        return gifParameters.blockSize;
    }

    private static byte[] readColorTable(int i, GifParameters gifParameters) throws IOException {
        int i2 = (1 << i) * 3;
        byte[] bArr = new byte[(1 << newBpc(i)) * 3];
        StreamUtil.readFully(gifParameters.input, bArr, 0, i2);
        return bArr;
    }

    private static void readContents(GifParameters gifParameters, int i) throws IOException {
        boolean z = false;
        gifParameters.currentFrame = 0;
        while (!z) {
            int i2 = gifParameters.input.read();
            if (i2 == 33) {
                int i3 = gifParameters.input.read();
                if (i3 == 249) {
                    readGraphicControlExt(gifParameters);
                } else if (i3 == 255) {
                    readBlock(gifParameters);
                    skip(gifParameters);
                } else {
                    skip(gifParameters);
                }
            } else if (i2 != 44) {
                z = true;
            } else {
                readFrame(gifParameters);
                if (gifParameters.currentFrame == i) {
                    z = true;
                }
                gifParameters.currentFrame++;
            }
        }
    }

    private static void readFrame(GifParameters gifParameters) throws IOException {
        gifParameters.f2881ix = readShort(gifParameters);
        gifParameters.f2882iy = readShort(gifParameters);
        gifParameters.f2880iw = readShort(gifParameters);
        gifParameters.f2879ih = readShort(gifParameters);
        int i = gifParameters.input.read();
        gifParameters.lctFlag = (i & 128) != 0;
        gifParameters.interlace = (i & 64) != 0;
        int i2 = i & 7;
        gifParameters.lctSize = 2 << i2;
        gifParameters.m_bpc = newBpc(gifParameters.m_gbpc);
        if (gifParameters.lctFlag) {
            int i3 = i2 + 1;
            gifParameters.m_curr_table = readColorTable(i3, gifParameters);
            gifParameters.m_bpc = newBpc(i3);
        } else {
            gifParameters.m_curr_table = gifParameters.m_global_table;
        }
        if (gifParameters.transparency && gifParameters.transIndex >= gifParameters.m_curr_table.length / 3) {
            gifParameters.transparency = false;
        }
        if (gifParameters.transparency && gifParameters.m_bpc == 1) {
            byte[] bArr = new byte[12];
            System.arraycopy(gifParameters.m_curr_table, 0, bArr, 0, 6);
            gifParameters.m_curr_table = bArr;
            gifParameters.m_bpc = 2;
        }
        if (!decodeImageData(gifParameters)) {
            skip(gifParameters);
        }
        try {
            Object[] objArr = {"/Indexed", "/DeviceRGB", Integer.valueOf((gifParameters.m_curr_table.length / 3) - 1), PdfEncodings.convertToString(gifParameters.m_curr_table, null)};
            HashMap map = new HashMap();
            map.put(ExifInterface.TAG_COLOR_SPACE, objArr);
            RawImageData rawImageData = new RawImageData(gifParameters.m_out, ImageType.GIF);
            RawImageHelper.updateRawImageParameters(rawImageData, gifParameters.f2880iw, gifParameters.f2879ih, 1, gifParameters.m_bpc, gifParameters.m_out);
            RawImageHelper.updateImageAttributes(rawImageData, map);
            gifParameters.image.addFrame(rawImageData);
            if (gifParameters.transparency) {
                rawImageData.setTransparency(new int[]{gifParameters.transIndex, gifParameters.transIndex});
            }
        } catch (Exception e) {
            throw new com.itextpdf.p017io.exceptions.IOException(com.itextpdf.p017io.exceptions.IOException.GifImageException, (Throwable) e);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v20 */
    /* JADX WARN: Type inference failed for: r1v21 */
    /* JADX WARN: Type inference failed for: r1v22 */
    /* JADX WARN: Type inference failed for: r1v25, types: [short] */
    /* JADX WARN: Type inference failed for: r1v27 */
    private static boolean decodeImageData(GifParameters gifParameters) throws IOException {
        int i;
        int i2;
        int i3;
        short s;
        int i4 = gifParameters.f2880iw * gifParameters.f2879ih;
        if (gifParameters.prefix == null) {
            gifParameters.prefix = new short[4096];
        }
        if (gifParameters.suffix == null) {
            gifParameters.suffix = new byte[4096];
        }
        if (gifParameters.pixelStack == null) {
            gifParameters.pixelStack = new byte[FragmentTransaction.TRANSIT_FRAGMENT_OPEN];
        }
        gifParameters.m_line_stride = ((gifParameters.f2880iw * gifParameters.m_bpc) + 7) / 8;
        gifParameters.m_out = new byte[gifParameters.m_line_stride * gifParameters.f2879ih];
        boolean z = true;
        int i5 = gifParameters.interlace ? 8 : 1;
        int i6 = gifParameters.input.read();
        int i7 = 1 << i6;
        int i8 = i7 + 1;
        int i9 = i7 + 2;
        int i10 = i6 + 1;
        int i11 = (1 << i10) - 1;
        for (int i12 = 0; i12 < i7; i12++) {
            gifParameters.prefix[i12] = 0;
            gifParameters.suffix[i12] = (byte) i12;
        }
        int i13 = i10;
        int i14 = 1;
        int i15 = i11;
        int i16 = 0;
        int i17 = 0;
        int i18 = 0;
        int i19 = 0;
        int block = 0;
        int i20 = 0;
        int i21 = 0;
        int i22 = 0;
        int i23 = 0;
        int i24 = -1;
        int i25 = i9;
        while (i16 < i4) {
            if (i17 != 0) {
                i = i4;
                i2 = i10;
            } else if (i18 < i13) {
                if (block == 0) {
                    block = readBlock(gifParameters);
                    if (block <= 0) {
                        return z;
                    }
                    i20 = 0;
                }
                i19 += (gifParameters.block[i20] & 255) << i18;
                i18 += 8;
                i20++;
                block--;
            } else {
                int i26 = i19 & i15;
                i19 >>= i13;
                i18 -= i13;
                if (i26 > i25 || i26 == i8) {
                    break;
                }
                if (i26 == i7) {
                    i13 = i10;
                    i25 = i9;
                    i15 = i11;
                    i24 = -1;
                } else if (i24 == -1) {
                    gifParameters.pixelStack[i17] = gifParameters.suffix[i26];
                    i24 = i26;
                    i21 = i24;
                    i17++;
                    i4 = i4;
                } else {
                    i = i4;
                    if (i26 == i25) {
                        i2 = i10;
                        gifParameters.pixelStack[i17] = (byte) i21;
                        s = i24;
                        i17++;
                    } else {
                        i2 = i10;
                        s = i26;
                    }
                    while (s > i7) {
                        gifParameters.pixelStack[i17] = gifParameters.suffix[s];
                        s = gifParameters.prefix[s];
                        i17++;
                        i26 = i26;
                    }
                    int i27 = i26;
                    int i28 = gifParameters.suffix[s] & 255;
                    if (i25 >= 4096) {
                        break;
                    }
                    int i29 = i17 + 1;
                    byte b = (byte) i28;
                    gifParameters.pixelStack[i17] = b;
                    gifParameters.prefix[i25] = (short) i24;
                    gifParameters.suffix[i25] = b;
                    i25++;
                    if ((i25 & i15) == 0 && i25 < 4096) {
                        i13++;
                        i15 += i25;
                    }
                    i17 = i29;
                    i24 = i27;
                    i21 = i28;
                }
                z = true;
            }
            i17--;
            i16++;
            int i30 = i22;
            int i31 = i23;
            setPixel(i31, i30, gifParameters.pixelStack[i17], gifParameters);
            int i32 = i31 + 1;
            if (i32 >= gifParameters.f2880iw) {
                int i33 = i30 + i5;
                if (i33 < gifParameters.f2879ih) {
                    i22 = i33;
                    i4 = i;
                    i10 = i2;
                    z = true;
                } else if (gifParameters.interlace) {
                    do {
                        int i34 = i14 + 1;
                        i3 = 4;
                        if (i34 != 2) {
                            if (i34 == 3) {
                                i5 = 4;
                                i3 = 2;
                            } else if (i34 != 4) {
                                i3 = gifParameters.f2879ih - 1;
                                i5 = 0;
                            } else {
                                i3 = 1;
                                i5 = 2;
                            }
                        }
                        i14 = i34;
                    } while (i3 >= gifParameters.f2879ih);
                    i22 = i3;
                    i4 = i;
                    i23 = 0;
                    z = true;
                    i10 = i2;
                } else {
                    i22 = gifParameters.f2879ih - 1;
                    z = true;
                    i4 = i;
                    i10 = i2;
                    i5 = 0;
                }
                i23 = 0;
            } else {
                i23 = i32;
                i22 = i30;
                i4 = i;
                i10 = i2;
                z = true;
            }
        }
        return false;
    }

    private static void setPixel(int i, int i2, int i3, GifParameters gifParameters) {
        if (gifParameters.m_bpc == 8) {
            gifParameters.m_out[i + (gifParameters.f2880iw * i2)] = (byte) i3;
            return;
        }
        int i4 = (gifParameters.m_line_stride * i2) + (i / (8 / gifParameters.m_bpc));
        int i5 = i3 << ((8 - (gifParameters.m_bpc * (i % (8 / gifParameters.m_bpc)))) - gifParameters.m_bpc);
        byte[] bArr = gifParameters.m_out;
        bArr[i4] = (byte) (((byte) i5) | bArr[i4]);
    }

    private static void readGraphicControlExt(GifParameters gifParameters) throws IOException {
        gifParameters.input.read();
        int i = gifParameters.input.read();
        gifParameters.dispose = (i & 28) >> 2;
        if (gifParameters.dispose == 0) {
            gifParameters.dispose = 1;
        }
        gifParameters.transparency = (i & 1) != 0;
        gifParameters.delay = readShort(gifParameters) * 10;
        gifParameters.transIndex = gifParameters.input.read();
        gifParameters.input.read();
    }

    private static void skip(GifParameters gifParameters) throws IOException {
        do {
            readBlock(gifParameters);
        } while (gifParameters.blockSize > 0);
    }
}
