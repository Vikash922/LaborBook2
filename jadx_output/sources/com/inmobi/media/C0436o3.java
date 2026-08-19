package com.inmobi.media;

import android.content.ComponentName;
import android.content.Context;
import android.net.Uri;
import androidx.browser.customtabs.CustomTabsClient;
import androidx.browser.customtabs.CustomTabsIntent;
import androidx.browser.customtabs.CustomTabsServiceConnection;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.inmobi.media.o3, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes6.dex */
public final class C0436o3 extends CustomTabsServiceConnection {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ C0466q3 f441a;

    public C0436o3(C0466q3 c0466q3) {
        this.f441a = c0466q3;
    }

    @Override // android.content.ServiceConnection
    public final void onBindingDied(ComponentName name) {
        Intrinsics.checkNotNullParameter(name, "name");
        this.f441a.f460a = null;
    }

    @Override // androidx.browser.customtabs.CustomTabsServiceConnection
    public final void onCustomTabsServiceConnected(ComponentName name, CustomTabsClient client) {
        CustomTabsIntent.Builder builder;
        Intrinsics.checkNotNullParameter(name, "name");
        Intrinsics.checkNotNullParameter(client, "client");
        C0466q3 c0466q3 = this.f441a;
        c0466q3.f460a = client;
        C0328h2 c0328h2 = c0466q3.c;
        if (c0328h2 != null) {
            Uri uri = Uri.parse(c0328h2.f368a);
            Intrinsics.checkNotNullExpressionValue(uri, "parse(...)");
            C0311g2 c0311g2 = c0328h2.b;
            if (c0311g2 != null) {
                try {
                    builder = c0328h2.a(c0311g2);
                } catch (Error unused) {
                    C0466q3 c0466q32 = c0328h2.g;
                    CustomTabsClient customTabsClient = c0466q32.f460a;
                    builder = new CustomTabsIntent.Builder(customTabsClient != null ? customTabsClient.newSession(new C0451p3(c0466q32)) : null);
                    builder.setUrlBarHidingEnabled(true);
                }
            } else {
                C0466q3 c0466q33 = c0328h2.g;
                CustomTabsClient customTabsClient2 = c0466q33.f460a;
                builder = new CustomTabsIntent.Builder(customTabsClient2 != null ? customTabsClient2.newSession(new C0451p3(c0466q33)) : null);
                builder.setUrlBarHidingEnabled(true);
            }
            Context context = c0328h2.h;
            CustomTabsIntent customTabsIntentBuild = builder.build();
            Intrinsics.checkNotNullExpressionValue(customTabsIntentBuild, "build(...)");
            AbstractC0421n3.a(context, customTabsIntentBuild, uri, c0328h2.c, c0328h2.e, c0328h2.d, c0328h2.f);
        }
    }

    @Override // android.content.ServiceConnection
    public final void onNullBinding(ComponentName componentName) {
        C0466q3 c0466q3 = this.f441a;
        c0466q3.f460a = null;
        C0328h2 c0328h2 = c0466q3.c;
        if (c0328h2 != null) {
            C0510t6 c0510t6 = c0328h2.e;
            if (c0510t6 != null) {
                c0510t6.g = "IN_NATIVE";
            }
            InterfaceC0248c2 interfaceC0248c2 = c0328h2.c;
            if (interfaceC0248c2 != null) {
                interfaceC0248c2.a(EnumC0332h6.g, c0510t6, (Integer) 8009);
            }
        }
    }

    @Override // android.content.ServiceConnection
    public final void onServiceDisconnected(ComponentName name) {
        Intrinsics.checkNotNullParameter(name, "name");
        this.f441a.f460a = null;
    }
}
