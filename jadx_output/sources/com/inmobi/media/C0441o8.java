package com.inmobi.media;

import android.media.MediaMetadataRetriever;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.inmobi.media.o8, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes6.dex */
public final class C0441o8 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final long f446a;
    public final long b;
    public final String c;
    public final P7 d;

    public C0441o8(long j, long j2, String referencedAssetId, P7 nativeDataModel) {
        Intrinsics.checkNotNullParameter(referencedAssetId, "referencedAssetId");
        Intrinsics.checkNotNullParameter(nativeDataModel, "nativeDataModel");
        this.f446a = j;
        this.b = j2;
        this.c = referencedAssetId;
        this.d = nativeDataModel;
        Intrinsics.checkNotNullExpressionValue("p8", "getSimpleName(...)");
    }

    public final long a() {
        long j = this.f446a;
        D7 d7M = this.d.m(this.c);
        try {
            if (d7M instanceof C8) {
                InterfaceC0385kd interfaceC0385kdD = ((C8) d7M).d();
                String strB = interfaceC0385kdD != null ? ((C0370jd) interfaceC0385kdD).b() : null;
                if (strB != null) {
                    MediaMetadataRetriever mediaMetadataRetriever = new MediaMetadataRetriever();
                    mediaMetadataRetriever.setDataSource(strB);
                    j += (long) ((this.b / 100.0d) * ((mediaMetadataRetriever.extractMetadata(9) != null ? Long.parseLong(r2) : 0L) / ((long) 1000)));
                    mediaMetadataRetriever.release();
                }
            }
        } catch (Exception unused) {
        }
        return Math.max(j, 0L);
    }
}
