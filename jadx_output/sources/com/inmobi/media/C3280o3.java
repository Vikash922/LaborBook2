package com.inmobi.media;

import android.content.ComponentName;
import android.content.Context;
import android.net.Uri;
import androidx.browser.customtabs.CustomTabsClient;
import androidx.browser.customtabs.CustomTabsIntent;
import androidx.browser.customtabs.CustomTabsServiceConnection;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.inmobi.media.o3 */
/* JADX INFO: loaded from: classes6.dex */
public final class C3280o3 extends CustomTabsServiceConnection {

    /* JADX INFO: renamed from: a */
    public final /* synthetic */ C3310q3 f2398a;

    public C3280o3(C3310q3 c3310q3) {
        this.f2398a = c3310q3;
    }

    @Override // android.content.ServiceConnection
    public final void onBindingDied(ComponentName name) {
        Intrinsics.checkNotNullParameter(name, "name");
        this.f2398a.f2448a = null;
    }

    @Override // androidx.browser.customtabs.CustomTabsServiceConnection
    public final void onCustomTabsServiceConnected(ComponentName name, CustomTabsClient client) {
        CustomTabsIntent.Builder builder;
        Intrinsics.checkNotNullParameter(name, "name");
        Intrinsics.checkNotNullParameter(client, "client");
        C3310q3 c3310q3 = this.f2398a;
        c3310q3.f2448a = client;
        C3174h2 c3174h2 = c3310q3.f2450c;
        if (c3174h2 != null) {
            Uri uri = Uri.parse(c3174h2.f2123a);
            Intrinsics.checkNotNullExpressionValue(uri, "parse(...)");
            C3159g2 c3159g2 = c3174h2.f2124b;
            if (c3159g2 != null) {
                try {
                    builder = c3174h2.m2210a(c3159g2);
                } catch (Error unused) {
                    C3310q3 c3310q32 = c3174h2.f2129g;
                    CustomTabsClient customTabsClient = c3310q32.f2448a;
                    builder = new CustomTabsIntent.Builder(customTabsClient != null ? customTabsClient.newSession(new C3295p3(c3310q32)) : null);
                    builder.setUrlBarHidingEnabled(true);
                }
            } else {
                C3310q3 c3310q33 = c3174h2.f2129g;
                CustomTabsClient customTabsClient2 = c3310q33.f2448a;
                builder = new CustomTabsIntent.Builder(customTabsClient2 != null ? customTabsClient2.newSession(new C3295p3(c3310q33)) : null);
                builder.setUrlBarHidingEnabled(true);
            }
            Context context = c3174h2.f2130h;
            CustomTabsIntent customTabsIntentBuild = builder.build();
            Intrinsics.checkNotNullExpressionValue(customTabsIntentBuild, "build(...)");
            AbstractC3265n3.m2312a(context, customTabsIntentBuild, uri, c3174h2.f2125c, c3174h2.f2127e, c3174h2.f2126d, c3174h2.f2128f);
        }
    }

    @Override // android.content.ServiceConnection
    public final void onNullBinding(ComponentName componentName) {
        C3310q3 c3310q3 = this.f2398a;
        c3310q3.f2448a = null;
        C3174h2 c3174h2 = c3310q3.f2450c;
        if (c3174h2 != null) {
            C3358t6 c3358t6 = c3174h2.f2127e;
            if (c3358t6 != null) {
                c3358t6.f2554g = "IN_NATIVE";
            }
            InterfaceC3099c2 interfaceC3099c2 = c3174h2.f2125c;
            if (interfaceC3099c2 != null) {
                interfaceC3099c2.mo1522a(EnumC3178h6.f2138g, c3358t6, (Integer) 8009);
            }
        }
    }

    @Override // android.content.ServiceConnection
    public final void onServiceDisconnected(ComponentName name) {
        Intrinsics.checkNotNullParameter(name, "name");
        this.f2398a.f2448a = null;
    }
}
