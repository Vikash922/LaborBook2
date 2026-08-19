package com.inmobi.media;

import com.facebook.gamingservices.cloudgaming.internal.SDKConstants;
import com.inmobi.ads.InMobiAdRequestStatus;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.Map;
import kotlin.TuplesKt;
import kotlin.collections.MapsKt;
import kotlin.jvm.internal.Intrinsics;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: renamed from: com.inmobi.media.w6 */
/* JADX INFO: loaded from: classes6.dex */
public final class C3403w6 extends AbstractC2820Ic {

    /* JADX INFO: renamed from: d */
    public final byte[] f2713d;

    /* JADX INFO: renamed from: e */
    public final long f2714e;

    /* JADX INFO: renamed from: f */
    public final InterfaceC3147f5 f2715f;

    /* JADX INFO: renamed from: g */
    public final WeakReference f2716g;

    /* JADX INFO: renamed from: h */
    public short f2717h;

    /* JADX INFO: renamed from: i */
    public String f2718i;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C3403w6(AbstractC2928Q0 adUnit, C3406w9 oAManager, byte[] response, long j, InterfaceC3147f5 interfaceC3147f5) {
        super(adUnit, (byte) 3);
        Intrinsics.checkNotNullParameter(adUnit, "adUnit");
        Intrinsics.checkNotNullParameter(oAManager, "oAManager");
        Intrinsics.checkNotNullParameter(response, "response");
        this.f2713d = response;
        this.f2714e = j;
        this.f2715f = interfaceC3147f5;
        this.f2716g = new WeakReference(oAManager);
    }

    @Override // com.inmobi.media.AbstractC2820Ic
    /* JADX INFO: renamed from: a */
    public final void mo1177a(Object obj) {
        C3412x0 c3412x0 = (C3412x0) obj;
        InterfaceC3147f5 interfaceC3147f5 = this.f2715f;
        if (interfaceC3147f5 != null) {
            ((C3162g5) interfaceC3147f5).m2152c("LoadWithResponseWorker", "onComplete");
        }
        C3406w9 c3406w9 = (C3406w9) this.f2716g.get();
        if (c3406w9 == null) {
            InterfaceC3147f5 interfaceC3147f52 = this.f2715f;
            if (interfaceC3147f52 != null) {
                ((C3162g5) interfaceC3147f52).m2151b("LoadWithResponseWorker", "oAManager is null");
                return;
            }
            return;
        }
        if (c3412x0 != null) {
            InterfaceC3147f5 interfaceC3147f53 = this.f2715f;
            if (interfaceC3147f53 != null) {
                ((C3162g5) interfaceC3147f53).m2152c("LoadWithResponseWorker", "loading response");
            }
            c3406w9.f2724a.m1635b(c3412x0);
            return;
        }
        short s = this.f2717h;
        if (s != 0) {
            HashMap mapHashMapOf = MapsKt.hashMapOf(TuplesKt.m2729to("errorCode", Short.valueOf(s)));
            String str = this.f2718i;
            if (str != null) {
                mapHashMapOf.put("reason", str);
            }
            c3406w9.f2724a.m1638b((Map<String, Object>) mapHashMapOf);
        }
        c3406w9.f2724a.m1597a(new InMobiAdRequestStatus(InMobiAdRequestStatus.StatusCode.INTERNAL_ERROR), (short) 0);
        InterfaceC3147f5 interfaceC3147f54 = this.f2715f;
        if (interfaceC3147f54 != null) {
            ((C3162g5) interfaceC3147f54).m2151b("LoadWithResponseWorker", "adSet null. fail with error code - " + ((int) this.f2717h));
        }
    }

    @Override // com.inmobi.media.AbstractRunnableC2749E1
    /* JADX INFO: renamed from: c */
    public final void mo993c() {
        AbstractC2928Q0 abstractC2928Q0;
        super.mo993c();
        InterfaceC3147f5 interfaceC3147f5 = this.f2715f;
        if (interfaceC3147f5 != null) {
            ((C3162g5) interfaceC3147f5).m2151b("LoadWithResponseWorker", "Encountered OOM");
        }
        C3406w9 c3406w9 = (C3406w9) this.f2716g.get();
        if (c3406w9 == null || (abstractC2928Q0 = c3406w9.f2724a) == null) {
            return;
        }
        abstractC2928Q0.m1597a(new InMobiAdRequestStatus(InMobiAdRequestStatus.StatusCode.LOW_MEMORY), (short) 2146);
    }

    @Override // com.inmobi.media.AbstractRunnableC2749E1
    /* JADX INFO: renamed from: a */
    public final void mo991a() {
        InterfaceC3147f5 interfaceC3147f5 = this.f2715f;
        if (interfaceC3147f5 != null) {
            ((C3162g5) interfaceC3147f5).m2152c("LoadWithResponseWorker", "execute task start");
        }
        C3406w9 c3406w9 = (C3406w9) this.f2716g.get();
        if (c3406w9 == null) {
            InterfaceC3147f5 interfaceC3147f52 = this.f2715f;
            if (interfaceC3147f52 != null) {
                ((C3162g5) interfaceC3147f52).m2151b("LoadWithResponseWorker", "OAManager null. failing.");
            }
            this.f2717h = (short) 2142;
            m1178b(null);
            return;
        }
        InterfaceC3147f5 interfaceC3147f53 = this.f2715f;
        if (interfaceC3147f53 != null) {
            ((C3162g5) interfaceC3147f53).m2147a("LoadWithResponseWorker", "getting network response from byte array");
        }
        byte[] value = this.f2713d;
        Intrinsics.checkNotNullParameter(value, "response");
        C3256m9 mResponse = new C3256m9();
        Intrinsics.checkNotNullParameter(value, "value");
        if (value.length == 0) {
            mResponse.f2332b = new byte[0];
        } else {
            byte[] bArr = new byte[value.length];
            mResponse.f2332b = bArr;
            System.arraycopy(value, 0, bArr, 0, value.length);
        }
        Intrinsics.checkNotNullParameter(mResponse, "mResponse");
        C3196i9 c3196i9 = mResponse.f2333c;
        if (c3196i9 != null) {
            switch (AbstractC2968T.f1542a[c3196i9.f2180a.ordinal()]) {
                case 1:
                    new InMobiAdRequestStatus(InMobiAdRequestStatus.StatusCode.NETWORK_UNREACHABLE);
                    break;
                case 2:
                    InMobiAdRequestStatus inMobiAdRequestStatus = new InMobiAdRequestStatus(InMobiAdRequestStatus.StatusCode.REQUEST_INVALID);
                    C3196i9 c3196i92 = mResponse.f2333c;
                    String str = c3196i92 != null ? c3196i92.f2181b : null;
                    if (str != null) {
                        inMobiAdRequestStatus.setCustomMessage(str);
                    }
                    break;
                case 3:
                    new InMobiAdRequestStatus(InMobiAdRequestStatus.StatusCode.REQUEST_TIMED_OUT);
                    break;
                case 4:
                case 5:
                case 6:
                case 7:
                case 8:
                    new InMobiAdRequestStatus(InMobiAdRequestStatus.StatusCode.SERVER_ERROR);
                    break;
                case 9:
                    new InMobiAdRequestStatus(InMobiAdRequestStatus.StatusCode.GDPR_COMPLIANCE_ENFORCED);
                    break;
                default:
                    new InMobiAdRequestStatus(InMobiAdRequestStatus.StatusCode.INTERNAL_ERROR);
                    break;
            }
        }
        try {
            InterfaceC3147f5 interfaceC3147f54 = this.f2715f;
            if (interfaceC3147f54 != null) {
                ((C3162g5) interfaceC3147f54).m2147a("LoadWithResponseWorker", "start parsing response");
            }
            JSONObject jsonResponse = new JSONObject(mResponse.m2296a());
            long j = jsonResponse.getLong("placementId");
            if (this.f2714e == j) {
                InterfaceC3147f5 interfaceC3147f55 = this.f2715f;
                if (interfaceC3147f55 != null) {
                    ((C3162g5) interfaceC3147f55).m2154e(SDKConstants.PARAM_PLACEMENT_ID, String.valueOf(j));
                }
                InterfaceC3147f5 interfaceC3147f56 = this.f2715f;
                if (interfaceC3147f56 != null) {
                    ((C3162g5) interfaceC3147f56).m2147a("LoadWithResponseWorker", "placement id match - success");
                }
                C2688A0 c2688a0M1694p = c3406w9.f2724a.m1694p();
                c2688a0M1694p.getClass();
                Intrinsics.checkNotNullParameter(jsonResponse, "jsonResponse");
                m1178b(c2688a0M1694p.m830a(jsonResponse));
                return;
            }
            InterfaceC3147f5 interfaceC3147f57 = this.f2715f;
            if (interfaceC3147f57 != null) {
                ((C3162g5) interfaceC3147f57).m2151b("LoadWithResponseWorker", "Placement Id of Request and response doesn't match");
            }
            this.f2717h = (short) 2144;
            throw new C2837K(new InMobiAdRequestStatus(InMobiAdRequestStatus.StatusCode.INTERNAL_ERROR), this.f2717h);
        } catch (C2837K e) {
            this.f2717h = e.f1143b;
            InterfaceC3147f5 interfaceC3147f58 = this.f2715f;
            if (interfaceC3147f58 != null) {
                String strM1558e = AbstractC2928Q0.m1558e();
                Intrinsics.checkNotNullExpressionValue(strM1558e, "<get-TAG>(...)");
                ((C3162g5) interfaceC3147f58).m2148a(strM1558e, "Exception while parsing OAResponse", e);
            }
            m1178b(null);
        } catch (JSONException e2) {
            this.f2717h = (short) 2145;
            this.f2718i = e2.getMessage();
            InterfaceC3147f5 interfaceC3147f59 = this.f2715f;
            if (interfaceC3147f59 != null) {
                String strM1558e2 = AbstractC2928Q0.m1558e();
                Intrinsics.checkNotNullExpressionValue(strM1558e2, "<get-TAG>(...)");
                ((C3162g5) interfaceC3147f59).m2148a(strM1558e2, "Exception while parsing OAResponse", e2);
            }
            m1178b(null);
        }
    }
}
