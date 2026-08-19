package com.inmobi.media;

import android.graphics.SurfaceTexture;
import android.view.Surface;
import android.view.TextureView;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.inmobi.media.K8 */
/* JADX INFO: loaded from: classes6.dex */
public final class TextureViewSurfaceTextureListenerC2846K8 implements TextureView.SurfaceTextureListener {

    /* JADX INFO: renamed from: a */
    public final /* synthetic */ C2861L8 f1164a;

    public TextureViewSurfaceTextureListenerC2846K8(C2861L8 c2861l8) {
        this.f1164a = c2861l8;
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public final void onSurfaceTextureAvailable(SurfaceTexture texture, int i, int i2) {
        Intrinsics.checkNotNullParameter(texture, "texture");
        this.f1164a.f1211b = new Surface(texture);
        this.f1164a.m1305e();
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public final boolean onSurfaceTextureDestroyed(SurfaceTexture texture) {
        Intrinsics.checkNotNullParameter(texture, "texture");
        Surface surface = this.f1164a.f1211b;
        if (surface != null) {
            surface.release();
        }
        C2861L8 c2861l8 = this.f1164a;
        c2861l8.f1211b = null;
        C2756E8 c2756e8 = c2861l8.f1223n;
        if (c2756e8 != null) {
            c2756e8.m1047c();
        }
        this.f1164a.m1307g();
        return true;
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public final void onSurfaceTextureSizeChanged(SurfaceTexture surface, int i, int i2) {
        C3165g8 c3165g8;
        Intrinsics.checkNotNullParameter(surface, "surface");
        C3165g8 mediaPlayer = this.f1164a.getMediaPlayer();
        boolean z = mediaPlayer != null && mediaPlayer.f2108b == 3;
        boolean z2 = i > 0 && i2 > 0;
        if (z && z2) {
            Object tag = this.f1164a.getTag();
            if (tag instanceof C2726C8) {
                Object obj = ((C2726C8) tag).f938t.get("seekPosition");
                Intrinsics.checkNotNull(obj, "null cannot be cast to non-null type kotlin.Int");
                int iIntValue = ((Integer) obj).intValue();
                if (iIntValue != 0) {
                    C2861L8 c2861l8 = this.f1164a;
                    if (c2861l8.m1301a() && (c3165g8 = c2861l8.f1212c) != null) {
                        c3165g8.seekTo(iIntValue);
                    }
                }
            }
            this.f1164a.start();
        }
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public final void onSurfaceTextureUpdated(SurfaceTexture texture) {
        Intrinsics.checkNotNullParameter(texture, "texture");
    }
}
