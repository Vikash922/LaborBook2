package com.inmobi.media;

import android.R;
import android.app.Activity;
import android.content.Context;
import android.media.AudioManager;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.RelativeLayout;
import androidx.core.view.ViewCompat;
import com.inmobi.commons.core.configs.AdConfig;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.inmobi.media.f7, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes6.dex */
public final class C0300f7 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Ya f349a;
    public final InterfaceC0298f5 b;
    public V6 c;
    public S6 d;
    public S6 e;
    public S6 f;

    public C0300f7(Ya ya, InterfaceC0298f5 interfaceC0298f5) {
        this.f349a = ya;
        this.b = interfaceC0298f5;
    }

    public static final boolean a(View view, MotionEvent motionEvent) {
        return true;
    }

    public static boolean b() {
        Context contextD = Kb.d();
        if (contextD == null) {
            return false;
        }
        Object systemService = contextD.getSystemService("audio");
        AudioManager audioManager = systemService instanceof AudioManager ? (AudioManager) systemService : null;
        return audioManager != null && audioManager.isWiredHeadsetOn();
    }

    public final void a(String url, Activity activity) {
        Intrinsics.checkNotNullParameter(url, "url");
        Intrinsics.checkNotNullParameter(activity, "activity");
        InterfaceC0298f5 interfaceC0298f5 = this.b;
        if (interfaceC0298f5 != null) {
            ((C0314g5) interfaceC0298f5).c("MraidMediaProcessor", "doPlayMedia");
        }
        V6 v6 = new V6(activity, this.b);
        this.c = v6;
        v6.setPlaybackData(url);
        ViewGroup viewGroup = (ViewGroup) activity.findViewById(R.id.content);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -1);
        layoutParams.addRule(13);
        V6 v62 = this.c;
        if (v62 != null) {
            v62.setLayoutParams(layoutParams);
        }
        W6 w6 = new W6(activity);
        w6.setOnTouchListener(new View.OnTouchListener() { // from class: com.inmobi.media.f7$$ExternalSyntheticLambda0
            @Override // android.view.View.OnTouchListener
            public final boolean onTouch(View view, MotionEvent motionEvent) {
                return C0300f7.a(view, motionEvent);
            }
        });
        w6.setBackgroundColor(ViewCompat.MEASURED_STATE_MASK);
        w6.addView(this.c);
        InterfaceC0298f5 interfaceC0298f52 = this.b;
        if (interfaceC0298f52 != null) {
            ((C0314g5) interfaceC0298f52).a("MraidMediaProcessor", "adding media view on top");
        }
        viewGroup.addView(w6, new ViewGroup.LayoutParams(-1, -1));
        V6 v63 = this.c;
        if (v63 != null) {
            v63.setViewContainer(w6);
        }
        V6 v64 = this.c;
        if (v64 != null) {
            v64.requestFocus();
        }
        V6 v65 = this.c;
        if (v65 != null) {
            v65.setOnKeyListener(new View.OnKeyListener() { // from class: com.inmobi.media.f7$$ExternalSyntheticLambda1
                @Override // android.view.View.OnKeyListener
                public final boolean onKey(View view, int i, KeyEvent keyEvent) {
                    return C0300f7.a(this.f$0, view, i, keyEvent);
                }
            });
        }
        V6 v66 = this.c;
        if (v66 != null) {
            v66.setListener(new C0285e7(this));
        }
        V6 v67 = this.c;
        if (v67 != null) {
            v67.a();
        }
    }

    public static final boolean a(C0300f7 this$0, View view, int i, KeyEvent keyEvent) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        if (4 != i || keyEvent.getAction() != 0) {
            return false;
        }
        V6 v6 = this$0.c;
        if (v6 == null) {
            return true;
        }
        v6.b();
        return true;
    }

    public final int a() {
        AdConfig.RenderingConfig renderingConfig;
        InterfaceC0298f5 interfaceC0298f5 = this.b;
        if (interfaceC0298f5 != null) {
            ((C0314g5) interfaceC0298f5).c("MraidMediaProcessor", "deviceVolume");
        }
        Context contextD = Kb.d();
        if (contextD == null) {
            return -1;
        }
        Ya ya = this.f349a;
        if (((ya == null || (renderingConfig = ya.getRenderingConfig()) == null) ? false : renderingConfig.getEnablePubMuteControl()) && Kb.o()) {
            return 0;
        }
        Object systemService = contextD.getSystemService("audio");
        AudioManager audioManager = systemService instanceof AudioManager ? (AudioManager) systemService : null;
        if (audioManager != null) {
            return audioManager.getStreamVolume(3);
        }
        return -1;
    }
}
