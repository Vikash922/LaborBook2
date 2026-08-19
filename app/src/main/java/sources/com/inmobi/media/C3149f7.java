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

/* JADX INFO: renamed from: com.inmobi.media.f7 */
/* JADX INFO: loaded from: classes6.dex */
public final class C3149f7 {

    /* JADX INFO: renamed from: a */
    public final GestureDetectorOnGestureListenerC3049Ya f2062a;

    /* JADX INFO: renamed from: b */
    public final InterfaceC3147f5 f2063b;

    /* JADX INFO: renamed from: c */
    public C3003V6 f2064c;

    /* JADX INFO: renamed from: d */
    public C2961S6 f2065d;

    /* JADX INFO: renamed from: e */
    public C2961S6 f2066e;

    /* JADX INFO: renamed from: f */
    public C2961S6 f2067f;

    public C3149f7(GestureDetectorOnGestureListenerC3049Ya gestureDetectorOnGestureListenerC3049Ya, InterfaceC3147f5 interfaceC3147f5) {
        this.f2062a = gestureDetectorOnGestureListenerC3049Ya;
        this.f2063b = interfaceC3147f5;
    }

    /* JADX INFO: renamed from: a */
    public static final boolean m2129a(View view, MotionEvent motionEvent) {
        return true;
    }

    /* JADX INFO: renamed from: b */
    public static boolean m2131b() {
        Context contextM1254d = C2849Kb.m1254d();
        if (contextM1254d == null) {
            return false;
        }
        Object systemService = contextM1254d.getSystemService("audio");
        AudioManager audioManager = systemService instanceof AudioManager ? (AudioManager) systemService : null;
        return audioManager != null && audioManager.isWiredHeadsetOn();
    }

    /* JADX INFO: renamed from: a */
    public final void m2133a(String url, Activity activity) {
        Intrinsics.checkNotNullParameter(url, "url");
        Intrinsics.checkNotNullParameter(activity, "activity");
        InterfaceC3147f5 interfaceC3147f5 = this.f2063b;
        if (interfaceC3147f5 != null) {
            ((C3162g5) interfaceC3147f5).m2152c("MraidMediaProcessor", "doPlayMedia");
        }
        C3003V6 c3003v6 = new C3003V6(activity, this.f2063b);
        this.f2064c = c3003v6;
        c3003v6.setPlaybackData(url);
        ViewGroup viewGroup = (ViewGroup) activity.findViewById(R.id.content);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -1);
        layoutParams.addRule(13);
        C3003V6 c3003v62 = this.f2064c;
        if (c3003v62 != null) {
            c3003v62.setLayoutParams(layoutParams);
        }
        C3017W6 c3017w6 = new C3017W6(activity);
        c3017w6.setOnTouchListener(new View.OnTouchListener() { // from class: com.inmobi.media.f7$$ExternalSyntheticLambda0
            @Override // android.view.View.OnTouchListener
            public final boolean onTouch(View view, MotionEvent motionEvent) {
                return C3149f7.m2129a(view, motionEvent);
            }
        });
        c3017w6.setBackgroundColor(ViewCompat.MEASURED_STATE_MASK);
        c3017w6.addView(this.f2064c);
        InterfaceC3147f5 interfaceC3147f52 = this.f2063b;
        if (interfaceC3147f52 != null) {
            ((C3162g5) interfaceC3147f52).m2147a("MraidMediaProcessor", "adding media view on top");
        }
        viewGroup.addView(c3017w6, new ViewGroup.LayoutParams(-1, -1));
        C3003V6 c3003v63 = this.f2064c;
        if (c3003v63 != null) {
            c3003v63.setViewContainer(c3017w6);
        }
        C3003V6 c3003v64 = this.f2064c;
        if (c3003v64 != null) {
            c3003v64.requestFocus();
        }
        C3003V6 c3003v65 = this.f2064c;
        if (c3003v65 != null) {
            c3003v65.setOnKeyListener(new View.OnKeyListener() { // from class: com.inmobi.media.f7$$ExternalSyntheticLambda1
                @Override // android.view.View.OnKeyListener
                public final boolean onKey(View view, int i, KeyEvent keyEvent) {
                    return C3149f7.m2130a(this.f$0, view, i, keyEvent);
                }
            });
        }
        C3003V6 c3003v66 = this.f2064c;
        if (c3003v66 != null) {
            c3003v66.setListener(new C3134e7(this));
        }
        C3003V6 c3003v67 = this.f2064c;
        if (c3003v67 != null) {
            c3003v67.m1875a();
        }
    }

    /* JADX INFO: renamed from: a */
    public static final boolean m2130a(C3149f7 this$0, View view, int i, KeyEvent keyEvent) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        if (4 != i || keyEvent.getAction() != 0) {
            return false;
        }
        C3003V6 c3003v6 = this$0.f2064c;
        if (c3003v6 == null) {
            return true;
        }
        c3003v6.m1876b();
        return true;
    }

    /* JADX INFO: renamed from: a */
    public final int m2132a() {
        AdConfig.RenderingConfig renderingConfig;
        InterfaceC3147f5 interfaceC3147f5 = this.f2063b;
        if (interfaceC3147f5 != null) {
            ((C3162g5) interfaceC3147f5).m2152c("MraidMediaProcessor", "deviceVolume");
        }
        Context contextM1254d = C2849Kb.m1254d();
        if (contextM1254d == null) {
            return -1;
        }
        GestureDetectorOnGestureListenerC3049Ya gestureDetectorOnGestureListenerC3049Ya = this.f2062a;
        if (((gestureDetectorOnGestureListenerC3049Ya == null || (renderingConfig = gestureDetectorOnGestureListenerC3049Ya.getRenderingConfig()) == null) ? false : renderingConfig.getEnablePubMuteControl()) && C2849Kb.m1263o()) {
            return 0;
        }
        Object systemService = contextM1254d.getSystemService("audio");
        AudioManager audioManager = systemService instanceof AudioManager ? (AudioManager) systemService : null;
        if (audioManager != null) {
            return audioManager.getStreamVolume(3);
        }
        return -1;
    }
}
