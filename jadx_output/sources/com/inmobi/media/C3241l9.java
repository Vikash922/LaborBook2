package com.inmobi.media;

import androidx.browser.trusted.sharing.ShareTarget;
import com.google.common.net.HttpHeaders;
import java.util.HashMap;
import java.util.Map;
import java.util.Set;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import org.json.JSONObject;

/* JADX INFO: renamed from: com.inmobi.media.l9 */
/* JADX INFO: loaded from: classes6.dex */
public class C3241l9 {

    /* JADX INFO: renamed from: a */
    public final String f2274a;

    /* JADX INFO: renamed from: b */
    public final String f2275b;

    /* JADX INFO: renamed from: c */
    public final C2850Kc f2276c;

    /* JADX INFO: renamed from: d */
    public boolean f2277d;

    /* JADX INFO: renamed from: e */
    public final InterfaceC3147f5 f2278e;

    /* JADX INFO: renamed from: f */
    public final String f2279f;

    /* JADX INFO: renamed from: g */
    public final boolean f2280g;

    /* JADX INFO: renamed from: h */
    public final String f2281h;

    /* JADX INFO: renamed from: i */
    public final HashMap f2282i;

    /* JADX INFO: renamed from: j */
    public final HashMap f2283j;

    /* JADX INFO: renamed from: k */
    public final HashMap f2284k;

    /* JADX INFO: renamed from: l */
    public JSONObject f2285l;

    /* JADX INFO: renamed from: m */
    public String f2286m;

    /* JADX INFO: renamed from: n */
    public C3256m9 f2287n;

    /* JADX INFO: renamed from: o */
    public boolean f2288o;

    /* JADX INFO: renamed from: p */
    public int f2289p;

    /* JADX INFO: renamed from: q */
    public int f2290q;

    /* JADX INFO: renamed from: r */
    public boolean f2291r;

    /* JADX INFO: renamed from: s */
    public boolean f2292s;

    /* JADX INFO: renamed from: t */
    public boolean f2293t;

    /* JADX INFO: renamed from: u */
    public boolean f2294u;

    /* JADX INFO: renamed from: v */
    public boolean f2295v;

    /* JADX INFO: renamed from: w */
    public C3243lb f2296w;

    /* JADX INFO: renamed from: x */
    public boolean f2297x;

    public C3241l9(String requestType, String str, C2850Kc c2850Kc, boolean z, InterfaceC3147f5 interfaceC3147f5, String requestContentType, boolean z2) {
        Intrinsics.checkNotNullParameter(requestType, "requestType");
        Intrinsics.checkNotNullParameter(requestContentType, "requestContentType");
        this.f2274a = requestType;
        this.f2275b = str;
        this.f2276c = c2850Kc;
        this.f2277d = z;
        this.f2278e = interfaceC3147f5;
        this.f2279f = requestContentType;
        this.f2280g = z2;
        this.f2281h = "l9";
        this.f2282i = new HashMap();
        this.f2286m = C2849Kb.m1248b();
        this.f2289p = 60000;
        this.f2290q = 60000;
        this.f2291r = true;
        this.f2293t = true;
        this.f2294u = true;
        this.f2295v = true;
        this.f2297x = true;
        if (Intrinsics.areEqual("GET", requestType)) {
            this.f2283j = new HashMap();
        } else if (Intrinsics.areEqual("POST", requestType)) {
            this.f2284k = new HashMap();
            this.f2285l = new JSONObject();
        }
    }

    /* JADX INFO: renamed from: a */
    public final void m2286a(Function1 onResponse) {
        Intrinsics.checkNotNullParameter(onResponse, "onResponse");
        InterfaceC3147f5 interfaceC3147f5 = this.f2278e;
        if (interfaceC3147f5 != null) {
            String str = this.f2281h;
            ((C3162g5) interfaceC3147f5).m2147a(str, AbstractC3208j6.m2261a(str, "TAG", "executeAsync: ").append(this.f2275b).toString());
        }
        m2290e();
        if (!this.f2277d) {
            InterfaceC3147f5 interfaceC3147f52 = this.f2278e;
            if (interfaceC3147f52 != null) {
                String TAG = this.f2281h;
                Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
                ((C3162g5) interfaceC3147f52).m2152c(TAG, "Dropping REQUEST FOR GDPR");
            }
            C3256m9 c3256m9 = new C3256m9();
            c3256m9.f2333c = new C3196i9(EnumC3101c4.f1927j, "Network Request dropped as current request is not GDPR compliant.");
            onResponse.invoke(c3256m9);
            return;
        }
        C3258mb request = m2284a();
        C3226k9 responseListener = new C3226k9(this, onResponse);
        Intrinsics.checkNotNullParameter(responseListener, "responseListener");
        request.f2347l = responseListener;
        Set set = AbstractC3288ob.f2419a;
        Intrinsics.checkNotNullParameter(request, "request");
        Intrinsics.checkNotNullParameter(request, "request");
        AbstractC3288ob.f2419a.add(request);
        AbstractC3288ob.m2337a(request, 0L);
    }

    /* JADX INFO: renamed from: b */
    public final C3256m9 m2287b() {
        C3318qb c3318qbM2218a;
        C3196i9 c3196i9;
        InterfaceC3147f5 interfaceC3147f5 = this.f2278e;
        if (interfaceC3147f5 != null) {
            String str = this.f2281h;
            ((C3162g5) interfaceC3147f5).m2152c(str, AbstractC3208j6.m2261a(str, "TAG", "Executing network request to URL: ").append(this.f2275b).toString());
        }
        m2290e();
        if (!this.f2277d) {
            InterfaceC3147f5 interfaceC3147f52 = this.f2278e;
            if (interfaceC3147f52 != null) {
                String TAG = this.f2281h;
                Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
                ((C3162g5) interfaceC3147f52).m2152c(TAG, "Dropping REQUEST FOR GDPR");
            }
            C3256m9 c3256m9 = new C3256m9();
            c3256m9.f2333c = new C3196i9(EnumC3101c4.f1927j, "Network Request dropped as current request is not GDPR compliant.");
            return c3256m9;
        }
        if (this.f2287n != null) {
            InterfaceC3147f5 interfaceC3147f53 = this.f2278e;
            if (interfaceC3147f53 != null) {
                String str2 = this.f2281h;
                StringBuilder sbM2261a = AbstractC3208j6.m2261a(str2, "TAG", "response has been failed before execute - ");
                C3256m9 c3256m92 = this.f2287n;
                ((C3162g5) interfaceC3147f53).m2152c(str2, sbM2261a.append(c3256m92 != null ? c3256m92.f2333c : null).toString());
            }
            C3256m9 c3256m93 = this.f2287n;
            Intrinsics.checkNotNull(c3256m93);
            return c3256m93;
        }
        C3258mb request = m2284a();
        InterfaceC3147f5 interfaceC3147f54 = this.f2278e;
        if (interfaceC3147f54 != null) {
            String str3 = this.f2281h;
            ((C3162g5) interfaceC3147f54).m2152c(str3, AbstractC3208j6.m2261a(str3, "TAG", "Making network request to: ").append(request.f2336a).toString());
        }
        Intrinsics.checkNotNullParameter(request, "request");
        do {
            c3318qbM2218a = AbstractC3181h9.m2218a(request, (Function2) null);
            c3196i9 = c3318qbM2218a.f2464a;
        } while ((c3196i9 != null ? c3196i9.f2180a : null) == EnumC3101c4.f1930m);
        Intrinsics.checkNotNullParameter(c3318qbM2218a, "<this>");
        C3256m9 response = new C3256m9();
        byte[] value = c3318qbM2218a.f2466c;
        if (value != null) {
            Intrinsics.checkNotNullParameter(value, "value");
            if (value.length == 0) {
                response.f2332b = new byte[0];
            } else {
                byte[] bArr = new byte[value.length];
                response.f2332b = bArr;
                System.arraycopy(value, 0, bArr, 0, value.length);
            }
        }
        response.f2335e = c3318qbM2218a.f2465b;
        response.f2334d = c3318qbM2218a.f2468e;
        response.f2333c = c3318qbM2218a.f2464a;
        Intrinsics.checkNotNullParameter(response, "response");
        Intrinsics.checkNotNullParameter(this, "request");
        return response;
    }

    /* JADX INFO: renamed from: d */
    public final String m2289d() {
        String strConcat = this.f2275b;
        HashMap map = this.f2283j;
        if (map != null) {
            boolean z = C3301p9.f2439a;
            C3301p9.m2348a(map);
            String strM2344a = C3301p9.m2344a("&", (Map) this.f2283j);
            InterfaceC3147f5 interfaceC3147f5 = this.f2278e;
            if (interfaceC3147f5 != null) {
                String str = this.f2281h;
                ((C3162g5) interfaceC3147f5).m2152c(str, AbstractC3223k6.m2276a(str, "TAG", "Get params: ", strM2344a));
            }
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
                if (strConcat != null && !StringsKt.contains$default((CharSequence) strConcat, (CharSequence) "?", false, 2, (Object) null)) {
                    strConcat = strConcat.concat("?");
                }
                if (strConcat != null && !StringsKt.endsWith$default(strConcat, "&", false, 2, (Object) null) && !StringsKt.endsWith$default(strConcat, "?", false, 2, (Object) null)) {
                    strConcat = strConcat.concat("&");
                }
                strConcat = strConcat + strM2344a;
            }
        }
        Intrinsics.checkNotNull(strConcat);
        return strConcat;
    }

    /* JADX INFO: renamed from: e */
    public final void m2290e() {
        mo1146f();
        this.f2282i.put(HttpHeaders.USER_AGENT, C2849Kb.m1259k());
        if (Intrinsics.areEqual("POST", this.f2274a)) {
            this.f2282i.put(HttpHeaders.CONTENT_TYPE, this.f2279f);
            if (this.f2280g) {
                this.f2282i.put(HttpHeaders.CONTENT_ENCODING, "gzip");
            } else {
                this.f2282i.put(HttpHeaders.CONTENT_LENGTH, String.valueOf(m2288c().length()));
            }
        }
    }

    /* JADX INFO: renamed from: f */
    public void mo1146f() {
        HashMap map;
        JSONObject jSONObjectM2413c;
        HashMap map2;
        C3356t4 c3356t4 = C3356t4.f2542a;
        c3356t4.m2425j();
        this.f2277d = c3356t4.m2422a(this.f2277d);
        if (Intrinsics.areEqual("GET", this.f2274a)) {
            HashMap map3 = this.f2283j;
            if (this.f2293t) {
                if (map3 != null) {
                    map3.putAll(C3098c1.f1909e);
                }
                if (map3 != null) {
                    map3.putAll(C2751E3.f962a.m1018a(this.f2288o));
                }
                if (map3 != null) {
                    map3.putAll(AbstractC2782G4.m1139a());
                }
            }
            HashMap map4 = this.f2283j;
            if (this.f2294u) {
                m2285a(map4);
            }
        } else if (Intrinsics.areEqual("POST", this.f2274a)) {
            HashMap map5 = this.f2284k;
            if (this.f2293t) {
                if (map5 != null) {
                    map5.putAll(C3098c1.f1909e);
                }
                if (map5 != null) {
                    map5.putAll(C2751E3.f962a.m1018a(this.f2288o));
                }
                if (map5 != null) {
                    map5.putAll(AbstractC2782G4.m1139a());
                }
            }
            HashMap map6 = this.f2284k;
            if (this.f2294u) {
                m2285a(map6);
            }
        }
        if (this.f2295v && (jSONObjectM2413c = C3356t4.m2413c()) != null) {
            if (Intrinsics.areEqual("GET", this.f2274a)) {
                HashMap map7 = this.f2283j;
                if (map7 != null) {
                    String string = jSONObjectM2413c.toString();
                    Intrinsics.checkNotNullExpressionValue(string, "toString(...)");
                }
            } else if (Intrinsics.areEqual("POST", this.f2274a) && (map2 = this.f2284k) != null) {
                String string2 = jSONObjectM2413c.toString();
                Intrinsics.checkNotNullExpressionValue(string2, "toString(...)");
            }
        }
        if (this.f2297x) {
            if (Intrinsics.areEqual("GET", this.f2274a)) {
                HashMap map8 = this.f2283j;
                if (map8 != null) {
                    return;
                }
                return;
            }
            if (!Intrinsics.areEqual("POST", this.f2274a) || (map = this.f2284k) == null) {
                return;
            }
        }
    }

    /* JADX INFO: renamed from: c */
    public final String m2288c() {
        String str = this.f2279f;
        if (Intrinsics.areEqual(str, "application/json")) {
            return String.valueOf(this.f2285l);
        }
        if (!Intrinsics.areEqual(str, ShareTarget.ENCODING_TYPE_URL_ENCODED)) {
            return "";
        }
        boolean z = C3301p9.f2439a;
        C3301p9.m2348a(this.f2284k);
        return C3301p9.m2344a("&", (Map) this.f2284k);
    }

    public /* synthetic */ C3241l9(String str, String str2, C2850Kc c2850Kc, boolean z, InterfaceC3147f5 interfaceC3147f5, String str3, int i) {
        this(str, str2, c2850Kc, (i & 8) != 0 ? false : z, interfaceC3147f5, (i & 32) != 0 ? ShareTarget.ENCODING_TYPE_URL_ENCODED : str3, false);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public C3241l9(String url, InterfaceC3147f5 interfaceC3147f5) {
        this("GET", url, (C2850Kc) null, false, interfaceC3147f5, ShareTarget.ENCODING_TYPE_URL_ENCODED, 64);
        Intrinsics.checkNotNullParameter("GET", "requestType");
        Intrinsics.checkNotNullParameter(url, "url");
        this.f2295v = false;
    }

    /* JADX INFO: renamed from: a */
    public final C3258mb m2284a() {
        String type = this.f2274a;
        Intrinsics.checkNotNullParameter(type, "type");
        EnumC3213jb method = (!Intrinsics.areEqual(type, "GET") && Intrinsics.areEqual(type, "POST")) ? EnumC3213jb.f2229b : EnumC3213jb.f2228a;
        String url = this.f2275b;
        Intrinsics.checkNotNull(url);
        Intrinsics.checkNotNullParameter(url, "url");
        Intrinsics.checkNotNullParameter(method, "method");
        C3198ib c3198ib = new C3198ib(url, method);
        boolean z = C3301p9.f2439a;
        C3301p9.m2348a(this.f2282i);
        HashMap header = this.f2282i;
        Intrinsics.checkNotNullParameter(header, "header");
        c3198ib.f2185c = header;
        c3198ib.f2190h = Integer.valueOf(this.f2289p);
        c3198ib.f2191i = Integer.valueOf(this.f2290q);
        c3198ib.f2188f = Boolean.valueOf(this.f2291r);
        c3198ib.f2192j = Boolean.valueOf(this.f2292s);
        C3243lb retryPolicy = this.f2296w;
        if (retryPolicy != null) {
            Intrinsics.checkNotNullParameter(retryPolicy, "retryPolicy");
            c3198ib.f2189g = retryPolicy;
        }
        int iOrdinal = method.ordinal();
        if (iOrdinal == 0) {
            HashMap queryParams = this.f2283j;
            if (queryParams != null) {
                InterfaceC3147f5 interfaceC3147f5 = this.f2278e;
                if (interfaceC3147f5 != null) {
                    String TAG = this.f2281h;
                    Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
                    ((C3162g5) interfaceC3147f5).m2152c(TAG, "getParams " + queryParams);
                }
                Intrinsics.checkNotNullParameter(queryParams, "queryParams");
                c3198ib.f2186d = queryParams;
            }
        } else if (iOrdinal == 1) {
            String postBody = m2288c();
            InterfaceC3147f5 interfaceC3147f52 = this.f2278e;
            if (interfaceC3147f52 != null) {
                String str = this.f2281h;
                ((C3162g5) interfaceC3147f52).m2152c(str, AbstractC3223k6.m2276a(str, "TAG", "httpPostBody ", postBody));
            }
            Intrinsics.checkNotNullParameter(postBody, "postBody");
            c3198ib.f2187e = postBody;
        }
        return new C3258mb(c3198ib);
    }

    /* JADX INFO: renamed from: a */
    public final void m2285a(HashMap map) {
        C2969T0 c2969t0M1202b;
        String strM1807a;
        C2850Kc c2850Kc = this.f2276c;
        if (c2850Kc == null || map == null) {
            return;
        }
        HashMap map2 = new HashMap();
        HashMap map3 = new HashMap();
        try {
            if (c2850Kc.f1180a.m835a() && (c2969t0M1202b = C2835Jc.f1140a.m1202b()) != null && (strM1807a = c2969t0M1202b.m1807a()) != null) {
                Intrinsics.checkNotNull(strM1807a);
                map3.put("GPID", strM1807a);
            }
        } catch (Exception unused) {
            Intrinsics.checkNotNullExpressionValue("Kc", "getSimpleName(...)");
        }
        String string = new JSONObject(map3).toString();
        Intrinsics.checkNotNullExpressionValue(string, "toString(...)");
        map2.put("u-id-map", string);
        map.putAll(map2);
    }
}
