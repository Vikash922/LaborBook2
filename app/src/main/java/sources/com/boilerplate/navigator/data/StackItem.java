package com.boilerplate.navigator.data;

import android.os.Parcel;
import android.os.Parcelable;
import com.facebook.appevents.iap.InAppPurchaseConstants;
import com.itextpdf.forms.xfdf.XfdfConstants;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
@Metadata(m2721d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\r\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u0001B#\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0006¢\u0006\u0004\b\u0007\u0010\bJ\t\u0010\u000e\u001a\u00020\u0003HÆ\u0003J\t\u0010\u000f\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0010\u001a\u00020\u0006HÆ\u0003J'\u0010\u0011\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u0006HÆ\u0001J\u0006\u0010\u0012\u001a\u00020\u0006J\u0013\u0010\u0013\u001a\u00020\u00142\b\u0010\u0015\u001a\u0004\u0018\u00010\u0016HÖ\u0003J\t\u0010\u0017\u001a\u00020\u0006HÖ\u0001J\t\u0010\u0018\u001a\u00020\u0003HÖ\u0001J\u0016\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u001d\u001a\u00020\u0006R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\nR\u0011\u0010\u0004\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\nR\u0011\u0010\u0005\u001a\u00020\u0006¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\r¨\u0006\u001e"}, m2722d2 = {"Lcom/boilerplate/navigator/data/StackItem;", "Landroid/os/Parcelable;", "fragmentTag", "", "groupName", "tabGroup", "", "<init>", "(Ljava/lang/String;Ljava/lang/String;I)V", "getFragmentTag", "()Ljava/lang/String;", "getGroupName", "getTabGroup", "()I", "component1", "component2", "component3", "copy", "describeContents", "equals", "", "other", "", "hashCode", InAppPurchaseConstants.METHOD_TO_STRING, "writeToParcel", "", "dest", "Landroid/os/Parcel;", XfdfConstants.FLAGS, "navigator_release"}, m2723k = 1, m2724mv = {2, 0, 0}, m2726xi = 48)
public final /* data */ class StackItem implements Parcelable {
    public static final Parcelable.Creator<StackItem> CREATOR = new Creator();
    private final String fragmentTag;
    private final String groupName;
    private final int tabGroup;

    @Metadata(m2723k = 3, m2724mv = {2, 0, 0}, m2726xi = 48)
    public static final class Creator implements Parcelable.Creator<StackItem> {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public final StackItem createFromParcel(Parcel parcel) {
            Intrinsics.checkNotNullParameter(parcel, "parcel");
            return new StackItem(parcel.readString(), parcel.readString(), parcel.readInt());
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public final StackItem[] newArray(int i) {
            return new StackItem[i];
        }
    }

    public StackItem(String fragmentTag, String groupName, int i) {
        Intrinsics.checkNotNullParameter(fragmentTag, "fragmentTag");
        Intrinsics.checkNotNullParameter(groupName, "groupName");
        this.fragmentTag = fragmentTag;
        this.groupName = groupName;
        this.tabGroup = i;
    }

    public static /* synthetic */ StackItem copy$default(StackItem stackItem, String str, String str2, int i, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            str = stackItem.fragmentTag;
        }
        if ((i2 & 2) != 0) {
            str2 = stackItem.groupName;
        }
        if ((i2 & 4) != 0) {
            i = stackItem.tabGroup;
        }
        return stackItem.copy(str, str2, i);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getFragmentTag() {
        return this.fragmentTag;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getGroupName() {
        return this.groupName;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final int getTabGroup() {
        return this.tabGroup;
    }

    public final StackItem copy(String fragmentTag, String groupName, int tabGroup) {
        Intrinsics.checkNotNullParameter(fragmentTag, "fragmentTag");
        Intrinsics.checkNotNullParameter(groupName, "groupName");
        return new StackItem(fragmentTag, groupName, tabGroup);
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof StackItem)) {
            return false;
        }
        StackItem stackItem = (StackItem) other;
        return Intrinsics.areEqual(this.fragmentTag, stackItem.fragmentTag) && Intrinsics.areEqual(this.groupName, stackItem.groupName) && this.tabGroup == stackItem.tabGroup;
    }

    public final String getFragmentTag() {
        return this.fragmentTag;
    }

    public final String getGroupName() {
        return this.groupName;
    }

    public final int getTabGroup() {
        return this.tabGroup;
    }

    public int hashCode() {
        return Integer.hashCode(this.tabGroup) + ((this.groupName.hashCode() + (this.fragmentTag.hashCode() * 31)) * 31);
    }

    public String toString() {
        return "StackItem(fragmentTag=" + this.fragmentTag + ", groupName=" + this.groupName + ", tabGroup=" + this.tabGroup + ')';
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel dest, int flags) {
        Intrinsics.checkNotNullParameter(dest, "dest");
        dest.writeString(this.fragmentTag);
        dest.writeString(this.groupName);
        dest.writeInt(this.tabGroup);
    }

    public /* synthetic */ StackItem(String str, String str2, int i, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, (i2 & 2) != 0 ? "" : str2, (i2 & 4) != 0 ? -1 : i);
    }
}
