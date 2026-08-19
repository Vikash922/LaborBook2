package com.laborbook.keep.screen.home.adapter;

import com.facebook.appevents.iap.InAppPurchaseConstants;
import com.laborbook.keep.model.StaffUser;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: StaffListItem.kt */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(m2721d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b6\u0018\u00002\u00020\u0001:\u0002\u0004\u0005B\t\b\u0004¢\u0006\u0004\b\u0002\u0010\u0003\u0082\u0001\u0002\u0006\u0007¨\u0006\b"}, m2722d2 = {"Lcom/laborbook/keep/screen/home/adapter/StaffListItem;", "", "<init>", "()V", "StaffItem", "AdItem", "Lcom/laborbook/keep/screen/home/adapter/StaffListItem$AdItem;", "Lcom/laborbook/keep/screen/home/adapter/StaffListItem$StaffItem;", "keep_release"}, m2723k = 1, m2724mv = {2, 0, 0}, m2726xi = 48)
public abstract class StaffListItem {
    public /* synthetic */ StaffListItem(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    /* JADX INFO: compiled from: StaffListItem.kt */
    @Metadata(m2721d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\n\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B\u0019\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0005¢\u0006\u0004\b\u0006\u0010\u0007J\t\u0010\u000b\u001a\u00020\u0003HÆ\u0003J\t\u0010\f\u001a\u00020\u0005HÆ\u0003J\u001d\u0010\r\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u0005HÆ\u0001J\u0013\u0010\u000e\u001a\u00020\u00052\b\u0010\u000f\u001a\u0004\u0018\u00010\u0010HÖ\u0003J\t\u0010\u0011\u001a\u00020\u0012HÖ\u0001J\t\u0010\u0013\u001a\u00020\u0014HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\tR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0004\u0010\n¨\u0006\u0015"}, m2722d2 = {"Lcom/laborbook/keep/screen/home/adapter/StaffListItem$StaffItem;", "Lcom/laborbook/keep/screen/home/adapter/StaffListItem;", "staffUser", "Lcom/laborbook/keep/model/StaffUser;", "isLocked", "", "<init>", "(Lcom/laborbook/keep/model/StaffUser;Z)V", "getStaffUser", "()Lcom/laborbook/keep/model/StaffUser;", "()Z", "component1", "component2", "copy", "equals", "other", "", "hashCode", "", InAppPurchaseConstants.METHOD_TO_STRING, "", "keep_release"}, m2723k = 1, m2724mv = {2, 0, 0}, m2726xi = 48)
    public static final /* data */ class StaffItem extends StaffListItem {
        private final boolean isLocked;
        private final StaffUser staffUser;

        public static /* synthetic */ StaffItem copy$default(StaffItem staffItem, StaffUser staffUser, boolean z, int i, Object obj) {
            if ((i & 1) != 0) {
                staffUser = staffItem.staffUser;
            }
            if ((i & 2) != 0) {
                z = staffItem.isLocked;
            }
            return staffItem.copy(staffUser, z);
        }

        /* JADX INFO: renamed from: component1, reason: from getter */
        public final StaffUser getStaffUser() {
            return this.staffUser;
        }

        /* JADX INFO: renamed from: component2, reason: from getter */
        public final boolean getIsLocked() {
            return this.isLocked;
        }

        public final StaffItem copy(StaffUser staffUser, boolean isLocked) {
            Intrinsics.checkNotNullParameter(staffUser, "staffUser");
            return new StaffItem(staffUser, isLocked);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            if (!(other instanceof StaffItem)) {
                return false;
            }
            StaffItem staffItem = (StaffItem) other;
            return Intrinsics.areEqual(this.staffUser, staffItem.staffUser) && this.isLocked == staffItem.isLocked;
        }

        public int hashCode() {
            return (this.staffUser.hashCode() * 31) + Boolean.hashCode(this.isLocked);
        }

        public String toString() {
            return "StaffItem(staffUser=" + this.staffUser + ", isLocked=" + this.isLocked + ')';
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public StaffItem(StaffUser staffUser, boolean z) {
            super(null);
            Intrinsics.checkNotNullParameter(staffUser, "staffUser");
            this.staffUser = staffUser;
            this.isLocked = z;
        }

        public /* synthetic */ StaffItem(StaffUser staffUser, boolean z, int i, DefaultConstructorMarker defaultConstructorMarker) {
            this(staffUser, (i & 2) != 0 ? false : z);
        }

        public final StaffUser getStaffUser() {
            return this.staffUser;
        }

        public final boolean isLocked() {
            return this.isLocked;
        }
    }

    private StaffListItem() {
    }

    /* JADX INFO: compiled from: StaffListItem.kt */
    @Metadata(m2721d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\t\u0010\b\u001a\u00020\u0003HÆ\u0003J\u0013\u0010\t\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\n\u001a\u00020\u000b2\b\u0010\f\u001a\u0004\u0018\u00010\rHÖ\u0003J\t\u0010\u000e\u001a\u00020\u0003HÖ\u0001J\t\u0010\u000f\u001a\u00020\u0010HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007¨\u0006\u0011"}, m2722d2 = {"Lcom/laborbook/keep/screen/home/adapter/StaffListItem$AdItem;", "Lcom/laborbook/keep/screen/home/adapter/StaffListItem;", "adPosition", "", "<init>", "(I)V", "getAdPosition", "()I", "component1", "copy", "equals", "", "other", "", "hashCode", InAppPurchaseConstants.METHOD_TO_STRING, "", "keep_release"}, m2723k = 1, m2724mv = {2, 0, 0}, m2726xi = 48)
    public static final /* data */ class AdItem extends StaffListItem {
        private final int adPosition;

        public static /* synthetic */ AdItem copy$default(AdItem adItem, int i, int i2, Object obj) {
            if ((i2 & 1) != 0) {
                i = adItem.adPosition;
            }
            return adItem.copy(i);
        }

        /* JADX INFO: renamed from: component1, reason: from getter */
        public final int getAdPosition() {
            return this.adPosition;
        }

        public final AdItem copy(int adPosition) {
            return new AdItem(adPosition);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            return (other instanceof AdItem) && this.adPosition == ((AdItem) other).adPosition;
        }

        public int hashCode() {
            return Integer.hashCode(this.adPosition);
        }

        public String toString() {
            return "AdItem(adPosition=" + this.adPosition + ')';
        }

        public AdItem(int i) {
            super(null);
            this.adPosition = i;
        }

        public final int getAdPosition() {
            return this.adPosition;
        }
    }
}
