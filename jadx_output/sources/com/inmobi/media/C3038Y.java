package com.inmobi.media;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.Map;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.inmobi.media.Y */
/* JADX INFO: loaded from: classes6.dex */
public final class C3038Y implements Parcelable {
    public static final Parcelable.Creator<C3038Y> CREATOR = new C3024X();

    /* JADX INFO: renamed from: a */
    public final long f1653a;

    /* JADX INFO: renamed from: b */
    public final String f1654b;

    /* JADX INFO: renamed from: c */
    public Map f1655c;

    /* JADX INFO: renamed from: d */
    public String f1656d;

    /* JADX INFO: renamed from: e */
    public final String f1657e;

    /* JADX INFO: renamed from: f */
    public final String f1658f;

    /* JADX INFO: renamed from: g */
    public String f1659g;

    /* JADX INFO: renamed from: h */
    public String f1660h;

    /* JADX INFO: renamed from: i */
    public String f1661i;

    /* JADX INFO: renamed from: j */
    public boolean f1662j;

    /* JADX INFO: renamed from: k */
    public String f1663k;

    public C3038Y(long j, String str, String str2, String str3, DefaultConstructorMarker defaultConstructorMarker) {
        this.f1660h = "";
        this.f1661i = "activity";
        this.f1653a = j;
        this.f1654b = str;
        this.f1657e = str2;
        this.f1654b = str == null ? "" : str;
        this.f1658f = str3;
    }

    /* JADX INFO: renamed from: c */
    public static /* synthetic */ void m1922c() {
    }

    /* JADX INFO: renamed from: k */
    public static /* synthetic */ void m1924k() {
    }

    /* JADX INFO: renamed from: n */
    public static /* synthetic */ void m1925n() {
    }

    /* JADX INFO: renamed from: d */
    public final String m1931d() {
        String str = this.f1659g;
        Intrinsics.checkNotNull(str);
        return str;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    /* JADX INFO: renamed from: e */
    public final String m1932e() {
        return this.f1663k;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C3038Y)) {
            return false;
        }
        C3038Y c3038y = (C3038Y) obj;
        return this.f1653a == c3038y.f1653a && Intrinsics.areEqual(this.f1661i, c3038y.f1661i) && Intrinsics.areEqual(this.f1654b, c3038y.f1654b) && Intrinsics.areEqual(this.f1657e, c3038y.f1657e);
    }

    /* JADX INFO: renamed from: f */
    public final Map<String, String> m1933f() {
        return this.f1655c;
    }

    /* JADX INFO: renamed from: g */
    public final long m1934g() {
        return this.f1653a;
    }

    /* JADX INFO: renamed from: h */
    public final String m1935h() {
        return "im";
    }

    public int hashCode() {
        long j = this.f1653a;
        int i = ((int) (j ^ (j >>> 32))) * 31;
        String str = this.f1657e;
        return this.f1661i.hashCode() + ((i + (str != null ? str.hashCode() : 0)) * 30);
    }

    /* JADX INFO: renamed from: i */
    public final String m1936i() {
        return this.f1656d;
    }

    /* JADX INFO: renamed from: j */
    public final String m1937j() {
        return this.f1661i;
    }

    /* JADX INFO: renamed from: l */
    public final long m1938l() {
        return this.f1653a;
    }

    /* JADX INFO: renamed from: m */
    public final String m1939m() {
        return this.f1658f;
    }

    /* JADX INFO: renamed from: o */
    public final String m1940o() {
        return this.f1654b;
    }

    /* JADX INFO: renamed from: p */
    public final boolean m1941p() {
        return this.f1662j;
    }

    public String toString() {
        return String.valueOf(this.f1653a);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel dest, int i) {
        Intrinsics.checkNotNullParameter(dest, "dest");
        dest.writeLong(this.f1653a);
        dest.writeString(this.f1661i);
        dest.writeString(this.f1657e);
    }

    /* JADX INFO: renamed from: b */
    public final String m1929b() {
        return this.f1657e;
    }

    /* JADX INFO: renamed from: a */
    public final void m1928a(Map<String, String> map) {
        this.f1655c = map;
    }

    /* JADX INFO: renamed from: b */
    public final void m1930b(String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.f1661i = str;
    }

    /* JADX INFO: renamed from: a */
    public final String m1926a() {
        return this.f1660h;
    }

    /* JADX INFO: renamed from: a */
    public final void m1927a(String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.f1660h = str;
    }

    public C3038Y(Parcel parcel, DefaultConstructorMarker defaultConstructorMarker) {
        this.f1660h = "";
        String str = "activity";
        this.f1661i = "activity";
        this.f1653a = parcel.readLong();
        String string = parcel.readString();
        if (string != null && !Intrinsics.areEqual(string, "activity") && Intrinsics.areEqual(string, "others")) {
            str = "others";
        }
        this.f1661i = str;
        this.f1657e = parcel.readString();
    }
}
