package com.inmobi.media;

import com.inmobi.commons.core.configs.AdConfig;
import java.util.HashMap;
import java.util.Map;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.inmobi.media.p2 */
/* JADX INFO: loaded from: classes6.dex */
public final class C3294p2 {

    /* JADX INFO: renamed from: a */
    public final InterfaceC3309q2 f2427a;

    /* JADX INFO: renamed from: b */
    public final InterfaceC3147f5 f2428b;

    public C3294p2(InterfaceC3309q2 mEventHandler, InterfaceC3147f5 interfaceC3147f5) {
        Intrinsics.checkNotNullParameter(mEventHandler, "mEventHandler");
        this.f2427a = mEventHandler;
        this.f2428b = interfaceC3147f5;
    }

    /* JADX INFO: renamed from: a */
    public final void m2338a(C3189i2 click) {
        HashMap map;
        Intrinsics.checkNotNullParameter(click, "click");
        try {
            InterfaceC3147f5 interfaceC3147f5 = this.f2428b;
            if (interfaceC3147f5 != null) {
                String strM2479f = C3369u2.m2479f();
                Intrinsics.checkNotNullExpressionValue(strM2479f, "access$getTAG$p(...)");
                ((C3162g5) interfaceC3147f5).m2152c(strM2479f, "ping - " + click.f2168a);
            }
            C3241l9 mRequest = new C3241l9(click.f2169b, this.f2428b);
            HashMap mapM2460a = C3369u2.m2460a(C3369u2.f2627a, click);
            if (!mapM2460a.isEmpty()) {
                mRequest.f2282i.putAll(mapM2460a);
            }
            mRequest.f2297x = false;
            mRequest.f2293t = false;
            mRequest.f2294u = false;
            Map map2 = click.f2170c;
            if (map2 != null && (map = mRequest.f2283j) != null) {
                map.putAll(map2);
            }
            mRequest.f2291r = click.f2171d;
            AdConfig.ImaiConfig imaiConfig = C3369u2.f2633g;
            if (imaiConfig != null) {
                mRequest.f2289p = imaiConfig.getPingTimeout() * 1000;
                mRequest.f2290q = imaiConfig.getPingTimeout() * 1000;
            }
            Intrinsics.checkNotNullParameter(mRequest, "mRequest");
            C3256m9 c3256m9M2287b = mRequest.m2287b();
            if (!c3256m9M2287b.m2297b()) {
                this.f2427a.mo2274a(click);
                return;
            }
            C3196i9 c3196i9 = c3256m9M2287b.f2333c;
            EnumC3101c4 enumC3101c4 = c3196i9 != null ? c3196i9.f2180a : EnumC3101c4.f1922e;
            if (EnumC3101c4.f1928k == enumC3101c4) {
                this.f2427a.mo2274a(click);
                return;
            }
            if (!click.f2171d && (EnumC3101c4.f1938u == enumC3101c4 || EnumC3101c4.f1940w == enumC3101c4)) {
                this.f2427a.mo2274a(click);
                return;
            }
            boolean z = C3301p9.f2439a;
            if (!C3301p9.f2439a || (enumC3101c4 != EnumC3101c4.f1934q && enumC3101c4 != EnumC3101c4.f1933p && enumC3101c4 != EnumC3101c4.f1932o && enumC3101c4 != EnumC3101c4.f1931n && enumC3101c4 != EnumC3101c4.f1935r)) {
                this.f2427a.mo2275a(click, enumC3101c4);
            }
        } catch (Exception unused) {
            Intrinsics.checkNotNullExpressionValue(C3369u2.m2479f(), "access$getTAG$p(...)");
            InterfaceC3309q2 interfaceC3309q2 = this.f2427a;
            EnumC3101c4 errorCode = EnumC3101c4.f1922e;
            Intrinsics.checkNotNullParameter(errorCode, "errorCode");
            interfaceC3309q2.mo2275a(click, errorCode);
        }
    }
}
