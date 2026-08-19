package com.inmobi.media;

import android.R;
import android.app.Activity;
import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.graphics.Bitmap;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.webkit.ConsoleMessage;
import android.webkit.GeolocationPermissions;
import android.webkit.JsPromptResult;
import android.webkit.JsResult;
import android.webkit.WebChromeClient;
import android.webkit.WebView;
import android.widget.AbsoluteLayout;
import android.widget.FrameLayout;
import androidx.core.view.ViewCompat;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.inmobi.media.Ua */
/* JADX INFO: loaded from: classes6.dex */
public final class C2993Ua extends WebChromeClient {

    /* JADX INFO: renamed from: a */
    public final /* synthetic */ GestureDetectorOnGestureListenerC3049Ya f1570a;

    public C2993Ua(GestureDetectorOnGestureListenerC3049Ya gestureDetectorOnGestureListenerC3049Ya) {
        this.f1570a = gestureDetectorOnGestureListenerC3049Ya;
    }

    /* JADX INFO: renamed from: a */
    public static final void m1857a(JsResult result, DialogInterface dialogInterface, int i) {
        Intrinsics.checkNotNullParameter(result, "$result");
        result.confirm();
    }

    /* JADX INFO: renamed from: a */
    public static final boolean m1858a(View view, MotionEvent motionEvent) {
        return true;
    }

    /* JADX INFO: renamed from: b */
    public static final void m1861b(JsResult result, DialogInterface dialogInterface, int i) {
        Intrinsics.checkNotNullParameter(result, "$result");
        result.confirm();
    }

    /* JADX INFO: renamed from: c */
    public static final void m1862c(JsResult result, DialogInterface dialogInterface, int i) {
        Intrinsics.checkNotNullParameter(result, "$result");
        result.cancel();
    }

    @Override // android.webkit.WebChromeClient
    public final Bitmap getDefaultVideoPoster() {
        Bitmap defaultVideoPoster = super.getDefaultVideoPoster();
        return defaultVideoPoster == null ? Bitmap.createBitmap(1, 1, Bitmap.Config.ARGB_8888) : defaultVideoPoster;
    }

    @Override // android.webkit.WebChromeClient
    public final boolean onConsoleMessage(ConsoleMessage cm) {
        Intrinsics.checkNotNullParameter(cm, "cm");
        String str = cm.message() + " -- From line " + cm.lineNumber() + " of " + cm.sourceId();
        InterfaceC3147f5 interfaceC3147f5 = this.f1570a.f1749i;
        if (interfaceC3147f5 == null) {
            return true;
        }
        String str2 = GestureDetectorOnGestureListenerC3049Ya.f1696P0;
        ((C3162g5) interfaceC3147f5).m2152c(str2, AbstractC3223k6.m2276a(str2, "access$getTAG$cp(...)", "Console message:", str));
        return true;
    }

    @Override // android.webkit.WebChromeClient
    public final void onHideCustomView() {
        m1863a();
        super.onHideCustomView();
    }

    @Override // android.webkit.WebChromeClient
    public final boolean onJsAlert(WebView view, String url, String message, final JsResult result) {
        Intrinsics.checkNotNullParameter(view, "view");
        Intrinsics.checkNotNullParameter(url, "url");
        Intrinsics.checkNotNullParameter(message, "message");
        Intrinsics.checkNotNullParameter(result, "result");
        InterfaceC3147f5 interfaceC3147f5 = this.f1570a.f1749i;
        if (interfaceC3147f5 != null) {
            String str = GestureDetectorOnGestureListenerC3049Ya.f1696P0;
            Intrinsics.checkNotNullExpressionValue(str, "access$getTAG$cp(...)");
            ((C3162g5) interfaceC3147f5).m2147a(str, "jsAlert called with: " + message + url);
        }
        if (!GestureDetectorOnGestureListenerC3049Ya.m1947a(this.f1570a, result)) {
            return true;
        }
        Activity fullScreenActivity = this.f1570a.getFullScreenActivity();
        if (fullScreenActivity != null) {
            new AlertDialog.Builder(fullScreenActivity).setMessage(message).setTitle(url).setPositiveButton(R.string.ok, new DialogInterface.OnClickListener() { // from class: com.inmobi.media.Ua$$ExternalSyntheticLambda4
                @Override // android.content.DialogInterface.OnClickListener
                public final void onClick(DialogInterface dialogInterface, int i) {
                    C2993Ua.m1857a(result, dialogInterface, i);
                }
            }).setCancelable(false).create().show();
            return true;
        }
        result.cancel();
        return true;
    }

    @Override // android.webkit.WebChromeClient
    public final boolean onJsConfirm(WebView view, String url, String message, final JsResult result) {
        Intrinsics.checkNotNullParameter(view, "view");
        Intrinsics.checkNotNullParameter(url, "url");
        Intrinsics.checkNotNullParameter(message, "message");
        Intrinsics.checkNotNullParameter(result, "result");
        InterfaceC3147f5 interfaceC3147f5 = this.f1570a.f1749i;
        if (interfaceC3147f5 != null) {
            String str = GestureDetectorOnGestureListenerC3049Ya.f1696P0;
            Intrinsics.checkNotNullExpressionValue(str, "access$getTAG$cp(...)");
            ((C3162g5) interfaceC3147f5).m2147a(str, "jsConfirm called with: " + message + url);
        }
        if (!GestureDetectorOnGestureListenerC3049Ya.m1947a(this.f1570a, result)) {
            return true;
        }
        if (this.f1570a.getFullScreenActivity() != null) {
            new AlertDialog.Builder(this.f1570a.getFullScreenActivity()).setMessage(message).setPositiveButton(R.string.ok, new DialogInterface.OnClickListener() { // from class: com.inmobi.media.Ua$$ExternalSyntheticLambda0
                @Override // android.content.DialogInterface.OnClickListener
                public final void onClick(DialogInterface dialogInterface, int i) {
                    C2993Ua.m1861b(result, dialogInterface, i);
                }
            }).setNegativeButton(R.string.cancel, new DialogInterface.OnClickListener() { // from class: com.inmobi.media.Ua$$ExternalSyntheticLambda1
                @Override // android.content.DialogInterface.OnClickListener
                public final void onClick(DialogInterface dialogInterface, int i) {
                    C2993Ua.m1862c(result, dialogInterface, i);
                }
            }).create().show();
            return true;
        }
        result.cancel();
        return true;
    }

    @Override // android.webkit.WebChromeClient
    public final boolean onJsPrompt(WebView view, String url, String message, String defaultValue, JsPromptResult result) {
        Intrinsics.checkNotNullParameter(view, "view");
        Intrinsics.checkNotNullParameter(url, "url");
        Intrinsics.checkNotNullParameter(message, "message");
        Intrinsics.checkNotNullParameter(defaultValue, "defaultValue");
        Intrinsics.checkNotNullParameter(result, "result");
        InterfaceC3147f5 interfaceC3147f5 = this.f1570a.f1749i;
        if (interfaceC3147f5 != null) {
            String str = GestureDetectorOnGestureListenerC3049Ya.f1696P0;
            Intrinsics.checkNotNullExpressionValue(str, "access$getTAG$cp(...)");
            ((C3162g5) interfaceC3147f5).m2147a(str, "jsPrompt called with: " + message + url);
        }
        if (!GestureDetectorOnGestureListenerC3049Ya.m1947a(this.f1570a, result)) {
            return true;
        }
        if (this.f1570a.getFullScreenActivity() != null) {
            return false;
        }
        result.cancel();
        return true;
    }

    @Override // android.webkit.WebChromeClient
    public final void onProgressChanged(WebView webView, int i) {
        InterfaceC3147f5 interfaceC3147f5 = this.f1570a.f1749i;
        if (interfaceC3147f5 != null) {
            String str = GestureDetectorOnGestureListenerC3049Ya.f1696P0;
            ((C3162g5) interfaceC3147f5).m2152c(str, AbstractC3420x8.m2595a(str, "access$getTAG$cp(...)", "webview progress changed - ", i));
        }
        super.onProgressChanged(webView, i);
    }

    @Override // android.webkit.WebChromeClient
    public final void onShowCustomView(View view, WebChromeClient.CustomViewCallback callback) {
        Intrinsics.checkNotNullParameter(view, "view");
        Intrinsics.checkNotNullParameter(callback, "callback");
        if (this.f1570a.f1753k.get() != null) {
            GestureDetectorOnGestureListenerC3049Ya gestureDetectorOnGestureListenerC3049Ya = this.f1570a;
            gestureDetectorOnGestureListenerC3049Ya.f1714I = view;
            gestureDetectorOnGestureListenerC3049Ya.f1716J = callback;
            if (view != null) {
                view.setOnTouchListener(new View.OnTouchListener() { // from class: com.inmobi.media.Ua$$ExternalSyntheticLambda2
                    @Override // android.view.View.OnTouchListener
                    public final boolean onTouch(View view2, MotionEvent motionEvent) {
                        return C2993Ua.m1858a(view2, motionEvent);
                    }
                });
            }
            Activity activity = (Activity) this.f1570a.f1753k.get();
            FrameLayout frameLayout = activity != null ? (FrameLayout) activity.findViewById(R.id.content) : null;
            View view2 = this.f1570a.f1714I;
            if (view2 != null) {
                view2.setBackgroundColor(ViewCompat.MEASURED_STATE_MASK);
            }
            if (frameLayout != null) {
                frameLayout.addView(this.f1570a.f1714I, new AbsoluteLayout.LayoutParams(-1, -1, 0, 0));
            }
            View view3 = this.f1570a.f1714I;
            if (view3 != null) {
                view3.requestFocus();
            }
            final GestureDetectorOnGestureListenerC3049Ya gestureDetectorOnGestureListenerC3049Ya2 = this.f1570a;
            View view4 = gestureDetectorOnGestureListenerC3049Ya2.f1714I;
            View.OnKeyListener onKeyListener = new View.OnKeyListener() { // from class: com.inmobi.media.Ua$$ExternalSyntheticLambda3
                @Override // android.view.View.OnKeyListener
                public final boolean onKey(View view5, int i, KeyEvent keyEvent) {
                    return C2993Ua.m1859a(gestureDetectorOnGestureListenerC3049Ya2, this, view5, i, keyEvent);
                }
            };
            if (view4 != null) {
                view4.setOnKeyListener(onKeyListener);
            }
            if (view4 != null) {
                view4.setFocusable(true);
            }
            if (view4 != null) {
                view4.setFocusableInTouchMode(true);
            }
            if (view4 != null) {
                view4.requestFocus();
            }
        }
    }

    /* JADX INFO: renamed from: b */
    public static final void m1860b(GeolocationPermissions.Callback callback, String origin, DialogInterface dialogInterface, int i) {
        Intrinsics.checkNotNullParameter(callback, "$callback");
        Intrinsics.checkNotNullParameter(origin, "$origin");
        callback.invoke(origin, false, false);
    }

    /* JADX INFO: renamed from: a */
    public static final boolean m1859a(GestureDetectorOnGestureListenerC3049Ya this$0, C2993Ua this$1, View view, int i, KeyEvent keyEvent) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(this$1, "this$1");
        if (4 != keyEvent.getKeyCode() || keyEvent.getAction() != 0) {
            return false;
        }
        InterfaceC3147f5 interfaceC3147f5 = this$0.f1749i;
        if (interfaceC3147f5 != null) {
            String str = GestureDetectorOnGestureListenerC3049Ya.f1696P0;
            Intrinsics.checkNotNullExpressionValue(str, "access$getTAG$cp(...)");
            ((C3162g5) interfaceC3147f5).m2147a(str, "Back pressed when HTML5 video is playing.");
        }
        this$1.m1863a();
        return true;
    }

    @Override // android.webkit.WebChromeClient
    public final void onGeolocationPermissionsShowPrompt(final String origin, final GeolocationPermissions.Callback callback) {
        Intrinsics.checkNotNullParameter(origin, "origin");
        Intrinsics.checkNotNullParameter(callback, "callback");
        if (this.f1570a.f1753k.get() != null) {
            new AlertDialog.Builder((Context) this.f1570a.f1753k.get()).setTitle("Location Permission").setMessage("Allow location access").setPositiveButton(R.string.ok, new DialogInterface.OnClickListener() { // from class: com.inmobi.media.Ua$$ExternalSyntheticLambda5
                @Override // android.content.DialogInterface.OnClickListener
                public final void onClick(DialogInterface dialogInterface, int i) {
                    C2993Ua.m1856a(callback, origin, dialogInterface, i);
                }
            }).setNegativeButton(R.string.cancel, new DialogInterface.OnClickListener() { // from class: com.inmobi.media.Ua$$ExternalSyntheticLambda6
                @Override // android.content.DialogInterface.OnClickListener
                public final void onClick(DialogInterface dialogInterface, int i) {
                    C2993Ua.m1860b(callback, origin, dialogInterface, i);
                }
            }).create().show();
        }
        super.onGeolocationPermissionsShowPrompt(origin, callback);
    }

    /* JADX INFO: renamed from: a */
    public final void m1863a() {
        GestureDetectorOnGestureListenerC3049Ya gestureDetectorOnGestureListenerC3049Ya = this.f1570a;
        if (gestureDetectorOnGestureListenerC3049Ya.f1714I == null) {
            return;
        }
        WebChromeClient.CustomViewCallback customViewCallback = gestureDetectorOnGestureListenerC3049Ya.f1716J;
        if (customViewCallback != null) {
            customViewCallback.onCustomViewHidden();
        }
        GestureDetectorOnGestureListenerC3049Ya gestureDetectorOnGestureListenerC3049Ya2 = this.f1570a;
        gestureDetectorOnGestureListenerC3049Ya2.f1716J = null;
        View view = gestureDetectorOnGestureListenerC3049Ya2.f1714I;
        if ((view != null ? view.getParent() : null) != null) {
            View view2 = this.f1570a.f1714I;
            ViewParent parent = view2 != null ? view2.getParent() : null;
            ViewGroup viewGroup = parent instanceof ViewGroup ? (ViewGroup) parent : null;
            if (viewGroup != null) {
                viewGroup.removeView(this.f1570a.f1714I);
            }
            this.f1570a.f1714I = null;
        }
    }

    /* JADX INFO: renamed from: a */
    public static final void m1856a(GeolocationPermissions.Callback callback, String origin, DialogInterface dialogInterface, int i) {
        Intrinsics.checkNotNullParameter(callback, "$callback");
        Intrinsics.checkNotNullParameter(origin, "$origin");
        callback.invoke(origin, true, false);
    }
}
