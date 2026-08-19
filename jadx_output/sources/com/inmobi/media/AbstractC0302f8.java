package com.inmobi.media;

/* JADX INFO: renamed from: com.inmobi.media.f8, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes6.dex */
public abstract class AbstractC0302f8 {
    public static C0319g8 a() {
        synchronized (C0319g8.d) {
            C0319g8 c0319g8 = C0319g8.e;
            if (c0319g8 == null) {
                return new C0319g8();
            }
            C0319g8.e = c0319g8.c;
            c0319g8.c = null;
            C0319g8.f--;
            return c0319g8;
        }
    }
}
