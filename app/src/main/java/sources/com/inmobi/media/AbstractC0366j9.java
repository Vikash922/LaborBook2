package com.inmobi.media;

import com.google.common.net.HttpHeaders;
import java.io.UnsupportedEncodingException;
import java.util.HashMap;
import java.util.Map;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.Charsets;
import kotlin.text.StringsKt;

/* JADX INFO: renamed from: com.inmobi.media.j9, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes6.dex */
public abstract class AbstractC0366j9 {
    public static final boolean a(C0414mb c0414mb) {
        String str;
        Intrinsics.checkNotNullParameter(c0414mb, "<this>");
        HashMap map = c0414mb.c;
        return (map == null || (str = (String) map.get(HttpHeaders.CONTENT_ENCODING)) == null || !StringsKt.contains$default((CharSequence) str, (CharSequence) "gzip", false, 2, (Object) null)) ? false : true;
    }

    public static final String a(String url, HashMap map) {
        Intrinsics.checkNotNullParameter(url, "url");
        if (map == null) {
            return url;
        }
        boolean z = C0457p9.f457a;
        C0457p9.a(map);
        String strA = C0457p9.a("&", (Map) map);
        StringBuilder sb = new StringBuilder(url);
        int length = strA.length() - 1;
        int i = 0;
        boolean z2 = false;
        while (i <= length) {
            boolean z3 = Intrinsics.compare((int) strA.charAt(!z2 ? i : length), 32) <= 0;
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
        if (strA.subSequence(i, length + 1).toString().length() > 0) {
            if (!StringsKt.contains$default((CharSequence) url, (CharSequence) "?", false, 2, (Object) null)) {
                sb.append("?");
            }
            if (!StringsKt.endsWith$default(url, "&", false, 2, (Object) null) && !StringsKt.endsWith$default(url, "?", false, 2, (Object) null)) {
                sb.append("&");
            }
            sb.append(strA);
        }
        String string = sb.toString();
        Intrinsics.checkNotNullExpressionValue(string, "toString(...)");
        return string;
    }

    public static final String a(byte[] bArr) {
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
