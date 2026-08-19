package com.inmobi.media;

import android.webkit.WebResourceResponse;
import java.net.URLDecoder;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes6.dex */
public abstract class Dd {
    public static WebResourceResponse a(String urlRaw, InterfaceC0298f5 interfaceC0298f5) {
        String url;
        Intrinsics.checkNotNullParameter(urlRaw, "urlRaw");
        if (interfaceC0298f5 != null) {
            ((C0314g5) interfaceC0298f5).c("IMResourceCacheManager", AbstractC0309g0.a("shouldInterceptRequest ", urlRaw));
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
            return Fd.f118a.a(url, interfaceC0298f5);
        }
        if (interfaceC0298f5 != null) {
            ((C0314g5) interfaceC0298f5).a("IMResourceCacheManager", "Cache is not enabled for URL: ".concat(url));
        }
        return null;
    }
}
