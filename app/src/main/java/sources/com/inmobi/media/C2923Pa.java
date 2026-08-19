package com.inmobi.media;

import com.itextpdf.styledxmlparser.css.CommonCssConstants;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: renamed from: com.inmobi.media.Pa */
/* JADX INFO: loaded from: classes6.dex */
public final class C2923Pa implements InterfaceC3099c2 {

    /* JADX INFO: renamed from: a */
    public final /* synthetic */ GestureDetectorOnGestureListenerC3049Ya f1396a;

    public C2923Pa(GestureDetectorOnGestureListenerC3049Ya gestureDetectorOnGestureListenerC3049Ya) {
        this.f1396a = gestureDetectorOnGestureListenerC3049Ya;
    }

    @Override // com.inmobi.media.InterfaceC3099c2
    /* JADX INFO: renamed from: a */
    public final void mo1523a(String url, String api, C3358t6 c3358t6) {
        Intrinsics.checkNotNullParameter(url, "url");
        Intrinsics.checkNotNullParameter(api, "api");
        this.f1396a.getLandingPageHandler().m2326a(url, api, c3358t6);
    }

    @Override // com.inmobi.media.InterfaceC3099c2
    /* JADX INFO: renamed from: b */
    public final void mo1524b() throws JSONException {
        InterfaceC3147f5 interfaceC3147f5 = this.f1396a.f1749i;
        if (interfaceC3147f5 != null) {
            String str = GestureDetectorOnGestureListenerC3049Ya.f1696P0;
            Intrinsics.checkNotNullExpressionValue(str, "access$getTAG$cp(...)");
            ((C3162g5) interfaceC3147f5).m2147a(str, "onCCTScreenDisplayed");
        }
        this.f1396a.getListener().mo1227e(this.f1396a);
        GestureDetectorOnGestureListenerC3049Ya.m1945a(this.f1396a, null, null, null);
        GestureDetectorOnGestureListenerC3049Ya gestureDetectorOnGestureListenerC3049Ya = this.f1396a;
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("event", "customTabOpen");
        gestureDetectorOnGestureListenerC3049Ya.m1957a(jSONObject);
    }

    @Override // com.inmobi.media.InterfaceC3099c2
    /* JADX INFO: renamed from: c */
    public final void mo1525c() {
        InterfaceC3147f5 interfaceC3147f5 = this.f1396a.f1749i;
        if (interfaceC3147f5 != null) {
            String str = GestureDetectorOnGestureListenerC3049Ya.f1696P0;
            Intrinsics.checkNotNullExpressionValue(str, "access$getTAG$cp(...)");
            ((C3162g5) interfaceC3147f5).m2147a(str, "onCCTPageLoadedSuccessfully");
        }
        this.f1396a.m1978m();
    }

    @Override // com.inmobi.media.InterfaceC3099c2
    /* JADX INFO: renamed from: a */
    public final void mo1522a(EnumC3178h6 funnelState, C3358t6 c3358t6, Integer num) {
        Intrinsics.checkNotNullParameter(funnelState, "landingPageFunnelState");
        C3283o6 landingPageHandler = this.f1396a.getLandingPageHandler();
        landingPageHandler.getClass();
        Intrinsics.checkNotNullParameter(funnelState, "funnelState");
        C3238l6.m2282a(funnelState, c3358t6, num, new C3268n6(landingPageHandler));
    }

    @Override // com.inmobi.media.InterfaceC3099c2
    /* JADX INFO: renamed from: a */
    public final void mo1520a() throws JSONException {
        InterfaceC3147f5 interfaceC3147f5 = this.f1396a.f1749i;
        if (interfaceC3147f5 != null) {
            String str = GestureDetectorOnGestureListenerC3049Ya.f1696P0;
            Intrinsics.checkNotNullExpressionValue(str, "access$getTAG$cp(...)");
            ((C3162g5) interfaceC3147f5).m2147a(str, "onCCTScreenDismissed");
        }
        this.f1396a.m1988w();
        GestureDetectorOnGestureListenerC3049Ya gestureDetectorOnGestureListenerC3049Ya = this.f1396a;
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("event", "customTabClose");
        gestureDetectorOnGestureListenerC3049Ya.m1957a(jSONObject);
    }

    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:593)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    @Override // com.inmobi.media.InterfaceC3099c2
    /* JADX INFO: renamed from: a */
    public final void mo1521a(int i, int i2, int i3, int i4, int i5) throws JSONException {
        InterfaceC3147f5 interfaceC3147f5 = this.f1396a.f1749i;
        if (interfaceC3147f5 != null) {
            String str = GestureDetectorOnGestureListenerC3049Ya.f1696P0;
            Intrinsics.checkNotNullExpressionValue(str, "access$getTAG$cp(...)");
            ((C3162g5) interfaceC3147f5).m2147a(str, "onCCTLayout");
        }
        GestureDetectorOnGestureListenerC3049Ya gestureDetectorOnGestureListenerC3049Ya = this.f1396a;
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("event", "customTabLayout");
        JSONObject jSONObject2 = new JSONObject();
        jSONObject2.put("left", AbstractC3429y2.m2602a(i));
        jSONObject2.put("top", AbstractC3429y2.m2602a(i2));
        jSONObject2.put("right", AbstractC3429y2.m2602a(i3));
        jSONObject2.put(CommonCssConstants.BOTTOM, AbstractC3429y2.m2602a(i4));
        jSONObject2.put("state", i5);
        Unit unit = Unit.INSTANCE;
        jSONObject.put("layout", jSONObject2);
        gestureDetectorOnGestureListenerC3049Ya.m1957a(jSONObject);
    }
}
