package com.inmobi.media;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import com.iab.omid.library.inmobi.adsession.FriendlyObstructionPurpose;
import com.inmobi.commons.core.configs.AdConfig;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.inmobi.media.md, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes6.dex */
public abstract class AbstractC0416md {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final InterfaceC0559x f427a;
    public X7 b;
    public WeakReference c;
    public final AdConfig d;

    public AbstractC0416md(InterfaceC0559x container) {
        Intrinsics.checkNotNullParameter(container, "container");
        this.f427a = container;
        this.d = container.getAdConfig();
    }

    public abstract View a(View view, ViewGroup viewGroup, boolean z);

    public void a() {
        WeakReference weakReference = this.c;
        if (weakReference != null) {
            weakReference.clear();
        }
    }

    public abstract void a(byte b);

    public abstract void a(Context context, byte b);

    public abstract void a(View view);

    public abstract void a(View view, FriendlyObstructionPurpose friendlyObstructionPurpose);

    public abstract void a(HashMap map);

    public View b() {
        WeakReference weakReference = this.c;
        if (weakReference != null) {
            return (View) weakReference.get();
        }
        return null;
    }

    public X7 c() {
        return this.b;
    }

    public View d() {
        return null;
    }

    public abstract void e();
}
