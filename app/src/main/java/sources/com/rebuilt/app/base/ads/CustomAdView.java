package com.rebuilt.app.base.ads;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.util.AttributeSet;
import android.view.View;
import androidx.appcompat.widget.AppCompatImageView;
import com.bumptech.glide.Glide;
import com.bumptech.glide.load.engine.DiskCacheStrategy;
import com.bumptech.glide.request.BaseRequestOptions;
import com.bumptech.glide.request.RequestOptions;
import com.rebuilt.app.base.analytics.Analytics;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: CustomAdView.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(m2721d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0005\u0018\u00002\u00020\u0001B'\b\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0007¢\u0006\u0004\b\b\u0010\tJ\u000e\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\f\u001a\u00020\rJ\u000e\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\n\u001a\u00020\u000bJ\u0006\u0010\u0011\u001a\u00020\u000fJ\u0006\u0010\u0012\u001a\u00020\u000fJ\b\u0010\u0013\u001a\u00020\u000fH\u0002R\u0010\u0010\n\u001a\u0004\u0018\u00010\u000bX\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\f\u001a\u0004\u0018\u00010\rX\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\u0014"}, m2722d2 = {"Lcom/laborbook/base/ads/CustomAdView;", "Landroidx/appcompat/widget/AppCompatImageView;", "context", "Landroid/content/Context;", "attrs", "Landroid/util/AttributeSet;", "defStyleAttr", "", "<init>", "(Landroid/content/Context;Landroid/util/AttributeSet;I)V", "customAdData", "Lcom/laborbook/base/ads/CustomAdData;", "analytics", "Lcom/laborbook/base/analytics/Analytics;", "setAnalytics", "", "loadAd", "hide", "show", "handleAdClick", "base_release"}, m2723k = 1, m2724mv = {2, 0, 0}, m2726xi = 48)
public final class CustomAdView extends AppCompatImageView {
    private Analytics analytics;
    private CustomAdData customAdData;

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public CustomAdView(Context context) {
        this(context, null, 0, 6, null);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public CustomAdView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0, 4, null);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    public /* synthetic */ CustomAdView(Context context, AttributeSet attributeSet, int i, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i2 & 2) != 0 ? null : attributeSet, (i2 & 4) != 0 ? 0 : i);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CustomAdView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        Intrinsics.checkNotNullParameter(context, "context");
        setOnClickListener(new View.OnClickListener() { // from class: com.rebuilt.app.base.ads.CustomAdView$$ExternalSyntheticLambda0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                CustomAdView._init_$lambda$0(this.f$0, view);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void _init_$lambda$0(CustomAdView this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.handleAdClick();
    }

    public final void setAnalytics(Analytics analytics) {
        Intrinsics.checkNotNullParameter(analytics, "analytics");
        this.analytics = analytics;
    }

    public final void loadAd(CustomAdData customAdData) {
        Intrinsics.checkNotNullParameter(customAdData, "customAdData");
        this.customAdData = customAdData;
        if (customAdData.isValid()) {
            Glide.with(getContext()).load(customAdData.getImageUrl()).apply((BaseRequestOptions<?>) new RequestOptions().diskCacheStrategy(DiskCacheStrategy.ALL).centerCrop()).into(this);
            setVisibility(0);
        } else {
            setVisibility(8);
        }
    }

    public final void hide() {
        setVisibility(8);
    }

    public final void show() {
        setVisibility(0);
    }

    private final void handleAdClick() {
        CustomAdData customAdData = this.customAdData;
        if (customAdData == null || !customAdData.isValid()) {
            return;
        }
        try {
            Intent intent = new Intent("android.intent.action.VIEW", Uri.parse(customAdData.getRedirectUrl()));
            intent.addFlags(268435456);
            getContext().startActivity(intent);
        } catch (Exception unused) {
        }
    }
}
