package com.inmobi.media;

import android.util.Base64;
import java.util.BitSet;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.inmobi.media.Y1 */
/* JADX INFO: loaded from: classes6.dex */
public final class C3040Y1 {

    /* JADX INFO: renamed from: a */
    public BitSet f1667a;

    /* JADX INFO: renamed from: a */
    public final void m1942a(String b64String) {
        byte[] value;
        BitSet bitSetValueOf;
        Intrinsics.checkNotNullParameter(b64String, "b64String");
        try {
            value = Base64.decode(b64String, 0);
        } catch (Exception e) {
            C3402w5 c3402w5 = C3402w5.f2709a;
            C3402w5.f2712d.m2158a(AbstractC3102c5.m2045a(e, "event"));
            value = null;
        }
        if (value != null) {
            Intrinsics.checkNotNullParameter(value, "value");
            if (C2751E3.f962a.m1012F()) {
                bitSetValueOf = BitSet.valueOf(value);
            } else {
                Intrinsics.checkNotNullParameter(value, "<this>");
                BitSet bitSet = new BitSet(value.length * 8);
                int i = 0;
                for (byte b : value) {
                    int i2 = 0;
                    while (i2 < 8) {
                        boolean z = true;
                        int i3 = i + 1;
                        if (((b >> ((byte) i2)) & 1) != 1) {
                            z = false;
                        }
                        bitSet.set(i, z);
                        i2++;
                        i = i3;
                    }
                }
                bitSetValueOf = bitSet;
            }
            this.f1667a = bitSetValueOf;
        }
    }
}
