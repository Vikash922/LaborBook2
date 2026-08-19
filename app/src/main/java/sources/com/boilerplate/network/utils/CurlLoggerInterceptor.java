package com.boilerplate.network.utils;

import com.google.common.net.HttpHeaders;
import java.io.IOException;
import java.nio.charset.Charset;
import okhttp3.Interceptor;
import okhttp3.MediaType;
import okhttp3.Request;
import okhttp3.RequestBody;
import okhttp3.Response;
import okio.Buffer;
import org.shadow.apache.commons.lang3.StringUtils;

/* JADX INFO: loaded from: classes3.dex */
public class CurlLoggerInterceptor implements Interceptor {
    private final Charset UTF8 = Charset.forName("UTF-8");
    private StringBuilder curlCommandBuilder;
    private String tag;

    public CurlLoggerInterceptor(String str) {
        this.tag = str;
    }

    private void addHeader(String str, String str2) {
        try {
            this.curlCommandBuilder.append("-H \"" + str + ": " + str2 + "\" ");
        } catch (Exception unused) {
        }
    }

    @Override // okhttp3.Interceptor
    public Response intercept(Interceptor.Chain chain) throws IOException {
        Request request = chain.request();
        StringBuilder sb = new StringBuilder("");
        this.curlCommandBuilder = sb;
        sb.append("cURL ");
        this.curlCommandBuilder.append("-X ");
        this.curlCommandBuilder.append(request.method().toUpperCase() + StringUtils.SPACE);
        for (String str : request.headers().names()) {
            addHeader(str, request.headers().get(str));
        }
        RequestBody requestBodyBody = request.body();
        if (request.body() != null) {
            Buffer buffer = new Buffer();
            requestBodyBody.writeTo(buffer);
            MediaType contentType = requestBodyBody.getContentType();
            if (contentType != null) {
                addHeader(HttpHeaders.CONTENT_TYPE, request.body().getContentType().getMediaType());
                this.curlCommandBuilder.append(" -d '" + buffer.readString(contentType.charset(this.UTF8)) + "'");
            }
        }
        try {
            this.curlCommandBuilder.append(" \"" + request.url().getUrl() + "\"");
            this.curlCommandBuilder.append(" -L");
        } catch (Exception unused) {
        }
        C1110a.print(this.tag, request.url().getUrl(), this.curlCommandBuilder.toString());
        return chain.proceed(request);
    }
}
