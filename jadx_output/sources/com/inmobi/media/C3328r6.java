package com.inmobi.media;

import android.os.Parcel;
import android.os.Parcelable;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.inmobi.media.r6 */
/* JADX INFO: loaded from: classes6.dex */
public final class C3328r6 implements Parcelable.Creator {
    @Override // android.os.Parcelable.Creator
    public final Object createFromParcel(Parcel parcel) {
        Intrinsics.checkNotNullParameter(parcel, "parcel");
        Intrinsics.checkNotNullParameter(parcel, "parcel");
        long j = parcel.readLong();
        String string = parcel.readString();
        String str = string == null ? "" : string;
        String string2 = parcel.readString();
        String str2 = string2 == null ? "" : string2;
        String string3 = parcel.readString();
        String str3 = string3 == null ? "" : string3;
        String string4 = parcel.readString();
        String str4 = string4 == null ? "" : string4;
        String string5 = parcel.readString();
        String str5 = string5 == null ? "" : string5;
        String string6 = parcel.readString();
        String str6 = string6 == null ? "" : string6;
        boolean z = parcel.readByte() != 0;
        String string7 = parcel.readString();
        C3373u6 c3373u6 = new C3373u6(j, str, str2, str3, str4, str5, str6, z, string7 == null ? "" : string7);
        String string8 = parcel.readString();
        C3358t6 c3358t6 = new C3358t6(c3373u6, string8 == null ? "" : string8, parcel.readInt(), parcel.readLong());
        c3358t6.f2553f = parcel.readInt();
        c3358t6.f2554g = parcel.readString();
        return c3358t6;
    }

    @Override // android.os.Parcelable.Creator
    public final Object[] newArray(int i) {
        return new C3358t6[i];
    }
}
