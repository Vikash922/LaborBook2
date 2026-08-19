package com.inmobi.media;

import android.webkit.WebResourceResponse;
import java.net.URLDecoder;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;

/* JADX INFO: renamed from: com.inmobi.media.Dd */
/* JADX INFO: loaded from: classes6.dex */
public abstract class AbstractC2746Dd {
    /* JADX INFO: renamed from: a */
    public static WebResourceResponse m971a(String urlRaw, InterfaceC3147f5 interfaceC3147f5) {
        String url;
        Intrinsics.checkNotNullParameter(urlRaw, "urlRaw");
        if (interfaceC3147f5 != null) {
            ((C3162g5) interfaceC3147f5).m2152c("IMResourceCacheManager", AbstractC3157g0.m2142a("shouldInterceptRequest ", urlRaw));
        }
        try {
            url = URLDecoder.decode(StringsKt.trim((CharSequence) urlRaw).toString(), "UTF-8");
        } catch (Exception unused) {
            url = null;
        }
        if (url == null) {
            return null;
        }
        Intrinsics.checkNotNullParameter(url, "url");
        if (StringsKt.contains$default((CharSequence) url, (CharSequence) "inmobicache=true", false, 2, (Object) null)) {
            return C2776Fd.f1039a.m1131a(url, interfaceC3147f5);
        }
        if (interfaceC3147f5 != null) {
            ((C3162g5) interfaceC3147f5).m2147a("IMResourceCacheManager", "Cache is not enabled for URL: ".concat(url));
        }
        return null;
    }
}
