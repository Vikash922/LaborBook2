package com.inmobi.media;

import android.R;
import android.content.Context;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.LayerDrawable;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.FrameLayout;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import com.iab.omid.library.inmobi.adsession.FriendlyObstructionPurpose;
import java.util.Map;
import kotlin.TuplesKt;
import kotlin.collections.MapsKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.inmobi.media.E8 */
/* JADX INFO: loaded from: classes6.dex */
public final class C2756E8 extends FrameLayout {

    /* JADX INFO: renamed from: a */
    public final String f985a;

    /* JADX INFO: renamed from: b */
    public C2696A8 f986b;

    /* JADX INFO: renamed from: c */
    public final HandlerC2741D8 f987c;

    /* JADX INFO: renamed from: d */
    public C2861L8 f988d;

    /* JADX INFO: renamed from: e */
    public boolean f989e;

    /* JADX INFO: renamed from: f */
    public final C3355t3 f990f;

    /* JADX INFO: renamed from: g */
    public final C3355t3 f991g;

    /* JADX INFO: renamed from: h */
    public final ProgressBar f992h;

    /* JADX INFO: renamed from: i */
    public final RelativeLayout f993i;

    /* JADX INFO: renamed from: j */
    public boolean f994j;

    /* JADX INFO: renamed from: k */
    public final float f995k;

    /* JADX INFO: renamed from: l */
    public final View.OnClickListener f996l;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2756E8(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        Intrinsics.checkNotNullParameter(context, "context");
        this.f985a = "E8";
        this.f995k = AbstractC2886N3.m1388d().f1332c;
        RelativeLayout relativeLayout = new RelativeLayout(context);
        this.f993i = relativeLayout;
        this.f990f = new C3355t3(context, (byte) 9, null);
        this.f991g = new C3355t3(context, (byte) 10, null);
        ProgressBar progressBar = new ProgressBar(context, null, R.attr.progressBarStyleHorizontal);
        this.f992h = progressBar;
        progressBar.setScaleY(0.8f);
        addView(relativeLayout, new RelativeLayout.LayoutParams(-1, -1));
        relativeLayout.setPadding(0, 0, 0, 0);
        m1045a();
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -2);
        layoutParams.addRule(12, -1);
        float f = AbstractC2886N3.m1388d().f1332c;
        layoutParams.setMargins(0, (int) ((-6) * f), 0, (int) ((-8) * f));
        Drawable progressDrawable = progressBar.getProgressDrawable();
        LayerDrawable layerDrawable = progressDrawable instanceof LayerDrawable ? (LayerDrawable) progressDrawable : null;
        if (layerDrawable != null) {
            Drawable drawable = layerDrawable.getDrawable(0);
            PorterDuff.Mode mode = PorterDuff.Mode.SRC_IN;
            drawable.setColorFilter(new PorterDuffColorFilter(-1, mode));
            layerDrawable.getDrawable(2).setColorFilter(new PorterDuffColorFilter(-327674, mode));
        }
        relativeLayout.addView(progressBar, layoutParams);
        this.f987c = new HandlerC2741D8(this);
        this.f996l = new View.OnClickListener() { // from class: com.inmobi.media.E8$$ExternalSyntheticLambda0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                C2756E8.m1044a(this.f$0, view);
            }
        };
    }

    /* JADX INFO: renamed from: a */
    public final void m1045a() {
        int i = (int) (30 * this.f995k);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(i, i);
        layoutParams.addRule(9, -1);
        layoutParams.addRule(12, -1);
        this.f993i.addView(this.f990f, layoutParams);
        this.f990f.setOnClickListener(this.f996l);
    }

    /* JADX INFO: renamed from: b */
    public final void m1046b() {
        int i = (int) (30 * this.f995k);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(i, i);
        layoutParams.addRule(9, -1);
        layoutParams.addRule(12, -1);
        this.f993i.addView(this.f991g, layoutParams);
        this.f991g.setOnClickListener(this.f996l);
    }

    /* JADX INFO: renamed from: c */
    public final void m1047c() {
        if (this.f989e) {
            try {
                HandlerC2741D8 handlerC2741D8 = this.f987c;
                if (handlerC2741D8 != null) {
                    handlerC2741D8.removeMessages(2);
                }
                setVisibility(8);
            } catch (IllegalArgumentException e) {
                String TAG = this.f985a;
                Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
                C3402w5 c3402w5 = C3402w5.f2709a;
                C3114d2 event = new C3114d2(e);
                Intrinsics.checkNotNullParameter(event, "event");
                C3402w5.f2712d.m2158a(event);
            }
            this.f989e = false;
        }
    }

    /* JADX INFO: renamed from: d */
    public final void m1048d() {
        if (!this.f989e) {
            C2861L8 c2861l8 = this.f988d;
            if (c2861l8 != null) {
                int currentPosition = c2861l8.getCurrentPosition();
                int duration = c2861l8.getDuration();
                if (duration != 0) {
                    this.f992h.setProgress((currentPosition * 100) / duration);
                }
            }
            this.f989e = true;
            C2861L8 c2861l82 = this.f988d;
            Object tag = c2861l82 != null ? c2861l82.getTag() : null;
            C2726C8 c2726c8 = tag instanceof C2726C8 ? (C2726C8) tag : null;
            if (c2726c8 != null) {
                this.f990f.setVisibility(c2726c8.f885A ? 0 : 4);
                this.f992h.setVisibility(c2726c8.f887C ? 0 : 4);
            }
            setVisibility(0);
        }
        HandlerC2741D8 handlerC2741D8 = this.f987c;
        if (handlerC2741D8 != null) {
            handlerC2741D8.sendEmptyMessage(2);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public final boolean dispatchKeyEvent(KeyEvent event) {
        C2861L8 c2861l8;
        C2861L8 c2861l82;
        Intrinsics.checkNotNullParameter(event, "event");
        int keyCode = event.getKeyCode();
        boolean z = event.getRepeatCount() == 0 && event.getAction() == 0;
        if (keyCode != 24 && keyCode != 25 && keyCode != 27) {
            if (keyCode != 62 && keyCode != 79) {
                if (keyCode != 164) {
                    if (keyCode != 85) {
                        if (keyCode != 86) {
                            if (keyCode == 126) {
                                if (z && (c2861l82 = this.f988d) != null && !c2861l82.isPlaying()) {
                                    C2861L8 c2861l83 = this.f988d;
                                    if (c2861l83 != null) {
                                        c2861l83.start();
                                    }
                                    m1048d();
                                }
                                return true;
                            }
                            if (keyCode != 127) {
                                m1048d();
                                return super.dispatchKeyEvent(event);
                            }
                        }
                        if (z && (c2861l8 = this.f988d) != null && c2861l8.isPlaying()) {
                            C2861L8 c2861l84 = this.f988d;
                            if (c2861l84 != null) {
                                c2861l84.pause();
                            }
                            m1048d();
                        }
                        return true;
                    }
                }
            }
            if (z) {
                C2861L8 c2861l85 = this.f988d;
                if (c2861l85 != null) {
                    if (c2861l85.isPlaying()) {
                        c2861l85.pause();
                    } else {
                        c2861l85.start();
                    }
                }
                m1048d();
            }
            return true;
        }
        return super.dispatchKeyEvent(event);
    }

    public final Map<View, FriendlyObstructionPurpose> getFriendlyViews() {
        ProgressBar progressBar = this.f992h;
        FriendlyObstructionPurpose friendlyObstructionPurpose = FriendlyObstructionPurpose.VIDEO_CONTROLS;
        return MapsKt.hashMapOf(TuplesKt.m2729to(progressBar, friendlyObstructionPurpose), TuplesKt.m2729to(this.f990f, friendlyObstructionPurpose), TuplesKt.m2729to(this.f991g, friendlyObstructionPurpose));
    }

    @Override // android.view.View
    public final void onInitializeAccessibilityEvent(AccessibilityEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        super.onInitializeAccessibilityEvent(event);
        event.setClassName(C2756E8.class.getName());
    }

    @Override // android.view.View
    public final void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo info) {
        Intrinsics.checkNotNullParameter(info, "info");
        super.onInitializeAccessibilityNodeInfo(info);
        info.setClassName(C2756E8.class.getName());
    }

    @Override // android.view.View
    public final boolean onTrackballEvent(MotionEvent ev) {
        Intrinsics.checkNotNullParameter(ev, "ev");
        C2861L8 c2861l8 = this.f988d;
        if (c2861l8 == null || !c2861l8.m1301a()) {
            return false;
        }
        if (this.f989e) {
            m1047c();
            return false;
        }
        m1048d();
        return false;
    }

    public final void setMediaPlayer(C2861L8 videoView) {
        Intrinsics.checkNotNullParameter(videoView, "videoView");
        this.f988d = videoView;
        Object tag = videoView != null ? videoView.getTag() : null;
        C2726C8 c2726c8 = tag instanceof C2726C8 ? (C2726C8) tag : null;
        if (c2726c8 == null || !c2726c8.f885A || c2726c8.m920c()) {
            return;
        }
        this.f994j = true;
        this.f993i.removeView(this.f991g);
        this.f993i.removeView(this.f990f);
        m1046b();
    }

    public final void setVideoAd(C2696A8 c2696a8) {
        this.f986b = c2696a8;
    }

    /* JADX INFO: renamed from: a */
    public static final void m1044a(C2756E8 this$0, View view) {
        C2696A8 c2696a8;
        C2696A8 c2696a82;
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        C2861L8 c2861l8 = this$0.f988d;
        if (c2861l8 != null) {
            Object tag = c2861l8.getTag();
            C2726C8 c2726c8 = tag instanceof C2726C8 ? (C2726C8) tag : null;
            if (this$0.f994j) {
                C2861L8 c2861l82 = this$0.f988d;
                if (c2861l82 != null) {
                    c2861l82.m1311k();
                }
                this$0.f994j = false;
                this$0.f993i.removeView(this$0.f991g);
                this$0.f993i.removeView(this$0.f990f);
                this$0.m1045a();
                if (c2726c8 == null || (c2696a82 = this$0.f986b) == null) {
                    return;
                }
                try {
                    c2696a82.m857i(c2726c8);
                    c2726c8.f893z = true;
                    return;
                } catch (Exception e) {
                    String TAG = this$0.f985a;
                    Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
                    C3402w5 c3402w5 = C3402w5.f2709a;
                    C3402w5.f2712d.m2158a(AbstractC3102c5.m2045a(e, "event"));
                    return;
                }
            }
            C2861L8 c2861l83 = this$0.f988d;
            if (c2861l83 != null) {
                c2861l83.m1303c();
            }
            this$0.f994j = true;
            this$0.f993i.removeView(this$0.f990f);
            this$0.f993i.removeView(this$0.f991g);
            this$0.m1046b();
            if (c2726c8 == null || (c2696a8 = this$0.f986b) == null) {
                return;
            }
            try {
                c2696a8.m852e(c2726c8);
                c2726c8.f893z = false;
            } catch (Exception e2) {
                String TAG2 = this$0.f985a;
                Intrinsics.checkNotNullExpressionValue(TAG2, "TAG");
                C3402w5 c3402w52 = C3402w5.f2709a;
                C3402w5.f2712d.m2158a(AbstractC3102c5.m2045a(e2, "event"));
            }
        }
    }
}
