package com.inmobi.media;

import com.itextpdf.io.codec.TIFFConstants;
import kotlin.NoWhenBranchMatchedException;
import kotlin.jvm.internal.Intrinsics;
import org.objectweb.asm.Opcodes;

/* JADX INFO: loaded from: classes6.dex */
public abstract class J9 {
    public static final I9 a(byte b) {
        return b == 1 ? I9.f142a : b == 2 ? I9.c : b == 3 ? I9.b : b == 4 ? I9.d : I9.f142a;
    }

    public static final boolean b(I9 i9) {
        Intrinsics.checkNotNullParameter(i9, "<this>");
        return i9 == I9.b || i9 == I9.d;
    }

    public static final int a(I9 i9) {
        Intrinsics.checkNotNullParameter(i9, "<this>");
        int iOrdinal = i9.ordinal();
        if (iOrdinal == 0) {
            return 0;
        }
        if (iOrdinal == 1) {
            return 90;
        }
        if (iOrdinal == 2) {
            return Opcodes.GETFIELD;
        }
        if (iOrdinal == 3) {
            return TIFFConstants.TIFFTAG_IMAGEDESCRIPTION;
        }
        throw new NoWhenBranchMatchedException();
    }
}
