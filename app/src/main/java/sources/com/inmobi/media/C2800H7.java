package com.inmobi.media;

import com.itextpdf.styledxmlparser.css.CommonCssConstants;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.markers.KMappedMarker;
import kotlin.text.StringsKt;
import org.json.JSONObject;

/* JADX INFO: renamed from: com.inmobi.media.H7 */
/* JADX INFO: loaded from: classes6.dex */
public final class C2800H7 extends C2740D7 implements Iterable, KMappedMarker {

    /* JADX INFO: renamed from: A */
    public final ArrayList f1074A;

    /* JADX INFO: renamed from: B */
    public int f1075B;

    /* JADX INFO: renamed from: C */
    public final boolean f1076C;

    /* JADX INFO: renamed from: D */
    public final boolean f1077D;

    /* JADX INFO: renamed from: x */
    public final int f1078x;

    /* JADX INFO: renamed from: y */
    public long f1079y;

    /* JADX INFO: renamed from: z */
    public final byte f1080z;

    public /* synthetic */ C2800H7(String str, String str2, C2755E7 c2755e7, String str3, JSONObject jSONObject, byte b) {
        this(str, str2, c2755e7, new ArrayList(), str3, jSONObject, b);
    }

    /* JADX INFO: renamed from: a */
    public final void m1150a(C2740D7 child) {
        Intrinsics.checkNotNullParameter(child, "child");
        int i = this.f1075B;
        if (i < this.f1078x) {
            this.f1075B = i + 1;
            this.f1074A.add(child);
        }
    }

    @Override // java.lang.Iterable
    public final Iterator iterator() {
        return new C2785G7(this);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2800H7(String assetId, String assetName, C2755E7 assetStyle, List trackers, String interactionMode, JSONObject rawAssetJson, byte b) {
        super(assetId, assetName, "CONTAINER", assetStyle, trackers);
        Intrinsics.checkNotNullParameter(assetId, "assetId");
        Intrinsics.checkNotNullParameter(assetName, "assetName");
        Intrinsics.checkNotNullParameter(assetStyle, "assetStyle");
        Intrinsics.checkNotNullParameter(trackers, "trackers");
        Intrinsics.checkNotNullParameter(interactionMode, "interactionMode");
        Intrinsics.checkNotNullParameter(rawAssetJson, "rawAssetJson");
        this.f1078x = 16;
        this.f1080z = b;
        this.f1074A = new ArrayList();
        Intrinsics.checkNotNullParameter(interactionMode, "<set-?>");
        this.f925g = interactionMode;
        this.f1076C = StringsKt.equals(CommonCssConstants.ROOT, assetName, true);
        this.f1077D = StringsKt.equals("card_scrollable", assetName, true);
    }
}
