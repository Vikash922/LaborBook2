package com.inmobi.media;

import com.facebook.internal.AnalyticsEvents;
import com.itextpdf.svg.SvgConstants;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.concurrent.TimeUnit;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: renamed from: com.inmobi.media.J */
/* JADX INFO: loaded from: classes6.dex */
public abstract class AbstractC2822J {

    /* JADX INFO: renamed from: a */
    public static final String f1126a = SvgConstants.Attributes.PATH_DATA_REL_LINE_TO_H;

    /* JADX INFO: renamed from: a */
    public static void m1181a(C3171h ad, JSONObject adJson, String str, long j, InterfaceC3147f5 interfaceC3147f5) {
        Intrinsics.checkNotNullParameter(ad, "ad");
        Intrinsics.checkNotNullParameter(adJson, "adJson");
        ad.m2174a();
        long jOptLong = adJson.optLong("expiry", TimeUnit.MILLISECONDS.toSeconds(j));
        ad.m2179a(adJson, str, jOptLong <= 0 ? -1L : TimeUnit.SECONDS.toMillis(jOptLong));
        if (Intrinsics.areEqual("inmobiJson", ad.m2204u())) {
            try {
                JSONObject jSONObject = adJson.getJSONObject("pubContent");
                if (interfaceC3147f5 != null) {
                    String TAG = f1126a;
                    Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
                    String string = jSONObject.toString();
                    Intrinsics.checkNotNullExpressionValue(string, "toString(...)");
                    ((C3162g5) interfaceC3147f5).m2147a(TAG, string);
                }
                if (jSONObject.isNull("rootContainer")) {
                    if (interfaceC3147f5 != null) {
                        String TAG2 = f1126a;
                        Intrinsics.checkNotNullExpressionValue(TAG2, "TAG");
                        ((C3162g5) interfaceC3147f5).m2151b(TAG2, "Missing key (rootContainer) in the ad markup");
                        return;
                    }
                    return;
                }
                JSONObject jSONObject2 = jSONObject.getJSONObject("rootContainer");
                JSONArray jSONArray = new JSONArray();
                Intrinsics.checkNotNull(jSONObject2);
                Iterator it = m1183b(jSONObject2, interfaceC3147f5).iterator();
                while (it.hasNext()) {
                    m1182a(jSONArray, (String) it.next(), (byte) 2);
                }
                Iterator it2 = m1180a(jSONObject2, interfaceC3147f5).iterator();
                while (it2.hasNext()) {
                    m1182a(jSONArray, (String) it2.next(), (byte) 1);
                }
                boolean zM1185d = m1185d(jSONObject2, interfaceC3147f5);
                ad.m2177a(jSONArray);
                ad.m2180a(zM1185d);
            } catch (Exception e) {
                Intrinsics.checkNotNullExpressionValue(f1126a, "TAG");
                C3402w5 c3402w5 = C3402w5.f2709a;
                C3402w5.f2712d.m2158a(AbstractC3102c5.m2045a(e, "event"));
            }
        }
    }

    /* JADX INFO: renamed from: b */
    public static ArrayList m1183b(JSONObject jSONObject, InterfaceC3147f5 interfaceC3147f5) {
        JSONArray jSONArray;
        ArrayList arrayList = new ArrayList();
        try {
            jSONArray = jSONObject.getJSONArray("assetValue");
            Intrinsics.checkNotNull(jSONArray);
        } catch (JSONException e) {
            if (interfaceC3147f5 != null) {
                String str = f1126a;
                ((C3162g5) interfaceC3147f5).m2151b(str, AbstractC3208j6.m2261a(str, "TAG", "Error getting getImageAssetUrls (").append(e.getMessage()).append(')').toString());
            }
        }
        if (AbstractC3429y2.m2608a(jSONArray)) {
            return arrayList;
        }
        String string = jSONObject.getString("assetType");
        if (StringsKt.equals("image", string, true)) {
            if (!jSONObject.isNull("preload") && jSONObject.getBoolean("preload")) {
                String string2 = jSONArray.getString(0);
                Intrinsics.checkNotNullExpressionValue(string2, "getString(...)");
                arrayList.add(string2);
            }
        } else if (StringsKt.equals("container", string, true)) {
            int length = jSONArray.length();
            for (int i = 0; i < length; i++) {
                JSONObject jSONObject2 = jSONArray.getJSONObject(i);
                Intrinsics.checkNotNull(jSONObject2);
                arrayList.addAll(m1183b(jSONObject2, interfaceC3147f5));
            }
        }
        return arrayList;
    }

    /* JADX INFO: renamed from: c */
    public static String m1184c(JSONObject jSONObject, InterfaceC3147f5 interfaceC3147f5) {
        String string;
        String strM1184c;
        try {
            JSONArray jSONArray = jSONObject.getJSONArray("assetValue");
            Intrinsics.checkNotNull(jSONArray);
            if (AbstractC3429y2.m2608a(jSONArray)) {
                return "";
            }
            String string2 = jSONObject.getString("assetType");
            if (StringsKt.equals(AnalyticsEvents.PARAMETER_SHARE_DIALOG_CONTENT_VIDEO, string2, true)) {
                string = jSONArray.getString(0);
            } else {
                if (StringsKt.equals("container", string2, true)) {
                    int length = jSONArray.length();
                    strM1184c = "";
                    for (int i = 0; i < length; i++) {
                        JSONObject jSONObject2 = jSONArray.getJSONObject(i);
                        Intrinsics.checkNotNull(jSONObject2);
                        strM1184c = m1184c(jSONObject2, interfaceC3147f5);
                        int length2 = strM1184c.length() - 1;
                        int i2 = 0;
                        boolean z = false;
                        while (i2 <= length2) {
                            boolean z2 = Intrinsics.compare((int) strM1184c.charAt(!z ? i2 : length2), 32) <= 0;
                            if (z) {
                                if (!z2) {
                                    break;
                                }
                                length2--;
                            } else if (z2) {
                                i2++;
                            } else {
                                z = true;
                            }
                        }
                        if (strM1184c.subSequence(i2, length2 + 1).toString().length() > 0) {
                            break;
                        }
                    }
                    Intrinsics.checkNotNull(strM1184c);
                    return strM1184c;
                }
                string = "";
            }
            strM1184c = string;
            Intrinsics.checkNotNull(strM1184c);
            return strM1184c;
        } catch (JSONException e) {
            if (interfaceC3147f5 != null) {
                String str = f1126a;
                ((C3162g5) interfaceC3147f5).m2151b(str, AbstractC3208j6.m2261a(str, "TAG", "Error getting VAST video XML (").append(e.getMessage()).append(')').toString());
            }
            C3402w5 c3402w5 = C3402w5.f2709a;
            C3114d2 event = new C3114d2(e);
            Intrinsics.checkNotNullParameter(event, "event");
            C3402w5.f2712d.m2158a(event);
            return "";
        }
    }

    /* JADX INFO: renamed from: d */
    public static boolean m1185d(JSONObject jSONObject, InterfaceC3147f5 interfaceC3147f5) {
        try {
            JSONArray jSONArray = jSONObject.getJSONArray("assetValue");
            Intrinsics.checkNotNull(jSONArray);
            if (AbstractC3429y2.m2608a(jSONArray)) {
                return false;
            }
            String string = jSONObject.getString("assetType");
            if (StringsKt.equals("webview", string, true)) {
                return !jSONObject.isNull("preload") && jSONObject.getBoolean("preload");
            }
            if (!StringsKt.equals("container", string, true)) {
                return false;
            }
            int length = jSONArray.length();
            boolean zM1185d = false;
            for (int i = 0; i < length; i++) {
                JSONObject jSONObject2 = jSONArray.getJSONObject(i);
                Intrinsics.checkNotNull(jSONObject2);
                zM1185d = m1185d(jSONObject2, interfaceC3147f5);
                if (zM1185d) {
                    break;
                }
            }
            return zM1185d;
        } catch (JSONException e) {
            if (interfaceC3147f5 != null) {
                String str = f1126a;
                ((C3162g5) interfaceC3147f5).m2151b(str, AbstractC3208j6.m2261a(str, "TAG", "Error getting preload webview flag (").append(e.getMessage()).append(')').toString());
            }
            C3402w5 c3402w5 = C3402w5.f2709a;
            C3114d2 event = new C3114d2(e);
            Intrinsics.checkNotNullParameter(event, "event");
            C3402w5.f2712d.m2158a(event);
            return false;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:100:0x01f2 A[Catch: JSONException -> 0x0211, TryCatch #0 {JSONException -> 0x0211, blocks: (B:98:0x01e7, B:100:0x01f2, B:102:0x01fc), top: B:139:0x01e7 }] */
    /* JADX WARN: Removed duplicated region for block: B:110:0x022b  */
    /* JADX WARN: Removed duplicated region for block: B:116:0x0248 A[Catch: JSONException -> 0x0267, TryCatch #2 {JSONException -> 0x0267, blocks: (B:114:0x023d, B:116:0x0248, B:118:0x0252), top: B:143:0x023d }] */
    /* JADX WARN: Removed duplicated region for block: B:126:0x0280  */
    /* JADX WARN: Removed duplicated region for block: B:90:0x01b0  */
    /* JADX WARN: Removed duplicated region for block: B:94:0x01d4  */
    /* JADX INFO: renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final com.inmobi.media.C3171h m1179a(com.inmobi.media.C3171h r20, com.inmobi.commons.core.configs.AdConfig r21, com.inmobi.media.InterfaceC3147f5 r22) {
        /*
            Method dump skipped, instruction units count: 705
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.inmobi.media.AbstractC2822J.m1179a(com.inmobi.media.h, com.inmobi.commons.core.configs.AdConfig, com.inmobi.media.f5):com.inmobi.media.h");
    }

    /* JADX INFO: renamed from: a */
    public static void m1182a(JSONArray jSONArray, String str, byte b) throws JSONException {
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("type", (int) b);
        jSONObject.put("url", str);
        jSONArray.put(jSONObject);
    }

    /* JADX INFO: renamed from: a */
    public static ArrayList m1180a(JSONObject jSONObject, InterfaceC3147f5 interfaceC3147f5) {
        JSONArray jSONArray;
        ArrayList arrayList = new ArrayList();
        try {
            jSONArray = jSONObject.getJSONArray("assetValue");
            Intrinsics.checkNotNull(jSONArray);
        } catch (JSONException e) {
            if (interfaceC3147f5 != null) {
                String str = f1126a;
                ((C3162g5) interfaceC3147f5).m2151b(str, AbstractC3208j6.m2261a(str, "TAG", "Error getting getGifAssetUrls (").append(e.getMessage()).append(')').toString());
            }
        }
        if (AbstractC3429y2.m2608a(jSONArray)) {
            return arrayList;
        }
        String string = jSONObject.getString("assetType");
        if (StringsKt.equals("gif", string, true)) {
            String string2 = jSONArray.getString(0);
            Intrinsics.checkNotNullExpressionValue(string2, "getString(...)");
            arrayList.add(string2);
        } else if (StringsKt.equals("container", string, true)) {
            int length = jSONArray.length();
            for (int i = 0; i < length; i++) {
                JSONObject jSONObject2 = jSONArray.getJSONObject(i);
                Intrinsics.checkNotNull(jSONObject2);
                arrayList.addAll(m1180a(jSONObject2, interfaceC3147f5));
            }
        }
        return arrayList;
    }
}
