package com.inmobi.media;

import com.inmobi.ads.InMobiNative;
import com.inmobi.ads.controllers.PublisherCallbacks;
import java.lang.ref.WeakReference;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.inmobi.media.h8, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes6.dex */
public abstract class AbstractC0334h8 extends PublisherCallbacks {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private WeakReference<InMobiNative> f373a;

    public AbstractC0334h8(InMobiNative inMobiNative) {
        Intrinsics.checkNotNullParameter(inMobiNative, "inMobiNative");
        this.f373a = new WeakReference<>(inMobiNative);
    }

    public final WeakReference<InMobiNative> getNativeRef() {
        return this.f373a;
    }

    @Override // com.inmobi.ads.controllers.PublisherCallbacks
    public void onImraidLog(String log) {
        AbstractC0525u7 mPubListener;
        Intrinsics.checkNotNullParameter(log, "log");
        InMobiNative inMobiNative = this.f373a.get();
        if (inMobiNative == null || (mPubListener = inMobiNative.getMPubListener()) == null) {
            return;
        }
        mPubListener.a(inMobiNative, log);
    }

    public final void setNativeRef(WeakReference<InMobiNative> weakReference) {
        Intrinsics.checkNotNullParameter(weakReference, "<set-?>");
        this.f373a = weakReference;
    }
}
