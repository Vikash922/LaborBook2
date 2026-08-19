package com.inmobi.media;

import kotlin.jvm.internal.Intrinsics;
import org.json.JSONObject;

/* JADX INFO: renamed from: com.inmobi.media.l5 */
/* JADX INFO: loaded from: classes6.dex */
public final class RunnableC3237l5 implements Runnable {

    /* JADX INFO: renamed from: a */
    public final C2910Oc f2271a;

    /* JADX INFO: renamed from: b */
    public final C2953Rc f2272b;

    public RunnableC3237l5(C2910Oc c2910Oc, C2953Rc request) {
        Intrinsics.checkNotNullParameter(request, "request");
        this.f2271a = c2910Oc;
        this.f2272b = request;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i = 0;
        while (true) {
            C2953Rc c2953Rc = this.f2272b;
            if (i > c2953Rc.f2510y) {
                return;
            }
            C3256m9 c3256m9M2287b = c2953Rc.m2287b();
            if (this.f2272b.f2509A.get()) {
                return;
            }
            if (c3256m9M2287b.m2297b()) {
                Intrinsics.checkNotNullExpressionValue("l5", "TAG");
                C3196i9 c3196i9 = c3256m9M2287b.f2333c;
                if (i == this.f2272b.f2510y) {
                    this.f2271a.m1422a(c3196i9);
                    return;
                }
            } else {
                try {
                    JSONObject jSONObject = new JSONObject(c3256m9M2287b.m2296a());
                    if (Intrinsics.areEqual(JSONObject.class, JSONObject.class)) {
                        this.f2271a.m1423a(jSONObject);
                        return;
                    } else {
                        this.f2271a.m1423a(new C2988U5().m1843a(jSONObject, JSONObject.class));
                        return;
                    }
                } catch (Exception e) {
                    Intrinsics.checkNotNullExpressionValue("l5", "TAG");
                    if (i == this.f2272b.f2510y) {
                        C2910Oc c2910Oc = this.f2271a;
                        EnumC3101c4 enumC3101c4 = EnumC3101c4.f1929l;
                        String message = e.getMessage();
                        if (message == null) {
                            message = "Exception while parsing the response";
                        }
                        c2910Oc.m1422a(new C3196i9(enumC3101c4, message));
                        return;
                    }
                }
            }
            try {
                Thread.sleep(this.f2272b.f2511z * 1000);
            } catch (InterruptedException unused) {
                Intrinsics.checkNotNullExpressionValue("l5", "TAG");
            }
            if (this.f2272b.f2509A.get()) {
                return;
            } else {
                i++;
            }
        }
    }
}
