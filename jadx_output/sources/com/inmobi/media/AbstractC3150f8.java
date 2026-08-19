package com.inmobi.media;

/* JADX INFO: renamed from: com.inmobi.media.f8 */
/* JADX INFO: loaded from: classes6.dex */
public abstract class AbstractC3150f8 {
    /* JADX INFO: renamed from: a */
    public static C3165g8 m2134a() {
        synchronized (C3165g8.f2104d) {
            C3165g8 c3165g8 = C3165g8.f2105e;
            if (c3165g8 == null) {
                return new C3165g8();
            }
            C3165g8.f2105e = c3165g8.f2109c;
            c3165g8.f2109c = null;
            C3165g8.f2106f--;
            return c3165g8;
        }
    }
}
