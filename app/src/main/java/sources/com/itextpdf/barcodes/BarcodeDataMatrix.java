package com.itextpdf.barcodes;

import androidx.core.view.InputDeviceCompat;
import androidx.recyclerview.widget.ItemTouchHelper;
import com.google.api.ClientProto;
import com.itextpdf.barcodes.dmcode.DmParams;
import com.itextpdf.barcodes.dmcode.Placement;
import com.itextpdf.barcodes.dmcode.ReedSolomon;
import com.itextpdf.kernel.colors.Color;
import com.itextpdf.kernel.geom.Rectangle;
import com.itextpdf.kernel.pdf.PdfArray;
import com.itextpdf.kernel.pdf.PdfDocument;
import com.itextpdf.kernel.pdf.canvas.PdfCanvas;
import com.itextpdf.kernel.pdf.xobject.PdfFormXObject;
import com.itextpdf.kernel.xmp.XMPError;
import com.itextpdf.p017io.codec.TIFFConstants;
import java.awt.Canvas;
import java.awt.Image;
import java.awt.image.MemoryImageSource;
import java.io.UnsupportedEncodingException;
import java.lang.reflect.Array;
import org.objectweb.asm.Opcodes;

/* JADX INFO: loaded from: classes6.dex */
public class BarcodeDataMatrix extends Barcode2D {
    public static final String DEFAULT_DATA_MATRIX_ENCODING = "iso-8859-1";
    public static final int DM_ASCII = 1;
    public static final int DM_AUTO = 0;
    public static final int DM_B256 = 4;
    public static final int DM_C40 = 2;
    public static final int DM_EDIFACT = 6;
    public static final int DM_ERROR_EXTENSION = 5;
    public static final int DM_ERROR_INVALID_SQUARE = 3;
    public static final int DM_ERROR_TEXT_TOO_BIG = 1;
    public static final int DM_EXTENSION = 32;
    public static final int DM_NO_ERROR = 0;
    public static final int DM_RAW = 7;
    public static final int DM_TEST = 64;
    public static final int DM_TEXT = 3;
    public static final int DM_X12 = 5;
    private static final byte EXTENDED_ASCII = -21;
    private static final byte LATCH_B256 = -25;
    private static final byte LATCH_C40 = -26;
    private static final byte LATCH_EDIFACT = -16;
    private static final byte LATCH_TEXT = -17;
    private static final byte LATCH_X12 = -18;
    private static final byte PADDING = -127;
    private static final byte UNLATCH = -2;
    private static final String X12 = "\r*> 0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ";
    private static final DmParams[] dmSizes = {new DmParams(10, 10, 10, 10, 3, 3, 5), new DmParams(12, 12, 12, 12, 5, 5, 7), new DmParams(8, 18, 8, 18, 5, 5, 7), new DmParams(14, 14, 14, 14, 8, 8, 10), new DmParams(8, 32, 8, 16, 10, 10, 11), new DmParams(16, 16, 16, 16, 12, 12, 12), new DmParams(12, 26, 12, 26, 16, 16, 14), new DmParams(18, 18, 18, 18, 18, 18, 14), new DmParams(20, 20, 20, 20, 22, 22, 18), new DmParams(12, 36, 12, 18, 22, 22, 18), new DmParams(22, 22, 22, 22, 30, 30, 20), new DmParams(16, 36, 16, 18, 32, 32, 24), new DmParams(24, 24, 24, 24, 36, 36, 24), new DmParams(26, 26, 26, 26, 44, 44, 28), new DmParams(16, 48, 16, 24, 49, 49, 28), new DmParams(32, 32, 16, 16, 62, 62, 36), new DmParams(36, 36, 18, 18, 86, 86, 42), new DmParams(40, 40, 20, 20, 114, 114, 48), new DmParams(44, 44, 22, 22, Opcodes.D2F, Opcodes.D2F, 56), new DmParams(48, 48, 24, 24, Opcodes.FRETURN, Opcodes.FRETURN, 68), new DmParams(52, 52, 26, 26, XMPError.BADSTREAM, 102, 42), new DmParams(64, 64, 16, 16, TIFFConstants.TIFFTAG_MINSAMPLEVALUE, Opcodes.F2L, 56), new DmParams(72, 72, 18, 18, 368, 92, 36), new DmParams(80, 80, 20, 20, 456, 114, 48), new DmParams(88, 88, 22, 22, 576, Opcodes.D2F, 56), new DmParams(96, 96, 24, 24, 696, Opcodes.FRETURN, 68), new DmParams(104, 104, 26, 26, 816, 136, 56), new DmParams(120, 120, 20, 20, ClientProto.OAUTH_SCOPES_FIELD_NUMBER, Opcodes.DRETURN, 68), new DmParams(132, 132, 22, 22, 1304, Opcodes.IF_ICMPGT, 62), new DmParams(Opcodes.D2F, Opcodes.D2F, 24, 24, 1558, 156, 62)};
    private String encoding;
    private int extOut;

    /* JADX INFO: renamed from: f */
    private int[][] f2835f;
    private int height;
    private byte[] image;
    private int options;
    private short[] place;
    private int[][] switchMode;
    private int width;

    /* JADX INFO: renamed from: ws */
    private int f2836ws;

    private static boolean isDigit(int i) {
        return i >= 48 && i <= 57;
    }

    public BarcodeDataMatrix() {
        this.encoding = DEFAULT_DATA_MATRIX_ENCODING;
    }

    public BarcodeDataMatrix(String str) {
        this.encoding = DEFAULT_DATA_MATRIX_ENCODING;
        setCode(str);
    }

    public BarcodeDataMatrix(String str, String str2) {
        this.encoding = str2;
        setCode(str);
    }

    @Override // com.itextpdf.barcodes.Barcode2D
    public Rectangle getBarcodeSize() {
        int i = this.width;
        int i2 = this.f2836ws;
        return new Rectangle(0.0f, 0.0f, i + (i2 * 2), this.height + (i2 * 2));
    }

    @Override // com.itextpdf.barcodes.Barcode2D
    public Rectangle placeBarcode(PdfCanvas pdfCanvas, Color color) {
        return placeBarcode(pdfCanvas, color, 1.0f);
    }

    @Override // com.itextpdf.barcodes.Barcode2D
    public PdfFormXObject createFormXObject(Color color, PdfDocument pdfDocument) {
        return createFormXObject(color, 1.0f, pdfDocument);
    }

    public PdfFormXObject createFormXObject(Color color, float f, PdfDocument pdfDocument) {
        PdfFormXObject pdfFormXObject = new PdfFormXObject((Rectangle) null);
        pdfFormXObject.setBBox(new PdfArray(placeBarcode(new PdfCanvas(pdfFormXObject, pdfDocument), color, f)));
        return pdfFormXObject;
    }

    public Rectangle placeBarcode(PdfCanvas pdfCanvas, Color color, float f) {
        if (this.image == null) {
            return null;
        }
        if (color != null) {
            pdfCanvas.setFillColor(color);
        }
        int i = this.width;
        int i2 = this.f2836ws;
        int i3 = i + (i2 * 2);
        int i4 = this.height + (i2 * 2);
        int i5 = (i3 + 7) / 8;
        for (int i6 = 0; i6 < i4; i6++) {
            int i7 = i6 * i5;
            for (int i8 = 0; i8 < i3; i8++) {
                if ((((this.image[(i8 / 8) + i7] & 255) << (i8 % 8)) & 128) != 0) {
                    double d = f;
                    pdfCanvas.rectangle(i8 * f, ((i4 - i6) - 1) * f, d, d);
                }
            }
        }
        pdfCanvas.fill();
        return getBarcodeSize();
    }

    public Image createAwtImage(java.awt.Color color, java.awt.Color color2) {
        if (this.image == null) {
            return null;
        }
        int rgb = color.getRGB();
        int rgb2 = color2.getRGB();
        Canvas canvas = new Canvas();
        int i = this.width;
        int i2 = this.f2836ws;
        int i3 = i + (i2 * 2);
        int i4 = this.height + (i2 * 2);
        int[] iArr = new int[i3 * i4];
        int i5 = (i3 + 7) / 8;
        int i6 = 0;
        for (int i7 = 0; i7 < i4; i7++) {
            int i8 = i7 * i5;
            int i9 = 0;
            while (i9 < i3) {
                int i10 = i6 + 1;
                iArr[i6] = (((this.image[(i9 / 8) + i8] & 255) << (i9 % 8)) & 128) == 0 ? rgb2 : rgb;
                i9++;
                i6 = i10;
            }
        }
        return canvas.createImage(new MemoryImageSource(i3, i4, iArr, 0, i3));
    }

    public Rectangle getBarcodeSize(float f, float f2) {
        int i = this.width;
        int i2 = this.f2836ws;
        return new Rectangle(0.0f, 0.0f, (i + (i2 * 2)) * f, (this.height + (i2 * 2)) * f2);
    }

    public int setCode(String str) {
        try {
            byte[] bytes = str.getBytes(this.encoding);
            return setCode(bytes, 0, bytes.length);
        } catch (UnsupportedEncodingException unused) {
            throw new IllegalArgumentException("text has to be encoded in iso-8859-1");
        }
    }

    public int setCode(byte[] bArr, int i, int i2) {
        int i3;
        DmParams[] dmParamsArr;
        DmParams dmParams;
        DmParams[] dmParamsArr2;
        if (i < 0) {
            throw new IndexOutOfBoundsException("" + i);
        }
        if (i + i2 > bArr.length || i2 < 0) {
            throw new IndexOutOfBoundsException("" + i2);
        }
        byte[] bArr2 = new byte[2500];
        this.extOut = 0;
        int iProcessExtensions = processExtensions(bArr, i, i2, bArr2);
        if (iProcessExtensions < 0) {
            return 5;
        }
        this.f2835f = (int[][]) Array.newInstance((Class<?>) Integer.TYPE, 6, i2 - this.extOut);
        this.switchMode = (int[][]) Array.newInstance((Class<?>) Integer.TYPE, 6, i2 - this.extOut);
        if (this.height == 0 || this.width == 0) {
            DmParams[] dmParamsArr3 = dmSizes;
            DmParams dmParams2 = dmParamsArr3[dmParamsArr3.length - 1];
            int i4 = this.extOut;
            int encodation = getEncodation(bArr, i + i4, i2 - i4, bArr2, iProcessExtensions, dmParams2.dataSize - iProcessExtensions, this.options, false);
            if (encodation < 0) {
                return 1;
            }
            i3 = encodation + iProcessExtensions;
            int i5 = 0;
            while (true) {
                dmParamsArr = dmSizes;
                if (i5 >= dmParamsArr.length || dmParamsArr[i5].dataSize >= i3) {
                    break;
                }
                i5++;
            }
            dmParams = dmParamsArr[i5];
            this.height = dmParams.height;
            this.width = dmParams.width;
        } else {
            int i6 = 0;
            while (true) {
                dmParamsArr2 = dmSizes;
                if (i6 >= dmParamsArr2.length || (this.height == dmParamsArr2[i6].height && this.width == dmParamsArr2[i6].width)) {
                    break;
                }
                i6++;
            }
            if (i6 == dmParamsArr2.length) {
                return 3;
            }
            dmParams = dmParamsArr2[i6];
            int i7 = this.extOut;
            int encodation2 = getEncodation(bArr, i + i7, i2 - i7, bArr2, iProcessExtensions, dmParams.dataSize - iProcessExtensions, this.options, true);
            if (encodation2 < 0) {
                return 1;
            }
            i3 = encodation2 + iProcessExtensions;
        }
        if ((this.options & 64) != 0) {
            return 0;
        }
        this.image = new byte[(((dmParams.width + (this.f2836ws * 2)) + 7) / 8) * (dmParams.height + (this.f2836ws * 2))];
        makePadding(bArr2, i3, dmParams.dataSize - i3);
        this.place = Placement.doPlacement(dmParams.height - ((dmParams.height / dmParams.heightSection) * 2), dmParams.width - ((dmParams.width / dmParams.widthSection) * 2));
        int i8 = dmParams.dataSize + (((dmParams.dataSize + 2) / dmParams.dataBlock) * dmParams.errorBlock);
        ReedSolomon.generateECC(bArr2, dmParams.dataSize, dmParams.dataBlock, dmParams.errorBlock);
        draw(bArr2, i8, dmParams);
        return 0;
    }

    public int getHeight() {
        return this.height;
    }

    public void setHeight(int i) {
        this.height = i;
    }

    public int getWidth() {
        return this.width;
    }

    public void setWidth(int i) {
        this.width = i;
    }

    public int getWs() {
        return this.f2836ws;
    }

    public void setWs(int i) {
        this.f2836ws = i;
    }

    public int getOptions() {
        return this.options;
    }

    public void setOptions(int i) {
        this.options = i;
    }

    public void setEncoding(String str) {
        this.encoding = str;
    }

    public String getEncoding() {
        return this.encoding;
    }

    private static void makePadding(byte[] bArr, int i, int i2) {
        if (i2 <= 0) {
            return;
        }
        int i3 = i + 1;
        bArr[i] = PADDING;
        while (true) {
            i2--;
            if (i2 <= 0) {
                return;
            }
            int i4 = i3 + 1;
            int i5 = (i4 * Opcodes.FCMPL) % 253;
            int i6 = i5 + 130;
            if (i6 > 254) {
                i6 = i5 - 124;
            }
            bArr[i3] = (byte) i6;
            i3 = i4;
        }
    }

    private int asciiEncodation(byte[] bArr, int i, int i2, byte[] bArr2, int i3, int i4, int i5, int i6, int i7) {
        int i8;
        byte b;
        int i9 = i2 + i;
        int i10 = i4 + i3;
        int i11 = i;
        int i12 = i3;
        while (i11 < i9) {
            int i13 = i11 + 1;
            int i14 = bArr[i11] & 255;
            if (isDigit(i14) && i5 > 0) {
                if (i6 == 1) {
                    int i15 = i11 - 1;
                    if (isDigit(bArr[i15] & 255) && (b = bArr2[i3 - 1]) > 48 && b < 59) {
                        bArr2[i12 - 1] = (byte) ((((bArr[i15] & 255) - 48) * 10) + i14 + 82);
                        return i12 - i7;
                    }
                }
            }
            if (i12 >= i10) {
                return -1;
            }
            if (isDigit(i14) && i5 < 0 && i13 < i9 && isDigit(bArr[i13] & 255)) {
                i8 = i12 + 1;
                i11 += 2;
                bArr2[i12] = (byte) (((i14 - 48) * 10) + (bArr[i13] & 255) + 82);
            } else if (i14 > 127) {
                int i16 = i12 + 1;
                if (i16 >= i10) {
                    return -1;
                }
                bArr2[i12] = EXTENDED_ASCII;
                i12 += 2;
                bArr2[i16] = (byte) (i14 - 127);
                i11 = i13;
            } else {
                i8 = i12 + 1;
                bArr2[i12] = (byte) (i14 + 1);
                i11 = i13;
            }
            i12 = i8;
        }
        return i12 - i7;
    }

    private int b256Encodation(byte[] bArr, int i, int i2, byte[] bArr2, int i3, int i4, int i5, int i6, int i7) {
        int i8;
        int i9;
        int i10;
        int i11 = 0;
        if (i2 == 0) {
            return 0;
        }
        if (i6 != 4) {
            if (i2 < 250 && i2 + 2 > i4) {
                return -1;
            }
            if (i2 >= 250 && i2 + 3 > i4) {
                return -1;
            }
            bArr2[i3] = LATCH_B256;
            i8 = i2;
            i9 = i3;
        } else {
            int i12 = i5 - 1;
            while (i12 > 0 && this.switchMode[3][i12] == 4) {
                i12--;
            }
            int i13 = i5 - i12;
            i8 = i13 + 1;
            if (i8 != 250 && 1 > i4) {
                return -1;
            }
            if (i8 == 250 && 2 > i4) {
                return -1;
            }
            i9 = i3 - (i13 + (i8 < 250 ? 2 : 3));
        }
        if (i8 < 250) {
            bArr2[i9 + 1] = (byte) i8;
            if (i6 != 4) {
                i11 = 2;
            }
        } else if (i8 == 250 && i6 == 4) {
            bArr2[i9 + 1] = (byte) ((i8 / ItemTouchHelper.Callback.DEFAULT_SWIPE_ANIMATION_DURATION) + 249);
            int i14 = i3 + 1;
            while (true) {
                i10 = i9 + 2;
                if (i14 <= i10) {
                    break;
                }
                bArr2[i14] = bArr2[i14 - 1];
                i14--;
            }
            bArr2[i10] = (byte) (i8 % ItemTouchHelper.Callback.DEFAULT_SWIPE_ANIMATION_DURATION);
            i11 = 1;
        } else {
            bArr2[i9 + 1] = (byte) ((i8 / ItemTouchHelper.Callback.DEFAULT_SWIPE_ANIMATION_DURATION) + 249);
            bArr2[i9 + 2] = (byte) (i8 % ItemTouchHelper.Callback.DEFAULT_SWIPE_ANIMATION_DURATION);
            if (i6 != 4) {
                i11 = 3;
            }
        }
        if (i6 == 4) {
            i8 = 1;
        }
        System.arraycopy(bArr, i, bArr2, i11 + i3, i8);
        for (int i15 = i6 != 4 ? i3 + 1 : i3; i15 < i11 + i8 + i3; i15++) {
            randomizationAlgorithm255(bArr2, i15);
        }
        if (i6 == 4) {
            randomizationAlgorithm255(bArr2, i9 + 1);
        }
        return ((i8 + i3) + i11) - i7;
    }

    private void randomizationAlgorithm255(byte[] bArr, int i) {
        int i2 = (bArr[i] & 255) + (((i + 1) * Opcodes.FCMPL) % 255) + 1;
        if (i2 > 255) {
            i2 += InputDeviceCompat.SOURCE_ANY;
        }
        bArr[i] = (byte) i2;
    }

    /* JADX WARN: Removed duplicated region for block: B:99:0x0195  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private int X12Encodation(byte[] r27, int r28, int r29, byte[] r30, int r31, int r32, int r33, int r34, int r35) {
        /*
            Method dump skipped, instruction units count: 497
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.itextpdf.barcodes.BarcodeDataMatrix.X12Encodation(byte[], int, int, byte[], int, int, int, int, int):int");
    }

    /* JADX WARN: Removed duplicated region for block: B:186:0x027c  */
    /* JADX WARN: Removed duplicated region for block: B:190:0x02a5  */
    /* JADX WARN: Removed duplicated region for block: B:193:0x02be  */
    /* JADX WARN: Removed duplicated region for block: B:205:0x0302  */
    /* JADX WARN: Removed duplicated region for block: B:218:0x0364  */
    /* JADX WARN: Removed duplicated region for block: B:222:0x039f  */
    /* JADX WARN: Removed duplicated region for block: B:295:0x039e A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:47:0x0090  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private int EdifactEncodation(byte[] r35, int r36, int r37, byte[] r38, int r39, int r40, int r41, int r42, int r43, boolean r44) {
        /*
            Method dump skipped, instruction units count: 1127
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.itextpdf.barcodes.BarcodeDataMatrix.EdifactEncodation(byte[], int, int, byte[], int, int, int, int, int, boolean):int");
    }

    private int C40OrTextEncodation(byte[] bArr, int i, int i2, byte[] bArr2, int i3, int i4, boolean z, int i5, int i6, int i7) {
        String str;
        String str2;
        int i8;
        int i9;
        int i10;
        int i11;
        boolean z2;
        boolean z3;
        int i12;
        int i13;
        int i14;
        int i15;
        boolean z4;
        int i16;
        if (i2 == 0) {
            return 0;
        }
        if (z) {
            str = " 0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ";
            str2 = "`abcdefghijklmnopqrstuvwxyz{|}~\u007f";
        } else {
            str = " 0123456789abcdefghijklmnopqrstuvwxyz";
            str2 = "`ABCDEFGHIJKLMNOPQRSTUVWXYZ{|}~\u007f";
        }
        int i17 = z ? 2 : 3;
        int i18 = 127;
        int i19 = 1;
        if (i6 == i17) {
            int i20 = i5 - 1;
            while (i20 > 0 && this.switchMode[i17 - 1][i20] == i17) {
                i20--;
            }
            int i21 = i5 - i20;
            if (i21 >= 5) {
                int i22 = 0;
                for (int i23 = i21; i23 > 0; i23--) {
                    i22 = (bArr[i - i23] & 255) > 127 ? i22 + 2 : i22 + 1;
                }
                for (int i24 = 1; i24 <= i22 && i24 <= i3; i24++) {
                    i16 = i3 - i24;
                    if (bArr2[i16] == -2) {
                        break;
                    }
                }
                i16 = -1;
                if (i16 >= 0) {
                    int i25 = i16 + 1;
                    i21 = 0;
                    while (i25 < i3) {
                        if (bArr2[i25] == -21) {
                            i25++;
                        }
                        byte b = bArr2[i25];
                        if (b >= -127 && b <= -27) {
                            i21++;
                        }
                        i21++;
                        i25++;
                    }
                }
                boolean z5 = true;
                int i26 = 0;
                while (true) {
                    if (i21 <= 0) {
                        i8 = -1;
                        i9 = i;
                        i15 = i3;
                        z4 = z5;
                        z3 = true;
                        i12 = i2;
                        i14 = i4;
                        break;
                    }
                    int i27 = i21;
                    int i28 = 0;
                    int i29 = 0;
                    while (i27 >= 0) {
                        int i30 = i - i27;
                        int i31 = bArr[i30] & 255;
                        if (i31 > 127) {
                            i31 -= 128;
                            i29 += 2;
                        }
                        i29 += str.indexOf((char) i31) >= 0 ? 1 : 2;
                        if (i31 > 127) {
                            i28 += 2;
                        } else {
                            if (i27 > 0 && isDigit(i31)) {
                                int i32 = i30 + 1;
                                if (isDigit(bArr[i32] & 255)) {
                                    i29 += str.indexOf((char) bArr[i32]) >= 0 ? 1 : 2;
                                    i27--;
                                    i26 = i28 + 1;
                                }
                            }
                            i28++;
                        }
                        if (i27 == 1) {
                            i26 = i28;
                        }
                        i27--;
                    }
                    z5 = i16 < 0 || i3 - i28 != i16;
                    if (i29 % 3 == 0) {
                        if (((i29 / 3) * 2) + (z5 ? 2 : 0) < i28) {
                            int i33 = i21 + 1;
                            i9 = i - i21;
                            int i34 = i3 - (z5 ? i26 : i26 + 1);
                            if (!z5) {
                                i26++;
                            }
                            z4 = z5;
                            z3 = false;
                            i14 = i4 + i26;
                            i15 = i34;
                            i12 = i33;
                            i8 = -1;
                        }
                    }
                    int i35 = i - i21;
                    if (isDigit(bArr[i35] & 255) && isDigit(bArr[i35 + 1] & 255)) {
                        i21--;
                    }
                    i21--;
                }
            } else {
                i8 = -1;
                i9 = i;
                i14 = i4;
                i15 = i3;
                z4 = true;
                z3 = true;
                i12 = i2;
            }
            int i36 = i14;
            i11 = i15;
            z2 = z4;
            i10 = i36;
        } else {
            i8 = -1;
            i9 = i;
            i10 = i4;
            i11 = i3;
            z2 = true;
            z3 = i5 != -1;
            i12 = i2;
        }
        if (i11 < 0) {
            return i8;
        }
        if (z3) {
            return asciiEncodation(bArr, i9, 1, bArr2, i11, i10, i6 == i17 ? 1 : -1, 1, i7);
        }
        if (z2) {
            bArr2[i11] = z ? LATCH_C40 : LATCH_TEXT;
            i13 = 1;
        } else {
            i13 = 0;
        }
        int[] iArr = new int[(i12 * 4) + 10];
        int i37 = 0;
        int i38 = 0;
        int i39 = 0;
        int i40 = 0;
        while (i37 < i12) {
            if (i38 % 3 == 0) {
                i39 = i37;
                i40 = i38;
            }
            int i41 = i37 + 1;
            int i42 = bArr[i37 + i9] & 255;
            if (i42 > i18) {
                i42 -= 128;
                int i43 = i38 + 1;
                iArr[i38] = i19;
                i38 += 2;
                iArr[i43] = 30;
            }
            char c = (char) i42;
            int iIndexOf = str.indexOf(c);
            if (iIndexOf >= 0) {
                iArr[i38] = iIndexOf + 3;
                i38++;
            } else if (i42 < 32) {
                int i44 = i38 + 1;
                iArr[i38] = 0;
                i38 += 2;
                iArr[i44] = i42;
            } else {
                int iIndexOf2 = "!\"#$%&'()*+,-./:;<=>?@[\\]^_".indexOf(c);
                if (iIndexOf2 >= 0) {
                    int i45 = i38 + 1;
                    iArr[i38] = 1;
                    i38 += 2;
                    iArr[i45] = iIndexOf2;
                } else {
                    int iIndexOf3 = str2.indexOf(c);
                    if (iIndexOf3 >= 0) {
                        int i46 = i38 + 1;
                        iArr[i38] = 2;
                        i38 += 2;
                        iArr[i46] = iIndexOf3;
                    }
                }
            }
            i37 = i41;
            i18 = 127;
            i19 = 1;
        }
        if (i38 % 3 != 0) {
            i37 = i39;
            i38 = i40;
        }
        if ((i38 / 3) * 2 > i10 - 2) {
            return -1;
        }
        for (int i47 = 0; i47 < i38; i47 += 3) {
            int i48 = (iArr[i47] * 1600) + (iArr[i47 + 1] * 40) + iArr[i47 + 2] + 1;
            int i49 = i13 + 1;
            bArr2[i11 + i13] = (byte) (i48 / 256);
            i13 += 2;
            bArr2[i49 + i11] = (byte) i48;
        }
        if (i10 - i13 > 2) {
            bArr2[i13 + i11] = UNLATCH;
            i13++;
        }
        return (i5 >= 0 || i12 <= i37) ? (i13 + i11) - i7 : asciiEncodation(bArr, i9 + i37, i12 - i37, bArr2, i11 + i13, i10 - i13, -1, -1, i7);
    }

    private void setBit(int i, int i2, int i3) {
        byte[] bArr = this.image;
        int i4 = (i2 * i3) + (i / 8);
        bArr[i4] = (byte) (((byte) (128 >> (i & 7))) | bArr[i4]);
    }

    /* JADX WARN: Removed duplicated region for block: B:47:0x00b1  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void draw(byte[] r11, int r12, com.itextpdf.barcodes.dmcode.DmParams r13) {
        /*
            Method dump skipped, instruction units count: 204
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.itextpdf.barcodes.BarcodeDataMatrix.draw(byte[], int, com.itextpdf.barcodes.dmcode.DmParams):void");
    }

    private static int minValueInColumn(int[][] iArr, int i) {
        int i2 = Integer.MAX_VALUE;
        for (int i3 = 0; i3 < 6; i3++) {
            int i4 = iArr[i3][i];
            if (i4 < i2 && i4 >= 0) {
                i2 = i4;
            }
        }
        if (i2 != Integer.MAX_VALUE) {
            return i2;
        }
        return -1;
    }

    private static int valuePositionInColumn(int[][] iArr, int i, int i2) {
        for (int i3 = 0; i3 < 6; i3++) {
            if (iArr[i3][i] == i2) {
                return i3;
            }
        }
        return -1;
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x001c  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void solveFAndSwitchMode(int[] r7, int r8, int r9) {
        /*
            r6 = this;
            r0 = r7[r8]
            r1 = 2147483647(0x7fffffff, float:NaN)
            if (r0 < 0) goto L1c
            int[][] r2 = r6.f2835f
            r2 = r2[r8]
            int r3 = r9 + (-1)
            r3 = r2[r3]
            if (r3 < 0) goto L1c
            r2[r9] = r0
            int[][] r0 = r6.switchMode
            r0 = r0[r8]
            int r2 = r8 + 1
            r0[r9] = r2
            goto L22
        L1c:
            int[][] r0 = r6.f2835f
            r0 = r0[r8]
            r0[r9] = r1
        L22:
            r0 = 0
        L23:
            r2 = 6
            if (r0 >= r2) goto L47
            r2 = r7[r0]
            int[][] r3 = r6.f2835f
            r4 = r3[r8]
            r5 = r4[r9]
            if (r2 >= r5) goto L44
            if (r2 < 0) goto L44
            r3 = r3[r0]
            int r5 = r9 + (-1)
            r3 = r3[r5]
            if (r3 < 0) goto L44
            r4[r9] = r2
            int[][] r2 = r6.switchMode
            r2 = r2[r8]
            int r3 = r0 + 1
            r2[r9] = r3
        L44:
            int r0 = r0 + 1
            goto L23
        L47:
            int[][] r7 = r6.f2835f
            r7 = r7[r8]
            r8 = r7[r9]
            if (r8 != r1) goto L52
            r8 = -1
            r7[r9] = r8
        L52:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.itextpdf.barcodes.BarcodeDataMatrix.solveFAndSwitchMode(int[], int, int):void");
    }

    private int getEncodation(byte[] bArr, int i, int i2, byte[] bArr2, int i3, int i4, int i5, boolean z) {
        byte[] bArr3;
        int i6;
        int i7;
        int i8;
        int i9;
        int[] iArr;
        int i10;
        int i11;
        int i12;
        int i13;
        int i14;
        char c;
        int i15;
        int i16;
        int i17;
        int i18;
        int i19 = i;
        int i20 = i2;
        byte[] bArr4 = bArr2;
        if (i4 < 0) {
            return -1;
        }
        int i21 = i5 & 7;
        if (i21 != 0) {
            switch (i21) {
                case 1:
                    return asciiEncodation(bArr, i, i2, bArr2, i3, i4, -1, -1, i3);
                case 2:
                    return C40OrTextEncodation(bArr, i, i2, bArr2, i3, i4, true, -1, -1, i3);
                case 3:
                    return C40OrTextEncodation(bArr, i, i2, bArr2, i3, i4, false, -1, -1, i3);
                case 4:
                    return b256Encodation(bArr, i, i2, bArr2, i3, i4, -1, -1, i3);
                case 5:
                    return X12Encodation(bArr, i, i2, bArr2, i3, i4, -1, -1, i3);
                case 6:
                    return EdifactEncodation(bArr, i, i2, bArr2, i3, i4, -1, -1, i3, z);
                case 7:
                    if (i20 > i4) {
                        return -1;
                    }
                    System.arraycopy(bArr, i, bArr4, i3, i20);
                    return i20;
                default:
                    return -1;
            }
        }
        if (i20 == 0) {
            return 0;
        }
        byte[][] bArr5 = (byte[][]) Array.newInstance((Class<?>) Byte.TYPE, 6, bArr4.length);
        int i22 = 0;
        while (i22 < 6) {
            System.arraycopy(bArr4, 0, bArr5[i22], 0, bArr4.length);
            int[] iArr2 = this.switchMode[i22];
            i22++;
            iArr2[0] = i22;
        }
        int i23 = 0;
        this.f2835f[0][0] = asciiEncodation(bArr, i, 1, bArr5[0], i3, i4, 0, -1, i3);
        this.f2835f[1][0] = C40OrTextEncodation(bArr, i, 1, bArr5[1], i3, i4, true, 0, -1, i3);
        this.f2835f[2][0] = C40OrTextEncodation(bArr, i, 1, bArr5[2], i3, i4, false, 0, -1, i3);
        this.f2835f[3][0] = b256Encodation(bArr, i, 1, bArr5[3], i3, i4, 0, -1, i3);
        this.f2835f[4][0] = X12Encodation(bArr, i, 1, bArr5[4], i3, i4, 0, -1, i3);
        this.f2835f[5][0] = EdifactEncodation(bArr, i, 1, bArr5[5], i3, i4, 0, -1, i3, z);
        int i24 = 1;
        while (i24 < i20) {
            int i25 = 6;
            int[] iArr3 = new int[6];
            int i26 = i23;
            while (i26 < i25) {
                char c2 = 2;
                int[] iArr4 = new int[2];
                int i27 = 1;
                iArr4[1] = bArr4.length;
                iArr4[i23] = i25;
                byte[][] bArr6 = (byte[][]) Array.newInstance((Class<?>) Byte.TYPE, iArr4);
                int i28 = i23;
                while (i28 < i25) {
                    System.arraycopy(bArr5[i28], i23, bArr6[i28], i23, bArr4.length);
                    int i29 = i24 - 1;
                    int i30 = this.f2835f[i28][i29];
                    if (i30 < 0) {
                        iArr3[i28] = -1;
                        i9 = i28;
                        c = c2;
                        i18 = i26;
                        iArr = iArr3;
                        i10 = i25;
                        i13 = i24;
                    } else {
                        if (i26 == 0) {
                            i8 = i3;
                            i9 = i28;
                            iArr = iArr3;
                            i10 = i25;
                            iArr[i9] = asciiEncodation(bArr, i19 + i24, 1, bArr6[i28], i30 + i8, i4 - i30, i24, i28 + 1, i3);
                            i12 = i26;
                            i11 = 1;
                        } else {
                            i8 = i3;
                            i9 = i28;
                            iArr = iArr3;
                            i10 = i25;
                            i11 = i27;
                            i12 = i26;
                        }
                        if (i12 == i11) {
                            byte[] bArr7 = bArr6[i9];
                            int i31 = this.f2835f[i9][i29];
                            i13 = i24;
                            iArr[i9] = C40OrTextEncodation(bArr, i19 + i24, 1, bArr7, i31 + i8, i4 - i31, true, i24, i9 + 1, i3);
                            i14 = i12;
                        } else {
                            i13 = i24;
                            i14 = i12;
                        }
                        if (i14 == 2) {
                            byte[] bArr8 = bArr6[i9];
                            int i32 = this.f2835f[i9][i29];
                            c = 2;
                            i15 = i14;
                            iArr[i9] = C40OrTextEncodation(bArr, i19 + i13, 1, bArr8, i32 + i8, i4 - i32, false, i13, i9 + 1, i3);
                        } else {
                            c = 2;
                            i15 = i14;
                        }
                        if (i15 == 3) {
                            byte[] bArr9 = bArr6[i9];
                            int i33 = this.f2835f[i9][i29];
                            int i34 = i15;
                            i17 = i3;
                            i16 = i34;
                            iArr[i9] = b256Encodation(bArr, i19 + i13, 1, bArr9, i33 + i17, i4 - i33, i13, i9 + 1, i3);
                        } else {
                            i16 = i15;
                            i17 = i3;
                        }
                        if (i16 == 4) {
                            byte[] bArr10 = bArr6[i9];
                            int i35 = this.f2835f[i9][i29];
                            iArr[i9] = X12Encodation(bArr, i19 + i13, 1, bArr10, i35 + i17, i4 - i35, i13, i9 + 1, i3);
                        }
                        if (i16 == 5) {
                            byte[] bArr11 = bArr6[i9];
                            int i36 = this.f2835f[i9][i29];
                            i18 = i16;
                            iArr[i9] = EdifactEncodation(bArr, i19 + i13, 1, bArr11, i36 + i17, i4 - i36, i13, i9 + 1, i3, z);
                            i28 = i9 + 1;
                            i26 = i18;
                            iArr3 = iArr;
                            i24 = i13;
                            i25 = i10;
                            c2 = c;
                            i27 = 1;
                            i23 = 0;
                            i19 = i;
                            bArr4 = bArr2;
                        } else {
                            i18 = i16;
                        }
                    }
                    i28 = i9 + 1;
                    i26 = i18;
                    iArr3 = iArr;
                    i24 = i13;
                    i25 = i10;
                    c2 = c;
                    i27 = 1;
                    i23 = 0;
                    i19 = i;
                    bArr4 = bArr2;
                }
                int i37 = i26;
                int[] iArr5 = iArr3;
                int i38 = i25;
                int i39 = i24;
                solveFAndSwitchMode(iArr5, i37, i39);
                int i40 = this.switchMode[i37][i39];
                if (i40 != 0) {
                    bArr3 = bArr2;
                    i6 = i39;
                    i7 = 0;
                    System.arraycopy(bArr6[i40 - 1], 0, bArr5[i37], 0, bArr3.length);
                } else {
                    bArr3 = bArr2;
                    i6 = i39;
                    i7 = 0;
                }
                i26 = i37 + 1;
                i19 = i;
                i23 = i7;
                bArr4 = bArr3;
                iArr3 = iArr5;
                i25 = i38;
                i24 = i6;
            }
            i24++;
            i19 = i;
            i20 = i2;
            i23 = i23;
        }
        byte[] bArr12 = bArr4;
        int i41 = i23;
        int i42 = i2 - 1;
        int iMinValueInColumn = minValueInColumn(this.f2835f, i42);
        if (iMinValueInColumn > i4 || iMinValueInColumn < 0) {
            return -1;
        }
        System.arraycopy(bArr5[valuePositionInColumn(this.f2835f, i42, iMinValueInColumn)], i41, bArr12, i41, bArr12.length);
        return iMinValueInColumn;
    }

    private static int getNumber(byte[] bArr, int i, int i2) {
        int i3 = 0;
        int i4 = 0;
        while (i3 < i2) {
            int i5 = i + 1;
            int i6 = bArr[i] & 255;
            if (i6 < 48 || i6 > 57) {
                return -1;
            }
            i4 = ((i4 * 10) + i6) - 48;
            i3++;
            i = i5;
        }
        return i4;
    }

    private int processExtensions(byte[] bArr, int i, int i2, byte[] bArr2) {
        int i3;
        byte b;
        int number;
        int number2;
        int number3;
        int number4;
        int i4 = 0;
        if ((this.options & 32) == 0) {
            return 0;
        }
        int i5 = 0;
        int i6 = 0;
        while (i4 < i2 && i5 <= 20) {
            int i7 = i4 + 1;
            int i8 = bArr[i + i4] & 255;
            i5++;
            if (i8 == 46) {
                this.extOut = i7;
                return i6;
            }
            if (i8 != 109) {
                if (i8 != 112) {
                    if (i8 != 115) {
                        if (i8 != 101) {
                            if (i8 == 102) {
                                if (i5 != 1 && (i5 != 2 || ((b = bArr[i]) != 115 && b != 109))) {
                                    return -1;
                                }
                                i3 = i6 + 1;
                                bArr2[i6] = -24;
                            }
                            i4 = i7;
                        } else {
                            i4 += 7;
                            if (i4 > i2 || (number = getNumber(bArr, i + i7, 6)) < 0) {
                                return -1;
                            }
                            int i9 = i6 + 1;
                            bArr2[i6] = -15;
                            if (number < 127) {
                                i6 += 2;
                                bArr2[i9] = (byte) (number + 1);
                            } else if (number < 16383) {
                                int i10 = i6 + 2;
                                int i11 = number - 127;
                                bArr2[i9] = (byte) ((i11 / TIFFConstants.TIFFTAG_SUBFILETYPE) + 128);
                                i6 += 3;
                                bArr2[i10] = (byte) ((i11 % TIFFConstants.TIFFTAG_SUBFILETYPE) + 1);
                            } else {
                                int i12 = number - 16383;
                                bArr2[i9] = (byte) ((i12 / 64516) + 192);
                                int i13 = i6 + 3;
                                bArr2[i6 + 2] = (byte) (((i12 / TIFFConstants.TIFFTAG_SUBFILETYPE) % TIFFConstants.TIFFTAG_SUBFILETYPE) + 1);
                                i6 += 4;
                                bArr2[i13] = (byte) ((i12 % TIFFConstants.TIFFTAG_SUBFILETYPE) + 1);
                            }
                        }
                    } else {
                        if (i5 != 1 || i4 + 10 > i2 || (number2 = getNumber(bArr, i + i7, 2)) <= 0 || number2 > 16 || (number3 = getNumber(bArr, i + i4 + 3, 2)) <= 1 || number3 > 16 || (number4 = getNumber(bArr, i + i4 + 5, 5)) < 0 || number2 >= 64516) {
                            return -1;
                        }
                        i4 += 10;
                        bArr2[i6] = -23;
                        bArr2[i6 + 1] = (byte) (((number2 - 1) << 4) | (17 - number3));
                        int i14 = i6 + 3;
                        bArr2[i6 + 2] = (byte) ((number4 / TIFFConstants.TIFFTAG_SUBFILETYPE) + 1);
                        i6 += 4;
                        bArr2[i14] = (byte) ((number4 % TIFFConstants.TIFFTAG_SUBFILETYPE) + 1);
                    }
                } else {
                    if (i5 != 1) {
                        return -1;
                    }
                    i3 = i6 + 1;
                    bArr2[i6] = -22;
                }
                i6 = i3;
                i4 = i7;
            } else {
                if (i5 != 1 || (i4 = i4 + 2) > i2 || (bArr[i + i7] & 255) != 53) {
                    return -1;
                }
                int i15 = i6 + 1;
                bArr2[i6] = -22;
                i6 += 2;
                bArr2[i15] = -20;
            }
        }
        return -1;
    }
}
