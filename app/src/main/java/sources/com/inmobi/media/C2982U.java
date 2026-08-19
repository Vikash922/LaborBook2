package com.inmobi.media;

import com.inmobi.ads.InMobiAdRequestStatus;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.inmobi.media.U */
/* JADX INFO: loaded from: classes6.dex */
public final class C2982U {

    /* JADX INFO: renamed from: a */
    public final C3256m9 f1556a;

    /* JADX INFO: renamed from: b */
    public final InMobiAdRequestStatus f1557b;

    public C2982U(C3256m9 mResponse) {
        Intrinsics.checkNotNullParameter(mResponse, "mResponse");
        this.f1556a = mResponse;
        C3196i9 c3196i9 = mResponse.f2333c;
        if (c3196i9 != null) {
            switch (AbstractC2968T.f1542a[c3196i9.f2180a.ordinal()]) {
                case 1:
                    this.f1557b = new InMobiAdRequestStatus(InMobiAdRequestStatus.StatusCode.NETWORK_UNREACHABLE);
                    break;
                case 2:
                    InMobiAdRequestStatus inMobiAdRequestStatus = new InMobiAdRequestStatus(InMobiAdRequestStatus.StatusCode.REQUEST_INVALID);
                    this.f1557b = inMobiAdRequestStatus;
                    C3196i9 c3196i92 = mResponse.f2333c;
                    String str = c3196i92 != null ? c3196i92.f2181b : null;
                    if (str != null) {
                        inMobiAdRequestStatus.setCustomMessage(str);
                    }
                    break;
                case 3:
                    this.f1557b = new InMobiAdRequestStatus(InMobiAdRequestStatus.StatusCode.REQUEST_TIMED_OUT);
                    break;
                case 4:
                case 5:
                case 6:
                case 7:
                case 8:
                    this.f1557b = new InMobiAdRequestStatus(InMobiAdRequestStatus.StatusCode.SERVER_ERROR);
                    break;
                case 9:
                    this.f1557b = new InMobiAdRequestStatus(InMobiAdRequestStatus.StatusCode.GDPR_COMPLIANCE_ENFORCED);
                    break;
                default:
                    this.f1557b = new InMobiAdRequestStatus(InMobiAdRequestStatus.StatusCode.INTERNAL_ERROR);
                    break;
            }
        }
    }
}
