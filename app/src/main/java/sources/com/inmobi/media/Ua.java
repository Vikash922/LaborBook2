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

/* JADX INFO: loaded from: classes6.dex */
public final class Ua extends WebChromeClient {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ Ya f256a;

    public Ua(Ya ya) {
        this.f256a = ya;
    }

    public static final void a(JsResult result, DialogInterface dialogInterface, int i) {
        Intrinsics.checkNotNullParameter(result, "$result");
        result.confirm();
    }

    public static final boolean a(View view, MotionEvent motionEvent) {
        return true;
    }

    public static final void b(JsResult result, DialogInterface dialogInterface, int i) {
        Intrinsics.checkNotNullParameter(result, "$result");
        result.confirm();
    }

    public static final void c(JsResult result, DialogInterface dialogInterface, int i) {
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
        InterfaceC0298f5 interfaceC0298f5 = this.f256a.i;
        if (interfaceC0298f5 == null) {
            return true;
        }
        String str2 = Ya.P0;
        ((C0314g5) interfaceC0298f5).c(str2, AbstractC0378k6.a(str2, "access$getTAG$cp(...)", "Console message:", str));
        return true;
    }

    @Override // android.webkit.WebChromeClient
    public final void onHideCustomView() {
        a();
        super.onHideCustomView();
    }

    @Override // android.webkit.WebChromeClient
    public final boolean onJsAlert(WebView view, String url, String message, final JsResult result) {
        Intrinsics.checkNotNullParameter(view, "view");
        Intrinsics.checkNotNullParameter(url, "url");
        Intrinsics.checkNotNullParameter(message, "message");
        Intrinsics.checkNotNullParameter(result, "result");
        InterfaceC0298f5 interfaceC0298f5 = this.f256a.i;
        if (interfaceC0298f5 != null) {
            String str = Ya.P0;
            Intrinsics.checkNotNullExpressionValue(str, "access$getTAG$cp(...)");
            ((C0314g5) interfaceC0298f5).a(str, "jsAlert called with: " + message + url);
        }
        if (!Ya.a(this.f256a, result)) {
            return true;
        }
        Activity fullScreenActivity = this.f256a.getFullScreenActivity();
        if (fullScreenActivity != null) {
            new AlertDialog.Builder(fullScreenActivity).setMessage(message).setTitle(url).setPositiveButton(R.string.ok, new DialogInterface.OnClickListener() { // from class: com.inmobi.media.Ua$$ExternalSyntheticLambda4
                @Override // android.content.DialogInterface.OnClickListener
                public final void onClick(DialogInterface dialogInterface, int i) {
                    Ua.a(result, dialogInterface, i);
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
        InterfaceC0298f5 interfaceC0298f5 = this.f256a.i;
        if (interfaceC0298f5 != null) {
            String str = Ya.P0;
            Intrinsics.checkNotNullExpressionValue(str, "access$getTAG$cp(...)");
            ((C0314g5) interfaceC0298f5).a(str, "jsConfirm called with: " + message + url);
        }
        if (!Ya.a(this.f256a, result)) {
            return true;
        }
        if (this.f256a.getFullScreenActivity() != null) {
            new AlertDialog.Builder(this.f256a.getFullScreenActivity()).setMessage(message).setPositiveButton(R.string.ok, new DialogInterface.OnClickListener() { // from class: com.inmobi.media.Ua$$ExternalSyntheticLambda0
                @Override // android.content.DialogInterface.OnClickListener
                public final void onClick(DialogInterface dialogInterface, int i) {
                    Ua.b(result, dialogInterface, i);
                }
            }).setNegativeButton(R.string.cancel, new DialogInterface.OnClickListener() { // from class: com.inmobi.media.Ua$$ExternalSyntheticLambda1
                @Override // android.content.DialogInterface.OnClickListener
                public final void onClick(DialogInterface dialogInterface, int i) {
                    Ua.c(result, dialogInterface, i);
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
        InterfaceC0298f5 interfaceC0298f5 = this.f256a.i;
        if (interfaceC0298f5 != null) {
            String str = Ya.P0;
            Intrinsics.checkNotNullExpressionValue(str, "access$getTAG$cp(...)");
            ((C0314g5) interfaceC0298f5).a(str, "jsPrompt called with: " + message + url);
        }
        if (!Ya.a(this.f256a, result)) {
            return true;
        }
        if (this.f256a.getFullScreenActivity() != null) {
            return false;
        }
        result.cancel();
        return true;
    }

    @Override // android.webkit.WebChromeClient
    public final void onProgressChanged(WebView webView, int i) {
        InterfaceC0298f5 interfaceC0298f5 = this.f256a.i;
        if (interfaceC0298f5 != null) {
            String str = Ya.P0;
            ((C0314g5) interfaceC0298f5).c(str, AbstractC0568x8.a(str, "access$getTAG$cp(...)", "webview progress changed - ", i));
        }
        super.onProgressChanged(webView, i);
    }

    @Override // android.webkit.WebChromeClient
    public final void onShowCustomView(View view, WebChromeClient.CustomViewCallback callback) {
        Intrinsics.checkNotNullParameter(view, "view");
        Intrinsics.checkNotNullParameter(callback, "callback");
        if (this.f256a.k.get() != null) {
            Ya ya = this.f256a;
            ya.I = view;
            ya.J = callback;
            if (view != null) {
                view.setOnTouchListener(new View.OnTouchListener() { // from class: com.inmobi.media.Ua$$ExternalSyntheticLambda2
                    @Override // android.view.View.OnTouchListener
                    public final boolean onTouch(View view2, MotionEvent motionEvent) {
                        return Ua.a(view2, motionEvent);
                    }
                });
            }
            Activity activity = (Activity) this.f256a.k.get();
            FrameLayout frameLayout = activity != null ? (FrameLayout) activity.findViewById(R.id.content) : null;
            View view2 = this.f256a.I;
            if (view2 != null) {
                view2.setBackgroundColor(ViewCompat.MEASURED_STATE_MASK);
            }
            if (frameLayout != null) {
                frameLayout.addView(this.f256a.I, new AbsoluteLayout.LayoutParams(-1, -1, 0, 0));
            }
            View view3 = this.f256a.I;
            if (view3 != null) {
                view3.requestFocus();
            }
            final Ya ya2 = this.f256a;
            View view4 = ya2.I;
            View.OnKeyListener onKeyListener = new View.OnKeyListener() { // from class: com.inmobi.media.Ua$$ExternalSyntheticLambda3
                @Override // android.view.View.OnKeyListener
                public final boolean onKey(View view5, int i, KeyEvent keyEvent) {
                    return Ua.a(ya2, this, view5, i, keyEvent);
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

    public static final void b(GeolocationPermissions.Callback callback, String origin, DialogInterface dialogInterface, int i) {
        Intrinsics.checkNotNullParameter(callback, "$callback");
        Intrinsics.checkNotNullParameter(origin, "$origin");
        callback.invoke(origin, false, false);
    }

    public static final boolean a(Ya this$0, Ua this$1, View view, int i, KeyEvent keyEvent) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(this$1, "this$1");
        if (4 != keyEvent.getKeyCode() || keyEvent.getAction() != 0) {
            return false;
        }
        InterfaceC0298f5 interfaceC0298f5 = this$0.i;
        if (interfaceC0298f5 != null) {
            String str = Ya.P0;
            Intrinsics.checkNotNullExpressionValue(str, "access$getTAG$cp(...)");
            ((C0314g5) interfaceC0298f5).a(str, "Back pressed when HTML5 video is playing.");
        }
        this$1.a();
        return true;
    }

    @Override // android.webkit.WebChromeClient
    public final void onGeolocationPermissionsShowPrompt(final String origin, final GeolocationPermissions.Callback callback) {
        Intrinsics.checkNotNullParameter(origin, "origin");
        Intrinsics.checkNotNullParameter(callback, "callback");
        if (this.f256a.k.get() != null) {
            new AlertDialog.Builder((Context) this.f256a.k.get()).setTitle("Location Permission").setMessage("Allow location access").setPositiveButton(R.string.ok, new DialogInterface.OnClickListener() { // from class: com.inmobi.media.Ua$$ExternalSyntheticLambda5
                @Override // android.content.DialogInterface.OnClickListener
                public final void onClick(DialogInterface dialogInterface, int i) {
                    Ua.a(callback, origin, dialogInterface, i);
                }
            }).setNegativeButton(R.string.cancel, new DialogInterface.OnClickListener() { // from class: com.inmobi.media.Ua$$ExternalSyntheticLambda6
                @Override // android.content.DialogInterface.OnClickListener
                public final void onClick(DialogInterface dialogInterface, int i) {
                    Ua.b(callback, origin, dialogInterface, i);
                }
            }).create().show();
        }
        super.onGeolocationPermissionsShowPrompt(origin, callback);
    }

    public final void a() {
        Ya ya = this.f256a;
        if (ya.I == null) {
            return;
        }
        WebChromeClient.CustomViewCallback customViewCallback = ya.J;
        if (customViewCallback != null) {
            customViewCallback.onCustomViewHidden();
        }
        Ya ya2 = this.f256a;
        ya2.J = null;
        View view = ya2.I;
        if ((view != null ? view.getParent() : null) != null) {
            View view2 = this.f256a.I;
            ViewParent parent = view2 != null ? view2.getParent() : null;
            ViewGroup viewGroup = parent instanceof ViewGroup ? (ViewGroup) parent : null;
            if (viewGroup != null) {
                viewGroup.removeView(this.f256a.I);
            }
            this.f256a.I = null;
        }
    }

    public static final void a(GeolocationPermissions.Callback callback, String origin, DialogInterface dialogInterface, int i) {
        Intrinsics.checkNotNullParameter(callback, "$callback");
        Intrinsics.checkNotNullParameter(origin, "$origin");
        callback.invoke(origin, true, false);
    }
}
