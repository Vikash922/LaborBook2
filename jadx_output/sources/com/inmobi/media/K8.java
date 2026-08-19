package com.inmobi.media;

import android.graphics.SurfaceTexture;
import android.view.Surface;
import android.view.TextureView;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
public final class K8 implements TextureView.SurfaceTextureListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ L8 f159a;

    public K8(L8 l8) {
        this.f159a = l8;
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public final void onSurfaceTextureAvailable(SurfaceTexture texture, int i, int i2) {
        Intrinsics.checkNotNullParameter(texture, "texture");
        this.f159a.b = new Surface(texture);
        this.f159a.e();
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public final boolean onSurfaceTextureDestroyed(SurfaceTexture texture) {
        Intrinsics.checkNotNullParameter(texture, "texture");
        Surface surface = this.f159a.b;
        if (surface != null) {
            surface.release();
        }
        L8 l8 = this.f159a;
        l8.b = null;
        E8 e8 = l8.n;
        if (e8 != null) {
            e8.c();
        }
        this.f159a.g();
        return true;
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public final void onSurfaceTextureSizeChanged(SurfaceTexture surface, int i, int i2) {
        C0319g8 c0319g8;
        Intrinsics.checkNotNullParameter(surface, "surface");
        C0319g8 mediaPlayer = this.f159a.getMediaPlayer();
        boolean z = mediaPlayer != null && mediaPlayer.b == 3;
        boolean z2 = i > 0 && i2 > 0;
        if (z && z2) {
            Object tag = this.f159a.getTag();
            if (tag instanceof C8) {
                Object obj = ((C8) tag).t.get("seekPosition");
                Intrinsics.checkNotNull(obj, "null cannot be cast to non-null type kotlin.Int");
                int iIntValue = ((Integer) obj).intValue();
                if (iIntValue != 0) {
                    L8 l8 = this.f159a;
                    if (l8.a() && (c0319g8 = l8.c) != null) {
                        c0319g8.seekTo(iIntValue);
                    }
                }
            }
            this.f159a.start();
        }
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public final void onSurfaceTextureUpdated(SurfaceTexture texture) {
        Intrinsics.checkNotNullParameter(texture, "texture");
    }
}
