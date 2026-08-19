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

/* JADX INFO: loaded from: classes6.dex */
public final class E8 extends FrameLayout {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f108a;
    public A8 b;
    public final D8 c;
    public L8 d;
    public boolean e;
    public final C0507t3 f;
    public final C0507t3 g;
    public final ProgressBar h;
    public final RelativeLayout i;
    public boolean j;
    public final float k;
    public final View.OnClickListener l;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public E8(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        Intrinsics.checkNotNullParameter(context, "context");
        this.f108a = "E8";
        this.k = N3.d().c;
        RelativeLayout relativeLayout = new RelativeLayout(context);
        this.i = relativeLayout;
        this.f = new C0507t3(context, (byte) 9, null);
        this.g = new C0507t3(context, (byte) 10, null);
        ProgressBar progressBar = new ProgressBar(context, null, R.attr.progressBarStyleHorizontal);
        this.h = progressBar;
        progressBar.setScaleY(0.8f);
        addView(relativeLayout, new RelativeLayout.LayoutParams(-1, -1));
        relativeLayout.setPadding(0, 0, 0, 0);
        a();
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -2);
        layoutParams.addRule(12, -1);
        float f = N3.d().c;
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
        this.c = new D8(this);
        this.l = new View.OnClickListener() { // from class: com.inmobi.media.E8$$ExternalSyntheticLambda0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                E8.a(this.f$0, view);
            }
        };
    }

    public final void a() {
        int i = (int) (30 * this.k);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(i, i);
        layoutParams.addRule(9, -1);
        layoutParams.addRule(12, -1);
        this.i.addView(this.f, layoutParams);
        this.f.setOnClickListener(this.l);
    }

    public final void b() {
        int i = (int) (30 * this.k);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(i, i);
        layoutParams.addRule(9, -1);
        layoutParams.addRule(12, -1);
        this.i.addView(this.g, layoutParams);
        this.g.setOnClickListener(this.l);
    }

    public final void c() {
        if (this.e) {
            try {
                D8 d8 = this.c;
                if (d8 != null) {
                    d8.removeMessages(2);
                }
                setVisibility(8);
            } catch (IllegalArgumentException e) {
                String TAG = this.f108a;
                Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
                C0551w5 c0551w5 = C0551w5.f513a;
                C0264d2 event = new C0264d2(e);
                Intrinsics.checkNotNullParameter(event, "event");
                C0551w5.d.a(event);
            }
            this.e = false;
        }
    }

    public final void d() {
        if (!this.e) {
            L8 l8 = this.d;
            if (l8 != null) {
                int currentPosition = l8.getCurrentPosition();
                int duration = l8.getDuration();
                if (duration != 0) {
                    this.h.setProgress((currentPosition * 100) / duration);
                }
            }
            this.e = true;
            L8 l82 = this.d;
            Object tag = l82 != null ? l82.getTag() : null;
            C8 c8 = tag instanceof C8 ? (C8) tag : null;
            if (c8 != null) {
                this.f.setVisibility(c8.A ? 0 : 4);
                this.h.setVisibility(c8.C ? 0 : 4);
            }
            setVisibility(0);
        }
        D8 d8 = this.c;
        if (d8 != null) {
            d8.sendEmptyMessage(2);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public final boolean dispatchKeyEvent(KeyEvent event) {
        L8 l8;
        L8 l82;
        Intrinsics.checkNotNullParameter(event, "event");
        int keyCode = event.getKeyCode();
        boolean z = event.getRepeatCount() == 0 && event.getAction() == 0;
        if (keyCode != 24 && keyCode != 25 && keyCode != 27) {
            if (keyCode != 62 && keyCode != 79) {
                if (keyCode != 164) {
                    if (keyCode != 85) {
                        if (keyCode != 86) {
                            if (keyCode == 126) {
                                if (z && (l82 = this.d) != null && !l82.isPlaying()) {
                                    L8 l83 = this.d;
                                    if (l83 != null) {
                                        l83.start();
                                    }
                                    d();
                                }
                                return true;
                            }
                            if (keyCode != 127) {
                                d();
                                return super.dispatchKeyEvent(event);
                            }
                        }
                        if (z && (l8 = this.d) != null && l8.isPlaying()) {
                            L8 l84 = this.d;
                            if (l84 != null) {
                                l84.pause();
                            }
                            d();
                        }
                        return true;
                    }
                }
            }
            if (z) {
                L8 l85 = this.d;
                if (l85 != null) {
                    if (l85.isPlaying()) {
                        l85.pause();
                    } else {
                        l85.start();
                    }
                }
                d();
            }
            return true;
        }
        return super.dispatchKeyEvent(event);
    }

    public final Map<View, FriendlyObstructionPurpose> getFriendlyViews() {
        ProgressBar progressBar = this.h;
        FriendlyObstructionPurpose friendlyObstructionPurpose = FriendlyObstructionPurpose.VIDEO_CONTROLS;
        return MapsKt.hashMapOf(TuplesKt.to(progressBar, friendlyObstructionPurpose), TuplesKt.to(this.f, friendlyObstructionPurpose), TuplesKt.to(this.g, friendlyObstructionPurpose));
    }

    @Override // android.view.View
    public final void onInitializeAccessibilityEvent(AccessibilityEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        super.onInitializeAccessibilityEvent(event);
        event.setClassName(E8.class.getName());
    }

    @Override // android.view.View
    public final void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo info) {
        Intrinsics.checkNotNullParameter(info, "info");
        super.onInitializeAccessibilityNodeInfo(info);
        info.setClassName(E8.class.getName());
    }

    @Override // android.view.View
    public final boolean onTrackballEvent(MotionEvent ev) {
        Intrinsics.checkNotNullParameter(ev, "ev");
        L8 l8 = this.d;
        if (l8 == null || !l8.a()) {
            return false;
        }
        if (this.e) {
            c();
            return false;
        }
        d();
        return false;
    }

    public final void setMediaPlayer(L8 videoView) {
        Intrinsics.checkNotNullParameter(videoView, "videoView");
        this.d = videoView;
        Object tag = videoView != null ? videoView.getTag() : null;
        C8 c8 = tag instanceof C8 ? (C8) tag : null;
        if (c8 == null || !c8.A || c8.c()) {
            return;
        }
        this.j = true;
        this.i.removeView(this.g);
        this.i.removeView(this.f);
        b();
    }

    public final void setVideoAd(A8 a8) {
        this.b = a8;
    }

    public static final void a(E8 this$0, View view) {
        A8 a8;
        A8 a82;
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        L8 l8 = this$0.d;
        if (l8 != null) {
            Object tag = l8.getTag();
            C8 c8 = tag instanceof C8 ? (C8) tag : null;
            if (this$0.j) {
                L8 l82 = this$0.d;
                if (l82 != null) {
                    l82.k();
                }
                this$0.j = false;
                this$0.i.removeView(this$0.g);
                this$0.i.removeView(this$0.f);
                this$0.a();
                if (c8 == null || (a82 = this$0.b) == null) {
                    return;
                }
                try {
                    a82.i(c8);
                    c8.z = true;
                    return;
                } catch (Exception e) {
                    String TAG = this$0.f108a;
                    Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
                    C0551w5 c0551w5 = C0551w5.f513a;
                    C0551w5.d.a(AbstractC0251c5.a(e, "event"));
                    return;
                }
            }
            L8 l83 = this$0.d;
            if (l83 != null) {
                l83.c();
            }
            this$0.j = true;
            this$0.i.removeView(this$0.f);
            this$0.i.removeView(this$0.g);
            this$0.b();
            if (c8 == null || (a8 = this$0.b) == null) {
                return;
            }
            try {
                a8.e(c8);
                c8.z = false;
            } catch (Exception e2) {
                String TAG2 = this$0.f108a;
                Intrinsics.checkNotNullExpressionValue(TAG2, "TAG");
                C0551w5 c0551w52 = C0551w5.f513a;
                C0551w5.d.a(AbstractC0251c5.a(e2, "event"));
            }
        }
    }
}
