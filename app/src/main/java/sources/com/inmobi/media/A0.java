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

/* JADX INFO: loaded from: classes6.dex */
public final class A0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Q0 f70a;
    public final Q0 b;
    public final Y c;
    public final String d;
    public long e;
    public InterfaceC0298f5 f;
    public final C0588z0 g;
    public final C0574y0 h;

    public A0(Q0 mAdStoreListener, Q0 mTelemetryListener, Y mAdPlacement) {
        Intrinsics.checkNotNullParameter(mAdStoreListener, "mAdStoreListener");
        Intrinsics.checkNotNullParameter(mTelemetryListener, "mTelemetryListener");
        Intrinsics.checkNotNullParameter(mAdPlacement, "mAdPlacement");
        this.f70a = mAdStoreListener;
        this.b = mTelemetryListener;
        this.c = mAdPlacement;
        this.d = "A0";
        this.g = new C0588z0(this);
        this.h = new C0574y0(this);
    }

    public final C0560x0 a(S mRequest, Integer num) {
        U adNetworkResponse;
        C0412m9 c0412m9B;
        Intrinsics.checkNotNullParameter(mRequest, "networkRequest");
        if (num != null && SystemClock.elapsedRealtime() - this.e < num.intValue() * 1000) {
            throw new K(new InMobiAdRequestStatus(InMobiAdRequestStatus.StatusCode.EARLY_REFRESH_REQUEST), (short) 2009);
        }
        if (mRequest != null) {
            Map map = mRequest.D;
            if (map == null) {
                map = new HashMap();
            }
            mRequest.D = map;
        }
        this.e = SystemClock.elapsedRealtime();
        Intrinsics.checkNotNullParameter(mRequest, "mAdNetworkRequest");
        try {
            Intrinsics.checkNotNullParameter(mRequest, "mRequest");
            c0412m9B = mRequest.b();
            adNetworkResponse = new U(c0412m9B);
        } catch (Exception unused) {
            adNetworkResponse = null;
        }
        try {
            if (c0412m9B.b()) {
                Intrinsics.checkNotNullExpressionValue(SvgConstants.Attributes.PATH_DATA_QUAD_CURVE_TO, "TAG");
            }
        } catch (Exception unused2) {
            Intrinsics.checkNotNullExpressionValue(SvgConstants.Attributes.PATH_DATA_QUAD_CURVE_TO, "TAG");
        }
        C0350i9 c0350i9 = adNetworkResponse != null ? adNetworkResponse.f250a.c : null;
        if (adNetworkResponse == null) {
            a(MapsKt.mutableMapOf(TuplesKt.to("errorCode", (short) 2108)));
            throw new K(new InMobiAdRequestStatus(InMobiAdRequestStatus.StatusCode.INTERNAL_ERROR), (short) 0);
        }
        if (c0350i9 != null) {
            a(MapsKt.mutableMapOf(TuplesKt.to("errorCode", c0350i9.f385a.toString())));
            InMobiAdRequestStatus inMobiAdRequestStatus = adNetworkResponse.b;
            if (inMobiAdRequestStatus == null) {
                return null;
            }
            throw new K(inMobiAdRequestStatus, (short) 0);
        }
        Intrinsics.checkNotNullParameter(adNetworkResponse, "adNetworkResponse");
        this.f70a.g0();
        try {
            return a(new JSONObject(adNetworkResponse.f250a.a()));
        } catch (JSONException e) {
            a(MapsKt.mutableMapOf(TuplesKt.to("errorCode", (short) 2113)));
            InterfaceC0298f5 interfaceC0298f5 = this.f;
            if (interfaceC0298f5 != null) {
                String TAG = this.d;
                Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
                ((C0314g5) interfaceC0298f5).a(TAG, "Error while parsing ad response.", e);
            }
            throw new K(new InMobiAdRequestStatus(InMobiAdRequestStatus.StatusCode.INTERNAL_ERROR), (short) 0);
        }
    }

    public static String a() throws JSONException {
        String strB = Kb.b();
        if (strB == null) {
            return null;
        }
        JSONObject jSONObject = new JSONObject();
        LinkedHashMap linkedHashMap = K2.f154a;
        jSONObject.put(CommonCssConstants.ROOT, I2.a(CommonCssConstants.ROOT, strB, null).getLastUpdateTimeStamp());
        jSONObject.put("ads", I2.a("ads", strB, null).getLastUpdateTimeStamp());
        jSONObject.put("telemetry", I2.a("telemetry", strB, null).getLastUpdateTimeStamp());
        jSONObject.put("crashReporting", I2.a("crashReporting", strB, null).getLastUpdateTimeStamp());
        jSONObject.put("signals", I2.a("signals", strB, null).getLastUpdateTimeStamp());
        return jSONObject.toString();
    }

    /* JADX WARN: Can't wrap try/catch for region: R(19:0|2|(4:206|3|(1:5)|6)|(1:8)(44:10|11|(1:13)|14|(1:16)|17|(1:19)|20|(1:22)|23|(1:25)|26|(1:28)|29|(1:31)|32|(1:34)|35|(1:37)|38|39|(1:41)|42|(1:44)|45|(1:47)|48|(1:50)|51|(1:53)|54|(1:56)|57|(1:59)|60|(1:62)|63|(1:65)|66|(1:70)|71|72|204|(2:74|(2:90|(1:92))(7:81|(1:83)|213|84|(1:86)|87|(1:89)))(17:95|212|(2:111|(1:113))(4:102|(3:104|105|106)(1:107)|108|(1:110))|123|210|124|(1:126)(4:127|(1:129)|130|(1:132))|141|208|142|(1:144)|145|205|(5:147|(1:149)|150|(1:152)(1:153)|(2:155|(4:182|(1:184)|185|186)(3:187|(2:189|(4:191|(1:193)|194|195)(4:196|(1:198)|199|(1:201)))(1:202)|203))(6:156|(1:158)|159|160|161|162))(8:163|(1:165)|166|(1:168)|169|(1:171)|172|173)|178|(1:180)|(0)(0)))|9|123|210|124|(0)(0)|141|208|142|(0)|145|205|(0)(0)|178|(0)|(0)(0)) */
    /* JADX WARN: Can't wrap try/catch for region: R(22:0|2|206|3|(1:5)|6|(1:8)(44:10|11|(1:13)|14|(1:16)|17|(1:19)|20|(1:22)|23|(1:25)|26|(1:28)|29|(1:31)|32|(1:34)|35|(1:37)|38|39|(1:41)|42|(1:44)|45|(1:47)|48|(1:50)|51|(1:53)|54|(1:56)|57|(1:59)|60|(1:62)|63|(1:65)|66|(1:70)|71|72|204|(2:74|(2:90|(1:92))(7:81|(1:83)|213|84|(1:86)|87|(1:89)))(17:95|212|(2:111|(1:113))(4:102|(3:104|105|106)(1:107)|108|(1:110))|123|210|124|(1:126)(4:127|(1:129)|130|(1:132))|141|208|142|(1:144)|145|205|(5:147|(1:149)|150|(1:152)(1:153)|(2:155|(4:182|(1:184)|185|186)(3:187|(2:189|(4:191|(1:193)|194|195)(4:196|(1:198)|199|(1:201)))(1:202)|203))(6:156|(1:158)|159|160|161|162))(8:163|(1:165)|166|(1:168)|169|(1:171)|172|173)|178|(1:180)|(0)(0)))|9|123|210|124|(0)(0)|141|208|142|(0)|145|205|(0)(0)|178|(0)|(0)(0)) */
    /* JADX WARN: Code restructure failed: missing block: B:134:0x0303, code lost:
    
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:135:0x0304, code lost:
    
        r3 = r27.f;
     */
    /* JADX WARN: Code restructure failed: missing block: B:136:0x0306, code lost:
    
        if (r3 != null) goto L137;
     */
    /* JADX WARN: Code restructure failed: missing block: B:137:0x0308, code lost:
    
        r4 = r27.d;
        kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r4, "TAG");
        ((com.inmobi.media.C0314g5) r3).a(r4, "error while setting server-side logging lever", r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:138:0x0314, code lost:
    
        r0 = r27.f;
     */
    /* JADX WARN: Code restructure failed: missing block: B:139:0x0316, code lost:
    
        if (r0 != null) goto L140;
     */
    /* JADX WARN: Code restructure failed: missing block: B:140:0x0318, code lost:
    
        ((com.inmobi.media.C0314g5) r0).a(false);
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
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final com.inmobi.media.C0560x0 a(org.json.JSONObject r28) {
        /*
            Method dump skipped, instruction units count: 1276
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.inmobi.media.A0.a(org.json.JSONObject):com.inmobi.media.x0");
    }

    public final void a(Boolean bool) {
        Map<String, Object> mapMutableMapOf = MapsKt.mutableMapOf(TuplesKt.to("latency", Long.valueOf(SystemClock.elapsedRealtime() - this.e)), TuplesKt.to("networkType", E3.q()), TuplesKt.to("plId", Long.valueOf(this.c.l())));
        String strM = this.c.m();
        if (strM != null) {
            mapMutableMapOf.put("plType", strM);
        }
        if (bool != null) {
            mapMutableMapOf.put("isRewarded", bool);
        }
        String strB = this.c.b();
        if (strB != null) {
            mapMutableMapOf.put("adType", strB);
        }
        this.b.b("ServerFill", mapMutableMapOf);
    }

    public final void a(Map payload) {
        Intrinsics.checkNotNullParameter(payload, "payload");
        payload.put("latency", Long.valueOf(SystemClock.elapsedRealtime() - this.e));
        String strB = this.c.b();
        if (strB != null) {
            payload.put("adType", strB);
        }
        payload.put("networkType", E3.q());
        payload.put("plId", Long.valueOf(this.c.l()));
        String strM = this.c.m();
        if (strM != null) {
            payload.put("plType", strM);
        }
        this.b.b("ServerError", (Map<String, Object>) payload);
    }
}
