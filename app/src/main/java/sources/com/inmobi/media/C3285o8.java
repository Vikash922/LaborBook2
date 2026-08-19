package com.inmobi.media;

import android.media.MediaMetadataRetriever;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.inmobi.media.o8 */
/* JADX INFO: loaded from: classes6.dex */
public final class C3285o8 {

    /* JADX INFO: renamed from: a */
    public final long f2414a;

    /* JADX INFO: renamed from: b */
    public final long f2415b;

    /* JADX INFO: renamed from: c */
    public final String f2416c;

    /* JADX INFO: renamed from: d */
    public final C2920P7 f2417d;

    public C3285o8(long j, long j2, String referencedAssetId, C2920P7 nativeDataModel) {
        Intrinsics.checkNotNullParameter(referencedAssetId, "referencedAssetId");
        Intrinsics.checkNotNullParameter(nativeDataModel, "nativeDataModel");
        this.f2414a = j;
        this.f2415b = j2;
        this.f2416c = referencedAssetId;
        this.f2417d = nativeDataModel;
        Intrinsics.checkNotNullExpressionValue("p8", "getSimpleName(...)");
    }

    /* JADX INFO: renamed from: a */
    public final long m2336a() {
        long j = this.f2414a;
        C2740D7 c2740d7M1512m = this.f2417d.m1512m(this.f2416c);
        try {
            if (c2740d7M1512m instanceof C2726C8) {
                InterfaceC3230kd interfaceC3230kdM921d = ((C2726C8) c2740d7M1512m).m921d();
                String strM2268b = interfaceC3230kdM921d != null ? ((C3215jd) interfaceC3230kdM921d).m2268b() : null;
                if (strM2268b != null) {
                    MediaMetadataRetriever mediaMetadataRetriever = new MediaMetadataRetriever();
                    mediaMetadataRetriever.setDataSource(strM2268b);
                    j += (long) ((this.f2415b / 100.0d) * ((mediaMetadataRetriever.extractMetadata(9) != null ? Long.parseLong(r2) : 0L) / ((long) 1000)));
                    mediaMetadataRetriever.release();
                }
            }
        } catch (Exception unused) {
        }
        return Math.max(j, 0L);
    }
}
