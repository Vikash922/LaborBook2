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

/* JADX INFO: renamed from: com.inmobi.media.h9, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes6.dex */
public abstract class AbstractC0335h9 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ int f374a = 0;

    static {
        Intrinsics.checkNotNullExpressionValue("h9", "getSimpleName(...)");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:81:0x0193  */
    /* JADX WARN: Type inference failed for: r5v0 */
    /* JADX WARN: Type inference failed for: r5v1 */
    /* JADX WARN: Type inference failed for: r5v2, types: [java.net.HttpURLConnection] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static com.inmobi.media.C0474qb a(com.inmobi.media.C0414mb r10, kotlin.jvm.functions.Function2 r11) {
        /*
            Method dump skipped, instruction units count: 461
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.inmobi.media.AbstractC0335h9.a(com.inmobi.media.mb, kotlin.jvm.functions.Function2):com.inmobi.media.qb");
    }

    public static HttpURLConnection a(C0414mb c0414mb, String str) throws ProtocolException {
        URLConnection uRLConnection = (URLConnection) FirebasePerfUrlConnection.instrument(new URL(str).openConnection());
        Intrinsics.checkNotNull(uRLConnection, "null cannot be cast to non-null type java.net.HttpURLConnection");
        HttpURLConnection httpURLConnection = (HttpURLConnection) uRLConnection;
        httpURLConnection.setConnectTimeout(c0414mb.i);
        httpURLConnection.setReadTimeout(c0414mb.j);
        httpURLConnection.setUseCaches(false);
        HashMap map = c0414mb.c;
        if (map != null) {
            for (Map.Entry entry : map.entrySet()) {
                httpURLConnection.setRequestProperty((String) entry.getKey(), (String) entry.getValue());
            }
        }
        httpURLConnection.setRequestMethod(c0414mb.b.name());
        if (EnumC0368jb.f396a != c0414mb.b) {
            httpURLConnection.setDoOutput(true);
            httpURLConnection.setDoInput(true);
        }
        return httpURLConnection;
    }

    public static void a(String str, HttpURLConnection httpURLConnection, boolean z) {
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
            C0457p9.a(outputStream);
        }
    }

    public static C0474qb a(C0414mb c0414mb, HttpURLConnection httpURLConnection) throws IOException {
        EnumC0250c4 enumC0250c4;
        JSONObject jSONObject;
        C0474qb c0474qb = new C0474qb();
        int responseCode = httpURLConnection.getResponseCode();
        c0474qb.d = Integer.valueOf(responseCode);
        c0474qb.b = httpURLConnection.getHeaderFields();
        c0474qb.e = httpURLConnection.getContentLength();
        if (c0414mb.k) {
            return c0474qb;
        }
        if (responseCode == 200) {
            InputStream inputStream = httpURLConnection.getInputStream();
            Intrinsics.checkNotNullExpressionValue(inputStream, "getInputStream(...)");
            a(c0474qb, inputStream);
        } else {
            EnumC0250c4.b.getClass();
            if (400 <= responseCode && 500 > responseCode) {
                enumC0250c4 = EnumC0250c4.i;
            } else if (200 < responseCode && 300 > responseCode) {
                enumC0250c4 = EnumC0250c4.k;
            } else {
                enumC0250c4 = (EnumC0250c4) EnumC0250c4.c.get(responseCode);
                if (enumC0250c4 == null) {
                    enumC0250c4 = EnumC0250c4.e;
                }
            }
            if (enumC0250c4 == EnumC0250c4.i) {
                InputStream errorStream = httpURLConnection.getErrorStream();
                Intrinsics.checkNotNullExpressionValue(errorStream, "getErrorStream(...)");
                a(c0474qb, errorStream);
                try {
                    jSONObject = new JSONObject(AbstractC0366j9.a(c0474qb.c));
                } catch (JSONException unused) {
                }
                String string = jSONObject.has("errorMessage") ? jSONObject.getString("errorMessage") : null;
                c0474qb.f463a = new C0350i9(enumC0250c4, string);
            } else {
                c0474qb.f463a = new C0350i9(enumC0250c4, "HTTP:" + responseCode);
            }
        }
        return c0474qb;
    }

    public static void a(C0474qb c0474qb, InputStream inputStream) {
        boolean z = C0457p9.f457a;
        byte[] bArrA = C0457p9.a(inputStream);
        C0457p9.a((Closeable) inputStream);
        if (bArrA != null) {
            if (!(bArrA.length == 0)) {
                Intrinsics.checkNotNullParameter(c0474qb, "<this>");
                Map map = c0474qb.b;
                List list = map != null ? (List) map.get(HttpHeaders.CONTENT_ENCODING) : null;
                if (Intrinsics.areEqual(list != null ? (String) list.get(0) : null, "gzip") && (bArrA = C0457p9.a(bArrA)) == null) {
                    c0474qb.f463a = new C0350i9(EnumC0250c4.h, "Failed to uncompress gzip response");
                }
                if (bArrA != null) {
                    c0474qb.c = bArrA;
                }
            }
        }
    }
}
