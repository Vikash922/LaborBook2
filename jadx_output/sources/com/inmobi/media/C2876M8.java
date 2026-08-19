package com.inmobi.media;

import android.content.Context;
import android.graphics.Bitmap;
import android.widget.ImageView;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.inmobi.media.M8 */
/* JADX INFO: loaded from: classes6.dex */
public final class C2876M8 extends RelativeLayout {

    /* JADX INFO: renamed from: a */
    public final String f1261a;

    /* JADX INFO: renamed from: b */
    public C2861L8 f1262b;

    /* JADX INFO: renamed from: c */
    public ImageView f1263c;

    /* JADX INFO: renamed from: d */
    public ProgressBar f1264d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2876M8(Context context) {
        super(context);
        Intrinsics.checkNotNullParameter(context, "context");
        this.f1261a = "M8";
        Context context2 = getContext();
        Intrinsics.checkNotNullExpressionValue(context2, "getContext(...)");
        setVideoView(new C2861L8(context2));
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -1);
        layoutParams.addRule(13);
        addView(getVideoView(), layoutParams);
        ImageView imageView = new ImageView(getContext());
        imageView.setScaleType(ImageView.ScaleType.FIT_XY);
        imageView.setVisibility(8);
        setPosterImage(imageView);
        addView(getPosterImage(), layoutParams);
        ProgressBar progressBar = new ProgressBar(getContext());
        progressBar.setVisibility(8);
        setProgressBar(progressBar);
        RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams2.addRule(13);
        addView(getProgressBar(), layoutParams2);
        Context context3 = getContext();
        Intrinsics.checkNotNullExpressionValue(context3, "getContext(...)");
        C2756E8 c2756e8 = new C2756E8(context3, null, 0);
        RelativeLayout.LayoutParams layoutParams3 = new RelativeLayout.LayoutParams(-1, -1);
        layoutParams3.addRule(13);
        getVideoView().setMediaController(c2756e8);
        addView(c2756e8, layoutParams3);
    }

    public final ImageView getPosterImage() {
        ImageView imageView = this.f1263c;
        if (imageView != null) {
            return imageView;
        }
        Intrinsics.throwUninitializedPropertyAccessException("posterImage");
        return null;
    }

    public final ProgressBar getProgressBar() {
        ProgressBar progressBar = this.f1264d;
        if (progressBar != null) {
            return progressBar;
        }
        Intrinsics.throwUninitializedPropertyAccessException("progressBar");
        return null;
    }

    public final C2861L8 getVideoView() {
        C2861L8 c2861l8 = this.f1262b;
        if (c2861l8 != null) {
            return c2861l8;
        }
        Intrinsics.throwUninitializedPropertyAccessException("videoView");
        return null;
    }

    public final void setPosterImage(ImageView imageView) {
        Intrinsics.checkNotNullParameter(imageView, "<set-?>");
        this.f1263c = imageView;
    }

    public final void setProgressBar(ProgressBar progressBar) {
        Intrinsics.checkNotNullParameter(progressBar, "<set-?>");
        this.f1264d = progressBar;
    }

    public final void setVideoView(C2861L8 c2861l8) {
        Intrinsics.checkNotNullParameter(c2861l8, "<set-?>");
        this.f1262b = c2861l8;
    }

    public final void setPosterImage(Bitmap bitmap) {
        getPosterImage().setImageBitmap(bitmap);
    }
}
