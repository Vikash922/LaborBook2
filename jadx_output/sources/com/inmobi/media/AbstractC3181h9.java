package com.inmobi.media;

import com.google.common.net.HttpHeaders;
import com.google.firebase.perf.network.FirebasePerfUrlConnection;
import java.io.BufferedOutputStream;
import java.io.Closeable;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.ProtocolException;
import java.net.URL;
import java.net.URLConnection;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.zip.GZIPOutputStream;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.Charsets;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: renamed from: com.inmobi.media.h9 */
/* JADX INFO: loaded from: classes6.dex */
public abstract class AbstractC3181h9 {

    /* JADX INFO: renamed from: a */
    public static final /* synthetic */ int f2149a = 0;

    static {
        Intrinsics.checkNotNullExpressionValue("h9", "getSimpleName(...)");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:81:0x0193  */
    /* JADX WARN: Type inference failed for: r5v0 */
    /* JADX WARN: Type inference failed for: r5v1 */
    /* JADX WARN: Type inference failed for: r5v2, types: [java.net.HttpURLConnection] */
    /* JADX INFO: renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static com.inmobi.media.C3318qb m2218a(com.inmobi.media.C3258mb r10, kotlin.jvm.functions.Function2 r11) {
        /*
            Method dump skipped, instruction units count: 461
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.inmobi.media.AbstractC3181h9.m2218a(com.inmobi.media.mb, kotlin.jvm.functions.Function2):com.inmobi.media.qb");
    }

    /* JADX INFO: renamed from: a */
    public static HttpURLConnection m2219a(C3258mb c3258mb, String str) throws ProtocolException {
        URLConnection uRLConnection = (URLConnection) FirebasePerfUrlConnection.instrument(new URL(str).openConnection());
        Intrinsics.checkNotNull(uRLConnection, "null cannot be cast to non-null type java.net.HttpURLConnection");
        HttpURLConnection httpURLConnection = (HttpURLConnection) uRLConnection;
        httpURLConnection.setConnectTimeout(c3258mb.f2344i);
        httpURLConnection.setReadTimeout(c3258mb.f2345j);
        httpURLConnection.setUseCaches(false);
        HashMap map = c3258mb.f2338c;
        if (map != null) {
            for (Map.Entry entry : map.entrySet()) {
                httpURLConnection.setRequestProperty((String) entry.getKey(), (String) entry.getValue());
            }
        }
        httpURLConnection.setRequestMethod(c3258mb.f2337b.name());
        if (EnumC3213jb.f2228a != c3258mb.f2337b) {
            httpURLConnection.setDoOutput(true);
            httpURLConnection.setDoInput(true);
        }
        return httpURLConnection;
    }

    /* JADX INFO: renamed from: a */
    public static void m2221a(String str, HttpURLConnection httpURLConnection, boolean z) {
        OutputStream bufferedOutputStream;
        OutputStream outputStream = null;
        try {
            if (z) {
                bufferedOutputStream = new GZIPOutputStream(httpURLConnection.getOutputStream(), 4096);
            } else {
                bufferedOutputStream = new BufferedOutputStream(httpURLConnection.getOutputStream());
            }
            outputStream = bufferedOutputStream;
            byte[] bytes = str.getBytes(Charsets.UTF_8);
            Intrinsics.checkNotNullExpressionValue(bytes, "this as java.lang.String).getBytes(charset)");
            outputStream.write(bytes);
            outputStream.flush();
        } finally {
            C3301p9.m2346a(outputStream);
        }
    }

    /* JADX INFO: renamed from: a */
    public static C3318qb m2217a(C3258mb c3258mb, HttpURLConnection httpURLConnection) throws IOException {
        EnumC3101c4 enumC3101c4;
        JSONObject jSONObject;
        C3318qb c3318qb = new C3318qb();
        int responseCode = httpURLConnection.getResponseCode();
        c3318qb.f2467d = Integer.valueOf(responseCode);
        c3318qb.f2465b = httpURLConnection.getHeaderFields();
        c3318qb.f2468e = httpURLConnection.getContentLength();
        if (c3258mb.f2346k) {
            return c3318qb;
        }
        if (responseCode == 200) {
            InputStream inputStream = httpURLConnection.getInputStream();
            Intrinsics.checkNotNullExpressionValue(inputStream, "getInputStream(...)");
            m2220a(c3318qb, inputStream);
        } else {
            EnumC3101c4.f1919b.getClass();
            if (400 <= responseCode && 500 > responseCode) {
                enumC3101c4 = EnumC3101c4.f1926i;
            } else if (200 < responseCode && 300 > responseCode) {
                enumC3101c4 = EnumC3101c4.f1928k;
            } else {
                enumC3101c4 = (EnumC3101c4) EnumC3101c4.f1920c.get(responseCode);
                if (enumC3101c4 == null) {
                    enumC3101c4 = EnumC3101c4.f1922e;
                }
            }
            if (enumC3101c4 == EnumC3101c4.f1926i) {
                InputStream errorStream = httpURLConnection.getErrorStream();
                Intrinsics.checkNotNullExpressionValue(errorStream, "getErrorStream(...)");
                m2220a(c3318qb, errorStream);
                try {
                    jSONObject = new JSONObject(AbstractC3211j9.m2263a(c3318qb.f2466c));
                } catch (JSONException unused) {
                }
                String string = jSONObject.has("errorMessage") ? jSONObject.getString("errorMessage") : null;
                c3318qb.f2464a = new C3196i9(enumC3101c4, string);
            } else {
                c3318qb.f2464a = new C3196i9(enumC3101c4, "HTTP:" + responseCode);
            }
        }
        return c3318qb;
    }

    /* JADX INFO: renamed from: a */
    public static void m2220a(C3318qb c3318qb, InputStream inputStream) {
        boolean z = C3301p9.f2439a;
        byte[] bArrM2349a = C3301p9.m2349a(inputStream);
        C3301p9.m2346a((Closeable) inputStream);
        if (bArrM2349a != null) {
            if (!(bArrM2349a.length == 0)) {
                Intrinsics.checkNotNullParameter(c3318qb, "<this>");
                Map map = c3318qb.f2465b;
                List list = map != null ? (List) map.get(HttpHeaders.CONTENT_ENCODING) : null;
                if (Intrinsics.areEqual(list != null ? (String) list.get(0) : null, "gzip") && (bArrM2349a = C3301p9.m2350a(bArrM2349a)) == null) {
                    c3318qb.f2464a = new C3196i9(EnumC3101c4.f1925h, "Failed to uncompress gzip response");
                }
                if (bArrM2349a != null) {
                    c3318qb.f2466c = bArrM2349a;
                }
            }
        }
    }
}
