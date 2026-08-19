package com.inmobi.media;

import com.inmobi.ads.InMobiNative;
import com.inmobi.ads.controllers.PublisherCallbacks;
import java.lang.ref.WeakReference;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.inmobi.media.h8 */
/* JADX INFO: loaded from: classes6.dex */
public abstract class AbstractC3180h8 extends PublisherCallbacks {

    /* JADX INFO: renamed from: a */
    private WeakReference<InMobiNative> f2148a;

    public AbstractC3180h8(InMobiNative inMobiNative) {
        Intrinsics.checkNotNullParameter(inMobiNative, "inMobiNative");
        this.f2148a = new WeakReference<>(inMobiNative);
    }

    public final WeakReference<InMobiNative> getNativeRef() {
        return this.f2148a;
    }

    @Override // com.inmobi.ads.controllers.PublisherCallbacks
    public void onImraidLog(String log) {
        AbstractC3374u7 mPubListener;
        Intrinsics.checkNotNullParameter(log, "log");
        InMobiNative inMobiNative = this.f2148a.get();
        if (inMobiNative == null || (mPubListener = inMobiNative.getMPubListener()) == null) {
            return;
        }
        mPubListener.mo1136a(inMobiNative, log);
    }

    public final void setNativeRef(WeakReference<InMobiNative> weakReference) {
        Intrinsics.checkNotNullParameter(weakReference, "<set-?>");
        this.f2148a = weakReference;
    }
}
