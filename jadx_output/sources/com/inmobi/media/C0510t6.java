package com.inmobi.media;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.SystemClock;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.inmobi.media.t6, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes6.dex */
public final class C0510t6 implements Parcelable {
    public static final C0482r6 CREATOR = new C0482r6();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final C0524u6 f489a;
    public final String b;
    public final int c;
    public final long d;
    public final Lazy e;
    public int f;
    public String g;

    public C0510t6(C0524u6 landingPageTelemetryMetaData, String urlType, int i, long j) {
        Intrinsics.checkNotNullParameter(landingPageTelemetryMetaData, "landingPageTelemetryMetaData");
        Intrinsics.checkNotNullParameter(urlType, "urlType");
        this.f489a = landingPageTelemetryMetaData;
        this.b = urlType;
        this.c = i;
        this.d = j;
        this.e = LazyKt.lazy(C0496s6.f480a);
        this.f = -1;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C0510t6)) {
            return false;
        }
        C0510t6 c0510t6 = (C0510t6) obj;
        return Intrinsics.areEqual(this.f489a, c0510t6.f489a) && Intrinsics.areEqual(this.b, c0510t6.b) && this.c == c0510t6.c && this.d == c0510t6.d;
    }

    public final int hashCode() {
        return Long.hashCode(this.d) + ((Integer.hashCode(this.c) + ((this.b.hashCode() + (this.f489a.hashCode() * 31)) * 31)) * 31);
    }

    public final String toString() {
        return "LandingPageTelemetryControlInfo(landingPageTelemetryMetaData=" + this.f489a + ", urlType=" + this.b + ", counter=" + this.c + ", startTime=" + this.d + ')';
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        Intrinsics.checkNotNullParameter(parcel, "parcel");
        parcel.writeLong(this.f489a.f499a);
        parcel.writeString(this.f489a.b);
        parcel.writeString(this.f489a.c);
        parcel.writeString(this.f489a.d);
        parcel.writeString(this.f489a.e);
        parcel.writeString(this.f489a.f);
        parcel.writeString(this.f489a.g);
        parcel.writeByte(this.f489a.h ? (byte) 1 : (byte) 0);
        parcel.writeString(this.f489a.i);
        parcel.writeString(this.b);
        parcel.writeInt(this.c);
        parcel.writeLong(this.d);
        parcel.writeInt(this.f);
        parcel.writeString(this.g);
    }

    public /* synthetic */ C0510t6(C0524u6 c0524u6, String str, int i, int i2) {
        this(c0524u6, str, (i2 & 4) != 0 ? 0 : i, SystemClock.elapsedRealtime());
    }
}
