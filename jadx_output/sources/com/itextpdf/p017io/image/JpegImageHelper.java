package com.itextpdf.p017io.image;

import com.itextpdf.commons.utils.MessageFormatUtil;
import com.itextpdf.kernel.xmp.XMPError;
import com.itextpdf.p017io.colors.IccProfile;
import com.itextpdf.p017io.logs.IoLogMessageConstant;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.HashMap;
import org.bouncycastle.math.Primes;
import org.objectweb.asm.Opcodes;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

/* JADX INFO: loaded from: classes6.dex */
class JpegImageHelper {
    private static final int M_APP0 = 224;
    private static final int M_APP2 = 226;
    private static final int M_APPD = 237;
    private static final int M_APPE = 238;
    private static final int NOPARAM_MARKER = 2;
    private static final int NOT_A_MARKER = -1;
    private static final int UNSUPPORTED_MARKER = 1;
    private static final int VALID_MARKER = 0;
    private static final Logger LOGGER = LoggerFactory.getLogger((Class<?>) JpegImageHelper.class);
    private static final int[] VALID_MARKERS = {192, Opcodes.INSTANCEOF, Opcodes.MONITORENTER};
    private static final int[] UNSUPPORTED_MARKERS = {Opcodes.MONITOREXIT, Opcodes.MULTIANEWARRAY, Opcodes.IFNULL, Opcodes.IFNONNULL, 200, XMPError.BADXML, XMPError.BADRDF, XMPError.BADXMP, 205, 206, 207};
    private static final int[] NOPARAM_MARKERS = {208, 209, 210, Primes.SMALL_FACTOR_LIMIT, 212, 213, 214, 215, 216, 1};
    private static final byte[] JFIF_ID = {74, 70, 73, 70, 0};
    private static final byte[] PS_8BIM_RESO = {56, 66, 73, 77, 3, -19};

    JpegImageHelper() {
    }

    public static void processImage(ImageData imageData) throws Throwable {
        String string;
        ByteArrayInputStream byteArrayInputStream;
        if (imageData.getOriginalType() != ImageType.JPEG) {
            throw new IllegalArgumentException("JPEG image expected");
        }
        ByteArrayInputStream byteArrayInputStream2 = null;
        try {
            try {
                if (imageData.getData() == null) {
                    imageData.loadData();
                    string = imageData.getUrl().toString();
                } else {
                    string = "Byte array";
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
            processParameters(byteArrayInputStream, string, imageData);
            try {
                byteArrayInputStream.close();
            } catch (IOException unused) {
            }
            updateAttributes(imageData);
        } catch (IOException e2) {
            e = e2;
            byteArrayInputStream2 = byteArrayInputStream;
            throw new com.itextpdf.p017io.exceptions.IOException(com.itextpdf.p017io.exceptions.IOException.JpegImageException, (Throwable) e);
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

    static void attemptToSetIccProfileToImage(byte[][] bArr, ImageData imageData) {
        if (bArr != null) {
            int length = 0;
            for (byte[] bArr2 : bArr) {
                if (bArr2 == null) {
                    return;
                }
                length += bArr2.length - 14;
            }
            byte[] bArr3 = new byte[length];
            int length2 = 0;
            for (byte[] bArr4 : bArr) {
                System.arraycopy(bArr4, 14, bArr3, length2, bArr4.length - 14);
                length2 += bArr4.length - 14;
            }
            try {
                imageData.setProfile(IccProfile.getInstance(bArr3, imageData.getColorEncodingComponentsNumber()));
            } catch (Exception e) {
                LOGGER.error(MessageFormatUtil.format(IoLogMessageConstant.DURING_CONSTRUCTION_OF_ICC_PROFILE_ERROR_OCCURRED, e.getClass().getSimpleName(), e.getMessage()));
            }
        }
    }

    private static void updateAttributes(ImageData imageData) {
        imageData.filter = "DCTDecode";
        if (imageData.getColorTransform() == 0) {
            HashMap map = new HashMap();
            map.put("ColorTransform", 0);
            imageData.decodeParms = map;
        }
        int colorEncodingComponentsNumber = imageData.getColorEncodingComponentsNumber();
        if (colorEncodingComponentsNumber == 1 || colorEncodingComponentsNumber == 3 || !imageData.isInverted()) {
            return;
        }
        imageData.decode = new float[]{1.0f, 0.0f, 1.0f, 0.0f, 1.0f, 0.0f, 1.0f, 0.0f};
    }

    /* JADX WARN: Code restructure failed: missing block: B:75:0x014d, code lost:
    
        r7 = r7 + 1;
        r12 = 0;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static void processParameters(java.io.InputStream r17, java.lang.String r18, com.itextpdf.p017io.image.ImageData r19) throws java.io.IOException {
        /*
            Method dump skipped, instruction units count: 683
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.itextpdf.p017io.image.JpegImageHelper.processParameters(java.io.InputStream, java.lang.String, com.itextpdf.io.image.ImageData):void");
    }

    private static int getShort(InputStream inputStream) throws IOException {
        return (inputStream.read() << 8) + inputStream.read();
    }

    private static int marker(int i) {
        int i2 = 0;
        int i3 = 0;
        while (true) {
            int[] iArr = VALID_MARKERS;
            if (i3 >= iArr.length) {
                int i4 = 0;
                while (true) {
                    int[] iArr2 = NOPARAM_MARKERS;
                    if (i4 >= iArr2.length) {
                        while (true) {
                            int[] iArr3 = UNSUPPORTED_MARKERS;
                            if (i2 >= iArr3.length) {
                                return -1;
                            }
                            if (i == iArr3[i2]) {
                                return 1;
                            }
                            i2++;
                        }
                    } else {
                        if (i == iArr2[i4]) {
                            return 2;
                        }
                        i4++;
                    }
                }
            } else {
                if (i == iArr[i3]) {
                    return 0;
                }
                i3++;
            }
        }
    }
}
