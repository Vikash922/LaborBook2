package com.inmobi.media;

import com.inmobi.ads.exceptions.VastException;
import com.inmobi.commons.core.configs.AdConfig;
import java.util.Iterator;
import java.util.LinkedList;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: renamed from: com.inmobi.media.x0, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes6.dex */
public final class C0560x0 {
    public static final String BUYER_PRICE = "buyerPrice";
    public static final String CTX_HASH_KEY = "ctxHash";
    public static final C0546w0 Companion = new C0546w0();
    private static final long INVALID_AD_EXPIRY = -1;
    private static final String KEY_ADS = "ads";
    private static final String KEY_AD_SET_EXPIRY = "expiry";
    private static final String KEY_IMPRESSION_ID = "impressionId";
    private static final String KEY_IM_EXT = "imExts";
    private static final String KEY_MACROS = "macros";
    public static final String KEY_REQUEST_ID = "requestId";
    private static final String KEY_TRACKERS = "trackers";
    private static final String KEY_TRACKING_INFO = "trackingInfo";
    private static final String KEY_URL = "url";
    private static final String MACRO_ADV_PRICE = "${advPrice}";
    public static final String MACRO_CTX_HASH = "${ctxhash}";
    private static final String TAG = "x0";
    private final String adSetAuctionMeta;
    private String adType;
    private final boolean isPod;
    private Boolean isRewarded;
    private boolean logEnabled;
    private JSONObject macros;
    private long placementId;
    private final String adSetId = "";
    private String requestId = "";
    private boolean isAuctionClosed = true;
    private String transactionID = "";
    private final LinkedList<C0325h> ads = new LinkedList<>();

    public static /* synthetic */ void e() {
    }

    public final String c() {
        return this.adSetId;
    }

    public final String d() {
        return this.adType;
    }

    public final LinkedList<C0325h> f() {
        return this.ads;
    }

    public final boolean g() {
        return this.logEnabled;
    }

    public final JSONObject h() {
        return this.macros;
    }

    public final C0325h i() {
        try {
            if (!this.ads.isEmpty()) {
                CollectionsKt.removeFirst(this.ads);
            }
        } catch (Exception unused) {
        }
        return p();
    }

    public final long j() {
        return this.placementId;
    }

    public final String k() {
        return this.requestId;
    }

    public final String l() {
        return this.transactionID;
    }

    public final boolean m() {
        return this.isAuctionClosed;
    }

    public final boolean n() {
        return this.isPod;
    }

    public final Boolean o() {
        return this.isRewarded;
    }

    public final C0325h p() {
        try {
            if (!this.ads.isEmpty()) {
                return this.ads.getFirst();
            }
        } catch (Exception unused) {
        }
        return null;
    }

    public final String b() {
        return this.adSetAuctionMeta;
    }

    public final void a(Boolean bool) {
        this.isRewarded = bool;
    }

    public final void a(JSONObject responseJson, AdConfig adConfig, InterfaceC0298f5 interfaceC0298f5) throws JSONException {
        C0325h c0325hA;
        Intrinsics.checkNotNullParameter(responseJson, "responseJson");
        Intrinsics.checkNotNullParameter(adConfig, "adConfig");
        if (!this.isAuctionClosed) {
            String string = responseJson.getString(KEY_REQUEST_ID);
            JSONArray jSONArray = responseJson.getJSONArray(KEY_ADS);
            if (Intrinsics.areEqual(this.requestId, string)) {
                int length = jSONArray.length();
                if (length != 0) {
                    LinkedList linkedList = new LinkedList();
                    for (int i = 0; i < length; i++) {
                        JSONObject jSONObject = jSONArray.getJSONObject(i);
                        String string2 = jSONObject.getString(KEY_IMPRESSION_ID);
                        this.macros = jSONObject.optJSONObject(KEY_MACROS);
                        Intrinsics.checkNotNull(string2);
                        Iterator<T> it = this.ads.iterator();
                        while (true) {
                            if (it.hasNext()) {
                                c0325hA = (C0325h) it.next();
                                if (Intrinsics.areEqual(string2, c0325hA.s())) {
                                    break;
                                }
                            } else {
                                c0325hA = null;
                                break;
                            }
                        }
                        if (c0325hA != null) {
                            c0325hA.a(this.macros);
                            try {
                                c0325hA = J.a(c0325hA, adConfig, interfaceC0298f5);
                            } catch (VastException unused) {
                            }
                            if (c0325hA != null) {
                                JSONObject jSONObject2 = this.macros;
                                if (jSONObject2 != null) {
                                    if (jSONObject2.has(MACRO_ADV_PRICE)) {
                                        String string3 = jSONObject2.getString(MACRO_ADV_PRICE);
                                        Intrinsics.checkNotNullExpressionValue(string3, "getString(...)");
                                        c0325hA.a(string3);
                                    }
                                    if (jSONObject2.has(MACRO_CTX_HASH)) {
                                        c0325hA.b(jSONObject2.getString(MACRO_CTX_HASH));
                                    }
                                }
                                linkedList.add(c0325hA);
                            }
                        }
                    }
                    this.ads.clear();
                    this.ads.addAll(linkedList);
                    if (!this.ads.isEmpty()) {
                        this.isAuctionClosed = true;
                        return;
                    }
                    throw new IllegalArgumentException("No matching ads to render");
                }
                throw new IllegalArgumentException("UAS response supplied doesn't have any ads");
            }
            throw new IllegalArgumentException("UAS response supplied was of a different requestId");
        }
        throw new IllegalStateException("Auction was already closed. Can't process UAS response");
    }

    public final void a(AdConfig adConfig, InterfaceC0355id interfaceC0355id, InterfaceC0298f5 interfaceC0298f5) {
        Intrinsics.checkNotNullParameter(adConfig, "adConfig");
        C0325h c0325hP = p();
        if (c0325hP != null) {
            C0339hd c0339hd = C0339hd.f378a;
            C0339hd.a(c0325hP, adConfig, interfaceC0355id, interfaceC0298f5);
        }
    }

    public final void a(C0325h ad) {
        Intrinsics.checkNotNullParameter(ad, "ad");
        try {
            if (p() != null) {
                CollectionsKt.removeFirst(this.ads);
            }
        } catch (Exception unused) {
        }
        this.ads.add(0, ad);
    }
}
