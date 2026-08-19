package com.inmobi.media;

import android.content.Context;
import android.view.View;
import com.inmobi.commons.core.configs.AdConfig;
import java.util.HashMap;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.inmobi.media.c9 */
/* JADX INFO: loaded from: classes6.dex */
public final class C3106c9 extends AbstractC2949R8 {

    /* JADX INFO: renamed from: e */
    public final /* synthetic */ C3121d9 f1949e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C3106c9(C3121d9 c3121d9) {
        super(c3121d9);
        this.f1949e = c3121d9;
    }

    @Override // com.inmobi.media.AbstractC2949R8
    /* JADX INFO: renamed from: a */
    public final View mo1763a(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        try {
            Context applicationContext = context.getApplicationContext();
            Intrinsics.checkNotNullExpressionValue(applicationContext, "getApplicationContext(...)");
            return new GestureDetectorOnGestureListenerC3049Ya(applicationContext, (byte) 0, null, null, false, null, 0L, null, null, 252);
        } catch (Exception e) {
            HashMap map = C3121d9.f2016c;
            C3402w5 c3402w5 = C3402w5.f2709a;
            C3402w5.f2712d.m2158a(AbstractC3102c5.m2045a(e, "event"));
            return null;
        }
    }

    @Override // com.inmobi.media.AbstractC2949R8
    /* JADX INFO: renamed from: a */
    public final void mo1765a(View view, C2740D7 asset, AdConfig adConfig) {
        Intrinsics.checkNotNullParameter(view, "view");
        Intrinsics.checkNotNullParameter(asset, "asset");
        Intrinsics.checkNotNullParameter(adConfig, "adConfig");
        super.mo1765a(view, asset, adConfig);
        if (view instanceof GestureDetectorOnGestureListenerC3049Ya) {
            GestureDetectorOnGestureListenerC3049Ya gestureDetectorOnGestureListenerC3049Ya = (GestureDetectorOnGestureListenerC3049Ya) view;
            this.f1949e.getClass();
            try {
                C3151f9 c3151f9 = asset instanceof C3151f9 ? (C3151f9) asset : null;
                gestureDetectorOnGestureListenerC3049Ya.m1952a(GestureDetectorOnGestureListenerC3049Ya.f1695O0, adConfig);
                InterfaceC3147f5 interfaceC3147f5 = gestureDetectorOnGestureListenerC3049Ya.f1749i;
                if (interfaceC3147f5 != null) {
                    String TAG = GestureDetectorOnGestureListenerC3049Ya.f1696P0;
                    Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
                    ((C3162g5) interfaceC3147f5).m2147a(TAG, "disableUrlsToOpenInExternalApp " + gestureDetectorOnGestureListenerC3049Ya);
                }
                gestureDetectorOnGestureListenerC3049Ya.f1769s = true;
                Object obj = asset.f923e;
                String str = obj instanceof String ? (String) obj : null;
                String str2 = c3151f9 != null ? c3151f9.f2069y : null;
                if (str2 != null) {
                    int iHashCode = str2.hashCode();
                    if (iHashCode == -1081286672) {
                        if (!str2.equals("REF_IFRAME")) {
                        }
                        gestureDetectorOnGestureListenerC3049Ya.m1967d(str);
                        return;
                    }
                    if (iHashCode == 84303) {
                        if (!str2.equals("URL")) {
                        }
                        gestureDetectorOnGestureListenerC3049Ya.m1967d(str);
                        return;
                    } else if (iHashCode != 2228139) {
                        if (iHashCode != 83774455 || !str2.equals("REF_HTML")) {
                        }
                        gestureDetectorOnGestureListenerC3049Ya.m1964c(str);
                        return;
                    } else {
                        if (!str2.equals("HTML")) {
                        }
                        gestureDetectorOnGestureListenerC3049Ya.m1964c(str);
                        return;
                    }
                }
                gestureDetectorOnGestureListenerC3049Ya.m1967d(str);
            } catch (Exception e) {
                Intrinsics.checkNotNullExpressionValue("d9", "TAG");
                C3402w5 c3402w5 = C3402w5.f2709a;
                C3402w5.f2712d.m2158a(AbstractC3102c5.m2045a(e, "event"));
            }
        }
    }

    @Override // com.inmobi.media.AbstractC2949R8
    /* JADX INFO: renamed from: a */
    public final void mo1764a(View view) {
        Intrinsics.checkNotNullParameter(view, "view");
        if (!(view instanceof GestureDetectorOnGestureListenerC3049Ya) || ((GestureDetectorOnGestureListenerC3049Ya) view).f1730T) {
            return;
        }
        super.mo1764a(view);
    }
}
