package com.inmobi.media;

import com.google.common.net.HttpHeaders;
import java.io.UnsupportedEncodingException;
import java.util.HashMap;
import java.util.Map;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.Charsets;
import kotlin.text.StringsKt;

/* JADX INFO: renamed from: com.inmobi.media.j9 */
/* JADX INFO: loaded from: classes6.dex */
public abstract class AbstractC3211j9 {
    /* JADX INFO: renamed from: a */
    public static final boolean m2264a(C3258mb c3258mb) {
        String str;
        Intrinsics.checkNotNullParameter(c3258mb, "<this>");
        HashMap map = c3258mb.f2338c;
        return (map == null || (str = (String) map.get(HttpHeaders.CONTENT_ENCODING)) == null || !StringsKt.contains$default((CharSequence) str, (CharSequence) "gzip", false, 2, (Object) null)) ? false : true;
    }

    /* JADX INFO: renamed from: a */
    public static final String m2262a(String url, HashMap map) {
        Intrinsics.checkNotNullParameter(url, "url");
        if (map == null) {
            return url;
        }
        boolean z = C3301p9.f2439a;
        C3301p9.m2348a(map);
        String strM2344a = C3301p9.m2344a("&", (Map) map);
        StringBuilder sb = new StringBuilder(url);
        int length = strM2344a.length() - 1;
        int i = 0;
        boolean z2 = false;
        while (i <= length) {
            boolean z3 = Intrinsics.compare((int) strM2344a.charAt(!z2 ? i : length), 32) <= 0;
            if (z2) {
                if (!z3) {
                    break;
                }
                length--;
            } else if (z3) {
                i++;
            } else {
                z2 = true;
            }
        }
        if (strM2344a.subSequence(i, length + 1).toString().length() > 0) {
            if (!StringsKt.contains$default((CharSequence) url, (CharSequence) "?", false, 2, (Object) null)) {
                sb.append("?");
            }
            if (!StringsKt.endsWith$default(url, "&", false, 2, (Object) null) && !StringsKt.endsWith$default(url, "?", false, 2, (Object) null)) {
                sb.append("&");
            }
            sb.append(strM2344a);
        }
        String string = sb.toString();
        Intrinsics.checkNotNullExpressionValue(string, "toString(...)");
        return string;
    }

    /* JADX INFO: renamed from: a */
    public static final String m2263a(byte[] bArr) {
        if (bArr == null || bArr.length == 0) {
            return "";
        }
        try {
            return new String(bArr, Charsets.UTF_8);
        } catch (UnsupportedEncodingException | Exception unused) {
            return "";
        }
    }
}
