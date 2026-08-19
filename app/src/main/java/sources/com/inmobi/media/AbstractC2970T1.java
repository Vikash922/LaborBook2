package com.inmobi.media;

import android.graphics.Bitmap;
import android.util.Log;
import com.inmobi.commons.core.configs.AdConfig;
import java.io.ByteArrayOutputStream;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.inmobi.media.T1 */
/* JADX INFO: loaded from: classes6.dex */
public abstract class AbstractC2970T1 implements InterfaceC3277o0 {

    /* JADX INFO: renamed from: a */
    public final AdConfig.AdQualityConfig f1546a;

    public AbstractC2970T1(AdConfig.AdQualityConfig adQualityConfig) {
        Intrinsics.checkNotNullParameter(adQualityConfig, "adQualityConfig");
        this.f1546a = adQualityConfig;
    }

    /* JADX INFO: renamed from: a */
    public final Bitmap m1812a(Bitmap bitmap) {
        Intrinsics.checkNotNullParameter(bitmap, "bitmap");
        double resizedPercentage = (((double) this.f1546a.getResizedPercentage()) / 100.0d) * ((double) bitmap.getWidth());
        double resizedPercentage2 = (((double) this.f1546a.getResizedPercentage()) / 100.0d) * ((double) bitmap.getHeight());
        Bitmap bitmapCreateScaledBitmap = Bitmap.createScaledBitmap(bitmap, (int) resizedPercentage, (int) resizedPercentage2, true);
        Intrinsics.checkNotNullExpressionValue(bitmapCreateScaledBitmap, "createScaledBitmap(...)");
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        bitmap.compress(Bitmap.CompressFormat.JPEG, 100, byteArrayOutputStream);
        int length = byteArrayOutputStream.toByteArray().length;
        if (length <= this.f1546a.getMaxImageSize()) {
            return bitmapCreateScaledBitmap;
        }
        String str = "  - ";
        String message = "resize - original - " + resizedPercentage + "  - " + resizedPercentage2 + " - size - " + length;
        Intrinsics.checkNotNullParameter("BaseScreenShotProcess", "tag");
        Intrinsics.checkNotNullParameter(message, "message");
        Log.i("BaseScreenShotProcess", message);
        while (length > this.f1546a.getMaxImageSize()) {
            String str2 = str;
            ByteArrayOutputStream byteArrayOutputStream2 = byteArrayOutputStream;
            double dSqrt = Math.sqrt(((double) this.f1546a.getMaxImageSize()) / ((double) length));
            resizedPercentage *= dSqrt;
            resizedPercentage2 *= dSqrt;
            if (Math.floor(resizedPercentage) <= 0.0d && Math.floor(resizedPercentage2) <= 0.0d) {
                return bitmapCreateScaledBitmap;
            }
            bitmapCreateScaledBitmap = Bitmap.createScaledBitmap(bitmapCreateScaledBitmap, (int) Math.floor(resizedPercentage), (int) Math.floor(resizedPercentage2), true);
            Intrinsics.checkNotNullExpressionValue(bitmapCreateScaledBitmap, "createScaledBitmap(...)");
            byteArrayOutputStream2.reset();
            bitmapCreateScaledBitmap.compress(Bitmap.CompressFormat.JPEG, 100, byteArrayOutputStream2);
            length = byteArrayOutputStream2.toByteArray().length;
            str = str2;
            byteArrayOutputStream = byteArrayOutputStream2;
        }
        String message2 = "resize - " + resizedPercentage + str + resizedPercentage2 + " - " + byteArrayOutputStream.size();
        Intrinsics.checkNotNullParameter("BaseScreenShotProcess", "tag");
        Intrinsics.checkNotNullParameter(message2, "message");
        Log.i("BaseScreenShotProcess", message2);
        return bitmapCreateScaledBitmap;
    }
}
