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

/* JADX INFO: renamed from: com.inmobi.media.w4, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes6.dex */
public final class C0550w4 implements InterfaceC0536v4 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Movie f512a;
    public int b;
    public long c;
    public volatile boolean d;
    public C0564x4 e;

    public C0550w4(String filePath) {
        Intrinsics.checkNotNullParameter(filePath, "filePath");
        File file = new File(filePath);
        byte[] bArr = new byte[(int) file.length()];
        FileInputStream fileInputStream = new FileInputStream(file);
        try {
            int i = fileInputStream.read(bArr);
            C0457p9.a((Closeable) fileInputStream);
            Movie movieDecodeByteArray = Movie.decodeByteArray(bArr, 0, i);
            this.f512a = movieDecodeByteArray;
            if (movieDecodeByteArray == null) {
                throw new IllegalStateException("Cannot decode gif byte array");
            }
        } catch (Throwable th) {
            C0457p9.a((Closeable) fileInputStream);
            throw th;
        }
    }

    @Override // com.inmobi.media.InterfaceC0536v4
    public final void a(boolean z) {
        this.d = z;
        if (!this.d) {
            this.c = SystemClock.uptimeMillis() - ((long) this.b);
        }
        C0564x4 c0564x4 = this.e;
        if (c0564x4 != null) {
            Intrinsics.checkNotNull(c0564x4);
            c0564x4.invalidate();
        }
    }

    @Override // com.inmobi.media.InterfaceC0536v4
    public final void b() {
        long jUptimeMillis = SystemClock.uptimeMillis();
        if (this.c == 0) {
            this.c = jUptimeMillis;
        }
        Movie movie = this.f512a;
        int iDuration = movie != null ? movie.duration() : 0;
        if (iDuration == 0) {
            iDuration = 1000;
        }
        int i = (int) ((jUptimeMillis - this.c) % ((long) iDuration));
        this.b = i;
        Movie movie2 = this.f512a;
        if (movie2 != null) {
            movie2.setTime(i);
        }
    }

    @Override // com.inmobi.media.InterfaceC0536v4
    public final boolean c() {
        return !this.d;
    }

    @Override // com.inmobi.media.InterfaceC0536v4
    public final int d() {
        Movie movie = this.f512a;
        if (movie != null) {
            return movie.width();
        }
        return 0;
    }

    public final void e() {
        new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: com.inmobi.media.w4$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                C0550w4.a(this.f$0);
            }
        });
    }

    @Override // com.inmobi.media.InterfaceC0536v4
    public final void start() {
    }

    @Override // com.inmobi.media.InterfaceC0536v4
    public final int a() {
        Movie movie = this.f512a;
        if (movie != null) {
            return movie.height();
        }
        return 0;
    }

    @Override // com.inmobi.media.InterfaceC0536v4
    public final void a(Canvas canvas, float f, float f2) {
        Movie movie = this.f512a;
        if (movie != null) {
            movie.draw(canvas, f, f2);
        }
        Movie movie2 = this.f512a;
        if (this.b + 20 >= (movie2 != null ? movie2.duration() : 0)) {
            e();
        }
    }

    public static final void a(C0550w4 this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.b = 0;
        this$0.a(false);
    }

    @Override // com.inmobi.media.InterfaceC0536v4
    public final void a(C0564x4 c0564x4) {
        this.e = c0564x4;
    }
}
