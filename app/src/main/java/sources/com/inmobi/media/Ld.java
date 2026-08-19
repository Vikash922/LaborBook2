package com.inmobi.media;

import android.app.Activity;
import android.view.View;
import android.view.WindowInsets;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
public final class Ld {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final ArrayList f172a;
    public final WeakReference b;

    public Ld(View view) {
        Intrinsics.checkNotNullParameter(view, "view");
        this.f172a = new ArrayList();
        this.b = new WeakReference(view);
        if (E3.f104a.F()) {
            view.setOnApplyWindowInsetsListener(new View.OnApplyWindowInsetsListener() { // from class: com.inmobi.media.Ld$$ExternalSyntheticLambda0
                @Override // android.view.View.OnApplyWindowInsetsListener
                public final WindowInsets onApplyWindowInsets(View view2, WindowInsets windowInsets) {
                    return Ld.a(this.f$0, view2, windowInsets);
                }
            });
        }
    }

    public static final WindowInsets a(Ld this$0, View view, WindowInsets windowInsets) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(view, "<anonymous parameter 0>");
        Intrinsics.checkNotNullParameter(windowInsets, "windowInsets");
        if (this$0.f172a.isEmpty()) {
            return windowInsets;
        }
        Iterator it = this$0.f172a.iterator();
        while (it.hasNext()) {
            Pd pd = (Pd) ((Kd) it.next());
            pd.getClass();
            Intrinsics.checkNotNullParameter(windowInsets, "windowInsets");
            pd.f218a.a(windowInsets);
            try {
                Activity activity = (Activity) pd.e.get();
                if (!pd.f218a.a()) {
                    InterfaceC0298f5 interfaceC0298f5 = pd.b;
                    if (interfaceC0298f5 != null) {
                        ((C0314g5) interfaceC0298f5).a("WindowInsetsHandler", "listener is not interested in computing insets, skipping");
                    }
                } else if (activity == null) {
                    InterfaceC0298f5 interfaceC0298f52 = pd.b;
                    if (interfaceC0298f52 != null) {
                        ((C0314g5) interfaceC0298f52).b("WindowInsetsHandler", "Activity is null, skipping safeArea computation");
                    }
                } else {
                    Nd ndB = AbstractC0576y2.a(activity) ? AbstractC0337hb.b(windowInsets) : AbstractC0337hb.a(windowInsets);
                    Integer numF = N3.f();
                    int iIntValue = numF != null ? numF.intValue() : N3.a(windowInsets);
                    N3.a(Integer.valueOf(iIntValue));
                    pd.a(ndB, iIntValue);
                }
            } catch (Error e) {
                InterfaceC0298f5 interfaceC0298f53 = pd.b;
                if (interfaceC0298f53 != null) {
                    ((C0314g5) interfaceC0298f53).b("WindowInsetsHandler", "Error in getting safeArea " + e.getMessage());
                }
            } catch (Exception e2) {
                InterfaceC0298f5 interfaceC0298f54 = pd.b;
                if (interfaceC0298f54 != null) {
                    ((C0314g5) interfaceC0298f54).a("WindowInsetsHandler", "Exception in getting safeArea", e2);
                }
            }
        }
        return windowInsets;
    }

    public final void a() {
        View view;
        this.f172a.clear();
        if (!E3.f104a.F() || (view = (View) this.b.get()) == null) {
            return;
        }
        view.setOnApplyWindowInsetsListener(null);
    }
}
