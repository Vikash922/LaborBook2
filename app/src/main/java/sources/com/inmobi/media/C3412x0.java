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

/* JADX INFO: renamed from: com.inmobi.media.x0 */
/* JADX INFO: loaded from: classes6.dex */
public final class C3412x0 {
    public static final String BUYER_PRICE = "buyerPrice";
    public static final String CTX_HASH_KEY = "ctxHash";
    public static final C3397w0 Companion = new C3397w0();
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
    private final LinkedList<C3171h> ads = new LinkedList<>();

    /* JADX INFO: renamed from: e */
    public static /* synthetic */ void m2568e() {
    }

    /* JADX INFO: renamed from: c */
    public final String m2574c() {
        return this.adSetId;
    }

    /* JADX INFO: renamed from: d */
    public final String m2575d() {
        return this.adType;
    }

    /* JADX INFO: renamed from: f */
    public final LinkedList<C3171h> m2576f() {
        return this.ads;
    }

    /* JADX INFO: renamed from: g */
    public final boolean m2577g() {
        return this.logEnabled;
    }

    /* JADX INFO: renamed from: h */
    public final JSONObject m2578h() {
        return this.macros;
    }

    /* JADX INFO: renamed from: i */
    public final C3171h m2579i() {
        try {
            if (!this.ads.isEmpty()) {
                CollectionsKt.removeFirst(this.ads);
            }
        } catch (Exception unused) {
        }
        return m2586p();
    }

    /* JADX INFO: renamed from: j */
    public final long m2580j() {
        return this.placementId;
    }

    /* JADX INFO: renamed from: k */
    public final String m2581k() {
        return this.requestId;
    }

    /* JADX INFO: renamed from: l */
    public final String m2582l() {
        return this.transactionID;
    }

    /* JADX INFO: renamed from: m */
    public final boolean m2583m() {
        return this.isAuctionClosed;
    }

    /* JADX INFO: renamed from: n */
    public final boolean m2584n() {
        return this.isPod;
    }

    /* JADX INFO: renamed from: o */
    public final Boolean m2585o() {
        return this.isRewarded;
    }

    /* JADX INFO: renamed from: p */
    public final C3171h m2586p() {
        try {
            if (!this.ads.isEmpty()) {
                return this.ads.getFirst();
            }
        } catch (Exception unused) {
        }
        return null;
    }

    /* JADX INFO: renamed from: b */
    public final String m2573b() {
        return this.adSetAuctionMeta;
    }

    /* JADX INFO: renamed from: a */
    public final void m2571a(Boolean bool) {
        this.isRewarded = bool;
    }

    /* JADX INFO: renamed from: a */
    public final void m2572a(JSONObject responseJson, AdConfig adConfig, InterfaceC3147f5 interfaceC3147f5) throws JSONException {
        C3171h c3171hM1179a;
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
                                c3171hM1179a = (C3171h) it.next();
                                if (Intrinsics.areEqual(string2, c3171hM1179a.m2202s())) {
                                    break;
                                }
                            } else {
                                c3171hM1179a = null;
                                break;
                            }
                        }
                        if (c3171hM1179a != null) {
                            c3171hM1179a.m2178a(this.macros);
                            try {
                                c3171hM1179a = AbstractC2822J.m1179a(c3171hM1179a, adConfig, interfaceC3147f5);
                            } catch (VastException unused) {
                            }
                            if (c3171hM1179a != null) {
                                JSONObject jSONObject2 = this.macros;
                                if (jSONObject2 != null) {
                                    if (jSONObject2.has(MACRO_ADV_PRICE)) {
                                        String string3 = jSONObject2.getString(MACRO_ADV_PRICE);
                                        Intrinsics.checkNotNullExpressionValue(string3, "getString(...)");
                                        c3171hM1179a.m2176a(string3);
                                    }
                                    if (jSONObject2.has(MACRO_CTX_HASH)) {
                                        c3171hM1179a.m2183b(jSONObject2.getString(MACRO_CTX_HASH));
                                    }
                                }
                                linkedList.add(c3171hM1179a);
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

    /* JADX INFO: renamed from: a */
    public final void m2569a(AdConfig adConfig, InterfaceC3200id interfaceC3200id, InterfaceC3147f5 interfaceC3147f5) {
        Intrinsics.checkNotNullParameter(adConfig, "adConfig");
        C3171h c3171hM2586p = m2586p();
        if (c3171hM2586p != null) {
            C3185hd c3185hd = C3185hd.f2153a;
            C3185hd.m2228a(c3171hM2586p, adConfig, interfaceC3200id, interfaceC3147f5);
        }
    }

    /* JADX INFO: renamed from: a */
    public final void m2570a(C3171h ad) {
        Intrinsics.checkNotNullParameter(ad, "ad");
        try {
            if (m2586p() != null) {
                CollectionsKt.removeFirst(this.ads);
            }
        } catch (Exception unused) {
        }
        this.ads.add(0, ad);
    }
}
