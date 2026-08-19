package com.inmobi.media;

import android.os.Handler;
import android.os.Looper;
import com.inmobi.ads.AdMetaInfo;
import com.inmobi.ads.InMobiAdRequestStatus;
import com.inmobi.ads.WatermarkData;
import com.inmobi.ads.controllers.PublisherCallbacks;
import java.util.Map;
import kotlin.jvm.internal.Intrinsics;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public abstract class Mc extends E0 {
    public static final Lc h = new Lc();
    private static final String i = "Mc";
    public static final String j = "An ad is currently being viewed by the user. Please wait for the user to close the ad before requesting for another ad for placement id: ";
    public static final String k = "Ad show is already called. Please wait for the the ad to be shown.";
    public static final String l = "preload() and load() cannot be called on the same instance, please use a different instance.";
    public static final String m = "Please make an ad request first in order to start loading the ad.";
    public static final String n = "An ad load is already in progress. Please wait for the load to complete before requesting for another ad for placement id: ";

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private byte f184a;
    private Boolean b;
    private PublisherCallbacks c;
    private final Handler d = new Handler(Looper.getMainLooper());
    private AdMetaInfo e;
    private InterfaceC0298f5 f;
    private WatermarkData g;

    public static /* synthetic */ void r() {
    }

    public final void a(byte b) {
        this.f184a = b;
    }

    public final void b(PublisherCallbacks publisherCallbacks) {
        this.c = publisherCallbacks;
    }

    @Override // com.inmobi.media.E0
    public void c(AdMetaInfo info) {
        Intrinsics.checkNotNullParameter(info, "info");
        InterfaceC0298f5 interfaceC0298f5 = this.f;
        if (interfaceC0298f5 != null) {
            String TAG = i;
            Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
            ((C0314g5) interfaceC0298f5).c(TAG, "onAdLoadSucceeded " + this);
        }
        this.e = info;
        Q0 q0J = j();
        if (q0J != null) {
            q0J.b((byte) 1);
        }
    }

    public final void d(AdMetaInfo adMetaInfo) {
        this.e = adMetaInfo;
    }

    @Override // com.inmobi.media.E0
    public void e() {
        InterfaceC0298f5 interfaceC0298f5 = this.f;
        if (interfaceC0298f5 != null) {
            String TAG = i;
            Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
            ((C0314g5) interfaceC0298f5).c(TAG, "onAdWillShow " + this);
        }
        byte b = this.f184a;
        if (b == 4 || b == 5) {
            return;
        }
        this.d.post(new Runnable() { // from class: com.inmobi.media.Mc$$ExternalSyntheticLambda5
            @Override // java.lang.Runnable
            public final void run() {
                Mc.b(this.f$0);
            }
        });
        InterfaceC0298f5 interfaceC0298f52 = this.f;
        if (interfaceC0298f52 != null) {
            String TAG2 = i;
            Intrinsics.checkNotNullExpressionValue(TAG2, "TAG");
            ((C0314g5) interfaceC0298f52).d(TAG2, "AdManager state - WILL_DISPLAY");
        }
        this.f184a = (byte) 4;
    }

    @Override // com.inmobi.media.E0
    public void h() {
        InterfaceC0298f5 interfaceC0298f5 = this.f;
        if (interfaceC0298f5 != null) {
            String TAG = i;
            Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
            ((C0314g5) interfaceC0298f5).c(TAG, "onUserLeftApplication " + this);
        }
        this.d.post(new Runnable() { // from class: com.inmobi.media.Mc$$ExternalSyntheticLambda11
            @Override // java.lang.Runnable
            public final void run() {
                Mc.c(this.f$0);
            }
        });
    }

    public abstract Q0 j();

    public final JSONObject k() {
        JSONObject bidInfo;
        AdMetaInfo adMetaInfo = this.e;
        return (adMetaInfo == null || (bidInfo = adMetaInfo.getBidInfo()) == null) ? new JSONObject() : bidInfo;
    }

    public final PublisherCallbacks l() {
        return this.c;
    }

    public final String m() {
        String creativeID;
        AdMetaInfo adMetaInfo = this.e;
        return (adMetaInfo == null || (creativeID = adMetaInfo.getCreativeID()) == null) ? "" : creativeID;
    }

    public final AdMetaInfo n() {
        return this.e;
    }

    public final byte o() {
        return v() ? (byte) 2 : (byte) 1;
    }

    public final InterfaceC0298f5 p() {
        return this.f;
    }

    public final byte q() {
        return this.f184a;
    }

    public final Handler s() {
        return this.d;
    }

    public final WatermarkData t() {
        return this.g;
    }

    public final Boolean u() {
        return this.b;
    }

    public final boolean v() {
        PublisherCallbacks publisherCallbacks = this.c;
        return publisherCallbacks != null && publisherCallbacks.getType() == 1;
    }

    public void w() {
        InterfaceC0298f5 interfaceC0298f5 = this.f;
        if (interfaceC0298f5 != null) {
            String TAG = i;
            Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
            ((C0314g5) interfaceC0298f5).c(TAG, "submitAdLoadCalled " + this);
        }
        Q0 q0J = j();
        if (q0J != null) {
            q0J.t0();
        }
    }

    public final void a(Boolean bool) {
        this.b = bool;
    }

    public final void b(WatermarkData watermarkData) {
        this.g = watermarkData;
    }

    public final void a(InterfaceC0298f5 interfaceC0298f5) {
        this.f = interfaceC0298f5;
    }

    public final void b(final Q0 q0, final InMobiAdRequestStatus status) {
        Intrinsics.checkNotNullParameter(status, "status");
        InterfaceC0298f5 interfaceC0298f5 = this.f;
        if (interfaceC0298f5 != null) {
            String TAG = i;
            Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
            ((C0314g5) interfaceC0298f5).c(TAG, "onLoadFailure " + this);
        }
        InterfaceC0298f5 interfaceC0298f52 = this.f;
        if (interfaceC0298f52 != null) {
            String TAG2 = i;
            Intrinsics.checkNotNullExpressionValue(TAG2, "TAG");
            ((C0314g5) interfaceC0298f52).d(TAG2, "AdManager state - LOAD_FAILED");
        }
        this.f184a = (byte) 3;
        this.d.post(new Runnable() { // from class: com.inmobi.media.Mc$$ExternalSyntheticLambda7
            @Override // java.lang.Runnable
            public final void run() {
                Mc.a(q0, this, status);
            }
        });
    }

    public static final void a(Q0 q0, Mc this$0, InMobiAdRequestStatus status) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(status, "$status");
        if (q0 != null) {
            q0.b((byte) 1);
        }
        InterfaceC0298f5 interfaceC0298f5 = this$0.f;
        if (interfaceC0298f5 != null) {
            String TAG = i;
            Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
            ((C0314g5) interfaceC0298f5).a(TAG, "callback - onAdLoadFailed");
        }
        PublisherCallbacks publisherCallbacks = this$0.c;
        if (publisherCallbacks != null) {
            publisherCallbacks.onAdLoadFailed(status);
        }
        InterfaceC0298f5 interfaceC0298f52 = this$0.f;
        if (interfaceC0298f52 != null) {
            ((C0314g5) interfaceC0298f52).a();
        }
    }

    public static final void c(Mc this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        InterfaceC0298f5 interfaceC0298f5 = this$0.f;
        if (interfaceC0298f5 != null) {
            String TAG = i;
            Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
            ((C0314g5) interfaceC0298f5).a(TAG, "callback - onUserLeftApplication");
        }
        PublisherCallbacks publisherCallbacks = this$0.c;
        if (publisherCallbacks != null) {
            publisherCallbacks.onUserLeftApplication();
        }
    }

    @Override // com.inmobi.media.E0
    public void b(AdMetaInfo info) {
        Q0 q0J;
        Intrinsics.checkNotNullParameter(info, "info");
        InterfaceC0298f5 interfaceC0298f5 = this.f;
        if (interfaceC0298f5 != null) {
            String TAG = i;
            Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
            ((C0314g5) interfaceC0298f5).c(TAG, "onAdFetchSuccess " + this);
        }
        InterfaceC0298f5 interfaceC0298f52 = this.f;
        if (interfaceC0298f52 != null) {
            String TAG2 = i;
            Intrinsics.checkNotNullExpressionValue(TAG2, "TAG");
            ((C0314g5) interfaceC0298f52).d(TAG2, "AdManager state - FETCHED");
        }
        this.f184a = (byte) 7;
        if (!v() || (q0J = j()) == null) {
            return;
        }
        q0J.b((byte) 2);
    }

    @Override // com.inmobi.media.E0
    public void a(final InMobiAdRequestStatus status) {
        Intrinsics.checkNotNullParameter(status, "status");
        InterfaceC0298f5 interfaceC0298f5 = this.f;
        if (interfaceC0298f5 != null) {
            String TAG = i;
            Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
            ((C0314g5) interfaceC0298f5).c(TAG, "onAdFetchFailed " + this);
        }
        this.f184a = (byte) 3;
        this.d.post(new Runnable() { // from class: com.inmobi.media.Mc$$ExternalSyntheticLambda3
            @Override // java.lang.Runnable
            public final void run() {
                Mc.a(this.f$0, status);
            }
        });
    }

    public static final void a(Mc this$0, InMobiAdRequestStatus status) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(status, "$status");
        InterfaceC0298f5 interfaceC0298f5 = this$0.f;
        if (interfaceC0298f5 != null) {
            String TAG = i;
            Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
            ((C0314g5) interfaceC0298f5).a(TAG, "callback - onAdFetchFailed");
        }
        PublisherCallbacks publisherCallbacks = this$0.c;
        if (publisherCallbacks != null) {
            publisherCallbacks.onAdFetchFailed(status);
        }
        InterfaceC0298f5 interfaceC0298f52 = this$0.f;
        if (interfaceC0298f52 != null) {
            ((C0314g5) interfaceC0298f52).a();
        }
    }

    public static final void b(Mc this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        InterfaceC0298f5 interfaceC0298f5 = this$0.f;
        if (interfaceC0298f5 != null) {
            String TAG = i;
            Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
            ((C0314g5) interfaceC0298f5).a(TAG, "callback - onAdWillShow");
        }
        PublisherCallbacks publisherCallbacks = this$0.c;
        if (publisherCallbacks != null) {
            publisherCallbacks.onAdWillDisplay();
        }
    }

    @Override // com.inmobi.media.E0
    public void a(final AdMetaInfo info) {
        Intrinsics.checkNotNullParameter(info, "info");
        InterfaceC0298f5 interfaceC0298f5 = this.f;
        if (interfaceC0298f5 != null) {
            String TAG = i;
            Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
            ((C0314g5) interfaceC0298f5).c(TAG, "onAdDisplayed " + this);
        }
        if (this.f184a != 5) {
            this.e = info;
            this.d.post(new Runnable() { // from class: com.inmobi.media.Mc$$ExternalSyntheticLambda4
                @Override // java.lang.Runnable
                public final void run() {
                    Mc.a(this.f$0, info);
                }
            });
            InterfaceC0298f5 interfaceC0298f52 = this.f;
            if (interfaceC0298f52 != null) {
                String TAG2 = i;
                Intrinsics.checkNotNullExpressionValue(TAG2, "TAG");
                ((C0314g5) interfaceC0298f52).d(TAG2, "AdManager state - DISPLAYED");
            }
            this.f184a = (byte) 5;
        }
    }

    @Override // com.inmobi.media.E0
    public void b(final Map<Object, ? extends Object> rewards) {
        Intrinsics.checkNotNullParameter(rewards, "rewards");
        InterfaceC0298f5 interfaceC0298f5 = this.f;
        if (interfaceC0298f5 != null) {
            String TAG = i;
            Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
            ((C0314g5) interfaceC0298f5).c(TAG, "onAdRewardActionCompleted " + this);
        }
        this.d.post(new Runnable() { // from class: com.inmobi.media.Mc$$ExternalSyntheticLambda12
            @Override // java.lang.Runnable
            public final void run() {
                Mc.b(this.f$0, rewards);
            }
        });
    }

    public static final void b(Mc this$0, Map rewards) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(rewards, "$rewards");
        InterfaceC0298f5 interfaceC0298f5 = this$0.f;
        if (interfaceC0298f5 != null) {
            String TAG = i;
            Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
            ((C0314g5) interfaceC0298f5).a(TAG, "callback - onRewardsUnlocked");
        }
        PublisherCallbacks publisherCallbacks = this$0.c;
        if (publisherCallbacks != null) {
            publisherCallbacks.onRewardsUnlocked(rewards);
        }
    }

    @Override // com.inmobi.media.E0
    public void b(final InMobiAdRequestStatus reason) {
        Intrinsics.checkNotNullParameter(reason, "reason");
        InterfaceC0298f5 interfaceC0298f5 = this.f;
        if (interfaceC0298f5 != null) {
            String TAG = i;
            Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
            ((C0314g5) interfaceC0298f5).c(TAG, "onRequestCreationFailed " + this);
        }
        this.d.post(new Runnable() { // from class: com.inmobi.media.Mc$$ExternalSyntheticLambda10
            @Override // java.lang.Runnable
            public final void run() {
                Mc.b(this.f$0, reason);
            }
        });
    }

    public static final void b(Mc this$0, InMobiAdRequestStatus reason) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(reason, "$reason");
        InterfaceC0298f5 interfaceC0298f5 = this$0.f;
        if (interfaceC0298f5 != null) {
            String TAG = i;
            Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
            ((C0314g5) interfaceC0298f5).a(TAG, "callback - onRequestPayloadCreationFailed");
        }
        PublisherCallbacks publisherCallbacks = this$0.c;
        if (publisherCallbacks != null) {
            publisherCallbacks.onRequestPayloadCreationFailed(reason);
        }
        InterfaceC0298f5 interfaceC0298f52 = this$0.f;
        if (interfaceC0298f52 != null) {
            ((C0314g5) interfaceC0298f52).a();
        }
    }

    public static final void a(Mc this$0, AdMetaInfo info) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(info, "$info");
        InterfaceC0298f5 interfaceC0298f5 = this$0.f;
        if (interfaceC0298f5 != null) {
            String TAG = i;
            Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
            ((C0314g5) interfaceC0298f5).a(TAG, "callback - onAdDisplayed");
        }
        PublisherCallbacks publisherCallbacks = this$0.c;
        if (publisherCallbacks != null) {
            publisherCallbacks.onAdDisplayed(info);
        }
    }

    @Override // com.inmobi.media.E0
    public void b() {
        InterfaceC0298f5 interfaceC0298f5 = this.f;
        if (interfaceC0298f5 != null) {
            String TAG = i;
            Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
            ((C0314g5) interfaceC0298f5).c(TAG, "onAdDismissed " + this);
        }
        this.d.post(new Runnable() { // from class: com.inmobi.media.Mc$$ExternalSyntheticLambda8
            @Override // java.lang.Runnable
            public final void run() {
                Mc.a(this.f$0);
            }
        });
        InterfaceC0298f5 interfaceC0298f52 = this.f;
        if (interfaceC0298f52 != null) {
            ((C0314g5) interfaceC0298f52).a();
        }
    }

    @Override // com.inmobi.media.E0
    public void a(Q0 q0, InMobiAdRequestStatus status) {
        Intrinsics.checkNotNullParameter(status, "status");
        InterfaceC0298f5 interfaceC0298f5 = this.f;
        if (interfaceC0298f5 != null) {
            String TAG = i;
            Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
            ((C0314g5) interfaceC0298f5).c(TAG, "onAdLoadFailed " + this);
        }
        b(q0, status);
    }

    @Override // com.inmobi.media.E0
    public void a(final Map<Object, ? extends Object> params) {
        Intrinsics.checkNotNullParameter(params, "params");
        InterfaceC0298f5 interfaceC0298f5 = this.f;
        if (interfaceC0298f5 != null) {
            String TAG = i;
            Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
            ((C0314g5) interfaceC0298f5).c(TAG, "onAdInteraction " + this);
        }
        this.d.post(new Runnable() { // from class: com.inmobi.media.Mc$$ExternalSyntheticLambda6
            @Override // java.lang.Runnable
            public final void run() {
                Mc.a(this.f$0, params);
            }
        });
    }

    public static final void a(Mc this$0, Map params) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(params, "$params");
        InterfaceC0298f5 interfaceC0298f5 = this$0.f;
        if (interfaceC0298f5 != null) {
            String TAG = i;
            Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
            ((C0314g5) interfaceC0298f5).a(TAG, "callback - onAdClicked");
        }
        PublisherCallbacks publisherCallbacks = this$0.c;
        if (publisherCallbacks != null) {
            publisherCallbacks.onAdClicked(params);
        }
    }

    public final void a(PublisherCallbacks callbacks) {
        Intrinsics.checkNotNullParameter(callbacks, "callbacks");
        InterfaceC0298f5 interfaceC0298f5 = this.f;
        if (interfaceC0298f5 != null) {
            String TAG = i;
            Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
            ((C0314g5) interfaceC0298f5).a(TAG, "getSignals " + this);
        }
        if (j() != null) {
            Q0 q0J = j();
            if (q0J != null) {
                q0J.y0();
            }
            this.c = callbacks;
            Q0 q0J2 = j();
            if (q0J2 != null) {
                q0J2.P();
            }
        }
    }

    public void a(byte[] bArr, PublisherCallbacks callbacks) {
        Q0 q0J;
        Q0 q0J2;
        Intrinsics.checkNotNullParameter(callbacks, "callbacks");
        InterfaceC0298f5 interfaceC0298f5 = this.f;
        if (interfaceC0298f5 != null) {
            String TAG = i;
            Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
            ((C0314g5) interfaceC0298f5).c(TAG, "load " + this);
        }
        if (Intrinsics.areEqual(this.b, Boolean.TRUE)) {
            I6.a((byte) 1, "InMobi", "Cannot call load(byte[]) API after load() API is called");
            InterfaceC0298f5 interfaceC0298f52 = this.f;
            if (interfaceC0298f52 != null) {
                String TAG2 = i;
                Intrinsics.checkNotNullExpressionValue(TAG2, "TAG");
                ((C0314g5) interfaceC0298f52).a(TAG2, "Cannot call load(byte[]) API after load() API is called");
            }
            b(j(), new InMobiAdRequestStatus(InMobiAdRequestStatus.StatusCode.REPETITIVE_LOAD));
            Q0 q0J3 = j();
            if (q0J3 != null) {
                q0J3.a((short) 2140);
                return;
            }
            return;
        }
        this.b = Boolean.FALSE;
        this.f184a = (byte) 1;
        InterfaceC0298f5 interfaceC0298f53 = this.f;
        if (interfaceC0298f53 != null && (q0J2 = j()) != null) {
            q0J2.a(interfaceC0298f53);
        }
        if (j() == null || (q0J = j()) == null || !q0J.e((byte) 1)) {
            return;
        }
        InterfaceC0298f5 interfaceC0298f54 = this.f;
        if (interfaceC0298f54 != null) {
            String TAG3 = i;
            Intrinsics.checkNotNullExpressionValue(TAG3, "TAG");
            ((C0314g5) interfaceC0298f54).a(TAG3, "load starting. Started INTERNAL_LOAD_TIMER");
        }
        this.c = callbacks;
        Q0 q0J4 = j();
        if (q0J4 != null) {
            q0J4.a(bArr);
        }
    }

    @Override // com.inmobi.media.E0
    public void a(final byte[] request) {
        Intrinsics.checkNotNullParameter(request, "request");
        InterfaceC0298f5 interfaceC0298f5 = this.f;
        if (interfaceC0298f5 != null) {
            String TAG = i;
            Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
            ((C0314g5) interfaceC0298f5).c(TAG, "onRequestCreated " + this);
        }
        this.d.post(new Runnable() { // from class: com.inmobi.media.Mc$$ExternalSyntheticLambda2
            @Override // java.lang.Runnable
            public final void run() {
                Mc.a(this.f$0, request);
            }
        });
    }

    public static final void a(Mc this$0, byte[] request) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(request, "$request");
        InterfaceC0298f5 interfaceC0298f5 = this$0.f;
        if (interfaceC0298f5 != null) {
            String TAG = i;
            Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
            ((C0314g5) interfaceC0298f5).a(TAG, "callback - onRequestPayloadCreated");
        }
        PublisherCallbacks publisherCallbacks = this$0.c;
        if (publisherCallbacks != null) {
            publisherCallbacks.onRequestPayloadCreated(request);
        }
        InterfaceC0298f5 interfaceC0298f52 = this$0.f;
        if (interfaceC0298f52 != null) {
            ((C0314g5) interfaceC0298f52).a();
        }
    }

    public void a(WatermarkData watermarkData) {
        Intrinsics.checkNotNullParameter(watermarkData, "watermarkData");
        InterfaceC0298f5 interfaceC0298f5 = this.f;
        if (interfaceC0298f5 != null) {
            String str = i;
            ((C0314g5) interfaceC0298f5).c(str, AbstractC0363j6.a(str, "TAG", "setWatermark - ").append(watermarkData.getWatermarkBase64EncodedString()).toString());
        }
        this.g = watermarkData;
    }

    public final boolean a(String tag, String placementString, PublisherCallbacks publisherCallbacks) {
        Intrinsics.checkNotNullParameter(tag, "tag");
        Intrinsics.checkNotNullParameter(placementString, "placementString");
        InterfaceC0298f5 interfaceC0298f5 = this.f;
        if (interfaceC0298f5 != null) {
            ((C0314g5) interfaceC0298f5).c(tag, "canProceedToLoad " + this);
        }
        PublisherCallbacks publisherCallbacks2 = this.c;
        if (publisherCallbacks2 != null && publisherCallbacks != null && publisherCallbacks2.getType() != publisherCallbacks.getType()) {
            String TAG = i;
            Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
            I6.a((byte) 1, TAG, l);
            InterfaceC0298f5 interfaceC0298f52 = this.f;
            if (interfaceC0298f52 != null) {
                ((C0314g5) interfaceC0298f52).b(tag, l);
            }
            Q0 q0J = j();
            if (q0J != null) {
                q0J.a((short) 2005);
            }
            b(j(), new InMobiAdRequestStatus(InMobiAdRequestStatus.StatusCode.REPETITIVE_LOAD));
            return false;
        }
        byte b = this.f184a;
        if (b == 8) {
            I6.a((byte) 1, tag, n + placementString);
            InterfaceC0298f5 interfaceC0298f53 = this.f;
            if (interfaceC0298f53 != null) {
                ((C0314g5) interfaceC0298f53).b(tag, AbstractC0309g0.a(n, placementString));
            }
            Q0 q0J2 = j();
            if (q0J2 == null) {
                return false;
            }
            q0J2.a((short) 2002);
            return false;
        }
        if (b == 1) {
            I6.a((byte) 1, tag, n + placementString);
            InterfaceC0298f5 interfaceC0298f54 = this.f;
            if (interfaceC0298f54 != null) {
                ((C0314g5) interfaceC0298f54).b(tag, AbstractC0309g0.a(n, placementString));
            }
            Q0 q0J3 = j();
            if (q0J3 == null) {
                return false;
            }
            q0J3.a((short) 2001);
            return false;
        }
        if (b != 5) {
            return true;
        }
        I6.a((byte) 1, tag, j + placementString);
        InterfaceC0298f5 interfaceC0298f55 = this.f;
        if (interfaceC0298f55 != null) {
            ((C0314g5) interfaceC0298f55).b(tag, AbstractC0309g0.a(j, placementString));
        }
        b(j(), new InMobiAdRequestStatus(InMobiAdRequestStatus.StatusCode.AD_ACTIVE));
        Q0 q0J4 = j();
        if (q0J4 == null) {
            return false;
        }
        q0J4.b((short) 2003);
        return false;
    }

    public final boolean a(String tag, String placementString) throws IllegalStateException {
        Intrinsics.checkNotNullParameter(tag, "tag");
        Intrinsics.checkNotNullParameter(placementString, "placementString");
        InterfaceC0298f5 interfaceC0298f5 = this.f;
        if (interfaceC0298f5 != null) {
            String TAG = i;
            Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
            ((C0314g5) interfaceC0298f5).c(TAG, "canRender " + this);
        }
        byte b = this.f184a;
        if (b == 1) {
            I6.a((byte) 1, tag, n + placementString);
            InterfaceC0298f5 interfaceC0298f52 = this.f;
            if (interfaceC0298f52 != null) {
                String TAG2 = i;
                Intrinsics.checkNotNullExpressionValue(TAG2, "TAG");
                ((C0314g5) interfaceC0298f52).b(TAG2, "adload in progress");
            }
            Q0 q0J = j();
            if (q0J == null) {
                return false;
            }
            q0J.b((short) 2129);
            return false;
        }
        if (b == 8) {
            I6.a((byte) 1, tag, n + placementString);
            InterfaceC0298f5 interfaceC0298f53 = this.f;
            if (interfaceC0298f53 != null) {
                String TAG3 = i;
                Intrinsics.checkNotNullExpressionValue(TAG3, "TAG");
                ((C0314g5) interfaceC0298f53).b(TAG3, "ad loading into view is in progress");
            }
            Q0 q0J2 = j();
            if (q0J2 == null) {
                return false;
            }
            q0J2.b((short) 2164);
            return false;
        }
        if (b == 5) {
            I6.a((byte) 1, tag, j + placementString);
            InterfaceC0298f5 interfaceC0298f54 = this.f;
            if (interfaceC0298f54 != null) {
                String TAG4 = i;
                Intrinsics.checkNotNullExpressionValue(TAG4, "TAG");
                ((C0314g5) interfaceC0298f54).b(TAG4, "ad active before renderAd");
            }
            Q0 q0J3 = j();
            if (q0J3 != null) {
                q0J3.b((short) 2130);
            }
            Q0 q0J4 = j();
            if (q0J4 != null) {
                q0J4.m0();
            }
            b(j(), new InMobiAdRequestStatus(InMobiAdRequestStatus.StatusCode.AD_ACTIVE));
            return false;
        }
        if (b == 7) {
            return true;
        }
        InterfaceC0298f5 interfaceC0298f55 = this.f;
        if (interfaceC0298f55 != null) {
            String TAG5 = i;
            Intrinsics.checkNotNullExpressionValue(TAG5, "TAG");
            ((C0314g5) interfaceC0298f55).b(TAG5, "ad in illegal state");
        }
        Q0 q0J5 = j();
        if (q0J5 != null) {
            q0J5.b((short) 2165);
        }
        Q0 q0J6 = j();
        if (q0J6 != null) {
            q0J6.m0();
        }
        b(j(), new InMobiAdRequestStatus(InMobiAdRequestStatus.StatusCode.INTERNAL_ERROR));
        throw new IllegalStateException(m);
    }

    public static final void a(Mc this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        InterfaceC0298f5 interfaceC0298f5 = this$0.f;
        if (interfaceC0298f5 != null) {
            String TAG = i;
            Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
            ((C0314g5) interfaceC0298f5).a(TAG, "callback - onAdDismissed");
        }
        PublisherCallbacks publisherCallbacks = this$0.c;
        if (publisherCallbacks != null) {
            publisherCallbacks.onAdDismissed();
            return;
        }
        InterfaceC0298f5 interfaceC0298f52 = this$0.f;
        if (interfaceC0298f52 != null) {
            String TAG2 = i;
            Intrinsics.checkNotNullExpressionValue(TAG2, "TAG");
            ((C0314g5) interfaceC0298f52).b(TAG2, "callback is null");
        }
    }

    @Override // com.inmobi.media.E0
    public void a(final C0488rc c0488rc) {
        InterfaceC0298f5 interfaceC0298f5 = this.f;
        if (interfaceC0298f5 != null) {
            String TAG = i;
            Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
            ((C0314g5) interfaceC0298f5).c(TAG, "onAdImpression " + this);
        }
        this.d.post(new Runnable() { // from class: com.inmobi.media.Mc$$ExternalSyntheticLambda9
            @Override // java.lang.Runnable
            public final void run() {
                Mc.a(this.f$0, c0488rc);
            }
        });
    }

    public static final void a(Mc this$0, C0488rc c0488rc) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        if (this$0.c == null) {
            InterfaceC0298f5 interfaceC0298f5 = this$0.f;
            if (interfaceC0298f5 != null) {
                String TAG = i;
                Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
                ((C0314g5) interfaceC0298f5).b(TAG, "callback is null");
            }
            if (c0488rc != null) {
                c0488rc.c();
                return;
            }
            return;
        }
        InterfaceC0298f5 interfaceC0298f52 = this$0.f;
        if (interfaceC0298f52 != null) {
            String TAG2 = i;
            Intrinsics.checkNotNullExpressionValue(TAG2, "TAG");
            ((C0314g5) interfaceC0298f52).a(TAG2, "callback - onAdImpression");
        }
        PublisherCallbacks publisherCallbacks = this$0.c;
        if (publisherCallbacks != null) {
            publisherCallbacks.onAdImpression(c0488rc);
        }
    }

    @Override // com.inmobi.media.E0
    public void a(final B1 audioStatusInternal) {
        Intrinsics.checkNotNullParameter(audioStatusInternal, "audioStatusInternal");
        this.d.post(new Runnable() { // from class: com.inmobi.media.Mc$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                Mc.a(this.f$0, audioStatusInternal);
            }
        });
    }

    public static final void a(Mc this$0, B1 audioStatusInternal) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(audioStatusInternal, "$audioStatusInternal");
        InterfaceC0298f5 interfaceC0298f5 = this$0.f;
        if (interfaceC0298f5 != null) {
            String str = i;
            ((C0314g5) interfaceC0298f5).a(str, AbstractC0363j6.a(str, "TAG", "callback - onAudioStatusChanged - ").append(audioStatusInternal.f77a).toString());
        }
        PublisherCallbacks publisherCallbacks = this$0.c;
        if (publisherCallbacks != null) {
            publisherCallbacks.onAudioStatusChanged(audioStatusInternal);
        }
    }

    @Override // com.inmobi.media.E0
    public void a(final String log) {
        Intrinsics.checkNotNullParameter(log, "log");
        this.d.post(new Runnable() { // from class: com.inmobi.media.Mc$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                Mc.a(this.f$0, log);
            }
        });
    }

    public static final void a(Mc this$0, String log) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(log, "$log");
        InterfaceC0298f5 interfaceC0298f5 = this$0.f;
        if (interfaceC0298f5 != null) {
            String TAG = i;
            Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
            ((C0314g5) interfaceC0298f5).a(TAG, "callback - onImraidLog");
        }
        PublisherCallbacks publisherCallbacks = this$0.c;
        if (publisherCallbacks != null) {
            publisherCallbacks.onImraidLog(log);
        }
    }

    public void a(short s) {
        InterfaceC0298f5 interfaceC0298f5 = this.f;
        if (interfaceC0298f5 != null) {
            String TAG = i;
            Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
            ((C0314g5) interfaceC0298f5).c(TAG, "submitAdLoadDroppedAtSDK " + this);
        }
        Q0 q0J = j();
        if (q0J != null) {
            q0J.a(s);
        }
    }
}
