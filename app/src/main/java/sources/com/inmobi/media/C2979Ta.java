package com.inmobi.media;

import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: renamed from: com.inmobi.media.Ta */
/* JADX INFO: loaded from: classes6.dex */
public final class C2979Ta implements InterfaceC3338s1 {

    /* JADX INFO: renamed from: a */
    public final /* synthetic */ GestureDetectorOnGestureListenerC3049Ya f1552a;

    public C2979Ta(GestureDetectorOnGestureListenerC3049Ya gestureDetectorOnGestureListenerC3049Ya) {
        this.f1552a = gestureDetectorOnGestureListenerC3049Ya;
    }

    @Override // com.inmobi.media.InterfaceC3338s1
    /* JADX INFO: renamed from: a */
    public final void mo1823a(C3216k assetBatch, byte b) {
        Intrinsics.checkNotNullParameter(assetBatch, "assetBatch");
        if (assetBatch.f2245c == null || assetBatch.f2249g.size() <= 0) {
            return;
        }
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("url", ((C3201j) assetBatch.f2249g.get(0)).f2204b);
            jSONObject.put("reason", (int) ((C3201j) assetBatch.f2249g.get(0)).f2214l);
        } catch (JSONException unused) {
        }
        String string = jSONObject.toString();
        Intrinsics.checkNotNullExpressionValue(string, "toString(...)");
        String str = "sendSaveContentResult(\"saveContent_" + assetBatch.f2248f + "\", 'failed', \"" + StringsKt.replace$default(string, "\"", "\\\"", false, 4, (Object) null) + "\");";
        InterfaceC3147f5 interfaceC3147f5 = this.f1552a.f1749i;
        if (interfaceC3147f5 != null) {
            String str2 = GestureDetectorOnGestureListenerC3049Ya.f1696P0;
            ((C3162g5) interfaceC3147f5).m2151b(str2, AbstractC3223k6.m2276a(str2, "access$getTAG$cp(...)", "Failure injection ", str));
        }
        this.f1552a.m1953a(assetBatch.f2245c, str);
    }

    @Override // com.inmobi.media.InterfaceC3338s1
    /* JADX INFO: renamed from: a */
    public final void mo1822a(C3216k assetBatch) {
        Intrinsics.checkNotNullParameter(assetBatch, "assetBatch");
        if (assetBatch.f2245c == null || assetBatch.f2249g.size() <= 0) {
            return;
        }
        String str = "sendSaveContentResult(\"saveContent_" + assetBatch.f2248f + "\", 'success', \"" + ((C3201j) assetBatch.f2249g.get(0)).f2212j + "\");";
        InterfaceC3147f5 interfaceC3147f5 = this.f1552a.f1749i;
        if (interfaceC3147f5 != null) {
            String str2 = GestureDetectorOnGestureListenerC3049Ya.f1696P0;
            ((C3162g5) interfaceC3147f5).m2147a(str2, AbstractC3223k6.m2276a(str2, "access$getTAG$cp(...)", "Success injection ", str));
        }
        this.f1552a.m1953a(assetBatch.f2245c, str);
    }
}
