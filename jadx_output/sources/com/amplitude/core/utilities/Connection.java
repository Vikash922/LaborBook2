package com.amplitude.core.utilities;

import com.amplitude.android.migration.DatabaseConstants;
import java.io.Closeable;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.nio.charset.Charset;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.Charsets;

/* JADX INFO: compiled from: HttpClient.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(m2721d1 = {"\u0000F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0002\b\u000f\b&\u0018\u00002\u00020\u0001B!\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007¢\u0006\u0002\u0010\bJ\b\u0010\u001e\u001a\u00020\u001fH\u0016J\b\u0010 \u001a\u00020\nH\u0002J\u0015\u0010!\u001a\u00020\u001f2\u0006\u0010\t\u001a\u00020\nH\u0000¢\u0006\u0002\b\"J\r\u0010#\u001a\u00020\u001fH\u0000¢\u0006\u0002\b$J\u0015\u0010%\u001a\u00020\u001f2\u0006\u0010\u000b\u001a\u00020\nH\u0000¢\u0006\u0002\b&J\u0015\u0010'\u001a\u00020\u001f2\u0006\u0010\u000e\u001a\u00020\u000fH\u0000¢\u0006\u0002\b(J\u0015\u0010)\u001a\u00020\u001f2\u0006\u0010\u0010\u001a\u00020\nH\u0000¢\u0006\u0002\b*J\u0019\u0010+\u001a\u00020\u001f2\b\u0010\u0013\u001a\u0004\u0018\u00010\u0014H\u0000¢\u0006\u0004\b,\u0010-R\u000e\u0010\t\u001a\u00020\nX\u0082.¢\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\nX\u0082.¢\u0006\u0002\n\u0000R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\rR\u0010\u0010\u000e\u001a\u0004\u0018\u00010\u000fX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\nX\u0082.¢\u0006\u0002\n\u0000R\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\u0012R\u0012\u0010\u0013\u001a\u0004\u0018\u00010\u0014X\u0082\u000e¢\u0006\u0004\n\u0002\u0010\u0015R\u0013\u0010\u0006\u001a\u0004\u0018\u00010\u0007¢\u0006\b\n\u0000\u001a\u0004\b\u0016\u0010\u0017R\u001a\u0010\u0018\u001a\u00020\u0019X\u0080.¢\u0006\u000e\n\u0000\u001a\u0004\b\u001a\u0010\u001b\"\u0004\b\u001c\u0010\u001d¨\u0006."}, m2722d2 = {"Lcom/amplitude/core/utilities/Connection;", "Ljava/io/Closeable;", "connection", "Ljava/net/HttpURLConnection;", "inputStream", "Ljava/io/InputStream;", "outputStream", "Ljava/io/OutputStream;", "(Ljava/net/HttpURLConnection;Ljava/io/InputStream;Ljava/io/OutputStream;)V", "apiKey", "", "clientUploadTime", "getConnection", "()Ljava/net/HttpURLConnection;", "diagnostics", "Lcom/amplitude/core/utilities/Diagnostics;", DatabaseConstants.EVENT_TABLE_NAME, "getInputStream", "()Ljava/io/InputStream;", "minIdLength", "", "Ljava/lang/Integer;", "getOutputStream", "()Ljava/io/OutputStream;", "response", "Lcom/amplitude/core/utilities/Response;", "getResponse$core", "()Lcom/amplitude/core/utilities/Response;", "setResponse$core", "(Lcom/amplitude/core/utilities/Response;)V", "close", "", "getBodyStr", "setApiKey", "setApiKey$core", "setBody", "setBody$core", "setClientUploadTime", "setClientUploadTime$core", "setDiagnostics", "setDiagnostics$core", "setEvents", "setEvents$core", "setMinIdLength", "setMinIdLength$core", "(Ljava/lang/Integer;)V", "core"}, m2723k = 1, m2724mv = {1, 5, 1}, m2726xi = 48)
public abstract class Connection implements Closeable {
    private String apiKey;
    private String clientUploadTime;
    private final HttpURLConnection connection;
    private Diagnostics diagnostics;
    private String events;
    private final InputStream inputStream;
    private Integer minIdLength;
    private final OutputStream outputStream;
    public Response response;

    public Connection(HttpURLConnection connection, InputStream inputStream, OutputStream outputStream) {
        Intrinsics.checkNotNullParameter(connection, "connection");
        this.connection = connection;
        this.inputStream = inputStream;
        this.outputStream = outputStream;
    }

    public final HttpURLConnection getConnection() {
        return this.connection;
    }

    public final InputStream getInputStream() {
        return this.inputStream;
    }

    public final OutputStream getOutputStream() {
        return this.outputStream;
    }

    public final Response getResponse$core() {
        Response response = this.response;
        if (response != null) {
            return response;
        }
        Intrinsics.throwUninitializedPropertyAccessException("response");
        return null;
    }

    public final void setResponse$core(Response response) {
        Intrinsics.checkNotNullParameter(response, "<set-?>");
        this.response = response;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.connection.disconnect();
    }

    public final void setApiKey$core(String apiKey) {
        Intrinsics.checkNotNullParameter(apiKey, "apiKey");
        this.apiKey = apiKey;
    }

    public final void setClientUploadTime$core(String clientUploadTime) {
        Intrinsics.checkNotNullParameter(clientUploadTime, "clientUploadTime");
        this.clientUploadTime = clientUploadTime;
    }

    public final void setMinIdLength$core(Integer minIdLength) {
        this.minIdLength = minIdLength;
    }

    public final void setEvents$core(String events) {
        Intrinsics.checkNotNullParameter(events, "events");
        this.events = events;
    }

    public final void setDiagnostics$core(Diagnostics diagnostics) {
        Intrinsics.checkNotNullParameter(diagnostics, "diagnostics");
        this.diagnostics = diagnostics;
    }

    public final void setBody$core() throws IOException {
        if (this.outputStream == null) {
            return;
        }
        String bodyStr = getBodyStr();
        Charset charset = Charsets.UTF_8;
        if (bodyStr == null) {
            throw new NullPointerException("null cannot be cast to non-null type java.lang.String");
        }
        byte[] bytes = bodyStr.getBytes(charset);
        Intrinsics.checkNotNullExpressionValue(bytes, "(this as java.lang.String).getBytes(charset)");
        getOutputStream().write(bytes, 0, bytes.length);
    }

    private final String getBodyStr() {
        StringBuilder sb = new StringBuilder();
        StringBuilder sb2 = new StringBuilder("{\"api_key\":\"");
        String str = this.apiKey;
        String str2 = null;
        if (str == null) {
            Intrinsics.throwUninitializedPropertyAccessException("apiKey");
            str = null;
        }
        StringBuilder sbAppend = sb2.append(str).append("\",\"client_upload_time\":\"");
        String str3 = this.clientUploadTime;
        if (str3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("clientUploadTime");
            str3 = null;
        }
        StringBuilder sbAppend2 = sbAppend.append(str3).append("\",\"events\":");
        String str4 = this.events;
        if (str4 == null) {
            Intrinsics.throwUninitializedPropertyAccessException(DatabaseConstants.EVENT_TABLE_NAME);
        } else {
            str2 = str4;
        }
        sb.append(sbAppend2.append(str2).toString());
        if (this.minIdLength != null) {
            sb.append(",\"options\":{\"min_id_length\":" + this.minIdLength + '}');
        }
        Diagnostics diagnostics = this.diagnostics;
        if (diagnostics != null) {
            Intrinsics.checkNotNull(diagnostics);
            if (diagnostics.hasDiagnostics()) {
                StringBuilder sb3 = new StringBuilder(",\"request_metadata\":{\"sdk\":");
                Diagnostics diagnostics2 = this.diagnostics;
                Intrinsics.checkNotNull(diagnostics2);
                sb.append(sb3.append(diagnostics2.extractDiagnostics()).append('}').toString());
            }
        }
        sb.append("}");
        String string = sb.toString();
        Intrinsics.checkNotNullExpressionValue(string, "StringBuilder().apply(builderAction).toString()");
        return string;
    }
}
