package com.inmobi.media;

import android.content.Context;
import android.media.AudioAttributes;
import android.media.AudioFocusRequest;
import android.media.AudioManager;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.inmobi.media.F7 */
/* JADX INFO: loaded from: classes6.dex */
public final class C2770F7 {

    /* JADX INFO: renamed from: a */
    public final Context f1022a;

    /* JADX INFO: renamed from: b */
    public final C2861L8 f1023b;

    /* JADX INFO: renamed from: c */
    public boolean f1024c;

    /* JADX INFO: renamed from: d */
    public final Object f1025d;

    /* JADX INFO: renamed from: e */
    public final AudioAttributes f1026e;

    /* JADX INFO: renamed from: f */
    public AudioFocusRequest f1027f;

    /* JADX INFO: renamed from: g */
    public AudioManager.OnAudioFocusChangeListener f1028g;

    public C2770F7(Context context, C2861L8 audioFocusListener) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(audioFocusListener, "audioFocusListener");
        this.f1022a = context;
        this.f1023b = audioFocusListener;
        this.f1025d = new Object();
        AudioAttributes audioAttributesBuild = new AudioAttributes.Builder().setUsage(1).setContentType(2).setLegacyStreamType(3).build();
        Intrinsics.checkNotNullExpressionValue(audioAttributesBuild, "build(...)");
        this.f1026e = audioAttributesBuild;
    }

    /* JADX INFO: renamed from: a */
    public final void m1117a() {
        synchronized (this.f1025d) {
            Object systemService = this.f1022a.getSystemService("audio");
            AudioManager audioManager = systemService instanceof AudioManager ? (AudioManager) systemService : null;
            if (audioManager != null) {
                if (Build.VERSION.SDK_INT >= 26) {
                    AudioFocusRequest audioFocusRequest = this.f1027f;
                    if (audioFocusRequest != null) {
                        audioManager.abandonAudioFocusRequest(audioFocusRequest);
                    }
                } else {
                    AudioManager.OnAudioFocusChangeListener onAudioFocusChangeListener = this.f1028g;
                    if (onAudioFocusChangeListener != null) {
                        audioManager.abandonAudioFocus(onAudioFocusChangeListener);
                    }
                }
            }
            Unit unit = Unit.INSTANCE;
        }
    }

    /* JADX INFO: renamed from: b */
    public final AudioManager.OnAudioFocusChangeListener m1118b() {
        return new AudioManager.OnAudioFocusChangeListener() { // from class: com.inmobi.media.F7$$ExternalSyntheticLambda0
            @Override // android.media.AudioManager.OnAudioFocusChangeListener
            public final void onAudioFocusChange(int i) {
                C2770F7.m1116a(this.f$0, i);
            }
        };
    }

    /* JADX INFO: renamed from: c */
    public final void m1119c() {
        int iRequestAudioFocus;
        synchronized (this.f1025d) {
            Object systemService = this.f1022a.getSystemService("audio");
            AudioManager audioManager = systemService instanceof AudioManager ? (AudioManager) systemService : null;
            if (audioManager != null) {
                if (this.f1028g == null) {
                    this.f1028g = m1118b();
                }
                if (Build.VERSION.SDK_INT >= 26) {
                    if (this.f1027f == null) {
                        AudioFocusRequest.Builder audioAttributes = new AudioFocusRequest.Builder(2).setAudioAttributes(this.f1026e);
                        AudioManager.OnAudioFocusChangeListener onAudioFocusChangeListener = this.f1028g;
                        Intrinsics.checkNotNull(onAudioFocusChangeListener);
                        AudioFocusRequest audioFocusRequestBuild = audioAttributes.setOnAudioFocusChangeListener(onAudioFocusChangeListener, new Handler(Looper.getMainLooper())).build();
                        Intrinsics.checkNotNullExpressionValue(audioFocusRequestBuild, "build(...)");
                        this.f1027f = audioFocusRequestBuild;
                    }
                    AudioFocusRequest audioFocusRequest = this.f1027f;
                    Intrinsics.checkNotNull(audioFocusRequest);
                    iRequestAudioFocus = audioManager.requestAudioFocus(audioFocusRequest);
                } else {
                    iRequestAudioFocus = audioManager.requestAudioFocus(this.f1028g, 3, 2);
                }
            } else {
                iRequestAudioFocus = 0;
            }
            Unit unit = Unit.INSTANCE;
        }
        if (iRequestAudioFocus == 1) {
            C2861L8 c2861l8 = this.f1023b;
            c2861l8.m1309i();
            C2756E8 c2756e8 = c2861l8.f1223n;
            if (c2756e8 == null || c2756e8.f988d == null) {
                return;
            }
            c2756e8.f994j = false;
            c2756e8.f993i.removeView(c2756e8.f991g);
            c2756e8.f993i.removeView(c2756e8.f990f);
            c2756e8.m1045a();
            return;
        }
        C2861L8 c2861l82 = this.f1023b;
        c2861l82.m1308h();
        C2756E8 c2756e82 = c2861l82.f1223n;
        if (c2756e82 == null || c2756e82.f988d == null) {
            return;
        }
        c2756e82.f994j = true;
        c2756e82.f993i.removeView(c2756e82.f990f);
        c2756e82.f993i.removeView(c2756e82.f991g);
        c2756e82.m1046b();
    }

    /* JADX INFO: renamed from: a */
    public static final void m1116a(C2770F7 this$0, int i) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        if (i == -2) {
            synchronized (this$0.f1025d) {
                this$0.f1024c = true;
                Unit unit = Unit.INSTANCE;
            }
            C2861L8 c2861l8 = this$0.f1023b;
            c2861l8.m1308h();
            C2756E8 c2756e8 = c2861l8.f1223n;
            if (c2756e8 == null || c2756e8.f988d == null) {
                return;
            }
            c2756e8.f994j = true;
            c2756e8.f993i.removeView(c2756e8.f990f);
            c2756e8.f993i.removeView(c2756e8.f991g);
            c2756e8.m1046b();
            return;
        }
        if (i == -1) {
            synchronized (this$0.f1025d) {
                this$0.f1024c = false;
                Unit unit2 = Unit.INSTANCE;
            }
            C2861L8 c2861l82 = this$0.f1023b;
            c2861l82.m1308h();
            C2756E8 c2756e82 = c2861l82.f1223n;
            if (c2756e82 == null || c2756e82.f988d == null) {
                return;
            }
            c2756e82.f994j = true;
            c2756e82.f993i.removeView(c2756e82.f990f);
            c2756e82.f993i.removeView(c2756e82.f991g);
            c2756e82.m1046b();
            return;
        }
        if (i != 1) {
            return;
        }
        synchronized (this$0.f1025d) {
            if (this$0.f1024c) {
                C2861L8 c2861l83 = this$0.f1023b;
                if (c2861l83.isPlaying()) {
                    c2861l83.m1309i();
                    C2756E8 c2756e83 = c2861l83.f1223n;
                    if (c2756e83 != null && c2756e83.f988d != null) {
                        c2756e83.f994j = false;
                        c2756e83.f993i.removeView(c2756e83.f991g);
                        c2756e83.f993i.removeView(c2756e83.f990f);
                        c2756e83.m1045a();
                    }
                }
            }
            this$0.f1024c = false;
            Unit unit3 = Unit.INSTANCE;
        }
    }
}
