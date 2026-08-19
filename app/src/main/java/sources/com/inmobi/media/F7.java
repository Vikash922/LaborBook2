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

/* JADX INFO: loaded from: classes6.dex */
public final class F7 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Context f116a;
    public final L8 b;
    public boolean c;
    public final Object d;
    public final AudioAttributes e;
    public AudioFocusRequest f;
    public AudioManager.OnAudioFocusChangeListener g;

    public F7(Context context, L8 audioFocusListener) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(audioFocusListener, "audioFocusListener");
        this.f116a = context;
        this.b = audioFocusListener;
        this.d = new Object();
        AudioAttributes audioAttributesBuild = new AudioAttributes.Builder().setUsage(1).setContentType(2).setLegacyStreamType(3).build();
        Intrinsics.checkNotNullExpressionValue(audioAttributesBuild, "build(...)");
        this.e = audioAttributesBuild;
    }

    public final void a() {
        synchronized (this.d) {
            Object systemService = this.f116a.getSystemService("audio");
            AudioManager audioManager = systemService instanceof AudioManager ? (AudioManager) systemService : null;
            if (audioManager != null) {
                if (Build.VERSION.SDK_INT >= 26) {
                    AudioFocusRequest audioFocusRequest = this.f;
                    if (audioFocusRequest != null) {
                        audioManager.abandonAudioFocusRequest(audioFocusRequest);
                    }
                } else {
                    AudioManager.OnAudioFocusChangeListener onAudioFocusChangeListener = this.g;
                    if (onAudioFocusChangeListener != null) {
                        audioManager.abandonAudioFocus(onAudioFocusChangeListener);
                    }
                }
            }
            Unit unit = Unit.INSTANCE;
        }
    }

    public final AudioManager.OnAudioFocusChangeListener b() {
        return new AudioManager.OnAudioFocusChangeListener() { // from class: com.inmobi.media.F7$$ExternalSyntheticLambda0
            @Override // android.media.AudioManager.OnAudioFocusChangeListener
            public final void onAudioFocusChange(int i) {
                F7.a(this.f$0, i);
            }
        };
    }

    public final void c() {
        int iRequestAudioFocus;
        synchronized (this.d) {
            Object systemService = this.f116a.getSystemService("audio");
            AudioManager audioManager = systemService instanceof AudioManager ? (AudioManager) systemService : null;
            if (audioManager != null) {
                if (this.g == null) {
                    this.g = b();
                }
                if (Build.VERSION.SDK_INT >= 26) {
                    if (this.f == null) {
                        AudioFocusRequest.Builder audioAttributes = new AudioFocusRequest.Builder(2).setAudioAttributes(this.e);
                        AudioManager.OnAudioFocusChangeListener onAudioFocusChangeListener = this.g;
                        Intrinsics.checkNotNull(onAudioFocusChangeListener);
                        AudioFocusRequest audioFocusRequestBuild = audioAttributes.setOnAudioFocusChangeListener(onAudioFocusChangeListener, new Handler(Looper.getMainLooper())).build();
                        Intrinsics.checkNotNullExpressionValue(audioFocusRequestBuild, "build(...)");
                        this.f = audioFocusRequestBuild;
                    }
                    AudioFocusRequest audioFocusRequest = this.f;
                    Intrinsics.checkNotNull(audioFocusRequest);
                    iRequestAudioFocus = audioManager.requestAudioFocus(audioFocusRequest);
                } else {
                    iRequestAudioFocus = audioManager.requestAudioFocus(this.g, 3, 2);
                }
            } else {
                iRequestAudioFocus = 0;
            }
            Unit unit = Unit.INSTANCE;
        }
        if (iRequestAudioFocus == 1) {
            L8 l8 = this.b;
            l8.i();
            E8 e8 = l8.n;
            if (e8 == null || e8.d == null) {
                return;
            }
            e8.j = false;
            e8.i.removeView(e8.g);
            e8.i.removeView(e8.f);
            e8.a();
            return;
        }
        L8 l82 = this.b;
        l82.h();
        E8 e82 = l82.n;
        if (e82 == null || e82.d == null) {
            return;
        }
        e82.j = true;
        e82.i.removeView(e82.f);
        e82.i.removeView(e82.g);
        e82.b();
    }

    public static final void a(F7 this$0, int i) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        if (i == -2) {
            synchronized (this$0.d) {
                this$0.c = true;
                Unit unit = Unit.INSTANCE;
            }
            L8 l8 = this$0.b;
            l8.h();
            E8 e8 = l8.n;
            if (e8 == null || e8.d == null) {
                return;
            }
            e8.j = true;
            e8.i.removeView(e8.f);
            e8.i.removeView(e8.g);
            e8.b();
            return;
        }
        if (i == -1) {
            synchronized (this$0.d) {
                this$0.c = false;
                Unit unit2 = Unit.INSTANCE;
            }
            L8 l82 = this$0.b;
            l82.h();
            E8 e82 = l82.n;
            if (e82 == null || e82.d == null) {
                return;
            }
            e82.j = true;
            e82.i.removeView(e82.f);
            e82.i.removeView(e82.g);
            e82.b();
            return;
        }
        if (i != 1) {
            return;
        }
        synchronized (this$0.d) {
            if (this$0.c) {
                L8 l83 = this$0.b;
                if (l83.isPlaying()) {
                    l83.i();
                    E8 e83 = l83.n;
                    if (e83 != null && e83.d != null) {
                        e83.j = false;
                        e83.i.removeView(e83.g);
                        e83.i.removeView(e83.f);
                        e83.a();
                    }
                }
            }
            this$0.c = false;
            Unit unit3 = Unit.INSTANCE;
        }
    }
}
