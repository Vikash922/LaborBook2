package com.inmobi.media;

import com.inmobi.adquality.models.AdQualityControl;
import com.inmobi.ads.AdMetaInfo;
import com.inmobi.ads.core.Trackers;
import com.inmobi.ads.core.TrackingInfo;
import com.itextpdf.styledxmlparser.css.CommonCssConstants;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.TimeUnit;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: renamed from: com.inmobi.media.h */
/* JADX INFO: loaded from: classes6.dex */
public class C3171h {
    public static final String CLICK_BEACON = "click";
    public static final C3141f Companion = new C3141f();
    private static final boolean DEFAULT_ALLOW_AUTO_REDIRECTION = false;
    public static final String IMPRESSION_BEACON = "impression";
    private static final long INVALID_AD_EXPIRY = -1;
    public static final String LOAD_AD_TOKEN_URL = "load_ad_token_url";
    public static final String LOAD_AD_TOKEN_URL_FAILURE = "load_ad_token_url_failure";
    private static final String TAG = "h";
    public static final String WIN_BEACON = "win_beacon";
    private final String adAuctionMeta;
    private JSONObject adContent;
    private final Lazy adMetaInfo$delegate;
    private AdQualityControl adQualityControl;
    private String adType;
    private final boolean allowAutoRedirection;
    private JSONArray assetUrls;
    private final JSONObject contextData;

    @InterfaceC2797H4
    private C3307q0 features;
    private final String impressionId;
    private boolean isPreloadWebView;
    private JSONArray landingPageParams;
    private long mExpiryDurationInMillis;
    private long mInsertionTimestampInMillis;
    private String markupType;
    private final JSONObject metaInfo;
    private String pubContent;

    /* JADX INFO: renamed from: sf */
    private String f2117sf;
    private final JSONArray trackers;
    private final List<TrackingInfo> trackingInfo;
    private final JSONObject transaction;
    private String webVast;

    public C3171h() {
        this.webVast = "";
        this.impressionId = "";
        this.trackingInfo = CollectionsKt.emptyList();
        this.transaction = new JSONObject();
        this.pubContent = "";
        this.markupType = "unknown";
        this.adMetaInfo$delegate = LazyKt.lazy(new C3156g(this));
        this.mInsertionTimestampInMillis = System.currentTimeMillis();
    }

    /* JADX INFO: renamed from: B */
    public static /* synthetic */ void m2164B() {
    }

    /* JADX INFO: renamed from: g */
    public static /* synthetic */ void m2165g() {
    }

    /* JADX INFO: renamed from: r */
    public static /* synthetic */ void m2166r() {
    }

    /* JADX INFO: renamed from: v */
    public static /* synthetic */ void m2167v() {
    }

    /* JADX INFO: renamed from: A */
    public final String m2168A() {
        return this.f2117sf;
    }

    /* JADX INFO: renamed from: C */
    public final Boolean m2169C() {
        JSONObject jSONObject = this.contextData;
        if (jSONObject != null) {
            return Boolean.valueOf(jSONObject.optBoolean(CommonCssConstants.ENABLED));
        }
        return null;
    }

    /* JADX INFO: renamed from: D */
    public final JSONArray m2170D() {
        JSONObject jSONObject = this.adContent;
        if (jSONObject != null) {
            return jSONObject.optJSONArray("trackingEvents");
        }
        return null;
    }

    /* JADX INFO: renamed from: E */
    public final JSONObject m2171E() {
        return this.transaction;
    }

    /* JADX INFO: renamed from: F */
    public final String m2172F() {
        return this.webVast;
    }

    /* JADX INFO: renamed from: G */
    public final boolean m2173G() {
        return this.isPreloadWebView;
    }

    /* JADX INFO: renamed from: a */
    public final void m2177a(JSONArray jSONArray) {
        this.assetUrls = jSONArray;
    }

    /* JADX INFO: renamed from: b */
    public final String m2182b() {
        return this.adAuctionMeta;
    }

    /* JADX INFO: renamed from: c */
    public final JSONObject m2185c() {
        return this.adContent;
    }

    /* JADX INFO: renamed from: d */
    public final void m2187d(String str) {
        this.f2117sf = str;
    }

    /* JADX INFO: renamed from: e */
    public final void m2189e(String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.webVast = str;
    }

    /* JADX INFO: renamed from: f */
    public final String m2190f() {
        return this.adType;
    }

    /* JADX INFO: renamed from: h */
    public final String m2192h() {
        JSONObject jSONObject = this.contextData;
        if (jSONObject != null) {
            return jSONObject.optString("advertisedContent", null);
        }
        return null;
    }

    /* JADX INFO: renamed from: i */
    public final boolean m2193i() {
        return this.allowAutoRedirection;
    }

    /* JADX INFO: renamed from: j */
    public final Long m2194j() {
        try {
            JSONObject jSONObject = this.adContent;
            if (jSONObject == null || !jSONObject.has("asPlcId")) {
                return null;
            }
            return Long.valueOf(jSONObject.getLong("asPlcId"));
        } catch (JSONException e) {
            String TAG2 = TAG;
            Intrinsics.checkNotNullExpressionValue(TAG2, "TAG");
            C3402w5 c3402w5 = C3402w5.f2709a;
            C3114d2 event = new C3114d2(e);
            Intrinsics.checkNotNullParameter(event, "event");
            C3402w5.f2712d.m2158a(event);
        }
        return null;
    }

    /* JADX INFO: renamed from: k */
    public final JSONArray m2195k() {
        return this.assetUrls;
    }

    /* JADX INFO: renamed from: l */
    public final String m2196l() {
        JSONObject jSONObject = this.adContent;
        if (jSONObject != null) {
            return jSONObject.optString("baseEventUrl", null);
        }
        return null;
    }

    /* JADX INFO: renamed from: m */
    public final Long m2197m() {
        JSONObject jSONObject = this.contextData;
        if (jSONObject != null) {
            return Long.valueOf(jSONObject.optLong("bidderId"));
        }
        return null;
    }

    /* JADX INFO: renamed from: n */
    public final int m2198n() {
        JSONObject jSONObject = this.contextData;
        if (jSONObject != null) {
            return jSONObject.optInt("casAdTypeId", -1);
        }
        return -1;
    }

    /* JADX INFO: renamed from: o */
    public final String m2199o() {
        JSONObject jSONObject = this.adContent;
        String strOptString = jSONObject != null ? jSONObject.optString("creativeId") : null;
        return strOptString == null ? "" : strOptString;
    }

    /* JADX INFO: renamed from: p */
    public final String m2200p() {
        JSONObject jSONObject = this.metaInfo;
        if (jSONObject != null) {
            return jSONObject.optString("creativeType", null);
        }
        return null;
    }

    /* JADX INFO: renamed from: q */
    public final C3307q0 m2201q() {
        return this.features;
    }

    /* JADX INFO: renamed from: s */
    public final String m2202s() {
        return this.impressionId;
    }

    /* JADX INFO: renamed from: u */
    public final String m2204u() {
        return this.markupType;
    }

    /* JADX INFO: renamed from: w */
    public final String m2205w() {
        JSONObject jSONObject = this.adContent;
        String strOptString = jSONObject != null ? jSONObject.optString("telemetryMetadataBlob") : null;
        return strOptString == null ? "" : strOptString;
    }

    /* JADX INFO: renamed from: x */
    public final String m2206x() {
        return this.pubContent;
    }

    /* JADX INFO: renamed from: y */
    public final Set<C3452za> m2207y() {
        HashSet hashSet = new HashSet();
        try {
            JSONArray jSONArray = this.assetUrls;
            if (jSONArray != null) {
                int length = jSONArray.length();
                for (int i = 0; i < length; i++) {
                    JSONObject jSONObject = new JSONObject(jSONArray.getString(i));
                    byte b = (byte) jSONObject.getInt("type");
                    String strOptString = jSONObject.optString("url");
                    Intrinsics.checkNotNull(strOptString);
                    if (strOptString.length() > 0) {
                        hashSet.add(new C3452za(b, strOptString));
                    }
                }
            }
        } catch (JSONException e) {
            String TAG2 = TAG;
            Intrinsics.checkNotNullExpressionValue(TAG2, "TAG");
            C3402w5 c3402w5 = C3402w5.f2709a;
            C3114d2 event = new C3114d2(e);
            Intrinsics.checkNotNullParameter(event, "event");
            C3402w5.f2712d.m2158a(event);
        }
        return hashSet;
    }

    /* JADX INFO: renamed from: z */
    public final Map<String, String> m2208z() {
        try {
            JSONObject jSONObject = this.adContent;
            JSONObject pubContent = jSONObject != null ? jSONObject.getJSONObject("pubContent") : null;
            if (pubContent != null) {
                Companion.getClass();
                Intrinsics.checkNotNullParameter(pubContent, "pubContent");
                if (!pubContent.has("rewards")) {
                    return null;
                }
                HashMap map = new HashMap();
                JSONObject jSONObjectOptJSONObject = pubContent.optJSONObject("rewards");
                if (jSONObjectOptJSONObject != null) {
                    Iterator<String> itKeys = jSONObjectOptJSONObject.keys();
                    while (itKeys.hasNext()) {
                        String next = itKeys.next();
                        String string = jSONObjectOptJSONObject.getString(next);
                        Intrinsics.checkNotNull(next);
                        Intrinsics.checkNotNull(string);
                        map.put(next, string);
                    }
                }
                return map;
            }
        } catch (JSONException e) {
            String TAG2 = TAG;
            Intrinsics.checkNotNullExpressionValue(TAG2, "TAG");
            C3402w5 c3402w5 = C3402w5.f2709a;
            C3114d2 event = new C3114d2(e);
            Intrinsics.checkNotNullParameter(event, "event");
            C3402w5.f2712d.m2158a(event);
        }
        return null;
    }

    /* JADX INFO: renamed from: a */
    public final void m2180a(boolean z) {
        this.isPreloadWebView = z;
    }

    /* JADX INFO: renamed from: b */
    public final void m2183b(String str) {
        try {
            this.transaction.put(C3412x0.CTX_HASH_KEY, str);
            JSONObject jSONObject = this.adContent;
            if (jSONObject != null) {
                jSONObject.put("transaction", this.transaction);
            }
        } catch (JSONException e) {
            String TAG2 = TAG;
            Intrinsics.checkNotNullExpressionValue(TAG2, "TAG");
            C3402w5 c3402w5 = C3402w5.f2709a;
            C3114d2 event = new C3114d2(e);
            Intrinsics.checkNotNullParameter(event, "event");
            C3402w5.f2712d.m2158a(event);
        }
    }

    /* JADX INFO: renamed from: c */
    public final List<String> m2184c(String type) {
        JSONArray jSONArrayOptJSONArray;
        Intrinsics.checkNotNullParameter(type, "type");
        JSONArray jSONArray = this.trackers;
        if (jSONArray != null && jSONArray.length() != 0) {
            LinkedList linkedList = new LinkedList();
            int length = this.trackers.length();
            for (int i = 0; i < length; i++) {
                try {
                    JSONObject jSONObject = this.trackers.getJSONObject(i);
                    if (Intrinsics.areEqual(type, jSONObject.optString("type")) && (jSONArrayOptJSONArray = jSONObject.optJSONArray("url")) != null) {
                        int length2 = jSONArrayOptJSONArray.length();
                        for (int i2 = 0; i2 < length2; i2++) {
                            linkedList.add(jSONArrayOptJSONArray.getString(i2));
                        }
                    }
                } catch (JSONException unused) {
                    return null;
                }
            }
            if (linkedList.isEmpty()) {
                return null;
            }
            return linkedList;
        }
        if (this.trackingInfo.isEmpty()) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        for (TrackingInfo trackingInfo : this.trackingInfo) {
            for (Trackers trackers : trackingInfo.getTrackers()) {
                try {
                    if (Intrinsics.areEqual(type, trackers.getType())) {
                        arrayList.addAll(trackers.getUrl());
                        List<String> imExts = trackers.getImExts();
                        ArrayList arrayList2 = new ArrayList(CollectionsKt.collectionSizeOrDefault(imExts, 10));
                        Iterator<T> it = imExts.iterator();
                        while (it.hasNext()) {
                            arrayList2.add(trackingInfo.getImBaseUrl() + ((String) it.next()));
                        }
                        arrayList.addAll(arrayList2);
                    }
                } catch (Exception unused2) {
                }
            }
        }
        if (arrayList.isEmpty()) {
            return null;
        }
        return arrayList;
    }

    /* JADX INFO: renamed from: d */
    public final AdMetaInfo m2186d() {
        return (AdMetaInfo) this.adMetaInfo$delegate.getValue();
    }

    /* JADX INFO: renamed from: e */
    public final AdQualityControl m2188e() {
        return this.adQualityControl;
    }

    /* JADX INFO: renamed from: f */
    public final void m2191f(String pubContent) throws JSONException {
        Intrinsics.checkNotNullParameter(pubContent, "pubContent");
        if (Intrinsics.areEqual("inmobiJson", this.markupType)) {
            JSONObject jSONObject = this.adContent;
            if (jSONObject != null) {
                jSONObject.put("pubContent", new JSONObject(pubContent));
            }
        } else {
            JSONObject jSONObject2 = this.adContent;
            if (jSONObject2 != null) {
                jSONObject2.put("pubContent", pubContent);
            }
        }
        this.pubContent = pubContent;
    }

    /* JADX INFO: renamed from: t */
    public final String m2203t() {
        JSONObject jSONObject = this.metaInfo;
        if (jSONObject == null) {
            return "DEFAULT";
        }
        JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray("landingPageParams");
        this.landingPageParams = jSONArrayOptJSONArray;
        if (jSONArrayOptJSONArray == null) {
            return "DEFAULT";
        }
        Object objOpt = jSONArrayOptJSONArray != null ? jSONArrayOptJSONArray.opt(0) : null;
        JSONObject jSONObject2 = objOpt instanceof JSONObject ? (JSONObject) objOpt : null;
        if (jSONObject2 == null) {
            return "DEFAULT";
        }
        String strOptString = jSONObject2.optString("openMode", "DEFAULT");
        Intrinsics.checkNotNullExpressionValue(strOptString, "optString(...)");
        return strOptString;
    }

    /* JADX INFO: renamed from: a */
    public final void m2175a(C3307q0 c3307q0) {
        this.features = c3307q0;
    }

    /* JADX INFO: renamed from: a */
    public final void m2174a() throws IllegalStateException {
        if (!Intrinsics.areEqual(this.markupType, "unknown")) {
            if (this.impressionId.length() != 0) {
                return;
            }
            String TAG2 = TAG;
            Intrinsics.checkNotNullExpressionValue(TAG2, "TAG");
            AbstractC2814I6.m1170a((byte) 1, TAG2, "Impression Id is Null");
            throw new IllegalArgumentException("Invalid Ad");
        }
        String TAG3 = TAG;
        Intrinsics.checkNotNullExpressionValue(TAG3, "TAG");
        AbstractC2814I6.m1170a((byte) 1, TAG3, "UnKnown MarkUp Type");
        throw new IllegalArgumentException("Invalid Ad");
    }

    /* JADX INFO: renamed from: a */
    public final void m2179a(JSONObject jSONObject, String str, long j) {
        this.adContent = jSONObject;
        this.adType = str;
        this.mInsertionTimestampInMillis = System.currentTimeMillis();
        this.mExpiryDurationInMillis = j;
        String str2 = this.f2117sf;
        if (str2 != null) {
            if (!AbstractC3429y2.m2607a(str2)) {
                str2 = null;
            }
            if (str2 != null) {
                this.features = new C3307q0(str2);
            }
        }
    }

    /* JADX INFO: renamed from: a */
    public final boolean m2181a(long j) {
        long jCurrentTimeMillis;
        long j2 = this.mExpiryDurationInMillis;
        if ((j2 == -1 ? -1L : this.mInsertionTimestampInMillis + j2) == -1) {
            jCurrentTimeMillis = (TimeUnit.SECONDS.toMillis(j) + this.mInsertionTimestampInMillis) - System.currentTimeMillis();
        } else {
            jCurrentTimeMillis = (j2 != -1 ? this.mInsertionTimestampInMillis + j2 : -1L) - System.currentTimeMillis();
        }
        return jCurrentTimeMillis < 0;
    }

    /* JADX INFO: renamed from: a */
    public final void m2176a(String buyerPrice) {
        Intrinsics.checkNotNullParameter(buyerPrice, "buyerPrice");
        try {
            this.transaction.put(C3412x0.BUYER_PRICE, Double.parseDouble(buyerPrice));
            JSONObject jSONObject = this.adContent;
            if (jSONObject != null) {
                jSONObject.put("transaction", this.transaction);
            }
        } catch (Exception e) {
            C3402w5 c3402w5 = C3402w5.f2709a;
            C3402w5.f2712d.m2158a(AbstractC3102c5.m2045a(e, "event"));
        }
    }

    /* JADX INFO: renamed from: a */
    public final void m2178a(JSONObject jSONObject) throws JSONException {
        if (jSONObject != null) {
            Iterator<String> itKeys = jSONObject.keys();
            while (itKeys.hasNext()) {
                String next = itKeys.next();
                String str = this.pubContent;
                Intrinsics.checkNotNull(next);
                String string = jSONObject.getString(next);
                Intrinsics.checkNotNullExpressionValue(string, "getString(...)");
                this.pubContent = StringsKt.replace$default(str, next, string, false, 4, (Object) null);
            }
        }
        m2191f(this.pubContent);
    }

    public C3171h(C3171h ad, JSONArray jSONArray) {
        Intrinsics.checkNotNullParameter(ad, "ad");
        this.webVast = "";
        this.impressionId = "";
        this.trackingInfo = CollectionsKt.emptyList();
        this.transaction = new JSONObject();
        this.pubContent = "";
        this.markupType = "unknown";
        this.adMetaInfo$delegate = LazyKt.lazy(new C3156g(this));
        C2974T5.m1819b(ad, this);
        this.assetUrls = jSONArray;
    }
}
