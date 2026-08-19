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
import com.inmobi.ads.R;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.inmobi.media.h2, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes6.dex */
public final class C0328h2 implements Application.ActivityLifecycleCallbacks {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f368a;
    public final C0311g2 b;
    public final InterfaceC0248c2 c;
    public final Aa d;
    public final C0510t6 e;
    public final String f;
    public final C0466q3 g;
    public final Context h;
    public final C0479r3 i;

    public C0328h2(String urlToLoad, C0311g2 c0311g2, Context context, InterfaceC0248c2 interfaceC0248c2, Aa redirectionValidator, C0510t6 c0510t6, String api) {
        Intrinsics.checkNotNullParameter(urlToLoad, "urlToLoad");
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(redirectionValidator, "redirectionValidator");
        Intrinsics.checkNotNullParameter(api, "api");
        this.f368a = urlToLoad;
        this.b = c0311g2;
        this.c = interfaceC0248c2;
        this.d = redirectionValidator;
        this.e = c0510t6;
        this.f = api;
        C0466q3 c0466q3 = new C0466q3();
        this.g = c0466q3;
        this.i = new C0479r3(interfaceC0248c2, c0510t6);
        Intrinsics.checkNotNullParameter(this, "connectionCallback");
        c0466q3.c = this;
        Context applicationContext = context.getApplicationContext();
        Intrinsics.checkNotNullExpressionValue(applicationContext, "getApplicationContext(...)");
        this.h = applicationContext;
        Kb.a(context, this);
    }

    public final void a() {
        String strA;
        C0466q3 c0466q3 = this.g;
        Context context = this.h;
        if (c0466q3.f460a != null || context == null || (strA = AbstractC0493s3.a(context)) == null) {
            return;
        }
        C0436o3 c0436o3 = new C0436o3(c0466q3);
        c0466q3.b = c0436o3;
        CustomTabsClient.bindCustomTabsService(context, strA, c0436o3);
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityCreated(Activity activity, Bundle bundle) {
        Intrinsics.checkNotNullParameter(activity, "activity");
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityDestroyed(Activity activity) {
        Intrinsics.checkNotNullParameter(activity, "activity");
        C0466q3 c0466q3 = this.g;
        Context context = this.h;
        c0466q3.getClass();
        Intrinsics.checkNotNullParameter(context, "context");
        C0436o3 c0436o3 = c0466q3.b;
        if (c0436o3 != null) {
            context.unbindService(c0436o3);
            c0466q3.f460a = null;
        }
        c0466q3.b = null;
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

    public final CustomTabsIntent.Builder a(C0311g2 c0311g2) {
        Bitmap bitmap;
        C0466q3 c0466q3 = this.g;
        CustomTabsClient customTabsClient = c0466q3.f460a;
        CustomTabsIntent.Builder closeButtonPosition = new CustomTabsIntent.Builder(customTabsClient != null ? customTabsClient.newSession(new C0451p3(c0466q3)) : null).setCloseButtonPosition(2);
        Intrinsics.checkNotNullExpressionValue(closeButtonPosition, "setCloseButtonPosition(...)");
        try {
            closeButtonPosition.setShareState(2);
            closeButtonPosition.setShowTitle(false);
            closeButtonPosition.setDownloadButtonEnabled(false);
            closeButtonPosition.setBookmarksButtonEnabled(false);
        } catch (Error unused) {
        }
        if (c0311g2.b) {
            Context context = this.h;
            int i = R.drawable.im_close_transparent;
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
        O3 o3H = N3.h();
        I9 i9A = J9.a(N3.g());
        if (i9A != I9.b && i9A != I9.d) {
            closeButtonPosition.setInitialActivityHeightPx((int) (((int) (o3H.b * c0311g2.f355a)) * o3H.c), 2);
        } else {
            int i2 = (int) (o3H.f199a * c0311g2.f355a);
            closeButtonPosition.setInitialActivityWidthPx((int) (i2 * o3H.c));
            closeButtonPosition.setActivitySideSheetBreakpointDp(i2);
        }
        closeButtonPosition.setUrlBarHidingEnabled(true);
        return closeButtonPosition;
    }
}
