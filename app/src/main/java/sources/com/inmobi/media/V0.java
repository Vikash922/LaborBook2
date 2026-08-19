package com.inmobi.media;

import android.graphics.Canvas;
import android.graphics.ImageDecoder;
import android.graphics.drawable.AnimatedImageDrawable;
import android.graphics.drawable.Drawable;
import java.io.File;
import java.io.IOException;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
public final class V0 implements InterfaceC0536v4 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final AnimatedImageDrawable f258a;

    public V0(String filePath) throws IOException {
        Intrinsics.checkNotNullParameter(filePath, "filePath");
        Drawable drawableDecodeDrawable = ImageDecoder.decodeDrawable(ImageDecoder.createSource(new File(filePath)));
        Intrinsics.checkNotNull(drawableDecodeDrawable, "null cannot be cast to non-null type android.graphics.drawable.AnimatedImageDrawable");
        this.f258a = (AnimatedImageDrawable) drawableDecodeDrawable;
    }

    @Override // com.inmobi.media.InterfaceC0536v4
    public final void a(C0564x4 c0564x4) {
    }

    @Override // com.inmobi.media.InterfaceC0536v4
    public final void a(boolean z) {
    }

    @Override // com.inmobi.media.InterfaceC0536v4
    public final void b() {
    }

    @Override // com.inmobi.media.InterfaceC0536v4
    public final boolean c() {
        return this.f258a.isRunning();
    }

    @Override // com.inmobi.media.InterfaceC0536v4
    public final int d() {
        return this.f258a.getIntrinsicWidth();
    }

    public final void e() {
        this.f258a.start();
    }

    @Override // com.inmobi.media.InterfaceC0536v4
    public final void start() {
        this.f258a.registerAnimationCallback(new U0(this));
        this.f258a.start();
    }

    @Override // com.inmobi.media.InterfaceC0536v4
    public final int a() {
        return this.f258a.getIntrinsicHeight();
    }

    @Override // com.inmobi.media.InterfaceC0536v4
    public final void a(Canvas canvas, float f, float f2) {
        Intrinsics.checkNotNull(canvas);
        canvas.translate(f, f2);
        this.f258a.draw(canvas);
    }
}
