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

/* JADX INFO: loaded from: classes6.dex */
public abstract class J {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final String f144a = SvgConstants.Attributes.PATH_DATA_REL_LINE_TO_H;

    public static void a(C0325h ad, JSONObject adJson, String str, long j, InterfaceC0298f5 interfaceC0298f5) {
        Intrinsics.checkNotNullParameter(ad, "ad");
        Intrinsics.checkNotNullParameter(adJson, "adJson");
        ad.a();
        long jOptLong = adJson.optLong("expiry", TimeUnit.MILLISECONDS.toSeconds(j));
        ad.a(adJson, str, jOptLong <= 0 ? -1L : TimeUnit.SECONDS.toMillis(jOptLong));
        if (Intrinsics.areEqual("inmobiJson", ad.u())) {
            try {
                JSONObject jSONObject = adJson.getJSONObject("pubContent");
                if (interfaceC0298f5 != null) {
                    String TAG = f144a;
                    Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
                    String string = jSONObject.toString();
                    Intrinsics.checkNotNullExpressionValue(string, "toString(...)");
                    ((C0314g5) interfaceC0298f5).a(TAG, string);
                }
                if (jSONObject.isNull("rootContainer")) {
                    if (interfaceC0298f5 != null) {
                        String TAG2 = f144a;
                        Intrinsics.checkNotNullExpressionValue(TAG2, "TAG");
                        ((C0314g5) interfaceC0298f5).b(TAG2, "Missing key (rootContainer) in the ad markup");
                        return;
                    }
                    return;
                }
                JSONObject jSONObject2 = jSONObject.getJSONObject("rootContainer");
                JSONArray jSONArray = new JSONArray();
                Intrinsics.checkNotNull(jSONObject2);
                Iterator it = b(jSONObject2, interfaceC0298f5).iterator();
                while (it.hasNext()) {
                    a(jSONArray, (String) it.next(), (byte) 2);
                }
                Iterator it2 = a(jSONObject2, interfaceC0298f5).iterator();
                while (it2.hasNext()) {
                    a(jSONArray, (String) it2.next(), (byte) 1);
                }
                boolean zD = d(jSONObject2, interfaceC0298f5);
                ad.a(jSONArray);
                ad.a(zD);
            } catch (Exception e) {
                Intrinsics.checkNotNullExpressionValue(f144a, "TAG");
                C0551w5 c0551w5 = C0551w5.f513a;
                C0551w5.d.a(AbstractC0251c5.a(e, "event"));
            }
        }
    }

    public static ArrayList b(JSONObject jSONObject, InterfaceC0298f5 interfaceC0298f5) {
        JSONArray jSONArray;
        ArrayList arrayList = new ArrayList();
        try {
            jSONArray = jSONObject.getJSONArray("assetValue");
            Intrinsics.checkNotNull(jSONArray);
        } catch (JSONException e) {
            if (interfaceC0298f5 != null) {
                String str = f144a;
                ((C0314g5) interfaceC0298f5).b(str, AbstractC0363j6.a(str, "TAG", "Error getting getImageAssetUrls (").append(e.getMessage()).append(')').toString());
            }
        }
        if (AbstractC0576y2.a(jSONArray)) {
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
                arrayList.addAll(b(jSONObject2, interfaceC0298f5));
            }
        }
        return arrayList;
    }

    public static String c(JSONObject jSONObject, InterfaceC0298f5 interfaceC0298f5) {
        String string;
        String strC;
        try {
            JSONArray jSONArray = jSONObject.getJSONArray("assetValue");
            Intrinsics.checkNotNull(jSONArray);
            if (AbstractC0576y2.a(jSONArray)) {
                return "";
            }
            String string2 = jSONObject.getString("assetType");
            if (StringsKt.equals(AnalyticsEvents.PARAMETER_SHARE_DIALOG_CONTENT_VIDEO, string2, true)) {
                string = jSONArray.getString(0);
            } else {
                if (StringsKt.equals("container", string2, true)) {
                    int length = jSONArray.length();
                    strC = "";
                    for (int i = 0; i < length; i++) {
                        JSONObject jSONObject2 = jSONArray.getJSONObject(i);
                        Intrinsics.checkNotNull(jSONObject2);
                        strC = c(jSONObject2, interfaceC0298f5);
                        int length2 = strC.length() - 1;
                        int i2 = 0;
                        boolean z = false;
                        while (i2 <= length2) {
                            boolean z2 = Intrinsics.compare((int) strC.charAt(!z ? i2 : length2), 32) <= 0;
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
                        if (strC.subSequence(i2, length2 + 1).toString().length() > 0) {
                            break;
                        }
                    }
                    Intrinsics.checkNotNull(strC);
                    return strC;
                }
                string = "";
            }
            strC = string;
            Intrinsics.checkNotNull(strC);
            return strC;
        } catch (JSONException e) {
            if (interfaceC0298f5 != null) {
                String str = f144a;
                ((C0314g5) interfaceC0298f5).b(str, AbstractC0363j6.a(str, "TAG", "Error getting VAST video XML (").append(e.getMessage()).append(')').toString());
            }
            C0551w5 c0551w5 = C0551w5.f513a;
            C0264d2 event = new C0264d2(e);
            Intrinsics.checkNotNullParameter(event, "event");
            C0551w5.d.a(event);
            return "";
        }
    }

    public static boolean d(JSONObject jSONObject, InterfaceC0298f5 interfaceC0298f5) {
        try {
            JSONArray jSONArray = jSONObject.getJSONArray("assetValue");
            Intrinsics.checkNotNull(jSONArray);
            if (AbstractC0576y2.a(jSONArray)) {
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
            boolean zD = false;
            for (int i = 0; i < length; i++) {
                JSONObject jSONObject2 = jSONArray.getJSONObject(i);
                Intrinsics.checkNotNull(jSONObject2);
                zD = d(jSONObject2, interfaceC0298f5);
                if (zD) {
                    break;
                }
            }
            return zD;
        } catch (JSONException e) {
            if (interfaceC0298f5 != null) {
                String str = f144a;
                ((C0314g5) interfaceC0298f5).b(str, AbstractC0363j6.a(str, "TAG", "Error getting preload webview flag (").append(e.getMessage()).append(')').toString());
            }
            C0551w5 c0551w5 = C0551w5.f513a;
            C0264d2 event = new C0264d2(e);
            Intrinsics.checkNotNullParameter(event, "event");
            C0551w5.d.a(event);
            return false;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:100:0x01f2 A[Catch: JSONException -> 0x0211, TryCatch #0 {JSONException -> 0x0211, blocks: (B:98:0x01e7, B:100:0x01f2, B:102:0x01fc), top: B:139:0x01e7 }] */
    /* JADX WARN: Removed duplicated region for block: B:110:0x022b  */
    /* JADX WARN: Removed duplicated region for block: B:116:0x0248 A[Catch: JSONException -> 0x0267, TryCatch #2 {JSONException -> 0x0267, blocks: (B:114:0x023d, B:116:0x0248, B:118:0x0252), top: B:143:0x023d }] */
    /* JADX WARN: Removed duplicated region for block: B:126:0x0280  */
    /* JADX WARN: Removed duplicated region for block: B:90:0x01b0  */
    /* JADX WARN: Removed duplicated region for block: B:94:0x01d4  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final com.inmobi.media.C0325h a(com.inmobi.media.C0325h r20, com.inmobi.commons.core.configs.AdConfig r21, com.inmobi.media.InterfaceC0298f5 r22) {
        /*
            Method dump skipped, instruction units count: 705
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.inmobi.media.J.a(com.inmobi.media.h, com.inmobi.commons.core.configs.AdConfig, com.inmobi.media.f5):com.inmobi.media.h");
    }

    public static void a(JSONArray jSONArray, String str, byte b) throws JSONException {
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("type", (int) b);
        jSONObject.put("url", str);
        jSONArray.put(jSONObject);
    }

    public static ArrayList a(JSONObject jSONObject, InterfaceC0298f5 interfaceC0298f5) {
        JSONArray jSONArray;
        ArrayList arrayList = new ArrayList();
        try {
            jSONArray = jSONObject.getJSONArray("assetValue");
            Intrinsics.checkNotNull(jSONArray);
        } catch (JSONException e) {
            if (interfaceC0298f5 != null) {
                String str = f144a;
                ((C0314g5) interfaceC0298f5).b(str, AbstractC0363j6.a(str, "TAG", "Error getting getGifAssetUrls (").append(e.getMessage()).append(')').toString());
            }
        }
        if (AbstractC0576y2.a(jSONArray)) {
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
                arrayList.addAll(a(jSONObject2, interfaceC0298f5));
            }
        }
        return arrayList;
    }
}
