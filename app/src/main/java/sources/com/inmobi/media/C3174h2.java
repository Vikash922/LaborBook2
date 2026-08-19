package com.inmobi.media;

import android.app.Activity;
import android.app.Application;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import androidx.browser.customtabs.CustomTabsClient;
import androidx.browser.customtabs.CustomTabsIntent;
import androidx.core.content.ContextCompat;
import com.inmobi.ads.C2674R;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.inmobi.media.h2 */
/* JADX INFO: loaded from: classes6.dex */
public final class C3174h2 implements Application.ActivityLifecycleCallbacks {

    /* JADX INFO: renamed from: a */
    public final String f2123a;

    /* JADX INFO: renamed from: b */
    public final C3159g2 f2124b;

    /* JADX INFO: renamed from: c */
    public final InterfaceC3099c2 f2125c;

    /* JADX INFO: renamed from: d */
    public final InterfaceC2698Aa f2126d;

    /* JADX INFO: renamed from: e */
    public final C3358t6 f2127e;

    /* JADX INFO: renamed from: f */
    public final String f2128f;

    /* JADX INFO: renamed from: g */
    public final C3310q3 f2129g;

    /* JADX INFO: renamed from: h */
    public final Context f2130h;

    /* JADX INFO: renamed from: i */
    public final C3325r3 f2131i;

    public C3174h2(String urlToLoad, C3159g2 c3159g2, Context context, InterfaceC3099c2 interfaceC3099c2, InterfaceC2698Aa redirectionValidator, C3358t6 c3358t6, String api) {
        Intrinsics.checkNotNullParameter(urlToLoad, "urlToLoad");
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(redirectionValidator, "redirectionValidator");
        Intrinsics.checkNotNullParameter(api, "api");
        this.f2123a = urlToLoad;
        this.f2124b = c3159g2;
        this.f2125c = interfaceC3099c2;
        this.f2126d = redirectionValidator;
        this.f2127e = c3358t6;
        this.f2128f = api;
        C3310q3 c3310q3 = new C3310q3();
        this.f2129g = c3310q3;
        this.f2131i = new C3325r3(interfaceC3099c2, c3358t6);
        Intrinsics.checkNotNullParameter(this, "connectionCallback");
        c3310q3.f2450c = this;
        Context applicationContext = context.getApplicationContext();
        Intrinsics.checkNotNullExpressionValue(applicationContext, "getApplicationContext(...)");
        this.f2130h = applicationContext;
        C2849Kb.m1245a(context, this);
    }

    /* JADX INFO: renamed from: a */
    public final void m2211a() {
        String strM2397a;
        C3310q3 c3310q3 = this.f2129g;
        Context context = this.f2130h;
        if (c3310q3.f2448a != null || context == null || (strM2397a = AbstractC3340s3.m2397a(context)) == null) {
            return;
        }
        C3280o3 c3280o3 = new C3280o3(c3310q3);
        c3310q3.f2449b = c3280o3;
        CustomTabsClient.bindCustomTabsService(context, strM2397a, c3280o3);
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityCreated(Activity activity, Bundle bundle) {
        Intrinsics.checkNotNullParameter(activity, "activity");
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityDestroyed(Activity activity) {
        Intrinsics.checkNotNullParameter(activity, "activity");
        C3310q3 c3310q3 = this.f2129g;
        Context context = this.f2130h;
        c3310q3.getClass();
        Intrinsics.checkNotNullParameter(context, "context");
        C3280o3 c3280o3 = c3310q3.f2449b;
        if (c3280o3 != null) {
            context.unbindService(c3280o3);
            c3310q3.f2448a = null;
        }
        c3310q3.f2449b = null;
        activity.getApplication().unregisterActivityLifecycleCallbacks(this);
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityPaused(Activity activity) {
        Intrinsics.checkNotNullParameter(activity, "activity");
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityResumed(Activity activity) {
        Intrinsics.checkNotNullParameter(activity, "activity");
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivitySaveInstanceState(Activity activity, Bundle outState) {
        Intrinsics.checkNotNullParameter(activity, "activity");
        Intrinsics.checkNotNullParameter(outState, "outState");
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityStarted(Activity activity) {
        Intrinsics.checkNotNullParameter(activity, "activity");
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityStopped(Activity activity) {
        Intrinsics.checkNotNullParameter(activity, "activity");
    }

    /* JADX INFO: renamed from: a */
    public final CustomTabsIntent.Builder m2210a(C3159g2 c3159g2) {
        Bitmap bitmap;
        C3310q3 c3310q3 = this.f2129g;
        CustomTabsClient customTabsClient = c3310q3.f2448a;
        CustomTabsIntent.Builder closeButtonPosition = new CustomTabsIntent.Builder(customTabsClient != null ? customTabsClient.newSession(new C3295p3(c3310q3)) : null).setCloseButtonPosition(2);
        Intrinsics.checkNotNullExpressionValue(closeButtonPosition, "setCloseButtonPosition(...)");
        try {
            closeButtonPosition.setShareState(2);
            closeButtonPosition.setShowTitle(false);
            closeButtonPosition.setDownloadButtonEnabled(false);
            closeButtonPosition.setBookmarksButtonEnabled(false);
        } catch (Error unused) {
        }
        if (c3159g2.f2086b) {
            Context context = this.f2130h;
            int i = C2674R.drawable.im_close_transparent;
            Intrinsics.checkNotNullParameter(context, "<this>");
            Drawable drawable = ContextCompat.getDrawable(context, i);
            if (drawable instanceof BitmapDrawable) {
                bitmap = ((BitmapDrawable) drawable).getBitmap();
                Intrinsics.checkNotNullExpressionValue(bitmap, "getBitmap(...)");
            } else {
                Bitmap bitmapCreateBitmap = Bitmap.createBitmap(drawable != null ? drawable.getIntrinsicWidth() : 24, drawable != null ? drawable.getIntrinsicHeight() : 24, Bitmap.Config.ARGB_8888);
                Intrinsics.checkNotNullExpressionValue(bitmapCreateBitmap, "createBitmap(...)");
                Canvas canvas = new Canvas(bitmapCreateBitmap);
                if (drawable != null) {
                    drawable.setBounds(0, 0, canvas.getWidth(), canvas.getHeight());
                }
                if (drawable != null) {
                    drawable.draw(canvas);
                }
                bitmap = bitmapCreateBitmap;
            }
            closeButtonPosition.setCloseButtonIcon(bitmap);
        }
        C2901O3 c2901o3M1392h = AbstractC2886N3.m1392h();
        EnumC2817I9 enumC2817I9M1195a = AbstractC2832J9.m1195a(AbstractC2886N3.m1391g());
        if (enumC2817I9M1195a != EnumC2817I9.f1115b && enumC2817I9M1195a != EnumC2817I9.f1117d) {
            closeButtonPosition.setInitialActivityHeightPx((int) (((int) (c2901o3M1392h.f1331b * c3159g2.f2085a)) * c2901o3M1392h.f1332c), 2);
        } else {
            int i2 = (int) (c2901o3M1392h.f1330a * c3159g2.f2085a);
            closeButtonPosition.setInitialActivityWidthPx((int) (i2 * c2901o3M1392h.f1332c));
            closeButtonPosition.setActivitySideSheetBreakpointDp(i2);
        }
        closeButtonPosition.setUrlBarHidingEnabled(true);
        return closeButtonPosition;
    }
}
