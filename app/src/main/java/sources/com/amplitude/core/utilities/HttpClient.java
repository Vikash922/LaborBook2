package com.amplitude.core.utilities;

import com.amplitude.core.Configuration;
import com.amplitude.core.Constants;
import com.amplitude.core.ServerZone;
import com.google.common.net.HttpHeaders;
import com.google.firebase.perf.network.FirebasePerfUrlConnection;
import com.inmobi.media.C2760Ec;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;
import java.net.URLConnection;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.TimeZone;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: HttpClient.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(m2721d1 = {"\u0000@\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\b\u0000\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\b\u0010\u0005\u001a\u00020\u0006H\u0002J\r\u0010\u0007\u001a\u00020\u0006H\u0000¢\u0006\u0002\b\bJ\r\u0010\t\u001a\u00020\u0006H\u0000¢\u0006\u0002\b\nJ\u0010\u0010\u000b\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\u0006H\u0002J\r\u0010\u000e\u001a\u00020\u000fH\u0000¢\u0006\u0002\b\u0010J\u000e\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\fJ\u0011\u0010\u0014\u001a\u0004\u0018\u00010\u0015H\u0000¢\u0006\u0004\b\u0016\u0010\u0017J\u0006\u0010\u0018\u001a\u00020\u0019R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u001a"}, m2722d2 = {"Lcom/amplitude/core/utilities/HttpClient;", "", "configuration", "Lcom/amplitude/core/Configuration;", "(Lcom/amplitude/core/Configuration;)V", "getApiHost", "", "getApiKey", "getApiKey$core", "getClientUploadTime", "getClientUploadTime$core", "getConnection", "Ljava/net/HttpURLConnection;", "url", "getCurrentTimeMillis", "", "getCurrentTimeMillis$core", "getInputStream", "Ljava/io/InputStream;", "connection", "getMindIdLength", "", "getMindIdLength$core", "()Ljava/lang/Integer;", "upload", "Lcom/amplitude/core/utilities/Connection;", "core"}, m2723k = 1, m2724mv = {1, 5, 1}, m2726xi = 48)
public final class HttpClient {
    private final Configuration configuration;

    public HttpClient(Configuration configuration) {
        Intrinsics.checkNotNullParameter(configuration, "configuration");
        this.configuration = configuration;
    }

    public final Connection upload() throws IOException {
        HttpURLConnection connection = getConnection(getApiHost());
        OutputStream outputStream = connection.getOutputStream();
        Intrinsics.checkNotNullExpressionValue(outputStream, "connection.outputStream");
        return new Connection(connection, outputStream) { // from class: com.amplitude.core.utilities.HttpClient.upload.1
            final /* synthetic */ HttpURLConnection $connection;
            final /* synthetic */ OutputStream $outputStream;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(connection, null, outputStream);
                this.$connection = connection;
                this.$outputStream = outputStream;
            }

            /* JADX WARN: Not initialized variable reg: 2, insn: 0x0098: MOVE (r1 I:??[OBJECT, ARRAY]) = (r2 I:??[OBJECT, ARRAY]), block:B:36:0x0098 */
            /* JADX WARN: Removed duplicated region for block: B:33:0x0093 A[DONT_GENERATE] */
            /* JADX WARN: Removed duplicated region for block: B:39:0x009c A[Catch: all -> 0x00a0, TRY_ENTER, TryCatch #0 {all -> 0x00a0, blocks: (B:2:0x0000, B:6:0x0028, B:18:0x006e, B:39:0x009c, B:40:0x009f, B:5:0x0025), top: B:48:0x0000 }] */
            /* JADX WARN: Removed duplicated region for block: B:56:? A[RETURN, SYNTHETIC] */
            @Override // com.amplitude.core.utilities.Connection, java.io.Closeable, java.lang.AutoCloseable
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public void close() throws java.io.IOException {
                /*
                    r6 = this;
                    com.amplitude.core.utilities.HttpClient r0 = com.amplitude.core.utilities.HttpClient.this     // Catch: java.lang.Throwable -> La0
                    java.lang.String r0 = r0.getApiKey$core()     // Catch: java.lang.Throwable -> La0
                    r6.setApiKey$core(r0)     // Catch: java.lang.Throwable -> La0
                    com.amplitude.core.utilities.HttpClient r0 = com.amplitude.core.utilities.HttpClient.this     // Catch: java.lang.Throwable -> La0
                    java.lang.String r0 = r0.getClientUploadTime$core()     // Catch: java.lang.Throwable -> La0
                    r6.setClientUploadTime$core(r0)     // Catch: java.lang.Throwable -> La0
                    com.amplitude.core.utilities.HttpClient r0 = com.amplitude.core.utilities.HttpClient.this     // Catch: java.lang.Throwable -> La0
                    java.lang.Integer r0 = r0.getMindIdLength$core()     // Catch: java.lang.Throwable -> La0
                    r6.setMinIdLength$core(r0)     // Catch: java.lang.Throwable -> La0
                    r6.setBody$core()     // Catch: java.lang.Throwable -> La0
                    java.io.OutputStream r0 = r6.getOutputStream()     // Catch: java.lang.Throwable -> La0
                    if (r0 != 0) goto L25
                    goto L28
                L25:
                    r0.close()     // Catch: java.lang.Throwable -> La0
                L28:
                    java.net.HttpURLConnection r0 = r6.$connection     // Catch: java.lang.Throwable -> La0
                    int r0 = r0.getResponseCode()     // Catch: java.lang.Throwable -> La0
                    r1 = 0
                    com.amplitude.core.utilities.HttpClient r2 = com.amplitude.core.utilities.HttpClient.this     // Catch: java.lang.Throwable -> L79 java.io.IOException -> L7b
                    java.net.HttpURLConnection r3 = r6.getConnection()     // Catch: java.lang.Throwable -> L79 java.io.IOException -> L7b
                    java.io.InputStream r2 = r2.getInputStream(r3)     // Catch: java.lang.Throwable -> L79 java.io.IOException -> L7b
                    java.nio.charset.Charset r3 = kotlin.text.Charsets.UTF_8     // Catch: java.io.IOException -> L7c java.lang.Throwable -> L97
                    java.io.InputStreamReader r4 = new java.io.InputStreamReader     // Catch: java.io.IOException -> L7c java.lang.Throwable -> L97
                    r4.<init>(r2, r3)     // Catch: java.io.IOException -> L7c java.lang.Throwable -> L97
                    java.io.Reader r4 = (java.io.Reader) r4     // Catch: java.io.IOException -> L7c java.lang.Throwable -> L97
                    boolean r3 = r4 instanceof java.io.BufferedReader     // Catch: java.io.IOException -> L7c java.lang.Throwable -> L97
                    if (r3 == 0) goto L49
                    java.io.BufferedReader r4 = (java.io.BufferedReader) r4     // Catch: java.io.IOException -> L7c java.lang.Throwable -> L97
                    goto L51
                L49:
                    java.io.BufferedReader r3 = new java.io.BufferedReader     // Catch: java.io.IOException -> L7c java.lang.Throwable -> L97
                    r5 = 8192(0x2000, float:1.148E-41)
                    r3.<init>(r4, r5)     // Catch: java.io.IOException -> L7c java.lang.Throwable -> L97
                    r4 = r3
                L51:
                    java.io.Closeable r4 = (java.io.Closeable) r4     // Catch: java.io.IOException -> L7c java.lang.Throwable -> L97
                    r3 = r1
                    java.lang.Throwable r3 = (java.lang.Throwable) r3     // Catch: java.io.IOException -> L7c java.lang.Throwable -> L97
                    r3 = r4
                    java.io.BufferedReader r3 = (java.io.BufferedReader) r3     // Catch: java.lang.Throwable -> L72
                    java.io.Reader r3 = (java.io.Reader) r3     // Catch: java.lang.Throwable -> L72
                    java.lang.String r3 = kotlin.p024io.TextStreamsKt.readText(r3)     // Catch: java.lang.Throwable -> L72
                    kotlin.p024io.CloseableKt.closeFinally(r4, r1)     // Catch: java.io.IOException -> L7c java.lang.Throwable -> L97
                    com.amplitude.core.utilities.HttpResponse r4 = com.amplitude.core.utilities.HttpResponse.INSTANCE     // Catch: java.io.IOException -> L7c java.lang.Throwable -> L97
                    com.amplitude.core.utilities.Response r0 = r4.createHttpResponse(r0, r3)     // Catch: java.io.IOException -> L7c java.lang.Throwable -> L97
                    r6.setResponse$core(r0)     // Catch: java.io.IOException -> L7c java.lang.Throwable -> L97
                    if (r2 != 0) goto L6e
                    goto L89
                L6e:
                    r2.close()     // Catch: java.lang.Throwable -> La0
                    goto L89
                L72:
                    r0 = move-exception
                    throw r0     // Catch: java.lang.Throwable -> L74
                L74:
                    r3 = move-exception
                    kotlin.p024io.CloseableKt.closeFinally(r4, r0)     // Catch: java.io.IOException -> L7c java.lang.Throwable -> L97
                    throw r3     // Catch: java.io.IOException -> L7c java.lang.Throwable -> L97
                L79:
                    r0 = move-exception
                    goto L99
                L7b:
                    r2 = r1
                L7c:
                    com.amplitude.core.utilities.HttpResponse r0 = com.amplitude.core.utilities.HttpResponse.INSTANCE     // Catch: java.lang.Throwable -> L97
                    r3 = 408(0x198, float:5.72E-43)
                    com.amplitude.core.utilities.Response r0 = r0.createHttpResponse(r3, r1)     // Catch: java.lang.Throwable -> L97
                    r6.setResponse$core(r0)     // Catch: java.lang.Throwable -> L97
                    if (r2 != 0) goto L6e
                L89:
                    super.close()
                    java.io.OutputStream r0 = r6.getOutputStream()
                    if (r0 != 0) goto L93
                    goto L96
                L93:
                    r0.close()
                L96:
                    return
                L97:
                    r0 = move-exception
                    r1 = r2
                L99:
                    if (r1 != 0) goto L9c
                    goto L9f
                L9c:
                    r1.close()     // Catch: java.lang.Throwable -> La0
                L9f:
                    throw r0     // Catch: java.lang.Throwable -> La0
                La0:
                    r0 = move-exception
                    super.close()
                    java.io.OutputStream r1 = r6.getOutputStream()
                    if (r1 != 0) goto Lab
                    goto Lae
                Lab:
                    r1.close()
                Lae:
                    throw r0
                */
                throw new UnsupportedOperationException("Method not decompiled: com.amplitude.core.utilities.HttpClient.C10811.close():void");
            }
        };
    }

    private final HttpURLConnection getConnection(String url) throws IOException {
        try {
            URLConnection uRLConnection = (URLConnection) FirebasePerfUrlConnection.instrument(new URL(url).openConnection());
            if (uRLConnection == null) {
                throw new NullPointerException("null cannot be cast to non-null type java.net.HttpURLConnection");
            }
            HttpURLConnection httpURLConnection = (HttpURLConnection) uRLConnection;
            httpURLConnection.setRequestMethod("POST");
            httpURLConnection.setRequestProperty(HttpHeaders.CONTENT_TYPE, "application/json; charset=utf-8");
            httpURLConnection.setRequestProperty(HttpHeaders.ACCEPT, "application/json");
            httpURLConnection.setDoOutput(true);
            httpURLConnection.setDoInput(true);
            httpURLConnection.setConnectTimeout(C2760Ec.DEFAULT_TIMEOUT);
            httpURLConnection.setReadTimeout(201000);
            return httpURLConnection;
        } catch (MalformedURLException e) {
            throw new IOException(Intrinsics.stringPlus("Attempted to use malformed url: ", url), e);
        }
    }

    private final String getApiHost() {
        String serverUrl = this.configuration.getServerUrl();
        if (serverUrl == null || serverUrl.length() == 0) {
            return this.configuration.getServerZone() == ServerZone.EU ? this.configuration.getUseBatch() ? Constants.EU_BATCH_API_HOST : Constants.EU_DEFAULT_API_HOST : this.configuration.getUseBatch() ? Constants.BATCH_API_HOST : Constants.DEFAULT_API_HOST;
        }
        String serverUrl2 = this.configuration.getServerUrl();
        Intrinsics.checkNotNull(serverUrl2);
        return serverUrl2;
    }

    public final String getApiKey$core() {
        return this.configuration.getApiKey();
    }

    public final String getClientUploadTime$core() {
        long currentTimeMillis$core = getCurrentTimeMillis$core();
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss.SSS'Z'");
        simpleDateFormat.setTimeZone(TimeZone.getTimeZone("UTC"));
        String str = simpleDateFormat.format(new Date(currentTimeMillis$core));
        Intrinsics.checkNotNullExpressionValue(str, "sdf.format(Date(currentTimeMillis))");
        return str;
    }

    public final Integer getMindIdLength$core() {
        return this.configuration.getMinIdLength();
    }

    public final long getCurrentTimeMillis$core() {
        return System.currentTimeMillis();
    }

    public final InputStream getInputStream(HttpURLConnection connection) {
        Intrinsics.checkNotNullParameter(connection, "connection");
        try {
            InputStream inputStream = connection.getInputStream();
            Intrinsics.checkNotNullExpressionValue(inputStream, "{\n            connection.inputStream\n        }");
            return inputStream;
        } catch (IOException unused) {
            InputStream errorStream = connection.getErrorStream();
            Intrinsics.checkNotNullExpressionValue(errorStream, "{\n            connection.errorStream\n        }");
            return errorStream;
        }
    }
}
