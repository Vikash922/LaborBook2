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

/* JADX INFO: renamed from: com.inmobi.media.l9, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes6.dex */
public class C0397l9 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f413a;
    public final String b;
    public final Kc c;
    public boolean d;
    public final InterfaceC0298f5 e;
    public final String f;
    public final boolean g;
    public final String h;
    public final HashMap i;
    public final HashMap j;
    public final HashMap k;
    public JSONObject l;
    public String m;
    public C0412m9 n;
    public boolean o;
    public int p;
    public int q;
    public boolean r;
    public boolean s;
    public boolean t;
    public boolean u;
    public boolean v;
    public C0399lb w;
    public boolean x;

    public C0397l9(String requestType, String str, Kc kc, boolean z, InterfaceC0298f5 interfaceC0298f5, String requestContentType, boolean z2) {
        Intrinsics.checkNotNullParameter(requestType, "requestType");
        Intrinsics.checkNotNullParameter(requestContentType, "requestContentType");
        this.f413a = requestType;
        this.b = str;
        this.c = kc;
        this.d = z;
        this.e = interfaceC0298f5;
        this.f = requestContentType;
        this.g = z2;
        this.h = "l9";
        this.i = new HashMap();
        this.m = Kb.b();
        this.p = 60000;
        this.q = 60000;
        this.r = true;
        this.t = true;
        this.u = true;
        this.v = true;
        this.x = true;
        if (Intrinsics.areEqual("GET", requestType)) {
            this.j = new HashMap();
        } else if (Intrinsics.areEqual("POST", requestType)) {
            this.k = new HashMap();
            this.l = new JSONObject();
        }
    }

    public final void a(Function1 onResponse) {
        Intrinsics.checkNotNullParameter(onResponse, "onResponse");
        InterfaceC0298f5 interfaceC0298f5 = this.e;
        if (interfaceC0298f5 != null) {
            String str = this.h;
            ((C0314g5) interfaceC0298f5).a(str, AbstractC0363j6.a(str, "TAG", "executeAsync: ").append(this.b).toString());
        }
        e();
        if (!this.d) {
            InterfaceC0298f5 interfaceC0298f52 = this.e;
            if (interfaceC0298f52 != null) {
                String TAG = this.h;
                Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
                ((C0314g5) interfaceC0298f52).c(TAG, "Dropping REQUEST FOR GDPR");
            }
            C0412m9 c0412m9 = new C0412m9();
            c0412m9.c = new C0350i9(EnumC0250c4.j, "Network Request dropped as current request is not GDPR compliant.");
            onResponse.invoke(c0412m9);
            return;
        }
        C0414mb request = a();
        C0381k9 responseListener = new C0381k9(this, onResponse);
        Intrinsics.checkNotNullParameter(responseListener, "responseListener");
        request.l = responseListener;
        Set set = AbstractC0444ob.f448a;
        Intrinsics.checkNotNullParameter(request, "request");
        Intrinsics.checkNotNullParameter(request, "request");
        AbstractC0444ob.f448a.add(request);
        AbstractC0444ob.a(request, 0L);
    }

    public final C0412m9 b() {
        C0474qb c0474qbA;
        C0350i9 c0350i9;
        InterfaceC0298f5 interfaceC0298f5 = this.e;
        if (interfaceC0298f5 != null) {
            String str = this.h;
            ((C0314g5) interfaceC0298f5).c(str, AbstractC0363j6.a(str, "TAG", "Executing network request to URL: ").append(this.b).toString());
        }
        e();
        if (!this.d) {
            InterfaceC0298f5 interfaceC0298f52 = this.e;
            if (interfaceC0298f52 != null) {
                String TAG = this.h;
                Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
                ((C0314g5) interfaceC0298f52).c(TAG, "Dropping REQUEST FOR GDPR");
            }
            C0412m9 c0412m9 = new C0412m9();
            c0412m9.c = new C0350i9(EnumC0250c4.j, "Network Request dropped as current request is not GDPR compliant.");
            return c0412m9;
        }
        if (this.n != null) {
            InterfaceC0298f5 interfaceC0298f53 = this.e;
            if (interfaceC0298f53 != null) {
                String str2 = this.h;
                StringBuilder sbA = AbstractC0363j6.a(str2, "TAG", "response has been failed before execute - ");
                C0412m9 c0412m92 = this.n;
                ((C0314g5) interfaceC0298f53).c(str2, sbA.append(c0412m92 != null ? c0412m92.c : null).toString());
            }
            C0412m9 c0412m93 = this.n;
            Intrinsics.checkNotNull(c0412m93);
            return c0412m93;
        }
        C0414mb request = a();
        InterfaceC0298f5 interfaceC0298f54 = this.e;
        if (interfaceC0298f54 != null) {
            String str3 = this.h;
            ((C0314g5) interfaceC0298f54).c(str3, AbstractC0363j6.a(str3, "TAG", "Making network request to: ").append(request.f425a).toString());
        }
        Intrinsics.checkNotNullParameter(request, "request");
        do {
            c0474qbA = AbstractC0335h9.a(request, (Function2) null);
            c0350i9 = c0474qbA.f463a;
        } while ((c0350i9 != null ? c0350i9.f385a : null) == EnumC0250c4.m);
        Intrinsics.checkNotNullParameter(c0474qbA, "<this>");
        C0412m9 response = new C0412m9();
        byte[] value = c0474qbA.c;
        if (value != null) {
            Intrinsics.checkNotNullParameter(value, "value");
            if (value.length == 0) {
                response.b = new byte[0];
            } else {
                byte[] bArr = new byte[value.length];
                response.b = bArr;
                System.arraycopy(value, 0, bArr, 0, value.length);
            }
        }
        response.e = c0474qbA.b;
        response.d = c0474qbA.e;
        response.c = c0474qbA.f463a;
        Intrinsics.checkNotNullParameter(response, "response");
        Intrinsics.checkNotNullParameter(this, "request");
        return response;
    }

    public final String d() {
        String strConcat = this.b;
        HashMap map = this.j;
        if (map != null) {
            boolean z = C0457p9.f457a;
            C0457p9.a(map);
            String strA = C0457p9.a("&", (Map) this.j);
            InterfaceC0298f5 interfaceC0298f5 = this.e;
            if (interfaceC0298f5 != null) {
                String str = this.h;
                ((C0314g5) interfaceC0298f5).c(str, AbstractC0378k6.a(str, "TAG", "Get params: ", strA));
            }
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
                if (strConcat != null && !StringsKt.contains$default((CharSequence) strConcat, (CharSequence) "?", false, 2, (Object) null)) {
                    strConcat = strConcat.concat("?");
                }
                if (strConcat != null && !StringsKt.endsWith$default(strConcat, "&", false, 2, (Object) null) && !StringsKt.endsWith$default(strConcat, "?", false, 2, (Object) null)) {
                    strConcat = strConcat.concat("&");
                }
                strConcat = strConcat + strA;
            }
        }
        Intrinsics.checkNotNull(strConcat);
        return strConcat;
    }

    public final void e() {
        f();
        this.i.put(HttpHeaders.USER_AGENT, Kb.k());
        if (Intrinsics.areEqual("POST", this.f413a)) {
            this.i.put(HttpHeaders.CONTENT_TYPE, this.f);
            if (this.g) {
                this.i.put(HttpHeaders.CONTENT_ENCODING, "gzip");
            } else {
                this.i.put(HttpHeaders.CONTENT_LENGTH, String.valueOf(c().length()));
            }
        }
    }

    public void f() {
        HashMap map;
        JSONObject jSONObjectC;
        HashMap map2;
        C0508t4 c0508t4 = C0508t4.f487a;
        c0508t4.j();
        this.d = c0508t4.a(this.d);
        if (Intrinsics.areEqual("GET", this.f413a)) {
            HashMap map3 = this.j;
            if (this.t) {
                if (map3 != null) {
                    map3.putAll(C0247c1.e);
                }
                if (map3 != null) {
                    map3.putAll(E3.f104a.a(this.o));
                }
                if (map3 != null) {
                    map3.putAll(G4.a());
                }
            }
            HashMap map4 = this.j;
            if (this.u) {
                a(map4);
            }
        } else if (Intrinsics.areEqual("POST", this.f413a)) {
            HashMap map5 = this.k;
            if (this.t) {
                if (map5 != null) {
                    map5.putAll(C0247c1.e);
                }
                if (map5 != null) {
                    map5.putAll(E3.f104a.a(this.o));
                }
                if (map5 != null) {
                    map5.putAll(G4.a());
                }
            }
            HashMap map6 = this.k;
            if (this.u) {
                a(map6);
            }
        }
        if (this.v && (jSONObjectC = C0508t4.c()) != null) {
            if (Intrinsics.areEqual("GET", this.f413a)) {
                HashMap map7 = this.j;
                if (map7 != null) {
                    String string = jSONObjectC.toString();
                    Intrinsics.checkNotNullExpressionValue(string, "toString(...)");
                }
            } else if (Intrinsics.areEqual("POST", this.f413a) && (map2 = this.k) != null) {
                String string2 = jSONObjectC.toString();
                Intrinsics.checkNotNullExpressionValue(string2, "toString(...)");
            }
        }
        if (this.x) {
            if (Intrinsics.areEqual("GET", this.f413a)) {
                HashMap map8 = this.j;
                if (map8 != null) {
                    return;
                }
                return;
            }
            if (!Intrinsics.areEqual("POST", this.f413a) || (map = this.k) == null) {
                return;
            }
        }
    }

    public final String c() {
        String str = this.f;
        if (Intrinsics.areEqual(str, "application/json")) {
            return String.valueOf(this.l);
        }
        if (!Intrinsics.areEqual(str, ShareTarget.ENCODING_TYPE_URL_ENCODED)) {
            return "";
        }
        boolean z = C0457p9.f457a;
        C0457p9.a(this.k);
        return C0457p9.a("&", (Map) this.k);
    }

    public /* synthetic */ C0397l9(String str, String str2, Kc kc, boolean z, InterfaceC0298f5 interfaceC0298f5, String str3, int i) {
        this(str, str2, kc, (i & 8) != 0 ? false : z, interfaceC0298f5, (i & 32) != 0 ? ShareTarget.ENCODING_TYPE_URL_ENCODED : str3, false);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public C0397l9(String url, InterfaceC0298f5 interfaceC0298f5) {
        this("GET", url, (Kc) null, false, interfaceC0298f5, ShareTarget.ENCODING_TYPE_URL_ENCODED, 64);
        Intrinsics.checkNotNullParameter("GET", "requestType");
        Intrinsics.checkNotNullParameter(url, "url");
        this.v = false;
    }

    public final C0414mb a() {
        String type = this.f413a;
        Intrinsics.checkNotNullParameter(type, "type");
        EnumC0368jb method = (!Intrinsics.areEqual(type, "GET") && Intrinsics.areEqual(type, "POST")) ? EnumC0368jb.b : EnumC0368jb.f396a;
        String url = this.b;
        Intrinsics.checkNotNull(url);
        Intrinsics.checkNotNullParameter(url, "url");
        Intrinsics.checkNotNullParameter(method, "method");
        C0352ib c0352ib = new C0352ib(url, method);
        boolean z = C0457p9.f457a;
        C0457p9.a(this.i);
        HashMap header = this.i;
        Intrinsics.checkNotNullParameter(header, "header");
        c0352ib.c = header;
        c0352ib.h = Integer.valueOf(this.p);
        c0352ib.i = Integer.valueOf(this.q);
        c0352ib.f = Boolean.valueOf(this.r);
        c0352ib.j = Boolean.valueOf(this.s);
        C0399lb retryPolicy = this.w;
        if (retryPolicy != null) {
            Intrinsics.checkNotNullParameter(retryPolicy, "retryPolicy");
            c0352ib.g = retryPolicy;
        }
        int iOrdinal = method.ordinal();
        if (iOrdinal == 0) {
            HashMap queryParams = this.j;
            if (queryParams != null) {
                InterfaceC0298f5 interfaceC0298f5 = this.e;
                if (interfaceC0298f5 != null) {
                    String TAG = this.h;
                    Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
                    ((C0314g5) interfaceC0298f5).c(TAG, "getParams " + queryParams);
                }
                Intrinsics.checkNotNullParameter(queryParams, "queryParams");
                c0352ib.d = queryParams;
            }
        } else if (iOrdinal == 1) {
            String postBody = c();
            InterfaceC0298f5 interfaceC0298f52 = this.e;
            if (interfaceC0298f52 != null) {
                String str = this.h;
                ((C0314g5) interfaceC0298f52).c(str, AbstractC0378k6.a(str, "TAG", "httpPostBody ", postBody));
            }
            Intrinsics.checkNotNullParameter(postBody, "postBody");
            c0352ib.e = postBody;
        }
        return new C0414mb(c0352ib);
    }

    public final void a(HashMap map) {
        T0 t0B;
        String strA;
        Kc kc = this.c;
        if (kc == null || map == null) {
            return;
        }
        HashMap map2 = new HashMap();
        HashMap map3 = new HashMap();
        try {
            if (kc.f163a.a() && (t0B = Jc.f151a.b()) != null && (strA = t0B.a()) != null) {
                Intrinsics.checkNotNull(strA);
                map3.put("GPID", strA);
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
