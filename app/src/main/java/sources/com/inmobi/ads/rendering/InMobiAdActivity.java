package com.inmobi.ads.rendering;

import android.R;
import android.app.Activity;
import android.content.Intent;
import android.content.res.Configuration;
import android.util.SparseArray;
import android.view.MotionEvent;
import android.view.View;
import android.view.Window;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.window.OnBackInvokedCallback;
import android.window.OnBackInvokedDispatcher;
import com.inmobi.media.AbstractC2886N3;
import com.inmobi.media.AbstractC2912P;
import com.inmobi.media.AbstractC3078ab;
import com.inmobi.media.AbstractC3429y2;
import com.inmobi.media.C2751E3;
import com.inmobi.media.C2847K9;
import com.inmobi.media.C2917P4;
import com.inmobi.media.C2926Pd;
import com.inmobi.media.C2931Q3;
import com.inmobi.media.C2945R4;
import com.inmobi.media.C2973T4;
import com.inmobi.media.C2986U3;
import com.inmobi.media.C3042Y3;
import com.inmobi.media.C3162g5;
import com.inmobi.media.C3355t3;
import com.inmobi.media.GestureDetectorOnGestureListenerC3049Ya;
import com.inmobi.media.InterfaceC3147f5;
import com.inmobi.media.InterfaceC3396w;
import com.inmobi.media.InterfaceC3411x;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import okio.Utf8;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(m2721d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0007\u0018\u00002\u00020\u0001:\u0001\u0004B\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0005"}, m2722d2 = {"Lcom/inmobi/ads/rendering/InMobiAdActivity;", "Landroid/app/Activity;", "<init>", "()V", "com/inmobi/media/S4", "media_release"}, m2723k = 1, m2724mv = {1, 9, 0}, m2726xi = 48)
public final class InMobiAdActivity extends Activity {

    /* JADX INFO: renamed from: k */
    public static final SparseArray f787k = new SparseArray();

    /* JADX INFO: renamed from: l */
    public static GestureDetectorOnGestureListenerC3049Ya f788l;

    /* JADX INFO: renamed from: m */
    public static AbstractC3078ab f789m;

    /* JADX INFO: renamed from: a */
    public C2945R4 f790a;

    /* JADX INFO: renamed from: b */
    public C2917P4 f791b;

    /* JADX INFO: renamed from: c */
    public GestureDetectorOnGestureListenerC3049Ya f792c;

    /* JADX INFO: renamed from: d */
    public int f793d;

    /* JADX INFO: renamed from: e */
    public boolean f794e;

    /* JADX INFO: renamed from: f */
    public boolean f795f;

    /* JADX INFO: renamed from: g */
    public boolean f796g;

    /* JADX INFO: renamed from: h */
    public InterfaceC3147f5 f797h;

    /* JADX INFO: renamed from: i */
    public C2926Pd f798i;

    /* JADX INFO: renamed from: j */
    public OnBackInvokedCallback f799j;

    /* JADX INFO: renamed from: a */
    public static final void m816a(InMobiAdActivity this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.m821a();
    }

    /* JADX INFO: renamed from: b */
    public static final boolean m818b(InMobiAdActivity this$0, View view, MotionEvent motionEvent) {
        C2986U3 c2986u3;
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        if (motionEvent.getAction() != 1) {
            if (motionEvent.getAction() == 0) {
                view.setBackgroundColor(-16711681);
            }
            return true;
        }
        view.setBackgroundColor(-7829368);
        GestureDetectorOnGestureListenerC3049Ya gestureDetectorOnGestureListenerC3049Ya = this$0.f792c;
        if (gestureDetectorOnGestureListenerC3049Ya != null && (c2986u3 = gestureDetectorOnGestureListenerC3049Ya.f1762o0) != null) {
            C2986U3.m1833a(c2986u3, 6, true, null, 12);
        }
        GestureDetectorOnGestureListenerC3049Ya gestureDetectorOnGestureListenerC3049Ya2 = this$0.f792c;
        if (gestureDetectorOnGestureListenerC3049Ya2 != null) {
            gestureDetectorOnGestureListenerC3049Ya2.reload();
        }
        return true;
    }

    /* JADX INFO: renamed from: c */
    public static final boolean m819c(InMobiAdActivity this$0, View view, MotionEvent motionEvent) {
        C2986U3 c2986u3;
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        if (motionEvent.getAction() != 1) {
            if (motionEvent.getAction() == 0) {
                view.setBackgroundColor(-16711681);
            }
            return true;
        }
        view.setBackgroundColor(-7829368);
        GestureDetectorOnGestureListenerC3049Ya gestureDetectorOnGestureListenerC3049Ya = this$0.f792c;
        if (gestureDetectorOnGestureListenerC3049Ya == null || !gestureDetectorOnGestureListenerC3049Ya.canGoBack()) {
            GestureDetectorOnGestureListenerC3049Ya gestureDetectorOnGestureListenerC3049Ya2 = this$0.f792c;
            if (gestureDetectorOnGestureListenerC3049Ya2 != null && (c2986u3 = gestureDetectorOnGestureListenerC3049Ya2.f1762o0) != null) {
                C2986U3.m1833a(c2986u3, 5, true, null, 12);
            }
            this$0.f794e = true;
            this$0.finish();
        } else {
            GestureDetectorOnGestureListenerC3049Ya gestureDetectorOnGestureListenerC3049Ya3 = this$0.f792c;
            if (gestureDetectorOnGestureListenerC3049Ya3 != null) {
                gestureDetectorOnGestureListenerC3049Ya3.goBack();
            }
        }
        return true;
    }

    /* JADX INFO: renamed from: d */
    public static final boolean m820d(InMobiAdActivity this$0, View view, MotionEvent motionEvent) {
        GestureDetectorOnGestureListenerC3049Ya gestureDetectorOnGestureListenerC3049Ya;
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        if (motionEvent.getAction() != 1) {
            if (motionEvent.getAction() == 0) {
                view.setBackgroundColor(-16711681);
            }
            return true;
        }
        view.setBackgroundColor(-7829368);
        GestureDetectorOnGestureListenerC3049Ya gestureDetectorOnGestureListenerC3049Ya2 = this$0.f792c;
        if (gestureDetectorOnGestureListenerC3049Ya2 != null && gestureDetectorOnGestureListenerC3049Ya2.canGoForward() && (gestureDetectorOnGestureListenerC3049Ya = this$0.f792c) != null) {
            gestureDetectorOnGestureListenerC3049Ya.goForward();
        }
        return true;
    }

    @Override // android.app.Activity
    public final void onBackPressed() {
        m821a();
    }

    @Override // android.app.Activity, android.content.ComponentCallbacks
    public final void onConfigurationChanged(Configuration newConfig) {
        Intrinsics.checkNotNullParameter(newConfig, "newConfig");
        InterfaceC3147f5 interfaceC3147f5 = this.f797h;
        if (interfaceC3147f5 != null) {
            Intrinsics.checkNotNullExpressionValue("InMobiAdActivity", "TAG");
            ((C3162g5) interfaceC3147f5).m2152c("InMobiAdActivity", "onConfigChanged");
        }
        super.onConfigurationChanged(newConfig);
        C2945R4 c2945r4 = this.f790a;
        if (c2945r4 != null) {
            if (c2945r4 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("orientationHandler");
                c2945r4 = null;
            }
            c2945r4.m1760b();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:48:0x0140  */
    /* JADX WARN: Removed duplicated region for block: B:54:0x0166  */
    /* JADX WARN: Removed duplicated region for block: B:55:0x0171  */
    /* JADX WARN: Removed duplicated region for block: B:57:0x0176  */
    /* JADX WARN: Removed duplicated region for block: B:60:0x0191 A[PHI: r3
      0x0191: PHI (r3v10 com.inmobi.commons.core.configs.AdConfig) = (r3v9 com.inmobi.commons.core.configs.AdConfig), (r3v20 com.inmobi.commons.core.configs.AdConfig) binds: [B:56:0x0174, B:58:0x018b] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:66:0x01e0  */
    /* JADX WARN: Removed duplicated region for block: B:67:0x01e1 A[Catch: Exception -> 0x0264, TryCatch #2 {Exception -> 0x0264, blocks: (B:64:0x01d0, B:68:0x01e6, B:72:0x01f0, B:75:0x01f6, B:71:0x01eb, B:67:0x01e1), top: B:110:0x01d0 }] */
    /* JADX WARN: Removed duplicated region for block: B:70:0x01ea  */
    /* JADX WARN: Removed duplicated region for block: B:71:0x01eb A[Catch: Exception -> 0x0264, TryCatch #2 {Exception -> 0x0264, blocks: (B:64:0x01d0, B:68:0x01e6, B:72:0x01f0, B:75:0x01f6, B:71:0x01eb, B:67:0x01e1), top: B:110:0x01d0 }] */
    /* JADX WARN: Removed duplicated region for block: B:74:0x01f4  */
    /* JADX WARN: Removed duplicated region for block: B:79:0x0203  */
    /* JADX WARN: Removed duplicated region for block: B:82:0x0209 A[Catch: Exception -> 0x0262, TryCatch #3 {Exception -> 0x0262, blocks: (B:78:0x01ff, B:80:0x0205, B:82:0x0209, B:83:0x020c, B:85:0x0234, B:86:0x023c, B:88:0x0240, B:89:0x0243, B:91:0x0247, B:92:0x024c), top: B:112:0x01ff }] */
    /* JADX WARN: Removed duplicated region for block: B:85:0x0234 A[Catch: Exception -> 0x0262, TryCatch #3 {Exception -> 0x0262, blocks: (B:78:0x01ff, B:80:0x0205, B:82:0x0209, B:83:0x020c, B:85:0x0234, B:86:0x023c, B:88:0x0240, B:89:0x0243, B:91:0x0247, B:92:0x024c), top: B:112:0x01ff }] */
    /* JADX WARN: Removed duplicated region for block: B:88:0x0240 A[Catch: Exception -> 0x0262, TryCatch #3 {Exception -> 0x0262, blocks: (B:78:0x01ff, B:80:0x0205, B:82:0x0209, B:83:0x020c, B:85:0x0234, B:86:0x023c, B:88:0x0240, B:89:0x0243, B:91:0x0247, B:92:0x024c), top: B:112:0x01ff }] */
    /* JADX WARN: Removed duplicated region for block: B:91:0x0247 A[Catch: Exception -> 0x0262, TryCatch #3 {Exception -> 0x0262, blocks: (B:78:0x01ff, B:80:0x0205, B:82:0x0209, B:83:0x020c, B:85:0x0234, B:86:0x023c, B:88:0x0240, B:89:0x0243, B:91:0x0247, B:92:0x024c), top: B:112:0x01ff }] */
    @Override // android.app.Activity
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void onCreate(android.os.Bundle r35) {
        /*
            Method dump skipped, instruction units count: 659
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.inmobi.ads.rendering.InMobiAdActivity.onCreate(android.os.Bundle):void");
    }

    @Override // android.app.Activity
    public final void onDestroy() {
        GestureDetectorOnGestureListenerC3049Ya gestureDetectorOnGestureListenerC3049Ya;
        C2986U3 c2986u3;
        InterfaceC3396w fullScreenEventsListener;
        InterfaceC3147f5 interfaceC3147f5 = this.f797h;
        if (interfaceC3147f5 != null) {
            Intrinsics.checkNotNullExpressionValue("InMobiAdActivity", "TAG");
            ((C3162g5) interfaceC3147f5).m2152c("InMobiAdActivity", "onDestroy");
        }
        if (this.f794e) {
            int i = this.f793d;
            if (100 == i) {
                GestureDetectorOnGestureListenerC3049Ya gestureDetectorOnGestureListenerC3049Ya2 = this.f792c;
                if (gestureDetectorOnGestureListenerC3049Ya2 != null && (fullScreenEventsListener = gestureDetectorOnGestureListenerC3049Ya2.getFullScreenEventsListener()) != null) {
                    try {
                        fullScreenEventsListener.mo1804b(this.f792c);
                        GestureDetectorOnGestureListenerC3049Ya gestureDetectorOnGestureListenerC3049Ya3 = this.f792c;
                        Intrinsics.checkNotNull(gestureDetectorOnGestureListenerC3049Ya3);
                        gestureDetectorOnGestureListenerC3049Ya3.mo845b();
                        C2945R4 c2945r4 = this.f790a;
                        if (c2945r4 == null) {
                            Intrinsics.throwUninitializedPropertyAccessException("orientationHandler");
                            c2945r4 = null;
                        }
                        GestureDetectorOnGestureListenerC3049Ya orientationListener = this.f792c;
                        Intrinsics.checkNotNull(orientationListener);
                        c2945r4.getClass();
                        Intrinsics.checkNotNullParameter(orientationListener, "orientationListener");
                        c2945r4.f1494b.remove(orientationListener);
                        c2945r4.m1758a();
                        this.f792c = null;
                    } catch (Exception unused) {
                    }
                }
            } else if (102 == i) {
                C2917P4 orientationListener2 = this.f791b;
                if (orientationListener2 != null) {
                    C2945R4 c2945r42 = this.f790a;
                    if (c2945r42 == null) {
                        Intrinsics.throwUninitializedPropertyAccessException("orientationHandler");
                        c2945r42 = null;
                    }
                    c2945r42.getClass();
                    Intrinsics.checkNotNullParameter(orientationListener2, "orientationListener");
                    c2945r42.f1494b.remove(orientationListener2);
                    c2945r42.m1758a();
                    AbstractC2912P abstractC2912P = orientationListener2.f1365c;
                    if (abstractC2912P != null) {
                        abstractC2912P.mo939b();
                    }
                    RelativeLayout relativeLayout = orientationListener2.f1366d;
                    if (relativeLayout != null) {
                        relativeLayout.removeAllViews();
                    }
                    C2931Q3 c2931q3 = orientationListener2.f1367e;
                    if (c2931q3 != null) {
                        C3042Y3 c3042y3 = c2931q3.f1463c;
                        if (c3042y3 != null) {
                            c3042y3.destroy();
                        }
                        c2931q3.f1463c = null;
                        c2931q3.f1464d = null;
                        c2931q3.f1465e = null;
                        C2926Pd c2926Pd = c2931q3.f1467g;
                        if (c2926Pd != null) {
                            c2926Pd.m1535a();
                        }
                        c2931q3.removeAllViews();
                    }
                    orientationListener2.f1363a.clear();
                    orientationListener2.f1364b = null;
                    orientationListener2.f1365c = null;
                    orientationListener2.f1366d = null;
                    orientationListener2.f1367e = null;
                }
                this.f791b = null;
            }
        } else {
            int i2 = this.f793d;
            if (100 != i2 && 102 == i2) {
                C2917P4 orientationListener3 = this.f791b;
                if (orientationListener3 != null) {
                    C2945R4 c2945r43 = this.f790a;
                    if (c2945r43 == null) {
                        Intrinsics.throwUninitializedPropertyAccessException("orientationHandler");
                        c2945r43 = null;
                    }
                    c2945r43.getClass();
                    Intrinsics.checkNotNullParameter(orientationListener3, "orientationListener");
                    c2945r43.f1494b.remove(orientationListener3);
                    c2945r43.m1758a();
                    AbstractC2912P abstractC2912P2 = orientationListener3.f1365c;
                    if (abstractC2912P2 != null) {
                        abstractC2912P2.mo939b();
                    }
                    RelativeLayout relativeLayout2 = orientationListener3.f1366d;
                    if (relativeLayout2 != null) {
                        relativeLayout2.removeAllViews();
                    }
                    C2931Q3 c2931q32 = orientationListener3.f1367e;
                    if (c2931q32 != null) {
                        C3042Y3 c3042y32 = c2931q32.f1463c;
                        if (c3042y32 != null) {
                            c3042y32.destroy();
                        }
                        c2931q32.f1463c = null;
                        c2931q32.f1464d = null;
                        c2931q32.f1465e = null;
                        C2926Pd c2926Pd2 = c2931q32.f1467g;
                        if (c2926Pd2 != null) {
                            c2926Pd2.m1535a();
                        }
                        c2931q32.removeAllViews();
                    }
                    orientationListener3.f1363a.clear();
                    orientationListener3.f1364b = null;
                    orientationListener3.f1365c = null;
                    orientationListener3.f1366d = null;
                    orientationListener3.f1367e = null;
                }
                this.f791b = null;
            }
            if (100 == this.f793d && (gestureDetectorOnGestureListenerC3049Ya = this.f792c) != null && (c2986u3 = gestureDetectorOnGestureListenerC3049Ya.f1762o0) != null) {
                C2986U3.m1833a(c2986u3, 9, true, null, 12);
            }
        }
        C2926Pd c2926Pd3 = this.f798i;
        if (c2926Pd3 != null) {
            c2926Pd3.m1535a();
        }
        super.onDestroy();
    }

    @Override // android.app.Activity
    public final void onMultiWindowModeChanged(boolean z) {
        C2917P4 c2917p4;
        C2945R4 c2945r4;
        InterfaceC3147f5 interfaceC3147f5 = this.f797h;
        if (interfaceC3147f5 != null) {
            Intrinsics.checkNotNullExpressionValue("InMobiAdActivity", "TAG");
            ((C3162g5) interfaceC3147f5).m2152c("InMobiAdActivity", "multiWindow mode - " + z);
        }
        super.onMultiWindowModeChanged(z);
        if (z || (c2917p4 = this.f791b) == null) {
            return;
        }
        InterfaceC3411x interfaceC3411x = c2917p4.f1364b;
        C2945R4 c2945r42 = null;
        C2847K9 orientationProperties = (interfaceC3411x == null || !(interfaceC3411x instanceof GestureDetectorOnGestureListenerC3049Ya)) ? null : ((GestureDetectorOnGestureListenerC3049Ya) interfaceC3411x).getOrientationProperties();
        if (orientationProperties == null || (c2945r4 = this.f790a) == null) {
            return;
        }
        if (c2945r4 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("orientationHandler");
        } else {
            c2945r42 = c2945r4;
        }
        c2945r42.m1759a(orientationProperties);
    }

    @Override // android.app.Activity
    public final void onNewIntent(Intent intent) {
        Intrinsics.checkNotNullParameter(intent, "intent");
        InterfaceC3147f5 interfaceC3147f5 = this.f797h;
        if (interfaceC3147f5 != null) {
            Intrinsics.checkNotNullExpressionValue("InMobiAdActivity", "TAG");
            ((C3162g5) interfaceC3147f5).m2152c("InMobiAdActivity", "onNewIntent");
        }
        super.onNewIntent(intent);
        this.f795f = false;
        this.f792c = null;
        setIntent(intent);
        C2917P4 c2917p4 = this.f791b;
        if (c2917p4 != null) {
            SparseArray adContainers = f787k;
            Intrinsics.checkNotNullParameter(intent, "intent");
            Intrinsics.checkNotNullParameter(adContainers, "adContainers");
            c2917p4.m1459a(intent, adContainers);
            AbstractC2912P abstractC2912P = c2917p4.f1365c;
            if (abstractC2912P != null) {
                abstractC2912P.mo943g();
            }
        }
    }

    @Override // android.app.Activity
    public final void onResume() {
        C2917P4 c2917p4;
        AbstractC2912P abstractC2912P;
        InterfaceC3396w fullScreenEventsListener;
        InterfaceC3147f5 interfaceC3147f5 = this.f797h;
        if (interfaceC3147f5 != null) {
            Intrinsics.checkNotNullExpressionValue("InMobiAdActivity", "TAG");
            ((C3162g5) interfaceC3147f5).m2152c("InMobiAdActivity", "onResume");
        }
        super.onResume();
        if (this.f794e) {
            return;
        }
        int i = this.f793d;
        if (100 != i) {
            if (102 != i || (c2917p4 = this.f791b) == null || (abstractC2912P = c2917p4.f1365c) == null) {
                return;
            }
            abstractC2912P.mo940c();
            return;
        }
        GestureDetectorOnGestureListenerC3049Ya gestureDetectorOnGestureListenerC3049Ya = this.f792c;
        if (gestureDetectorOnGestureListenerC3049Ya == null || (fullScreenEventsListener = gestureDetectorOnGestureListenerC3049Ya.getFullScreenEventsListener()) == null) {
            return;
        }
        try {
            if (this.f795f) {
                return;
            }
            this.f795f = true;
            fullScreenEventsListener.mo1803a(this.f792c);
        } catch (Exception unused) {
        }
    }

    @Override // android.app.Activity
    public final void onStart() {
        C2917P4 c2917p4;
        Window window;
        InterfaceC3147f5 interfaceC3147f5 = this.f797h;
        if (interfaceC3147f5 != null) {
            Intrinsics.checkNotNullExpressionValue("InMobiAdActivity", "TAG");
            ((C3162g5) interfaceC3147f5).m2152c("InMobiAdActivity", "onStart");
        }
        super.onStart();
        C2751E3 c2751e3 = C2751E3.f962a;
        if (c2751e3.m1008B()) {
            if (this.f799j == null) {
                this.f799j = new OnBackInvokedCallback() { // from class: com.inmobi.ads.rendering.InMobiAdActivity$$ExternalSyntheticLambda4
                    @Override // android.window.OnBackInvokedCallback
                    public final void onBackInvoked() {
                        InMobiAdActivity.m816a(this.f$0);
                    }
                };
            }
            OnBackInvokedDispatcher onBackInvokedDispatcher = getOnBackInvokedDispatcher();
            OnBackInvokedCallback onBackInvokedCallback = this.f799j;
            if (onBackInvokedCallback == null) {
                Intrinsics.throwUninitializedPropertyAccessException("backInvokedCallback");
                onBackInvokedCallback = null;
            }
            onBackInvokedDispatcher.registerOnBackInvokedCallback(0, onBackInvokedCallback);
        }
        if (this.f794e || 102 != this.f793d || (c2917p4 = this.f791b) == null) {
            return;
        }
        AbstractC2912P abstractC2912P = c2917p4.f1365c;
        if (abstractC2912P != null) {
            abstractC2912P.mo943g();
        }
        InterfaceC3411x interfaceC3411x = c2917p4.f1364b;
        if (interfaceC3411x != null) {
            if ((interfaceC3411x instanceof GestureDetectorOnGestureListenerC3049Ya ? ((GestureDetectorOnGestureListenerC3049Ya) interfaceC3411x).f1713H0 : false) && !c2751e3.m1040z() && c2751e3.m1012F()) {
                Object obj = c2917p4.f1363a.get();
                InMobiAdActivity inMobiAdActivity = obj instanceof InMobiAdActivity ? (InMobiAdActivity) obj : null;
                if (inMobiAdActivity == null || (window = inMobiAdActivity.getWindow()) == null) {
                    return;
                }
                window.getDecorView().setSystemUiVisibility(5638);
            }
        }
    }

    @Override // android.app.Activity
    public final void onStop() {
        C2917P4 c2917p4;
        AbstractC2912P abstractC2912P;
        InterfaceC3147f5 interfaceC3147f5 = this.f797h;
        if (interfaceC3147f5 != null) {
            Intrinsics.checkNotNullExpressionValue("InMobiAdActivity", "TAG");
            ((C3162g5) interfaceC3147f5).m2152c("InMobiAdActivity", "onStop");
        }
        super.onStop();
        if (C2751E3.f962a.m1008B() && this.f799j != null) {
            OnBackInvokedDispatcher onBackInvokedDispatcher = getOnBackInvokedDispatcher();
            OnBackInvokedCallback onBackInvokedCallback = this.f799j;
            if (onBackInvokedCallback == null) {
                Intrinsics.throwUninitializedPropertyAccessException("backInvokedCallback");
                onBackInvokedCallback = null;
            }
            onBackInvokedDispatcher.unregisterOnBackInvokedCallback(onBackInvokedCallback);
        }
        if (this.f794e || (c2917p4 = this.f791b) == null || (abstractC2912P = c2917p4.f1365c) == null) {
            return;
        }
        abstractC2912P.mo941d();
    }

    /* JADX INFO: renamed from: a */
    public final void m822a(RelativeLayout relativeLayout) {
        float f = AbstractC2886N3.m1388d().f1332c;
        LinearLayout linearLayout = new LinearLayout(this);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, (int) (48 * f));
        linearLayout.setOrientation(0);
        linearLayout.setId(Utf8.REPLACEMENT_CODE_POINT);
        linearLayout.setWeightSum(100.0f);
        linearLayout.setBackgroundResource(R.drawable.bottom_bar);
        linearLayout.setBackgroundColor(-7829368);
        relativeLayout.setBackgroundColor(-7829368);
        layoutParams.addRule(12);
        if (AbstractC3429y2.m2606a(this)) {
            C2926Pd c2926Pd = this.f798i;
            if (c2926Pd != null) {
                c2926Pd.m1535a();
            }
            this.f798i = new C2926Pd(this, new C2973T4(layoutParams), this.f797h);
        }
        relativeLayout.addView(linearLayout, layoutParams);
        LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(-1, -1);
        layoutParams2.weight = 25.0f;
        C3355t3 c3355t3 = new C3355t3(this, (byte) 2, this.f797h);
        c3355t3.setOnTouchListener(new View.OnTouchListener() { // from class: com.inmobi.ads.rendering.InMobiAdActivity$$ExternalSyntheticLambda0
            @Override // android.view.View.OnTouchListener
            public final boolean onTouch(View view, MotionEvent motionEvent) {
                return InMobiAdActivity.m817a(this.f$0, view, motionEvent);
            }
        });
        linearLayout.addView(c3355t3, layoutParams2);
        C3355t3 c3355t32 = new C3355t3(this, (byte) 3, this.f797h);
        c3355t32.setOnTouchListener(new View.OnTouchListener() { // from class: com.inmobi.ads.rendering.InMobiAdActivity$$ExternalSyntheticLambda1
            @Override // android.view.View.OnTouchListener
            public final boolean onTouch(View view, MotionEvent motionEvent) {
                return InMobiAdActivity.m818b(this.f$0, view, motionEvent);
            }
        });
        linearLayout.addView(c3355t32, layoutParams2);
        C3355t3 c3355t33 = new C3355t3(this, (byte) 4, this.f797h);
        c3355t33.setOnTouchListener(new View.OnTouchListener() { // from class: com.inmobi.ads.rendering.InMobiAdActivity$$ExternalSyntheticLambda2
            @Override // android.view.View.OnTouchListener
            public final boolean onTouch(View view, MotionEvent motionEvent) {
                return InMobiAdActivity.m819c(this.f$0, view, motionEvent);
            }
        });
        linearLayout.addView(c3355t33, layoutParams2);
        C3355t3 c3355t34 = new C3355t3(this, (byte) 6, this.f797h);
        c3355t34.setOnTouchListener(new View.OnTouchListener() { // from class: com.inmobi.ads.rendering.InMobiAdActivity$$ExternalSyntheticLambda3
            @Override // android.view.View.OnTouchListener
            public final boolean onTouch(View view, MotionEvent motionEvent) {
                return InMobiAdActivity.m820d(this.f$0, view, motionEvent);
            }
        });
        linearLayout.addView(c3355t34, layoutParams2);
    }

    @Override // android.app.Activity
    public final void onMultiWindowModeChanged(boolean z, Configuration newConfig) {
        Intrinsics.checkNotNullParameter(newConfig, "newConfig");
        super.onMultiWindowModeChanged(z, newConfig);
        onMultiWindowModeChanged(z);
    }

    /* JADX INFO: renamed from: a */
    public static final boolean m817a(InMobiAdActivity this$0, View view, MotionEvent motionEvent) {
        C2986U3 c2986u3;
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        if (motionEvent.getAction() == 1) {
            view.setBackgroundColor(-7829368);
            GestureDetectorOnGestureListenerC3049Ya gestureDetectorOnGestureListenerC3049Ya = this$0.f792c;
            if (gestureDetectorOnGestureListenerC3049Ya != null && (c2986u3 = gestureDetectorOnGestureListenerC3049Ya.f1762o0) != null) {
                C2986U3.m1833a(c2986u3, 5, true, null, 12);
            }
            this$0.f794e = true;
            this$0.finish();
            return true;
        }
        if (motionEvent.getAction() == 0) {
            view.setBackgroundColor(-16711681);
        }
        return true;
    }

    /* JADX INFO: renamed from: a */
    public final void m821a() {
        C2986U3 c2986u3;
        AbstractC2912P abstractC2912P;
        InterfaceC3147f5 interfaceC3147f5 = this.f797h;
        if (interfaceC3147f5 != null) {
            Intrinsics.checkNotNullExpressionValue("InMobiAdActivity", "TAG");
            ((C3162g5) interfaceC3147f5).m2152c("InMobiAdActivity", "onBackPressed");
        }
        int i = this.f793d;
        if (i == 102) {
            InterfaceC3147f5 interfaceC3147f52 = this.f797h;
            if (interfaceC3147f52 != null) {
                Intrinsics.checkNotNullExpressionValue("InMobiAdActivity", "TAG");
                ((C3162g5) interfaceC3147f52).m2152c("InMobiAdActivity", "back pressed on ad");
            }
            C2917P4 c2917p4 = this.f791b;
            if (c2917p4 == null || (abstractC2912P = c2917p4.f1365c) == null) {
                return;
            }
            abstractC2912P.mo937a();
            return;
        }
        if (i == 100) {
            InterfaceC3147f5 interfaceC3147f53 = this.f797h;
            if (interfaceC3147f53 != null) {
                Intrinsics.checkNotNullExpressionValue("InMobiAdActivity", "TAG");
                ((C3162g5) interfaceC3147f53).m2152c("InMobiAdActivity", "back pressed in browser");
            }
            GestureDetectorOnGestureListenerC3049Ya gestureDetectorOnGestureListenerC3049Ya = this.f792c;
            if (gestureDetectorOnGestureListenerC3049Ya != null && (c2986u3 = gestureDetectorOnGestureListenerC3049Ya.f1762o0) != null) {
                C2986U3.m1833a(c2986u3, 7, true, null, 12);
            }
            this.f794e = true;
            finish();
        }
    }
}
