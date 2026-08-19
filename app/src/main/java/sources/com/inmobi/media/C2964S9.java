package com.inmobi.media;

import android.graphics.Bitmap;
import android.graphics.Rect;
import android.os.Handler;
import android.os.Looper;
import android.util.Log;
import android.view.PixelCopy;
import android.view.Window;
import com.inmobi.commons.core.configs.AdConfig;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;

/* JADX INFO: renamed from: com.inmobi.media.S9 */
/* JADX INFO: loaded from: classes6.dex */
public final class C2964S9 extends AbstractC2970T1 {

    /* JADX INFO: renamed from: b */
    public final Window f1539b;

    /* JADX INFO: renamed from: c */
    public final AtomicBoolean f1540c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2964S9(Window window, AdConfig.AdQualityConfig config) {
        super(config);
        Intrinsics.checkNotNullParameter(window, "window");
        Intrinsics.checkNotNullParameter(config, "config");
        this.f1539b = window;
        this.f1540c = new AtomicBoolean(false);
    }

    @Override // com.inmobi.media.InterfaceC3277o0
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public final Bitmap mo1145a() throws InterruptedException {
        long jCurrentTimeMillis = System.currentTimeMillis();
        int width = this.f1539b.getDecorView().getWidth();
        int height = this.f1539b.getDecorView().getHeight();
        Bitmap bitmapCreateBitmap = Bitmap.createBitmap(width, height, Bitmap.Config.ARGB_8888);
        Intrinsics.checkNotNullExpressionValue(bitmapCreateBitmap, "createBitmap(...)");
        Rect rect = new Rect(0, 0, width, height);
        final Ref.BooleanRef booleanRef = new Ref.BooleanRef();
        int layerType = this.f1539b.getDecorView().getLayerType();
        this.f1539b.getDecorView().setLayerType(0, null);
        PixelCopy.request(this.f1539b, rect, bitmapCreateBitmap, new PixelCopy.OnPixelCopyFinishedListener() { // from class: com.inmobi.media.S9$$ExternalSyntheticLambda0
            @Override // android.view.PixelCopy.OnPixelCopyFinishedListener
            public final void onPixelCopyFinished(int i) {
                C2964S9.m1800a(booleanRef, this, i);
            }
        }, new Handler(Looper.getMainLooper()));
        while (!this.f1540c.get()) {
            Thread.sleep(500L);
        }
        String message = "success - " + booleanRef.element + " - time - " + (System.currentTimeMillis() - jCurrentTimeMillis);
        Intrinsics.checkNotNullParameter("PixelCopyScreenShotProcess", "tag");
        Intrinsics.checkNotNullParameter(message, "message");
        Log.i("PixelCopyScreenShotProcess", message);
        this.f1539b.getDecorView().setLayerType(layerType, null);
        if (!booleanRef.element) {
            return null;
        }
        Intrinsics.checkNotNullParameter("PixelCopyScreenShotProcess", "tag");
        Intrinsics.checkNotNullParameter("success", "message");
        Log.i("PixelCopyScreenShotProcess", "success");
        return m1812a(bitmapCreateBitmap);
    }

    /* JADX INFO: renamed from: a */
    public static final void m1800a(Ref.BooleanRef isSuccess, C2964S9 this$0, int i) {
        Intrinsics.checkNotNullParameter(isSuccess, "$isSuccess");
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        if (i == 0) {
            isSuccess.element = true;
        }
        String message = "capture result - success - " + isSuccess.element;
        Intrinsics.checkNotNullParameter("PixelCopyScreenShotProcess", "tag");
        Intrinsics.checkNotNullParameter(message, "message");
        Log.i("PixelCopyScreenShotProcess", message);
        this$0.f1540c.set(true);
    }
}
