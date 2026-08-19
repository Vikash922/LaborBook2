package com.inmobi.media;

import kotlin.jvm.internal.Intrinsics;
import org.json.JSONObject;

/* JADX INFO: renamed from: com.inmobi.media.l5, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes6.dex */
public final class RunnableC0392l5 implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Oc f411a;
    public final Rc b;

    public RunnableC0392l5(Oc oc, Rc request) {
        Intrinsics.checkNotNullParameter(request, "request");
        this.f411a = oc;
        this.b = request;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i = 0;
        while (true) {
            Rc rc = this.b;
            if (i > rc.y) {
                return;
            }
            C0412m9 c0412m9B = rc.b();
            if (this.b.A.get()) {
                return;
            }
            if (c0412m9B.b()) {
                Intrinsics.checkNotNullExpressionValue("l5", "TAG");
                C0350i9 c0350i9 = c0412m9B.c;
                if (i == this.b.y) {
                    this.f411a.a(c0350i9);
                    return;
                }
            } else {
                try {
                    JSONObject jSONObject = new JSONObject(c0412m9B.a());
                    if (Intrinsics.areEqual(JSONObject.class, JSONObject.class)) {
                        this.f411a.a(jSONObject);
                        return;
                    } else {
                        this.f411a.a(new U5().a(jSONObject, JSONObject.class));
                        return;
                    }
                } catch (Exception e) {
                    Intrinsics.checkNotNullExpressionValue("l5", "TAG");
                    if (i == this.b.y) {
                        Oc oc = this.f411a;
                        EnumC0250c4 enumC0250c4 = EnumC0250c4.l;
                        String message = e.getMessage();
                        if (message == null) {
                            message = "Exception while parsing the response";
                        }
                        oc.a(new C0350i9(enumC0250c4, message));
                        return;
                    }
                }
            }
            try {
                Thread.sleep(this.b.z * 1000);
            } catch (InterruptedException unused) {
                Intrinsics.checkNotNullExpressionValue("l5", "TAG");
            }
            if (this.b.A.get()) {
                return;
            } else {
                i++;
            }
        }
    }
}
