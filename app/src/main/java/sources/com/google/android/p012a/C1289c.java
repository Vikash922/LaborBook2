package com.google.android.p012a;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: renamed from: com.google.android.a.c */
/* JADX INFO: compiled from: Codecs.java */
/* JADX INFO: loaded from: classes3.dex */
public final class C1289c {
    static {
        C1289c.class.getClassLoader();
    }

    private C1289c() {
    }

    /* JADX INFO: renamed from: a */
    public static <T extends Parcelable> T m89a(Parcel parcel, Parcelable.Creator<T> creator) {
        if (parcel.readInt() == 0) {
            return null;
        }
        return creator.createFromParcel(parcel);
    }

    /* JADX INFO: renamed from: b */
    public static void m90b(Parcel parcel, Parcelable parcelable) {
        parcel.writeInt(1);
        parcelable.writeToParcel(parcel, 0);
    }

    /* JADX INFO: renamed from: c */
    public static void m91c(Parcel parcel, Parcelable parcelable) {
        if (parcelable == null) {
            parcel.writeInt(0);
        } else {
            parcel.writeInt(1);
            parcelable.writeToParcel(parcel, 1);
        }
    }
}
