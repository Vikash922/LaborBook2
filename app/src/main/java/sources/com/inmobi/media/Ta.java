package com.inmobi.media;

import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public final class Ta implements InterfaceC0491s1 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ Ya f248a;

    public Ta(Ya ya) {
        this.f248a = ya;
    }

    @Override // com.inmobi.media.InterfaceC0491s1
    public final void a(C0371k assetBatch, byte b) {
        Intrinsics.checkNotNullParameter(assetBatch, "assetBatch");
        if (assetBatch.c == null || assetBatch.g.size() <= 0) {
            return;
        }
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("url", ((C0356j) assetBatch.g.get(0)).b);
            jSONObject.put("reason", (int) ((C0356j) assetBatch.g.get(0)).l);
        } catch (JSONException unused) {
        }
        String string = jSONObject.toString();
        Intrinsics.checkNotNullExpressionValue(string, "toString(...)");
        String str = "sendSaveContentResult(\"saveContent_" + assetBatch.f + "\", 'failed', \"" + StringsKt.replace$default(string, "\"", "\\\"", false, 4, (Object) null) + "\");";
        InterfaceC0298f5 interfaceC0298f5 = this.f248a.i;
        if (interfaceC0298f5 != null) {
            String str2 = Ya.P0;
            ((C0314g5) interfaceC0298f5).b(str2, AbstractC0378k6.a(str2, "access$getTAG$cp(...)", "Failure injection ", str));
        }
        this.f248a.a(assetBatch.c, str);
    }

    @Override // com.inmobi.media.InterfaceC0491s1
    public final void a(C0371k assetBatch) {
        Intrinsics.checkNotNullParameter(assetBatch, "assetBatch");
        if (assetBatch.c == null || assetBatch.g.size() <= 0) {
            return;
        }
        String str = "sendSaveContentResult(\"saveContent_" + assetBatch.f + "\", 'success', \"" + ((C0356j) assetBatch.g.get(0)).j + "\");";
        InterfaceC0298f5 interfaceC0298f5 = this.f248a.i;
        if (interfaceC0298f5 != null) {
            String str2 = Ya.P0;
            ((C0314g5) interfaceC0298f5).a(str2, AbstractC0378k6.a(str2, "access$getTAG$cp(...)", "Success injection ", str));
        }
        this.f248a.a(assetBatch.c, str);
    }
}
