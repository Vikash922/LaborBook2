package com.inmobi.media;

import android.app.Activity;
import android.view.View;
import android.view.WindowInsets;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.inmobi.media.Ld */
/* JADX INFO: loaded from: classes6.dex */
public final class C2866Ld {

    /* JADX INFO: renamed from: a */
    public final ArrayList f1240a;

    /* JADX INFO: renamed from: b */
    public final WeakReference f1241b;

    public C2866Ld(View view) {
        Intrinsics.checkNotNullParameter(view, "view");
        this.f1240a = new ArrayList();
        this.f1241b = new WeakReference(view);
        if (C2751E3.f962a.m1012F()) {
            view.setOnApplyWindowInsetsListener(new View.OnApplyWindowInsetsListener() { // from class: com.inmobi.media.Ld$$ExternalSyntheticLambda0
                @Override // android.view.View.OnApplyWindowInsetsListener
                public final WindowInsets onApplyWindowInsets(View view2, WindowInsets windowInsets) {
                    return C2866Ld.m1326a(this.f$0, view2, windowInsets);
                }
            });
        }
    }

    /* JADX INFO: renamed from: a */
    public static final WindowInsets m1326a(C2866Ld this$0, View view, WindowInsets windowInsets) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(view, "<anonymous parameter 0>");
        Intrinsics.checkNotNullParameter(windowInsets, "windowInsets");
        if (this$0.f1240a.isEmpty()) {
            return windowInsets;
        }
        Iterator it = this$0.f1240a.iterator();
        while (it.hasNext()) {
            C2926Pd c2926Pd = (C2926Pd) ((InterfaceC2851Kd) it.next());
            c2926Pd.getClass();
            Intrinsics.checkNotNullParameter(windowInsets, "windowInsets");
            c2926Pd.f1410a.mo1147a(windowInsets);
            try {
                Activity activity = (Activity) c2926Pd.f1414e.get();
                if (!c2926Pd.f1410a.mo1374a()) {
                    InterfaceC3147f5 interfaceC3147f5 = c2926Pd.f1411b;
                    if (interfaceC3147f5 != null) {
                        ((C3162g5) interfaceC3147f5).m2147a("WindowInsetsHandler", "listener is not interested in computing insets, skipping");
                    }
                } else if (activity == null) {
                    InterfaceC3147f5 interfaceC3147f52 = c2926Pd.f1411b;
                    if (interfaceC3147f52 != null) {
                        ((C3162g5) interfaceC3147f52).m2151b("WindowInsetsHandler", "Activity is null, skipping safeArea computation");
                    }
                } else {
                    C2896Nd c2896NdM2224b = AbstractC3429y2.m2606a(activity) ? AbstractC3183hb.m2224b(windowInsets) : AbstractC3183hb.m2222a(windowInsets);
                    Integer numM1390f = AbstractC2886N3.m1390f();
                    int iIntValue = numM1390f != null ? numM1390f.intValue() : AbstractC2886N3.m1376a(windowInsets);
                    AbstractC2886N3.m1380a(Integer.valueOf(iIntValue));
                    c2926Pd.m1536a(c2896NdM2224b, iIntValue);
                }
            } catch (Error e) {
                InterfaceC3147f5 interfaceC3147f53 = c2926Pd.f1411b;
                if (interfaceC3147f53 != null) {
                    ((C3162g5) interfaceC3147f53).m2151b("WindowInsetsHandler", "Error in getting safeArea " + e.getMessage());
                }
            } catch (Exception e2) {
                InterfaceC3147f5 interfaceC3147f54 = c2926Pd.f1411b;
                if (interfaceC3147f54 != null) {
                    ((C3162g5) interfaceC3147f54).m2148a("WindowInsetsHandler", "Exception in getting safeArea", e2);
                }
            }
        }
        return windowInsets;
    }

    /* JADX INFO: renamed from: a */
    public final void m1327a() {
        View view;
        this.f1240a.clear();
        if (!C2751E3.f962a.m1012F() || (view = (View) this.f1241b.get()) == null) {
            return;
        }
        view.setOnApplyWindowInsetsListener(null);
    }
}
