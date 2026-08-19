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

/* JADX INFO: renamed from: com.inmobi.media.Mc */
/* JADX INFO: loaded from: classes6.dex */
public abstract class AbstractC2880Mc extends AbstractC2748E0 {

    /* JADX INFO: renamed from: h */
    public static final C2865Lc f1268h = new C2865Lc();

    /* JADX INFO: renamed from: i */
    private static final String f1269i = "Mc";

    /* JADX INFO: renamed from: j */
    public static final String f1270j = "An ad is currently being viewed by the user. Please wait for the user to close the ad before requesting for another ad for placement id: ";

    /* JADX INFO: renamed from: k */
    public static final String f1271k = "Ad show is already called. Please wait for the the ad to be shown.";

    /* JADX INFO: renamed from: l */
    public static final String f1272l = "preload() and load() cannot be called on the same instance, please use a different instance.";

    /* JADX INFO: renamed from: m */
    public static final String f1273m = "Please make an ad request first in order to start loading the ad.";

    /* JADX INFO: renamed from: n */
    public static final String f1274n = "An ad load is already in progress. Please wait for the load to complete before requesting for another ad for placement id: ";

    /* JADX INFO: renamed from: a */
    private byte f1275a;

    /* JADX INFO: renamed from: b */
    private Boolean f1276b;

    /* JADX INFO: renamed from: c */
    private PublisherCallbacks f1277c;

    /* JADX INFO: renamed from: d */
    private final Handler f1278d = new Handler(Looper.getMainLooper());

    /* JADX INFO: renamed from: e */
    private AdMetaInfo f1279e;

    /* JADX INFO: renamed from: f */
    private InterfaceC3147f5 f1280f;

    /* JADX INFO: renamed from: g */
    private WatermarkData f1281g;

    /* JADX INFO: renamed from: r */
    public static /* synthetic */ void m1350r() {
    }

    /* JADX INFO: renamed from: a */
    public final void m1351a(byte b) {
        this.f1275a = b;
    }

    /* JADX INFO: renamed from: b */
    public final void m1359b(PublisherCallbacks publisherCallbacks) {
        this.f1277c = publisherCallbacks;
    }

    @Override // com.inmobi.media.AbstractC2748E0
    /* JADX INFO: renamed from: c */
    public void mo884c(AdMetaInfo info) {
        Intrinsics.checkNotNullParameter(info, "info");
        InterfaceC3147f5 interfaceC3147f5 = this.f1280f;
        if (interfaceC3147f5 != null) {
            String TAG = f1269i;
            Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
            ((C3162g5) interfaceC3147f5).m2152c(TAG, "onAdLoadSucceeded " + this);
        }
        this.f1279e = info;
        AbstractC2928Q0 abstractC2928Q0Mo886j = mo886j();
        if (abstractC2928Q0Mo886j != null) {
            abstractC2928Q0Mo886j.m1629b((byte) 1);
        }
    }

    /* JADX INFO: renamed from: d */
    public final void m1361d(AdMetaInfo adMetaInfo) {
        this.f1279e = adMetaInfo;
    }

    @Override // com.inmobi.media.AbstractC2748E0
    /* JADX INFO: renamed from: e */
    public void mo985e() {
        InterfaceC3147f5 interfaceC3147f5 = this.f1280f;
        if (interfaceC3147f5 != null) {
            String TAG = f1269i;
            Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
            ((C3162g5) interfaceC3147f5).m2152c(TAG, "onAdWillShow " + this);
        }
        byte b = this.f1275a;
        if (b == 4 || b == 5) {
            return;
        }
        this.f1278d.post(new Runnable() { // from class: com.inmobi.media.Mc$$ExternalSyntheticLambda5
            @Override // java.lang.Runnable
            public final void run() {
                AbstractC2880Mc.m1346b(this.f$0);
            }
        });
        InterfaceC3147f5 interfaceC3147f52 = this.f1280f;
        if (interfaceC3147f52 != null) {
            String TAG2 = f1269i;
            Intrinsics.checkNotNullExpressionValue(TAG2, "TAG");
            ((C3162g5) interfaceC3147f52).m2153d(TAG2, "AdManager state - WILL_DISPLAY");
        }
        this.f1275a = (byte) 4;
    }

    @Override // com.inmobi.media.AbstractC2748E0
    /* JADX INFO: renamed from: h */
    public void mo988h() {
        InterfaceC3147f5 interfaceC3147f5 = this.f1280f;
        if (interfaceC3147f5 != null) {
            String TAG = f1269i;
            Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
            ((C3162g5) interfaceC3147f5).m2152c(TAG, "onUserLeftApplication " + this);
        }
        this.f1278d.post(new Runnable() { // from class: com.inmobi.media.Mc$$ExternalSyntheticLambda11
            @Override // java.lang.Runnable
            public final void run() {
                AbstractC2880Mc.m1349c(this.f$0);
            }
        });
    }

    /* JADX INFO: renamed from: j */
    public abstract AbstractC2928Q0 mo886j();

    /* JADX INFO: renamed from: k */
    public final JSONObject m1362k() {
        JSONObject bidInfo;
        AdMetaInfo adMetaInfo = this.f1279e;
        return (adMetaInfo == null || (bidInfo = adMetaInfo.getBidInfo()) == null) ? new JSONObject() : bidInfo;
    }

    /* JADX INFO: renamed from: l */
    public final PublisherCallbacks m1363l() {
        return this.f1277c;
    }

    /* JADX INFO: renamed from: m */
    public final String m1364m() {
        String creativeID;
        AdMetaInfo adMetaInfo = this.f1279e;
        return (adMetaInfo == null || (creativeID = adMetaInfo.getCreativeID()) == null) ? "" : creativeID;
    }

    /* JADX INFO: renamed from: n */
    public final AdMetaInfo m1365n() {
        return this.f1279e;
    }

    /* JADX INFO: renamed from: o */
    public final byte m1366o() {
        return m1372v() ? (byte) 2 : (byte) 1;
    }

    /* JADX INFO: renamed from: p */
    public final InterfaceC3147f5 m1367p() {
        return this.f1280f;
    }

    /* JADX INFO: renamed from: q */
    public final byte m1368q() {
        return this.f1275a;
    }

    /* JADX INFO: renamed from: s */
    public final Handler m1369s() {
        return this.f1278d;
    }

    /* JADX INFO: renamed from: t */
    public final WatermarkData m1370t() {
        return this.f1281g;
    }

    /* JADX INFO: renamed from: u */
    public final Boolean m1371u() {
        return this.f1276b;
    }

    /* JADX INFO: renamed from: v */
    public final boolean m1372v() {
        PublisherCallbacks publisherCallbacks = this.f1277c;
        return publisherCallbacks != null && publisherCallbacks.getType() == 1;
    }

    /* JADX INFO: renamed from: w */
    public void mo887w() {
        InterfaceC3147f5 interfaceC3147f5 = this.f1280f;
        if (interfaceC3147f5 != null) {
            String TAG = f1269i;
            Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
            ((C3162g5) interfaceC3147f5).m2152c(TAG, "submitAdLoadCalled " + this);
        }
        AbstractC2928Q0 abstractC2928Q0Mo886j = mo886j();
        if (abstractC2928Q0Mo886j != null) {
            abstractC2928Q0Mo886j.m1701t0();
        }
    }

    /* JADX INFO: renamed from: a */
    public final void m1355a(Boolean bool) {
        this.f1276b = bool;
    }

    /* JADX INFO: renamed from: b */
    public final void m1358b(WatermarkData watermarkData) {
        this.f1281g = watermarkData;
    }

    /* JADX INFO: renamed from: a */
    public final void m1354a(InterfaceC3147f5 interfaceC3147f5) {
        this.f1280f = interfaceC3147f5;
    }

    /* JADX INFO: renamed from: b */
    public final void m1360b(final AbstractC2928Q0 abstractC2928Q0, final InMobiAdRequestStatus status) {
        Intrinsics.checkNotNullParameter(status, "status");
        InterfaceC3147f5 interfaceC3147f5 = this.f1280f;
        if (interfaceC3147f5 != null) {
            String TAG = f1269i;
            Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
            ((C3162g5) interfaceC3147f5).m2152c(TAG, "onLoadFailure " + this);
        }
        InterfaceC3147f5 interfaceC3147f52 = this.f1280f;
        if (interfaceC3147f52 != null) {
            String TAG2 = f1269i;
            Intrinsics.checkNotNullExpressionValue(TAG2, "TAG");
            ((C3162g5) interfaceC3147f52).m2153d(TAG2, "AdManager state - LOAD_FAILED");
        }
        this.f1275a = (byte) 3;
        this.f1278d.post(new Runnable() { // from class: com.inmobi.media.Mc$$ExternalSyntheticLambda7
            @Override // java.lang.Runnable
            public final void run() {
                AbstractC2880Mc.m1345a(abstractC2928Q0, this, status);
            }
        });
    }

    /* JADX INFO: renamed from: a */
    public static final void m1345a(AbstractC2928Q0 abstractC2928Q0, AbstractC2880Mc this$0, InMobiAdRequestStatus status) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(status, "$status");
        if (abstractC2928Q0 != null) {
            abstractC2928Q0.m1629b((byte) 1);
        }
        InterfaceC3147f5 interfaceC3147f5 = this$0.f1280f;
        if (interfaceC3147f5 != null) {
            String TAG = f1269i;
            Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
            ((C3162g5) interfaceC3147f5).m2147a(TAG, "callback - onAdLoadFailed");
        }
        PublisherCallbacks publisherCallbacks = this$0.f1277c;
        if (publisherCallbacks != null) {
            publisherCallbacks.onAdLoadFailed(status);
        }
        InterfaceC3147f5 interfaceC3147f52 = this$0.f1280f;
        if (interfaceC3147f52 != null) {
            ((C3162g5) interfaceC3147f52).m2146a();
        }
    }

    /* JADX INFO: renamed from: c */
    public static final void m1349c(AbstractC2880Mc this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        InterfaceC3147f5 interfaceC3147f5 = this$0.f1280f;
        if (interfaceC3147f5 != null) {
            String TAG = f1269i;
            Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
            ((C3162g5) interfaceC3147f5).m2147a(TAG, "callback - onUserLeftApplication");
        }
        PublisherCallbacks publisherCallbacks = this$0.f1277c;
        if (publisherCallbacks != null) {
            publisherCallbacks.onUserLeftApplication();
        }
    }

    @Override // com.inmobi.media.AbstractC2748E0
    /* JADX INFO: renamed from: b */
    public void mo882b(AdMetaInfo info) {
        AbstractC2928Q0 abstractC2928Q0Mo886j;
        Intrinsics.checkNotNullParameter(info, "info");
        InterfaceC3147f5 interfaceC3147f5 = this.f1280f;
        if (interfaceC3147f5 != null) {
            String TAG = f1269i;
            Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
            ((C3162g5) interfaceC3147f5).m2152c(TAG, "onAdFetchSuccess " + this);
        }
        InterfaceC3147f5 interfaceC3147f52 = this.f1280f;
        if (interfaceC3147f52 != null) {
            String TAG2 = f1269i;
            Intrinsics.checkNotNullExpressionValue(TAG2, "TAG");
            ((C3162g5) interfaceC3147f52).m2153d(TAG2, "AdManager state - FETCHED");
        }
        this.f1275a = (byte) 7;
        if (!m1372v() || (abstractC2928Q0Mo886j = mo886j()) == null) {
            return;
        }
        abstractC2928Q0Mo886j.m1629b((byte) 2);
    }

    @Override // com.inmobi.media.AbstractC2748E0
    /* JADX INFO: renamed from: a */
    public void mo973a(final InMobiAdRequestStatus status) {
        Intrinsics.checkNotNullParameter(status, "status");
        InterfaceC3147f5 interfaceC3147f5 = this.f1280f;
        if (interfaceC3147f5 != null) {
            String TAG = f1269i;
            Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
            ((C3162g5) interfaceC3147f5).m2152c(TAG, "onAdFetchFailed " + this);
        }
        this.f1275a = (byte) 3;
        this.f1278d.post(new Runnable() { // from class: com.inmobi.media.Mc$$ExternalSyntheticLambda3
            @Override // java.lang.Runnable
            public final void run() {
                AbstractC2880Mc.m1339a(this.f$0, status);
            }
        });
    }

    /* JADX INFO: renamed from: a */
    public static final void m1339a(AbstractC2880Mc this$0, InMobiAdRequestStatus status) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(status, "$status");
        InterfaceC3147f5 interfaceC3147f5 = this$0.f1280f;
        if (interfaceC3147f5 != null) {
            String TAG = f1269i;
            Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
            ((C3162g5) interfaceC3147f5).m2147a(TAG, "callback - onAdFetchFailed");
        }
        PublisherCallbacks publisherCallbacks = this$0.f1277c;
        if (publisherCallbacks != null) {
            publisherCallbacks.onAdFetchFailed(status);
        }
        InterfaceC3147f5 interfaceC3147f52 = this$0.f1280f;
        if (interfaceC3147f52 != null) {
            ((C3162g5) interfaceC3147f52).m2146a();
        }
    }

    /* JADX INFO: renamed from: b */
    public static final void m1346b(AbstractC2880Mc this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        InterfaceC3147f5 interfaceC3147f5 = this$0.f1280f;
        if (interfaceC3147f5 != null) {
            String TAG = f1269i;
            Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
            ((C3162g5) interfaceC3147f5).m2147a(TAG, "callback - onAdWillShow");
        }
        PublisherCallbacks publisherCallbacks = this$0.f1277c;
        if (publisherCallbacks != null) {
            publisherCallbacks.onAdWillDisplay();
        }
    }

    @Override // com.inmobi.media.AbstractC2748E0
    /* JADX INFO: renamed from: a */
    public void mo876a(final AdMetaInfo info) {
        Intrinsics.checkNotNullParameter(info, "info");
        InterfaceC3147f5 interfaceC3147f5 = this.f1280f;
        if (interfaceC3147f5 != null) {
            String TAG = f1269i;
            Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
            ((C3162g5) interfaceC3147f5).m2152c(TAG, "onAdDisplayed " + this);
        }
        if (this.f1275a != 5) {
            this.f1279e = info;
            this.f1278d.post(new Runnable() { // from class: com.inmobi.media.Mc$$ExternalSyntheticLambda4
                @Override // java.lang.Runnable
                public final void run() {
                    AbstractC2880Mc.m1338a(this.f$0, info);
                }
            });
            InterfaceC3147f5 interfaceC3147f52 = this.f1280f;
            if (interfaceC3147f52 != null) {
                String TAG2 = f1269i;
                Intrinsics.checkNotNullExpressionValue(TAG2, "TAG");
                ((C3162g5) interfaceC3147f52).m2153d(TAG2, "AdManager state - DISPLAYED");
            }
            this.f1275a = (byte) 5;
        }
    }

    @Override // com.inmobi.media.AbstractC2748E0
    /* JADX INFO: renamed from: b */
    public void mo983b(final Map<Object, ? extends Object> rewards) {
        Intrinsics.checkNotNullParameter(rewards, "rewards");
        InterfaceC3147f5 interfaceC3147f5 = this.f1280f;
        if (interfaceC3147f5 != null) {
            String TAG = f1269i;
            Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
            ((C3162g5) interfaceC3147f5).m2152c(TAG, "onAdRewardActionCompleted " + this);
        }
        this.f1278d.post(new Runnable() { // from class: com.inmobi.media.Mc$$ExternalSyntheticLambda12
            @Override // java.lang.Runnable
            public final void run() {
                AbstractC2880Mc.m1348b(this.f$0, rewards);
            }
        });
    }

    /* JADX INFO: renamed from: b */
    public static final void m1348b(AbstractC2880Mc this$0, Map rewards) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(rewards, "$rewards");
        InterfaceC3147f5 interfaceC3147f5 = this$0.f1280f;
        if (interfaceC3147f5 != null) {
            String TAG = f1269i;
            Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
            ((C3162g5) interfaceC3147f5).m2147a(TAG, "callback - onRewardsUnlocked");
        }
        PublisherCallbacks publisherCallbacks = this$0.f1277c;
        if (publisherCallbacks != null) {
            publisherCallbacks.onRewardsUnlocked(rewards);
        }
    }

    @Override // com.inmobi.media.AbstractC2748E0
    /* JADX INFO: renamed from: b */
    public void mo982b(final InMobiAdRequestStatus reason) {
        Intrinsics.checkNotNullParameter(reason, "reason");
        InterfaceC3147f5 interfaceC3147f5 = this.f1280f;
        if (interfaceC3147f5 != null) {
            String TAG = f1269i;
            Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
            ((C3162g5) interfaceC3147f5).m2152c(TAG, "onRequestCreationFailed " + this);
        }
        this.f1278d.post(new Runnable() { // from class: com.inmobi.media.Mc$$ExternalSyntheticLambda10
            @Override // java.lang.Runnable
            public final void run() {
                AbstractC2880Mc.m1347b(this.f$0, reason);
            }
        });
    }

    /* JADX INFO: renamed from: b */
    public static final void m1347b(AbstractC2880Mc this$0, InMobiAdRequestStatus reason) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(reason, "$reason");
        InterfaceC3147f5 interfaceC3147f5 = this$0.f1280f;
        if (interfaceC3147f5 != null) {
            String TAG = f1269i;
            Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
            ((C3162g5) interfaceC3147f5).m2147a(TAG, "callback - onRequestPayloadCreationFailed");
        }
        PublisherCallbacks publisherCallbacks = this$0.f1277c;
        if (publisherCallbacks != null) {
            publisherCallbacks.onRequestPayloadCreationFailed(reason);
        }
        InterfaceC3147f5 interfaceC3147f52 = this$0.f1280f;
        if (interfaceC3147f52 != null) {
            ((C3162g5) interfaceC3147f52).m2146a();
        }
    }

    /* JADX INFO: renamed from: a */
    public static final void m1338a(AbstractC2880Mc this$0, AdMetaInfo info) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(info, "$info");
        InterfaceC3147f5 interfaceC3147f5 = this$0.f1280f;
        if (interfaceC3147f5 != null) {
            String TAG = f1269i;
            Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
            ((C3162g5) interfaceC3147f5).m2147a(TAG, "callback - onAdDisplayed");
        }
        PublisherCallbacks publisherCallbacks = this$0.f1277c;
        if (publisherCallbacks != null) {
            publisherCallbacks.onAdDisplayed(info);
        }
    }

    @Override // com.inmobi.media.AbstractC2748E0
    /* JADX INFO: renamed from: b */
    public void mo881b() {
        InterfaceC3147f5 interfaceC3147f5 = this.f1280f;
        if (interfaceC3147f5 != null) {
            String TAG = f1269i;
            Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
            ((C3162g5) interfaceC3147f5).m2152c(TAG, "onAdDismissed " + this);
        }
        this.f1278d.post(new Runnable() { // from class: com.inmobi.media.Mc$$ExternalSyntheticLambda8
            @Override // java.lang.Runnable
            public final void run() {
                AbstractC2880Mc.m1337a(this.f$0);
            }
        });
        InterfaceC3147f5 interfaceC3147f52 = this.f1280f;
        if (interfaceC3147f52 != null) {
            ((C3162g5) interfaceC3147f52).m2146a();
        }
    }

    @Override // com.inmobi.media.AbstractC2748E0
    /* JADX INFO: renamed from: a */
    public void mo878a(AbstractC2928Q0 abstractC2928Q0, InMobiAdRequestStatus status) {
        Intrinsics.checkNotNullParameter(status, "status");
        InterfaceC3147f5 interfaceC3147f5 = this.f1280f;
        if (interfaceC3147f5 != null) {
            String TAG = f1269i;
            Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
            ((C3162g5) interfaceC3147f5).m2152c(TAG, "onAdLoadFailed " + this);
        }
        m1360b(abstractC2928Q0, status);
    }

    @Override // com.inmobi.media.AbstractC2748E0
    /* JADX INFO: renamed from: a */
    public void mo978a(final Map<Object, ? extends Object> params) {
        Intrinsics.checkNotNullParameter(params, "params");
        InterfaceC3147f5 interfaceC3147f5 = this.f1280f;
        if (interfaceC3147f5 != null) {
            String TAG = f1269i;
            Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
            ((C3162g5) interfaceC3147f5).m2152c(TAG, "onAdInteraction " + this);
        }
        this.f1278d.post(new Runnable() { // from class: com.inmobi.media.Mc$$ExternalSyntheticLambda6
            @Override // java.lang.Runnable
            public final void run() {
                AbstractC2880Mc.m1343a(this.f$0, params);
            }
        });
    }

    /* JADX INFO: renamed from: a */
    public static final void m1343a(AbstractC2880Mc this$0, Map params) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(params, "$params");
        InterfaceC3147f5 interfaceC3147f5 = this$0.f1280f;
        if (interfaceC3147f5 != null) {
            String TAG = f1269i;
            Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
            ((C3162g5) interfaceC3147f5).m2147a(TAG, "callback - onAdClicked");
        }
        PublisherCallbacks publisherCallbacks = this$0.f1277c;
        if (publisherCallbacks != null) {
            publisherCallbacks.onAdClicked(params);
        }
    }

    /* JADX INFO: renamed from: a */
    public final void m1353a(PublisherCallbacks callbacks) {
        Intrinsics.checkNotNullParameter(callbacks, "callbacks");
        InterfaceC3147f5 interfaceC3147f5 = this.f1280f;
        if (interfaceC3147f5 != null) {
            String TAG = f1269i;
            Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
            ((C3162g5) interfaceC3147f5).m2147a(TAG, "getSignals " + this);
        }
        if (mo886j() != null) {
            AbstractC2928Q0 abstractC2928Q0Mo886j = mo886j();
            if (abstractC2928Q0Mo886j != null) {
                abstractC2928Q0Mo886j.m1710y0();
            }
            this.f1277c = callbacks;
            AbstractC2928Q0 abstractC2928Q0Mo886j2 = mo886j();
            if (abstractC2928Q0Mo886j2 != null) {
                abstractC2928Q0Mo886j2.m1576P();
            }
        }
    }

    /* JADX INFO: renamed from: a */
    public void mo880a(byte[] bArr, PublisherCallbacks callbacks) {
        AbstractC2928Q0 abstractC2928Q0Mo886j;
        AbstractC2928Q0 abstractC2928Q0Mo886j2;
        Intrinsics.checkNotNullParameter(callbacks, "callbacks");
        InterfaceC3147f5 interfaceC3147f5 = this.f1280f;
        if (interfaceC3147f5 != null) {
            String TAG = f1269i;
            Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
            ((C3162g5) interfaceC3147f5).m2152c(TAG, "load " + this);
        }
        if (Intrinsics.areEqual(this.f1276b, Boolean.TRUE)) {
            AbstractC2814I6.m1170a((byte) 1, "InMobi", "Cannot call load(byte[]) API after load() API is called");
            InterfaceC3147f5 interfaceC3147f52 = this.f1280f;
            if (interfaceC3147f52 != null) {
                String TAG2 = f1269i;
                Intrinsics.checkNotNullExpressionValue(TAG2, "TAG");
                ((C3162g5) interfaceC3147f52).m2147a(TAG2, "Cannot call load(byte[]) API after load() API is called");
            }
            m1360b(mo886j(), new InMobiAdRequestStatus(InMobiAdRequestStatus.StatusCode.REPETITIVE_LOAD));
            AbstractC2928Q0 abstractC2928Q0Mo886j3 = mo886j();
            if (abstractC2928Q0Mo886j3 != null) {
                abstractC2928Q0Mo886j3.m1620a((short) 2140);
                return;
            }
            return;
        }
        this.f1276b = Boolean.FALSE;
        this.f1275a = (byte) 1;
        InterfaceC3147f5 interfaceC3147f53 = this.f1280f;
        if (interfaceC3147f53 != null && (abstractC2928Q0Mo886j2 = mo886j()) != null) {
            abstractC2928Q0Mo886j2.m1607a(interfaceC3147f53);
        }
        if (mo886j() == null || (abstractC2928Q0Mo886j = mo886j()) == null || !abstractC2928Q0Mo886j.m1667e((byte) 1)) {
            return;
        }
        InterfaceC3147f5 interfaceC3147f54 = this.f1280f;
        if (interfaceC3147f54 != null) {
            String TAG3 = f1269i;
            Intrinsics.checkNotNullExpressionValue(TAG3, "TAG");
            ((C3162g5) interfaceC3147f54).m2147a(TAG3, "load starting. Started INTERNAL_LOAD_TIMER");
        }
        this.f1277c = callbacks;
        AbstractC2928Q0 abstractC2928Q0Mo886j4 = mo886j();
        if (abstractC2928Q0Mo886j4 != null) {
            abstractC2928Q0Mo886j4.mo1623a(bArr);
        }
    }

    @Override // com.inmobi.media.AbstractC2748E0
    /* JADX INFO: renamed from: a */
    public void mo980a(final byte[] request) {
        Intrinsics.checkNotNullParameter(request, "request");
        InterfaceC3147f5 interfaceC3147f5 = this.f1280f;
        if (interfaceC3147f5 != null) {
            String TAG = f1269i;
            Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
            ((C3162g5) interfaceC3147f5).m2152c(TAG, "onRequestCreated " + this);
        }
        this.f1278d.post(new Runnable() { // from class: com.inmobi.media.Mc$$ExternalSyntheticLambda2
            @Override // java.lang.Runnable
            public final void run() {
                AbstractC2880Mc.m1344a(this.f$0, request);
            }
        });
    }

    /* JADX INFO: renamed from: a */
    public static final void m1344a(AbstractC2880Mc this$0, byte[] request) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(request, "$request");
        InterfaceC3147f5 interfaceC3147f5 = this$0.f1280f;
        if (interfaceC3147f5 != null) {
            String TAG = f1269i;
            Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
            ((C3162g5) interfaceC3147f5).m2147a(TAG, "callback - onRequestPayloadCreated");
        }
        PublisherCallbacks publisherCallbacks = this$0.f1277c;
        if (publisherCallbacks != null) {
            publisherCallbacks.onRequestPayloadCreated(request);
        }
        InterfaceC3147f5 interfaceC3147f52 = this$0.f1280f;
        if (interfaceC3147f52 != null) {
            ((C3162g5) interfaceC3147f52).m2146a();
        }
    }

    /* JADX INFO: renamed from: a */
    public void mo1352a(WatermarkData watermarkData) {
        Intrinsics.checkNotNullParameter(watermarkData, "watermarkData");
        InterfaceC3147f5 interfaceC3147f5 = this.f1280f;
        if (interfaceC3147f5 != null) {
            String str = f1269i;
            ((C3162g5) interfaceC3147f5).m2152c(str, AbstractC3208j6.m2261a(str, "TAG", "setWatermark - ").append(watermarkData.getWatermarkBase64EncodedString()).toString());
        }
        this.f1281g = watermarkData;
    }

    /* JADX INFO: renamed from: a */
    public final boolean m1357a(String tag, String placementString, PublisherCallbacks publisherCallbacks) {
        Intrinsics.checkNotNullParameter(tag, "tag");
        Intrinsics.checkNotNullParameter(placementString, "placementString");
        InterfaceC3147f5 interfaceC3147f5 = this.f1280f;
        if (interfaceC3147f5 != null) {
            ((C3162g5) interfaceC3147f5).m2152c(tag, "canProceedToLoad " + this);
        }
        PublisherCallbacks publisherCallbacks2 = this.f1277c;
        if (publisherCallbacks2 != null && publisherCallbacks != null && publisherCallbacks2.getType() != publisherCallbacks.getType()) {
            String TAG = f1269i;
            Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
            AbstractC2814I6.m1170a((byte) 1, TAG, f1272l);
            InterfaceC3147f5 interfaceC3147f52 = this.f1280f;
            if (interfaceC3147f52 != null) {
                ((C3162g5) interfaceC3147f52).m2151b(tag, f1272l);
            }
            AbstractC2928Q0 abstractC2928Q0Mo886j = mo886j();
            if (abstractC2928Q0Mo886j != null) {
                abstractC2928Q0Mo886j.m1620a((short) 2005);
            }
            m1360b(mo886j(), new InMobiAdRequestStatus(InMobiAdRequestStatus.StatusCode.REPETITIVE_LOAD));
            return false;
        }
        byte b = this.f1275a;
        if (b == 8) {
            AbstractC2814I6.m1170a((byte) 1, tag, f1274n + placementString);
            InterfaceC3147f5 interfaceC3147f53 = this.f1280f;
            if (interfaceC3147f53 != null) {
                ((C3162g5) interfaceC3147f53).m2151b(tag, AbstractC3157g0.m2142a(f1274n, placementString));
            }
            AbstractC2928Q0 abstractC2928Q0Mo886j2 = mo886j();
            if (abstractC2928Q0Mo886j2 == null) {
                return false;
            }
            abstractC2928Q0Mo886j2.m1620a((short) 2002);
            return false;
        }
        if (b == 1) {
            AbstractC2814I6.m1170a((byte) 1, tag, f1274n + placementString);
            InterfaceC3147f5 interfaceC3147f54 = this.f1280f;
            if (interfaceC3147f54 != null) {
                ((C3162g5) interfaceC3147f54).m2151b(tag, AbstractC3157g0.m2142a(f1274n, placementString));
            }
            AbstractC2928Q0 abstractC2928Q0Mo886j3 = mo886j();
            if (abstractC2928Q0Mo886j3 == null) {
                return false;
            }
            abstractC2928Q0Mo886j3.m1620a((short) 2001);
            return false;
        }
        if (b != 5) {
            return true;
        }
        AbstractC2814I6.m1170a((byte) 1, tag, f1270j + placementString);
        InterfaceC3147f5 interfaceC3147f55 = this.f1280f;
        if (interfaceC3147f55 != null) {
            ((C3162g5) interfaceC3147f55).m2151b(tag, AbstractC3157g0.m2142a(f1270j, placementString));
        }
        m1360b(mo886j(), new InMobiAdRequestStatus(InMobiAdRequestStatus.StatusCode.AD_ACTIVE));
        AbstractC2928Q0 abstractC2928Q0Mo886j4 = mo886j();
        if (abstractC2928Q0Mo886j4 == null) {
            return false;
        }
        abstractC2928Q0Mo886j4.m1639b((short) 2003);
        return false;
    }

    /* JADX INFO: renamed from: a */
    public final boolean m1356a(String tag, String placementString) throws IllegalStateException {
        Intrinsics.checkNotNullParameter(tag, "tag");
        Intrinsics.checkNotNullParameter(placementString, "placementString");
        InterfaceC3147f5 interfaceC3147f5 = this.f1280f;
        if (interfaceC3147f5 != null) {
            String TAG = f1269i;
            Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
            ((C3162g5) interfaceC3147f5).m2152c(TAG, "canRender " + this);
        }
        byte b = this.f1275a;
        if (b == 1) {
            AbstractC2814I6.m1170a((byte) 1, tag, f1274n + placementString);
            InterfaceC3147f5 interfaceC3147f52 = this.f1280f;
            if (interfaceC3147f52 != null) {
                String TAG2 = f1269i;
                Intrinsics.checkNotNullExpressionValue(TAG2, "TAG");
                ((C3162g5) interfaceC3147f52).m2151b(TAG2, "adload in progress");
            }
            AbstractC2928Q0 abstractC2928Q0Mo886j = mo886j();
            if (abstractC2928Q0Mo886j == null) {
                return false;
            }
            abstractC2928Q0Mo886j.m1639b((short) 2129);
            return false;
        }
        if (b == 8) {
            AbstractC2814I6.m1170a((byte) 1, tag, f1274n + placementString);
            InterfaceC3147f5 interfaceC3147f53 = this.f1280f;
            if (interfaceC3147f53 != null) {
                String TAG3 = f1269i;
                Intrinsics.checkNotNullExpressionValue(TAG3, "TAG");
                ((C3162g5) interfaceC3147f53).m2151b(TAG3, "ad loading into view is in progress");
            }
            AbstractC2928Q0 abstractC2928Q0Mo886j2 = mo886j();
            if (abstractC2928Q0Mo886j2 == null) {
                return false;
            }
            abstractC2928Q0Mo886j2.m1639b((short) 2164);
            return false;
        }
        if (b == 5) {
            AbstractC2814I6.m1170a((byte) 1, tag, f1270j + placementString);
            InterfaceC3147f5 interfaceC3147f54 = this.f1280f;
            if (interfaceC3147f54 != null) {
                String TAG4 = f1269i;
                Intrinsics.checkNotNullExpressionValue(TAG4, "TAG");
                ((C3162g5) interfaceC3147f54).m2151b(TAG4, "ad active before renderAd");
            }
            AbstractC2928Q0 abstractC2928Q0Mo886j3 = mo886j();
            if (abstractC2928Q0Mo886j3 != null) {
                abstractC2928Q0Mo886j3.m1639b((short) 2130);
            }
            AbstractC2928Q0 abstractC2928Q0Mo886j4 = mo886j();
            if (abstractC2928Q0Mo886j4 != null) {
                abstractC2928Q0Mo886j4.m1689m0();
            }
            m1360b(mo886j(), new InMobiAdRequestStatus(InMobiAdRequestStatus.StatusCode.AD_ACTIVE));
            return false;
        }
        if (b == 7) {
            return true;
        }
        InterfaceC3147f5 interfaceC3147f55 = this.f1280f;
        if (interfaceC3147f55 != null) {
            String TAG5 = f1269i;
            Intrinsics.checkNotNullExpressionValue(TAG5, "TAG");
            ((C3162g5) interfaceC3147f55).m2151b(TAG5, "ad in illegal state");
        }
        AbstractC2928Q0 abstractC2928Q0Mo886j5 = mo886j();
        if (abstractC2928Q0Mo886j5 != null) {
            abstractC2928Q0Mo886j5.m1639b((short) 2165);
        }
        AbstractC2928Q0 abstractC2928Q0Mo886j6 = mo886j();
        if (abstractC2928Q0Mo886j6 != null) {
            abstractC2928Q0Mo886j6.m1689m0();
        }
        m1360b(mo886j(), new InMobiAdRequestStatus(InMobiAdRequestStatus.StatusCode.INTERNAL_ERROR));
        throw new IllegalStateException(f1273m);
    }

    /* JADX INFO: renamed from: a */
    public static final void m1337a(AbstractC2880Mc this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        InterfaceC3147f5 interfaceC3147f5 = this$0.f1280f;
        if (interfaceC3147f5 != null) {
            String TAG = f1269i;
            Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
            ((C3162g5) interfaceC3147f5).m2147a(TAG, "callback - onAdDismissed");
        }
        PublisherCallbacks publisherCallbacks = this$0.f1277c;
        if (publisherCallbacks != null) {
            publisherCallbacks.onAdDismissed();
            return;
        }
        InterfaceC3147f5 interfaceC3147f52 = this$0.f1280f;
        if (interfaceC3147f52 != null) {
            String TAG2 = f1269i;
            Intrinsics.checkNotNullExpressionValue(TAG2, "TAG");
            ((C3162g5) interfaceC3147f52).m2151b(TAG2, "callback is null");
        }
    }

    @Override // com.inmobi.media.AbstractC2748E0
    /* JADX INFO: renamed from: a */
    public void mo976a(final C3334rc c3334rc) {
        InterfaceC3147f5 interfaceC3147f5 = this.f1280f;
        if (interfaceC3147f5 != null) {
            String TAG = f1269i;
            Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
            ((C3162g5) interfaceC3147f5).m2152c(TAG, "onAdImpression " + this);
        }
        this.f1278d.post(new Runnable() { // from class: com.inmobi.media.Mc$$ExternalSyntheticLambda9
            @Override // java.lang.Runnable
            public final void run() {
                AbstractC2880Mc.m1341a(this.f$0, c3334rc);
            }
        });
    }

    /* JADX INFO: renamed from: a */
    public static final void m1341a(AbstractC2880Mc this$0, C3334rc c3334rc) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        if (this$0.f1277c == null) {
            InterfaceC3147f5 interfaceC3147f5 = this$0.f1280f;
            if (interfaceC3147f5 != null) {
                String TAG = f1269i;
                Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
                ((C3162g5) interfaceC3147f5).m2151b(TAG, "callback is null");
            }
            if (c3334rc != null) {
                c3334rc.m2384c();
                return;
            }
            return;
        }
        InterfaceC3147f5 interfaceC3147f52 = this$0.f1280f;
        if (interfaceC3147f52 != null) {
            String TAG2 = f1269i;
            Intrinsics.checkNotNullExpressionValue(TAG2, "TAG");
            ((C3162g5) interfaceC3147f52).m2147a(TAG2, "callback - onAdImpression");
        }
        PublisherCallbacks publisherCallbacks = this$0.f1277c;
        if (publisherCallbacks != null) {
            publisherCallbacks.onAdImpression(c3334rc);
        }
    }

    @Override // com.inmobi.media.AbstractC2748E0
    /* JADX INFO: renamed from: a */
    public void mo974a(final EnumC2704B1 audioStatusInternal) {
        Intrinsics.checkNotNullParameter(audioStatusInternal, "audioStatusInternal");
        this.f1278d.post(new Runnable() { // from class: com.inmobi.media.Mc$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                AbstractC2880Mc.m1340a(this.f$0, audioStatusInternal);
            }
        });
    }

    /* JADX INFO: renamed from: a */
    public static final void m1340a(AbstractC2880Mc this$0, EnumC2704B1 audioStatusInternal) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(audioStatusInternal, "$audioStatusInternal");
        InterfaceC3147f5 interfaceC3147f5 = this$0.f1280f;
        if (interfaceC3147f5 != null) {
            String str = f1269i;
            ((C3162g5) interfaceC3147f5).m2147a(str, AbstractC3208j6.m2261a(str, "TAG", "callback - onAudioStatusChanged - ").append(audioStatusInternal.f844a).toString());
        }
        PublisherCallbacks publisherCallbacks = this$0.f1277c;
        if (publisherCallbacks != null) {
            publisherCallbacks.onAudioStatusChanged(audioStatusInternal);
        }
    }

    @Override // com.inmobi.media.AbstractC2748E0
    /* JADX INFO: renamed from: a */
    public void mo977a(final String log) {
        Intrinsics.checkNotNullParameter(log, "log");
        this.f1278d.post(new Runnable() { // from class: com.inmobi.media.Mc$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                AbstractC2880Mc.m1342a(this.f$0, log);
            }
        });
    }

    /* JADX INFO: renamed from: a */
    public static final void m1342a(AbstractC2880Mc this$0, String log) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(log, "$log");
        InterfaceC3147f5 interfaceC3147f5 = this$0.f1280f;
        if (interfaceC3147f5 != null) {
            String TAG = f1269i;
            Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
            ((C3162g5) interfaceC3147f5).m2147a(TAG, "callback - onImraidLog");
        }
        PublisherCallbacks publisherCallbacks = this$0.f1277c;
        if (publisherCallbacks != null) {
            publisherCallbacks.onImraidLog(log);
        }
    }

    /* JADX INFO: renamed from: a */
    public void mo879a(short s) {
        InterfaceC3147f5 interfaceC3147f5 = this.f1280f;
        if (interfaceC3147f5 != null) {
            String TAG = f1269i;
            Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
            ((C3162g5) interfaceC3147f5).m2152c(TAG, "submitAdLoadDroppedAtSDK " + this);
        }
        AbstractC2928Q0 abstractC2928Q0Mo886j = mo886j();
        if (abstractC2928Q0Mo886j != null) {
            abstractC2928Q0Mo886j.m1620a(s);
        }
    }
}
