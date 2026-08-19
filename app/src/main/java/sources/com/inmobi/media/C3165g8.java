package com.inmobi.media;

import android.media.MediaPlayer;
import kotlin.Unit;

/* JADX INFO: renamed from: com.inmobi.media.g8 */
/* JADX INFO: loaded from: classes6.dex */
public final class C3165g8 extends MediaPlayer {

    /* JADX INFO: renamed from: d */
    public static final Object f2104d = new Object();

    /* JADX INFO: renamed from: e */
    public static C3165g8 f2105e;

    /* JADX INFO: renamed from: f */
    public static int f2106f;

    /* JADX INFO: renamed from: a */
    public int f2107a;

    /* JADX INFO: renamed from: b */
    public int f2108b;

    /* JADX INFO: renamed from: c */
    public C3165g8 f2109c;

    /* JADX INFO: renamed from: a */
    public final void m2163a() {
        if (3 == this.f2107a) {
            return;
        }
        synchronized (f2104d) {
            int i = f2106f;
            if (i < 5) {
                this.f2109c = f2105e;
                f2105e = this;
                f2106f = i + 1;
            }
            Unit unit = Unit.INSTANCE;
        }
    }
}
