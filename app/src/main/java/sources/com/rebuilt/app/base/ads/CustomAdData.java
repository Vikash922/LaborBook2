package com.rebuilt.app.base.ads;

import com.facebook.appevents.iap.InAppPurchaseConstants;
import com.google.firebase.perf.util.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: CustomAdData.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(m2721d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0012\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B/\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0005\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0005\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0005¢\u0006\u0004\b\b\u0010\tJ\u0006\u0010\u000f\u001a\u00020\u0003J\t\u0010\u0010\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0011\u001a\u00020\u0005HÆ\u0003J\t\u0010\u0012\u001a\u00020\u0005HÆ\u0003J\t\u0010\u0013\u001a\u00020\u0005HÆ\u0003J1\u0010\u0014\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u00052\b\b\u0002\u0010\u0007\u001a\u00020\u0005HÆ\u0001J\u0013\u0010\u0015\u001a\u00020\u00032\b\u0010\u0016\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0017\u001a\u00020\u0018HÖ\u0001J\t\u0010\u0019\u001a\u00020\u0005HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0002\u0010\nR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\fR\u0011\u0010\u0006\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\fR\u0011\u0010\u0007\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\f¨\u0006\u001a"}, m2722d2 = {"Lcom/laborbook/base/ads/CustomAdData;", "", Constants.ENABLE_DISABLE, "", "imageUrl", "", "redirectUrl", "title", "<init>", "(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "()Z", "getImageUrl", "()Ljava/lang/String;", "getRedirectUrl", "getTitle", "isValid", "component1", "component2", "component3", "component4", "copy", "equals", "other", "hashCode", "", InAppPurchaseConstants.METHOD_TO_STRING, "base_release"}, m2723k = 1, m2724mv = {2, 0, 0}, m2726xi = 48)
public final /* data */ class CustomAdData {
    private final String imageUrl;
    private final boolean isEnabled;
    private final String redirectUrl;
    private final String title;

    public CustomAdData() {
        this(false, null, null, null, 15, null);
    }

    public static /* synthetic */ CustomAdData copy$default(CustomAdData customAdData, boolean z, String str, String str2, String str3, int i, Object obj) {
        if ((i & 1) != 0) {
            z = customAdData.isEnabled;
        }
        if ((i & 2) != 0) {
            str = customAdData.imageUrl;
        }
        if ((i & 4) != 0) {
            str2 = customAdData.redirectUrl;
        }
        if ((i & 8) != 0) {
            str3 = customAdData.title;
        }
        return customAdData.copy(z, str, str2, str3);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final boolean getIsEnabled() {
        return this.isEnabled;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getImageUrl() {
        return this.imageUrl;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final String getRedirectUrl() {
        return this.redirectUrl;
    }

    /* JADX INFO: renamed from: component4, reason: from getter */
    public final String getTitle() {
        return this.title;
    }

    public final CustomAdData copy(boolean isEnabled, String imageUrl, String redirectUrl, String title) {
        Intrinsics.checkNotNullParameter(imageUrl, "imageUrl");
        Intrinsics.checkNotNullParameter(redirectUrl, "redirectUrl");
        Intrinsics.checkNotNullParameter(title, "title");
        return new CustomAdData(isEnabled, imageUrl, redirectUrl, title);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof CustomAdData)) {
            return false;
        }
        CustomAdData customAdData = (CustomAdData) other;
        return this.isEnabled == customAdData.isEnabled && Intrinsics.areEqual(this.imageUrl, customAdData.imageUrl) && Intrinsics.areEqual(this.redirectUrl, customAdData.redirectUrl) && Intrinsics.areEqual(this.title, customAdData.title);
    }

    public int hashCode() {
        return (((((Boolean.hashCode(this.isEnabled) * 31) + this.imageUrl.hashCode()) * 31) + this.redirectUrl.hashCode()) * 31) + this.title.hashCode();
    }

    public String toString() {
        return "CustomAdData(isEnabled=" + this.isEnabled + ", imageUrl=" + this.imageUrl + ", redirectUrl=" + this.redirectUrl + ", title=" + this.title + ')';
    }

    public CustomAdData(boolean z, String imageUrl, String redirectUrl, String title) {
        Intrinsics.checkNotNullParameter(imageUrl, "imageUrl");
        Intrinsics.checkNotNullParameter(redirectUrl, "redirectUrl");
        Intrinsics.checkNotNullParameter(title, "title");
        this.isEnabled = z;
        this.imageUrl = imageUrl;
        this.redirectUrl = redirectUrl;
        this.title = title;
    }

    public /* synthetic */ CustomAdData(boolean z, String str, String str2, String str3, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? false : z, (i & 2) != 0 ? "" : str, (i & 4) != 0 ? "" : str2, (i & 8) != 0 ? "" : str3);
    }

    public final boolean isEnabled() {
        return this.isEnabled;
    }

    public final String getImageUrl() {
        return this.imageUrl;
    }

    public final String getRedirectUrl() {
        return this.redirectUrl;
    }

    public final String getTitle() {
        return this.title;
    }

    public final boolean isValid() {
        return this.isEnabled && this.imageUrl.length() > 0 && this.redirectUrl.length() > 0;
    }
}
