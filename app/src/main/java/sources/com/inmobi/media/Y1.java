package com.inmobi.media;

import android.util.Base64;
import java.util.BitSet;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
public final class Y1 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public BitSet f285a;

    public final void a(String b64String) {
        byte[] value;
        BitSet bitSetValueOf;
        Intrinsics.checkNotNullParameter(b64String, "b64String");
        try {
            value = Base64.decode(b64String, 0);
        } catch (Exception e) {
            C0551w5 c0551w5 = C0551w5.f513a;
            C0551w5.d.a(AbstractC0251c5.a(e, "event"));
            value = null;
        }
        if (value != null) {
            Intrinsics.checkNotNullParameter(value, "value");
            if (E3.f104a.F()) {
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
            this.f285a = bitSetValueOf;
        }
    }
}
