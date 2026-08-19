package com.inmobi.media;

import android.os.SystemClock;
import com.inmobi.ads.InMobiAdRequestStatus;
import com.itextpdf.styledxmlparser.css.CommonCssConstants;
import com.itextpdf.svg.SvgConstants;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.TuplesKt;
import kotlin.collections.MapsKt;
import kotlin.jvm.internal.Intrinsics;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: renamed from: com.inmobi.media.A0 */
/* JADX INFO: loaded from: classes6.dex */
public final class C2688A0 {

    /* JADX INFO: renamed from: a */
    public final AbstractC2928Q0 f809a;

    /* JADX INFO: renamed from: b */
    public final AbstractC2928Q0 f810b;

    /* JADX INFO: renamed from: c */
    public final C3038Y f811c;

    /* JADX INFO: renamed from: d */
    public final String f812d;

    /* JADX INFO: renamed from: e */
    public long f813e;

    /* JADX INFO: renamed from: f */
    public InterfaceC3147f5 f814f;

    /* JADX INFO: renamed from: g */
    public final C3442z0 f815g;

    /* JADX INFO: renamed from: h */
    public final C3427y0 f816h;

    public C2688A0(AbstractC2928Q0 mAdStoreListener, AbstractC2928Q0 mTelemetryListener, C3038Y mAdPlacement) {
        Intrinsics.checkNotNullParameter(mAdStoreListener, "mAdStoreListener");
        Intrinsics.checkNotNullParameter(mTelemetryListener, "mTelemetryListener");
        Intrinsics.checkNotNullParameter(mAdPlacement, "mAdPlacement");
        this.f809a = mAdStoreListener;
        this.f810b = mTelemetryListener;
        this.f811c = mAdPlacement;
        this.f812d = "A0";
        this.f815g = new C3442z0(this);
        this.f816h = new C3427y0(this);
    }

    /* JADX INFO: renamed from: a */
    public final C3412x0 m829a(C2954S mRequest, Integer num) {
        C2982U adNetworkResponse;
        C3256m9 c3256m9M2287b;
        Intrinsics.checkNotNullParameter(mRequest, "networkRequest");
        if (num != null && SystemClock.elapsedRealtime() - this.f813e < num.intValue() * 1000) {
            throw new C2837K(new InMobiAdRequestStatus(InMobiAdRequestStatus.StatusCode.EARLY_REFRESH_REQUEST), (short) 2009);
        }
        if (mRequest != null) {
            Map map = mRequest.f1512D;
            if (map == null) {
                map = new HashMap();
            }
            mRequest.f1512D = map;
        }
        this.f813e = SystemClock.elapsedRealtime();
        Intrinsics.checkNotNullParameter(mRequest, "mAdNetworkRequest");
        try {
            Intrinsics.checkNotNullParameter(mRequest, "mRequest");
            c3256m9M2287b = mRequest.m2287b();
            adNetworkResponse = new C2982U(c3256m9M2287b);
        } catch (Exception unused) {
            adNetworkResponse = null;
        }
        try {
            if (c3256m9M2287b.m2297b()) {
                Intrinsics.checkNotNullExpressionValue(SvgConstants.Attributes.PATH_DATA_QUAD_CURVE_TO, "TAG");
            }
        } catch (Exception unused2) {
            Intrinsics.checkNotNullExpressionValue(SvgConstants.Attributes.PATH_DATA_QUAD_CURVE_TO, "TAG");
        }
        C3196i9 c3196i9 = adNetworkResponse != null ? adNetworkResponse.f1556a.f2333c : null;
        if (adNetworkResponse == null) {
            m832a(MapsKt.mutableMapOf(TuplesKt.m2729to("errorCode", (short) 2108)));
            throw new C2837K(new InMobiAdRequestStatus(InMobiAdRequestStatus.StatusCode.INTERNAL_ERROR), (short) 0);
        }
        if (c3196i9 != null) {
            m832a(MapsKt.mutableMapOf(TuplesKt.m2729to("errorCode", c3196i9.f2180a.toString())));
            InMobiAdRequestStatus inMobiAdRequestStatus = adNetworkResponse.f1557b;
            if (inMobiAdRequestStatus == null) {
                return null;
            }
            throw new C2837K(inMobiAdRequestStatus, (short) 0);
        }
        Intrinsics.checkNotNullParameter(adNetworkResponse, "adNetworkResponse");
        this.f809a.m1674g0();
        try {
            return m830a(new JSONObject(adNetworkResponse.f1556a.m2296a()));
        } catch (JSONException e) {
            m832a(MapsKt.mutableMapOf(TuplesKt.m2729to("errorCode", (short) 2113)));
            InterfaceC3147f5 interfaceC3147f5 = this.f814f;
            if (interfaceC3147f5 != null) {
                String TAG = this.f812d;
                Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
                ((C3162g5) interfaceC3147f5).m2148a(TAG, "Error while parsing ad response.", e);
            }
            throw new C2837K(new InMobiAdRequestStatus(InMobiAdRequestStatus.StatusCode.INTERNAL_ERROR), (short) 0);
        }
    }

    /* JADX INFO: renamed from: a */
    public static String m828a() throws JSONException {
        String strM1248b = C2849Kb.m1248b();
        if (strM1248b == null) {
            return null;
        }
        JSONObject jSONObject = new JSONObject();
        LinkedHashMap linkedHashMap = C2840K2.f1150a;
        jSONObject.put(CommonCssConstants.ROOT, C2810I2.m1161a(CommonCssConstants.ROOT, strM1248b, null).getLastUpdateTimeStamp());
        jSONObject.put("ads", C2810I2.m1161a("ads", strM1248b, null).getLastUpdateTimeStamp());
        jSONObject.put("telemetry", C2810I2.m1161a("telemetry", strM1248b, null).getLastUpdateTimeStamp());
        jSONObject.put("crashReporting", C2810I2.m1161a("crashReporting", strM1248b, null).getLastUpdateTimeStamp());
        jSONObject.put("signals", C2810I2.m1161a("signals", strM1248b, null).getLastUpdateTimeStamp());
        return jSONObject.toString();
    }

    /* JADX WARN: Can't wrap try/catch for region: R(19:0|2|(4:206|3|(1:5)|6)|(1:8)(44:10|11|(1:13)|14|(1:16)|17|(1:19)|20|(1:22)|23|(1:25)|26|(1:28)|29|(1:31)|32|(1:34)|35|(1:37)|38|39|(1:41)|42|(1:44)|45|(1:47)|48|(1:50)|51|(1:53)|54|(1:56)|57|(1:59)|60|(1:62)|63|(1:65)|66|(1:70)|71|72|204|(2:74|(2:90|(1:92))(7:81|(1:83)|213|84|(1:86)|87|(1:89)))(17:95|212|(2:111|(1:113))(4:102|(3:104|105|106)(1:107)|108|(1:110))|123|210|124|(1:126)(4:127|(1:129)|130|(1:132))|141|208|142|(1:144)|145|205|(5:147|(1:149)|150|(1:152)(1:153)|(2:155|(4:182|(1:184)|185|186)(3:187|(2:189|(4:191|(1:193)|194|195)(4:196|(1:198)|199|(1:201)))(1:202)|203))(6:156|(1:158)|159|160|161|162))(8:163|(1:165)|166|(1:168)|169|(1:171)|172|173)|178|(1:180)|(0)(0)))|9|123|210|124|(0)(0)|141|208|142|(0)|145|205|(0)(0)|178|(0)|(0)(0)) */
    /* JADX WARN: Can't wrap try/catch for region: R(22:0|2|206|3|(1:5)|6|(1:8)(44:10|11|(1:13)|14|(1:16)|17|(1:19)|20|(1:22)|23|(1:25)|26|(1:28)|29|(1:31)|32|(1:34)|35|(1:37)|38|39|(1:41)|42|(1:44)|45|(1:47)|48|(1:50)|51|(1:53)|54|(1:56)|57|(1:59)|60|(1:62)|63|(1:65)|66|(1:70)|71|72|204|(2:74|(2:90|(1:92))(7:81|(1:83)|213|84|(1:86)|87|(1:89)))(17:95|212|(2:111|(1:113))(4:102|(3:104|105|106)(1:107)|108|(1:110))|123|210|124|(1:126)(4:127|(1:129)|130|(1:132))|141|208|142|(1:144)|145|205|(5:147|(1:149)|150|(1:152)(1:153)|(2:155|(4:182|(1:184)|185|186)(3:187|(2:189|(4:191|(1:193)|194|195)(4:196|(1:198)|199|(1:201)))(1:202)|203))(6:156|(1:158)|159|160|161|162))(8:163|(1:165)|166|(1:168)|169|(1:171)|172|173)|178|(1:180)|(0)(0)))|9|123|210|124|(0)(0)|141|208|142|(0)|145|205|(0)(0)|178|(0)|(0)(0)) */
    /* JADX WARN: Code restructure failed: missing block: B:134:0x0303, code lost:
    
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:135:0x0304, code lost:
    
        r3 = r27.f814f;
     */
    /* JADX WARN: Code restructure failed: missing block: B:136:0x0306, code lost:
    
        if (r3 != null) goto L137;
     */
    /* JADX WARN: Code restructure failed: missing block: B:137:0x0308, code lost:
    
        r4 = r27.f812d;
        kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r4, "TAG");
        ((com.inmobi.media.C3162g5) r3).m2148a(r4, "error while setting server-side logging lever", r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:138:0x0314, code lost:
    
        r0 = r27.f814f;
     */
    /* JADX WARN: Code restructure failed: missing block: B:139:0x0316, code lost:
    
        if (r0 != null) goto L140;
     */
    /* JADX WARN: Code restructure failed: missing block: B:140:0x0318, code lost:
    
        ((com.inmobi.media.C3162g5) r0).m2149a(false);
     */
    /* JADX WARN: Code restructure failed: missing block: B:174:0x0441, code lost:
    
        r0 = e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:176:0x0443, code lost:
    
        r0 = e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:177:0x0444, code lost:
    
        r5 = r18;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:122:0x02bc  */
    /* JADX WARN: Removed duplicated region for block: B:126:0x02d0  */
    /* JADX WARN: Removed duplicated region for block: B:127:0x02d1 A[Catch: JSONException -> 0x0303, TryCatch #4 {JSONException -> 0x0303, blocks: (B:124:0x02ca, B:127:0x02d1, B:129:0x02e2, B:130:0x02f9, B:132:0x02fd), top: B:210:0x02ca }] */
    /* JADX WARN: Removed duplicated region for block: B:144:0x0326 A[Catch: JSONException -> 0x0443, TryCatch #3 {JSONException -> 0x0443, blocks: (B:142:0x0322, B:144:0x0326, B:145:0x0332, B:147:0x0340, B:149:0x0344, B:150:0x0350, B:152:0x0358, B:156:0x0385, B:158:0x0389, B:159:0x0395), top: B:208:0x0322 }] */
    /* JADX WARN: Removed duplicated region for block: B:147:0x0340 A[Catch: JSONException -> 0x0443, TryCatch #3 {JSONException -> 0x0443, blocks: (B:142:0x0322, B:144:0x0326, B:145:0x0332, B:147:0x0340, B:149:0x0344, B:150:0x0350, B:152:0x0358, B:156:0x0385, B:158:0x0389, B:159:0x0395), top: B:208:0x0322 }] */
    /* JADX WARN: Removed duplicated region for block: B:163:0x03bb A[Catch: JSONException -> 0x0441, TryCatch #1 {JSONException -> 0x0441, blocks: (B:161:0x039d, B:162:0x03ba, B:163:0x03bb, B:165:0x03c1, B:166:0x03d8, B:168:0x041a, B:169:0x041f, B:171:0x0427, B:172:0x042c, B:173:0x0440), top: B:205:0x033e }] */
    /* JADX WARN: Removed duplicated region for block: B:180:0x044a  */
    /* JADX WARN: Removed duplicated region for block: B:182:0x0458  */
    /* JADX WARN: Removed duplicated region for block: B:187:0x0498  */
    /* JADX WARN: Type inference failed for: r5v1 */
    /* JADX WARN: Type inference failed for: r5v14 */
    /* JADX WARN: Type inference failed for: r5v15 */
    /* JADX WARN: Type inference failed for: r5v2 */
    /* JADX WARN: Type inference failed for: r5v3, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r5v4, types: [int] */
    /* JADX WARN: Type inference failed for: r5v8 */
    /* JADX INFO: renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final com.inmobi.media.C3412x0 m830a(org.json.JSONObject r28) {
        /*
            Method dump skipped, instruction units count: 1276
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.inmobi.media.C2688A0.m830a(org.json.JSONObject):com.inmobi.media.x0");
    }

    /* JADX INFO: renamed from: a */
    public final void m831a(Boolean bool) {
        Map<String, Object> mapMutableMapOf = MapsKt.mutableMapOf(TuplesKt.m2729to("latency", Long.valueOf(SystemClock.elapsedRealtime() - this.f813e)), TuplesKt.m2729to("networkType", C2751E3.m1005q()), TuplesKt.m2729to("plId", Long.valueOf(this.f811c.m1938l())));
        String strM1939m = this.f811c.m1939m();
        if (strM1939m != null) {
            mapMutableMapOf.put("plType", strM1939m);
        }
        if (bool != null) {
            mapMutableMapOf.put("isRewarded", bool);
        }
        String strM1929b = this.f811c.m1929b();
        if (strM1929b != null) {
            mapMutableMapOf.put("adType", strM1929b);
        }
        this.f810b.m1636b("ServerFill", mapMutableMapOf);
    }

    /* JADX INFO: renamed from: a */
    public final void m832a(Map payload) {
        Intrinsics.checkNotNullParameter(payload, "payload");
        payload.put("latency", Long.valueOf(SystemClock.elapsedRealtime() - this.f813e));
        String strM1929b = this.f811c.m1929b();
        if (strM1929b != null) {
            payload.put("adType", strM1929b);
        }
        payload.put("networkType", C2751E3.m1005q());
        payload.put("plId", Long.valueOf(this.f811c.m1938l()));
        String strM1939m = this.f811c.m1939m();
        if (strM1939m != null) {
            payload.put("plType", strM1939m);
        }
        this.f810b.m1636b("ServerError", (Map<String, Object>) payload);
    }
}
