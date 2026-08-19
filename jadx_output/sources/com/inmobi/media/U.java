package com.inmobi.media;

import com.inmobi.ads.InMobiAdRequestStatus;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
public final class U {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final C0412m9 f250a;
    public final InMobiAdRequestStatus b;

    public U(C0412m9 mResponse) {
        Intrinsics.checkNotNullParameter(mResponse, "mResponse");
        this.f250a = mResponse;
        C0350i9 c0350i9 = mResponse.c;
        if (c0350i9 != null) {
            switch (T.f243a[c0350i9.f385a.ordinal()]) {
                case 1:
                    this.b = new InMobiAdRequestStatus(InMobiAdRequestStatus.StatusCode.NETWORK_UNREACHABLE);
                    break;
                case 2:
                    InMobiAdRequestStatus inMobiAdRequestStatus = new InMobiAdRequestStatus(InMobiAdRequestStatus.StatusCode.REQUEST_INVALID);
                    this.b = inMobiAdRequestStatus;
                    C0350i9 c0350i92 = mResponse.c;
                    String str = c0350i92 != null ? c0350i92.b : null;
                    if (str != null) {
                        inMobiAdRequestStatus.setCustomMessage(str);
                    }
                    break;
                case 3:
                    this.b = new InMobiAdRequestStatus(InMobiAdRequestStatus.StatusCode.REQUEST_TIMED_OUT);
                    break;
                case 4:
                case 5:
                case 6:
                case 7:
                case 8:
                    this.b = new InMobiAdRequestStatus(InMobiAdRequestStatus.StatusCode.SERVER_ERROR);
                    break;
                case 9:
                    this.b = new InMobiAdRequestStatus(InMobiAdRequestStatus.StatusCode.GDPR_COMPLIANCE_ENFORCED);
                    break;
                default:
                    this.b = new InMobiAdRequestStatus(InMobiAdRequestStatus.StatusCode.INTERNAL_ERROR);
                    break;
            }
        }
    }
}
