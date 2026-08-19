package com.inmobi.media;

import android.view.OrientationEventListener;
import com.inmobi.ads.rendering.InMobiAdActivity;
import java.util.HashSet;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.MutablePropertyReference1Impl;
import kotlin.jvm.internal.Reflection;
import kotlin.properties.Delegates;
import kotlin.reflect.KProperty;

/* JADX INFO: renamed from: com.inmobi.media.R4 */
/* JADX INFO: loaded from: classes6.dex */
public final class C2945R4 extends OrientationEventListener {

    /* JADX INFO: renamed from: d */
    public static final /* synthetic */ KProperty[] f1492d = {Reflection.mutableProperty1(new MutablePropertyReference1Impl(C2945R4.class, "currentOrientation", "getCurrentOrientation()Lcom/inmobi/ads/rendering/orientation/Orientation;", 0))};

    /* JADX INFO: renamed from: a */
    public final InMobiAdActivity f1493a;

    /* JADX INFO: renamed from: b */
    public final HashSet f1494b;

    /* JADX INFO: renamed from: c */
    public final C2932Q4 f1495c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2945R4(InMobiAdActivity activity) {
        super(activity);
        Intrinsics.checkNotNullParameter(activity, "activity");
        this.f1493a = activity;
        this.f1494b = new HashSet();
        Delegates delegates = Delegates.INSTANCE;
        this.f1495c = new C2932Q4(AbstractC2832J9.m1195a(AbstractC2886N3.m1391g()), this);
    }

    /* JADX INFO: renamed from: a */
    public final void m1759a(C2847K9 orientationProperties) {
        Intrinsics.checkNotNullParameter(orientationProperties, "orientationProperties");
        try {
            if (orientationProperties.f1166a) {
                this.f1493a.setRequestedOrientation(13);
            } else {
                String str = orientationProperties.f1167b;
                if (Intrinsics.areEqual(str, "landscape")) {
                    this.f1493a.setRequestedOrientation(6);
                } else if (Intrinsics.areEqual(str, "portrait")) {
                    this.f1493a.setRequestedOrientation(7);
                } else {
                    this.f1493a.setRequestedOrientation(13);
                }
            }
        } catch (IllegalStateException unused) {
        }
    }

    /* JADX INFO: renamed from: b */
    public final void m1760b() {
        int i = this.f1493a.getResources().getConfiguration().orientation;
        byte bM1391g = AbstractC2886N3.m1391g();
        int i2 = 1;
        if (bM1391g != 1 && bM1391g != 2 && (bM1391g == 3 || bM1391g == 4)) {
            i2 = 2;
        }
        if (i == i2) {
            this.f1495c.setValue(this, f1492d[0], AbstractC2832J9.m1195a(AbstractC2886N3.m1391g()));
        }
    }

    @Override // android.view.OrientationEventListener
    public final void onOrientationChanged(int i) {
        m1760b();
    }

    /* JADX INFO: renamed from: a */
    public final void m1758a() {
        if (this.f1494b.isEmpty()) {
            disable();
        } else {
            enable();
        }
    }
}
