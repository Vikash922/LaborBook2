package com.inmobi.media;

import android.media.MediaPlayer;
import kotlin.Unit;

/* JADX INFO: renamed from: com.inmobi.media.g8, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes6.dex */
public final class C0319g8 extends MediaPlayer {
    public static final Object d = new Object();
    public static C0319g8 e;
    public static int f;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int f360a;
    public int b;
    public C0319g8 c;

    public final void a() {
        if (3 == this.f360a) {
            return;
        }
        synchronized (d) {
            int i = f;
            if (i < 5) {
                this.c = e;
                e = this;
                f = i + 1;
            }
            Unit unit = Unit.INSTANCE;
        }
    }
}
