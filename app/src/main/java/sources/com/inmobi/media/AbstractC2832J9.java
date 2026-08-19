package com.inmobi.media;

import com.itextpdf.p017io.codec.TIFFConstants;
import kotlin.NoWhenBranchMatchedException;
import kotlin.jvm.internal.Intrinsics;
import org.objectweb.asm.Opcodes;

/* JADX INFO: renamed from: com.inmobi.media.J9 */
/* JADX INFO: loaded from: classes6.dex */
public abstract class AbstractC2832J9 {
    /* JADX INFO: renamed from: a */
    public static final EnumC2817I9 m1195a(byte b) {
        return b == 1 ? EnumC2817I9.f1114a : b == 2 ? EnumC2817I9.f1116c : b == 3 ? EnumC2817I9.f1115b : b == 4 ? EnumC2817I9.f1117d : EnumC2817I9.f1114a;
    }

    /* JADX INFO: renamed from: b */
    public static final boolean m1196b(EnumC2817I9 enumC2817I9) {
        Intrinsics.checkNotNullParameter(enumC2817I9, "<this>");
        return enumC2817I9 == EnumC2817I9.f1115b || enumC2817I9 == EnumC2817I9.f1117d;
    }

    /* JADX INFO: renamed from: a */
    public static final int m1194a(EnumC2817I9 enumC2817I9) {
        Intrinsics.checkNotNullParameter(enumC2817I9, "<this>");
        int iOrdinal = enumC2817I9.ordinal();
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
