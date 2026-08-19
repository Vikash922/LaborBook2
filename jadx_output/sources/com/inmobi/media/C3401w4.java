package com.inmobi.media;

import android.graphics.Canvas;
import android.graphics.Movie;
import android.os.Handler;
import android.os.Looper;
import android.os.SystemClock;
import java.io.Closeable;
import java.io.File;
import java.io.FileInputStream;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.inmobi.media.w4 */
/* JADX INFO: loaded from: classes6.dex */
public final class C3401w4 implements InterfaceC3386v4 {

    /* JADX INFO: renamed from: a */
    public final Movie f2704a;

    /* JADX INFO: renamed from: b */
    public int f2705b;

    /* JADX INFO: renamed from: c */
    public long f2706c;

    /* JADX INFO: renamed from: d */
    public volatile boolean f2707d;

    /* JADX INFO: renamed from: e */
    public C3416x4 f2708e;

    public C3401w4(String filePath) {
        Intrinsics.checkNotNullParameter(filePath, "filePath");
        File file = new File(filePath);
        byte[] bArr = new byte[(int) file.length()];
        FileInputStream fileInputStream = new FileInputStream(file);
        try {
            int i = fileInputStream.read(bArr);
            C3301p9.m2346a((Closeable) fileInputStream);
            Movie movieDecodeByteArray = Movie.decodeByteArray(bArr, 0, i);
            this.f2704a = movieDecodeByteArray;
            if (movieDecodeByteArray == null) {
                throw new IllegalStateException("Cannot decode gif byte array");
            }
        } catch (Throwable th) {
            C3301p9.m2346a((Closeable) fileInputStream);
            throw th;
        }
    }

    @Override // com.inmobi.media.InterfaceC3386v4
    /* JADX INFO: renamed from: a */
    public final void mo1867a(boolean z) {
        this.f2707d = z;
        if (!this.f2707d) {
            this.f2706c = SystemClock.uptimeMillis() - ((long) this.f2705b);
        }
        C3416x4 c3416x4 = this.f2708e;
        if (c3416x4 != null) {
            Intrinsics.checkNotNull(c3416x4);
            c3416x4.invalidate();
        }
    }

    @Override // com.inmobi.media.InterfaceC3386v4
    /* JADX INFO: renamed from: b */
    public final void mo1868b() {
        long jUptimeMillis = SystemClock.uptimeMillis();
        if (this.f2706c == 0) {
            this.f2706c = jUptimeMillis;
        }
        Movie movie = this.f2704a;
        int iDuration = movie != null ? movie.duration() : 0;
        if (iDuration == 0) {
            iDuration = 1000;
        }
        int i = (int) ((jUptimeMillis - this.f2706c) % ((long) iDuration));
        this.f2705b = i;
        Movie movie2 = this.f2704a;
        if (movie2 != null) {
            movie2.setTime(i);
        }
    }

    @Override // com.inmobi.media.InterfaceC3386v4
    /* JADX INFO: renamed from: c */
    public final boolean mo1869c() {
        return !this.f2707d;
    }

    @Override // com.inmobi.media.InterfaceC3386v4
    /* JADX INFO: renamed from: d */
    public final int mo1870d() {
        Movie movie = this.f2704a;
        if (movie != null) {
            return movie.width();
        }
        return 0;
    }

    /* JADX INFO: renamed from: e */
    public final void m2550e() {
        new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: com.inmobi.media.w4$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                C3401w4.m2549a(this.f$0);
            }
        });
    }

    @Override // com.inmobi.media.InterfaceC3386v4
    public final void start() {
    }

    @Override // com.inmobi.media.InterfaceC3386v4
    /* JADX INFO: renamed from: a */
    public final int mo1864a() {
        Movie movie = this.f2704a;
        if (movie != null) {
            return movie.height();
        }
        return 0;
    }

    @Override // com.inmobi.media.InterfaceC3386v4
    /* JADX INFO: renamed from: a */
    public final void mo1865a(Canvas canvas, float f, float f2) {
        Movie movie = this.f2704a;
        if (movie != null) {
            movie.draw(canvas, f, f2);
        }
        Movie movie2 = this.f2704a;
        if (this.f2705b + 20 >= (movie2 != null ? movie2.duration() : 0)) {
            m2550e();
        }
    }

    /* JADX INFO: renamed from: a */
    public static final void m2549a(C3401w4 this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.f2705b = 0;
        this$0.mo1867a(false);
    }

    @Override // com.inmobi.media.InterfaceC3386v4
    /* JADX INFO: renamed from: a */
    public final void mo1866a(C3416x4 c3416x4) {
        this.f2708e = c3416x4;
    }
}
