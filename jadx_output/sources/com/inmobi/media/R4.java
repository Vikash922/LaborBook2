package com.inmobi.media;

import android.view.OrientationEventListener;
import com.inmobi.ads.rendering.InMobiAdActivity;
import java.util.HashSet;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.MutablePropertyReference1Impl;
import kotlin.jvm.internal.Reflection;
import kotlin.properties.Delegates;
import kotlin.reflect.KProperty;

/* JADX INFO: loaded from: classes6.dex */
public final class R4 extends OrientationEventListener {
    public static final /* synthetic */ KProperty[] d = {Reflection.mutableProperty1(new MutablePropertyReference1Impl(R4.class, "currentOrientation", "getCurrentOrientation()Lcom/inmobi/ads/rendering/orientation/Orientation;", 0))};

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final InMobiAdActivity f231a;
    public final HashSet b;
    public final Q4 c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public R4(InMobiAdActivity activity) {
        super(activity);
        Intrinsics.checkNotNullParameter(activity, "activity");
        this.f231a = activity;
        this.b = new HashSet();
        Delegates delegates = Delegates.INSTANCE;
        this.c = new Q4(J9.a(N3.g()), this);
    }

    public final void a(K9 orientationProperties) {
        Intrinsics.checkNotNullParameter(orientationProperties, "orientationProperties");
        try {
            if (orientationProperties.f160a) {
                this.f231a.setRequestedOrientation(13);
            } else {
                String str = orientationProperties.b;
                if (Intrinsics.areEqual(str, "landscape")) {
                    this.f231a.setRequestedOrientation(6);
                } else if (Intrinsics.areEqual(str, "portrait")) {
                    this.f231a.setRequestedOrientation(7);
                } else {
                    this.f231a.setRequestedOrientation(13);
                }
            }
        } catch (IllegalStateException unused) {
        }
    }

    public final void b() {
        int i = this.f231a.getResources().getConfiguration().orientation;
        byte bG = N3.g();
        int i2 = 1;
        if (bG != 1 && bG != 2 && (bG == 3 || bG == 4)) {
            i2 = 2;
        }
        if (i == i2) {
            this.c.setValue(this, d[0], J9.a(N3.g()));
        }
    }

    @Override // android.view.OrientationEventListener
    public final void onOrientationChanged(int i) {
        b();
    }

    public final void a() {
        if (this.b.isEmpty()) {
            disable();
        } else {
            enable();
        }
    }
}
