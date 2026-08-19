package com.inmobi.media;

import android.os.Looper;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.RelativeLayout;
import com.inmobi.ads.AdMetaInfo;
import com.inmobi.ads.InMobiAdRequestStatus;
import com.inmobi.ads.InMobiAudio;
import com.inmobi.ads.controllers.PublisherCallbacks;
import java.util.HashMap;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.inmobi.media.C1 */
/* JADX INFO: loaded from: classes6.dex */
public final class C2719C1 extends AbstractC2880Mc {

    /* JADX INFO: renamed from: o */
    public C3413x1 f865o;

    /* JADX INFO: renamed from: p */
    public C3413x1 f866p;

    /* JADX INFO: renamed from: q */
    public C3413x1 f867q;

    /* JADX INFO: renamed from: r */
    public C3413x1 f868r;

    public C2719C1(InMobiAudio.C2671a callbacks) {
        Intrinsics.checkNotNullParameter(callbacks, "callbacks");
        m1359b(callbacks);
    }

    @Override // com.inmobi.media.AbstractC2880Mc
    /* JADX INFO: renamed from: a */
    public final void mo880a(byte[] bArr, PublisherCallbacks callbacks) {
        Intrinsics.checkNotNullParameter(callbacks, "callbacks");
    }

    @Override // com.inmobi.media.AbstractC2880Mc, com.inmobi.media.AbstractC2748E0
    /* JADX INFO: renamed from: b */
    public final void mo882b(final AdMetaInfo info) {
        Intrinsics.checkNotNullParameter(info, "info");
        InterfaceC3147f5 interfaceC3147f5M1367p = m1367p();
        if (interfaceC3147f5M1367p != null) {
            String str = AbstractC2734D1.f908a;
            Intrinsics.checkNotNullExpressionValue(str, "access$getTAG$p(...)");
            ((C3162g5) interfaceC3147f5M1367p).m2152c(str, "onAdFetchSuccess " + this);
        }
        C3413x1 c3413x1 = this.f868r;
        if ((c3413x1 != null ? c3413x1.m1688m() : null) == null) {
            InterfaceC3147f5 interfaceC3147f5M1367p2 = m1367p();
            if (interfaceC3147f5M1367p2 != null) {
                String str2 = AbstractC2734D1.f908a;
                Intrinsics.checkNotNullExpressionValue(str2, "access$getTAG$p(...)");
                ((C3162g5) interfaceC3147f5M1367p2).m2151b(str2, "adObject is null, fetch failed");
            }
            mo878a((AbstractC2928Q0) null, new InMobiAdRequestStatus(InMobiAdRequestStatus.StatusCode.INTERNAL_ERROR));
            return;
        }
        InterfaceC3147f5 interfaceC3147f5M1367p3 = m1367p();
        if (interfaceC3147f5M1367p3 != null) {
            String str3 = AbstractC2734D1.f908a;
            Intrinsics.checkNotNullExpressionValue(str3, "access$getTAG$p(...)");
            ((C3162g5) interfaceC3147f5M1367p3).m2147a(str3, "Ad fetch successful, calling loadIntoView()");
        }
        super.mo882b(info);
        m1369s().post(new Runnable() { // from class: com.inmobi.media.C1$$ExternalSyntheticLambda2
            @Override // java.lang.Runnable
            public final void run() {
                C2719C1.m873a(this.f$0, info);
            }
        });
    }

    @Override // com.inmobi.media.AbstractC2880Mc, com.inmobi.media.AbstractC2748E0
    /* JADX INFO: renamed from: c */
    public final void mo884c(final AdMetaInfo info) {
        Intrinsics.checkNotNullParameter(info, "info");
        InterfaceC3147f5 interfaceC3147f5M1367p = m1367p();
        if (interfaceC3147f5M1367p != null) {
            String str = AbstractC2734D1.f908a;
            Intrinsics.checkNotNullExpressionValue(str, "access$getTAG$p(...)");
            ((C3162g5) interfaceC3147f5M1367p).m2152c(str, "onAdLoadSucceeded " + this);
        }
        super.mo884c(info);
        m1351a((byte) 0);
        InterfaceC3147f5 interfaceC3147f5M1367p2 = m1367p();
        if (interfaceC3147f5M1367p2 != null) {
            String str2 = AbstractC2734D1.f908a;
            Intrinsics.checkNotNullExpressionValue(str2, "access$getTAG$p(...)");
            ((C3162g5) interfaceC3147f5M1367p2).m2153d(str2, "AdManager state - CREATED");
        }
        InterfaceC3147f5 interfaceC3147f5M1367p3 = m1367p();
        if (interfaceC3147f5M1367p3 != null) {
            String str3 = AbstractC2734D1.f908a;
            Intrinsics.checkNotNullExpressionValue(str3, "access$getTAG$p(...)");
            ((C3162g5) interfaceC3147f5M1367p3).m2147a(str3, "Ad load successful, providing callback");
        }
        m1369s().post(new Runnable() { // from class: com.inmobi.media.C1$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                C2719C1.m874b(this.f$0, info);
            }
        });
    }

    @Override // com.inmobi.media.AbstractC2748E0
    /* JADX INFO: renamed from: d */
    public final void mo885d() {
        InterfaceC3147f5 interfaceC3147f5M1367p = m1367p();
        if (interfaceC3147f5M1367p != null) {
            String str = AbstractC2734D1.f908a;
            Intrinsics.checkNotNullExpressionValue(str, "access$getTAG$p(...)");
            ((C3162g5) interfaceC3147f5M1367p).m2147a(str, "onAdShowFailed " + this);
        }
        m1369s().post(new Runnable() { // from class: com.inmobi.media.C1$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                C2719C1.m871a(this.f$0);
            }
        });
    }

    @Override // com.inmobi.media.AbstractC2880Mc
    /* JADX INFO: renamed from: j */
    public final AbstractC2928Q0 mo886j() {
        InterfaceC3147f5 interfaceC3147f5M1367p = m1367p();
        if (interfaceC3147f5M1367p != null) {
            String str = AbstractC2734D1.f908a;
            Intrinsics.checkNotNullExpressionValue(str, "access$getTAG$p(...)");
            ((C3162g5) interfaceC3147f5M1367p).m2152c(str, "shouldUseForegroundUnit " + this);
        }
        C3413x1 c3413x1 = this.f867q;
        Byte bValueOf = c3413x1 != null ? Byte.valueOf(c3413x1.m1577Q()) : null;
        InterfaceC3147f5 interfaceC3147f5M1367p2 = m1367p();
        if (interfaceC3147f5M1367p2 != null) {
            String str2 = AbstractC2734D1.f908a;
            Intrinsics.checkNotNullExpressionValue(str2, "access$getTAG$p(...)");
            ((C3162g5) interfaceC3147f5M1367p2).m2153d(str2, "State - " + bValueOf);
        }
        return ((bValueOf == null || bValueOf.byteValue() != 4) && (bValueOf == null || bValueOf.byteValue() != 7) && (bValueOf == null || bValueOf.byteValue() != 6)) ? this.f868r : this.f867q;
    }

    @Override // com.inmobi.media.AbstractC2880Mc
    /* JADX INFO: renamed from: w */
    public final void mo887w() {
        InterfaceC3147f5 interfaceC3147f5M1367p = m1367p();
        if (interfaceC3147f5M1367p != null) {
            String str = AbstractC2734D1.f908a;
            Intrinsics.checkNotNullExpressionValue(str, "access$getTAG$p(...)");
            ((C3162g5) interfaceC3147f5M1367p).m2147a(str, "submitAdLoadCalled " + this);
        }
        C3413x1 c3413x1 = this.f868r;
        if (c3413x1 != null) {
            c3413x1.m1701t0();
        }
    }

    /* JADX INFO: renamed from: x */
    public final void m888x() {
        InterfaceC3147f5 interfaceC3147f5M1367p = m1367p();
        if (interfaceC3147f5M1367p != null) {
            String str = AbstractC2734D1.f908a;
            Intrinsics.checkNotNullExpressionValue(str, "access$getTAG$p(...)");
            ((C3162g5) interfaceC3147f5M1367p).m2152c(str, "registerLifeCycleCallbacks " + this);
        }
        C3413x1 c3413x1 = this.f865o;
        if (c3413x1 != null) {
            c3413x1.m1218H0();
        }
        C3413x1 c3413x12 = this.f866p;
        if (c3413x12 != null) {
            c3413x12.m1218H0();
        }
    }

    /* JADX INFO: renamed from: y */
    public final void m889y() {
        InterfaceC3147f5 interfaceC3147f5M1367p = m1367p();
        if (interfaceC3147f5M1367p != null) {
            String str = AbstractC2734D1.f908a;
            Intrinsics.checkNotNullExpressionValue(str, "access$getTAG$p(...)");
            ((C3162g5) interfaceC3147f5M1367p).m2147a(str, "loadIntoView " + this);
        }
        C3413x1 c3413x1 = this.f868r;
        if (c3413x1 == null) {
            throw new IllegalStateException(AbstractC2880Mc.f1273m);
        }
        if (c3413x1 == null || !m1356a("InMobi", c3413x1.m1570I().toString())) {
            return;
        }
        m1351a((byte) 8);
        InterfaceC3147f5 interfaceC3147f5M1367p2 = m1367p();
        if (interfaceC3147f5M1367p2 != null) {
            String str2 = AbstractC2734D1.f908a;
            Intrinsics.checkNotNullExpressionValue(str2, "access$getTAG$p(...)");
            ((C3162g5) interfaceC3147f5M1367p2).m2153d(str2, "AdManager state - LOADING_INTO_VIEW");
        }
        c3413x1.mo912j0();
    }

    /* JADX INFO: renamed from: a */
    public static final void m873a(C2719C1 this$0, AdMetaInfo info) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(info, "$info");
        PublisherCallbacks publisherCallbacksM1363l = this$0.m1363l();
        if (publisherCallbacksM1363l != null) {
            publisherCallbacksM1363l.onAdFetchSuccessful(info);
        }
    }

    @Override // com.inmobi.media.AbstractC2880Mc, com.inmobi.media.AbstractC2748E0
    /* JADX INFO: renamed from: a */
    public final void mo878a(AbstractC2928Q0 abstractC2928Q0, InMobiAdRequestStatus status) {
        Intrinsics.checkNotNullParameter(status, "status");
        InterfaceC3147f5 interfaceC3147f5M1367p = m1367p();
        if (interfaceC3147f5M1367p != null) {
            String str = AbstractC2734D1.f908a;
            Intrinsics.checkNotNullExpressionValue(str, "access$getTAG$p(...)");
            ((C3162g5) interfaceC3147f5M1367p).m2151b(str, "onAdLoadFailed");
        }
        InterfaceC3147f5 interfaceC3147f5M1367p2 = m1367p();
        if (interfaceC3147f5M1367p2 != null) {
            ((C3162g5) interfaceC3147f5M1367p2).m2146a();
        }
    }

    /* JADX INFO: renamed from: a */
    public static final void m871a(C2719C1 this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        InterfaceC3147f5 interfaceC3147f5M1367p = this$0.m1367p();
        if (interfaceC3147f5M1367p != null) {
            String str = AbstractC2734D1.f908a;
            Intrinsics.checkNotNullExpressionValue(str, "access$getTAG$p(...)");
            ((C3162g5) interfaceC3147f5M1367p).m2147a(str, "callback - onAdDisplayFailed");
        }
        PublisherCallbacks publisherCallbacksM1363l = this$0.m1363l();
        if (publisherCallbacksM1363l != null) {
            publisherCallbacksM1363l.onAdDisplayFailed();
        }
        InterfaceC3147f5 interfaceC3147f5M1367p2 = this$0.m1367p();
        if (interfaceC3147f5M1367p2 != null) {
            ((C3162g5) interfaceC3147f5M1367p2).m2146a();
        }
    }

    @Override // com.inmobi.media.AbstractC2880Mc, com.inmobi.media.AbstractC2748E0
    /* JADX INFO: renamed from: a */
    public final void mo876a(AdMetaInfo info) {
        Intrinsics.checkNotNullParameter(info, "info");
        InterfaceC3147f5 interfaceC3147f5M1367p = m1367p();
        if (interfaceC3147f5M1367p != null) {
            String str = AbstractC2734D1.f908a;
            Intrinsics.checkNotNullExpressionValue(str, "access$getTAG$p(...)");
            ((C3162g5) interfaceC3147f5M1367p).m2147a(str, "onAdDisplayed");
        }
        super.mo876a(info);
        AbstractC2928Q0 abstractC2928Q0Mo886j = mo886j();
        if (abstractC2928Q0Mo886j != null) {
            abstractC2928Q0Mo886j.m1708x0();
        }
    }

    /* JADX INFO: renamed from: a */
    public final void m877a(final InMobiAudio audio) {
        Intrinsics.checkNotNullParameter(audio, "audio");
        InterfaceC3147f5 interfaceC3147f5M1367p = m1367p();
        if (interfaceC3147f5M1367p != null) {
            String str = AbstractC2734D1.f908a;
            Intrinsics.checkNotNullExpressionValue(str, "access$getTAG$p(...)");
            ((C3162g5) interfaceC3147f5M1367p).m2147a(str, "show called");
        }
        try {
            if (Thread.currentThread() == Looper.getMainLooper().getThread()) {
                m875a((RelativeLayout) audio);
            } else {
                m1369s().post(new Runnable() { // from class: com.inmobi.media.C1$$ExternalSyntheticLambda3
                    @Override // java.lang.Runnable
                    public final void run() {
                        C2719C1.m872a(this.f$0, audio);
                    }
                });
            }
        } catch (Exception e) {
            C3413x1 c3413x1 = this.f868r;
            if (c3413x1 != null) {
                c3413x1.m2587d((short) 26);
            }
            String str2 = AbstractC2734D1.f908a;
            Intrinsics.checkNotNullExpressionValue(str2, "access$getTAG$p(...)");
            AbstractC2814I6.m1170a((byte) 1, str2, "Unable to show ad; SDK encountered an unexpected error");
            InterfaceC3147f5 interfaceC3147f5M1367p2 = m1367p();
            if (interfaceC3147f5M1367p2 != null) {
                ((C3162g5) interfaceC3147f5M1367p2).m2151b(str2, AbstractC2761Ed.m1111a(e, AbstractC3208j6.m2261a(str2, "access$getTAG$p(...)", "Show failed with unexpected error: ")));
            }
            C3402w5 c3402w5 = C3402w5.f2709a;
            C3402w5.f2712d.m2158a(AbstractC3102c5.m2045a(e, "event"));
        }
    }

    /* JADX INFO: renamed from: b */
    public static final void m874b(C2719C1 this$0, AdMetaInfo info) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(info, "$info");
        PublisherCallbacks publisherCallbacksM1363l = this$0.m1363l();
        if (publisherCallbacksM1363l != null) {
            publisherCallbacksM1363l.onAdLoadSucceeded(info);
        }
    }

    @Override // com.inmobi.media.AbstractC2880Mc, com.inmobi.media.AbstractC2748E0
    /* JADX INFO: renamed from: b */
    public final void mo881b() {
        InterfaceC3147f5 interfaceC3147f5M1367p = m1367p();
        if (interfaceC3147f5M1367p != null) {
            String str = AbstractC2734D1.f908a;
            Intrinsics.checkNotNullExpressionValue(str, "access$getTAG$p(...)");
            ((C3162g5) interfaceC3147f5M1367p).m2147a(str, "onAdDismissed " + this);
        }
        m1351a((byte) 0);
        InterfaceC3147f5 interfaceC3147f5M1367p2 = m1367p();
        if (interfaceC3147f5M1367p2 != null) {
            String str2 = AbstractC2734D1.f908a;
            Intrinsics.checkNotNullExpressionValue(str2, "access$getTAG$p(...)");
            ((C3162g5) interfaceC3147f5M1367p2).m2153d(str2, "AdManager state - CREATED");
        }
        InterfaceC3147f5 interfaceC3147f5M1367p3 = m1367p();
        if (interfaceC3147f5M1367p3 != null) {
            ((C3162g5) interfaceC3147f5M1367p3).m2146a();
        }
        super.mo881b();
    }

    /* JADX INFO: renamed from: b */
    public final void m883b(String adSize) {
        Intrinsics.checkNotNullParameter(adSize, "adSize");
        InterfaceC3147f5 interfaceC3147f5M1367p = m1367p();
        if (interfaceC3147f5M1367p != null) {
            String str = AbstractC2734D1.f908a;
            Intrinsics.checkNotNullExpressionValue(str, "access$getTAG$p(...)");
            ((C3162g5) interfaceC3147f5M1367p).m2147a(str, "load 1 " + this);
        }
        C3413x1 c3413x1 = this.f868r;
        if (c3413x1 != null && m1357a("InMobi", c3413x1.m1570I().toString(), m1363l()) && c3413x1.m1667e((byte) 1)) {
            m1351a((byte) 1);
            InterfaceC3147f5 interfaceC3147f5M1367p2 = m1367p();
            if (interfaceC3147f5M1367p2 != null) {
                String str2 = AbstractC2734D1.f908a;
                Intrinsics.checkNotNullExpressionValue(str2, "access$getTAG$p(...)");
                ((C3162g5) interfaceC3147f5M1367p2).m2153d(str2, "AdManager state - LOADING");
            }
            m1361d(null);
            c3413x1.m1228e(adSize);
            c3413x1.m1229e(false);
        }
    }

    /* JADX INFO: renamed from: a */
    public static final void m872a(C2719C1 this$0, RelativeLayout audio) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(audio, "$audio");
        this$0.m875a(audio);
    }

    /* JADX INFO: renamed from: a */
    public final void m875a(RelativeLayout relativeLayout) {
        InterfaceC3411x interfaceC3411xM1682k;
        C3038Y c3038yM1570I;
        InterfaceC3147f5 interfaceC3147f5M1367p = m1367p();
        if (interfaceC3147f5M1367p != null) {
            String str = AbstractC2734D1.f908a;
            Intrinsics.checkNotNullExpressionValue(str, "access$getTAG$p(...)");
            ((C3162g5) interfaceC3147f5M1367p).m2147a(str, "showAudioAd");
        }
        C3413x1 c3413x1 = this.f867q;
        if (c3413x1 != null ? c3413x1.m1215E0() : false) {
            String str2 = AbstractC2734D1.f908a;
            Intrinsics.checkNotNullExpressionValue(str2, "access$getTAG$p(...)");
            AbstractC2814I6.m1170a((byte) 1, str2, "An ad is currently being viewed by the user. Please wait for the user to close the ad before showing another ad.");
            InterfaceC3147f5 interfaceC3147f5M1367p2 = m1367p();
            if (interfaceC3147f5M1367p2 != null) {
                Intrinsics.checkNotNullExpressionValue(str2, "access$getTAG$p(...)");
                ((C3162g5) interfaceC3147f5M1367p2).m2151b(str2, "ad is active");
            }
            C3413x1 c3413x12 = this.f868r;
            if (c3413x12 != null) {
                c3413x12.m2587d((short) 15);
                return;
            }
            return;
        }
        C3413x1 c3413x13 = this.f868r;
        if (c3413x13 != null) {
            InterfaceC3147f5 interfaceC3147f5 = c3413x13.f1437j;
            if (interfaceC3147f5 != null) {
                String strM1558e = AbstractC2928Q0.m1558e();
                Intrinsics.checkNotNullExpressionValue(strM1558e, "<get-TAG>(...)");
                ((C3162g5) interfaceC3147f5).m2152c(strM1558e, "canProceedToShow");
            }
            if (c3413x13.m1581W()) {
                String strM1558e2 = AbstractC2928Q0.m1558e();
                Intrinsics.checkNotNullExpressionValue(strM1558e2, "<get-TAG>(...)");
                AbstractC2814I6.m1170a((byte) 1, strM1558e2, "Ad Show has failed because current ad is expired. Please call load() again.");
                InterfaceC3147f5 interfaceC3147f52 = c3413x13.f1437j;
                if (interfaceC3147f52 != null) {
                    String strM1558e3 = AbstractC2928Q0.m1558e();
                    Intrinsics.checkNotNullExpressionValue(strM1558e3, "<get-TAG>(...)");
                    ((C3162g5) interfaceC3147f52).m2151b(strM1558e3, "ad is expired");
                }
                InterfaceC3147f5 interfaceC3147f53 = c3413x13.f1437j;
                if (interfaceC3147f53 != null) {
                    String strM1558e4 = AbstractC2928Q0.m1558e();
                    Intrinsics.checkNotNullExpressionValue(strM1558e4, "<get-TAG>(...)");
                    ((C3162g5) interfaceC3147f53).m2153d(strM1558e4, "AdUnit " + c3413x13 + " state - CREATED");
                }
                c3413x13.m1658d((byte) 0);
                c3413x13.m2587d((short) 2153);
                return;
            }
            byte bM1577Q = c3413x13.m1577Q();
            if (bM1577Q == 1 || bM1577Q == 2) {
                AbstractC2814I6.m1170a((byte) 1, "InMobi", "Ad Load is not complete. Please wait for the Ad to be in a ready state before calling show.");
                InterfaceC3147f5 interfaceC3147f54 = c3413x13.f1437j;
                if (interfaceC3147f54 != null) {
                    String strM1558e5 = AbstractC2928Q0.m1558e();
                    Intrinsics.checkNotNullExpressionValue(strM1558e5, "<get-TAG>(...)");
                    ((C3162g5) interfaceC3147f54).m2151b(strM1558e5, "ad is not ready");
                }
                InterfaceC3147f5 interfaceC3147f55 = c3413x13.f1437j;
                if (interfaceC3147f55 != null) {
                    String strM1558e6 = AbstractC2928Q0.m1558e();
                    Intrinsics.checkNotNullExpressionValue(strM1558e6, "<get-TAG>(...)");
                    ((C3162g5) interfaceC3147f55).m2147a(strM1558e6, "callback - onShowFailure");
                }
                c3413x13.m2587d((short) 2152);
                return;
            }
            if (bM1577Q == 3) {
                AbstractC2814I6.m1170a((byte) 1, "InMobi", "Ad Load has Failed. Please call load() again.");
                c3413x13.m2587d((short) 0);
                InterfaceC3147f5 interfaceC3147f56 = c3413x13.f1437j;
                if (interfaceC3147f56 != null) {
                    String strM1558e7 = AbstractC2928Q0.m1558e();
                    Intrinsics.checkNotNullExpressionValue(strM1558e7, "<get-TAG>(...)");
                    ((C3162g5) interfaceC3147f56).m2147a(strM1558e7, "callback - onShowFailure");
                }
                InterfaceC3147f5 interfaceC3147f57 = c3413x13.f1437j;
                if (interfaceC3147f57 != null) {
                    String strM1558e8 = AbstractC2928Q0.m1558e();
                    Intrinsics.checkNotNullExpressionValue(strM1558e8, "<get-TAG>(...)");
                    ((C3162g5) interfaceC3147f57).m2151b(strM1558e8, "ad is failed");
                    return;
                }
                return;
            }
            if (bM1577Q == 8) {
                AbstractC2814I6.m1170a((byte) 1, "InMobi", "Ad Load has Failed. Please call load() again.");
                c3413x13.m2587d((short) 0);
                InterfaceC3147f5 interfaceC3147f58 = c3413x13.f1437j;
                if (interfaceC3147f58 != null) {
                    String strM1558e9 = AbstractC2928Q0.m1558e();
                    Intrinsics.checkNotNullExpressionValue(strM1558e9, "<get-TAG>(...)");
                    ((C3162g5) interfaceC3147f58).m2147a(strM1558e9, "callback - onShowFailure");
                }
                InterfaceC3147f5 interfaceC3147f59 = c3413x13.f1437j;
                if (interfaceC3147f59 != null) {
                    String strM1558e10 = AbstractC2928Q0.m1558e();
                    Intrinsics.checkNotNullExpressionValue(strM1558e10, "<get-TAG>(...)");
                    ((C3162g5) interfaceC3147f59).m2151b(strM1558e10, "ad is unloaded");
                    return;
                }
                return;
            }
            if (bM1577Q == 0) {
                AbstractC2814I6.m1170a((byte) 1, "InMobi", "Ad Show has Failed. Please call load() before calling show().");
                c3413x13.m2587d((short) 0);
                InterfaceC3147f5 interfaceC3147f510 = c3413x13.f1437j;
                if (interfaceC3147f510 != null) {
                    String strM1558e11 = AbstractC2928Q0.m1558e();
                    Intrinsics.checkNotNullExpressionValue(strM1558e11, "<get-TAG>(...)");
                    ((C3162g5) interfaceC3147f510).m2147a(strM1558e11, "callback - onShowFailure");
                }
                InterfaceC3147f5 interfaceC3147f511 = c3413x13.f1437j;
                if (interfaceC3147f511 != null) {
                    String strM1558e12 = AbstractC2928Q0.m1558e();
                    Intrinsics.checkNotNullExpressionValue(strM1558e12, "<get-TAG>(...)");
                    ((C3162g5) interfaceC3147f511).m2151b(strM1558e12, "show called before load");
                    return;
                }
                return;
            }
            InterfaceC3147f5 interfaceC3147f5M1367p3 = m1367p();
            if (interfaceC3147f5M1367p3 != null) {
                String str3 = AbstractC2734D1.f908a;
                Intrinsics.checkNotNullExpressionValue(str3, "access$getTAG$p(...)");
                ((C3162g5) interfaceC3147f5M1367p3).m2147a(str3, "swapAdUnits " + this);
            }
            C3413x1 c3413x14 = this.f867q;
            if (Intrinsics.areEqual(c3413x14, this.f865o)) {
                this.f867q = this.f866p;
                this.f868r = this.f865o;
            } else if (Intrinsics.areEqual(c3413x14, this.f866p) || c3413x14 == null) {
                this.f867q = this.f865o;
                this.f868r = this.f866p;
            }
            InterfaceC3147f5 interfaceC3147f5M1367p4 = m1367p();
            if (interfaceC3147f5M1367p4 != null) {
                String str4 = AbstractC2734D1.f908a;
                Intrinsics.checkNotNullExpressionValue(str4, "access$getTAG$p(...)");
                ((C3162g5) interfaceC3147f5M1367p4).m2147a(str4, "displayAd " + this);
            }
            C3413x1 c3413x15 = this.f867q;
            if (c3413x15 == null || (interfaceC3411xM1682k = c3413x15.m1682k()) == null) {
                return;
            }
            GestureDetectorOnGestureListenerC3049Ya gestureDetectorOnGestureListenerC3049Ya = (GestureDetectorOnGestureListenerC3049Ya) interfaceC3411xM1682k;
            AbstractC3260md viewableAd = gestureDetectorOnGestureListenerC3049Ya.getViewableAd();
            C3413x1 c3413x16 = this.f867q;
            if (c3413x16 != null && (c3038yM1570I = c3413x16.m1570I()) != null && c3038yM1570I.m1941p()) {
                gestureDetectorOnGestureListenerC3049Ya.mo1969e();
            }
            ViewParent parent = gestureDetectorOnGestureListenerC3049Ya.getParent();
            ViewGroup viewGroup = parent instanceof ViewGroup ? (ViewGroup) parent : null;
            RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -1);
            View viewMo964d = viewableAd.mo964d();
            viewableAd.mo962a((HashMap) null);
            C3413x1 c3413x17 = this.f868r;
            if (c3413x17 != null) {
                c3413x17.m1216F0();
            }
            if (viewGroup == null) {
                relativeLayout.addView(viewMo964d, layoutParams);
            } else {
                viewGroup.removeAllViews();
                viewGroup.addView(viewMo964d, layoutParams);
            }
            C3413x1 c3413x18 = this.f868r;
            if (c3413x18 != null) {
                c3413x18.mo1231g();
            }
        }
    }

    @Override // com.inmobi.media.AbstractC2880Mc
    /* JADX INFO: renamed from: a */
    public final void mo879a(short s) {
        InterfaceC3147f5 interfaceC3147f5M1367p = m1367p();
        if (interfaceC3147f5M1367p != null) {
            String str = AbstractC2734D1.f908a;
            Intrinsics.checkNotNullExpressionValue(str, "access$getTAG$p(...)");
            ((C3162g5) interfaceC3147f5M1367p).m2151b(str, "submitAdLoadDroppedAtSDK " + this);
        }
        C3413x1 c3413x1 = this.f868r;
        if (c3413x1 != null) {
            c3413x1.m1620a(s);
        }
    }
}
