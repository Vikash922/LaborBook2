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

/* JADX INFO: renamed from: com.inmobi.media.w6, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes6.dex */
public final class C0552w6 extends Ic {
    public final byte[] d;
    public final long e;
    public final InterfaceC0298f5 f;
    public final WeakReference g;
    public short h;
    public String i;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C0552w6(Q0 adUnit, C0555w9 oAManager, byte[] response, long j, InterfaceC0298f5 interfaceC0298f5) {
        super(adUnit, (byte) 3);
        Intrinsics.checkNotNullParameter(adUnit, "adUnit");
        Intrinsics.checkNotNullParameter(oAManager, "oAManager");
        Intrinsics.checkNotNullParameter(response, "response");
        this.d = response;
        this.e = j;
        this.f = interfaceC0298f5;
        this.g = new WeakReference(oAManager);
    }

    @Override // com.inmobi.media.Ic
    public final void a(Object obj) {
        C0560x0 c0560x0 = (C0560x0) obj;
        InterfaceC0298f5 interfaceC0298f5 = this.f;
        if (interfaceC0298f5 != null) {
            ((C0314g5) interfaceC0298f5).c("LoadWithResponseWorker", "onComplete");
        }
        C0555w9 c0555w9 = (C0555w9) this.g.get();
        if (c0555w9 == null) {
            InterfaceC0298f5 interfaceC0298f52 = this.f;
            if (interfaceC0298f52 != null) {
                ((C0314g5) interfaceC0298f52).b("LoadWithResponseWorker", "oAManager is null");
                return;
            }
            return;
        }
        if (c0560x0 != null) {
            InterfaceC0298f5 interfaceC0298f53 = this.f;
            if (interfaceC0298f53 != null) {
                ((C0314g5) interfaceC0298f53).c("LoadWithResponseWorker", "loading response");
            }
            c0555w9.f515a.b(c0560x0);
            return;
        }
        short s = this.h;
        if (s != 0) {
            HashMap mapHashMapOf = MapsKt.hashMapOf(TuplesKt.to("errorCode", Short.valueOf(s)));
            String str = this.i;
            if (str != null) {
                mapHashMapOf.put("reason", str);
            }
            c0555w9.f515a.b((Map<String, Object>) mapHashMapOf);
        }
        c0555w9.f515a.a(new InMobiAdRequestStatus(InMobiAdRequestStatus.StatusCode.INTERNAL_ERROR), (short) 0);
        InterfaceC0298f5 interfaceC0298f54 = this.f;
        if (interfaceC0298f54 != null) {
            ((C0314g5) interfaceC0298f54).b("LoadWithResponseWorker", "adSet null. fail with error code - " + ((int) this.h));
        }
    }

    @Override // com.inmobi.media.E1
    public final void c() {
        Q0 q0;
        super.c();
        InterfaceC0298f5 interfaceC0298f5 = this.f;
        if (interfaceC0298f5 != null) {
            ((C0314g5) interfaceC0298f5).b("LoadWithResponseWorker", "Encountered OOM");
        }
        C0555w9 c0555w9 = (C0555w9) this.g.get();
        if (c0555w9 == null || (q0 = c0555w9.f515a) == null) {
            return;
        }
        q0.a(new InMobiAdRequestStatus(InMobiAdRequestStatus.StatusCode.LOW_MEMORY), (short) 2146);
    }

    @Override // com.inmobi.media.E1
    public final void a() {
        InterfaceC0298f5 interfaceC0298f5 = this.f;
        if (interfaceC0298f5 != null) {
            ((C0314g5) interfaceC0298f5).c("LoadWithResponseWorker", "execute task start");
        }
        C0555w9 c0555w9 = (C0555w9) this.g.get();
        if (c0555w9 == null) {
            InterfaceC0298f5 interfaceC0298f52 = this.f;
            if (interfaceC0298f52 != null) {
                ((C0314g5) interfaceC0298f52).b("LoadWithResponseWorker", "OAManager null. failing.");
            }
            this.h = (short) 2142;
            b(null);
            return;
        }
        InterfaceC0298f5 interfaceC0298f53 = this.f;
        if (interfaceC0298f53 != null) {
            ((C0314g5) interfaceC0298f53).a("LoadWithResponseWorker", "getting network response from byte array");
        }
        byte[] value = this.d;
        Intrinsics.checkNotNullParameter(value, "response");
        C0412m9 mResponse = new C0412m9();
        Intrinsics.checkNotNullParameter(value, "value");
        if (value.length == 0) {
            mResponse.b = new byte[0];
        } else {
            byte[] bArr = new byte[value.length];
            mResponse.b = bArr;
            System.arraycopy(value, 0, bArr, 0, value.length);
        }
        Intrinsics.checkNotNullParameter(mResponse, "mResponse");
        C0350i9 c0350i9 = mResponse.c;
        if (c0350i9 != null) {
            switch (T.f243a[c0350i9.f385a.ordinal()]) {
                case 1:
                    new InMobiAdRequestStatus(InMobiAdRequestStatus.StatusCode.NETWORK_UNREACHABLE);
                    break;
                case 2:
                    InMobiAdRequestStatus inMobiAdRequestStatus = new InMobiAdRequestStatus(InMobiAdRequestStatus.StatusCode.REQUEST_INVALID);
                    C0350i9 c0350i92 = mResponse.c;
                    String str = c0350i92 != null ? c0350i92.b : null;
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
            InterfaceC0298f5 interfaceC0298f54 = this.f;
            if (interfaceC0298f54 != null) {
                ((C0314g5) interfaceC0298f54).a("LoadWithResponseWorker", "start parsing response");
            }
            JSONObject jsonResponse = new JSONObject(mResponse.a());
            long j = jsonResponse.getLong("placementId");
            if (this.e == j) {
                InterfaceC0298f5 interfaceC0298f55 = this.f;
                if (interfaceC0298f55 != null) {
                    ((C0314g5) interfaceC0298f55).e(SDKConstants.PARAM_PLACEMENT_ID, String.valueOf(j));
                }
                InterfaceC0298f5 interfaceC0298f56 = this.f;
                if (interfaceC0298f56 != null) {
                    ((C0314g5) interfaceC0298f56).a("LoadWithResponseWorker", "placement id match - success");
                }
                A0 a0P = c0555w9.f515a.p();
                a0P.getClass();
                Intrinsics.checkNotNullParameter(jsonResponse, "jsonResponse");
                b(a0P.a(jsonResponse));
                return;
            }
            InterfaceC0298f5 interfaceC0298f57 = this.f;
            if (interfaceC0298f57 != null) {
                ((C0314g5) interfaceC0298f57).b("LoadWithResponseWorker", "Placement Id of Request and response doesn't match");
            }
            this.h = (short) 2144;
            throw new K(new InMobiAdRequestStatus(InMobiAdRequestStatus.StatusCode.INTERNAL_ERROR), this.h);
        } catch (K e) {
            this.h = e.b;
            InterfaceC0298f5 interfaceC0298f58 = this.f;
            if (interfaceC0298f58 != null) {
                String strE = Q0.e();
                Intrinsics.checkNotNullExpressionValue(strE, "<get-TAG>(...)");
                ((C0314g5) interfaceC0298f58).a(strE, "Exception while parsing OAResponse", e);
            }
            b(null);
        } catch (JSONException e2) {
            this.h = (short) 2145;
            this.i = e2.getMessage();
            InterfaceC0298f5 interfaceC0298f59 = this.f;
            if (interfaceC0298f59 != null) {
                String strE2 = Q0.e();
                Intrinsics.checkNotNullExpressionValue(strE2, "<get-TAG>(...)");
                ((C0314g5) interfaceC0298f59).a(strE2, "Exception while parsing OAResponse", e2);
            }
            b(null);
        }
    }
}
