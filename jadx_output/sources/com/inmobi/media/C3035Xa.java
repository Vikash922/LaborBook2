package com.inmobi.media;

import android.view.View;
import android.view.ViewGroup;
import android.widget.RelativeLayout;
import com.itextpdf.styledxmlparser.css.media.MediaFeature;
import kotlin.jvm.internal.Intrinsics;
import org.json.JSONObject;

/* JADX INFO: renamed from: com.inmobi.media.Xa */
/* JADX INFO: loaded from: classes6.dex */
public final class C3035Xa extends AbstractC2881Md {

    /* JADX INFO: renamed from: a */
    public final /* synthetic */ GestureDetectorOnGestureListenerC3049Ya f1650a;

    public C3035Xa(GestureDetectorOnGestureListenerC3049Ya gestureDetectorOnGestureListenerC3049Ya) {
        this.f1650a = gestureDetectorOnGestureListenerC3049Ya;
    }

    @Override // com.inmobi.media.AbstractC2881Md
    /* JADX INFO: renamed from: a */
    public final boolean mo1374a() {
        return !Intrinsics.areEqual("Hidden", this.f1650a.getViewState());
    }

    @Override // com.inmobi.media.AbstractC2881Md
    /* JADX INFO: renamed from: a */
    public final void mo1373a(EnumC2817I9 orientation, C2911Od finalInsets) {
        JSONObject jSONObjectM1408a;
        C2896Nd c2896Nd;
        Intrinsics.checkNotNullParameter(orientation, "orientation");
        Intrinsics.checkNotNullParameter(finalInsets, "finalInsets");
        GestureDetectorOnGestureListenerC3049Ya gestureDetectorOnGestureListenerC3049Ya = this.f1650a;
        InterfaceC3147f5 interfaceC3147f5 = gestureDetectorOnGestureListenerC3049Ya.f1749i;
        if (interfaceC3147f5 != null) {
            String str = GestureDetectorOnGestureListenerC3049Ya.f1696P0;
            ((C3162g5) interfaceC3147f5).m2152c(str, AbstractC3021Wa.m1893a(gestureDetectorOnGestureListenerC3049Ya, str, "TAG", "fireOnSafeAreaChanged "));
        }
        StringBuilder sb = new StringBuilder("window.imraid.broadcastEvent('onSafeAreaChange', ");
        Intrinsics.checkNotNullParameter(finalInsets, "<this>");
        Intrinsics.checkNotNullParameter(orientation, "orientation");
        try {
            finalInsets.getClass();
            Intrinsics.checkNotNullParameter(orientation, "orientation");
            c2896Nd = (C2896Nd) finalInsets.f1345a.get(orientation);
        } catch (Exception unused) {
        }
        if (c2896Nd != null) {
            jSONObjectM1408a = c2896Nd.m1408a();
            jSONObjectM1408a.put(MediaFeature.ORIENTATION, AbstractC2832J9.m1194a(orientation));
        } else {
            jSONObjectM1408a = null;
        }
        gestureDetectorOnGestureListenerC3049Ya.m1960b(sb.append(jSONObjectM1408a).append(')').toString());
        GestureDetectorOnGestureListenerC3049Ya renderView = this.f1650a;
        renderView.getClass();
        finalInsets.getClass();
        Intrinsics.checkNotNullParameter(orientation, "orientation");
        C2896Nd c2896Nd2 = (C2896Nd) finalInsets.f1345a.get(orientation);
        if (c2896Nd2 == null) {
            return;
        }
        if (c2896Nd2.f1323b == 0 && c2896Nd2.f1324c == 0) {
            return;
        }
        renderView.setCloseAssetArea(c2896Nd2);
        Intrinsics.checkNotNullParameter(renderView, "renderView");
        C2896Nd insets = renderView.f1723M0;
        Intrinsics.checkNotNullParameter(insets, "insets");
        View viewFindViewById = renderView.getRootView().findViewById(65531);
        C3355t3 c3355t3 = viewFindViewById instanceof C3355t3 ? (C3355t3) viewFindViewById : null;
        if (c3355t3 == null) {
            return;
        }
        View viewFindViewById2 = renderView.getRootView().findViewById(65531);
        C3355t3 c3355t32 = viewFindViewById2 instanceof C3355t3 ? (C3355t3) viewFindViewById2 : null;
        if (c3355t32 == null) {
            return;
        }
        ViewGroup.LayoutParams layoutParams = c3355t3.getLayoutParams();
        RelativeLayout.LayoutParams layoutParams2 = layoutParams instanceof RelativeLayout.LayoutParams ? (RelativeLayout.LayoutParams) layoutParams : null;
        if (layoutParams2 == null) {
            return;
        }
        ViewGroup.LayoutParams layoutParams3 = c3355t32.getLayoutParams();
        RelativeLayout.LayoutParams layoutParams4 = layoutParams3 instanceof RelativeLayout.LayoutParams ? (RelativeLayout.LayoutParams) layoutParams3 : null;
        if (layoutParams4 == null) {
            return;
        }
        layoutParams2.setMargins(0, insets.f1323b, insets.f1324c, 0);
        layoutParams4.setMargins(0, insets.f1323b, insets.f1324c, 0);
    }
}
