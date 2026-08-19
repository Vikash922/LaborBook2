package com.rebuilt.app.base.navigator;

import android.content.Context;
import android.content.Intent;
import com.facebook.appevents.iap.InAppPurchaseConstants;
import java.util.List;
import java.util.NoSuchElementException;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: ModuleNavigator.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(m2721d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u00020\u0001:\u0001\rB\u0015\u0012\f\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003¢\u0006\u0004\b\u0005\u0010\u0006J\u0016\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\fR\u0014\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u000e"}, m2722d2 = {"Lcom/laborbook/base/navigator/ModuleNavigator;", "", "classAddresses", "", "Lcom/laborbook/base/navigator/ModuleNavigator$ActivityAddress;", "<init>", "(Ljava/util/List;)V", "startActivity", "", "context", "Landroid/content/Context;", "classNameEnum", "Lcom/laborbook/base/navigator/ActivitiesNameEnum;", "ActivityAddress", "base_release"}, m2723k = 1, m2724mv = {2, 0, 0}, m2726xi = 48)
public final class ModuleNavigator {
    private final List<ActivityAddress> classAddresses;

    public ModuleNavigator(List<ActivityAddress> classAddresses) {
        Intrinsics.checkNotNullParameter(classAddresses, "classAddresses");
        this.classAddresses = classAddresses;
    }

    public final void startActivity(Context context, ActivitiesNameEnum classNameEnum) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(classNameEnum, "classNameEnum");
        for (ActivityAddress activityAddress : this.classAddresses) {
            if (activityAddress.getRequestedActivity() == classNameEnum) {
                try {
                    context.startActivity(new Intent(context, Class.forName(activityAddress.getActivityAddress())));
                    return;
                } catch (ClassNotFoundException e) {
                    e.printStackTrace();
                    return;
                }
            }
        }
        throw new NoSuchElementException("Collection contains no element matching the predicate.");
    }

    /* JADX INFO: compiled from: ModuleNavigator.kt */
    @Metadata(m2721d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\n\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0004\b\u0006\u0010\u0007J\t\u0010\f\u001a\u00020\u0003HÆ\u0003J\t\u0010\r\u001a\u00020\u0005HÆ\u0003J\u001d\u0010\u000e\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u0005HÆ\u0001J\u0013\u0010\u000f\u001a\u00020\u00102\b\u0010\u0011\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0012\u001a\u00020\u0013HÖ\u0001J\t\u0010\u0014\u001a\u00020\u0005HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\tR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000b¨\u0006\u0015"}, m2722d2 = {"Lcom/laborbook/base/navigator/ModuleNavigator$ActivityAddress;", "", "requestedActivity", "Lcom/laborbook/base/navigator/ActivitiesNameEnum;", "activityAddress", "", "<init>", "(Lcom/laborbook/base/navigator/ActivitiesNameEnum;Ljava/lang/String;)V", "getRequestedActivity", "()Lcom/laborbook/base/navigator/ActivitiesNameEnum;", "getActivityAddress", "()Ljava/lang/String;", "component1", "component2", "copy", "equals", "", "other", "hashCode", "", InAppPurchaseConstants.METHOD_TO_STRING, "base_release"}, m2723k = 1, m2724mv = {2, 0, 0}, m2726xi = 48)
    public static final /* data */ class ActivityAddress {
        private final String activityAddress;
        private final ActivitiesNameEnum requestedActivity;

        public static /* synthetic */ ActivityAddress copy$default(ActivityAddress activityAddress, ActivitiesNameEnum activitiesNameEnum, String str, int i, Object obj) {
            if ((i & 1) != 0) {
                activitiesNameEnum = activityAddress.requestedActivity;
            }
            if ((i & 2) != 0) {
                str = activityAddress.activityAddress;
            }
            return activityAddress.copy(activitiesNameEnum, str);
        }

        /* JADX INFO: renamed from: component1, reason: from getter */
        public final ActivitiesNameEnum getRequestedActivity() {
            return this.requestedActivity;
        }

        /* JADX INFO: renamed from: component2, reason: from getter */
        public final String getActivityAddress() {
            return this.activityAddress;
        }

        public final ActivityAddress copy(ActivitiesNameEnum requestedActivity, String activityAddress) {
            Intrinsics.checkNotNullParameter(requestedActivity, "requestedActivity");
            Intrinsics.checkNotNullParameter(activityAddress, "activityAddress");
            return new ActivityAddress(requestedActivity, activityAddress);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            if (!(other instanceof ActivityAddress)) {
                return false;
            }
            ActivityAddress activityAddress = (ActivityAddress) other;
            return this.requestedActivity == activityAddress.requestedActivity && Intrinsics.areEqual(this.activityAddress, activityAddress.activityAddress);
        }

        public int hashCode() {
            return (this.requestedActivity.hashCode() * 31) + this.activityAddress.hashCode();
        }

        public String toString() {
            return "ActivityAddress(requestedActivity=" + this.requestedActivity + ", activityAddress=" + this.activityAddress + ')';
        }

        public ActivityAddress(ActivitiesNameEnum requestedActivity, String activityAddress) {
            Intrinsics.checkNotNullParameter(requestedActivity, "requestedActivity");
            Intrinsics.checkNotNullParameter(activityAddress, "activityAddress");
            this.requestedActivity = requestedActivity;
            this.activityAddress = activityAddress;
        }

        public final ActivitiesNameEnum getRequestedActivity() {
            return this.requestedActivity;
        }

        public final String getActivityAddress() {
            return this.activityAddress;
        }
    }
}
