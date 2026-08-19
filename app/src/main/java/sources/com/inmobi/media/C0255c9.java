package com.inmobi.media;

import android.content.Context;
import android.view.View;
import com.inmobi.commons.core.configs.AdConfig;
import java.util.HashMap;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.inmobi.media.c9, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes6.dex */
public final class C0255c9 extends R8 {
    public final /* synthetic */ C0271d9 e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C0255c9(C0271d9 c0271d9) {
        super(c0271d9);
        this.e = c0271d9;
    }

    @Override // com.inmobi.media.R8
    public final View a(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        try {
            Context applicationContext = context.getApplicationContext();
            Intrinsics.checkNotNullExpressionValue(applicationContext, "getApplicationContext(...)");
            return new Ya(applicationContext, (byte) 0, null, null, false, null, 0L, null, null, 252);
        } catch (Exception e) {
            HashMap map = C0271d9.c;
            C0551w5 c0551w5 = C0551w5.f513a;
            C0551w5.d.a(AbstractC0251c5.a(e, "event"));
            return null;
        }
    }

    @Override // com.inmobi.media.R8
    public final void a(View view, D7 asset, AdConfig adConfig) {
        Intrinsics.checkNotNullParameter(view, "view");
        Intrinsics.checkNotNullParameter(asset, "asset");
        Intrinsics.checkNotNullParameter(adConfig, "adConfig");
        super.a(view, asset, adConfig);
        if (view instanceof Ya) {
            Ya ya = (Ya) view;
            this.e.getClass();
            try {
                C0303f9 c0303f9 = asset instanceof C0303f9 ? (C0303f9) asset : null;
                ya.a(Ya.O0, adConfig);
                InterfaceC0298f5 interfaceC0298f5 = ya.i;
                if (interfaceC0298f5 != null) {
                    String TAG = Ya.P0;
                    Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
                    ((C0314g5) interfaceC0298f5).a(TAG, "disableUrlsToOpenInExternalApp " + ya);
                }
                ya.s = true;
                Object obj = asset.e;
                String str = obj instanceof String ? (String) obj : null;
                String str2 = c0303f9 != null ? c0303f9.y : null;
                if (str2 != null) {
                    int iHashCode = str2.hashCode();
                    if (iHashCode == -1081286672) {
                        if (!str2.equals("REF_IFRAME")) {
                        }
                        ya.d(str);
                        return;
                    }
                    if (iHashCode == 84303) {
                        if (!str2.equals("URL")) {
                        }
                        ya.d(str);
                        return;
                    } else if (iHashCode != 2228139) {
                        if (iHashCode != 83774455 || !str2.equals("REF_HTML")) {
                        }
                        ya.c(str);
                        return;
                    } else {
                        if (!str2.equals("HTML")) {
                        }
                        ya.c(str);
                        return;
                    }
                }
                ya.d(str);
            } catch (Exception e) {
                Intrinsics.checkNotNullExpressionValue("d9", "TAG");
                C0551w5 c0551w5 = C0551w5.f513a;
                C0551w5.d.a(AbstractC0251c5.a(e, "event"));
            }
        }
    }

    @Override // com.inmobi.media.R8
    public final void a(View view) {
        Intrinsics.checkNotNullParameter(view, "view");
        if (!(view instanceof Ya) || ((Ya) view).T) {
            return;
        }
        super.a(view);
    }
}
