package com.inmobi.media;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import com.inmobi.commons.core.configs.AdConfig;
import java.util.List;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.inmobi.media.m2 */
/* JADX INFO: loaded from: classes6.dex */
public final class HandlerC3249m2 extends Handler {

    /* JADX INFO: renamed from: a */
    public InterfaceC3147f5 f2311a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public HandlerC3249m2(Looper looper) {
        super(looper);
        Intrinsics.checkNotNullParameter(looper, "looper");
    }

    /* JADX INFO: renamed from: a */
    public final void m2292a(C3189i2 click) {
        InterfaceC3147f5 interfaceC3147f5 = this.f2311a;
        if (interfaceC3147f5 != null) {
            String strM2479f = C3369u2.m2479f();
            ((C3162g5) interfaceC3147f5).m2147a(strM2479f, AbstractC3208j6.m2261a(strM2479f, "access$getTAG$p(...)", "Retry attemps exhausted for click (").append(click.f2169b).append(')').toString());
        }
        m2293b(click);
        C3369u2.f2627a.m2481a(click, "RETRY_EXHAUSTED");
        C3204j2 c3204j2M967b = AbstractC2744Db.m967b();
        c3204j2M967b.getClass();
        Intrinsics.checkNotNullParameter(click, "click");
        c3204j2M967b.m1752a("id = ?", new String[]{String.valueOf(click.f2168a)});
        C3369u2.f2631e.remove(click);
    }

    /* JADX INFO: renamed from: b */
    public final void m2293b(C3189i2 c3189i2) {
        int iIndexOf = CollectionsKt.indexOf((List<? extends C3189i2>) C3369u2.f2631e, c3189i2);
        if (-1 != iIndexOf) {
            C3189i2 c3189i22 = (C3189i2) C3369u2.f2631e.get(iIndexOf == C3369u2.f2631e.size() + (-1) ? 0 : iIndexOf + 1);
            Message messageObtain = Message.obtain();
            messageObtain.what = c3189i22.f2172e ? 3 : 2;
            messageObtain.obj = c3189i22;
            AdConfig.ImaiConfig imaiConfig = C3369u2.f2633g;
            long pingInterval = (imaiConfig != null ? imaiConfig.getPingInterval() : 0) * 1000;
            if (System.currentTimeMillis() - c3189i22.f2174g < pingInterval) {
                sendMessageDelayed(messageObtain, pingInterval);
            } else {
                sendMessage(messageObtain);
            }
        }
    }

    @Override // android.os.Handler
    public final void handleMessage(Message msg) {
        Intrinsics.checkNotNullParameter(msg, "msg");
        if (C3369u2.f2634h.get()) {
            try {
                int i = msg.what;
                int i2 = 3;
                if (i == 1) {
                    if (C3369u2.f2627a.m2487g()) {
                        AdConfig.ImaiConfig imaiConfig = C3369u2.f2633g;
                        C3204j2 c3204j2M967b = AbstractC2744Db.m967b();
                        if (imaiConfig == null) {
                            InterfaceC3147f5 interfaceC3147f5 = this.f2311a;
                            if (interfaceC3147f5 != null) {
                                String strM2479f = C3369u2.m2479f();
                                Intrinsics.checkNotNullExpressionValue(strM2479f, "access$getTAG$p(...)");
                                ((C3162g5) interfaceC3147f5).m2151b(strM2479f, "Unhandled message due to ImaiConfig Null");
                                return;
                            }
                            return;
                        }
                        C3369u2.f2631e = c3204j2M967b.m2256a(imaiConfig.getMaxEventBatch(), imaiConfig.getPingInterval());
                        if (C3369u2.f2631e.isEmpty()) {
                            if (AbstractC2942R1.m1750a((AbstractC2942R1) c3204j2M967b) == 0) {
                                C3369u2.f2632f.set(false);
                                return;
                            }
                            Message messageObtain = Message.obtain();
                            messageObtain.what = 1;
                            sendMessageDelayed(messageObtain, imaiConfig.getPingInterval() * 1000);
                            return;
                        }
                        InterfaceC3147f5 interfaceC3147f52 = this.f2311a;
                        if (interfaceC3147f52 != null) {
                            String strM2479f2 = C3369u2.m2479f();
                            Intrinsics.checkNotNullExpressionValue(strM2479f2, "access$getTAG$p(...)");
                            ((C3162g5) interfaceC3147f52).m2147a(strM2479f2, "Processing following click batch");
                        }
                        for (C3189i2 c3189i2 : C3369u2.f2631e) {
                            Intrinsics.checkNotNullExpressionValue(C3369u2.m2479f(), "access$getTAG$p(...)");
                            String str = c3189i2.f2169b;
                        }
                        C3189i2 c3189i22 = (C3189i2) C3369u2.f2631e.get(0);
                        Message messageObtain2 = Message.obtain();
                        if (!c3189i22.f2172e) {
                            i2 = 2;
                        }
                        messageObtain2.what = i2;
                        messageObtain2.obj = c3189i22;
                        long jCurrentTimeMillis = System.currentTimeMillis() - c3189i22.f2174g;
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
                    boolean z = C3301p9.f2439a;
                    if (C3301p9.m2342a(false) != null) {
                        C3369u2.f2632f.set(false);
                        C3369u2.m2464a(C3369u2.f2627a);
                        return;
                    }
                    Object obj = msg.obj;
                    AdConfig.ImaiConfig imaiConfig2 = C3369u2.f2633g;
                    if ((obj instanceof C3189i2) && imaiConfig2 != null) {
                        if (((C3189i2) obj).f2173f != 0) {
                            C3189i2 c3189i23 = (C3189i2) obj;
                            long pingCacheExpiry = imaiConfig2.getPingCacheExpiry();
                            c3189i23.getClass();
                            if (System.currentTimeMillis() - c3189i23.f2175h <= pingCacheExpiry * ((long) 1000)) {
                                int maxRetries = (imaiConfig2.getMaxRetries() - ((C3189i2) obj).f2173f) + 1;
                                if (maxRetries == 0) {
                                    InterfaceC3147f5 interfaceC3147f53 = this.f2311a;
                                    if (interfaceC3147f53 != null) {
                                        String strM2479f3 = C3369u2.m2479f();
                                        Intrinsics.checkNotNullExpressionValue(strM2479f3, "access$getTAG$p(...)");
                                        ((C3162g5) interfaceC3147f53).m2147a(strM2479f3, "Pinging click (" + ((C3189i2) obj).f2169b + ") over HTTP");
                                    }
                                } else {
                                    InterfaceC3147f5 interfaceC3147f54 = this.f2311a;
                                    if (interfaceC3147f54 != null) {
                                        String strM2479f4 = C3369u2.m2479f();
                                        Intrinsics.checkNotNullExpressionValue(strM2479f4, "access$getTAG$p(...)");
                                        ((C3162g5) interfaceC3147f54).m2147a(strM2479f4, "Retry attempt #" + maxRetries + " for click (" + ((C3189i2) obj).f2169b + ") over HTTP");
                                    }
                                }
                                new C3294p2(new C3219k2(this), this.f2311a).m2338a((C3189i2) obj);
                                return;
                            }
                        }
                        m2292a((C3189i2) obj);
                        return;
                    }
                    InterfaceC3147f5 interfaceC3147f55 = this.f2311a;
                    if (interfaceC3147f55 != null) {
                        String strM2479f5 = C3369u2.m2479f();
                        Intrinsics.checkNotNullExpressionValue(strM2479f5, "access$getTAG$p(...)");
                        ((C3162g5) interfaceC3147f55).m2151b(strM2479f5, "Unhandled message due to ImaiConfig Null");
                        return;
                    }
                    return;
                }
                if (i == 3) {
                    boolean z2 = C3301p9.f2439a;
                    if (C3301p9.m2342a(false) != null) {
                        C3369u2.f2632f.set(false);
                        C3369u2.m2464a(C3369u2.f2627a);
                        return;
                    }
                    Object obj2 = msg.obj;
                    AdConfig.ImaiConfig imaiConfig3 = C3369u2.f2633g;
                    if ((obj2 instanceof C3189i2) && imaiConfig3 != null) {
                        if (((C3189i2) obj2).f2173f != 0) {
                            C3189i2 c3189i24 = (C3189i2) obj2;
                            long pingCacheExpiry2 = imaiConfig3.getPingCacheExpiry();
                            c3189i24.getClass();
                            if (System.currentTimeMillis() - c3189i24.f2175h <= pingCacheExpiry2 * ((long) 1000)) {
                                int maxRetries2 = (imaiConfig3.getMaxRetries() - ((C3189i2) obj2).f2173f) + 1;
                                if (maxRetries2 == 0) {
                                    InterfaceC3147f5 interfaceC3147f56 = this.f2311a;
                                    if (interfaceC3147f56 != null) {
                                        String strM2479f6 = C3369u2.m2479f();
                                        Intrinsics.checkNotNullExpressionValue(strM2479f6, "access$getTAG$p(...)");
                                        ((C3162g5) interfaceC3147f56).m2147a(strM2479f6, "Pinging click (" + ((C3189i2) obj2).f2169b + ") in WebView");
                                    }
                                } else {
                                    InterfaceC3147f5 interfaceC3147f57 = this.f2311a;
                                    if (interfaceC3147f57 != null) {
                                        String strM2479f7 = C3369u2.m2479f();
                                        Intrinsics.checkNotNullExpressionValue(strM2479f7, "access$getTAG$p(...)");
                                        ((C3162g5) interfaceC3147f57).m2151b(strM2479f7, "Retry attempt #" + maxRetries2 + " for click (" + ((C3189i2) obj2).f2169b + ") using WebView");
                                    }
                                }
                                new C3279o2(new C3234l2(this), this.f2311a).m2323a((C3189i2) obj2);
                                return;
                            }
                        }
                        m2292a((C3189i2) obj2);
                        return;
                    }
                    InterfaceC3147f5 interfaceC3147f58 = this.f2311a;
                    if (interfaceC3147f58 != null) {
                        String strM2479f8 = C3369u2.m2479f();
                        Intrinsics.checkNotNullExpressionValue(strM2479f8, "access$getTAG$p(...)");
                        ((C3162g5) interfaceC3147f58).m2151b(strM2479f8, "Unhandled message due to ImaiConfig Null");
                        return;
                    }
                    return;
                }
                if (i != 4) {
                    InterfaceC3147f5 interfaceC3147f59 = this.f2311a;
                    if (interfaceC3147f59 != null) {
                        String strM2479f9 = C3369u2.m2479f();
                        Intrinsics.checkNotNullExpressionValue(strM2479f9, "access$getTAG$p(...)");
                        ((C3162g5) interfaceC3147f59).m2151b(strM2479f9, "Unhandled message ( " + msg.what + " ) in pingHandler");
                        return;
                    }
                    return;
                }
                Object obj3 = msg.obj;
                Intrinsics.checkNotNull(obj3, "null cannot be cast to non-null type com.inmobi.ads.core.Click");
                C3189i2 click = (C3189i2) obj3;
                InterfaceC3147f5 interfaceC3147f510 = this.f2311a;
                if (interfaceC3147f510 != null) {
                    String strM2479f10 = C3369u2.m2479f();
                    Intrinsics.checkNotNullExpressionValue(strM2479f10, "access$getTAG$p(...)");
                    ((C3162g5) interfaceC3147f510).m2147a(strM2479f10, "Processing click (" + click.f2169b + ") completed");
                }
                C3369u2.m2471b(C3369u2.f2627a, click);
                C3204j2 c3204j2M967b2 = AbstractC2744Db.m967b();
                c3204j2M967b2.getClass();
                Intrinsics.checkNotNullParameter(click, "click");
                c3204j2M967b2.m1752a("id = ?", new String[]{String.valueOf(click.f2168a)});
                C3369u2.f2631e.remove(click);
                if (!C3369u2.f2631e.isEmpty()) {
                    C3189i2 c3189i25 = (C3189i2) C3369u2.f2631e.get(0);
                    Message messageObtain3 = Message.obtain();
                    if (c3189i25 == null || !c3189i25.f2172e) {
                        i2 = 2;
                    }
                    messageObtain3.what = i2;
                    messageObtain3.obj = c3189i25;
                    sendMessage(messageObtain3);
                    return;
                }
                C3204j2 c3204j2M967b3 = AbstractC2744Db.m967b();
                c3204j2M967b3.getClass();
                if (AbstractC2942R1.m1750a((AbstractC2942R1) c3204j2M967b3) != 0) {
                    Message messageObtain4 = Message.obtain();
                    messageObtain4.what = 1;
                    sendMessage(messageObtain4);
                } else {
                    InterfaceC3147f5 interfaceC3147f511 = this.f2311a;
                    if (interfaceC3147f511 != null) {
                        String strM2479f11 = C3369u2.m2479f();
                        Intrinsics.checkNotNullExpressionValue(strM2479f11, "access$getTAG$p(...)");
                        ((C3162g5) interfaceC3147f511).m2147a(strM2479f11, "Done processing all clicks!");
                    }
                    C3369u2.f2632f.set(false);
                }
            } catch (Exception e) {
                InterfaceC3147f5 interfaceC3147f512 = this.f2311a;
                if (interfaceC3147f512 != null) {
                    String strM2479f12 = C3369u2.m2479f();
                    ((C3162g5) interfaceC3147f512).m2151b(strM2479f12, AbstractC2761Ed.m1111a(e, AbstractC3208j6.m2261a(strM2479f12, "access$getTAG$p(...)", "SDK encountered unexpected error in processing ping; ")));
                }
            }
        }
    }
}
