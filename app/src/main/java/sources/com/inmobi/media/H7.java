package com.inmobi.media;

import com.itextpdf.styledxmlparser.css.CommonCssConstants;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.markers.KMappedMarker;
import kotlin.text.StringsKt;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public final class H7 extends D7 implements Iterable, KMappedMarker {
    public final ArrayList A;
    public int B;
    public final boolean C;
    public final boolean D;
    public final int x;
    public long y;
    public final byte z;

    public /* synthetic */ H7(String str, String str2, E7 e7, String str3, JSONObject jSONObject, byte b) {
        this(str, str2, e7, new ArrayList(), str3, jSONObject, b);
    }

    public final void a(D7 child) {
        Intrinsics.checkNotNullParameter(child, "child");
        int i = this.B;
        if (i < this.x) {
            this.B = i + 1;
            this.A.add(child);
        }
    }

    @Override // java.lang.Iterable
    public final Iterator iterator() {
        return new G7(this);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public H7(String assetId, String assetName, E7 assetStyle, List trackers, String interactionMode, JSONObject rawAssetJson, byte b) {
        super(assetId, assetName, "CONTAINER", assetStyle, trackers);
        Intrinsics.checkNotNullParameter(assetId, "assetId");
        Intrinsics.checkNotNullParameter(assetName, "assetName");
        Intrinsics.checkNotNullParameter(assetStyle, "assetStyle");
        Intrinsics.checkNotNullParameter(trackers, "trackers");
        Intrinsics.checkNotNullParameter(interactionMode, "interactionMode");
        Intrinsics.checkNotNullParameter(rawAssetJson, "rawAssetJson");
        this.x = 16;
        this.z = b;
        this.A = new ArrayList();
        Intrinsics.checkNotNullParameter(interactionMode, "<set-?>");
        this.g = interactionMode;
        this.C = StringsKt.equals(CommonCssConstants.ROOT, assetName, true);
        this.D = StringsKt.equals("card_scrollable", assetName, true);
    }
}
