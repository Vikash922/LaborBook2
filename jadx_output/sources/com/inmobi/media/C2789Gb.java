package com.inmobi.media;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.util.Log;
import android.view.View;
import com.inmobi.commons.core.configs.AdConfig;
import java.lang.ref.WeakReference;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.inmobi.media.Gb */
/* JADX INFO: loaded from: classes6.dex */
public final class C2789Gb extends AbstractC2970T1 {

    /* JADX INFO: renamed from: b */
    public final WeakReference f1057b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2789Gb(View adView, AdConfig.AdQualityConfig adQualityConfig) {
        super(adQualityConfig);
        Intrinsics.checkNotNullParameter(adView, "adView");
        Intrinsics.checkNotNullParameter(adQualityConfig, "adQualityConfig");
        this.f1057b = new WeakReference(adView);
    }

    @Override // com.inmobi.media.InterfaceC3277o0
    /* JADX INFO: renamed from: a */
    public final Object mo1145a() {
        long jCurrentTimeMillis = System.currentTimeMillis();
        View adView = (View) this.f1057b.get();
        if (adView != null) {
            Intrinsics.checkNotNullParameter(adView, "adView");
            Bitmap bitmapCreateBitmap = Bitmap.createBitmap(adView.getMeasuredWidth(), adView.getMeasuredHeight(), Bitmap.Config.ARGB_8888);
            Intrinsics.checkNotNullExpressionValue(bitmapCreateBitmap, "createBitmap(...)");
            Canvas canvas = new Canvas(bitmapCreateBitmap);
            Drawable background = adView.getBackground();
            if (background != null) {
                background.draw(canvas);
            } else {
                canvas.drawColor(-1);
            }
            adView.draw(canvas);
            if (bitmapCreateBitmap != null) {
                String message = "success - time taken - " + (System.currentTimeMillis() - jCurrentTimeMillis);
                Intrinsics.checkNotNullParameter("ScreenShotProcess", "tag");
                Intrinsics.checkNotNullParameter(message, "message");
                Log.i("ScreenShotProcess", message);
                return m1812a(bitmapCreateBitmap);
            }
        } else {
            Intrinsics.checkNotNullParameter("ScreenShotProcess", "tag");
            Intrinsics.checkNotNullParameter("view reference lost. aborting...", "message");
            Log.i("ScreenShotProcess", "view reference lost. aborting...");
            String message2 = "fail - time taken - " + (System.currentTimeMillis() - jCurrentTimeMillis);
            Intrinsics.checkNotNullParameter("ScreenShotProcess", "tag");
            Intrinsics.checkNotNullParameter(message2, "message");
            Log.i("ScreenShotProcess", message2);
        }
        return null;
    }
}
