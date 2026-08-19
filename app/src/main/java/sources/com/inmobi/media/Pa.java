package com.inmobi.media;

import com.itextpdf.styledxmlparser.css.CommonCssConstants;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public final class Pa implements InterfaceC0248c2 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ Ya f216a;

    public Pa(Ya ya) {
        this.f216a = ya;
    }

    @Override // com.inmobi.media.InterfaceC0248c2
    public final void a(String url, String api, C0510t6 c0510t6) {
        Intrinsics.checkNotNullParameter(url, "url");
        Intrinsics.checkNotNullParameter(api, "api");
        this.f216a.getLandingPageHandler().a(url, api, c0510t6);
    }

    @Override // com.inmobi.media.InterfaceC0248c2
    public final void b() throws JSONException {
        InterfaceC0298f5 interfaceC0298f5 = this.f216a.i;
        if (interfaceC0298f5 != null) {
            String str = Ya.P0;
            Intrinsics.checkNotNullExpressionValue(str, "access$getTAG$cp(...)");
            ((C0314g5) interfaceC0298f5).a(str, "onCCTScreenDisplayed");
        }
        this.f216a.getListener().e(this.f216a);
        Ya.a(this.f216a, null, null, null);
        Ya ya = this.f216a;
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("event", "customTabOpen");
        ya.a(jSONObject);
    }

    @Override // com.inmobi.media.InterfaceC0248c2
    public final void c() {
        InterfaceC0298f5 interfaceC0298f5 = this.f216a.i;
        if (interfaceC0298f5 != null) {
            String str = Ya.P0;
            Intrinsics.checkNotNullExpressionValue(str, "access$getTAG$cp(...)");
            ((C0314g5) interfaceC0298f5).a(str, "onCCTPageLoadedSuccessfully");
        }
        this.f216a.m();
    }

    @Override // com.inmobi.media.InterfaceC0248c2
    public final void a(EnumC0332h6 funnelState, C0510t6 c0510t6, Integer num) {
        Intrinsics.checkNotNullParameter(funnelState, "landingPageFunnelState");
        C0439o6 landingPageHandler = this.f216a.getLandingPageHandler();
        landingPageHandler.getClass();
        Intrinsics.checkNotNullParameter(funnelState, "funnelState");
        C0393l6.a(funnelState, c0510t6, num, new C0424n6(landingPageHandler));
    }

    @Override // com.inmobi.media.InterfaceC0248c2
    public final void a() throws JSONException {
        InterfaceC0298f5 interfaceC0298f5 = this.f216a.i;
        if (interfaceC0298f5 != null) {
            String str = Ya.P0;
            Intrinsics.checkNotNullExpressionValue(str, "access$getTAG$cp(...)");
            ((C0314g5) interfaceC0298f5).a(str, "onCCTScreenDismissed");
        }
        this.f216a.w();
        Ya ya = this.f216a;
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("event", "customTabClose");
        ya.a(jSONObject);
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
    @Override // com.inmobi.media.InterfaceC0248c2
    public final void a(int i, int i2, int i3, int i4, int i5) throws JSONException {
        InterfaceC0298f5 interfaceC0298f5 = this.f216a.i;
        if (interfaceC0298f5 != null) {
            String str = Ya.P0;
            Intrinsics.checkNotNullExpressionValue(str, "access$getTAG$cp(...)");
            ((C0314g5) interfaceC0298f5).a(str, "onCCTLayout");
        }
        Ya ya = this.f216a;
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("event", "customTabLayout");
        JSONObject jSONObject2 = new JSONObject();
        jSONObject2.put("left", AbstractC0576y2.a(i));
        jSONObject2.put("top", AbstractC0576y2.a(i2));
        jSONObject2.put("right", AbstractC0576y2.a(i3));
        jSONObject2.put(CommonCssConstants.BOTTOM, AbstractC0576y2.a(i4));
        jSONObject2.put("state", i5);
        Unit unit = Unit.INSTANCE;
        jSONObject.put("layout", jSONObject2);
        ya.a(jSONObject);
    }
}
