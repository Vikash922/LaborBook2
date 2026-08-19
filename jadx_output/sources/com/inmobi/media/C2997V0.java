package com.inmobi.media;

import android.graphics.Canvas;
import android.graphics.ImageDecoder;
import android.graphics.drawable.AnimatedImageDrawable;
import android.graphics.drawable.Drawable;
import java.io.File;
import java.io.IOException;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.inmobi.media.V0 */
/* JADX INFO: loaded from: classes6.dex */
public final class C2997V0 implements InterfaceC3386v4 {

    /* JADX INFO: renamed from: a */
    public final AnimatedImageDrawable f1576a;

    public C2997V0(String filePath) throws IOException {
        Intrinsics.checkNotNullParameter(filePath, "filePath");
        Drawable drawableDecodeDrawable = ImageDecoder.decodeDrawable(ImageDecoder.createSource(new File(filePath)));
        Intrinsics.checkNotNull(drawableDecodeDrawable, "null cannot be cast to non-null type android.graphics.drawable.AnimatedImageDrawable");
        this.f1576a = (AnimatedImageDrawable) drawableDecodeDrawable;
    }

    @Override // com.inmobi.media.InterfaceC3386v4
    /* JADX INFO: renamed from: a */
    public final void mo1866a(C3416x4 c3416x4) {
    }

    @Override // com.inmobi.media.InterfaceC3386v4
    /* JADX INFO: renamed from: a */
    public final void mo1867a(boolean z) {
    }

    @Override // com.inmobi.media.InterfaceC3386v4
    /* JADX INFO: renamed from: b */
    public final void mo1868b() {
    }

    @Override // com.inmobi.media.InterfaceC3386v4
    /* JADX INFO: renamed from: c */
    public final boolean mo1869c() {
        return this.f1576a.isRunning();
    }

    @Override // com.inmobi.media.InterfaceC3386v4
    /* JADX INFO: renamed from: d */
    public final int mo1870d() {
        return this.f1576a.getIntrinsicWidth();
    }

    /* JADX INFO: renamed from: e */
    public final void m1871e() {
        this.f1576a.start();
    }

    @Override // com.inmobi.media.InterfaceC3386v4
    public final void start() {
        this.f1576a.registerAnimationCallback(new C2983U0(this));
        this.f1576a.start();
    }

    @Override // com.inmobi.media.InterfaceC3386v4
    /* JADX INFO: renamed from: a */
    public final int mo1864a() {
        return this.f1576a.getIntrinsicHeight();
    }

    @Override // com.inmobi.media.InterfaceC3386v4
    /* JADX INFO: renamed from: a */
    public final void mo1865a(Canvas canvas, float f, float f2) {
        Intrinsics.checkNotNull(canvas);
        canvas.translate(f, f2);
        this.f1576a.draw(canvas);
    }
}
