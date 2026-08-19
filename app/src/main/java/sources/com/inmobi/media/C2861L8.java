package com.inmobi.media;

import android.content.Context;
import android.media.MediaPlayer;
import android.net.Uri;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.view.Surface;
import android.view.TextureView;
import android.view.ViewParent;
import android.widget.ImageView;
import android.widget.MediaController;
import android.widget.ProgressBar;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
import java.util.Random;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.inmobi.media.L8 */
/* JADX INFO: loaded from: classes6.dex */
public final class C2861L8 extends TextureView implements MediaController.MediaPlayerControl {

    /* JADX INFO: renamed from: C */
    public static final String f1207C = "L8";

    /* JADX INFO: renamed from: A */
    public final MediaPlayer.OnErrorListener f1208A;

    /* JADX INFO: renamed from: B */
    public final TextureViewSurfaceTextureListenerC2846K8 f1209B;

    /* JADX INFO: renamed from: a */
    public Uri f1210a;

    /* JADX INFO: renamed from: b */
    public Surface f1211b;

    /* JADX INFO: renamed from: c */
    public C3165g8 f1212c;

    /* JADX INFO: renamed from: d */
    public int f1213d;

    /* JADX INFO: renamed from: e */
    public int f1214e;

    /* JADX INFO: renamed from: f */
    public int f1215f;

    /* JADX INFO: renamed from: g */
    public int f1216g;

    /* JADX INFO: renamed from: h */
    public int f1217h;

    /* JADX INFO: renamed from: i */
    public InterfaceC2801H8 f1218i;

    /* JADX INFO: renamed from: j */
    public InterfaceC2786G8 f1219j;

    /* JADX INFO: renamed from: k */
    public InterfaceC2771F8 f1220k;

    /* JADX INFO: renamed from: l */
    public boolean f1221l;

    /* JADX INFO: renamed from: m */
    public HandlerC2816I8 f1222m;

    /* JADX INFO: renamed from: n */
    public C2756E8 f1223n;

    /* JADX INFO: renamed from: o */
    public int f1224o;

    /* JADX INFO: renamed from: p */
    public boolean f1225p;

    /* JADX INFO: renamed from: q */
    public boolean f1226q;

    /* JADX INFO: renamed from: r */
    public boolean f1227r;

    /* JADX INFO: renamed from: s */
    public Handler f1228s;

    /* JADX INFO: renamed from: t */
    public boolean f1229t;

    /* JADX INFO: renamed from: u */
    public final C2770F7 f1230u;

    /* JADX INFO: renamed from: v */
    public MediaPlayer.OnVideoSizeChangedListener f1231v;

    /* JADX INFO: renamed from: w */
    public final C2831J8 f1232w;

    /* JADX INFO: renamed from: x */
    public final MediaPlayer.OnCompletionListener f1233x;

    /* JADX INFO: renamed from: y */
    public final MediaPlayer.OnInfoListener f1234y;

    /* JADX INFO: renamed from: z */
    public final MediaPlayer.OnBufferingUpdateListener f1235z;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2861L8(Context context) {
        super(context);
        Intrinsics.checkNotNullParameter(context, "context");
        this.f1217h = Integer.MIN_VALUE;
        Context context2 = getContext();
        Intrinsics.checkNotNullExpressionValue(context2, "getContext(...)");
        this.f1230u = new C2770F7(context2, this);
        requestLayout();
        invalidate();
        this.f1231v = new MediaPlayer.OnVideoSizeChangedListener() { // from class: com.inmobi.media.L8$$ExternalSyntheticLambda0
            @Override // android.media.MediaPlayer.OnVideoSizeChangedListener
            public final void onVideoSizeChanged(MediaPlayer mediaPlayer, int i, int i2) {
                C2861L8.m1298c(this.f$0, mediaPlayer, i, i2);
            }
        };
        this.f1232w = new C2831J8(this);
        this.f1233x = new MediaPlayer.OnCompletionListener() { // from class: com.inmobi.media.L8$$ExternalSyntheticLambda1
            @Override // android.media.MediaPlayer.OnCompletionListener
            public final void onCompletion(MediaPlayer mediaPlayer) {
                C2861L8.m1293a(this.f$0, mediaPlayer);
            }
        };
        this.f1234y = new MediaPlayer.OnInfoListener() { // from class: com.inmobi.media.L8$$ExternalSyntheticLambda2
            @Override // android.media.MediaPlayer.OnInfoListener
            public final boolean onInfo(MediaPlayer mediaPlayer, int i, int i2) {
                return C2861L8.m1297b(this.f$0, mediaPlayer, i, i2);
            }
        };
        this.f1235z = new MediaPlayer.OnBufferingUpdateListener() { // from class: com.inmobi.media.L8$$ExternalSyntheticLambda3
            @Override // android.media.MediaPlayer.OnBufferingUpdateListener
            public final void onBufferingUpdate(MediaPlayer mediaPlayer, int i) {
                C2861L8.m1294a(this.f$0, mediaPlayer, i);
            }
        };
        this.f1208A = new MediaPlayer.OnErrorListener() { // from class: com.inmobi.media.L8$$ExternalSyntheticLambda4
            @Override // android.media.MediaPlayer.OnErrorListener
            public final boolean onError(MediaPlayer mediaPlayer, int i, int i2) {
                return C2861L8.m1295a(this.f$0, mediaPlayer, i, i2);
            }
        };
        this.f1209B = new TextureViewSurfaceTextureListenerC2846K8(this);
    }

    /* JADX INFO: renamed from: a */
    public static final void m1293a(C2861L8 this$0, MediaPlayer mediaPlayer) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        try {
            this$0.m1304d();
        } catch (Exception e) {
            String TAG = f1207C;
            Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
            C3402w5 c3402w5 = C3402w5.f2709a;
            C3402w5.f2712d.m2158a(AbstractC3102c5.m2045a(e, "event"));
        }
    }

    /* JADX INFO: renamed from: c */
    public static final void m1298c(C2861L8 this$0, MediaPlayer mediaPlayer, int i, int i2) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.f1214e = mediaPlayer.getVideoWidth();
        int videoHeight = mediaPlayer.getVideoHeight();
        this$0.f1215f = videoHeight;
        if (this$0.f1214e == 0 || videoHeight == 0) {
            return;
        }
        this$0.requestLayout();
    }

    private final void setVideoPath(String str) {
        setVideoURI(Uri.parse(str));
    }

    private final void setVideoURI(Uri uri) {
        this.f1210a = uri;
        m1305e();
        requestLayout();
        invalidate();
    }

    @Override // android.widget.MediaController.MediaPlayerControl
    public final boolean canPause() {
        return this.f1225p;
    }

    @Override // android.widget.MediaController.MediaPlayerControl
    public final boolean canSeekBackward() {
        return this.f1226q;
    }

    @Override // android.widget.MediaController.MediaPlayerControl
    public final boolean canSeekForward() {
        return this.f1227r;
    }

    /* JADX INFO: renamed from: d */
    public final void m1304d() {
        C3165g8 c3165g8 = this.f1212c;
        if (c3165g8 != null) {
            c3165g8.f2107a = 5;
        }
        if (c3165g8 != null) {
            c3165g8.f2108b = 5;
        }
        C2756E8 c2756e8 = this.f1223n;
        if (c2756e8 != null) {
            c2756e8.m1047c();
        }
        HandlerC2816I8 handlerC2816I8 = this.f1222m;
        if (handlerC2816I8 != null) {
            handlerC2816I8.removeMessages(1);
        }
        Object tag = getTag();
        if (tag instanceof C2726C8) {
            C2726C8 c2726c8 = (C2726C8) tag;
            Object obj = c2726c8.f938t.get("didCompleteQ4");
            Intrinsics.checkNotNull(obj, "null cannot be cast to non-null type kotlin.Boolean");
            if (!((Boolean) obj).booleanValue()) {
                c2726c8.f938t.put("didCompleteQ4", Boolean.TRUE);
                InterfaceC2801H8 interfaceC2801H8 = this.f1218i;
                if (interfaceC2801H8 != null) {
                    ((C3060Z7) interfaceC2801H8).m2004a((byte) 3);
                }
            }
            c2726c8.f938t.put("didSignalVideoCompleted", Boolean.TRUE);
            HashMap map = c2726c8.f938t;
            if (map != null) {
                Boolean bool = Boolean.FALSE;
                map.put("didCompleteQ1", bool);
                map.put("didCompleteQ2", bool);
                map.put("didCompleteQ3", bool);
                map.put("didPause", bool);
                map.put("didStartPlaying", bool);
                map.put("didQ4Fire", bool);
            }
            if (c2726c8.f886B) {
                start();
                return;
            }
            this.f1230u.m1117a();
            Object obj2 = c2726c8.f938t.get("isFullScreen");
            Intrinsics.checkNotNull(obj2, "null cannot be cast to non-null type kotlin.Boolean");
            if (((Boolean) obj2).booleanValue()) {
                m1300a(8, 0);
            }
        }
    }

    /* JADX INFO: renamed from: e */
    public final void m1305e() {
        C3165g8 c3165g8;
        C2756E8 mediaController;
        byte bByteValue;
        C3165g8 c3165g8M2134a;
        if (this.f1210a == null || this.f1211b == null) {
            return;
        }
        if (this.f1212c == null) {
            Object tag = getTag();
            C2726C8 c2726c8 = tag instanceof C2726C8 ? (C2726C8) tag : null;
            if (c2726c8 != null) {
                Object obj = c2726c8.f938t.get("placementType");
                Intrinsics.checkNotNull(obj, "null cannot be cast to non-null type kotlin.Byte");
                bByteValue = ((Byte) obj).byteValue();
            } else {
                bByteValue = 1;
            }
            if (1 == bByteValue) {
                c3165g8M2134a = new C3165g8();
            } else {
                Object obj2 = C3165g8.f2104d;
                c3165g8M2134a = AbstractC3150f8.m2134a();
            }
            this.f1212c = c3165g8M2134a;
            int i = this.f1213d;
            if (i != 0) {
                c3165g8M2134a.setAudioSessionId(i);
            } else {
                this.f1213d = c3165g8M2134a.getAudioSessionId();
            }
            try {
                C3165g8 c3165g82 = this.f1212c;
                if (c3165g82 != null) {
                    Context applicationContext = getContext().getApplicationContext();
                    Uri uri = this.f1210a;
                    Intrinsics.checkNotNull(uri);
                    c3165g82.setDataSource(applicationContext, uri, (Map<String, String>) null);
                }
            } catch (IOException unused) {
                C3165g8 c3165g83 = this.f1212c;
                if (c3165g83 != null) {
                    c3165g83.f2107a = -1;
                }
                if (c3165g83 == null) {
                    return;
                }
                c3165g83.f2108b = -1;
                return;
            }
        }
        try {
            C3165g8 c3165g84 = this.f1212c;
            if (c3165g84 != null) {
                c3165g84.setOnPreparedListener(this.f1232w);
                c3165g84.setOnVideoSizeChangedListener(this.f1231v);
                c3165g84.setOnCompletionListener(this.f1233x);
                c3165g84.setOnErrorListener(this.f1208A);
                c3165g84.setOnInfoListener(this.f1234y);
                c3165g84.setOnBufferingUpdateListener(this.f1235z);
                c3165g84.setSurface(this.f1211b);
            }
            if (Build.VERSION.SDK_INT >= 26) {
                C3165g8 c3165g85 = this.f1212c;
                if (c3165g85 != null) {
                    c3165g85.setAudioAttributes(this.f1230u.f1026e);
                }
            } else {
                C3165g8 c3165g86 = this.f1212c;
                if (c3165g86 != null) {
                    c3165g86.setAudioStreamType(3);
                }
            }
            C3165g8 c3165g87 = this.f1212c;
            if (c3165g87 != null) {
                c3165g87.prepareAsync();
            }
            this.f1224o = 0;
            C3165g8 c3165g88 = this.f1212c;
            if (c3165g88 != null) {
                c3165g88.f2107a = 1;
            }
            if (c3165g88 != null && (mediaController = getMediaController()) != null) {
                mediaController.setMediaPlayer(this);
                mediaController.setEnabled(m1301a());
                mediaController.m1048d();
            }
            Object tag2 = getTag();
            if (tag2 instanceof C2726C8) {
                Object obj3 = ((C2726C8) tag2).f938t.get("shouldAutoPlay");
                Intrinsics.checkNotNull(obj3, "null cannot be cast to non-null type kotlin.Boolean");
                if (((Boolean) obj3).booleanValue() && (c3165g8 = this.f1212c) != null) {
                    c3165g8.f2108b = 3;
                }
                Object obj4 = ((C2726C8) tag2).f938t.get("didCompleteQ4");
                Intrinsics.checkNotNull(obj4, "null cannot be cast to non-null type kotlin.Boolean");
                if (((Boolean) obj4).booleanValue()) {
                    m1300a(8, 0);
                    return;
                }
            }
            m1300a(0, 0);
        } catch (Exception e) {
            C3165g8 c3165g89 = this.f1212c;
            if (c3165g89 != null) {
                c3165g89.f2107a = -1;
            }
            if (c3165g89 != null) {
                c3165g89.f2108b = -1;
            }
            this.f1208A.onError(c3165g89, 1, 0);
            C3402w5 c3402w5 = C3402w5.f2709a;
            C3402w5.f2712d.m2158a(AbstractC3102c5.m2045a(e, "event"));
        }
    }

    /* JADX INFO: renamed from: f */
    public final void m1306f() {
        Surface surface = this.f1211b;
        if (surface != null) {
            surface.release();
        }
        this.f1211b = null;
        m1307g();
    }

    /* JADX INFO: renamed from: g */
    public final void m1307g() {
        C3165g8 c3165g8;
        HandlerC2816I8 handlerC2816I8 = this.f1222m;
        if (handlerC2816I8 != null) {
            handlerC2816I8.removeMessages(1);
        }
        C2770F7 c2770f7 = this.f1230u;
        c2770f7.m1117a();
        if (Build.VERSION.SDK_INT >= 26) {
            c2770f7.f1027f = null;
        }
        c2770f7.f1028g = null;
        Object tag = getTag();
        boolean z = tag instanceof C2726C8;
        if (z) {
            ((C2726C8) tag).f938t.put("seekPosition", Integer.valueOf(getCurrentPosition()));
        }
        C3165g8 c3165g82 = this.f1212c;
        if (c3165g82 != null) {
            c3165g82.f2107a = 0;
        }
        if (c3165g82 != null) {
            c3165g82.f2108b = 0;
        }
        if (c3165g82 != null) {
            try {
                c3165g82.reset();
            } catch (Exception e) {
                C3402w5 c3402w5 = C3402w5.f2709a;
                C3402w5.f2712d.m2158a(AbstractC3102c5.m2045a(e, "event"));
            }
        }
        C3165g8 c3165g83 = this.f1212c;
        if (c3165g83 != null) {
            c3165g83.setOnPreparedListener(null);
            c3165g83.setOnVideoSizeChangedListener(null);
            c3165g83.setOnCompletionListener(null);
            c3165g83.setOnErrorListener(null);
            c3165g83.setOnInfoListener(null);
            c3165g83.setOnBufferingUpdateListener(null);
        }
        if (z) {
            Object obj = ((C2726C8) tag).f938t.get("placementType");
            Intrinsics.checkNotNull(obj, "null cannot be cast to non-null type kotlin.Byte");
            if (((Byte) obj).byteValue() == 0 && (c3165g8 = this.f1212c) != null) {
                c3165g8.m2163a();
            }
        } else {
            C3165g8 c3165g84 = this.f1212c;
            if (c3165g84 != null) {
                c3165g84.m2163a();
            }
        }
        String TAG = f1207C;
        Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
        this.f1212c = null;
    }

    public final C2770F7 getAudioFocusManager$media_release() {
        return this.f1230u;
    }

    @Override // android.widget.MediaController.MediaPlayerControl
    public int getAudioSessionId() {
        if (this.f1213d == 0) {
            MediaPlayer mediaPlayer = new MediaPlayer();
            this.f1213d = mediaPlayer.getAudioSessionId();
            mediaPlayer.release();
        }
        return this.f1213d;
    }

    @Override // android.widget.MediaController.MediaPlayerControl
    public int getBufferPercentage() {
        if (this.f1212c != null) {
            return this.f1224o;
        }
        return 0;
    }

    @Override // android.widget.MediaController.MediaPlayerControl
    public int getCurrentPosition() {
        C3165g8 c3165g8 = this.f1212c;
        if (c3165g8 == null || !m1301a()) {
            return 0;
        }
        return c3165g8.getCurrentPosition();
    }

    @Override // android.widget.MediaController.MediaPlayerControl
    public int getDuration() {
        C3165g8 c3165g8 = this.f1212c;
        if (c3165g8 == null || !m1301a()) {
            return -1;
        }
        return c3165g8.getDuration();
    }

    public final int getLastVolume() {
        return this.f1217h;
    }

    public final MediaPlayer.OnVideoSizeChangedListener getMSizeChangedListener() {
        return this.f1231v;
    }

    public final C2756E8 getMediaController() {
        return this.f1223n;
    }

    public final C3165g8 getMediaPlayer() {
        return this.f1212c;
    }

    public final boolean getPauseScheduled() {
        return this.f1229t;
    }

    public final InterfaceC2786G8 getPlaybackEventListener() {
        return this.f1219j;
    }

    public final InterfaceC2801H8 getQuartileCompletedListener() {
        return this.f1218i;
    }

    public final int getState() {
        C3165g8 c3165g8 = this.f1212c;
        if (c3165g8 != null) {
            return c3165g8.f2107a;
        }
        return 0;
    }

    public final int getVideoVolume() {
        if (isPlaying()) {
            return this.f1216g;
        }
        return -1;
    }

    public final int getVolume() {
        if (m1301a()) {
            return this.f1216g;
        }
        return -1;
    }

    /* JADX INFO: renamed from: h */
    public final void m1308h() {
        C3165g8 c3165g8 = this.f1212c;
        if (c3165g8 != null) {
            this.f1216g = 0;
            if (c3165g8 != null) {
                c3165g8.setVolume(0.0f, 0.0f);
            }
            Object tag = getTag();
            if (tag instanceof C2726C8) {
                ((C2726C8) tag).f938t.put("currentMediaVolume", 0);
            }
        }
    }

    /* JADX INFO: renamed from: i */
    public final void m1309i() {
        C3165g8 c3165g8 = this.f1212c;
        if (c3165g8 != null) {
            this.f1216g = 1;
            if (c3165g8 != null) {
                c3165g8.setVolume(1.0f, 1.0f);
            }
            Object tag = getTag();
            if (tag instanceof C2726C8) {
                ((C2726C8) tag).f938t.put("currentMediaVolume", 15);
            }
        }
    }

    @Override // android.widget.MediaController.MediaPlayerControl
    public final boolean isPlaying() {
        C3165g8 c3165g8;
        return m1301a() && (c3165g8 = this.f1212c) != null && c3165g8.isPlaying();
    }

    /* JADX INFO: renamed from: j */
    public final void m1310j() {
        C3165g8 c3165g8;
        if (m1301a() && (c3165g8 = this.f1212c) != null && c3165g8.isPlaying()) {
            C3165g8 c3165g82 = this.f1212c;
            if (c3165g82 != null) {
                c3165g82.pause();
            }
            C3165g8 c3165g83 = this.f1212c;
            if (c3165g83 != null) {
                c3165g83.seekTo(0);
            }
            this.f1230u.m1117a();
            Object tag = getTag();
            if (tag instanceof C2726C8) {
                C2726C8 c2726c8 = (C2726C8) tag;
                HashMap map = c2726c8.f938t;
                Boolean bool = Boolean.TRUE;
                map.put("didPause", bool);
                c2726c8.f938t.put("seekPosition", 0);
                c2726c8.f938t.put("didCompleteQ4", bool);
            }
            C3165g8 c3165g84 = this.f1212c;
            if (c3165g84 != null) {
                c3165g84.f2107a = 4;
            }
            InterfaceC2786G8 interfaceC2786G8 = this.f1219j;
            if (interfaceC2786G8 != null) {
                ((C3075a8) interfaceC2786G8).m2017a((byte) 4);
            }
        }
        C3165g8 c3165g85 = this.f1212c;
        if (c3165g85 == null) {
            return;
        }
        c3165g85.f2108b = 4;
    }

    /* JADX INFO: renamed from: k */
    public final void m1311k() {
        if (this.f1212c != null) {
            if (isPlaying()) {
                this.f1230u.m1119c();
            } else {
                m1309i();
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:25:0x0057, code lost:
    
        if (r1 > r6) goto L26;
     */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void onMeasure(int r6, int r7) {
        /*
            r5 = this;
            int r0 = r5.f1214e     // Catch: java.lang.Exception -> L79
            int r0 = android.view.TextureView.getDefaultSize(r0, r6)     // Catch: java.lang.Exception -> L79
            int r1 = r5.f1215f     // Catch: java.lang.Exception -> L79
            int r1 = android.view.TextureView.getDefaultSize(r1, r7)     // Catch: java.lang.Exception -> L79
            int r2 = r5.f1214e     // Catch: java.lang.Exception -> L79
            if (r2 <= 0) goto L75
            int r2 = r5.f1215f     // Catch: java.lang.Exception -> L79
            if (r2 <= 0) goto L75
            int r0 = android.view.View.MeasureSpec.getMode(r6)     // Catch: java.lang.Exception -> L79
            int r6 = android.view.View.MeasureSpec.getSize(r6)     // Catch: java.lang.Exception -> L79
            int r1 = android.view.View.MeasureSpec.getMode(r7)     // Catch: java.lang.Exception -> L79
            int r7 = android.view.View.MeasureSpec.getSize(r7)     // Catch: java.lang.Exception -> L79
            r2 = 1073741824(0x40000000, float:2.0)
            if (r0 != r2) goto L3b
            if (r1 != r2) goto L3b
            int r0 = r5.f1214e     // Catch: java.lang.Exception -> L79
            int r1 = r0 * r7
            int r2 = r5.f1215f     // Catch: java.lang.Exception -> L79
            int r3 = r6 * r2
            if (r1 >= r3) goto L36
            int r3 = r3 / r0
            goto L73
        L36:
            if (r1 <= r3) goto L59
            int r0 = r1 / r2
            goto L5c
        L3b:
            r3 = -2147483648(0xffffffff80000000, float:-0.0)
            if (r0 != r2) goto L4d
            int r0 = r5.f1215f     // Catch: java.lang.Exception -> L79
            int r0 = r0 * r6
            int r2 = r5.f1214e     // Catch: java.lang.Exception -> L79
            int r0 = r0 / r2
            if (r1 != r3) goto L4a
            if (r0 <= r7) goto L4a
            goto L59
        L4a:
            r1 = r0
        L4b:
            r0 = r6
            goto L75
        L4d:
            if (r1 != r2) goto L5e
            int r1 = r5.f1214e     // Catch: java.lang.Exception -> L79
            int r1 = r1 * r7
            int r2 = r5.f1215f     // Catch: java.lang.Exception -> L79
            int r1 = r1 / r2
            if (r0 != r3) goto L5b
            if (r1 <= r6) goto L5b
        L59:
            r1 = r7
            goto L4b
        L5b:
            r0 = r1
        L5c:
            r1 = r7
            goto L75
        L5e:
            int r2 = r5.f1214e     // Catch: java.lang.Exception -> L79
            int r4 = r5.f1215f     // Catch: java.lang.Exception -> L79
            if (r1 != r3) goto L6a
            if (r4 <= r7) goto L6a
            int r1 = r7 * r2
            int r1 = r1 / r4
            goto L6c
        L6a:
            r1 = r2
            r7 = r4
        L6c:
            if (r0 != r3) goto L5b
            if (r1 <= r6) goto L5b
            int r4 = r4 * r6
            int r3 = r4 / r2
        L73:
            r1 = r3
            goto L4b
        L75:
            r5.setMeasuredDimension(r0, r1)     // Catch: java.lang.Exception -> L79
            goto L80
        L79:
            java.lang.String r6 = com.inmobi.media.C2861L8.f1207C
            java.lang.String r7 = "TAG"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r6, r7)
        L80:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.inmobi.media.C2861L8.onMeasure(int, int):void");
    }

    @Override // android.widget.MediaController.MediaPlayerControl
    public final void pause() {
        C3165g8 c3165g8;
        if (m1301a() && (c3165g8 = this.f1212c) != null && c3165g8.isPlaying()) {
            C3165g8 c3165g82 = this.f1212c;
            if (c3165g82 != null) {
                c3165g82.pause();
            }
            C3165g8 c3165g83 = this.f1212c;
            if (c3165g83 != null) {
                c3165g83.f2107a = 4;
            }
            this.f1230u.m1117a();
            Object tag = getTag();
            if (tag instanceof C2726C8) {
                C2726C8 c2726c8 = (C2726C8) tag;
                c2726c8.f938t.put("didPause", Boolean.TRUE);
                c2726c8.f938t.put("seekPosition", Integer.valueOf(getCurrentPosition()));
            }
            InterfaceC2786G8 interfaceC2786G8 = this.f1219j;
            if (interfaceC2786G8 != null) {
                ((C3075a8) interfaceC2786G8).m2017a((byte) 2);
            }
        }
        C3165g8 c3165g84 = this.f1212c;
        if (c3165g84 != null) {
            c3165g84.f2108b = 4;
        }
        this.f1229t = false;
    }

    @Override // android.widget.MediaController.MediaPlayerControl
    public final void seekTo(int i) {
    }

    public final void setIsLockScreen(boolean z) {
        this.f1221l = z;
    }

    public final void setLastVolume(int i) {
        this.f1217h = i;
    }

    public final void setMSizeChangedListener(MediaPlayer.OnVideoSizeChangedListener onVideoSizeChangedListener) {
        Intrinsics.checkNotNullParameter(onVideoSizeChangedListener, "<set-?>");
        this.f1231v = onVideoSizeChangedListener;
    }

    public final void setMediaController(C2756E8 c2756e8) {
        C2756E8 mediaController;
        if (c2756e8 != null) {
            this.f1223n = c2756e8;
            if (this.f1212c == null || (mediaController = getMediaController()) == null) {
                return;
            }
            mediaController.setMediaPlayer(this);
            mediaController.setEnabled(m1301a());
            mediaController.m1048d();
        }
    }

    public final void setMediaErrorListener(InterfaceC2771F8 interfaceC2771F8) {
        this.f1220k = interfaceC2771F8;
    }

    public final void setPlaybackEventListener(InterfaceC2786G8 interfaceC2786G8) {
        this.f1219j = interfaceC2786G8;
    }

    public final void setQuartileCompletedListener(InterfaceC2801H8 interfaceC2801H8) {
        this.f1218i = interfaceC2801H8;
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x0056  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x00a0  */
    @Override // android.widget.MediaController.MediaPlayerControl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void start() {
        /*
            Method dump skipped, instruction units count: 297
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.inmobi.media.C2861L8.start():void");
    }

    /* JADX INFO: renamed from: b */
    public static final boolean m1297b(C2861L8 this$0, MediaPlayer mediaPlayer, int i, int i2) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        if (3 != i) {
            return true;
        }
        this$0.m1300a(8, 8);
        return true;
    }

    /* JADX INFO: renamed from: b */
    public final void m1302b() {
        try {
            if (this.f1210a != null) {
                C2849Kb.m1246a(new Runnable() { // from class: com.inmobi.media.L8$$ExternalSyntheticLambda6
                    @Override // java.lang.Runnable
                    public final void run() {
                        C2861L8.m1292a(this.f$0);
                    }
                });
            }
        } catch (Exception unused) {
            String TAG = f1207C;
            Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
        }
    }

    /* JADX INFO: renamed from: c */
    public final void m1303c() {
        if (this.f1212c != null) {
            this.f1230u.m1117a();
            m1308h();
        }
    }

    /* JADX INFO: renamed from: a */
    public static final void m1294a(C2861L8 this$0, MediaPlayer mediaPlayer, int i) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.f1224o = i;
    }

    /* JADX INFO: renamed from: a */
    public static final boolean m1295a(C2861L8 this$0, MediaPlayer mediaPlayer, int i, int i2) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        String TAG = f1207C;
        Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
        InterfaceC2771F8 interfaceC2771F8 = this$0.f1220k;
        if (interfaceC2771F8 != null) {
            C3090b8 c3090b8 = (C3090b8) interfaceC2771F8;
            C3359t7 c3359t7 = c3090b8.f1885a.f2001b;
            if (!c3359t7.f2594t && (c3359t7 instanceof C2696A8)) {
                try {
                    ((C2696A8) c3359t7).m842a(c3090b8.f1886b, i);
                } catch (Exception e) {
                    C3120d8 c3120d8 = c3090b8.f1885a;
                    InterfaceC3147f5 interfaceC3147f5 = c3120d8.f2005f;
                    if (interfaceC3147f5 != null) {
                        String str = c3120d8.f2006g;
                        ((C3162g5) interfaceC3147f5).m2151b(str, AbstractC2761Ed.m1111a(e, AbstractC3208j6.m2261a(str, "access$getTAG$p(...)", "SDK encountered unexpected error in handling the onVideoError event; ")));
                    }
                }
            }
        }
        C3165g8 c3165g8 = this$0.f1212c;
        if (c3165g8 != null) {
            c3165g8.f2107a = -1;
        }
        if (c3165g8 != null) {
            c3165g8.f2108b = -1;
        }
        C2756E8 c2756e8 = this$0.f1223n;
        if (c2756e8 != null) {
            c2756e8.m1047c();
        }
        this$0.m1302b();
        return true;
    }

    /* JADX INFO: renamed from: b */
    public static final void m1296b(C2861L8 this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.pause();
    }

    /* JADX INFO: renamed from: a */
    public static final void m1292a(C2861L8 this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        String diskUrl = String.valueOf(this$0.f1210a);
        C3218k1 c3218k1M966a = AbstractC2744Db.m966a();
        c3218k1M966a.getClass();
        Intrinsics.checkNotNullParameter(diskUrl, "diskUrl");
        ArrayList arrayListM1751a = AbstractC2942R1.m1751a(c3218k1M966a, "disk_uri=? ", new String[]{diskUrl}, null, null, "created_ts DESC ", 1, 12);
        C3201j c3201j = arrayListM1751a.isEmpty() ? null : (C3201j) arrayListM1751a.get(0);
        int iNextInt = new Random().nextInt() & Integer.MAX_VALUE;
        long jCurrentTimeMillis = System.currentTimeMillis();
        long jCurrentTimeMillis2 = System.currentTimeMillis();
        if (c3201j != null) {
            String url = c3201j.f2204b;
            Intrinsics.checkNotNullParameter(url, "url");
            long jCurrentTimeMillis3 = System.currentTimeMillis();
            if (url == null) {
                url = "";
            }
            AbstractC2744Db.m966a().m2271a(new C3201j(iNextInt, url, null, 0, jCurrentTimeMillis, jCurrentTimeMillis2, jCurrentTimeMillis3, 0L));
        }
    }

    /* JADX INFO: renamed from: a */
    public final boolean m1301a() {
        C3165g8 c3165g8 = this.f1212c;
        if (c3165g8 == null) {
            return true;
        }
        int i = c3165g8.f2107a;
        return (i == -1 || i == 0 || i == 1) ? false : true;
    }

    /* JADX INFO: renamed from: a */
    public final void m1299a(int i) {
        if (this.f1229t || 4 == getState()) {
            return;
        }
        if (this.f1228s == null) {
            this.f1228s = new Handler(Looper.getMainLooper());
        }
        if (i > 0) {
            this.f1229t = true;
            m1303c();
            Handler handler = this.f1228s;
            if (handler != null) {
                handler.postDelayed(new Runnable() { // from class: com.inmobi.media.L8$$ExternalSyntheticLambda5
                    @Override // java.lang.Runnable
                    public final void run() {
                        C2861L8.m1296b(this.f$0);
                    }
                }, i * 1000);
                return;
            }
            return;
        }
        pause();
    }

    /* JADX INFO: renamed from: a */
    public final void m1300a(int i, int i2) {
        if (this.f1212c != null) {
            ViewParent parent = getParent();
            C2876M8 c2876m8 = parent instanceof C2876M8 ? (C2876M8) parent : null;
            ProgressBar progressBar = c2876m8 != null ? c2876m8.getProgressBar() : null;
            if (progressBar != null) {
                progressBar.setVisibility(i);
            }
            ViewParent parent2 = getParent();
            C2876M8 c2876m82 = parent2 instanceof C2876M8 ? (C2876M8) parent2 : null;
            ImageView posterImage = c2876m82 != null ? c2876m82.getPosterImage() : null;
            if (posterImage == null) {
                return;
            }
            posterImage.setVisibility(i2);
        }
    }
}
