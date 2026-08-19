package com.inmobi.media;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.Network;
import android.net.NetworkCapabilities;
import android.os.PowerManager;
import com.inmobi.commons.core.configs.AdConfig;
import com.inmobi.commons.core.configs.Config;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.Closeable;
import java.io.IOException;
import java.io.InputStream;
import java.io.UnsupportedEncodingException;
import java.net.HttpURLConnection;
import java.net.URLEncoder;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Locale;
import java.util.Map;
import java.util.zip.GZIPInputStream;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.StringCompanionObject;
import kotlin.text.StringsKt;
import org.json.JSONObject;

/* JADX INFO: renamed from: com.inmobi.media.p9 */
/* JADX INFO: loaded from: classes6.dex */
public final class C3301p9 implements InterfaceC2825J2 {

    /* JADX INFO: renamed from: a */
    public static boolean f2439a;

    static {
        LinkedHashMap linkedHashMap = C2840K2.f1150a;
        f2439a = ((AdConfig) AbstractC3001V4.m1873a("ads", "null cannot be cast to non-null type com.inmobi.commons.core.configs.AdConfig", null)).getSkipNetworkValidationFeatureEnabled();
    }

    @Override // com.inmobi.media.InterfaceC2825J2
    /* JADX INFO: renamed from: a */
    public final void mo1057a(Config config) {
        Intrinsics.checkNotNullParameter(config, "config");
        if (config instanceof AdConfig) {
            f2439a = ((AdConfig) config).getSkipNetworkValidationFeatureEnabled();
        }
    }

    /* JADX INFO: renamed from: a */
    public static EnumC3101c4 m2341a(ConnectivityManager connectivityManager, boolean z) {
        NetworkCapabilities networkCapabilities;
        Network network = connectivityManager.getActiveNetwork();
        if (network != null && (networkCapabilities = connectivityManager.getNetworkCapabilities(network)) != null) {
            Intrinsics.checkNotNullExpressionValue("p9", "TAG");
            networkCapabilities.toString();
            if (!networkCapabilities.hasCapability(12)) {
                return EnumC3101c4.f1933p;
            }
            if ((f2439a && !z) || networkCapabilities.hasCapability(16)) {
                return null;
            }
            AdConfig.CustomNetworkValidation customNetworkValidation = C3250m3.f2312a;
            Intrinsics.checkNotNullParameter(network, "network");
            AdConfig.CustomNetworkValidation customNetworkValidation2 = C3250m3.f2312a;
            if (!(customNetworkValidation2 != null ? customNetworkValidation2.getEnabled() : false)) {
                return EnumC3101c4.f1933p;
            }
            C3250m3.m2294a(network);
            if (C3250m3.f2314c) {
                return null;
            }
            return EnumC3101c4.f1937t;
        }
        return EnumC3101c4.f1933p;
    }

    /* JADX INFO: renamed from: a */
    public static EnumC3101c4 m2342a(boolean z) {
        EnumC3101c4 enumC3101c4M2341a;
        Context contextM1254d = C2849Kb.m1254d();
        if (contextM1254d != null) {
            try {
                Object systemService = contextM1254d.getSystemService("connectivity");
                Intrinsics.checkNotNull(systemService, "null cannot be cast to non-null type android.net.ConnectivityManager");
                enumC3101c4M2341a = m2341a((ConnectivityManager) systemService, z);
            } catch (Exception unused) {
                Intrinsics.checkNotNullExpressionValue("p9", "TAG");
                enumC3101c4M2341a = EnumC3101c4.f1935r;
            }
            if (enumC3101c4M2341a != null) {
                return enumC3101c4M2341a;
            }
            Context contextM1254d2 = C2849Kb.m1254d();
            boolean zIsDeviceIdleMode = false;
            if (contextM1254d2 != null) {
                try {
                    Object systemService2 = contextM1254d2.getSystemService("power");
                    PowerManager powerManager = systemService2 instanceof PowerManager ? (PowerManager) systemService2 : null;
                    if (powerManager != null) {
                        zIsDeviceIdleMode = powerManager.isDeviceIdleMode();
                    }
                } catch (Exception unused2) {
                    Intrinsics.checkNotNullExpressionValue("p9", "TAG");
                }
            }
            if (zIsDeviceIdleMode) {
                return EnumC3101c4.f1932o;
            }
            return null;
        }
        return EnumC3101c4.f1931n;
    }

    /* JADX INFO: renamed from: a */
    public static String m2344a(String delimiter, Map map) {
        String strEncode;
        String strEncode2;
        Intrinsics.checkNotNullParameter(delimiter, "delimiter");
        StringBuilder sb = new StringBuilder();
        if (map != null) {
            for (Map.Entry entry : map.entrySet()) {
                String str = (String) entry.getKey();
                String str2 = (String) entry.getValue();
                if (sb.length() > 0) {
                    sb.append(delimiter);
                }
                StringCompanionObject stringCompanionObject = StringCompanionObject.INSTANCE;
                Locale locale = Locale.US;
                try {
                    strEncode = URLEncoder.encode(str, "UTF-8");
                    Intrinsics.checkNotNullExpressionValue(strEncode, "encode(...)");
                } catch (UnsupportedEncodingException unused) {
                    strEncode = "";
                }
                try {
                    strEncode2 = URLEncoder.encode(str2, "UTF-8");
                    Intrinsics.checkNotNullExpressionValue(strEncode2, "encode(...)");
                } catch (UnsupportedEncodingException unused2) {
                    strEncode2 = "";
                }
                String str3 = String.format(locale, "%s=%s", Arrays.copyOf(new Object[]{strEncode, strEncode2}, 2));
                Intrinsics.checkNotNullExpressionValue(str3, "format(locale, format, *args)");
                sb.append(str3);
            }
        }
        String string = sb.toString();
        Intrinsics.checkNotNullExpressionValue(string, "toString(...)");
        return string;
    }

    /* JADX INFO: renamed from: a */
    public static void m2348a(HashMap map) {
        if (map != null) {
            HashMap map2 = new HashMap();
            for (Map.Entry entry : map.entrySet()) {
                if (entry.getValue() != null) {
                    String str = (String) entry.getValue();
                    int length = str.length() - 1;
                    int i = 0;
                    boolean z = false;
                    while (i <= length) {
                        boolean z2 = Intrinsics.compare((int) str.charAt(!z ? i : length), 32) <= 0;
                        if (z) {
                            if (!z2) {
                                break;
                            } else {
                                length--;
                            }
                        } else if (z2) {
                            i++;
                        } else {
                            z = true;
                        }
                    }
                    if (str.subSequence(i, length + 1).toString().length() > 0 && entry.getKey() != null) {
                        String str2 = (String) entry.getKey();
                        int length2 = str2.length() - 1;
                        int i2 = 0;
                        boolean z3 = false;
                        while (i2 <= length2) {
                            boolean z4 = Intrinsics.compare((int) str2.charAt(!z3 ? i2 : length2), 32) <= 0;
                            if (z3) {
                                if (!z4) {
                                    break;
                                } else {
                                    length2--;
                                }
                            } else if (z4) {
                                i2++;
                            } else {
                                z3 = true;
                            }
                        }
                        if (str2.subSequence(i2, length2 + 1).toString().length() > 0) {
                            String str3 = (String) entry.getKey();
                            int length3 = str3.length() - 1;
                            int i3 = 0;
                            boolean z5 = false;
                            while (i3 <= length3) {
                                boolean z6 = Intrinsics.compare((int) str3.charAt(!z5 ? i3 : length3), 32) <= 0;
                                if (z5) {
                                    if (!z6) {
                                        break;
                                    } else {
                                        length3--;
                                    }
                                } else if (z6) {
                                    i3++;
                                } else {
                                    z5 = true;
                                }
                            }
                            String strM2246a = AbstractC3194i7.m2246a(length3, 1, str3, i3);
                            String str4 = (String) entry.getValue();
                            int length4 = str4.length() - 1;
                            int i4 = 0;
                            boolean z7 = false;
                            while (i4 <= length4) {
                                boolean z8 = Intrinsics.compare((int) str4.charAt(!z7 ? i4 : length4), 32) <= 0;
                                if (z7) {
                                    if (!z8) {
                                        break;
                                    } else {
                                        length4--;
                                    }
                                } else if (z8) {
                                    i4++;
                                } else {
                                    z7 = true;
                                }
                            }
                            map2.put(strM2246a, AbstractC3194i7.m2246a(length4, 1, str4, i4));
                        }
                    }
                }
            }
            map.clear();
            map.putAll(map2);
        }
    }

    /* JADX INFO: renamed from: a */
    public static HashMap m2345a(JSONObject jSONObject) {
        HashMap map = new HashMap();
        if (jSONObject != null) {
            try {
                Iterator<String> itKeys = jSONObject.keys();
                while (itKeys.hasNext()) {
                    String next = itKeys.next();
                    Intrinsics.checkNotNull(next);
                    String string = jSONObject.getString(next);
                    Intrinsics.checkNotNullExpressionValue(string, "getString(...)");
                    map.put(next, string);
                }
            } catch (Exception unused) {
            }
        }
        return map;
    }

    /* JADX INFO: renamed from: a */
    public static String m2343a(String url, HashMap map) {
        Intrinsics.checkNotNullParameter(url, "url");
        if (map == null || map.isEmpty()) {
            return url;
        }
        String strReplace$default = url;
        for (Map.Entry entry : map.entrySet()) {
            strReplace$default = StringsKt.replace$default(strReplace$default, (String) entry.getKey(), (String) entry.getValue(), false, 4, (Object) null);
        }
        return strReplace$default;
    }

    /* JADX INFO: renamed from: a */
    public static byte[] m2350a(byte[] compressedData) {
        GZIPInputStream gZIPInputStream;
        Intrinsics.checkNotNullParameter(compressedData, "compressedData");
        ByteArrayInputStream byteArrayInputStream = new ByteArrayInputStream(compressedData);
        GZIPInputStream gZIPInputStream2 = null;
        try {
            try {
                gZIPInputStream = new GZIPInputStream(byteArrayInputStream);
            } catch (IOException e) {
                e = e;
            }
        } catch (Throwable th) {
            th = th;
        }
        try {
            compressedData = m2349a((InputStream) gZIPInputStream);
        } catch (IOException e2) {
            e = e2;
            gZIPInputStream2 = gZIPInputStream;
            AbstractC2814I6.m1171a((byte) 2, "p9", "Failed to decompress response", e);
            gZIPInputStream = gZIPInputStream2;
        } catch (Throwable th2) {
            th = th2;
            gZIPInputStream2 = gZIPInputStream;
            m2346a((Closeable) byteArrayInputStream);
            m2346a((Closeable) gZIPInputStream2);
            throw th;
        }
        m2346a((Closeable) byteArrayInputStream);
        m2346a((Closeable) gZIPInputStream);
        return compressedData;
    }

    /* JADX INFO: renamed from: a */
    public static byte[] m2349a(InputStream input) {
        Intrinsics.checkNotNullParameter(input, "input");
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        byte[] bArr = new byte[4096];
        while (true) {
            try {
                int i = input.read(bArr);
                Unit unit = Unit.INSTANCE;
                if (-1 != i) {
                    byteArrayOutputStream.write(bArr, 0, i);
                } else {
                    byte[] byteArray = byteArrayOutputStream.toByteArray();
                    Intrinsics.checkNotNull(byteArray);
                    return byteArray;
                }
            } finally {
                m2346a(byteArrayOutputStream);
            }
        }
    }

    /* JADX INFO: renamed from: a */
    public static void m2347a(HttpURLConnection httpURLConnection) {
        InputStream inputStream;
        if (httpURLConnection != null) {
            try {
                inputStream = httpURLConnection.getInputStream();
            } catch (Error | Exception unused) {
                return;
            }
        } else {
            inputStream = null;
        }
        m2346a((Closeable) inputStream);
        m2346a((Closeable) (httpURLConnection != null ? httpURLConnection.getErrorStream() : null));
        if (httpURLConnection != null) {
            httpURLConnection.disconnect();
        }
    }

    /* JADX INFO: renamed from: a */
    public static final void m2346a(Closeable closeable) {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (IOException | Error | Exception unused) {
            }
        }
    }
}
