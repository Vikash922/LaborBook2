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

/* JADX INFO: loaded from: classes6.dex */
public final class C1 extends Mc {
    public C0561x1 o;
    public C0561x1 p;
    public C0561x1 q;
    public C0561x1 r;

    public C1(InMobiAudio.a callbacks) {
        Intrinsics.checkNotNullParameter(callbacks, "callbacks");
        b(callbacks);
    }

    @Override // com.inmobi.media.Mc
    public final void a(byte[] bArr, PublisherCallbacks callbacks) {
        Intrinsics.checkNotNullParameter(callbacks, "callbacks");
    }

    @Override // com.inmobi.media.Mc, com.inmobi.media.E0
    public final void b(final AdMetaInfo info) {
        Intrinsics.checkNotNullParameter(info, "info");
        InterfaceC0298f5 interfaceC0298f5P = p();
        if (interfaceC0298f5P != null) {
            String str = D1.f93a;
            Intrinsics.checkNotNullExpressionValue(str, "access$getTAG$p(...)");
            ((C0314g5) interfaceC0298f5P).c(str, "onAdFetchSuccess " + this);
        }
        C0561x1 c0561x1 = this.r;
        if ((c0561x1 != null ? c0561x1.m() : null) == null) {
            InterfaceC0298f5 interfaceC0298f5P2 = p();
            if (interfaceC0298f5P2 != null) {
                String str2 = D1.f93a;
                Intrinsics.checkNotNullExpressionValue(str2, "access$getTAG$p(...)");
                ((C0314g5) interfaceC0298f5P2).b(str2, "adObject is null, fetch failed");
            }
            a((Q0) null, new InMobiAdRequestStatus(InMobiAdRequestStatus.StatusCode.INTERNAL_ERROR));
            return;
        }
        InterfaceC0298f5 interfaceC0298f5P3 = p();
        if (interfaceC0298f5P3 != null) {
            String str3 = D1.f93a;
            Intrinsics.checkNotNullExpressionValue(str3, "access$getTAG$p(...)");
            ((C0314g5) interfaceC0298f5P3).a(str3, "Ad fetch successful, calling loadIntoView()");
        }
        super.b(info);
        s().post(new Runnable() { // from class: com.inmobi.media.C1$$ExternalSyntheticLambda2
            @Override // java.lang.Runnable
            public final void run() {
                C1.a(this.f$0, info);
            }
        });
    }

    @Override // com.inmobi.media.Mc, com.inmobi.media.E0
    public final void c(final AdMetaInfo info) {
        Intrinsics.checkNotNullParameter(info, "info");
        InterfaceC0298f5 interfaceC0298f5P = p();
        if (interfaceC0298f5P != null) {
            String str = D1.f93a;
            Intrinsics.checkNotNullExpressionValue(str, "access$getTAG$p(...)");
            ((C0314g5) interfaceC0298f5P).c(str, "onAdLoadSucceeded " + this);
        }
        super.c(info);
        a((byte) 0);
        InterfaceC0298f5 interfaceC0298f5P2 = p();
        if (interfaceC0298f5P2 != null) {
            String str2 = D1.f93a;
            Intrinsics.checkNotNullExpressionValue(str2, "access$getTAG$p(...)");
            ((C0314g5) interfaceC0298f5P2).d(str2, "AdManager state - CREATED");
        }
        InterfaceC0298f5 interfaceC0298f5P3 = p();
        if (interfaceC0298f5P3 != null) {
            String str3 = D1.f93a;
            Intrinsics.checkNotNullExpressionValue(str3, "access$getTAG$p(...)");
            ((C0314g5) interfaceC0298f5P3).a(str3, "Ad load successful, providing callback");
        }
        s().post(new Runnable() { // from class: com.inmobi.media.C1$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                C1.b(this.f$0, info);
            }
        });
    }

    @Override // com.inmobi.media.E0
    public final void d() {
        InterfaceC0298f5 interfaceC0298f5P = p();
        if (interfaceC0298f5P != null) {
            String str = D1.f93a;
            Intrinsics.checkNotNullExpressionValue(str, "access$getTAG$p(...)");
            ((C0314g5) interfaceC0298f5P).a(str, "onAdShowFailed " + this);
        }
        s().post(new Runnable() { // from class: com.inmobi.media.C1$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                C1.a(this.f$0);
            }
        });
    }

    @Override // com.inmobi.media.Mc
    public final Q0 j() {
        InterfaceC0298f5 interfaceC0298f5P = p();
        if (interfaceC0298f5P != null) {
            String str = D1.f93a;
            Intrinsics.checkNotNullExpressionValue(str, "access$getTAG$p(...)");
            ((C0314g5) interfaceC0298f5P).c(str, "shouldUseForegroundUnit " + this);
        }
        C0561x1 c0561x1 = this.q;
        Byte bValueOf = c0561x1 != null ? Byte.valueOf(c0561x1.Q()) : null;
        InterfaceC0298f5 interfaceC0298f5P2 = p();
        if (interfaceC0298f5P2 != null) {
            String str2 = D1.f93a;
            Intrinsics.checkNotNullExpressionValue(str2, "access$getTAG$p(...)");
            ((C0314g5) interfaceC0298f5P2).d(str2, "State - " + bValueOf);
        }
        return ((bValueOf == null || bValueOf.byteValue() != 4) && (bValueOf == null || bValueOf.byteValue() != 7) && (bValueOf == null || bValueOf.byteValue() != 6)) ? this.r : this.q;
    }

    @Override // com.inmobi.media.Mc
    public final void w() {
        InterfaceC0298f5 interfaceC0298f5P = p();
        if (interfaceC0298f5P != null) {
            String str = D1.f93a;
            Intrinsics.checkNotNullExpressionValue(str, "access$getTAG$p(...)");
            ((C0314g5) interfaceC0298f5P).a(str, "submitAdLoadCalled " + this);
        }
        C0561x1 c0561x1 = this.r;
        if (c0561x1 != null) {
            c0561x1.t0();
        }
    }

    public final void x() {
        InterfaceC0298f5 interfaceC0298f5P = p();
        if (interfaceC0298f5P != null) {
            String str = D1.f93a;
            Intrinsics.checkNotNullExpressionValue(str, "access$getTAG$p(...)");
            ((C0314g5) interfaceC0298f5P).c(str, "registerLifeCycleCallbacks " + this);
        }
        C0561x1 c0561x1 = this.o;
        if (c0561x1 != null) {
            c0561x1.H0();
        }
        C0561x1 c0561x12 = this.p;
        if (c0561x12 != null) {
            c0561x12.H0();
        }
    }

    public final void y() {
        InterfaceC0298f5 interfaceC0298f5P = p();
        if (interfaceC0298f5P != null) {
            String str = D1.f93a;
            Intrinsics.checkNotNullExpressionValue(str, "access$getTAG$p(...)");
            ((C0314g5) interfaceC0298f5P).a(str, "loadIntoView " + this);
        }
        C0561x1 c0561x1 = this.r;
        if (c0561x1 == null) {
            throw new IllegalStateException(Mc.m);
        }
        if (c0561x1 == null || !a("InMobi", c0561x1.I().toString())) {
            return;
        }
        a((byte) 8);
        InterfaceC0298f5 interfaceC0298f5P2 = p();
        if (interfaceC0298f5P2 != null) {
            String str2 = D1.f93a;
            Intrinsics.checkNotNullExpressionValue(str2, "access$getTAG$p(...)");
            ((C0314g5) interfaceC0298f5P2).d(str2, "AdManager state - LOADING_INTO_VIEW");
        }
        c0561x1.j0();
    }

    public static final void a(C1 this$0, AdMetaInfo info) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(info, "$info");
        PublisherCallbacks publisherCallbacksL = this$0.l();
        if (publisherCallbacksL != null) {
            publisherCallbacksL.onAdFetchSuccessful(info);
        }
    }

    @Override // com.inmobi.media.Mc, com.inmobi.media.E0
    public final void a(Q0 q0, InMobiAdRequestStatus status) {
        Intrinsics.checkNotNullParameter(status, "status");
        InterfaceC0298f5 interfaceC0298f5P = p();
        if (interfaceC0298f5P != null) {
            String str = D1.f93a;
            Intrinsics.checkNotNullExpressionValue(str, "access$getTAG$p(...)");
            ((C0314g5) interfaceC0298f5P).b(str, "onAdLoadFailed");
        }
        InterfaceC0298f5 interfaceC0298f5P2 = p();
        if (interfaceC0298f5P2 != null) {
            ((C0314g5) interfaceC0298f5P2).a();
        }
    }

    public static final void a(C1 this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        InterfaceC0298f5 interfaceC0298f5P = this$0.p();
        if (interfaceC0298f5P != null) {
            String str = D1.f93a;
            Intrinsics.checkNotNullExpressionValue(str, "access$getTAG$p(...)");
            ((C0314g5) interfaceC0298f5P).a(str, "callback - onAdDisplayFailed");
        }
        PublisherCallbacks publisherCallbacksL = this$0.l();
        if (publisherCallbacksL != null) {
            publisherCallbacksL.onAdDisplayFailed();
        }
        InterfaceC0298f5 interfaceC0298f5P2 = this$0.p();
        if (interfaceC0298f5P2 != null) {
            ((C0314g5) interfaceC0298f5P2).a();
        }
    }

    @Override // com.inmobi.media.Mc, com.inmobi.media.E0
    public final void a(AdMetaInfo info) {
        Intrinsics.checkNotNullParameter(info, "info");
        InterfaceC0298f5 interfaceC0298f5P = p();
        if (interfaceC0298f5P != null) {
            String str = D1.f93a;
            Intrinsics.checkNotNullExpressionValue(str, "access$getTAG$p(...)");
            ((C0314g5) interfaceC0298f5P).a(str, "onAdDisplayed");
        }
        super.a(info);
        Q0 q0J = j();
        if (q0J != null) {
            q0J.x0();
        }
    }

    public final void a(final InMobiAudio audio) {
        Intrinsics.checkNotNullParameter(audio, "audio");
        InterfaceC0298f5 interfaceC0298f5P = p();
        if (interfaceC0298f5P != null) {
            String str = D1.f93a;
            Intrinsics.checkNotNullExpressionValue(str, "access$getTAG$p(...)");
            ((C0314g5) interfaceC0298f5P).a(str, "show called");
        }
        try {
            if (Thread.currentThread() == Looper.getMainLooper().getThread()) {
                a((RelativeLayout) audio);
            } else {
                s().post(new Runnable() { // from class: com.inmobi.media.C1$$ExternalSyntheticLambda3
                    @Override // java.lang.Runnable
                    public final void run() {
                        C1.a(this.f$0, audio);
                    }
                });
            }
        } catch (Exception e) {
            C0561x1 c0561x1 = this.r;
            if (c0561x1 != null) {
                c0561x1.d((short) 26);
            }
            String str2 = D1.f93a;
            Intrinsics.checkNotNullExpressionValue(str2, "access$getTAG$p(...)");
            I6.a((byte) 1, str2, "Unable to show ad; SDK encountered an unexpected error");
            InterfaceC0298f5 interfaceC0298f5P2 = p();
            if (interfaceC0298f5P2 != null) {
                ((C0314g5) interfaceC0298f5P2).b(str2, Ed.a(e, AbstractC0363j6.a(str2, "access$getTAG$p(...)", "Show failed with unexpected error: ")));
            }
            C0551w5 c0551w5 = C0551w5.f513a;
            C0551w5.d.a(AbstractC0251c5.a(e, "event"));
        }
    }

    public static final void b(C1 this$0, AdMetaInfo info) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(info, "$info");
        PublisherCallbacks publisherCallbacksL = this$0.l();
        if (publisherCallbacksL != null) {
            publisherCallbacksL.onAdLoadSucceeded(info);
        }
    }

    @Override // com.inmobi.media.Mc, com.inmobi.media.E0
    public final void b() {
        InterfaceC0298f5 interfaceC0298f5P = p();
        if (interfaceC0298f5P != null) {
            String str = D1.f93a;
            Intrinsics.checkNotNullExpressionValue(str, "access$getTAG$p(...)");
            ((C0314g5) interfaceC0298f5P).a(str, "onAdDismissed " + this);
        }
        a((byte) 0);
        InterfaceC0298f5 interfaceC0298f5P2 = p();
        if (interfaceC0298f5P2 != null) {
            String str2 = D1.f93a;
            Intrinsics.checkNotNullExpressionValue(str2, "access$getTAG$p(...)");
            ((C0314g5) interfaceC0298f5P2).d(str2, "AdManager state - CREATED");
        }
        InterfaceC0298f5 interfaceC0298f5P3 = p();
        if (interfaceC0298f5P3 != null) {
            ((C0314g5) interfaceC0298f5P3).a();
        }
        super.b();
    }

    public final void b(String adSize) {
        Intrinsics.checkNotNullParameter(adSize, "adSize");
        InterfaceC0298f5 interfaceC0298f5P = p();
        if (interfaceC0298f5P != null) {
            String str = D1.f93a;
            Intrinsics.checkNotNullExpressionValue(str, "access$getTAG$p(...)");
            ((C0314g5) interfaceC0298f5P).a(str, "load 1 " + this);
        }
        C0561x1 c0561x1 = this.r;
        if (c0561x1 != null && a("InMobi", c0561x1.I().toString(), l()) && c0561x1.e((byte) 1)) {
            a((byte) 1);
            InterfaceC0298f5 interfaceC0298f5P2 = p();
            if (interfaceC0298f5P2 != null) {
                String str2 = D1.f93a;
                Intrinsics.checkNotNullExpressionValue(str2, "access$getTAG$p(...)");
                ((C0314g5) interfaceC0298f5P2).d(str2, "AdManager state - LOADING");
            }
            d(null);
            c0561x1.e(adSize);
            c0561x1.e(false);
        }
    }

    public static final void a(C1 this$0, RelativeLayout audio) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(audio, "$audio");
        this$0.a(audio);
    }

    public final void a(RelativeLayout relativeLayout) {
        InterfaceC0559x interfaceC0559xK;
        Y yI;
        InterfaceC0298f5 interfaceC0298f5P = p();
        if (interfaceC0298f5P != null) {
            String str = D1.f93a;
            Intrinsics.checkNotNullExpressionValue(str, "access$getTAG$p(...)");
            ((C0314g5) interfaceC0298f5P).a(str, "showAudioAd");
        }
        C0561x1 c0561x1 = this.q;
        if (c0561x1 != null ? c0561x1.E0() : false) {
            String str2 = D1.f93a;
            Intrinsics.checkNotNullExpressionValue(str2, "access$getTAG$p(...)");
            I6.a((byte) 1, str2, "An ad is currently being viewed by the user. Please wait for the user to close the ad before showing another ad.");
            InterfaceC0298f5 interfaceC0298f5P2 = p();
            if (interfaceC0298f5P2 != null) {
                Intrinsics.checkNotNullExpressionValue(str2, "access$getTAG$p(...)");
                ((C0314g5) interfaceC0298f5P2).b(str2, "ad is active");
            }
            C0561x1 c0561x12 = this.r;
            if (c0561x12 != null) {
                c0561x12.d((short) 15);
                return;
            }
            return;
        }
        C0561x1 c0561x13 = this.r;
        if (c0561x13 != null) {
            InterfaceC0298f5 interfaceC0298f5 = c0561x13.j;
            if (interfaceC0298f5 != null) {
                String strE = Q0.e();
                Intrinsics.checkNotNullExpressionValue(strE, "<get-TAG>(...)");
                ((C0314g5) interfaceC0298f5).c(strE, "canProceedToShow");
            }
            if (c0561x13.W()) {
                String strE2 = Q0.e();
                Intrinsics.checkNotNullExpressionValue(strE2, "<get-TAG>(...)");
                I6.a((byte) 1, strE2, "Ad Show has failed because current ad is expired. Please call load() again.");
                InterfaceC0298f5 interfaceC0298f52 = c0561x13.j;
                if (interfaceC0298f52 != null) {
                    String strE3 = Q0.e();
                    Intrinsics.checkNotNullExpressionValue(strE3, "<get-TAG>(...)");
                    ((C0314g5) interfaceC0298f52).b(strE3, "ad is expired");
                }
                InterfaceC0298f5 interfaceC0298f53 = c0561x13.j;
                if (interfaceC0298f53 != null) {
                    String strE4 = Q0.e();
                    Intrinsics.checkNotNullExpressionValue(strE4, "<get-TAG>(...)");
                    ((C0314g5) interfaceC0298f53).d(strE4, "AdUnit " + c0561x13 + " state - CREATED");
                }
                c0561x13.d((byte) 0);
                c0561x13.d((short) 2153);
                return;
            }
            byte bQ = c0561x13.Q();
            if (bQ == 1 || bQ == 2) {
                I6.a((byte) 1, "InMobi", "Ad Load is not complete. Please wait for the Ad to be in a ready state before calling show.");
                InterfaceC0298f5 interfaceC0298f54 = c0561x13.j;
                if (interfaceC0298f54 != null) {
                    String strE5 = Q0.e();
                    Intrinsics.checkNotNullExpressionValue(strE5, "<get-TAG>(...)");
                    ((C0314g5) interfaceC0298f54).b(strE5, "ad is not ready");
                }
                InterfaceC0298f5 interfaceC0298f55 = c0561x13.j;
                if (interfaceC0298f55 != null) {
                    String strE6 = Q0.e();
                    Intrinsics.checkNotNullExpressionValue(strE6, "<get-TAG>(...)");
                    ((C0314g5) interfaceC0298f55).a(strE6, "callback - onShowFailure");
                }
                c0561x13.d((short) 2152);
                return;
            }
            if (bQ == 3) {
                I6.a((byte) 1, "InMobi", "Ad Load has Failed. Please call load() again.");
                c0561x13.d((short) 0);
                InterfaceC0298f5 interfaceC0298f56 = c0561x13.j;
                if (interfaceC0298f56 != null) {
                    String strE7 = Q0.e();
                    Intrinsics.checkNotNullExpressionValue(strE7, "<get-TAG>(...)");
                    ((C0314g5) interfaceC0298f56).a(strE7, "callback - onShowFailure");
                }
                InterfaceC0298f5 interfaceC0298f57 = c0561x13.j;
                if (interfaceC0298f57 != null) {
                    String strE8 = Q0.e();
                    Intrinsics.checkNotNullExpressionValue(strE8, "<get-TAG>(...)");
                    ((C0314g5) interfaceC0298f57).b(strE8, "ad is failed");
                    return;
                }
                return;
            }
            if (bQ == 8) {
                I6.a((byte) 1, "InMobi", "Ad Load has Failed. Please call load() again.");
                c0561x13.d((short) 0);
                InterfaceC0298f5 interfaceC0298f58 = c0561x13.j;
                if (interfaceC0298f58 != null) {
                    String strE9 = Q0.e();
                    Intrinsics.checkNotNullExpressionValue(strE9, "<get-TAG>(...)");
                    ((C0314g5) interfaceC0298f58).a(strE9, "callback - onShowFailure");
                }
                InterfaceC0298f5 interfaceC0298f59 = c0561x13.j;
                if (interfaceC0298f59 != null) {
                    String strE10 = Q0.e();
                    Intrinsics.checkNotNullExpressionValue(strE10, "<get-TAG>(...)");
                    ((C0314g5) interfaceC0298f59).b(strE10, "ad is unloaded");
                    return;
                }
                return;
            }
            if (bQ == 0) {
                I6.a((byte) 1, "InMobi", "Ad Show has Failed. Please call load() before calling show().");
                c0561x13.d((short) 0);
                InterfaceC0298f5 interfaceC0298f510 = c0561x13.j;
                if (interfaceC0298f510 != null) {
                    String strE11 = Q0.e();
                    Intrinsics.checkNotNullExpressionValue(strE11, "<get-TAG>(...)");
                    ((C0314g5) interfaceC0298f510).a(strE11, "callback - onShowFailure");
                }
                InterfaceC0298f5 interfaceC0298f511 = c0561x13.j;
                if (interfaceC0298f511 != null) {
                    String strE12 = Q0.e();
                    Intrinsics.checkNotNullExpressionValue(strE12, "<get-TAG>(...)");
                    ((C0314g5) interfaceC0298f511).b(strE12, "show called before load");
                    return;
                }
                return;
            }
            InterfaceC0298f5 interfaceC0298f5P3 = p();
            if (interfaceC0298f5P3 != null) {
                String str3 = D1.f93a;
                Intrinsics.checkNotNullExpressionValue(str3, "access$getTAG$p(...)");
                ((C0314g5) interfaceC0298f5P3).a(str3, "swapAdUnits " + this);
            }
            C0561x1 c0561x14 = this.q;
            if (Intrinsics.areEqual(c0561x14, this.o)) {
                this.q = this.p;
                this.r = this.o;
            } else if (Intrinsics.areEqual(c0561x14, this.p) || c0561x14 == null) {
                this.q = this.o;
                this.r = this.p;
            }
            InterfaceC0298f5 interfaceC0298f5P4 = p();
            if (interfaceC0298f5P4 != null) {
                String str4 = D1.f93a;
                Intrinsics.checkNotNullExpressionValue(str4, "access$getTAG$p(...)");
                ((C0314g5) interfaceC0298f5P4).a(str4, "displayAd " + this);
            }
            C0561x1 c0561x15 = this.q;
            if (c0561x15 == null || (interfaceC0559xK = c0561x15.k()) == null) {
                return;
            }
            Ya ya = (Ya) interfaceC0559xK;
            AbstractC0416md viewableAd = ya.getViewableAd();
            C0561x1 c0561x16 = this.q;
            if (c0561x16 != null && (yI = c0561x16.I()) != null && yI.p()) {
                ya.e();
            }
            ViewParent parent = ya.getParent();
            ViewGroup viewGroup = parent instanceof ViewGroup ? (ViewGroup) parent : null;
            RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -1);
            View viewD = viewableAd.d();
            viewableAd.a((HashMap) null);
            C0561x1 c0561x17 = this.r;
            if (c0561x17 != null) {
                c0561x17.F0();
            }
            if (viewGroup == null) {
                relativeLayout.addView(viewD, layoutParams);
            } else {
                viewGroup.removeAllViews();
                viewGroup.addView(viewD, layoutParams);
            }
            C0561x1 c0561x18 = this.r;
            if (c0561x18 != null) {
                c0561x18.g();
            }
        }
    }

    @Override // com.inmobi.media.Mc
    public final void a(short s) {
        InterfaceC0298f5 interfaceC0298f5P = p();
        if (interfaceC0298f5P != null) {
            String str = D1.f93a;
            Intrinsics.checkNotNullExpressionValue(str, "access$getTAG$p(...)");
            ((C0314g5) interfaceC0298f5P).b(str, "submitAdLoadDroppedAtSDK " + this);
        }
        C0561x1 c0561x1 = this.r;
        if (c0561x1 != null) {
            c0561x1.a(s);
        }
    }
}
