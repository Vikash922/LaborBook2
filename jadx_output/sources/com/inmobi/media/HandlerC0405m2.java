package com.inmobi.media;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import com.inmobi.commons.core.configs.AdConfig;
import java.util.List;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.inmobi.media.m2, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes6.dex */
public final class HandlerC0405m2 extends Handler {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public InterfaceC0298f5 f419a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public HandlerC0405m2(Looper looper) {
        super(looper);
        Intrinsics.checkNotNullParameter(looper, "looper");
    }

    public final void a(C0343i2 click) {
        InterfaceC0298f5 interfaceC0298f5 = this.f419a;
        if (interfaceC0298f5 != null) {
            String strF = C0520u2.f();
            ((C0314g5) interfaceC0298f5).a(strF, AbstractC0363j6.a(strF, "access$getTAG$p(...)", "Retry attemps exhausted for click (").append(click.b).append(')').toString());
        }
        b(click);
        C0520u2.f496a.a(click, "RETRY_EXHAUSTED");
        C0359j2 c0359j2B = Db.b();
        c0359j2B.getClass();
        Intrinsics.checkNotNullParameter(click, "click");
        c0359j2B.a("id = ?", new String[]{String.valueOf(click.f382a)});
        C0520u2.e.remove(click);
    }

    public final void b(C0343i2 c0343i2) {
        int iIndexOf = CollectionsKt.indexOf((List<? extends C0343i2>) C0520u2.e, c0343i2);
        if (-1 != iIndexOf) {
            C0343i2 c0343i22 = (C0343i2) C0520u2.e.get(iIndexOf == C0520u2.e.size() + (-1) ? 0 : iIndexOf + 1);
            Message messageObtain = Message.obtain();
            messageObtain.what = c0343i22.e ? 3 : 2;
            messageObtain.obj = c0343i22;
            AdConfig.ImaiConfig imaiConfig = C0520u2.g;
            long pingInterval = (imaiConfig != null ? imaiConfig.getPingInterval() : 0) * 1000;
            if (System.currentTimeMillis() - c0343i22.g < pingInterval) {
                sendMessageDelayed(messageObtain, pingInterval);
            } else {
                sendMessage(messageObtain);
            }
        }
    }

    @Override // android.os.Handler
    public final void handleMessage(Message msg) {
        Intrinsics.checkNotNullParameter(msg, "msg");
        if (C0520u2.h.get()) {
            try {
                int i = msg.what;
                int i2 = 3;
                if (i == 1) {
                    if (C0520u2.f496a.g()) {
                        AdConfig.ImaiConfig imaiConfig = C0520u2.g;
                        C0359j2 c0359j2B = Db.b();
                        if (imaiConfig == null) {
                            InterfaceC0298f5 interfaceC0298f5 = this.f419a;
                            if (interfaceC0298f5 != null) {
                                String strF = C0520u2.f();
                                Intrinsics.checkNotNullExpressionValue(strF, "access$getTAG$p(...)");
                                ((C0314g5) interfaceC0298f5).b(strF, "Unhandled message due to ImaiConfig Null");
                                return;
                            }
                            return;
                        }
                        C0520u2.e = c0359j2B.a(imaiConfig.getMaxEventBatch(), imaiConfig.getPingInterval());
                        if (C0520u2.e.isEmpty()) {
                            if (R1.a((R1) c0359j2B) == 0) {
                                C0520u2.f.set(false);
                                return;
                            }
                            Message messageObtain = Message.obtain();
                            messageObtain.what = 1;
                            sendMessageDelayed(messageObtain, imaiConfig.getPingInterval() * 1000);
                            return;
                        }
                        InterfaceC0298f5 interfaceC0298f52 = this.f419a;
                        if (interfaceC0298f52 != null) {
                            String strF2 = C0520u2.f();
                            Intrinsics.checkNotNullExpressionValue(strF2, "access$getTAG$p(...)");
                            ((C0314g5) interfaceC0298f52).a(strF2, "Processing following click batch");
                        }
                        for (C0343i2 c0343i2 : C0520u2.e) {
                            Intrinsics.checkNotNullExpressionValue(C0520u2.f(), "access$getTAG$p(...)");
                            String str = c0343i2.b;
                        }
                        C0343i2 c0343i22 = (C0343i2) C0520u2.e.get(0);
                        Message messageObtain2 = Message.obtain();
                        if (!c0343i22.e) {
                            i2 = 2;
                        }
                        messageObtain2.what = i2;
                        messageObtain2.obj = c0343i22;
                        long jCurrentTimeMillis = System.currentTimeMillis() - c0343i22.g;
                        if (jCurrentTimeMillis < imaiConfig.getPingInterval() * 1000) {
                            sendMessageDelayed(messageObtain2, ((long) (imaiConfig.getPingInterval() * 1000)) - jCurrentTimeMillis);
                            return;
                        } else {
                            sendMessage(messageObtain2);
                            return;
                        }
                    }
                    return;
                }
                if (i == 2) {
                    boolean z = C0457p9.f457a;
                    if (C0457p9.a(false) != null) {
                        C0520u2.f.set(false);
                        C0520u2.a(C0520u2.f496a);
                        return;
                    }
                    Object obj = msg.obj;
                    AdConfig.ImaiConfig imaiConfig2 = C0520u2.g;
                    if ((obj instanceof C0343i2) && imaiConfig2 != null) {
                        if (((C0343i2) obj).f != 0) {
                            C0343i2 c0343i23 = (C0343i2) obj;
                            long pingCacheExpiry = imaiConfig2.getPingCacheExpiry();
                            c0343i23.getClass();
                            if (System.currentTimeMillis() - c0343i23.h <= pingCacheExpiry * ((long) 1000)) {
                                int maxRetries = (imaiConfig2.getMaxRetries() - ((C0343i2) obj).f) + 1;
                                if (maxRetries == 0) {
                                    InterfaceC0298f5 interfaceC0298f53 = this.f419a;
                                    if (interfaceC0298f53 != null) {
                                        String strF3 = C0520u2.f();
                                        Intrinsics.checkNotNullExpressionValue(strF3, "access$getTAG$p(...)");
                                        ((C0314g5) interfaceC0298f53).a(strF3, "Pinging click (" + ((C0343i2) obj).b + ") over HTTP");
                                    }
                                } else {
                                    InterfaceC0298f5 interfaceC0298f54 = this.f419a;
                                    if (interfaceC0298f54 != null) {
                                        String strF4 = C0520u2.f();
                                        Intrinsics.checkNotNullExpressionValue(strF4, "access$getTAG$p(...)");
                                        ((C0314g5) interfaceC0298f54).a(strF4, "Retry attempt #" + maxRetries + " for click (" + ((C0343i2) obj).b + ") over HTTP");
                                    }
                                }
                                new C0450p2(new C0374k2(this), this.f419a).a((C0343i2) obj);
                                return;
                            }
                        }
                        a((C0343i2) obj);
                        return;
                    }
                    InterfaceC0298f5 interfaceC0298f55 = this.f419a;
                    if (interfaceC0298f55 != null) {
                        String strF5 = C0520u2.f();
                        Intrinsics.checkNotNullExpressionValue(strF5, "access$getTAG$p(...)");
                        ((C0314g5) interfaceC0298f55).b(strF5, "Unhandled message due to ImaiConfig Null");
                        return;
                    }
                    return;
                }
                if (i == 3) {
                    boolean z2 = C0457p9.f457a;
                    if (C0457p9.a(false) != null) {
                        C0520u2.f.set(false);
                        C0520u2.a(C0520u2.f496a);
                        return;
                    }
                    Object obj2 = msg.obj;
                    AdConfig.ImaiConfig imaiConfig3 = C0520u2.g;
                    if ((obj2 instanceof C0343i2) && imaiConfig3 != null) {
                        if (((C0343i2) obj2).f != 0) {
                            C0343i2 c0343i24 = (C0343i2) obj2;
                            long pingCacheExpiry2 = imaiConfig3.getPingCacheExpiry();
                            c0343i24.getClass();
                            if (System.currentTimeMillis() - c0343i24.h <= pingCacheExpiry2 * ((long) 1000)) {
                                int maxRetries2 = (imaiConfig3.getMaxRetries() - ((C0343i2) obj2).f) + 1;
                                if (maxRetries2 == 0) {
                                    InterfaceC0298f5 interfaceC0298f56 = this.f419a;
                                    if (interfaceC0298f56 != null) {
                                        String strF6 = C0520u2.f();
                                        Intrinsics.checkNotNullExpressionValue(strF6, "access$getTAG$p(...)");
                                        ((C0314g5) interfaceC0298f56).a(strF6, "Pinging click (" + ((C0343i2) obj2).b + ") in WebView");
                                    }
                                } else {
                                    InterfaceC0298f5 interfaceC0298f57 = this.f419a;
                                    if (interfaceC0298f57 != null) {
                                        String strF7 = C0520u2.f();
                                        Intrinsics.checkNotNullExpressionValue(strF7, "access$getTAG$p(...)");
                                        ((C0314g5) interfaceC0298f57).b(strF7, "Retry attempt #" + maxRetries2 + " for click (" + ((C0343i2) obj2).b + ") using WebView");
                                    }
                                }
                                new C0435o2(new C0389l2(this), this.f419a).a((C0343i2) obj2);
                                return;
                            }
                        }
                        a((C0343i2) obj2);
                        return;
                    }
                    InterfaceC0298f5 interfaceC0298f58 = this.f419a;
                    if (interfaceC0298f58 != null) {
                        String strF8 = C0520u2.f();
                        Intrinsics.checkNotNullExpressionValue(strF8, "access$getTAG$p(...)");
                        ((C0314g5) interfaceC0298f58).b(strF8, "Unhandled message due to ImaiConfig Null");
                        return;
                    }
                    return;
                }
                if (i != 4) {
                    InterfaceC0298f5 interfaceC0298f59 = this.f419a;
                    if (interfaceC0298f59 != null) {
                        String strF9 = C0520u2.f();
                        Intrinsics.checkNotNullExpressionValue(strF9, "access$getTAG$p(...)");
                        ((C0314g5) interfaceC0298f59).b(strF9, "Unhandled message ( " + msg.what + " ) in pingHandler");
                        return;
                    }
                    return;
                }
                Object obj3 = msg.obj;
                Intrinsics.checkNotNull(obj3, "null cannot be cast to non-null type com.inmobi.ads.core.Click");
                C0343i2 click = (C0343i2) obj3;
                InterfaceC0298f5 interfaceC0298f510 = this.f419a;
                if (interfaceC0298f510 != null) {
                    String strF10 = C0520u2.f();
                    Intrinsics.checkNotNullExpressionValue(strF10, "access$getTAG$p(...)");
                    ((C0314g5) interfaceC0298f510).a(strF10, "Processing click (" + click.b + ") completed");
                }
                C0520u2.b(C0520u2.f496a, click);
                C0359j2 c0359j2B2 = Db.b();
                c0359j2B2.getClass();
                Intrinsics.checkNotNullParameter(click, "click");
                c0359j2B2.a("id = ?", new String[]{String.valueOf(click.f382a)});
                C0520u2.e.remove(click);
                if (!C0520u2.e.isEmpty()) {
                    C0343i2 c0343i25 = (C0343i2) C0520u2.e.get(0);
                    Message messageObtain3 = Message.obtain();
                    if (c0343i25 == null || !c0343i25.e) {
                        i2 = 2;
                    }
                    messageObtain3.what = i2;
                    messageObtain3.obj = c0343i25;
                    sendMessage(messageObtain3);
                    return;
                }
                C0359j2 c0359j2B3 = Db.b();
                c0359j2B3.getClass();
                if (R1.a((R1) c0359j2B3) != 0) {
                    Message messageObtain4 = Message.obtain();
                    messageObtain4.what = 1;
                    sendMessage(messageObtain4);
                } else {
                    InterfaceC0298f5 interfaceC0298f511 = this.f419a;
                    if (interfaceC0298f511 != null) {
                        String strF11 = C0520u2.f();
                        Intrinsics.checkNotNullExpressionValue(strF11, "access$getTAG$p(...)");
                        ((C0314g5) interfaceC0298f511).a(strF11, "Done processing all clicks!");
                    }
                    C0520u2.f.set(false);
                }
            } catch (Exception e) {
                InterfaceC0298f5 interfaceC0298f512 = this.f419a;
                if (interfaceC0298f512 != null) {
                    String strF12 = C0520u2.f();
                    ((C0314g5) interfaceC0298f512).b(strF12, Ed.a(e, AbstractC0363j6.a(strF12, "access$getTAG$p(...)", "SDK encountered unexpected error in processing ping; ")));
                }
            }
        }
    }
}
