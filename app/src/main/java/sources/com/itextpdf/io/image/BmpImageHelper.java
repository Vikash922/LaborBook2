package com.itextpdf.io.image;

import androidx.core.view.MotionEventCompat;
import androidx.exifinterface.media.ExifInterface;
import com.google.android.material.internal.ViewUtils;
import com.google.common.base.Ascii;
import com.itextpdf.io.font.PdfEncodings;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes6.dex */
final class BmpImageHelper {
    private static final int BI_BITFIELDS = 3;
    private static final int BI_RGB = 0;
    private static final int BI_RLE4 = 2;
    private static final int BI_RLE8 = 1;
    private static final int LCS_CALIBRATED_RGB = 0;
    private static final int LCS_CMYK = 2;
    private static final int LCS_SRGB = 1;
    private static final int VERSION_2_1_BIT = 0;
    private static final int VERSION_2_24_BIT = 3;
    private static final int VERSION_2_4_BIT = 1;
    private static final int VERSION_2_8_BIT = 2;
    private static final int VERSION_3_1_BIT = 4;
    private static final int VERSION_3_24_BIT = 7;
    private static final int VERSION_3_4_BIT = 5;
    private static final int VERSION_3_8_BIT = 6;
    private static final int VERSION_3_NT_16_BIT = 8;
    private static final int VERSION_3_NT_32_BIT = 9;
    private static final int VERSION_4_16_BIT = 13;
    private static final int VERSION_4_1_BIT = 10;
    private static final int VERSION_4_24_BIT = 14;
    private static final int VERSION_4_32_BIT = 15;
    private static final int VERSION_4_4_BIT = 11;
    private static final int VERSION_4_8_BIT = 12;

    private static int findMask(int i) {
        for (int i2 = 0; i2 < 32 && (i & 1) != 1; i2++) {
            i >>>= 1;
        }
        return i;
    }

    private static int findShift(int i) {
        int i2 = 0;
        while (i2 < 32 && (i & 1) != 1) {
            i >>>= 1;
            i2++;
        }
        return i2;
    }

    BmpImageHelper() {
    }

    private static class BmpParameters {
        Map<String, Object> additional;
        int alphaMask;
        long bitmapFileSize;
        long bitmapOffset;
        int bitsPerPixel;
        int blueMask;
        long compression;
        int greenMask;
        int height;
        BmpImageData image;
        long imageSize;
        int imageType;
        InputStream inputStream;
        boolean isBottomUp;
        int numBands;
        byte[] palette;
        Map<String, Object> properties = new HashMap();
        int redMask;
        int width;
        long xPelsPerMeter;
        long yPelsPerMeter;

        public BmpParameters(BmpImageData bmpImageData) {
            this.image = bmpImageData;
        }
    }

    public static void processImage(ImageData imageData) {
        if (imageData.getOriginalType() != ImageType.BMP) {
            throw new IllegalArgumentException("BMP image expected");
        }
        try {
            if (imageData.getData() == null) {
                imageData.loadData();
            }
            ByteArrayInputStream byteArrayInputStream = new ByteArrayInputStream(imageData.getData());
            imageData.imageSize = imageData.getData().length;
            BmpParameters bmpParameters = new BmpParameters((BmpImageData) imageData);
            process(bmpParameters, byteArrayInputStream);
            if (getImage(bmpParameters)) {
                imageData.setWidth(bmpParameters.width);
                imageData.setHeight(bmpParameters.height);
                imageData.setDpi((int) ((bmpParameters.xPelsPerMeter * 0.0254d) + 0.5d), (int) ((bmpParameters.yPelsPerMeter * 0.0254d) + 0.5d));
            }
            RawImageHelper.updateImageAttributes(bmpParameters.image, bmpParameters.additional);
        } catch (IOException e) {
            throw new com.itextpdf.io.exceptions.IOException(com.itextpdf.io.exceptions.IOException.BmpImageException, (Throwable) e);
        }
    }

    private static void process(BmpParameters bmpParameters, InputStream inputStream) throws IOException {
        int i;
        int i2;
        int i3;
        int i4;
        int i5;
        bmpParameters.inputStream = inputStream;
        if (!bmpParameters.image.isNoHeader()) {
            if (readUnsignedByte(bmpParameters.inputStream) != 66 || readUnsignedByte(bmpParameters.inputStream) != 77) {
                throw new com.itextpdf.io.exceptions.IOException(com.itextpdf.io.exceptions.IOException.InvalidMagicValueForBmpFileMustBeBM);
            }
            bmpParameters.bitmapFileSize = readDWord(bmpParameters.inputStream);
            readWord(bmpParameters.inputStream);
            readWord(bmpParameters.inputStream);
            bmpParameters.bitmapOffset = readDWord(bmpParameters.inputStream);
        }
        long dWord = readDWord(bmpParameters.inputStream);
        if (dWord == 12) {
            bmpParameters.width = readWord(bmpParameters.inputStream);
            bmpParameters.height = readWord(bmpParameters.inputStream);
        } else {
            bmpParameters.width = readLong(bmpParameters.inputStream);
            bmpParameters.height = readLong(bmpParameters.inputStream);
        }
        int word = readWord(bmpParameters.inputStream);
        bmpParameters.bitsPerPixel = readWord(bmpParameters.inputStream);
        bmpParameters.properties.put("color_planes", Integer.valueOf(word));
        bmpParameters.properties.put("bits_per_pixel", Integer.valueOf(bmpParameters.bitsPerPixel));
        bmpParameters.numBands = 3;
        if (bmpParameters.bitmapOffset == 0) {
            bmpParameters.bitmapOffset = dWord;
        }
        if (dWord == 12) {
            bmpParameters.properties.put("bmp_version", "BMP v. 2.x");
            if (bmpParameters.bitsPerPixel == 1) {
                bmpParameters.imageType = 0;
            } else if (bmpParameters.bitsPerPixel == 4) {
                bmpParameters.imageType = 1;
            } else if (bmpParameters.bitsPerPixel == 8) {
                bmpParameters.imageType = 2;
            } else if (bmpParameters.bitsPerPixel == 24) {
                bmpParameters.imageType = 3;
            }
            int i6 = ((int) (((bmpParameters.bitmapOffset - 14) - dWord) / 3)) * 3;
            if (bmpParameters.bitmapOffset == dWord) {
                int i7 = bmpParameters.imageType;
                if (i7 == 0) {
                    i6 = 6;
                } else if (i7 == 1) {
                    i6 = 48;
                } else if (i7 == 2) {
                    i6 = ViewUtils.EDGE_TO_EDGE_FLAGS;
                } else if (i7 == 3) {
                    i6 = 0;
                }
                bmpParameters.bitmapOffset = dWord + ((long) i6);
            }
            readPalette(i6, bmpParameters);
        } else {
            bmpParameters.compression = readDWord(bmpParameters.inputStream);
            bmpParameters.imageSize = readDWord(bmpParameters.inputStream);
            bmpParameters.xPelsPerMeter = readLong(bmpParameters.inputStream);
            bmpParameters.yPelsPerMeter = readLong(bmpParameters.inputStream);
            long dWord2 = readDWord(bmpParameters.inputStream);
            long dWord3 = readDWord(bmpParameters.inputStream);
            int i8 = (int) bmpParameters.compression;
            if (i8 == 0) {
                bmpParameters.properties.put("compression", "BI_RGB");
            } else if (i8 == 1) {
                bmpParameters.properties.put("compression", "BI_RLE8");
            } else if (i8 == 2) {
                bmpParameters.properties.put("compression", "BI_RLE4");
            } else if (i8 == 3) {
                bmpParameters.properties.put("compression", "BI_BITFIELDS");
            }
            bmpParameters.properties.put("x_pixels_per_meter", Long.valueOf(bmpParameters.xPelsPerMeter));
            bmpParameters.properties.put("y_pixels_per_meter", Long.valueOf(bmpParameters.yPelsPerMeter));
            bmpParameters.properties.put("colors_used", Long.valueOf(dWord2));
            bmpParameters.properties.put("colors_important", Long.valueOf(dWord3));
            if (dWord == 40 || dWord == 52 || dWord == 56) {
                int i9 = (int) bmpParameters.compression;
                if (i9 == 0 || i9 == 1 || i9 == 2) {
                    if (bmpParameters.bitsPerPixel == 1) {
                        bmpParameters.imageType = 4;
                    } else if (bmpParameters.bitsPerPixel == 4) {
                        bmpParameters.imageType = 5;
                    } else if (bmpParameters.bitsPerPixel == 8) {
                        bmpParameters.imageType = 6;
                    } else if (bmpParameters.bitsPerPixel == 24) {
                        bmpParameters.imageType = 7;
                    } else if (bmpParameters.bitsPerPixel == 16) {
                        bmpParameters.imageType = 8;
                        bmpParameters.redMask = 31744;
                        bmpParameters.greenMask = 992;
                        bmpParameters.blueMask = 31;
                        bmpParameters.properties.put("red_mask", Integer.valueOf(bmpParameters.redMask));
                        bmpParameters.properties.put("green_mask", Integer.valueOf(bmpParameters.greenMask));
                        bmpParameters.properties.put("blue_mask", Integer.valueOf(bmpParameters.blueMask));
                    } else if (bmpParameters.bitsPerPixel == 32) {
                        bmpParameters.imageType = 9;
                        bmpParameters.redMask = 16711680;
                        bmpParameters.greenMask = MotionEventCompat.ACTION_POINTER_INDEX_MASK;
                        bmpParameters.blueMask = 255;
                        bmpParameters.properties.put("red_mask", Integer.valueOf(bmpParameters.redMask));
                        bmpParameters.properties.put("green_mask", Integer.valueOf(bmpParameters.greenMask));
                        bmpParameters.properties.put("blue_mask", Integer.valueOf(bmpParameters.blueMask));
                    }
                    if (dWord >= 52) {
                        bmpParameters.redMask = (int) readDWord(bmpParameters.inputStream);
                        bmpParameters.greenMask = (int) readDWord(bmpParameters.inputStream);
                        bmpParameters.blueMask = (int) readDWord(bmpParameters.inputStream);
                        bmpParameters.properties.put("red_mask", Integer.valueOf(bmpParameters.redMask));
                        bmpParameters.properties.put("green_mask", Integer.valueOf(bmpParameters.greenMask));
                        bmpParameters.properties.put("blue_mask", Integer.valueOf(bmpParameters.blueMask));
                    }
                    if (dWord == 56) {
                        bmpParameters.alphaMask = (int) readDWord(bmpParameters.inputStream);
                        bmpParameters.properties.put("alpha_mask", Integer.valueOf(bmpParameters.alphaMask));
                    }
                    int i10 = ((int) (((bmpParameters.bitmapOffset - 14) - dWord) / 4)) * 4;
                    if (bmpParameters.bitmapOffset == dWord) {
                        int i11 = bmpParameters.imageType;
                        if (i11 != 4) {
                            if (i11 != 5) {
                                if (i11 != 6) {
                                    i10 = 0;
                                    bmpParameters.bitmapOffset = dWord + ((long) i10);
                                } else if (dWord2 == 0) {
                                    dWord2 = 256;
                                }
                            } else if (dWord2 == 0) {
                                dWord2 = 16;
                            }
                        } else if (dWord2 == 0) {
                            dWord2 = 2;
                        }
                        i10 = ((int) dWord2) * 4;
                        bmpParameters.bitmapOffset = dWord + ((long) i10);
                    }
                    readPalette(i10, bmpParameters);
                    bmpParameters.properties.put("bmp_version", "BMP v. 3.x");
                } else if (i9 == 3) {
                    if (bmpParameters.bitsPerPixel == 16) {
                        bmpParameters.imageType = 8;
                    } else if (bmpParameters.bitsPerPixel == 32) {
                        bmpParameters.imageType = 9;
                    }
                    bmpParameters.redMask = (int) readDWord(bmpParameters.inputStream);
                    bmpParameters.greenMask = (int) readDWord(bmpParameters.inputStream);
                    bmpParameters.blueMask = (int) readDWord(bmpParameters.inputStream);
                    if (dWord == 56) {
                        bmpParameters.alphaMask = (int) readDWord(bmpParameters.inputStream);
                        bmpParameters.properties.put("alpha_mask", Integer.valueOf(bmpParameters.alphaMask));
                    }
                    bmpParameters.properties.put("red_mask", Integer.valueOf(bmpParameters.redMask));
                    bmpParameters.properties.put("green_mask", Integer.valueOf(bmpParameters.greenMask));
                    bmpParameters.properties.put("blue_mask", Integer.valueOf(bmpParameters.blueMask));
                    if (dWord2 != 0) {
                        readPalette(((int) dWord2) * 4, bmpParameters);
                    }
                    bmpParameters.properties.put("bmp_version", "BMP v. 3.x NT");
                } else {
                    throw new com.itextpdf.io.exceptions.IOException(com.itextpdf.io.exceptions.IOException.InvalidBmpFileCompression);
                }
            } else if (dWord == 108) {
                bmpParameters.properties.put("bmp_version", "BMP v. 4.x");
                bmpParameters.redMask = (int) readDWord(bmpParameters.inputStream);
                bmpParameters.greenMask = (int) readDWord(bmpParameters.inputStream);
                bmpParameters.blueMask = (int) readDWord(bmpParameters.inputStream);
                bmpParameters.alphaMask = (int) readDWord(bmpParameters.inputStream);
                long dWord4 = readDWord(bmpParameters.inputStream);
                int i12 = readLong(bmpParameters.inputStream);
                int i13 = readLong(bmpParameters.inputStream);
                int i14 = readLong(bmpParameters.inputStream);
                int i15 = readLong(bmpParameters.inputStream);
                int i16 = readLong(bmpParameters.inputStream);
                int i17 = readLong(bmpParameters.inputStream);
                int i18 = readLong(bmpParameters.inputStream);
                int i19 = readLong(bmpParameters.inputStream);
                int i20 = readLong(bmpParameters.inputStream);
                long dWord5 = readDWord(bmpParameters.inputStream);
                long dWord6 = readDWord(bmpParameters.inputStream);
                long dWord7 = readDWord(bmpParameters.inputStream);
                if (bmpParameters.bitsPerPixel == 1) {
                    bmpParameters.imageType = 10;
                } else if (bmpParameters.bitsPerPixel == 4) {
                    bmpParameters.imageType = 11;
                } else if (bmpParameters.bitsPerPixel == 8) {
                    bmpParameters.imageType = 12;
                } else if (bmpParameters.bitsPerPixel == 16) {
                    bmpParameters.imageType = 13;
                    if (((int) bmpParameters.compression) == 0) {
                        bmpParameters.redMask = 31744;
                        bmpParameters.greenMask = 992;
                        bmpParameters.blueMask = 31;
                    }
                } else if (bmpParameters.bitsPerPixel == 24) {
                    bmpParameters.imageType = 14;
                } else if (bmpParameters.bitsPerPixel == 32) {
                    bmpParameters.imageType = 15;
                    if (((int) bmpParameters.compression) == 0) {
                        bmpParameters.redMask = 16711680;
                        bmpParameters.greenMask = MotionEventCompat.ACTION_POINTER_INDEX_MASK;
                        bmpParameters.blueMask = 255;
                    }
                }
                bmpParameters.properties.put("red_mask", Integer.valueOf(bmpParameters.redMask));
                bmpParameters.properties.put("green_mask", Integer.valueOf(bmpParameters.greenMask));
                bmpParameters.properties.put("blue_mask", Integer.valueOf(bmpParameters.blueMask));
                bmpParameters.properties.put("alpha_mask", Integer.valueOf(bmpParameters.alphaMask));
                int i21 = ((int) (((bmpParameters.bitmapOffset - 14) - dWord) / 4)) * 4;
                if (bmpParameters.bitmapOffset == dWord) {
                    switch (bmpParameters.imageType) {
                        case 10:
                            i = 4;
                            if (dWord2 == 0) {
                                dWord2 = 2;
                            }
                            i2 = (int) dWord2;
                            i21 = i2 * i;
                            break;
                        case 11:
                            i = 4;
                            if (dWord2 == 0) {
                                dWord2 = 16;
                            }
                            i2 = (int) dWord2;
                            i21 = i2 * i;
                            break;
                        case 12:
                            if (dWord2 == 0) {
                                dWord2 = 256;
                            }
                            i2 = (int) dWord2;
                            i = 4;
                            i21 = i2 * i;
                            break;
                        default:
                            i21 = 0;
                            break;
                    }
                    bmpParameters.bitmapOffset = dWord + ((long) i21);
                }
                readPalette(i21, bmpParameters);
                int i22 = (int) dWord4;
                if (i22 == 0) {
                    bmpParameters.properties.put("color_space", "LCS_CALIBRATED_RGB");
                    bmpParameters.properties.put("redX", Integer.valueOf(i12));
                    bmpParameters.properties.put("redY", Integer.valueOf(i13));
                    bmpParameters.properties.put("redZ", Integer.valueOf(i14));
                    bmpParameters.properties.put("greenX", Integer.valueOf(i15));
                    bmpParameters.properties.put("greenY", Integer.valueOf(i16));
                    bmpParameters.properties.put("greenZ", Integer.valueOf(i17));
                    bmpParameters.properties.put("blueX", Integer.valueOf(i18));
                    bmpParameters.properties.put("blueY", Integer.valueOf(i19));
                    bmpParameters.properties.put("blueZ", Integer.valueOf(i20));
                    bmpParameters.properties.put("gamma_red", Long.valueOf(dWord5));
                    bmpParameters.properties.put("gamma_green", Long.valueOf(dWord6));
                    bmpParameters.properties.put("gamma_blue", Long.valueOf(dWord7));
                    throw new RuntimeException("Not implemented yet.");
                }
                if (i22 == 1) {
                    bmpParameters.properties.put("color_space", "LCS_sRGB");
                } else if (i22 == 2) {
                    bmpParameters.properties.put("color_space", "LCS_CMYK");
                    throw new RuntimeException("Not implemented yet.");
                }
            } else {
                bmpParameters.properties.put("bmp_version", "BMP v. 5.x");
                throw new RuntimeException("Not implemented yet.");
            }
        }
        if (bmpParameters.height > 0) {
            i3 = 1;
            bmpParameters.isBottomUp = true;
            i4 = 0;
        } else {
            i3 = 1;
            i4 = 0;
            bmpParameters.isBottomUp = false;
            bmpParameters.height = Math.abs(bmpParameters.height);
        }
        if (bmpParameters.bitsPerPixel != i3) {
            if (bmpParameters.bitsPerPixel != 4 && bmpParameters.bitsPerPixel != 8) {
                if (bmpParameters.bitsPerPixel == 16) {
                    bmpParameters.numBands = 3;
                    return;
                } else if (bmpParameters.bitsPerPixel == 32) {
                    bmpParameters.numBands = bmpParameters.alphaMask == 0 ? 3 : 4;
                    return;
                } else {
                    bmpParameters.numBands = 3;
                    return;
                }
            }
            i3 = 1;
        }
        bmpParameters.numBands = i3;
        if (bmpParameters.imageType == 0 || bmpParameters.imageType == i3 || bmpParameters.imageType == 2) {
            int length = bmpParameters.palette.length / 3;
            i5 = length <= 256 ? length : 256;
            byte[] bArr = new byte[i5];
            byte[] bArr2 = new byte[i5];
            byte[] bArr3 = new byte[i5];
            for (int i23 = i4; i23 < i5; i23++) {
                int i24 = i23 * 3;
                bArr3[i23] = bmpParameters.palette[i24];
                bArr2[i23] = bmpParameters.palette[i24 + 1];
                bArr[i23] = bmpParameters.palette[i24 + 2];
            }
            return;
        }
        int length2 = bmpParameters.palette.length / 4;
        i5 = length2 <= 256 ? length2 : 256;
        byte[] bArr4 = new byte[i5];
        byte[] bArr5 = new byte[i5];
        byte[] bArr6 = new byte[i5];
        for (int i25 = i4; i25 < i5; i25++) {
            int i26 = i25 * 4;
            bArr6[i25] = bmpParameters.palette[i26];
            bArr5[i25] = bmpParameters.palette[i26 + 1];
            bArr4[i25] = bmpParameters.palette[i26 + 2];
        }
    }

    private static byte[] getPalette(int i, BmpParameters bmpParameters) {
        if (bmpParameters.palette == null) {
            return null;
        }
        byte[] bArr = new byte[(bmpParameters.palette.length / i) * 3];
        int length = bmpParameters.palette.length / i;
        for (int i2 = 0; i2 < length; i2++) {
            int i3 = i2 * i;
            int i4 = i2 * 3;
            bArr[i4 + 2] = bmpParameters.palette[i3];
            bArr[i4 + 1] = bmpParameters.palette[i3 + 1];
            bArr[i4] = bmpParameters.palette[i3 + 2];
        }
        return bArr;
    }

    private static boolean getImage(BmpParameters bmpParameters) throws IOException {
        switch (bmpParameters.imageType) {
            case 0:
                read1Bit(3, bmpParameters);
                return true;
            case 1:
                read4Bit(3, bmpParameters);
                return true;
            case 2:
                read8Bit(3, bmpParameters);
                return true;
            case 3:
                byte[] bArr = new byte[bmpParameters.width * bmpParameters.height * 3];
                read24Bit(bArr, bmpParameters);
                RawImageHelper.updateRawImageParameters(bmpParameters.image, bmpParameters.width, bmpParameters.height, 3, 8, bArr);
                return true;
            case 4:
                read1Bit(4, bmpParameters);
                return true;
            case 5:
                int i = (int) bmpParameters.compression;
                if (i == 0) {
                    read4Bit(4, bmpParameters);
                } else if (i == 2) {
                    readRLE4(bmpParameters);
                } else {
                    throw new com.itextpdf.io.exceptions.IOException(com.itextpdf.io.exceptions.IOException.InvalidBmpFileCompression);
                }
                return true;
            case 6:
                int i2 = (int) bmpParameters.compression;
                if (i2 == 0) {
                    read8Bit(4, bmpParameters);
                } else if (i2 == 1) {
                    readRLE8(bmpParameters);
                } else {
                    throw new com.itextpdf.io.exceptions.IOException(com.itextpdf.io.exceptions.IOException.InvalidBmpFileCompression);
                }
                return true;
            case 7:
                byte[] bArr2 = new byte[bmpParameters.width * bmpParameters.height * 3];
                read24Bit(bArr2, bmpParameters);
                RawImageHelper.updateRawImageParameters(bmpParameters.image, bmpParameters.width, bmpParameters.height, 3, 8, bArr2);
                return true;
            case 8:
                read1632Bit(false, bmpParameters);
                return true;
            case 9:
                read1632Bit(true, bmpParameters);
                return true;
            case 10:
                read1Bit(4, bmpParameters);
                return true;
            case 11:
                int i3 = (int) bmpParameters.compression;
                if (i3 == 0) {
                    read4Bit(4, bmpParameters);
                } else if (i3 == 2) {
                    readRLE4(bmpParameters);
                } else {
                    throw new com.itextpdf.io.exceptions.IOException(com.itextpdf.io.exceptions.IOException.InvalidBmpFileCompression);
                }
                return true;
            case 12:
                int i4 = (int) bmpParameters.compression;
                if (i4 == 0) {
                    read8Bit(4, bmpParameters);
                } else if (i4 == 1) {
                    readRLE8(bmpParameters);
                } else {
                    throw new com.itextpdf.io.exceptions.IOException(com.itextpdf.io.exceptions.IOException.InvalidBmpFileCompression);
                }
                return true;
            case 13:
                read1632Bit(false, bmpParameters);
                return true;
            case 14:
                byte[] bArr3 = new byte[bmpParameters.width * bmpParameters.height * 3];
                read24Bit(bArr3, bmpParameters);
                RawImageHelper.updateRawImageParameters(bmpParameters.image, bmpParameters.width, bmpParameters.height, 3, 8, bArr3);
                return true;
            case 15:
                read1632Bit(true, bmpParameters);
                return true;
            default:
                return false;
        }
    }

    private static void indexedModel(byte[] bArr, int i, int i2, BmpParameters bmpParameters) {
        RawImageHelper.updateRawImageParameters(bmpParameters.image, bmpParameters.width, bmpParameters.height, 1, i, bArr);
        Object[] objArr = {"/Indexed", "/DeviceRGB", Integer.valueOf((r6.length / 3) - 1), PdfEncodings.convertToString(getPalette(i2, bmpParameters), null)};
        bmpParameters.additional = new HashMap();
        bmpParameters.additional.put(ExifInterface.TAG_COLOR_SPACE, objArr);
    }

    private static void readPalette(int i, BmpParameters bmpParameters) throws IOException {
        if (i == 0) {
            return;
        }
        bmpParameters.palette = new byte[i];
        int i2 = 0;
        while (i2 < i) {
            int i3 = bmpParameters.inputStream.read(bmpParameters.palette, i2, i - i2);
            if (i3 < 0) {
                throw new com.itextpdf.io.exceptions.IOException(com.itextpdf.io.exceptions.IOException.IncompletePalette);
            }
            i2 += i3;
        }
        bmpParameters.properties.put("palette", bmpParameters.palette);
    }

    private static void read1Bit(int i, BmpParameters bmpParameters) throws IOException {
        byte[] bArr = new byte[((bmpParameters.width + 7) / 8) * bmpParameters.height];
        int iCeil = (int) Math.ceil(((double) bmpParameters.width) / 8.0d);
        int i2 = iCeil % 4;
        int i3 = 0;
        int i4 = (i2 != 0 ? 4 - i2 : 0) + iCeil;
        int i5 = bmpParameters.height * i4;
        byte[] bArr2 = new byte[i5];
        int i6 = 0;
        while (i6 < i5) {
            i6 += bmpParameters.inputStream.read(bArr2, i6, i5 - i6);
        }
        if (bmpParameters.isBottomUp) {
            while (i3 < bmpParameters.height) {
                int i7 = i3 + 1;
                System.arraycopy(bArr2, i5 - (i7 * i4), bArr, i3 * iCeil, iCeil);
                i3 = i7;
            }
        } else {
            while (i3 < bmpParameters.height) {
                System.arraycopy(bArr2, i3 * i4, bArr, i3 * iCeil, iCeil);
                i3++;
            }
        }
        indexedModel(bArr, 1, i, bmpParameters);
    }

    private static void read4Bit(int i, BmpParameters bmpParameters) throws IOException {
        byte[] bArr = new byte[((bmpParameters.width + 1) / 2) * bmpParameters.height];
        int iCeil = (int) Math.ceil(((double) bmpParameters.width) / 2.0d);
        int i2 = iCeil % 4;
        int i3 = 0;
        int i4 = (i2 != 0 ? 4 - i2 : 0) + iCeil;
        int i5 = bmpParameters.height * i4;
        byte[] bArr2 = new byte[i5];
        int i6 = 0;
        while (i6 < i5) {
            i6 += bmpParameters.inputStream.read(bArr2, i6, i5 - i6);
        }
        if (bmpParameters.isBottomUp) {
            while (i3 < bmpParameters.height) {
                int i7 = i3 + 1;
                System.arraycopy(bArr2, i5 - (i7 * i4), bArr, i3 * iCeil, iCeil);
                i3 = i7;
            }
        } else {
            while (i3 < bmpParameters.height) {
                System.arraycopy(bArr2, i3 * i4, bArr, i3 * iCeil, iCeil);
                i3++;
            }
        }
        indexedModel(bArr, 4, i, bmpParameters);
    }

    private static void read8Bit(int i, BmpParameters bmpParameters) throws IOException {
        byte[] bArr = new byte[bmpParameters.width * bmpParameters.height];
        int i2 = bmpParameters.width * 8;
        int i3 = 0;
        int iCeil = i2 % 32 != 0 ? (int) Math.ceil(((double) ((((i2 / 32) + 1) * 32) - i2)) / 8.0d) : 0;
        int i4 = (bmpParameters.width + iCeil) * bmpParameters.height;
        byte[] bArr2 = new byte[i4];
        int i5 = 0;
        while (i5 < i4) {
            i5 += bmpParameters.inputStream.read(bArr2, i5, i4 - i5);
        }
        if (bmpParameters.isBottomUp) {
            while (i3 < bmpParameters.height) {
                int i6 = i3 + 1;
                System.arraycopy(bArr2, i4 - ((bmpParameters.width + iCeil) * i6), bArr, i3 * bmpParameters.width, bmpParameters.width);
                i3 = i6;
            }
        } else {
            while (i3 < bmpParameters.height) {
                System.arraycopy(bArr2, (bmpParameters.width + iCeil) * i3, bArr, bmpParameters.width * i3, bmpParameters.width);
                i3++;
            }
        }
        indexedModel(bArr, 8, i, bmpParameters);
    }

    private static void read24Bit(byte[] bArr, BmpParameters bmpParameters) throws IOException {
        int i = bmpParameters.width * 24;
        int iCeil = i % 32 != 0 ? (int) Math.ceil(((double) ((((i / 32) + 1) * 32) - i)) / 8.0d) : 0;
        int i2 = (((bmpParameters.width * 3) + 3) / 4) * 4 * bmpParameters.height;
        byte[] bArr2 = new byte[i2];
        int i3 = 0;
        while (i3 < i2) {
            int i4 = bmpParameters.inputStream.read(bArr2, i3, i2 - i3);
            if (i4 < 0) {
                break;
            } else {
                i3 += i4;
            }
        }
        if (bmpParameters.isBottomUp) {
            int i5 = ((bmpParameters.width * bmpParameters.height) * 3) - 1;
            int i6 = -iCeil;
            int i7 = 0;
            while (i7 < bmpParameters.height) {
                i7++;
                int i8 = (i5 - ((bmpParameters.width * i7) * 3)) + 1;
                i6 += iCeil;
                for (int i9 = 0; i9 < bmpParameters.width; i9++) {
                    bArr[i8 + 2] = bArr2[i6];
                    int i10 = i6 + 2;
                    bArr[i8 + 1] = bArr2[i6 + 1];
                    i6 += 3;
                    bArr[i8] = bArr2[i10];
                    i8 += 3;
                }
            }
            return;
        }
        int i11 = -iCeil;
        int i12 = 0;
        for (int i13 = 0; i13 < bmpParameters.height; i13++) {
            i11 += iCeil;
            for (int i14 = 0; i14 < bmpParameters.width; i14++) {
                bArr[i12 + 2] = bArr2[i11];
                int i15 = i11 + 2;
                bArr[i12 + 1] = bArr2[i11 + 1];
                i11 += 3;
                bArr[i12] = bArr2[i15];
                i12 += 3;
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0050  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static void read1632Bit(boolean r21, com.itextpdf.io.image.BmpImageHelper.BmpParameters r22) throws java.io.IOException {
        /*
            Method dump skipped, instruction units count: 308
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.itextpdf.io.image.BmpImageHelper.read1632Bit(boolean, com.itextpdf.io.image.BmpImageHelper$BmpParameters):void");
    }

    private static void readRLE8(BmpParameters bmpParameters) throws IOException {
        int i = (int) bmpParameters.imageSize;
        if (i == 0) {
            i = (int) (bmpParameters.bitmapFileSize - bmpParameters.bitmapOffset);
        }
        byte[] bArr = new byte[i];
        int i2 = 0;
        int i3 = 0;
        while (i3 < i) {
            i3 += bmpParameters.inputStream.read(bArr, i3, i - i3);
        }
        byte[] bArrDecodeRLE = decodeRLE(true, bArr, bmpParameters);
        int i4 = bmpParameters.width * bmpParameters.height;
        if (bmpParameters.isBottomUp) {
            byte[] bArr2 = new byte[bArrDecodeRLE.length];
            int i5 = bmpParameters.width;
            while (i2 < bmpParameters.height) {
                int i6 = i2 + 1;
                System.arraycopy(bArrDecodeRLE, i4 - (i6 * i5), bArr2, i2 * i5, i5);
                i2 = i6;
            }
            bArrDecodeRLE = bArr2;
        }
        indexedModel(bArrDecodeRLE, 8, 4, bmpParameters);
    }

    private static void readRLE4(BmpParameters bmpParameters) throws IOException {
        int i = (int) bmpParameters.imageSize;
        if (i == 0) {
            i = (int) (bmpParameters.bitmapFileSize - bmpParameters.bitmapOffset);
        }
        byte[] bArr = new byte[i];
        int i2 = 0;
        while (i2 < i) {
            i2 += bmpParameters.inputStream.read(bArr, i2, i - i2);
        }
        byte[] bArrDecodeRLE = decodeRLE(false, bArr, bmpParameters);
        if (bmpParameters.isBottomUp) {
            byte[] bArr2 = new byte[bmpParameters.width * bmpParameters.height];
            int i3 = 0;
            for (int i4 = bmpParameters.height - 1; i4 >= 0; i4--) {
                int i5 = bmpParameters.width * i4;
                int i6 = bmpParameters.width + i3;
                while (i3 != i6) {
                    bArr2[i3] = bArrDecodeRLE[i5];
                    i3++;
                    i5++;
                }
            }
            bArrDecodeRLE = bArr2;
        }
        int i7 = (bmpParameters.width + 1) / 2;
        byte[] bArr3 = new byte[bmpParameters.height * i7];
        int i8 = 0;
        int i9 = 0;
        for (int i10 = 0; i10 < bmpParameters.height; i10++) {
            for (int i11 = 0; i11 < bmpParameters.width; i11++) {
                if ((i11 & 1) == 0) {
                    bArr3[(i11 / 2) + i9] = (byte) (bArrDecodeRLE[i8] << 4);
                    i8++;
                } else {
                    int i12 = (i11 / 2) + i9;
                    bArr3[i12] = (byte) (((byte) (bArrDecodeRLE[i8] & Ascii.SI)) | bArr3[i12]);
                    i8++;
                }
            }
            i9 += i7;
        }
        indexedModel(bArr3, 4, 4, bmpParameters);
    }

    private static byte[] decodeRLE(boolean z, byte[] bArr, BmpParameters bmpParameters) {
        byte[] bArr2 = new byte[bmpParameters.width * bmpParameters.height];
        int i = 0;
        int i2 = 0;
        int i3 = 0;
        int i4 = 0;
        while (i < bmpParameters.height && i2 < bArr.length) {
            try {
                int i5 = i2 + 1;
                int i6 = bArr[i2] & 255;
                if (i6 != 0) {
                    i2 += 2;
                    byte b = bArr[i5];
                    int i7 = b & 255;
                    if (z) {
                        int i8 = i6;
                        while (i8 != 0) {
                            bArr2[i4] = (byte) i7;
                            i8--;
                            i4++;
                        }
                    } else {
                        int i9 = 0;
                        while (i9 < i6) {
                            int i10 = i4 + 1;
                            bArr2[i4] = (byte) ((i9 & 1) == 1 ? b & Ascii.SI : (i7 >>> 4) & 15);
                            i9++;
                            i4 = i10;
                        }
                    }
                    i3 += i6;
                } else {
                    int i11 = i2 + 2;
                    byte b2 = bArr[i5];
                    int i12 = b2 & 255;
                    if (i12 == 1) {
                        break;
                    }
                    if (i12 == 0) {
                        i++;
                        i3 = 0;
                        i4 = bmpParameters.width * i;
                    } else if (i12 != 2) {
                        if (z) {
                            int i13 = i12;
                            while (i13 != 0) {
                                bArr2[i4] = (byte) (bArr[i11] & 255);
                                i13--;
                                i4++;
                                i11++;
                            }
                        } else {
                            int i14 = 0;
                            int i15 = 0;
                            while (i14 < i12) {
                                int i16 = i14 & 1;
                                if (i16 == 0) {
                                    i15 = bArr[i11] & 255;
                                    i11++;
                                }
                                int i17 = i4 + 1;
                                bArr2[i4] = (byte) (i16 == 1 ? i15 & 15 : (i15 >>> 4) & 15);
                                i14++;
                                i4 = i17;
                            }
                        }
                        i3 += i12;
                        if (!z) {
                            int i18 = b2 & 3;
                            if (i18 == 1 || i18 == 2) {
                                i11++;
                            }
                        } else if ((b2 & 1) == 1) {
                            i11++;
                        }
                    } else {
                        int i19 = i2 + 3;
                        i3 += bArr[i11] & 255;
                        i2 += 4;
                        i += bArr[i19] & 255;
                        i4 = (bmpParameters.width * i) + i3;
                    }
                    i2 = i11;
                }
            } catch (Exception unused) {
            }
        }
        return bArr2;
    }

    private static int readUnsignedByte(InputStream inputStream) throws IOException {
        return inputStream.read() & 255;
    }

    private static int readUnsignedShort(InputStream inputStream) throws IOException {
        return ((readUnsignedByte(inputStream) << 8) | readUnsignedByte(inputStream)) & 65535;
    }

    private static int readShort(InputStream inputStream) throws IOException {
        return (readUnsignedByte(inputStream) << 8) | readUnsignedByte(inputStream);
    }

    private static int readWord(InputStream inputStream) throws IOException {
        return readUnsignedShort(inputStream);
    }

    private static long readUnsignedInt(InputStream inputStream) throws IOException {
        int unsignedByte = readUnsignedByte(inputStream);
        int unsignedByte2 = readUnsignedByte(inputStream);
        return (readUnsignedByte(inputStream) << 24) | (readUnsignedByte(inputStream) << 16) | (unsignedByte2 << 8) | unsignedByte;
    }

    private static int readInt(InputStream inputStream) throws IOException {
        int unsignedByte = readUnsignedByte(inputStream);
        int unsignedByte2 = readUnsignedByte(inputStream);
        return (readUnsignedByte(inputStream) << 24) | (readUnsignedByte(inputStream) << 16) | (unsignedByte2 << 8) | unsignedByte;
    }

    private static long readDWord(InputStream inputStream) throws IOException {
        return readUnsignedInt(inputStream);
    }

    private static int readLong(InputStream inputStream) throws IOException {
        return readInt(inputStream);
    }
}
