package com.itextpdf.barcodes.dmcode;

import androidx.recyclerview.widget.ItemTouchHelper;
import com.itextpdf.kernel.pdf.canvas.wmf.MetaDo;
import com.itextpdf.kernel.xmp.XMPError;
import com.itextpdf.p017io.codec.TIFFConstants;
import org.bouncycastle.asn1.BERTags;
import org.bouncycastle.math.Primes;
import org.objectweb.asm.Opcodes;

/* JADX INFO: loaded from: classes6.dex */
public final class ReedSolomon {
    private static final int[] log = {0, 255, 1, 240, 2, 225, 241, 53, 3, 38, 226, 133, 242, 43, 54, 210, 4, Opcodes.MONITOREXIT, 39, 114, 227, 106, 134, 28, 243, Opcodes.F2L, 44, 23, 55, 118, Primes.SMALL_FACTOR_LIMIT, 234, 5, 219, 196, 96, 40, 222, 115, 103, 228, 78, 107, 125, 135, 8, 29, Opcodes.IF_ICMPGE, 244, Opcodes.INVOKEDYNAMIC, Opcodes.F2D, Opcodes.GETFIELD, 45, 99, 24, 49, 56, 13, 119, 153, 212, Opcodes.IFNONNULL, 235, 91, 6, 76, 220, 217, Opcodes.MULTIANEWARRAY, 11, 97, Opcodes.INVOKESTATIC, 41, 36, 223, 253, 116, Opcodes.L2D, 104, Opcodes.INSTANCEOF, 229, 86, 79, Opcodes.LOOKUPSWITCH, 108, Opcodes.IF_ACMPEQ, 126, Opcodes.I2B, 136, 34, 9, 74, 30, 32, Opcodes.IF_ICMPGT, 84, 245, Opcodes.LRETURN, Opcodes.NEW, XMPError.BADSTREAM, Opcodes.D2I, 81, Opcodes.PUTFIELD, 190, 46, 88, 100, Opcodes.IF_ICMPEQ, 25, 231, 50, 207, 57, Opcodes.I2S, 14, 67, 120, 128, 154, 248, 213, Opcodes.GOTO, 200, 63, 236, 110, 92, Opcodes.ARETURN, 7, Opcodes.IF_ICMPLT, 77, 124, 221, 102, 218, 95, Opcodes.IFNULL, 90, 12, Opcodes.DCMPG, 98, 48, Opcodes.INVOKEINTERFACE, Opcodes.PUTSTATIC, 42, 209, 37, 132, BERTags.FLAGS, 52, TIFFConstants.TIFFTAG_SUBFILETYPE, 239, 117, 233, Opcodes.F2I, 22, 105, 27, Opcodes.MONITORENTER, 113, 230, 206, 87, 158, 80, Opcodes.ANEWARRAY, Opcodes.IRETURN, XMPError.BADXMP, 109, Opcodes.DRETURN, Opcodes.IF_ACMPNE, 62, 127, MetaDo.META_CREATEPALETTE, Opcodes.I2C, 66, Opcodes.L2F, 192, 35, 252, 10, Opcodes.INVOKESPECIAL, 75, 216, 31, 83, 33, 73, Opcodes.IF_ICMPLE, Opcodes.D2F, 85, Opcodes.TABLESWITCH, 246, 65, Opcodes.FRETURN, 61, 188, XMPError.BADRDF, 205, 157, Opcodes.D2L, Opcodes.RET, 82, 72, Opcodes.INVOKEVIRTUAL, 215, Opcodes.ATHROW, 251, 47, Opcodes.GETSTATIC, 89, Opcodes.DCMPL, 101, 94, Opcodes.IF_ICMPNE, 123, 26, 112, 232, 21, 51, 238, 208, 131, 58, 69, Opcodes.LCMP, 18, 15, 16, 68, 17, 121, Opcodes.FCMPL, 129, 19, 155, 59, 249, 70, 214, ItemTouchHelper.Callback.DEFAULT_SWIPE_ANIMATION_DURATION, Opcodes.JSR, 71, XMPError.BADXML, 156, 64, 60, 237, 130, 111, 20, 93, 122, Opcodes.RETURN, Opcodes.FCMPG};
    private static final int[] alog = {1, 2, 4, 8, 16, 32, 64, 128, 45, 90, Opcodes.GETFIELD, 69, Opcodes.L2D, 57, 114, 228, 229, 231, 227, 235, 251, 219, 155, 27, 54, 108, 216, 157, 23, 46, 92, Opcodes.INVOKESTATIC, 93, Opcodes.INVOKEDYNAMIC, 89, Opcodes.GETSTATIC, 73, Opcodes.I2C, 9, 18, 36, 72, Opcodes.D2F, 13, 26, 52, 104, 208, Opcodes.F2D, 55, 110, 220, Opcodes.FCMPL, 7, 14, 28, 56, 112, BERTags.FLAGS, 237, MetaDo.META_CREATEPALETTE, Opcodes.MONITOREXIT, Opcodes.LOOKUPSWITCH, 123, 246, Opcodes.INSTANCEOF, Opcodes.DRETURN, 115, 230, 225, 239, 243, XMPError.BADXMP, Opcodes.NEW, 91, Opcodes.INVOKEVIRTUAL, 65, 130, 41, 82, Opcodes.IF_ICMPLE, 101, XMPError.BADRDF, Opcodes.INVOKEINTERFACE, 95, 190, 81, Opcodes.IF_ICMPGE, 105, 210, Opcodes.L2F, 63, 126, 252, 213, 135, 35, 70, Opcodes.F2L, 53, 106, 212, 133, 39, 78, 156, 21, 42, 84, Opcodes.JSR, 125, ItemTouchHelper.Callback.DEFAULT_SWIPE_ANIMATION_DURATION, 217, Opcodes.IF_ICMPEQ, 19, 38, 76, Opcodes.DCMPG, 29, 58, 116, 232, 253, 215, 131, 43, 86, Opcodes.IRETURN, 117, 234, 249, 223, Opcodes.I2S, 11, 22, 44, 88, Opcodes.ARETURN, 77, 154, 25, 50, 100, 200, Opcodes.ANEWARRAY, 87, Opcodes.FRETURN, 113, 226, 233, 255, Primes.SMALL_FACTOR_LIMIT, Opcodes.F2I, 59, 118, 236, 245, Opcodes.IFNONNULL, Opcodes.IF_ICMPGT, 107, 214, 129, 47, 94, 188, 85, Opcodes.TABLESWITCH, 121, 242, XMPError.BADXML, Opcodes.ATHROW, 83, Opcodes.IF_ACMPNE, 97, Opcodes.MONITORENTER, Opcodes.RET, 127, TIFFConstants.TIFFTAG_SUBFILETYPE, 209, Opcodes.D2L, 51, 102, XMPError.BADSTREAM, Opcodes.PUTFIELD, 71, Opcodes.D2I, 49, 98, 196, Opcodes.IF_ACMPEQ, 103, 206, Opcodes.RETURN, 79, 158, 17, 34, 68, 136, 61, 122, 244, Opcodes.MULTIANEWARRAY, Opcodes.GOTO, 99, Opcodes.IFNULL, Opcodes.IF_ICMPLT, 111, 222, Opcodes.I2B, 15, 30, 60, 120, 240, 205, Opcodes.INVOKESPECIAL, 67, 134, 33, 66, 132, 37, 74, Opcodes.LCMP, 5, 10, 20, 40, 80, Opcodes.IF_ICMPNE, 109, 218, 153, 31, 62, 124, 248, 221, Opcodes.DCMPL, 3, 6, 12, 24, 48, 96, 192, Opcodes.LRETURN, 119, 238, 241, 207, Opcodes.PUTSTATIC, 75, Opcodes.FCMPG, 1};
    private static final int[] poly5 = {228, 48, 15, 111, 62};
    private static final int[] poly7 = {23, 68, Opcodes.D2F, 134, 240, 92, TIFFConstants.TIFFTAG_SUBFILETYPE};
    private static final int[] poly10 = {28, 24, Opcodes.INVOKEINTERFACE, Opcodes.IF_ACMPNE, 223, 248, 116, 255, 110, 61};
    private static final int[] poly11 = {Opcodes.DRETURN, Opcodes.L2D, 205, 12, Opcodes.MONITORENTER, Opcodes.JSR, 39, 245, 60, 97, 120};
    private static final int[] poly12 = {41, 153, 158, 91, 61, 42, Opcodes.D2I, 213, 97, Opcodes.GETSTATIC, 100, 242};
    private static final int[] poly14 = {156, 97, 192, 252, 95, 9, 157, 119, Opcodes.L2D, 45, 18, Opcodes.INVOKEDYNAMIC, 83, Opcodes.INVOKEINTERFACE};
    private static final int[] poly18 = {83, Opcodes.MONITOREXIT, 100, 39, 188, 75, 66, 61, 241, 213, 109, 129, 94, TIFFConstants.TIFFTAG_SUBFILETYPE, 225, 48, 90, 188};
    private static final int[] poly20 = {15, Opcodes.MONITOREXIT, 244, 9, 233, 71, Opcodes.JSR, 2, 188, Opcodes.IF_ICMPNE, 153, Opcodes.I2B, 253, 79, 108, 82, 27, Opcodes.FRETURN, Opcodes.INVOKEDYNAMIC, Opcodes.IRETURN};
    private static final int[] poly24 = {52, 190, 88, 205, 109, 39, Opcodes.ARETURN, 21, 155, Opcodes.MULTIANEWARRAY, 251, 223, 155, 21, 5, Opcodes.IRETURN, TIFFConstants.TIFFTAG_SUBFILETYPE, 124, 12, Opcodes.PUTFIELD, Opcodes.INVOKESTATIC, 96, 50, Opcodes.INSTANCEOF};
    private static final int[] poly28 = {Primes.SMALL_FACTOR_LIMIT, 231, 43, 97, 71, 96, 103, Opcodes.FRETURN, 37, Opcodes.DCMPL, Opcodes.TABLESWITCH, 53, 75, 34, 249, 121, 17, Opcodes.L2D, 110, 213, Opcodes.F2D, 136, 120, Opcodes.DCMPL, 233, Opcodes.JSR, 93, 255};
    private static final int[] poly36 = {245, 127, 242, 218, 130, ItemTouchHelper.Callback.DEFAULT_SWIPE_ANIMATION_DURATION, Opcodes.IF_ICMPGE, Opcodes.PUTFIELD, 102, 120, 84, Opcodes.PUTSTATIC, 220, 251, 80, Opcodes.INVOKEVIRTUAL, 229, 18, 2, 4, 68, 33, 101, Opcodes.L2F, 95, 119, 115, 44, Opcodes.DRETURN, Opcodes.INVOKESTATIC, 59, 25, 225, 98, 81, 112};
    private static final int[] poly42 = {77, Opcodes.INSTANCEOF, Opcodes.L2F, 31, 19, 38, 22, 153, MetaDo.META_CREATEPALETTE, 105, 122, 2, 245, 133, 242, 8, Opcodes.DRETURN, 95, 100, 9, Opcodes.GOTO, 105, 214, 111, 57, 121, 21, 1, 253, 57, 54, 101, 248, XMPError.BADRDF, 69, 50, Opcodes.FCMPG, Opcodes.RETURN, 226, 5, 9, 5};
    private static final int[] poly48 = {245, 132, Opcodes.IRETURN, 223, 96, 32, 117, 22, 238, 133, 238, 231, 205, 188, 237, 87, Opcodes.ATHROW, 106, 16, Opcodes.I2S, 118, 23, 37, 90, Opcodes.TABLESWITCH, 205, 131, 88, 120, 100, 66, Opcodes.L2D, Opcodes.INVOKEDYNAMIC, 240, 82, 44, Opcodes.ARETURN, 87, Opcodes.NEW, Opcodes.I2S, Opcodes.IF_ICMPNE, Opcodes.DRETURN, 69, 213, 92, 253, 225, 19};
    private static final int[] poly56 = {Opcodes.DRETURN, 9, 223, 238, 12, 17, 220, 208, 100, 29, Opcodes.DRETURN, Opcodes.TABLESWITCH, 230, 192, 215, 235, Opcodes.FCMPG, Opcodes.IF_ICMPEQ, 36, 223, 38, 200, 132, 54, 228, Opcodes.I2C, 218, 234, 117, XMPError.BADXMP, 29, 232, Opcodes.D2F, 238, 22, Opcodes.FCMPG, XMPError.BADXML, 117, 62, 207, Opcodes.IF_ICMPLE, 13, Opcodes.L2F, 245, 127, 67, MetaDo.META_CREATEPALETTE, 28, 155, 43, XMPError.BADXMP, 107, 233, 53, Opcodes.D2L, 46};
    private static final int[] poly62 = {242, 93, Opcodes.RET, 50, Opcodes.D2F, 210, 39, 118, XMPError.BADRDF, 188, XMPError.BADXML, Opcodes.ANEWARRAY, Opcodes.D2L, 108, 196, 37, Opcodes.INVOKEINTERFACE, 112, 134, 230, 245, 63, Opcodes.MULTIANEWARRAY, 190, ItemTouchHelper.Callback.DEFAULT_SWIPE_ANIMATION_DURATION, 106, Opcodes.INVOKEINTERFACE, 221, Opcodes.DRETURN, 64, 114, 71, Opcodes.IF_ICMPLT, 44, Opcodes.I2S, 6, 27, 218, 51, 63, 87, 10, 40, 130, 188, 17, Opcodes.IF_ICMPGT, 31, Opcodes.ARETURN, Opcodes.TABLESWITCH, 4, 107, 232, 7, 94, Opcodes.IF_ACMPNE, BERTags.FLAGS, 124, 86, 47, 11, XMPError.BADSTREAM};
    private static final int[] poly68 = {220, 228, Opcodes.LRETURN, 89, 251, Opcodes.FCMPL, Opcodes.IF_ICMPEQ, 56, 89, 33, Opcodes.I2S, 244, 154, 36, 73, 127, 213, 136, 248, Opcodes.GETFIELD, 234, Opcodes.MULTIANEWARRAY, 158, Opcodes.RETURN, 68, 122, 93, 213, 15, Opcodes.IF_ICMPNE, 227, 236, 66, Opcodes.F2I, 153, Opcodes.INVOKEINTERFACE, XMPError.BADRDF, Opcodes.GOTO, Opcodes.PUTSTATIC, 25, 220, 232, 96, 210, 231, 136, 223, 239, Opcodes.PUTFIELD, 241, 59, 52, Opcodes.IRETURN, 25, 49, 232, Primes.SMALL_FACTOR_LIMIT, Opcodes.ANEWARRAY, 64, 54, 108, 153, 132, 63, 96, 103, 82, Opcodes.INVOKEDYNAMIC};

    private static int[] getPoly(int i) {
        switch (i) {
            case 5:
                return poly5;
            case 7:
                return poly7;
            case 10:
                return poly10;
            case 11:
                return poly11;
            case 12:
                return poly12;
            case 14:
                return poly14;
            case 18:
                return poly18;
            case 20:
                return poly20;
            case 24:
                return poly24;
            case 28:
                return poly28;
            case 36:
                return poly36;
            case 42:
                return poly42;
            case 48:
                return poly48;
            case 56:
                return poly56;
            case 62:
                return poly62;
            case 68:
                return poly68;
            default:
                return null;
        }
    }

    private static void reedSolomonBlock(byte[] bArr, int i, byte[] bArr2, int i2, int[] iArr) {
        byte b;
        for (int i3 = 0; i3 <= i2; i3++) {
            bArr2[i3] = 0;
        }
        for (int i4 = 0; i4 < i; i4++) {
            int i5 = (bArr2[0] ^ bArr[i4]) & 255;
            int i6 = 0;
            while (i6 < i2) {
                int i7 = i6 + 1;
                byte b2 = bArr2[i7];
                if (i5 == 0) {
                    b = 0;
                } else {
                    int[] iArr2 = alog;
                    int[] iArr3 = log;
                    b = (byte) iArr2[(iArr3[i5] + iArr3[iArr[(i2 - i6) - 1]]) % 255];
                }
                bArr2[i6] = (byte) (b2 ^ b);
                i6 = i7;
            }
        }
    }

    public static void generateECC(byte[] bArr, int i, int i2, int i3) {
        int i4 = (i + 2) / i2;
        byte[] bArr2 = new byte[256];
        byte[] bArr3 = new byte[256];
        int[] poly = getPoly(i3);
        for (int i5 = 0; i5 < i4; i5++) {
            int i6 = 0;
            int i7 = i5;
            while (i7 < i) {
                bArr2[i6] = bArr[i7];
                i7 += i4;
                i6++;
            }
            reedSolomonBlock(bArr2, i6, bArr3, i3, poly);
            int i8 = 0;
            int i9 = i5;
            while (i9 < i3 * i4) {
                bArr[i + i9] = bArr3[i8];
                i9 += i4;
                i8++;
            }
        }
    }
}
