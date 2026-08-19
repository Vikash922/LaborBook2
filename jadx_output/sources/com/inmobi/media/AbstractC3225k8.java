package com.inmobi.media;

import android.content.Context;
import android.widget.FrameLayout;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.inmobi.media.k8 */
/* JADX INFO: loaded from: classes6.dex */
public abstract class AbstractC3225k8 extends FrameLayout {

    /* JADX INFO: renamed from: a */
    public final byte f2256a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AbstractC3225k8(Context context, byte b) {
        super(context);
        Intrinsics.checkNotNullParameter(context, "context");
        this.f2256a = b;
    }

    /* JADX INFO: renamed from: a */
    public abstract void mo1152a(C2800H7 c2800h7, InterfaceC3240l8 interfaceC3240l8, int i, int i2, C3120d8 c3120d8);

    public final byte getType() {
        return this.f2256a;
    }
}
