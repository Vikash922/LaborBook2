package com.itextpdf.p017io.font.woff2;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.itextpdf.p017io.exceptions.FontCompressionException;

/* JADX INFO: loaded from: classes6.dex */
class VariableLength {
    VariableLength() {
    }

    public static int read255UShort(Buffer buffer) {
        byte b = buffer.readByte();
        if (JavaUnsignedUtil.asU8(b) == 253) {
            return JavaUnsignedUtil.asU16(buffer.readShort());
        }
        if (JavaUnsignedUtil.asU8(b) == 255) {
            return JavaUnsignedUtil.asU8(buffer.readByte()) + 253;
        }
        if (JavaUnsignedUtil.asU8(b) == 254) {
            return JavaUnsignedUtil.asU8(buffer.readByte()) + TypedValues.PositionType.TYPE_PERCENT_X;
        }
        return JavaUnsignedUtil.asU8(b);
    }

    public static int readBase128(Buffer buffer) {
        int i = 0;
        for (int i2 = 0; i2 < 5; i2++) {
            byte b = buffer.readByte();
            if (i2 == 0 && JavaUnsignedUtil.asU8(b) == 128) {
                throw new FontCompressionException(FontCompressionException.READ_BASE_128_FAILED);
            }
            if (((-33554432) & i) != 0) {
                throw new FontCompressionException(FontCompressionException.READ_BASE_128_FAILED);
            }
            i = (i << 7) | (b & 127);
            if ((b & 128) == 0) {
                return i;
            }
        }
        throw new FontCompressionException(FontCompressionException.READ_BASE_128_FAILED);
    }
}
