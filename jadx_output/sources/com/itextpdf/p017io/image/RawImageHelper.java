package com.itextpdf.p017io.image;

import com.itextpdf.p017io.codec.CCITTG4Encoder;
import com.itextpdf.p017io.codec.TIFFFaxDecoder;
import com.itextpdf.p017io.exceptions.IOException;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes6.dex */
public final class RawImageHelper {
    public static void updateImageAttributes(RawImageData rawImageData, Map<String, Object> map) {
        if (!rawImageData.isRawImage()) {
            throw new IllegalArgumentException("Raw image expected.");
        }
        int colorEncodingComponentsNumber = rawImageData.getColorEncodingComponentsNumber();
        int typeCcitt = rawImageData.getTypeCcitt();
        if (typeCcitt > 255) {
            if (!rawImageData.isMask()) {
                rawImageData.setColorEncodingComponentsNumber(1);
            }
            rawImageData.setBpc(1);
            rawImageData.setFilter("CCITTFaxDecode");
            int i = typeCcitt - 257;
            HashMap map2 = new HashMap();
            if (i != 0) {
                map2.put("K", Integer.valueOf(i));
            }
            if ((colorEncodingComponentsNumber & 1) != 0) {
                map2.put("BlackIs1", true);
            }
            if ((colorEncodingComponentsNumber & 2) != 0) {
                map2.put("EncodedByteAlign", true);
            }
            if ((colorEncodingComponentsNumber & 4) != 0) {
                map2.put("EndOfLine", true);
            }
            if ((colorEncodingComponentsNumber & 8) != 0) {
                map2.put("EndOfBlock", false);
            }
            map2.put(PngImageHelperConstants.COLUMNS, Float.valueOf(rawImageData.getWidth()));
            map2.put("Rows", Float.valueOf(rawImageData.getHeight()));
            rawImageData.decodeParms = map2;
            return;
        }
        if (colorEncodingComponentsNumber != 1) {
            if (colorEncodingComponentsNumber == 3) {
                if (rawImageData.isInverted()) {
                    rawImageData.decode = new float[]{1.0f, 0.0f, 1.0f, 0.0f, 1.0f, 0.0f};
                }
            } else if (rawImageData.isInverted()) {
                rawImageData.decode = new float[]{1.0f, 0.0f, 1.0f, 0.0f, 1.0f, 0.0f, 1.0f, 0.0f};
            }
        } else if (rawImageData.isInverted()) {
            rawImageData.decode = new float[]{1.0f, 0.0f};
        }
        if (map != null) {
            rawImageData.setImageAttributes(map);
        }
        if (rawImageData.isMask() && (rawImageData.getBpc() == 1 || rawImageData.getBpc() > 8)) {
            rawImageData.setColorEncodingComponentsNumber(-1);
        }
        if (rawImageData.isDeflated()) {
            rawImageData.setFilter("FlateDecode");
        }
    }

    protected static void updateRawImageParameters(RawImageData rawImageData, int i, int i2, int i3, int i4, byte[] bArr) {
        rawImageData.setHeight(i2);
        rawImageData.setWidth(i);
        if (i3 != 1 && i3 != 3 && i3 != 4) {
            throw new IOException(IOException.ComponentsMustBe1_3Or4);
        }
        if (i4 != 1 && i4 != 2 && i4 != 4 && i4 != 8) {
            throw new IOException(IOException.BitsPerComponentMustBe1_2_4or8);
        }
        rawImageData.setColorEncodingComponentsNumber(i3);
        rawImageData.setBpc(i4);
        rawImageData.data = bArr;
    }

    protected static void updateRawImageParameters(RawImageData rawImageData, int i, int i2, int i3, int i4, byte[] bArr, int[] iArr) {
        if (iArr != null && iArr.length != i3 * 2) {
            throw new IOException(IOException.TransparencyLengthMustBeEqualTo2WithCcittImages);
        }
        if (i3 == 1 && i4 == 1) {
            updateRawImageParameters(rawImageData, i, i2, false, 256, 1, CCITTG4Encoder.compress(bArr, i, i2), iArr);
        } else {
            updateRawImageParameters(rawImageData, i, i2, i3, i4, bArr);
            rawImageData.setTransparency(iArr);
        }
    }

    protected static void updateRawImageParameters(RawImageData rawImageData, int i, int i2, boolean z, int i3, int i4, byte[] bArr, int[] iArr) {
        if (iArr != null && iArr.length != 2) {
            throw new IOException(IOException.TransparencyLengthMustBeEqualTo2WithCcittImages);
        }
        updateCcittImageParameters(rawImageData, i, i2, z, i3, i4, bArr);
        rawImageData.setTransparency(iArr);
    }

    protected static void updateCcittImageParameters(RawImageData rawImageData, int i, int i2, boolean z, int i3, int i4, byte[] bArr) {
        if (i3 != 256 && i3 != 257 && i3 != 258) {
            throw new IOException(IOException.CcittCompressionTypeMustBeCcittg4Ccittg3_1dOrCcittg3_2d);
        }
        if (z) {
            TIFFFaxDecoder.reverseBits(bArr);
        }
        rawImageData.setHeight(i2);
        rawImageData.setWidth(i);
        rawImageData.setColorEncodingComponentsNumber(i4);
        rawImageData.setTypeCcitt(i3);
        rawImageData.data = bArr;
    }
}
