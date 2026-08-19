package com.inmobi.media;

import android.app.Activity;
import android.app.Application;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.media.MediaPlayer;
import android.os.Build;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.VideoView;
import com.google.common.base.Ascii;
import com.itextpdf.barcodes.Barcode128;
import com.itextpdf.styledxmlparser.css.CommonCssConstants;
import java.io.UnsupportedEncodingException;
import java.lang.ref.WeakReference;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.Charsets;

/* JADX INFO: renamed from: com.inmobi.media.V6 */
/* JADX INFO: loaded from: classes6.dex */
public final class C3003V6 extends VideoView implements MediaPlayer.OnCompletionListener, MediaPlayer.OnPreparedListener, MediaPlayer.OnErrorListener, Application.ActivityLifecycleCallbacks {

    /* JADX INFO: renamed from: a */
    public final InterfaceC3147f5 f1583a;

    /* JADX INFO: renamed from: b */
    public C2975T6 f1584b;

    /* JADX INFO: renamed from: c */
    public ViewGroup f1585c;

    /* JADX INFO: renamed from: d */
    public InterfaceC2989U6 f1586d;

    /* JADX INFO: renamed from: e */
    public boolean f1587e;

    /* JADX INFO: renamed from: f */
    public final WeakReference f1588f;

    /* JADX INFO: renamed from: g */
    public int f1589g;

    /* JADX INFO: renamed from: h */
    public String f1590h;

    /* JADX INFO: renamed from: i */
    public String f1591i;

    /* JADX INFO: renamed from: j */
    public int f1592j;

    /* JADX INFO: renamed from: k */
    public int f1593k;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C3003V6(Activity activity, InterfaceC3147f5 interfaceC3147f5) {
        super(activity);
        Intrinsics.checkNotNullParameter(activity, "activity");
        this.f1583a = interfaceC3147f5;
        setZOrderOnTop(true);
        setFocusable(true);
        setFocusableInTouchMode(true);
        if (Build.VERSION.SDK_INT < 28) {
            setDrawingCacheEnabled(true);
        }
        this.f1589g = 100;
        this.f1592j = -1;
        this.f1593k = 0;
        this.f1588f = new WeakReference(activity);
        C2849Kb.m1245a(activity, this);
    }

    /* JADX INFO: renamed from: a */
    public static final void m1874a(C3003V6 this$0, MediaPlayer mediaPlayer, int i, int i2) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        InterfaceC3147f5 interfaceC3147f5 = this$0.f1583a;
        if (interfaceC3147f5 != null) {
            ((C3162g5) interfaceC3147f5).m2147a("MediaRenderView", ">>> onVideoSizeChanged");
        }
        if (this$0.f1584b == null) {
            C2975T6 c2975t6 = new C2975T6(this$0.getContext());
            this$0.f1584b = c2975t6;
            c2975t6.setAnchorView(this$0);
            this$0.setMediaController(this$0.f1584b);
            this$0.requestLayout();
            this$0.requestFocus();
        }
    }

    /* JADX INFO: renamed from: b */
    public final void m1876b() {
        InterfaceC3147f5 interfaceC3147f5 = this.f1583a;
        if (interfaceC3147f5 != null) {
            ((C3162g5) interfaceC3147f5).m2147a("MediaRenderView", "Release the media render view");
        }
        stopPlayback();
        ViewGroup viewGroup = this.f1585c;
        if (viewGroup != null) {
            ViewParent parent = viewGroup.getParent();
            ViewGroup viewGroup2 = parent instanceof ViewGroup ? (ViewGroup) parent : null;
            if (viewGroup2 != null) {
                viewGroup2.removeView(this.f1585c);
            }
            ViewParent parent2 = getParent();
            ViewGroup viewGroup3 = parent2 instanceof ViewGroup ? (ViewGroup) parent2 : null;
            if (viewGroup3 != null) {
                viewGroup3.removeView(this);
            }
            setBackgroundColor(0);
            this.f1585c = null;
        }
        setMediaController(null);
        this.f1584b = null;
        InterfaceC2989U6 interfaceC2989U6 = this.f1586d;
        if (interfaceC2989U6 != null) {
            Intrinsics.checkNotNullParameter(this, "mp");
            InterfaceC3147f5 interfaceC3147f52 = ((C3134e7) interfaceC2989U6).f2046a.f2063b;
            if (interfaceC3147f52 != null) {
                ((C3162g5) interfaceC3147f52).m2147a("MraidMediaProcessor", ">>> onPlayerCompleted");
            }
            ViewGroup viewContainer = getViewContainer();
            if (viewContainer != null) {
                ViewParent parent3 = viewContainer.getParent();
                ViewGroup viewGroup4 = parent3 instanceof ViewGroup ? (ViewGroup) parent3 : null;
                if (viewGroup4 != null) {
                    viewGroup4.removeView(viewContainer);
                }
            }
            setViewContainer(null);
        }
    }

    public final int getCurrentAudioVolume() {
        return this.f1589g;
    }

    @Override // android.view.View
    public final String getId() {
        return this.f1590h;
    }

    public final InterfaceC2989U6 getListener() {
        return this.f1586d;
    }

    public final int getMCurrentPosition() {
        return this.f1593k;
    }

    public final String getPlaybackUrl() {
        return this.f1591i;
    }

    public final int getPreviousPosition() {
        return this.f1592j;
    }

    public final ViewGroup getViewContainer() {
        return this.f1585c;
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityCreated(Activity activity, Bundle bundle) {
        Intrinsics.checkNotNullParameter(activity, "activity");
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityDestroyed(Activity activity) {
        Intrinsics.checkNotNullParameter(activity, "activity");
        activity.getApplication().unregisterActivityLifecycleCallbacks(this);
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityPaused(Activity activity) {
        Intrinsics.checkNotNullParameter(activity, "activity");
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityResumed(Activity activity) {
        Intrinsics.checkNotNullParameter(activity, "activity");
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
        Intrinsics.checkNotNullParameter(activity, "activity");
        Intrinsics.checkNotNullParameter(bundle, "bundle");
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityStarted(Activity activity) {
        Intrinsics.checkNotNullParameter(activity, "activity");
        if (this.f1588f.get() == null || !Intrinsics.areEqual(this.f1588f.get(), activity)) {
            return;
        }
        this.f1587e = false;
        start();
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityStopped(Activity activity) {
        Intrinsics.checkNotNullParameter(activity, "activity");
        Activity activity2 = (Activity) this.f1588f.get();
        if (activity2 == null || !Intrinsics.areEqual(activity2, activity)) {
            return;
        }
        this.f1587e = true;
        if (getCurrentPosition() != 0) {
            this.f1593k = getCurrentPosition();
        }
        pause();
    }

    @Override // android.media.MediaPlayer.OnCompletionListener
    public final void onCompletion(MediaPlayer mp) {
        Intrinsics.checkNotNullParameter(mp, "mp");
        InterfaceC3147f5 interfaceC3147f5 = this.f1583a;
        if (interfaceC3147f5 != null) {
            ((C3162g5) interfaceC3147f5).m2147a("MediaRenderView", ">>> onCompletion");
        }
    }

    @Override // android.media.MediaPlayer.OnErrorListener
    public final boolean onError(MediaPlayer mp, int i, int i2) {
        Intrinsics.checkNotNullParameter(mp, "mp");
        InterfaceC3147f5 interfaceC3147f5 = this.f1583a;
        if (interfaceC3147f5 != null) {
            ((C3162g5) interfaceC3147f5).m2151b("MediaRenderView", ">>> onError (" + i + ", " + i2 + ')');
        }
        m1876b();
        return false;
    }

    @Override // android.widget.VideoView, android.view.View
    public final void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        getHolder().setSizeFromLayout();
    }

    @Override // android.media.MediaPlayer.OnPreparedListener
    public final void onPrepared(MediaPlayer mp) {
        Intrinsics.checkNotNullParameter(mp, "mp");
        InterfaceC3147f5 interfaceC3147f5 = this.f1583a;
        if (interfaceC3147f5 != null) {
            ((C3162g5) interfaceC3147f5).m2147a("MediaRenderView", ">>> onPrepared");
        }
        mp.setOnVideoSizeChangedListener(new MediaPlayer.OnVideoSizeChangedListener() { // from class: com.inmobi.media.V6$$ExternalSyntheticLambda0
            @Override // android.media.MediaPlayer.OnVideoSizeChangedListener
            public final void onVideoSizeChanged(MediaPlayer mediaPlayer, int i, int i2) {
                C3003V6.m1874a(this.f$0, mediaPlayer, i, i2);
            }
        });
        int i = this.f1593k;
        if (i < getDuration()) {
            this.f1593k = i;
            seekTo(i);
        }
        InterfaceC2989U6 interfaceC2989U6 = this.f1586d;
        if (interfaceC2989U6 != null) {
            Intrinsics.checkNotNullParameter(this, "mp");
            InterfaceC3147f5 interfaceC3147f52 = ((C3134e7) interfaceC2989U6).f2046a.f2063b;
            if (interfaceC3147f52 != null) {
                ((C3162g5) interfaceC3147f52).m2147a("MraidMediaProcessor", ">>> onPlayerPrepared");
            }
        }
        start();
    }

    @Override // android.view.View
    public final void onVisibilityChanged(View view, int i) {
        Context contextM1254d;
        Intrinsics.checkNotNullParameter(view, "view");
        super.onVisibilityChanged(view, i);
        InterfaceC3147f5 interfaceC3147f5 = this.f1583a;
        if (interfaceC3147f5 != null) {
            ((C3162g5) interfaceC3147f5).m2147a("MediaRenderView", ">>> onVisibilityChanged (" + i + ')');
        }
        if (i != 0 || (contextM1254d = C2849Kb.m1254d()) == null) {
            return;
        }
        setBackground(new BitmapDrawable(contextM1254d.getResources(), (Bitmap) null));
    }

    @Override // android.view.SurfaceView, android.view.View
    public final void onWindowVisibilityChanged(int i) {
        super.onWindowVisibilityChanged(i);
        InterfaceC3147f5 interfaceC3147f5 = this.f1583a;
        if (interfaceC3147f5 != null) {
            ((C3162g5) interfaceC3147f5).m2147a("MediaRenderView", ">>> onWindowVisibilityChanged (" + i + ')');
        }
    }

    @Override // android.widget.VideoView, android.widget.MediaController.MediaPlayerControl
    public final void pause() {
        InterfaceC3147f5 interfaceC3147f5 = this.f1583a;
        if (interfaceC3147f5 != null) {
            ((C3162g5) interfaceC3147f5).m2147a("MediaRenderView", "Pause media playback");
        }
        super.pause();
    }

    public final void setAudioMuted(boolean z) {
    }

    public final void setCurrentAudioVolume(int i) {
        this.f1589g = i;
    }

    public final void setId(String str) {
        this.f1590h = str;
    }

    public final void setListener(InterfaceC2989U6 interfaceC2989U6) {
        this.f1586d = interfaceC2989U6;
    }

    public final void setMCurrentPosition(int i) {
        this.f1593k = i;
    }

    public final void setPlaybackUrl(String str) {
        this.f1591i = str;
    }

    public final void setPlayerPrepared(boolean z) {
    }

    public final void setPreviousPosition(int i) {
        this.f1592j = i;
    }

    public final void setViewContainer(ViewGroup viewGroup) {
        this.f1585c = viewGroup;
    }

    @Override // android.widget.VideoView, android.widget.MediaController.MediaPlayerControl
    public final void start() {
        if (this.f1587e) {
            return;
        }
        InterfaceC3147f5 interfaceC3147f5 = this.f1583a;
        if (interfaceC3147f5 != null) {
            ((C3162g5) interfaceC3147f5).m2147a("MediaRenderView", "Start media playback");
        }
        super.start();
    }

    public final void setPlaybackData(String url) {
        String str;
        Intrinsics.checkNotNullParameter(url, "url");
        byte[] bytes = url.getBytes(Charsets.UTF_8);
        Intrinsics.checkNotNullExpressionValue(bytes, "this as java.lang.String).getBytes(charset)");
        StringBuilder sb = new StringBuilder();
        for (byte b : bytes) {
            if (((byte) (b & (-128))) > 0) {
                StringBuilder sbAppend = sb.append(CommonCssConstants.PERCENTAGE);
                char[] cArr = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'a', 'b', Barcode128.CODE_AB_TO_C, Barcode128.CODE_AC_TO_B, Barcode128.CODE_BC_TO_A, Barcode128.FNC1_INDEX};
                sbAppend.append(new String(new char[]{cArr[(b >> 4) & 15], cArr[(byte) (b & Ascii.f393SI)]}));
            } else {
                sb.append((char) b);
            }
        }
        try {
            String string = sb.toString();
            Intrinsics.checkNotNullExpressionValue(string, "toString(...)");
            byte[] bytes2 = string.getBytes(Charsets.UTF_8);
            Intrinsics.checkNotNullExpressionValue(bytes2, "this as java.lang.String).getBytes(charset)");
            str = new String(bytes2, Charsets.ISO_8859_1);
        } catch (UnsupportedEncodingException unused) {
            str = "";
        }
        this.f1591i = str;
        this.f1590h = "anonymous";
    }

    /* JADX INFO: renamed from: a */
    public final void m1875a() {
        setVideoPath(this.f1591i);
        setOnCompletionListener(this);
        setOnPreparedListener(this);
        setOnErrorListener(this);
        if (this.f1584b == null) {
            C2975T6 c2975t6 = new C2975T6(getContext());
            this.f1584b = c2975t6;
            c2975t6.setAnchorView(this);
            setMediaController(this.f1584b);
        }
    }
}
