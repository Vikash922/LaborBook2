package com.boilerplate.uikit.views;

import android.view.View;
import android.view.animation.Animation;
import android.view.animation.ScaleAnimation;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.boilerplate.uikit.views.util.AnimationType;
import com.itextpdf.forms.xfdf.XfdfConstants;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
@Metadata(m2721d1 = {"\u0000\u001a\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\u001a\u001e\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\b\b\u0002\u0010\u0003\u001a\u00020\u00042\b\b\u0002\u0010\u0005\u001a\u00020\u0006\u001a\u001e\u0010\u0007\u001a\u00020\u0001*\u00020\u00022\b\b\u0002\u0010\u0003\u001a\u00020\u00042\b\b\u0002\u0010\u0005\u001a\u00020\u0006\u001a\u001e\u0010\b\u001a\u00020\u0001*\u00020\u00022\b\b\u0002\u0010\u0003\u001a\u00020\u00042\b\b\u0002\u0010\u0005\u001a\u00020\u0006¨\u0006\t"}, m2722d2 = {XfdfConstants.INVISIBLE, "", "Landroid/view/View;", TypedValues.TransitionType.S_DURATION, "", "animationType", "", "hide", "show", "uikit_release"}, m2723k = 2, m2724mv = {2, 0, 0}, m2726xi = 48)
public final class ExtentionsKt {
    public static final void hide(final View view, long j, String animationType) {
        Intrinsics.checkNotNullParameter(view, "<this>");
        Intrinsics.checkNotNullParameter(animationType, "animationType");
        if (view.getVisibility() == 0) {
            if (!Intrinsics.areEqual(animationType, AnimationType.ZOOM)) {
                if (Intrinsics.areEqual(animationType, "none")) {
                    view.setVisibility(8);
                }
            } else {
                ScaleAnimation scaleAnimation = new ScaleAnimation(1.0f, 0.0f, 1.0f, 0.0f, 1, 0.5f, 1, 0.5f);
                scaleAnimation.setFillAfter(true);
                scaleAnimation.setDuration(j);
                scaleAnimation.setAnimationListener(new Animation.AnimationListener() { // from class: com.boilerplate.uikit.views.ExtentionsKt$hide$scaleAnimation$1$1
                    @Override // android.view.animation.Animation.AnimationListener
                    public void onAnimationEnd(Animation animation) {
                        Intrinsics.checkNotNullParameter(animation, "animation");
                        view.setVisibility(8);
                    }

                    @Override // android.view.animation.Animation.AnimationListener
                    public void onAnimationRepeat(Animation animation) {
                        Intrinsics.checkNotNullParameter(animation, "animation");
                    }

                    @Override // android.view.animation.Animation.AnimationListener
                    public void onAnimationStart(Animation animation) {
                        Intrinsics.checkNotNullParameter(animation, "animation");
                    }
                });
                view.startAnimation(scaleAnimation);
            }
        }
    }

    public static /* synthetic */ void hide$default(View view, long j, String str, int i, Object obj) {
        if ((i & 1) != 0) {
            j = 300;
        }
        if ((i & 2) != 0) {
            str = "none";
        }
        hide(view, j, str);
    }

    public static final void invisible(final View view, long j, String animationType) {
        Intrinsics.checkNotNullParameter(view, "<this>");
        Intrinsics.checkNotNullParameter(animationType, "animationType");
        if (view.getVisibility() == 0) {
            if (!Intrinsics.areEqual(animationType, AnimationType.ZOOM)) {
                if (Intrinsics.areEqual(animationType, "none")) {
                    view.setVisibility(4);
                }
            } else {
                ScaleAnimation scaleAnimation = new ScaleAnimation(1.0f, 0.0f, 1.0f, 0.0f, 1, 0.5f, 1, 0.5f);
                scaleAnimation.setFillAfter(true);
                scaleAnimation.setDuration(j);
                scaleAnimation.setAnimationListener(new Animation.AnimationListener() { // from class: com.boilerplate.uikit.views.ExtentionsKt$invisible$scaleAnimation$1$1
                    @Override // android.view.animation.Animation.AnimationListener
                    public void onAnimationEnd(Animation animation) {
                        Intrinsics.checkNotNullParameter(animation, "animation");
                        view.setVisibility(4);
                    }

                    @Override // android.view.animation.Animation.AnimationListener
                    public void onAnimationRepeat(Animation animation) {
                        Intrinsics.checkNotNullParameter(animation, "animation");
                    }

                    @Override // android.view.animation.Animation.AnimationListener
                    public void onAnimationStart(Animation animation) {
                        Intrinsics.checkNotNullParameter(animation, "animation");
                    }
                });
                view.startAnimation(scaleAnimation);
            }
        }
    }

    public static /* synthetic */ void invisible$default(View view, long j, String str, int i, Object obj) {
        if ((i & 1) != 0) {
            j = 300;
        }
        if ((i & 2) != 0) {
            str = "none";
        }
        invisible(view, j, str);
    }

    public static final void show(final View view, long j, String animationType) {
        Intrinsics.checkNotNullParameter(view, "<this>");
        Intrinsics.checkNotNullParameter(animationType, "animationType");
        if (view.getVisibility() == 8 || view.getVisibility() == 4) {
            if (!Intrinsics.areEqual(animationType, AnimationType.ZOOM)) {
                if (Intrinsics.areEqual(animationType, "none")) {
                    view.setVisibility(0);
                }
            } else {
                ScaleAnimation scaleAnimation = new ScaleAnimation(0.0f, 1.0f, 0.0f, 1.0f, 1, 0.5f, 1, 0.5f);
                scaleAnimation.setFillAfter(true);
                scaleAnimation.setDuration(j);
                scaleAnimation.setAnimationListener(new Animation.AnimationListener() { // from class: com.boilerplate.uikit.views.ExtentionsKt$show$scaleAnimation$1$1
                    @Override // android.view.animation.Animation.AnimationListener
                    public void onAnimationEnd(Animation animation) {
                        Intrinsics.checkNotNullParameter(animation, "animation");
                    }

                    @Override // android.view.animation.Animation.AnimationListener
                    public void onAnimationRepeat(Animation animation) {
                        Intrinsics.checkNotNullParameter(animation, "animation");
                    }

                    @Override // android.view.animation.Animation.AnimationListener
                    public void onAnimationStart(Animation animation) {
                        Intrinsics.checkNotNullParameter(animation, "animation");
                        view.setVisibility(0);
                    }
                });
                view.startAnimation(scaleAnimation);
            }
        }
    }

    public static /* synthetic */ void show$default(View view, long j, String str, int i, Object obj) {
        if ((i & 1) != 0) {
            j = 300;
        }
        if ((i & 2) != 0) {
            str = "none";
        }
        show(view, j, str);
    }
}
