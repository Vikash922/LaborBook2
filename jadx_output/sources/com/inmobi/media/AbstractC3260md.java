package com.inmobi.media;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import com.iab.omid.library.inmobi.adsession.FriendlyObstructionPurpose;
import com.inmobi.commons.core.configs.AdConfig;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.inmobi.media.md */
/* JADX INFO: loaded from: classes6.dex */
public abstract class AbstractC3260md {

    /* JADX INFO: renamed from: a */
    public final InterfaceC3411x f2352a;

    /* JADX INFO: renamed from: b */
    public C3032X7 f2353b;

    /* JADX INFO: renamed from: c */
    public WeakReference f2354c;

    /* JADX INFO: renamed from: d */
    public final AdConfig f2355d;

    public AbstractC3260md(InterfaceC3411x container) {
        Intrinsics.checkNotNullParameter(container, "container");
        this.f2352a = container;
        this.f2355d = container.getAdConfig();
    }

    /* JADX INFO: renamed from: a */
    public abstract View mo956a(View view, ViewGroup viewGroup, boolean z);

    /* JADX INFO: renamed from: a */
    public void mo957a() {
        WeakReference weakReference = this.f2354c;
        if (weakReference != null) {
            weakReference.clear();
        }
    }

    /* JADX INFO: renamed from: a */
    public abstract void mo958a(byte b);

    /* JADX INFO: renamed from: a */
    public abstract void mo959a(Context context, byte b);

    /* JADX INFO: renamed from: a */
    public abstract void mo960a(View view);

    /* JADX INFO: renamed from: a */
    public abstract void mo961a(View view, FriendlyObstructionPurpose friendlyObstructionPurpose);

    /* JADX INFO: renamed from: a */
    public abstract void mo962a(HashMap map);

    /* JADX INFO: renamed from: b */
    public View mo963b() {
        WeakReference weakReference = this.f2354c;
        if (weakReference != null) {
            return (View) weakReference.get();
        }
        return null;
    }

    /* JADX INFO: renamed from: c */
    public C3032X7 mo1121c() {
        return this.f2353b;
    }

    /* JADX INFO: renamed from: d */
    public View mo964d() {
        return null;
    }

    /* JADX INFO: renamed from: e */
    public abstract void mo965e();
}
