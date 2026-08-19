package com.inmobi.media;

import android.content.Context;
import android.widget.FrameLayout;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.inmobi.media.k8, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes6.dex */
public abstract class AbstractC0380k8 extends FrameLayout {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final byte f403a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AbstractC0380k8(Context context, byte b) {
        super(context);
        Intrinsics.checkNotNullParameter(context, "context");
        this.f403a = b;
    }

    public abstract void a(H7 h7, InterfaceC0396l8 interfaceC0396l8, int i, int i2, C0270d8 c0270d8);

    public final byte getType() {
        return this.f403a;
    }
}
