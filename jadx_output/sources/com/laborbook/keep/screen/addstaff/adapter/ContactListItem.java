package com.laborbook.keep.screen.addstaff.adapter;

import com.facebook.appevents.iap.InAppPurchaseConstants;
import com.laborbook.keep.screen.addstaff.model.ContactItem;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: ContactListItem.kt */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(m2721d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b6\u0018\u00002\u00020\u0001:\u0002\u0004\u0005B\t\b\u0004¢\u0006\u0004\b\u0002\u0010\u0003\u0082\u0001\u0002\u0006\u0007¨\u0006\b"}, m2722d2 = {"Lcom/laborbook/keep/screen/addstaff/adapter/ContactListItem;", "", "<init>", "()V", "ContactItemView", "AdItem", "Lcom/laborbook/keep/screen/addstaff/adapter/ContactListItem$AdItem;", "Lcom/laborbook/keep/screen/addstaff/adapter/ContactListItem$ContactItemView;", "keep_release"}, m2723k = 1, m2724mv = {2, 0, 0}, m2726xi = 48)
public abstract class ContactListItem {
    public /* synthetic */ ContactListItem(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    /* JADX INFO: compiled from: ContactListItem.kt */
    @Metadata(m2721d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\t\u0010\b\u001a\u00020\u0003HÆ\u0003J\u0013\u0010\t\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\n\u001a\u00020\u000b2\b\u0010\f\u001a\u0004\u0018\u00010\rHÖ\u0003J\t\u0010\u000e\u001a\u00020\u000fHÖ\u0001J\t\u0010\u0010\u001a\u00020\u0011HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007¨\u0006\u0012"}, m2722d2 = {"Lcom/laborbook/keep/screen/addstaff/adapter/ContactListItem$ContactItemView;", "Lcom/laborbook/keep/screen/addstaff/adapter/ContactListItem;", "contactItem", "Lcom/laborbook/keep/screen/addstaff/model/ContactItem;", "<init>", "(Lcom/laborbook/keep/screen/addstaff/model/ContactItem;)V", "getContactItem", "()Lcom/laborbook/keep/screen/addstaff/model/ContactItem;", "component1", "copy", "equals", "", "other", "", "hashCode", "", InAppPurchaseConstants.METHOD_TO_STRING, "", "keep_release"}, m2723k = 1, m2724mv = {2, 0, 0}, m2726xi = 48)
    public static final /* data */ class ContactItemView extends ContactListItem {
        private final ContactItem contactItem;

        public static /* synthetic */ ContactItemView copy$default(ContactItemView contactItemView, ContactItem contactItem, int i, Object obj) {
            if ((i & 1) != 0) {
                contactItem = contactItemView.contactItem;
            }
            return contactItemView.copy(contactItem);
        }

        /* JADX INFO: renamed from: component1, reason: from getter */
        public final ContactItem getContactItem() {
            return this.contactItem;
        }

        public final ContactItemView copy(ContactItem contactItem) {
            Intrinsics.checkNotNullParameter(contactItem, "contactItem");
            return new ContactItemView(contactItem);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            return (other instanceof ContactItemView) && Intrinsics.areEqual(this.contactItem, ((ContactItemView) other).contactItem);
        }

        public int hashCode() {
            return this.contactItem.hashCode();
        }

        public String toString() {
            return "ContactItemView(contactItem=" + this.contactItem + ')';
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public ContactItemView(ContactItem contactItem) {
            super(null);
            Intrinsics.checkNotNullParameter(contactItem, "contactItem");
            this.contactItem = contactItem;
        }

        public final ContactItem getContactItem() {
            return this.contactItem;
        }
    }

    private ContactListItem() {
    }

    /* JADX INFO: compiled from: ContactListItem.kt */
    @Metadata(m2721d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\t\u0010\b\u001a\u00020\u0003HÆ\u0003J\u0013\u0010\t\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\n\u001a\u00020\u000b2\b\u0010\f\u001a\u0004\u0018\u00010\rHÖ\u0003J\t\u0010\u000e\u001a\u00020\u0003HÖ\u0001J\t\u0010\u000f\u001a\u00020\u0010HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007¨\u0006\u0011"}, m2722d2 = {"Lcom/laborbook/keep/screen/addstaff/adapter/ContactListItem$AdItem;", "Lcom/laborbook/keep/screen/addstaff/adapter/ContactListItem;", "adPosition", "", "<init>", "(I)V", "getAdPosition", "()I", "component1", "copy", "equals", "", "other", "", "hashCode", InAppPurchaseConstants.METHOD_TO_STRING, "", "keep_release"}, m2723k = 1, m2724mv = {2, 0, 0}, m2726xi = 48)
    public static final /* data */ class AdItem extends ContactListItem {
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
