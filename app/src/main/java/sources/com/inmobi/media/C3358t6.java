package com.inmobi.media;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.SystemClock;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.inmobi.media.t6 */
/* JADX INFO: loaded from: classes6.dex */
public final class C3358t6 implements Parcelable {
    public static final C3328r6 CREATOR = new C3328r6();

    /* JADX INFO: renamed from: a */
    public final C3373u6 f2548a;

    /* JADX INFO: renamed from: b */
    public final String f2549b;

    /* JADX INFO: renamed from: c */
    public final int f2550c;

    /* JADX INFO: renamed from: d */
    public final long f2551d;

    /* JADX INFO: renamed from: e */
    public final Lazy f2552e;

    /* JADX INFO: renamed from: f */
    public int f2553f;

    /* JADX INFO: renamed from: g */
    public String f2554g;

    public C3358t6(C3373u6 landingPageTelemetryMetaData, String urlType, int i, long j) {
        Intrinsics.checkNotNullParameter(landingPageTelemetryMetaData, "landingPageTelemetryMetaData");
        Intrinsics.checkNotNullParameter(urlType, "urlType");
        this.f2548a = landingPageTelemetryMetaData;
        this.f2549b = urlType;
        this.f2550c = i;
        this.f2551d = j;
        this.f2552e = LazyKt.lazy(C3343s6.f2534a);
        this.f2553f = -1;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C3358t6)) {
            return false;
        }
        C3358t6 c3358t6 = (C3358t6) obj;
        return Intrinsics.areEqual(this.f2548a, c3358t6.f2548a) && Intrinsics.areEqual(this.f2549b, c3358t6.f2549b) && this.f2550c == c3358t6.f2550c && this.f2551d == c3358t6.f2551d;
    }

    public final int hashCode() {
        return Long.hashCode(this.f2551d) + ((Integer.hashCode(this.f2550c) + ((this.f2549b.hashCode() + (this.f2548a.hashCode() * 31)) * 31)) * 31);
    }

    public final String toString() {
        return "LandingPageTelemetryControlInfo(landingPageTelemetryMetaData=" + this.f2548a + ", urlType=" + this.f2549b + ", counter=" + this.f2550c + ", startTime=" + this.f2551d + ')';
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        Intrinsics.checkNotNullParameter(parcel, "parcel");
        parcel.writeLong(this.f2548a.f2651a);
        parcel.writeString(this.f2548a.f2652b);
        parcel.writeString(this.f2548a.f2653c);
        parcel.writeString(this.f2548a.f2654d);
        parcel.writeString(this.f2548a.f2655e);
        parcel.writeString(this.f2548a.f2656f);
        parcel.writeString(this.f2548a.f2657g);
        parcel.writeByte(this.f2548a.f2658h ? (byte) 1 : (byte) 0);
        parcel.writeString(this.f2548a.f2659i);
        parcel.writeString(this.f2549b);
        parcel.writeInt(this.f2550c);
        parcel.writeLong(this.f2551d);
        parcel.writeInt(this.f2553f);
        parcel.writeString(this.f2554g);
    }

    public /* synthetic */ C3358t6(C3373u6 c3373u6, String str, int i, int i2) {
        this(c3373u6, str, (i2 & 4) != 0 ? 0 : i, SystemClock.elapsedRealtime());
    }
}
