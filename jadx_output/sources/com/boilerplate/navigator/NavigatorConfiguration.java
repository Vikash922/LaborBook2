package com.boilerplate.navigator;

import com.boilerplate.navigator.transaction.NavigatorTransaction;
import com.facebook.appevents.iap.InAppPurchaseConstants;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
@Metadata(m2721d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0010\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B%\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0005\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0007¢\u0006\u0004\b\b\u0010\tJ\t\u0010\u0010\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0011\u001a\u00020\u0005HÆ\u0003J\t\u0010\u0012\u001a\u00020\u0007HÆ\u0003J'\u0010\u0013\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u0007HÆ\u0001J\u0013\u0010\u0014\u001a\u00020\u00052\b\u0010\u0015\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0016\u001a\u00020\u0003HÖ\u0001J\t\u0010\u0017\u001a\u00020\u0018HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000bR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\rR\u0011\u0010\u0006\u001a\u00020\u0007¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\u000f¨\u0006\u0019"}, m2722d2 = {"Lcom/boilerplate/navigator/NavigatorConfiguration;", "", "initialTabIndex", "", "alwaysExitFromInitial", "", "defaultNavigatorTransaction", "Lcom/boilerplate/navigator/transaction/NavigatorTransaction;", "<init>", "(IZLcom/boilerplate/navigator/transaction/NavigatorTransaction;)V", "getInitialTabIndex", "()I", "getAlwaysExitFromInitial", "()Z", "getDefaultNavigatorTransaction", "()Lcom/boilerplate/navigator/transaction/NavigatorTransaction;", "component1", "component2", "component3", "copy", "equals", "other", "hashCode", InAppPurchaseConstants.METHOD_TO_STRING, "", "navigator_release"}, m2723k = 1, m2724mv = {2, 0, 0}, m2726xi = 48)
public final /* data */ class NavigatorConfiguration {
    private final boolean alwaysExitFromInitial;
    private final NavigatorTransaction defaultNavigatorTransaction;
    private final int initialTabIndex;

    public NavigatorConfiguration() {
        this(0, false, null, 7, null);
    }

    public static /* synthetic */ NavigatorConfiguration copy$default(NavigatorConfiguration navigatorConfiguration, int i, boolean z, NavigatorTransaction navigatorTransaction, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            i = navigatorConfiguration.initialTabIndex;
        }
        if ((i2 & 2) != 0) {
            z = navigatorConfiguration.alwaysExitFromInitial;
        }
        if ((i2 & 4) != 0) {
            navigatorTransaction = navigatorConfiguration.defaultNavigatorTransaction;
        }
        return navigatorConfiguration.copy(i, z, navigatorTransaction);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final int getInitialTabIndex() {
        return this.initialTabIndex;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final boolean getAlwaysExitFromInitial() {
        return this.alwaysExitFromInitial;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final NavigatorTransaction getDefaultNavigatorTransaction() {
        return this.defaultNavigatorTransaction;
    }

    public final NavigatorConfiguration copy(int initialTabIndex, boolean alwaysExitFromInitial, NavigatorTransaction defaultNavigatorTransaction) {
        Intrinsics.checkNotNullParameter(defaultNavigatorTransaction, "defaultNavigatorTransaction");
        return new NavigatorConfiguration(initialTabIndex, alwaysExitFromInitial, defaultNavigatorTransaction);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof NavigatorConfiguration)) {
            return false;
        }
        NavigatorConfiguration navigatorConfiguration = (NavigatorConfiguration) other;
        return this.initialTabIndex == navigatorConfiguration.initialTabIndex && this.alwaysExitFromInitial == navigatorConfiguration.alwaysExitFromInitial && Intrinsics.areEqual(this.defaultNavigatorTransaction, navigatorConfiguration.defaultNavigatorTransaction);
    }

    public final boolean getAlwaysExitFromInitial() {
        return this.alwaysExitFromInitial;
    }

    public final NavigatorTransaction getDefaultNavigatorTransaction() {
        return this.defaultNavigatorTransaction;
    }

    public final int getInitialTabIndex() {
        return this.initialTabIndex;
    }

    public int hashCode() {
        return this.defaultNavigatorTransaction.hashCode() + ((Boolean.hashCode(this.alwaysExitFromInitial) + (Integer.hashCode(this.initialTabIndex) * 31)) * 31);
    }

    public String toString() {
        return "NavigatorConfiguration(initialTabIndex=" + this.initialTabIndex + ", alwaysExitFromInitial=" + this.alwaysExitFromInitial + ", defaultNavigatorTransaction=" + this.defaultNavigatorTransaction + ')';
    }

    public NavigatorConfiguration(int i, boolean z, NavigatorTransaction defaultNavigatorTransaction) {
        Intrinsics.checkNotNullParameter(defaultNavigatorTransaction, "defaultNavigatorTransaction");
        this.initialTabIndex = i;
        this.alwaysExitFromInitial = z;
        this.defaultNavigatorTransaction = defaultNavigatorTransaction;
    }

    public /* synthetic */ NavigatorConfiguration(int i, boolean z, NavigatorTransaction navigatorTransaction, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? 0 : i, (i2 & 2) != 0 ? false : z, (i2 & 4) != 0 ? NavigatorTransaction.ATTACH_DETACH : navigatorTransaction);
    }
}
