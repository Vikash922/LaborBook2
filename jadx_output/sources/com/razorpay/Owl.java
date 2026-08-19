package com.razorpay;

import android.os.AsyncTask;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import com.google.firebase.perf.network.FirebasePerfUrlConnection;
import com.inmobi.media.C2760Ec;
import java.io.BufferedReader;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.net.URL;
import java.net.URLConnection;
import java.nio.charset.StandardCharsets;
import java.util.HashMap;
import java.util.Map;
import java.util.zip.GZIPInputStream;
import javax.net.ssl.HttpsURLConnection;

/* JADX INFO: loaded from: classes5.dex */
public class Owl extends AsyncTask<String, Void, ResponseObject> {
    private Callback l$1_I$l$;
    private String __l1_ = null;
    private Map<String, String> _llI = new HashMap();
    private String _l_1l__ = null;

    private Owl(Callback callback) {
        this.l$1_I$l$ = callback;
    }

    static AsyncTask get(String str, Callback callback) {
        return new Owl(callback).method("GET").execute(str);
    }

    static AsyncTask get(String str, Map<String, String> map, Callback callback) {
        return new Owl(callback).method("GET").headers(map).execute(str);
    }

    static AsyncTask get(String str, String str2, Map<String, String> map, Callback callback) {
        return new Owl(callback).method("GET").data(str2).headers(map).execute(str);
    }

    public static AsyncTask post(String str, String str2, Callback callback) {
        return new Owl(callback).method("POST").data(str2).execute(str);
    }

    public static AsyncTask post(String str, String str2, Map<String, String> map, Callback callback) {
        return new Owl(callback).method("POST").data(str2).headers(map).execute(str);
    }

    Owl headers(Map<String, String> map) {
        this._llI = map;
        return this;
    }

    Owl method(String str) {
        this.__l1_ = str;
        return this;
    }

    Owl data(String str) {
        this._l_1l__ = str;
        return this;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.os.AsyncTask
    public ResponseObject doInBackground(String... strArr) {
        InputStream inputStream;
        ResponseObject responseObject = new ResponseObject();
        InputStream inputStream2 = null;
        try {
            try {
                try {
                    HttpsURLConnection httpsURLConnection = (HttpsURLConnection) ((URLConnection) FirebasePerfUrlConnection.instrument(new URL(strArr[0]).openConnection()));
                    for (Map.Entry<String, String> entry : this._llI.entrySet()) {
                        httpsURLConnection.setRequestProperty(entry.getKey(), entry.getValue());
                    }
                    httpsURLConnection.setRequestMethod(this.__l1_);
                    if (this._l_1l__ != null) {
                        httpsURLConnection.setDoOutput(true);
                        httpsURLConnection.getOutputStream().write(this._l_1l__.getBytes(StandardCharsets.UTF_8));
                    }
                    httpsURLConnection.setConnectTimeout(C2760Ec.DEFAULT_TIMEOUT);
                    httpsURLConnection.setReadTimeout(AccessibilityNodeInfoCompat.EXTRA_DATA_TEXT_CHARACTER_LOCATION_ARG_MAX_LENGTH);
                    httpsURLConnection.connect();
                    int responseCode = httpsURLConnection.getResponseCode();
                    responseObject.setResponseCode(responseCode);
                    Map<String, String> map = this._llI;
                    if (map == null || !map.containsKey("accept-encoding") || this._llI.get("accept-encoding") == null || !this._llI.get("accept-encoding").equalsIgnoreCase("gzip")) {
                        if (responseCode >= 400) {
                            inputStream = httpsURLConnection.getErrorStream();
                        } else {
                            inputStream = httpsURLConnection.getInputStream();
                        }
                    } else if (responseCode > 400) {
                        inputStream = httpsURLConnection.getErrorStream();
                    } else {
                        inputStream = new GZIPInputStream(httpsURLConnection.getInputStream());
                    }
                    inputStream2 = inputStream;
                    responseObject.setHeaders(httpsURLConnection.getHeaderFields());
                    responseObject.setResponseResult(l$1_I$l$(inputStream2));
                    if (inputStream2 != null) {
                        inputStream2.close();
                    }
                } catch (Exception e) {
                    Logger.m2692e("Input Stream: " + e.getLocalizedMessage());
                    AnalyticsUtil.reportError(getClass().getName(), "S2", e.getMessage());
                    if (inputStream2 != null) {
                        inputStream2.close();
                    }
                }
            } catch (Exception e2) {
                AnalyticsUtil.reportError(getClass().getName(), "S2", e2.getMessage());
            }
            return responseObject;
        } catch (Throwable th) {
            if (inputStream2 != null) {
                try {
                    inputStream2.close();
                } catch (Exception e3) {
                    AnalyticsUtil.reportError(getClass().getName(), "S2", e3.getMessage());
                }
            }
            throw th;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.os.AsyncTask
    public void onPostExecute(ResponseObject responseObject) {
        Callback callback = this.l$1_I$l$;
        if (callback != null) {
            callback.run(responseObject);
        }
    }

    private String l$1_I$l$(InputStream inputStream) throws Exception {
        BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(inputStream, "UTF-8"));
        StringBuilder sb = new StringBuilder();
        while (true) {
            String line = bufferedReader.readLine();
            if (line != null) {
                sb.append(line);
            } else {
                bufferedReader.close();
                return sb.toString();
            }
        }
    }
}
