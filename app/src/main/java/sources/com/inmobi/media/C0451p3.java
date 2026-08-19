package com.inmobi.media;

import android.os.Bundle;
import androidx.browser.customtabs.CustomTabsCallback;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.inmobi.media.p3, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes6.dex */
public final class C0451p3 extends CustomTabsCallback {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ C0466q3 f452a;

    public C0451p3(C0466q3 c0466q3) {
        this.f452a = c0466q3;
    }

    @Override // androidx.browser.customtabs.CustomTabsCallback
    public final void onActivityLayout(int i, int i2, int i3, int i4, int i5, Bundle extras) {
        InterfaceC0248c2 interfaceC0248c2;
        Intrinsics.checkNotNullParameter(extras, "extras");
        super.onActivityLayout(i, i2, i3, i4, i5, extras);
        Intrinsics.checkNotNullExpressionValue("q3", "access$getLOG_TAG$cp(...)");
        C0328h2 c0328h2 = this.f452a.c;
        if (c0328h2 == null || (interfaceC0248c2 = c0328h2.c) == null) {
            return;
        }
        interfaceC0248c2.a(i, i2, i3, i4, i5);
    }

    @Override // androidx.browser.customtabs.CustomTabsCallback
    public final void onNavigationEvent(int i, Bundle bundle) {
        InterfaceC0248c2 interfaceC0248c2;
        super.onNavigationEvent(i, bundle);
        Intrinsics.checkNotNullExpressionValue("q3", "access$getLOG_TAG$cp(...)");
        C0328h2 c0328h2 = this.f452a.c;
        if (c0328h2 != null) {
            C0479r3 c0479r3 = c0328h2.i;
            if (i != 1) {
                if (i != 2) {
                    if (i != 3) {
                        if (i == 6 && c0479r3.d == null) {
                            if (c0479r3.e == 4) {
                                c0479r3.d = Boolean.TRUE;
                            } else {
                                c0479r3.d = Boolean.FALSE;
                            }
                            if (Intrinsics.areEqual(c0479r3.d, Boolean.TRUE)) {
                                InterfaceC0248c2 interfaceC0248c22 = c0479r3.f469a;
                                if (interfaceC0248c22 != null) {
                                    interfaceC0248c22.a(EnumC0332h6.i, c0479r3.b, (Integer) 8003);
                                }
                                InterfaceC0248c2 interfaceC0248c23 = c0479r3.f469a;
                                if (interfaceC0248c23 != null) {
                                    interfaceC0248c23.c();
                                }
                            } else {
                                InterfaceC0248c2 interfaceC0248c24 = c0479r3.f469a;
                                if (interfaceC0248c24 != null) {
                                    interfaceC0248c24.a(EnumC0332h6.j, c0479r3.b, (Integer) 8005);
                                }
                            }
                        }
                    } else if (c0479r3.d == null) {
                        c0479r3.d = Boolean.FALSE;
                        InterfaceC0248c2 interfaceC0248c25 = c0479r3.f469a;
                        if (interfaceC0248c25 != null) {
                            interfaceC0248c25.a(EnumC0332h6.j, c0479r3.b, (Integer) 8004);
                        }
                    }
                } else if (c0479r3.d == null) {
                    c0479r3.d = Boolean.TRUE;
                    InterfaceC0248c2 interfaceC0248c26 = c0479r3.f469a;
                    if (interfaceC0248c26 != null) {
                        interfaceC0248c26.a(EnumC0332h6.i, c0479r3.b, (Integer) null);
                    }
                    InterfaceC0248c2 interfaceC0248c27 = c0479r3.f469a;
                    if (interfaceC0248c27 != null) {
                        interfaceC0248c27.c();
                    }
                }
            } else if (!c0479r3.c) {
                c0479r3.c = true;
                InterfaceC0248c2 interfaceC0248c28 = c0479r3.f469a;
                if (interfaceC0248c28 != null) {
                    interfaceC0248c28.a(EnumC0332h6.h, c0479r3.b, (Integer) null);
                }
            }
            c0479r3.e = i;
            if (i != 5) {
                if (i == 6 && (interfaceC0248c2 = c0328h2.c) != null) {
                    interfaceC0248c2.a();
                    return;
                }
                return;
            }
            InterfaceC0248c2 interfaceC0248c29 = c0328h2.c;
            if (interfaceC0248c29 != null) {
                interfaceC0248c29.b();
            }
        }
    }
}
