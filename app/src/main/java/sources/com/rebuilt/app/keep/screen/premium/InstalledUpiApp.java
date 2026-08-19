package com.rebuilt.app.keep.screen.premium;

import android.graphics.drawable.Drawable;
import com.facebook.appevents.iap.InAppPurchaseConstants;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: UpiAppDetector.kt */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(m2721d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0012\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B3\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\b\b\u0002\u0010\b\u001a\u00020\t¢\u0006\u0004\b\n\u0010\u000bJ\t\u0010\u0013\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0014\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0015\u001a\u00020\u0003HÆ\u0003J\u000b\u0010\u0016\u001a\u0004\u0018\u00010\u0007HÆ\u0003J\t\u0010\u0017\u001a\u00020\tHÆ\u0003J=\u0010\u0018\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u00032\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00072\b\b\u0002\u0010\b\u001a\u00020\tHÆ\u0001J\u0013\u0010\u0019\u001a\u00020\t2\b\u0010\u001a\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u001b\u001a\u00020\u001cHÖ\u0001J\t\u0010\u001d\u001a\u00020\u0003HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\rR\u0011\u0010\u0004\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\rR\u0011\u0010\u0005\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\rR\u0013\u0010\u0006\u001a\u0004\u0018\u00010\u0007¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\u0011R\u0011\u0010\b\u001a\u00020\t¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\u0012¨\u0006\u001e"}, m2722d2 = {"Lcom/laborbook/keep/screen/premium/InstalledUpiApp;", "", "packageName", "", "displayName", "appLabel", "icon", "Landroid/graphics/drawable/Drawable;", "isInstalled", "", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Z)V", "getPackageName", "()Ljava/lang/String;", "getDisplayName", "getAppLabel", "getIcon", "()Landroid/graphics/drawable/Drawable;", "()Z", "component1", "component2", "component3", "component4", "component5", "copy", "equals", "other", "hashCode", "", InAppPurchaseConstants.METHOD_TO_STRING, "keep_release"}, m2723k = 1, m2724mv = {2, 0, 0}, m2726xi = 48)
public final /* data */ class InstalledUpiApp {
    private final String appLabel;
    private final String displayName;
    private final Drawable icon;
    private final boolean isInstalled;
    private final String packageName;

    public static /* synthetic */ InstalledUpiApp copy$default(InstalledUpiApp installedUpiApp, String str, String str2, String str3, Drawable drawable, boolean z, int i, Object obj) {
        if ((i & 1) != 0) {
            str = installedUpiApp.packageName;
        }
        if ((i & 2) != 0) {
            str2 = installedUpiApp.displayName;
        }
        String str4 = str2;
        if ((i & 4) != 0) {
            str3 = installedUpiApp.appLabel;
        }
        String str5 = str3;
        if ((i & 8) != 0) {
            drawable = installedUpiApp.icon;
        }
        Drawable drawable2 = drawable;
        if ((i & 16) != 0) {
            z = installedUpiApp.isInstalled;
        }
        return installedUpiApp.copy(str, str4, str5, drawable2, z);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getPackageName() {
        return this.packageName;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getDisplayName() {
        return this.displayName;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final String getAppLabel() {
        return this.appLabel;
    }

    /* JADX INFO: renamed from: component4, reason: from getter */
    public final Drawable getIcon() {
        return this.icon;
    }

    /* JADX INFO: renamed from: component5, reason: from getter */
    public final boolean getIsInstalled() {
        return this.isInstalled;
    }

    public final InstalledUpiApp copy(String packageName, String displayName, String appLabel, Drawable icon, boolean isInstalled) {
        Intrinsics.checkNotNullParameter(packageName, "packageName");
        Intrinsics.checkNotNullParameter(displayName, "displayName");
        Intrinsics.checkNotNullParameter(appLabel, "appLabel");
        return new InstalledUpiApp(packageName, displayName, appLabel, icon, isInstalled);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof InstalledUpiApp)) {
            return false;
        }
        InstalledUpiApp installedUpiApp = (InstalledUpiApp) other;
        return Intrinsics.areEqual(this.packageName, installedUpiApp.packageName) && Intrinsics.areEqual(this.displayName, installedUpiApp.displayName) && Intrinsics.areEqual(this.appLabel, installedUpiApp.appLabel) && Intrinsics.areEqual(this.icon, installedUpiApp.icon) && this.isInstalled == installedUpiApp.isInstalled;
    }

    public int hashCode() {
        int iHashCode = ((((this.packageName.hashCode() * 31) + this.displayName.hashCode()) * 31) + this.appLabel.hashCode()) * 31;
        Drawable drawable = this.icon;
        return ((iHashCode + (drawable == null ? 0 : drawable.hashCode())) * 31) + Boolean.hashCode(this.isInstalled);
    }

    public String toString() {
        return "InstalledUpiApp(packageName=" + this.packageName + ", displayName=" + this.displayName + ", appLabel=" + this.appLabel + ", icon=" + this.icon + ", isInstalled=" + this.isInstalled + ')';
    }

    public InstalledUpiApp(String packageName, String displayName, String appLabel, Drawable drawable, boolean z) {
        Intrinsics.checkNotNullParameter(packageName, "packageName");
        Intrinsics.checkNotNullParameter(displayName, "displayName");
        Intrinsics.checkNotNullParameter(appLabel, "appLabel");
        this.packageName = packageName;
        this.displayName = displayName;
        this.appLabel = appLabel;
        this.icon = drawable;
        this.isInstalled = z;
    }

    public /* synthetic */ InstalledUpiApp(String str, String str2, String str3, Drawable drawable, boolean z, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, str2, str3, drawable, (i & 16) != 0 ? true : z);
    }

    public final String getPackageName() {
        return this.packageName;
    }

    public final String getDisplayName() {
        return this.displayName;
    }

    public final String getAppLabel() {
        return this.appLabel;
    }

    public final Drawable getIcon() {
        return this.icon;
    }

    public final boolean isInstalled() {
        return this.isInstalled;
    }
}
