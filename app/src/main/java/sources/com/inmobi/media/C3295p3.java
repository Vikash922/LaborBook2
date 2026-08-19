package com.inmobi.media;

import android.os.Bundle;
import androidx.browser.customtabs.CustomTabsCallback;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.inmobi.media.p3 */
/* JADX INFO: loaded from: classes6.dex */
public final class C3295p3 extends CustomTabsCallback {

    /* JADX INFO: renamed from: a */
    public final /* synthetic */ C3310q3 f2429a;

    public C3295p3(C3310q3 c3310q3) {
        this.f2429a = c3310q3;
    }

    @Override // androidx.browser.customtabs.CustomTabsCallback
    public final void onActivityLayout(int i, int i2, int i3, int i4, int i5, Bundle extras) {
        InterfaceC3099c2 interfaceC3099c2;
        Intrinsics.checkNotNullParameter(extras, "extras");
        super.onActivityLayout(i, i2, i3, i4, i5, extras);
        Intrinsics.checkNotNullExpressionValue("q3", "access$getLOG_TAG$cp(...)");
        C3174h2 c3174h2 = this.f2429a.f2450c;
        if (c3174h2 == null || (interfaceC3099c2 = c3174h2.f2125c) == null) {
            return;
        }
        interfaceC3099c2.mo1521a(i, i2, i3, i4, i5);
    }

    @Override // androidx.browser.customtabs.CustomTabsCallback
    public final void onNavigationEvent(int i, Bundle bundle) {
        InterfaceC3099c2 interfaceC3099c2;
        super.onNavigationEvent(i, bundle);
        Intrinsics.checkNotNullExpressionValue("q3", "access$getLOG_TAG$cp(...)");
        C3174h2 c3174h2 = this.f2429a.f2450c;
        if (c3174h2 != null) {
            C3325r3 c3325r3 = c3174h2.f2131i;
            if (i != 1) {
                if (i != 2) {
                    if (i != 3) {
                        if (i == 6 && c3325r3.f2496d == null) {
                            if (c3325r3.f2497e == 4) {
                                c3325r3.f2496d = Boolean.TRUE;
                            } else {
                                c3325r3.f2496d = Boolean.FALSE;
                            }
                            if (Intrinsics.areEqual(c3325r3.f2496d, Boolean.TRUE)) {
                                InterfaceC3099c2 interfaceC3099c22 = c3325r3.f2493a;
                                if (interfaceC3099c22 != null) {
                                    interfaceC3099c22.mo1522a(EnumC3178h6.f2140i, c3325r3.f2494b, (Integer) 8003);
                                }
                                InterfaceC3099c2 interfaceC3099c23 = c3325r3.f2493a;
                                if (interfaceC3099c23 != null) {
                                    interfaceC3099c23.mo1525c();
                                }
                            } else {
                                InterfaceC3099c2 interfaceC3099c24 = c3325r3.f2493a;
                                if (interfaceC3099c24 != null) {
                                    interfaceC3099c24.mo1522a(EnumC3178h6.f2141j, c3325r3.f2494b, (Integer) 8005);
                                }
                            }
                        }
                    } else if (c3325r3.f2496d == null) {
                        c3325r3.f2496d = Boolean.FALSE;
                        InterfaceC3099c2 interfaceC3099c25 = c3325r3.f2493a;
                        if (interfaceC3099c25 != null) {
                            interfaceC3099c25.mo1522a(EnumC3178h6.f2141j, c3325r3.f2494b, (Integer) 8004);
                        }
                    }
                } else if (c3325r3.f2496d == null) {
                    c3325r3.f2496d = Boolean.TRUE;
                    InterfaceC3099c2 interfaceC3099c26 = c3325r3.f2493a;
                    if (interfaceC3099c26 != null) {
                        interfaceC3099c26.mo1522a(EnumC3178h6.f2140i, c3325r3.f2494b, (Integer) null);
                    }
                    InterfaceC3099c2 interfaceC3099c27 = c3325r3.f2493a;
                    if (interfaceC3099c27 != null) {
                        interfaceC3099c27.mo1525c();
                    }
                }
            } else if (!c3325r3.f2495c) {
                c3325r3.f2495c = true;
                InterfaceC3099c2 interfaceC3099c28 = c3325r3.f2493a;
                if (interfaceC3099c28 != null) {
                    interfaceC3099c28.mo1522a(EnumC3178h6.f2139h, c3325r3.f2494b, (Integer) null);
                }
            }
            c3325r3.f2497e = i;
            if (i != 5) {
                if (i == 6 && (interfaceC3099c2 = c3174h2.f2125c) != null) {
                    interfaceC3099c2.mo1520a();
                    return;
                }
                return;
            }
            InterfaceC3099c2 interfaceC3099c29 = c3174h2.f2125c;
            if (interfaceC3099c29 != null) {
                interfaceC3099c29.mo1524b();
            }
        }
    }
}
