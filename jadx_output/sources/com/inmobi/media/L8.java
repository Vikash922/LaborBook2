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

/* JADX INFO: loaded from: classes6.dex */
public final class L8 extends TextureView implements MediaController.MediaPlayerControl {
    public static final String C = "L8";
    public final MediaPlayer.OnErrorListener A;
    public final K8 B;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public Uri f169a;
    public Surface b;
    public C0319g8 c;
    public int d;
    public int e;
    public int f;
    public int g;
    public int h;
    public H8 i;
    public G8 j;
    public F8 k;
    public boolean l;
    public I8 m;
    public E8 n;
    public int o;
    public boolean p;
    public boolean q;
    public boolean r;
    public Handler s;
    public boolean t;
    public final F7 u;
    public MediaPlayer.OnVideoSizeChangedListener v;
    public final J8 w;
    public final MediaPlayer.OnCompletionListener x;
    public final MediaPlayer.OnInfoListener y;
    public final MediaPlayer.OnBufferingUpdateListener z;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public L8(Context context) {
        super(context);
        Intrinsics.checkNotNullParameter(context, "context");
        this.h = Integer.MIN_VALUE;
        Context context2 = getContext();
        Intrinsics.checkNotNullExpressionValue(context2, "getContext(...)");
        this.u = new F7(context2, this);
        requestLayout();
        invalidate();
        this.v = new MediaPlayer.OnVideoSizeChangedListener() { // from class: com.inmobi.media.L8$$ExternalSyntheticLambda0
            @Override // android.media.MediaPlayer.OnVideoSizeChangedListener
            public final void onVideoSizeChanged(MediaPlayer mediaPlayer, int i, int i2) {
                L8.c(this.f$0, mediaPlayer, i, i2);
            }
        };
        this.w = new J8(this);
        this.x = new MediaPlayer.OnCompletionListener() { // from class: com.inmobi.media.L8$$ExternalSyntheticLambda1
            @Override // android.media.MediaPlayer.OnCompletionListener
            public final void onCompletion(MediaPlayer mediaPlayer) {
                L8.a(this.f$0, mediaPlayer);
            }
        };
        this.y = new MediaPlayer.OnInfoListener() { // from class: com.inmobi.media.L8$$ExternalSyntheticLambda2
            @Override // android.media.MediaPlayer.OnInfoListener
            public final boolean onInfo(MediaPlayer mediaPlayer, int i, int i2) {
                return L8.b(this.f$0, mediaPlayer, i, i2);
            }
        };
        this.z = new MediaPlayer.OnBufferingUpdateListener() { // from class: com.inmobi.media.L8$$ExternalSyntheticLambda3
            @Override // android.media.MediaPlayer.OnBufferingUpdateListener
            public final void onBufferingUpdate(MediaPlayer mediaPlayer, int i) {
                L8.a(this.f$0, mediaPlayer, i);
            }
        };
        this.A = new MediaPlayer.OnErrorListener() { // from class: com.inmobi.media.L8$$ExternalSyntheticLambda4
            @Override // android.media.MediaPlayer.OnErrorListener
            public final boolean onError(MediaPlayer mediaPlayer, int i, int i2) {
                return L8.a(this.f$0, mediaPlayer, i, i2);
            }
        };
        this.B = new K8(this);
    }

    public static final void a(L8 this$0, MediaPlayer mediaPlayer) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        try {
            this$0.d();
        } catch (Exception e) {
            String TAG = C;
            Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
            C0551w5 c0551w5 = C0551w5.f513a;
            C0551w5.d.a(AbstractC0251c5.a(e, "event"));
        }
    }

    public static final void c(L8 this$0, MediaPlayer mediaPlayer, int i, int i2) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.e = mediaPlayer.getVideoWidth();
        int videoHeight = mediaPlayer.getVideoHeight();
        this$0.f = videoHeight;
        if (this$0.e == 0 || videoHeight == 0) {
            return;
        }
        this$0.requestLayout();
    }

    private final void setVideoPath(String str) {
        setVideoURI(Uri.parse(str));
    }

    private final void setVideoURI(Uri uri) {
        this.f169a = uri;
        e();
        requestLayout();
        invalidate();
    }

    @Override // android.widget.MediaController.MediaPlayerControl
    public final boolean canPause() {
        return this.p;
    }

    @Override // android.widget.MediaController.MediaPlayerControl
    public final boolean canSeekBackward() {
        return this.q;
    }

    @Override // android.widget.MediaController.MediaPlayerControl
    public final boolean canSeekForward() {
        return this.r;
    }

    public final void d() {
        C0319g8 c0319g8 = this.c;
        if (c0319g8 != null) {
            c0319g8.f360a = 5;
        }
        if (c0319g8 != null) {
            c0319g8.b = 5;
        }
        E8 e8 = this.n;
        if (e8 != null) {
            e8.c();
        }
        I8 i8 = this.m;
        if (i8 != null) {
            i8.removeMessages(1);
        }
        Object tag = getTag();
        if (tag instanceof C8) {
            C8 c8 = (C8) tag;
            Object obj = c8.t.get("didCompleteQ4");
            Intrinsics.checkNotNull(obj, "null cannot be cast to non-null type kotlin.Boolean");
            if (!((Boolean) obj).booleanValue()) {
                c8.t.put("didCompleteQ4", Boolean.TRUE);
                H8 h8 = this.i;
                if (h8 != null) {
                    ((Z7) h8).a((byte) 3);
                }
            }
            c8.t.put("didSignalVideoCompleted", Boolean.TRUE);
            HashMap map = c8.t;
            if (map != null) {
                Boolean bool = Boolean.FALSE;
                map.put("didCompleteQ1", bool);
                map.put("didCompleteQ2", bool);
                map.put("didCompleteQ3", bool);
                map.put("didPause", bool);
                map.put("didStartPlaying", bool);
                map.put("didQ4Fire", bool);
            }
            if (c8.B) {
                start();
                return;
            }
            this.u.a();
            Object obj2 = c8.t.get("isFullScreen");
            Intrinsics.checkNotNull(obj2, "null cannot be cast to non-null type kotlin.Boolean");
            if (((Boolean) obj2).booleanValue()) {
                a(8, 0);
            }
        }
    }

    public final void e() {
        C0319g8 c0319g8;
        E8 mediaController;
        byte bByteValue;
        C0319g8 c0319g8A;
        if (this.f169a == null || this.b == null) {
            return;
        }
        if (this.c == null) {
            Object tag = getTag();
            C8 c8 = tag instanceof C8 ? (C8) tag : null;
            if (c8 != null) {
                Object obj = c8.t.get("placementType");
                Intrinsics.checkNotNull(obj, "null cannot be cast to non-null type kotlin.Byte");
                bByteValue = ((Byte) obj).byteValue();
            } else {
                bByteValue = 1;
            }
            if (1 == bByteValue) {
                c0319g8A = new C0319g8();
            } else {
                Object obj2 = C0319g8.d;
                c0319g8A = AbstractC0302f8.a();
            }
            this.c = c0319g8A;
            int i = this.d;
            if (i != 0) {
                c0319g8A.setAudioSessionId(i);
            } else {
                this.d = c0319g8A.getAudioSessionId();
            }
            try {
                C0319g8 c0319g82 = this.c;
                if (c0319g82 != null) {
                    Context applicationContext = getContext().getApplicationContext();
                    Uri uri = this.f169a;
                    Intrinsics.checkNotNull(uri);
                    c0319g82.setDataSource(applicationContext, uri, (Map<String, String>) null);
                }
            } catch (IOException unused) {
                C0319g8 c0319g83 = this.c;
                if (c0319g83 != null) {
                    c0319g83.f360a = -1;
                }
                if (c0319g83 == null) {
                    return;
                }
                c0319g83.b = -1;
                return;
            }
        }
        try {
            C0319g8 c0319g84 = this.c;
            if (c0319g84 != null) {
                c0319g84.setOnPreparedListener(this.w);
                c0319g84.setOnVideoSizeChangedListener(this.v);
                c0319g84.setOnCompletionListener(this.x);
                c0319g84.setOnErrorListener(this.A);
                c0319g84.setOnInfoListener(this.y);
                c0319g84.setOnBufferingUpdateListener(this.z);
                c0319g84.setSurface(this.b);
            }
            if (Build.VERSION.SDK_INT >= 26) {
                C0319g8 c0319g85 = this.c;
                if (c0319g85 != null) {
                    c0319g85.setAudioAttributes(this.u.e);
                }
            } else {
                C0319g8 c0319g86 = this.c;
                if (c0319g86 != null) {
                    c0319g86.setAudioStreamType(3);
                }
            }
            C0319g8 c0319g87 = this.c;
            if (c0319g87 != null) {
                c0319g87.prepareAsync();
            }
            this.o = 0;
            C0319g8 c0319g88 = this.c;
            if (c0319g88 != null) {
                c0319g88.f360a = 1;
            }
            if (c0319g88 != null && (mediaController = getMediaController()) != null) {
                mediaController.setMediaPlayer(this);
                mediaController.setEnabled(a());
                mediaController.d();
            }
            Object tag2 = getTag();
            if (tag2 instanceof C8) {
                Object obj3 = ((C8) tag2).t.get("shouldAutoPlay");
                Intrinsics.checkNotNull(obj3, "null cannot be cast to non-null type kotlin.Boolean");
                if (((Boolean) obj3).booleanValue() && (c0319g8 = this.c) != null) {
                    c0319g8.b = 3;
                }
                Object obj4 = ((C8) tag2).t.get("didCompleteQ4");
                Intrinsics.checkNotNull(obj4, "null cannot be cast to non-null type kotlin.Boolean");
                if (((Boolean) obj4).booleanValue()) {
                    a(8, 0);
                    return;
                }
            }
            a(0, 0);
        } catch (Exception e) {
            C0319g8 c0319g89 = this.c;
            if (c0319g89 != null) {
                c0319g89.f360a = -1;
            }
            if (c0319g89 != null) {
                c0319g89.b = -1;
            }
            this.A.onError(c0319g89, 1, 0);
            C0551w5 c0551w5 = C0551w5.f513a;
            C0551w5.d.a(AbstractC0251c5.a(e, "event"));
        }
    }

    public final void f() {
        Surface surface = this.b;
        if (surface != null) {
            surface.release();
        }
        this.b = null;
        g();
    }

    public final void g() {
        C0319g8 c0319g8;
        I8 i8 = this.m;
        if (i8 != null) {
            i8.removeMessages(1);
        }
        F7 f7 = this.u;
        f7.a();
        if (Build.VERSION.SDK_INT >= 26) {
            f7.f = null;
        }
        f7.g = null;
        Object tag = getTag();
        boolean z = tag instanceof C8;
        if (z) {
            ((C8) tag).t.put("seekPosition", Integer.valueOf(getCurrentPosition()));
        }
        C0319g8 c0319g82 = this.c;
        if (c0319g82 != null) {
            c0319g82.f360a = 0;
        }
        if (c0319g82 != null) {
            c0319g82.b = 0;
        }
        if (c0319g82 != null) {
            try {
                c0319g82.reset();
            } catch (Exception e) {
                C0551w5 c0551w5 = C0551w5.f513a;
                C0551w5.d.a(AbstractC0251c5.a(e, "event"));
            }
        }
        C0319g8 c0319g83 = this.c;
        if (c0319g83 != null) {
            c0319g83.setOnPreparedListener(null);
            c0319g83.setOnVideoSizeChangedListener(null);
            c0319g83.setOnCompletionListener(null);
            c0319g83.setOnErrorListener(null);
            c0319g83.setOnInfoListener(null);
            c0319g83.setOnBufferingUpdateListener(null);
        }
        if (z) {
            Object obj = ((C8) tag).t.get("placementType");
            Intrinsics.checkNotNull(obj, "null cannot be cast to non-null type kotlin.Byte");
            if (((Byte) obj).byteValue() == 0 && (c0319g8 = this.c) != null) {
                c0319g8.a();
            }
        } else {
            C0319g8 c0319g84 = this.c;
            if (c0319g84 != null) {
                c0319g84.a();
            }
        }
        String TAG = C;
        Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
        this.c = null;
    }

    public final F7 getAudioFocusManager$media_release() {
        return this.u;
    }

    @Override // android.widget.MediaController.MediaPlayerControl
    public int getAudioSessionId() {
        if (this.d == 0) {
            MediaPlayer mediaPlayer = new MediaPlayer();
            this.d = mediaPlayer.getAudioSessionId();
            mediaPlayer.release();
        }
        return this.d;
    }

    @Override // android.widget.MediaController.MediaPlayerControl
    public int getBufferPercentage() {
        if (this.c != null) {
            return this.o;
        }
        return 0;
    }

    @Override // android.widget.MediaController.MediaPlayerControl
    public int getCurrentPosition() {
        C0319g8 c0319g8 = this.c;
        if (c0319g8 == null || !a()) {
            return 0;
        }
        return c0319g8.getCurrentPosition();
    }

    @Override // android.widget.MediaController.MediaPlayerControl
    public int getDuration() {
        C0319g8 c0319g8 = this.c;
        if (c0319g8 == null || !a()) {
            return -1;
        }
        return c0319g8.getDuration();
    }

    public final int getLastVolume() {
        return this.h;
    }

    public final MediaPlayer.OnVideoSizeChangedListener getMSizeChangedListener() {
        return this.v;
    }

    public final E8 getMediaController() {
        return this.n;
    }

    public final C0319g8 getMediaPlayer() {
        return this.c;
    }

    public final boolean getPauseScheduled() {
        return this.t;
    }

    public final G8 getPlaybackEventListener() {
        return this.j;
    }

    public final H8 getQuartileCompletedListener() {
        return this.i;
    }

    public final int getState() {
        C0319g8 c0319g8 = this.c;
        if (c0319g8 != null) {
            return c0319g8.f360a;
        }
        return 0;
    }

    public final int getVideoVolume() {
        if (isPlaying()) {
            return this.g;
        }
        return -1;
    }

    public final int getVolume() {
        if (a()) {
            return this.g;
        }
        return -1;
    }

    public final void h() {
        C0319g8 c0319g8 = this.c;
        if (c0319g8 != null) {
            this.g = 0;
            if (c0319g8 != null) {
                c0319g8.setVolume(0.0f, 0.0f);
            }
            Object tag = getTag();
            if (tag instanceof C8) {
                ((C8) tag).t.put("currentMediaVolume", 0);
            }
        }
    }

    public final void i() {
        C0319g8 c0319g8 = this.c;
        if (c0319g8 != null) {
            this.g = 1;
            if (c0319g8 != null) {
                c0319g8.setVolume(1.0f, 1.0f);
            }
            Object tag = getTag();
            if (tag instanceof C8) {
                ((C8) tag).t.put("currentMediaVolume", 15);
            }
        }
    }

    @Override // android.widget.MediaController.MediaPlayerControl
    public final boolean isPlaying() {
        C0319g8 c0319g8;
        return a() && (c0319g8 = this.c) != null && c0319g8.isPlaying();
    }

    public final void j() {
        C0319g8 c0319g8;
        if (a() && (c0319g8 = this.c) != null && c0319g8.isPlaying()) {
            C0319g8 c0319g82 = this.c;
            if (c0319g82 != null) {
                c0319g82.pause();
            }
            C0319g8 c0319g83 = this.c;
            if (c0319g83 != null) {
                c0319g83.seekTo(0);
            }
            this.u.a();
            Object tag = getTag();
            if (tag instanceof C8) {
                C8 c8 = (C8) tag;
                HashMap map = c8.t;
                Boolean bool = Boolean.TRUE;
                map.put("didPause", bool);
                c8.t.put("seekPosition", 0);
                c8.t.put("didCompleteQ4", bool);
            }
            C0319g8 c0319g84 = this.c;
            if (c0319g84 != null) {
                c0319g84.f360a = 4;
            }
            G8 g8 = this.j;
            if (g8 != null) {
                ((C0224a8) g8).a((byte) 4);
            }
        }
        C0319g8 c0319g85 = this.c;
        if (c0319g85 == null) {
            return;
        }
        c0319g85.b = 4;
    }

    public final void k() {
        if (this.c != null) {
            if (isPlaying()) {
                this.u.c();
            } else {
                i();
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
            int r0 = r5.e     // Catch: java.lang.Exception -> L79
            int r0 = android.view.TextureView.getDefaultSize(r0, r6)     // Catch: java.lang.Exception -> L79
            int r1 = r5.f     // Catch: java.lang.Exception -> L79
            int r1 = android.view.TextureView.getDefaultSize(r1, r7)     // Catch: java.lang.Exception -> L79
            int r2 = r5.e     // Catch: java.lang.Exception -> L79
            if (r2 <= 0) goto L75
            int r2 = r5.f     // Catch: java.lang.Exception -> L79
            if (r2 <= 0) goto L75
            int r0 = android.view.View.MeasureSpec.getMode(r6)     // Catch: java.lang.Exception -> L79
            int r6 = android.view.View.MeasureSpec.getSize(r6)     // Catch: java.lang.Exception -> L79
            int r1 = android.view.View.MeasureSpec.getMode(r7)     // Catch: java.lang.Exception -> L79
            int r7 = android.view.View.MeasureSpec.getSize(r7)     // Catch: java.lang.Exception -> L79
            r2 = 1073741824(0x40000000, float:2.0)
            if (r0 != r2) goto L3b
            if (r1 != r2) goto L3b
            int r0 = r5.e     // Catch: java.lang.Exception -> L79
            int r1 = r0 * r7
            int r2 = r5.f     // Catch: java.lang.Exception -> L79
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
            int r0 = r5.f     // Catch: java.lang.Exception -> L79
            int r0 = r0 * r6
            int r2 = r5.e     // Catch: java.lang.Exception -> L79
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
            int r1 = r5.e     // Catch: java.lang.Exception -> L79
            int r1 = r1 * r7
            int r2 = r5.f     // Catch: java.lang.Exception -> L79
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
            int r2 = r5.e     // Catch: java.lang.Exception -> L79
            int r4 = r5.f     // Catch: java.lang.Exception -> L79
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
            java.lang.String r6 = com.inmobi.media.L8.C
            java.lang.String r7 = "TAG"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r6, r7)
        L80:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.inmobi.media.L8.onMeasure(int, int):void");
    }

    @Override // android.widget.MediaController.MediaPlayerControl
    public final void pause() {
        C0319g8 c0319g8;
        if (a() && (c0319g8 = this.c) != null && c0319g8.isPlaying()) {
            C0319g8 c0319g82 = this.c;
            if (c0319g82 != null) {
                c0319g82.pause();
            }
            C0319g8 c0319g83 = this.c;
            if (c0319g83 != null) {
                c0319g83.f360a = 4;
            }
            this.u.a();
            Object tag = getTag();
            if (tag instanceof C8) {
                C8 c8 = (C8) tag;
                c8.t.put("didPause", Boolean.TRUE);
                c8.t.put("seekPosition", Integer.valueOf(getCurrentPosition()));
            }
            G8 g8 = this.j;
            if (g8 != null) {
                ((C0224a8) g8).a((byte) 2);
            }
        }
        C0319g8 c0319g84 = this.c;
        if (c0319g84 != null) {
            c0319g84.b = 4;
        }
        this.t = false;
    }

    @Override // android.widget.MediaController.MediaPlayerControl
    public final void seekTo(int i) {
    }

    public final void setIsLockScreen(boolean z) {
        this.l = z;
    }

    public final void setLastVolume(int i) {
        this.h = i;
    }

    public final void setMSizeChangedListener(MediaPlayer.OnVideoSizeChangedListener onVideoSizeChangedListener) {
        Intrinsics.checkNotNullParameter(onVideoSizeChangedListener, "<set-?>");
        this.v = onVideoSizeChangedListener;
    }

    public final void setMediaController(E8 e8) {
        E8 mediaController;
        if (e8 != null) {
            this.n = e8;
            if (this.c == null || (mediaController = getMediaController()) == null) {
                return;
            }
            mediaController.setMediaPlayer(this);
            mediaController.setEnabled(a());
            mediaController.d();
        }
    }

    public final void setMediaErrorListener(F8 f8) {
        this.k = f8;
    }

    public final void setPlaybackEventListener(G8 g8) {
        this.j = g8;
    }

    public final void setQuartileCompletedListener(H8 h8) {
        this.i = h8;
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
        throw new UnsupportedOperationException("Method not decompiled: com.inmobi.media.L8.start():void");
    }

    public static final boolean b(L8 this$0, MediaPlayer mediaPlayer, int i, int i2) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        if (3 != i) {
            return true;
        }
        this$0.a(8, 8);
        return true;
    }

    public final void b() {
        try {
            if (this.f169a != null) {
                Kb.a(new Runnable() { // from class: com.inmobi.media.L8$$ExternalSyntheticLambda6
                    @Override // java.lang.Runnable
                    public final void run() {
                        L8.a(this.f$0);
                    }
                });
            }
        } catch (Exception unused) {
            String TAG = C;
            Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
        }
    }

    public final void c() {
        if (this.c != null) {
            this.u.a();
            h();
        }
    }

    public static final void a(L8 this$0, MediaPlayer mediaPlayer, int i) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.o = i;
    }

    public static final boolean a(L8 this$0, MediaPlayer mediaPlayer, int i, int i2) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        String TAG = C;
        Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
        F8 f8 = this$0.k;
        if (f8 != null) {
            C0239b8 c0239b8 = (C0239b8) f8;
            C0511t7 c0511t7 = c0239b8.f312a.b;
            if (!c0511t7.t && (c0511t7 instanceof A8)) {
                try {
                    ((A8) c0511t7).a(c0239b8.b, i);
                } catch (Exception e) {
                    C0270d8 c0270d8 = c0239b8.f312a;
                    InterfaceC0298f5 interfaceC0298f5 = c0270d8.f;
                    if (interfaceC0298f5 != null) {
                        String str = c0270d8.g;
                        ((C0314g5) interfaceC0298f5).b(str, Ed.a(e, AbstractC0363j6.a(str, "access$getTAG$p(...)", "SDK encountered unexpected error in handling the onVideoError event; ")));
                    }
                }
            }
        }
        C0319g8 c0319g8 = this$0.c;
        if (c0319g8 != null) {
            c0319g8.f360a = -1;
        }
        if (c0319g8 != null) {
            c0319g8.b = -1;
        }
        E8 e8 = this$0.n;
        if (e8 != null) {
            e8.c();
        }
        this$0.b();
        return true;
    }

    public static final void b(L8 this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.pause();
    }

    public static final void a(L8 this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        String diskUrl = String.valueOf(this$0.f169a);
        C0373k1 c0373k1A = Db.a();
        c0373k1A.getClass();
        Intrinsics.checkNotNullParameter(diskUrl, "diskUrl");
        ArrayList arrayListA = R1.a(c0373k1A, "disk_uri=? ", new String[]{diskUrl}, null, null, "created_ts DESC ", 1, 12);
        C0356j c0356j = arrayListA.isEmpty() ? null : (C0356j) arrayListA.get(0);
        int iNextInt = new Random().nextInt() & Integer.MAX_VALUE;
        long jCurrentTimeMillis = System.currentTimeMillis();
        long jCurrentTimeMillis2 = System.currentTimeMillis();
        if (c0356j != null) {
            String url = c0356j.b;
            Intrinsics.checkNotNullParameter(url, "url");
            long jCurrentTimeMillis3 = System.currentTimeMillis();
            if (url == null) {
                url = "";
            }
            Db.a().a(new C0356j(iNextInt, url, null, 0, jCurrentTimeMillis, jCurrentTimeMillis2, jCurrentTimeMillis3, 0L));
        }
    }

    public final boolean a() {
        C0319g8 c0319g8 = this.c;
        if (c0319g8 == null) {
            return true;
        }
        int i = c0319g8.f360a;
        return (i == -1 || i == 0 || i == 1) ? false : true;
    }

    public final void a(int i) {
        if (this.t || 4 == getState()) {
            return;
        }
        if (this.s == null) {
            this.s = new Handler(Looper.getMainLooper());
        }
        if (i > 0) {
            this.t = true;
            c();
            Handler handler = this.s;
            if (handler != null) {
                handler.postDelayed(new Runnable() { // from class: com.inmobi.media.L8$$ExternalSyntheticLambda5
                    @Override // java.lang.Runnable
                    public final void run() {
                        L8.b(this.f$0);
                    }
                }, i * 1000);
                return;
            }
            return;
        }
        pause();
    }

    public final void a(int i, int i2) {
        if (this.c != null) {
            ViewParent parent = getParent();
            M8 m8 = parent instanceof M8 ? (M8) parent : null;
            ProgressBar progressBar = m8 != null ? m8.getProgressBar() : null;
            if (progressBar != null) {
                progressBar.setVisibility(i);
            }
            ViewParent parent2 = getParent();
            M8 m82 = parent2 instanceof M8 ? (M8) parent2 : null;
            ImageView posterImage = m82 != null ? m82.getPosterImage() : null;
            if (posterImage == null) {
                return;
            }
            posterImage.setVisibility(i2);
        }
    }
}
