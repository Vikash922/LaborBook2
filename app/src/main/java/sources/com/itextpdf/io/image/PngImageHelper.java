package com.itextpdf.io.image;

import com.itextpdf.io.colors.IccProfile;
import com.itextpdf.io.logs.IoLogMessageConstant;
import com.itextpdf.io.source.ByteArrayOutputStream;
import com.itextpdf.io.util.FilterUtil;
import com.itextpdf.io.util.StreamUtil;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.HashMap;
import java.util.Map;
import org.objectweb.asm.Opcodes;
import org.slf4j.LoggerFactory;

/* JADX INFO: loaded from: classes6.dex */
class PngImageHelper {
    public static final String IDAT = "IDAT";
    public static final String IEND = "IEND";
    public static final String IHDR = "IHDR";
    public static final String PLTE = "PLTE";
    private static final int PNG_FILTER_AVERAGE = 3;
    private static final int PNG_FILTER_NONE = 0;
    private static final int PNG_FILTER_PAETH = 4;
    private static final int PNG_FILTER_SUB = 1;
    private static final int PNG_FILTER_UP = 2;
    private static final int TRANSFERSIZE = 4096;
    public static final String cHRM = "cHRM";
    public static final String gAMA = "gAMA";
    public static final String iCCP = "iCCP";
    public static final String pHYs = "pHYs";
    public static final String sRGB = "sRGB";
    public static final String tRNS = "tRNS";
    public static final int[] PNGID = {Opcodes.L2F, 80, 78, 71, 13, 10, 26, 10};
    private static final String[] intents = {PngImageHelperConstants.PERCEPTUAL, PngImageHelperConstants.RELATIVE_COLORIMETRIC, PngImageHelperConstants.SATURATION, PngImageHelperConstants.ABSOLUTE_COLORMETRIC};

    PngImageHelper() {
    }

    private static class PngParameters {
        float XYRatio;
        int bitDepth;
        int bytesPerPixel;
        int compressionMethod;
        InputStream dataStream;
        int dpiX;
        int dpiY;
        int filterMethod;
        boolean genBWMask;
        int height;
        IccProfile iccProfile;
        PngImageData image;
        byte[] imageData;
        int inputBands;
        String intent;
        int interlaceMethod;
        boolean palShades;
        byte[] smask;
        byte[] trans;
        int width;
        Map<String, Object> additional = new HashMap();
        ByteArrayOutputStream idat = new ByteArrayOutputStream();
        int transRedGray = -1;
        int transGreen = -1;
        int transBlue = -1;

        PngParameters(PngImageData pngImageData) {
            this.image = pngImageData;
        }
    }

    public static void processImage(ImageData imageData) throws Throwable {
        ByteArrayInputStream byteArrayInputStream;
        if (imageData.getOriginalType() != ImageType.PNG) {
            throw new IllegalArgumentException("PNG image expected");
        }
        ByteArrayInputStream byteArrayInputStream2 = null;
        try {
            try {
                if (imageData.getData() == null) {
                    imageData.loadData();
                }
                byteArrayInputStream = new ByteArrayInputStream(imageData.getData());
            } catch (IOException e) {
                e = e;
            }
        } catch (Throwable th) {
            th = th;
        }
        try {
            imageData.imageSize = imageData.getData().length;
            PngParameters pngParameters = new PngParameters((PngImageData) imageData);
            processPng(byteArrayInputStream, pngParameters);
            try {
                byteArrayInputStream.close();
            } catch (IOException unused) {
            }
            RawImageHelper.updateImageAttributes(pngParameters.image, pngParameters.additional);
        } catch (IOException e2) {
            e = e2;
            byteArrayInputStream2 = byteArrayInputStream;
            throw new com.itextpdf.io.exceptions.IOException(com.itextpdf.io.exceptions.IOException.PngImageException, (Throwable) e);
        } catch (Throwable th2) {
            th = th2;
            byteArrayInputStream2 = byteArrayInputStream;
            if (byteArrayInputStream2 != null) {
                try {
                    byteArrayInputStream2.close();
                } catch (IOException unused2) {
                }
            }
            throw th;
        }
    }

    private static void processPng(InputStream inputStream, PngParameters pngParameters) throws IOException {
        int i;
        int i2;
        readPng(inputStream, pngParameters);
        int colorType = pngParameters.image.getColorType();
        if (pngParameters.iccProfile != null && pngParameters.iccProfile.getNumComponents() != getExpectedNumberOfColorComponents(pngParameters)) {
            LoggerFactory.getLogger((Class<?>) PngImageHelper.class).warn(IoLogMessageConstant.PNG_IMAGE_HAS_ICC_PROFILE_WITH_INCOMPATIBLE_NUMBER_OF_COLOR_COMPONENTS);
        }
        try {
            pngParameters.palShades = false;
            int i3 = 1;
            if (pngParameters.trans != null) {
                int i4 = 0;
                i = 0;
                i2 = 0;
                while (true) {
                    if (i4 < pngParameters.trans.length) {
                        int i5 = pngParameters.trans[i4] & 255;
                        if (i5 == 0) {
                            i++;
                            i2 = i4;
                        }
                        if (i5 != 0 && i5 != 255) {
                            pngParameters.palShades = true;
                            break;
                        }
                        i4++;
                    } else {
                        break;
                    }
                }
            } else {
                i = 0;
                i2 = 0;
            }
            int i6 = colorType & 4;
            if (i6 != 0) {
                pngParameters.palShades = true;
            }
            pngParameters.genBWMask = !pngParameters.palShades && (i > 1 || pngParameters.transRedGray >= 0);
            if (!pngParameters.palShades && !pngParameters.genBWMask && i == 1) {
                pngParameters.additional.put(PngImageHelperConstants.MASK, new int[]{i2, i2});
            }
            boolean z = pngParameters.interlaceMethod == 1 || pngParameters.bitDepth == 16 || i6 != 0 || pngParameters.palShades || pngParameters.genBWMask;
            if (colorType == 0) {
                pngParameters.inputBands = 1;
            } else if (colorType == 6) {
                pngParameters.inputBands = 4;
            } else if (colorType == 2) {
                pngParameters.inputBands = 3;
            } else if (colorType == 3) {
                pngParameters.inputBands = 1;
            } else if (colorType == 4) {
                pngParameters.inputBands = 2;
            }
            if (z) {
                decodeIdat(pngParameters);
            }
            int i7 = pngParameters.inputBands;
            if (i6 != 0) {
                i7--;
            }
            int i8 = i7;
            int i9 = pngParameters.bitDepth;
            if (i9 == 16) {
                i9 = 8;
            }
            int i10 = i9;
            if (pngParameters.imageData != null) {
                if (pngParameters.image.isIndexed()) {
                    RawImageHelper.updateRawImageParameters(pngParameters.image, pngParameters.width, pngParameters.height, i8, i10, pngParameters.imageData);
                } else {
                    RawImageHelper.updateRawImageParameters(pngParameters.image, pngParameters.width, pngParameters.height, i8, i10, pngParameters.imageData, null);
                }
            } else {
                RawImageHelper.updateRawImageParameters(pngParameters.image, pngParameters.width, pngParameters.height, i8, i10, pngParameters.idat.toByteArray());
                pngParameters.image.setDeflated(true);
                HashMap map = new HashMap();
                map.put(PngImageHelperConstants.BITS_PER_COMPONENT, Integer.valueOf(pngParameters.bitDepth));
                map.put(PngImageHelperConstants.PREDICTOR, 15);
                map.put(PngImageHelperConstants.COLUMNS, Integer.valueOf(pngParameters.width));
                if (!pngParameters.image.isIndexed() && !pngParameters.image.isGrayscaleImage()) {
                    i3 = 3;
                }
                map.put(PngImageHelperConstants.COLORS, Integer.valueOf(i3));
                pngParameters.image.decodeParms = map;
            }
            if (pngParameters.intent != null) {
                pngParameters.additional.put(PngImageHelperConstants.INTENT, pngParameters.intent);
            }
            if (pngParameters.iccProfile != null) {
                pngParameters.image.setProfile(pngParameters.iccProfile);
            }
            if (pngParameters.palShades) {
                RawImageData rawImageData = (RawImageData) ImageDataFactory.createRawImage(null);
                RawImageHelper.updateRawImageParameters(rawImageData, pngParameters.width, pngParameters.height, 1, 8, pngParameters.smask);
                rawImageData.makeMask();
                pngParameters.image.setImageMask(rawImageData);
            }
            if (pngParameters.genBWMask) {
                RawImageData rawImageData2 = (RawImageData) ImageDataFactory.createRawImage(null);
                RawImageHelper.updateRawImageParameters(rawImageData2, pngParameters.width, pngParameters.height, 1, 1, pngParameters.smask);
                rawImageData2.makeMask();
                pngParameters.image.setImageMask(rawImageData2);
            }
            pngParameters.image.setDpi(pngParameters.dpiX, pngParameters.dpiY);
            pngParameters.image.setXYRatio(pngParameters.XYRatio);
        } catch (Exception e) {
            throw new com.itextpdf.io.exceptions.IOException(com.itextpdf.io.exceptions.IOException.PngImageException, (Throwable) e);
        }
    }

    private static int getExpectedNumberOfColorComponents(PngParameters pngParameters) {
        return pngParameters.image.isGrayscaleImage() ? 1 : 3;
    }

    /* JADX WARN: Code restructure failed: missing block: B:118:0x0318, code lost:
    
        throw new java.io.IOException("corrupted.png.file");
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static void readPng(java.io.InputStream r19, com.itextpdf.io.image.PngImageHelper.PngParameters r20) throws java.io.IOException {
        /*
            Method dump skipped, instruction units count: 793
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.itextpdf.io.image.PngImageHelper.readPng(java.io.InputStream, com.itextpdf.io.image.PngImageHelper$PngParameters):void");
    }

    private static boolean checkMarker(String str) {
        if (str.length() != 4) {
            return false;
        }
        for (int i = 0; i < 4; i++) {
            char cCharAt = str.charAt(i);
            if ((cCharAt < 'a' || cCharAt > 'z') && (cCharAt < 'A' || cCharAt > 'Z')) {
                return false;
            }
        }
        return true;
    }

    private static void decodeIdat(PngParameters pngParameters) {
        int i;
        int i2 = pngParameters.bitDepth;
        if (i2 == 16) {
            i2 = 8;
        }
        pngParameters.bytesPerPixel = pngParameters.bitDepth == 16 ? 2 : 1;
        int colorType = pngParameters.image.getColorType();
        if (colorType == 0) {
            i = (((i2 * pngParameters.width) + 7) / 8) * pngParameters.height;
        } else if (colorType == 6) {
            i = pngParameters.width * 3 * pngParameters.height;
            pngParameters.bytesPerPixel *= 4;
        } else if (colorType != 2) {
            if (colorType == 3) {
                i = pngParameters.interlaceMethod == 1 ? (((i2 * pngParameters.width) + 7) / 8) * pngParameters.height : -1;
                pngParameters.bytesPerPixel = 1;
            } else if (colorType == 4) {
                i = pngParameters.width * pngParameters.height;
                pngParameters.bytesPerPixel *= 2;
            }
        } else {
            i = pngParameters.width * 3 * pngParameters.height;
            pngParameters.bytesPerPixel *= 3;
        }
        if (i >= 0) {
            pngParameters.imageData = new byte[i];
        }
        if (pngParameters.palShades) {
            pngParameters.smask = new byte[pngParameters.width * pngParameters.height];
        } else if (pngParameters.genBWMask) {
            pngParameters.smask = new byte[((pngParameters.width + 7) / 8) * pngParameters.height];
        }
        pngParameters.dataStream = FilterUtil.getInflaterInputStream(new ByteArrayInputStream(pngParameters.idat.toByteArray()));
        if (pngParameters.interlaceMethod != 1) {
            decodePass(0, 0, 1, 1, pngParameters.width, pngParameters.height, pngParameters);
            return;
        }
        decodePass(0, 0, 8, 8, (pngParameters.width + 7) / 8, (pngParameters.height + 7) / 8, pngParameters);
        decodePass(4, 0, 8, 8, (pngParameters.width + 3) / 8, (pngParameters.height + 7) / 8, pngParameters);
        decodePass(0, 4, 4, 8, (pngParameters.width + 3) / 4, (pngParameters.height + 3) / 8, pngParameters);
        decodePass(2, 0, 4, 4, (pngParameters.width + 1) / 4, (pngParameters.height + 3) / 4, pngParameters);
        decodePass(0, 2, 2, 4, (pngParameters.width + 1) / 2, (pngParameters.height + 1) / 4, pngParameters);
        decodePass(1, 0, 2, 2, pngParameters.width / 2, (pngParameters.height + 1) / 2, pngParameters);
        decodePass(0, 1, 1, 2, pngParameters.width, pngParameters.height / 2, pngParameters);
    }

    private static void decodePass(int i, int i2, int i3, int i4, int i5, int i6, PngParameters pngParameters) {
        int i7;
        if (i5 == 0 || i6 == 0) {
            return;
        }
        int i8 = (((pngParameters.inputBands * i5) * pngParameters.bitDepth) + 7) / 8;
        int i9 = i2;
        byte[] bArr = new byte[i8];
        byte[] bArr2 = new byte[i8];
        int i10 = 0;
        while (i10 < i6) {
            try {
                i7 = pngParameters.dataStream.read();
                try {
                    StreamUtil.readFully(pngParameters.dataStream, bArr, 0, i8);
                } catch (Exception unused) {
                }
            } catch (Exception unused2) {
                i7 = 0;
            }
            if (i7 != 0) {
                if (i7 == 1) {
                    decodeSubFilter(bArr, i8, pngParameters.bytesPerPixel);
                } else if (i7 == 2) {
                    decodeUpFilter(bArr, bArr2, i8);
                } else if (i7 == 3) {
                    decodeAverageFilter(bArr, bArr2, i8, pngParameters.bytesPerPixel);
                } else if (i7 == 4) {
                    decodePaethFilter(bArr, bArr2, i8, pngParameters.bytesPerPixel);
                } else {
                    throw new com.itextpdf.io.exceptions.IOException(com.itextpdf.io.exceptions.IOException.UnknownPngFilter);
                }
            }
            processPixels(bArr, i, i3, i9, i5, pngParameters);
            i10++;
            i9 += i4;
            byte[] bArr3 = bArr2;
            bArr2 = bArr;
            bArr = bArr3;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x0027  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static void processPixels(byte[] r23, int r24, int r25, int r26, int r27, com.itextpdf.io.image.PngImageHelper.PngParameters r28) {
        /*
            Method dump skipped, instruction units count: 384
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.itextpdf.io.image.PngImageHelper.processPixels(byte[], int, int, int, int, com.itextpdf.io.image.PngImageHelper$PngParameters):void");
    }

    private static int getPixel(byte[] bArr, int i, int i2, int i3, int i4) {
        if (i3 == 8) {
            return bArr[(i4 * i2) + i] & 255;
        }
        int i5 = i4 * i2;
        int i6 = 8 / i3;
        return (bArr[i5 + (i / i6)] >> ((8 - ((i % i6) * i3)) - i3)) & ((1 << i3) - 1);
    }

    static void setPixel(byte[] bArr, int[] iArr, int i, int i2, int i3, int i4, int i5, int i6) {
        int i7 = 0;
        if (i5 == 8) {
            int i8 = (i6 * i4) + (i3 * i2);
            while (i7 < i2) {
                bArr[i8 + i7] = (byte) iArr[i7 + i];
                i7++;
            }
            return;
        }
        if (i5 == 16) {
            int i9 = (i6 * i4) + (i3 * i2);
            while (i7 < i2) {
                bArr[i9 + i7] = (byte) (iArr[i7 + i] >>> 8);
                i7++;
            }
            return;
        }
        int i10 = 8 / i5;
        int i11 = (i6 * i4) + (i3 / i10);
        bArr[i11] = (byte) (((byte) (iArr[i] << ((8 - ((i3 % i10) * i5)) - i5))) | bArr[i11]);
    }

    private static int[] getPixel(byte[] bArr, PngParameters pngParameters) {
        int i = pngParameters.bitDepth;
        int i2 = 0;
        if (i == 8) {
            int length = bArr.length;
            int[] iArr = new int[length];
            while (i2 < length) {
                iArr[i2] = bArr[i2] & 255;
                i2++;
            }
            return iArr;
        }
        if (i == 16) {
            int length2 = bArr.length / 2;
            int[] iArr2 = new int[length2];
            while (i2 < length2) {
                int i3 = i2 * 2;
                iArr2[i2] = ((bArr[i3] & 255) << 8) + (bArr[i3 + 1] & 255);
                i2++;
            }
            return iArr2;
        }
        int[] iArr3 = new int[(bArr.length * 8) / pngParameters.bitDepth];
        int i4 = 8 / pngParameters.bitDepth;
        int i5 = (1 << pngParameters.bitDepth) - 1;
        int i6 = 0;
        while (i2 < bArr.length) {
            int i7 = i4 - 1;
            while (i7 >= 0) {
                iArr3[i6] = (bArr[i2] >>> (pngParameters.bitDepth * i7)) & i5;
                i7--;
                i6++;
            }
            i2++;
        }
        return iArr3;
    }

    private static void decodeSubFilter(byte[] bArr, int i, int i2) {
        for (int i3 = i2; i3 < i; i3++) {
            bArr[i3] = (byte) ((bArr[i3] & 255) + (bArr[i3 - i2] & 255));
        }
    }

    private static void decodeUpFilter(byte[] bArr, byte[] bArr2, int i) {
        for (int i2 = 0; i2 < i; i2++) {
            bArr[i2] = (byte) ((bArr[i2] & 255) + (bArr2[i2] & 255));
        }
    }

    private static void decodeAverageFilter(byte[] bArr, byte[] bArr2, int i, int i2) {
        for (int i3 = 0; i3 < i2; i3++) {
            bArr[i3] = (byte) ((bArr[i3] & 255) + ((bArr2[i3] & 255) / 2));
        }
        for (int i4 = i2; i4 < i; i4++) {
            bArr[i4] = (byte) ((bArr[i4] & 255) + (((bArr[i4 - i2] & 255) + (bArr2[i4] & 255)) / 2));
        }
    }

    private static int paethPredictor(int i, int i2, int i3) {
        int i4 = (i + i2) - i3;
        int iAbs = Math.abs(i4 - i);
        int iAbs2 = Math.abs(i4 - i2);
        int iAbs3 = Math.abs(i4 - i3);
        return (iAbs > iAbs2 || iAbs > iAbs3) ? iAbs2 <= iAbs3 ? i2 : i3 : i;
    }

    private static void decodePaethFilter(byte[] bArr, byte[] bArr2, int i, int i2) {
        for (int i3 = 0; i3 < i2; i3++) {
            bArr[i3] = (byte) ((bArr[i3] & 255) + (bArr2[i3] & 255));
        }
        for (int i4 = i2; i4 < i; i4++) {
            int i5 = i4 - i2;
            bArr[i4] = (byte) ((bArr[i4] & 255) + paethPredictor(bArr[i5] & 255, bArr2[i4] & 255, bArr2[i5] & 255));
        }
    }

    public static int getInt(InputStream inputStream) throws IOException {
        return (inputStream.read() << 24) + (inputStream.read() << 16) + (inputStream.read() << 8) + inputStream.read();
    }

    public static int getWord(InputStream inputStream) throws IOException {
        return (inputStream.read() << 8) + inputStream.read();
    }

    public static String getString(InputStream inputStream) throws IOException {
        StringBuilder sb = new StringBuilder();
        for (int i = 0; i < 4; i++) {
            sb.append((char) inputStream.read());
        }
        return sb.toString();
    }
}
