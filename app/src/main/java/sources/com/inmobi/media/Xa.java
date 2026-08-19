package com.inmobi.media;

import android.view.View;
import android.view.ViewGroup;
import android.widget.RelativeLayout;
import com.itextpdf.styledxmlparser.css.media.MediaFeature;
import kotlin.jvm.internal.Intrinsics;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public final class Xa extends Md {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ Ya f280a;

    public Xa(Ya ya) {
        this.f280a = ya;
    }

    @Override // com.inmobi.media.Md
    public final boolean a() {
        return !Intrinsics.areEqual("Hidden", this.f280a.getViewState());
    }

    @Override // com.inmobi.media.Md
    public final void a(I9 orientation, Od finalInsets) {
        JSONObject jSONObjectA;
        Nd nd;
        Intrinsics.checkNotNullParameter(orientation, "orientation");
        Intrinsics.checkNotNullParameter(finalInsets, "finalInsets");
        Ya ya = this.f280a;
        InterfaceC0298f5 interfaceC0298f5 = ya.i;
        if (interfaceC0298f5 != null) {
            String str = Ya.P0;
            ((C0314g5) interfaceC0298f5).c(str, Wa.a(ya, str, "TAG", "fireOnSafeAreaChanged "));
        }
        StringBuilder sb = new StringBuilder("window.imraid.broadcastEvent('onSafeAreaChange', ");
        Intrinsics.checkNotNullParameter(finalInsets, "<this>");
        Intrinsics.checkNotNullParameter(orientation, "orientation");
        try {
            finalInsets.getClass();
            Intrinsics.checkNotNullParameter(orientation, "orientation");
            nd = (Nd) finalInsets.f208a.get(orientation);
        } catch (Exception unused) {
        }
        if (nd != null) {
            jSONObjectA = nd.a();
            jSONObjectA.put(MediaFeature.ORIENTATION, J9.a(orientation));
        } else {
            jSONObjectA = null;
        }
        ya.b(sb.append(jSONObjectA).append(')').toString());
        Ya renderView = this.f280a;
        renderView.getClass();
        finalInsets.getClass();
        Intrinsics.checkNotNullParameter(orientation, "orientation");
        Nd nd2 = (Nd) finalInsets.f208a.get(orientation);
        if (nd2 == null) {
            return;
        }
        if (nd2.b == 0 && nd2.c == 0) {
            return;
        }
        renderView.setCloseAssetArea(nd2);
        Intrinsics.checkNotNullParameter(renderView, "renderView");
        Nd insets = renderView.M0;
        Intrinsics.checkNotNullParameter(insets, "insets");
        View viewFindViewById = renderView.getRootView().findViewById(65531);
        C0507t3 c0507t3 = viewFindViewById instanceof C0507t3 ? (C0507t3) viewFindViewById : null;
        if (c0507t3 == null) {
            return;
        }
        View viewFindViewById2 = renderView.getRootView().findViewById(65531);
        C0507t3 c0507t32 = viewFindViewById2 instanceof C0507t3 ? (C0507t3) viewFindViewById2 : null;
        if (c0507t32 == null) {
            return;
        }
        ViewGroup.LayoutParams layoutParams = c0507t3.getLayoutParams();
        RelativeLayout.LayoutParams layoutParams2 = layoutParams instanceof RelativeLayout.LayoutParams ? (RelativeLayout.LayoutParams) layoutParams : null;
        if (layoutParams2 == null) {
            return;
        }
        ViewGroup.LayoutParams layoutParams3 = c0507t32.getLayoutParams();
        RelativeLayout.LayoutParams layoutParams4 = layoutParams3 instanceof RelativeLayout.LayoutParams ? (RelativeLayout.LayoutParams) layoutParams3 : null;
        if (layoutParams4 == null) {
            return;
        }
        layoutParams2.setMargins(0, insets.b, insets.c, 0);
        layoutParams4.setMargins(0, insets.b, insets.c, 0);
    }
}
