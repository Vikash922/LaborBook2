package com.inmobi.media;

import android.R;
import android.app.Activity;
import android.content.Intent;
import android.util.SparseArray;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.Window;
import android.view.WindowManager;
import android.widget.FrameLayout;
import android.widget.RelativeLayout;
import androidx.core.view.WindowCompat;
import androidx.core.view.WindowInsetsCompat;
import androidx.core.view.WindowInsetsControllerCompat;
import com.inmobi.ads.rendering.InMobiAdActivity;
import java.lang.ref.WeakReference;
import java.util.Objects;
import kotlin.jvm.internal.Intrinsics;
import kotlin.math.MathKt;

/* JADX INFO: renamed from: com.inmobi.media.P4 */
/* JADX INFO: loaded from: classes6.dex */
public final class C2917P4 implements InterfaceC2862L9 {

    /* JADX INFO: renamed from: a */
    public final WeakReference f1363a;

    /* JADX INFO: renamed from: b */
    public InterfaceC3411x f1364b;

    /* JADX INFO: renamed from: c */
    public AbstractC2912P f1365c;

    /* JADX INFO: renamed from: d */
    public RelativeLayout f1366d;

    /* JADX INFO: renamed from: e */
    public C2931Q3 f1367e;

    /* JADX INFO: renamed from: f */
    public EnumC2817I9 f1368f;

    /* JADX INFO: renamed from: g */
    public float f1369g;

    /* JADX INFO: renamed from: h */
    public InterfaceC3147f5 f1370h;

    /* JADX INFO: renamed from: i */
    public final C2902O4 f1371i;

    /* JADX INFO: renamed from: j */
    public final C2887N4 f1372j;

    public C2917P4(InMobiAdActivity activity) {
        Intrinsics.checkNotNullParameter(activity, "activity");
        this.f1363a = new WeakReference(activity);
        this.f1368f = AbstractC2832J9.m1195a(AbstractC2886N3.m1391g());
        this.f1369g = 1.0f;
        this.f1371i = new C2902O4(this);
        this.f1372j = new C2887N4(this);
    }

    /* JADX INFO: renamed from: a */
    public final void m1459a(Intent intent, SparseArray adContainers) {
        C2931Q3 c2931q3;
        Window window;
        Intrinsics.checkNotNullParameter(intent, "intent");
        Intrinsics.checkNotNullParameter(adContainers, "adContainers");
        if (!intent.hasExtra("com.inmobi.ads.rendering.InMobiAdActivity.EXTRA_AD_CONTAINER_INDEX")) {
            m1461b();
            return;
        }
        InterfaceC3411x interfaceC3411x = (InterfaceC3411x) adContainers.get(intent.getIntExtra("com.inmobi.ads.rendering.InMobiAdActivity.EXTRA_AD_CONTAINER_INDEX", -1));
        if (interfaceC3411x == null) {
            m1461b();
            return;
        }
        int intExtra = intent.getIntExtra("com.inmobi.ads.rendering.InMobiAdActivity.EXTRA_AD_CONTAINER_TYPE", 0);
        if (intExtra == 0) {
            InterfaceC3396w fullScreenEventsListener = interfaceC3411x.getFullScreenEventsListener();
            if (fullScreenEventsListener != null) {
                fullScreenEventsListener.mo1802a();
            }
            m1461b();
            return;
        }
        if (intent.getBooleanExtra("com.inmobi.ads.rendering.InMobiAdActivity.EXTRA_AD_ACTIVITY_IS_FULL_SCREEN", false) && (this.f1363a.get() instanceof InMobiAdActivity)) {
            Object obj = this.f1363a.get();
            Intrinsics.checkNotNull(obj, "null cannot be cast to non-null type com.inmobi.ads.rendering.InMobiAdActivity");
            if (!((InMobiAdActivity) obj).f796g) {
                Object obj2 = this.f1363a.get();
                Intrinsics.checkNotNull(obj2, "null cannot be cast to non-null type com.inmobi.ads.rendering.InMobiAdActivity");
                ((InMobiAdActivity) obj2).f796g = true;
                if (!(interfaceC3411x instanceof GestureDetectorOnGestureListenerC3049Ya) ? false : ((GestureDetectorOnGestureListenerC3049Ya) interfaceC3411x).f1713H0) {
                    InterfaceC3147f5 interfaceC3147f5 = this.f1370h;
                    if (interfaceC3147f5 != null) {
                        ((C3162g5) interfaceC3147f5).m2147a("InMobiActivityViewHandler", "showInImmersiveMode");
                    }
                    Object obj3 = this.f1363a.get();
                    InMobiAdActivity inMobiAdActivity = obj3 instanceof InMobiAdActivity ? (InMobiAdActivity) obj3 : null;
                    if (inMobiAdActivity != null && (window = inMobiAdActivity.getWindow()) != null) {
                        C2751E3 c2751e3 = C2751E3.f962a;
                        if (c2751e3.m1040z()) {
                            WindowManager.LayoutParams attributes = window.getAttributes();
                            attributes.layoutInDisplayCutoutMode = 3;
                            window.setAttributes(attributes);
                            WindowCompat.setDecorFitsSystemWindows(window, false);
                        } else if (c2751e3.m1038x()) {
                            WindowManager.LayoutParams attributes2 = window.getAttributes();
                            attributes2.layoutInDisplayCutoutMode = 1;
                            window.setAttributes(attributes2);
                            WindowCompat.setDecorFitsSystemWindows(window, false);
                        }
                        if (c2751e3.m1040z()) {
                            WindowInsetsControllerCompat insetsController = WindowCompat.getInsetsController(window, window.getDecorView());
                            if (insetsController != null) {
                                insetsController.setSystemBarsBehavior(2);
                            }
                            if (insetsController != null) {
                                insetsController.hide(WindowInsetsCompat.Type.systemBars());
                            }
                            if (insetsController != null) {
                                insetsController.hide(WindowInsetsCompat.Type.displayCutout());
                            }
                        } else if (c2751e3.m1012F()) {
                            window.getDecorView().setSystemUiVisibility(5638);
                        }
                    }
                } else {
                    Activity activity = (Activity) this.f1363a.get();
                    if (activity != null) {
                        Intrinsics.checkNotNullParameter(activity, "<this>");
                        try {
                            activity.requestWindowFeature(1);
                            activity.getWindow().setFlags(1024, 1024);
                        } catch (Exception unused) {
                        }
                    }
                }
            }
        }
        if ((200 == intExtra && !Intrinsics.areEqual("html", interfaceC3411x.getMarkupType())) || ((202 == intExtra && !Intrinsics.areEqual("htmlUrl", interfaceC3411x.getMarkupType())) || (201 == intExtra && !Intrinsics.areEqual("inmobiJson", interfaceC3411x.getMarkupType())))) {
            InterfaceC3396w fullScreenEventsListener2 = interfaceC3411x.getFullScreenEventsListener();
            if (fullScreenEventsListener2 != null) {
                fullScreenEventsListener2.mo1802a();
            }
            m1461b();
            return;
        }
        try {
            this.f1364b = interfaceC3411x;
            interfaceC3411x.setFullScreenActivityContext((Activity) this.f1363a.get());
            m1457a();
            Activity activity2 = (Activity) this.f1363a.get();
            if (activity2 != null) {
                RelativeLayout relativeLayout = new RelativeLayout(activity2);
                relativeLayout.setId(65534);
                this.f1366d = relativeLayout;
            }
            m1460a(interfaceC3411x);
            AbstractC2912P abstractC2912P = this.f1365c;
            if (abstractC2912P != null) {
                abstractC2912P.mo942f();
            }
            Activity activity3 = (Activity) this.f1363a.get();
            if (activity3 != null) {
                FrameLayout frameLayout = (FrameLayout) activity3.findViewById(R.id.content);
                RelativeLayout relativeLayout2 = frameLayout != null ? (RelativeLayout) frameLayout.findViewById(65519) : null;
                RelativeLayout relativeLayout3 = this.f1366d;
                if (relativeLayout3 != null && relativeLayout2 != null) {
                    RelativeLayout relativeLayout4 = (RelativeLayout) relativeLayout2.findViewById(65534);
                    if (relativeLayout4 != null) {
                        relativeLayout2.removeView(relativeLayout4);
                    }
                    relativeLayout2.addView(relativeLayout3);
                    AbstractC2912P abstractC2912P2 = this.f1365c;
                    if (abstractC2912P2 != null) {
                        abstractC2912P2.m1425e();
                    }
                }
            }
            if (interfaceC3411x instanceof GestureDetectorOnGestureListenerC3049Ya) {
                ((GestureDetectorOnGestureListenerC3049Ya) interfaceC3411x).setEmbeddedBrowserJSCallbacks(this.f1372j);
            }
            if ((interfaceC3411x instanceof GestureDetectorOnGestureListenerC3049Ya) && (c2931q3 = this.f1367e) != null) {
                c2931q3.setUserLeftApplicationListener(((GestureDetectorOnGestureListenerC3049Ya) interfaceC3411x).getListener());
            }
        } catch (Exception e) {
            interfaceC3411x.setFullScreenActivityContext(null);
            InterfaceC3396w fullScreenEventsListener3 = interfaceC3411x.getFullScreenEventsListener();
            if (fullScreenEventsListener3 != null) {
                fullScreenEventsListener3.mo1802a();
            }
            m1461b();
            C3402w5 c3402w5 = C3402w5.f2709a;
            C3402w5.f2712d.m2158a(AbstractC3102c5.m2045a(e, "event"));
        }
    }

    /* JADX INFO: renamed from: b */
    public final void m1461b() {
        Activity activity = (Activity) this.f1363a.get();
        if (activity instanceof InMobiAdActivity) {
            ((InMobiAdActivity) activity).finish();
        }
    }

    /* JADX INFO: renamed from: c */
    public final void m1462c() {
        C2901O3 c2901o3M1388d;
        if (this.f1367e == null) {
            return;
        }
        InterfaceC3411x interfaceC3411x = this.f1364b;
        if (interfaceC3411x == null) {
            c2901o3M1388d = AbstractC2886N3.m1388d();
        } else {
            if (!(!(interfaceC3411x instanceof GestureDetectorOnGestureListenerC3049Ya) ? false : ((GestureDetectorOnGestureListenerC3049Ya) interfaceC3411x).f1713H0)) {
                Activity activity = (Activity) this.f1363a.get();
                if (activity != null) {
                    Intrinsics.checkNotNull(activity);
                    if (AbstractC3429y2.m2606a(activity)) {
                    }
                }
                c2901o3M1388d = AbstractC2886N3.m1388d();
            }
            c2901o3M1388d = AbstractC2886N3.m1392h();
        }
        float f = c2901o3M1388d.f1330a;
        float f2 = c2901o3M1388d.f1332c;
        float f3 = f * f2;
        float f4 = c2901o3M1388d.f1331b * f2;
        if (AbstractC2832J9.m1196b(this.f1368f)) {
            m1458a(MathKt.roundToInt((1 - this.f1369g) * f3), -1);
        } else {
            m1458a(-1, MathKt.roundToInt((1 - this.f1369g) * f4));
        }
    }

    /* JADX INFO: renamed from: d */
    public final void m1463d() {
        try {
            final C2931Q3 c2931q3 = this.f1367e;
            if (c2931q3 != null) {
                ViewParent parent = c2931q3.getParent();
                ViewGroup viewGroup = parent instanceof ViewGroup ? (ViewGroup) parent : null;
                if (viewGroup != null) {
                    viewGroup.removeView(c2931q3);
                }
                ViewParent parent2 = c2931q3.getParent();
                ViewGroup viewGroup2 = parent2 instanceof ViewGroup ? (ViewGroup) parent2 : null;
                if (viewGroup2 != null) {
                    viewGroup2.post(new Runnable() { // from class: com.inmobi.media.P4$$ExternalSyntheticLambda0
                        @Override // java.lang.Runnable
                        public final void run() {
                            C2917P4.m1456a(c2931q3);
                        }
                    });
                }
            }
            C2931Q3 c2931q32 = this.f1367e;
            if (c2931q32 != null) {
                C3042Y3 c3042y3 = c2931q32.f1463c;
                if (c3042y3 != null) {
                    c3042y3.destroy();
                }
                c2931q32.f1463c = null;
                c2931q32.f1464d = null;
                c2931q32.f1465e = null;
                C2926Pd c2926Pd = c2931q32.f1467g;
                if (c2926Pd != null) {
                    c2926Pd.m1535a();
                }
                c2931q32.removeAllViews();
            }
            this.f1367e = null;
        } catch (Exception unused) {
        }
    }

    /* JADX INFO: renamed from: a */
    public final void m1457a() {
        Activity activity = (Activity) this.f1363a.get();
        if (activity == null) {
            return;
        }
        FrameLayout frameLayout = (FrameLayout) activity.findViewById(R.id.content);
        if ((frameLayout != null ? (RelativeLayout) frameLayout.findViewById(65519) : null) != null) {
            return;
        }
        RelativeLayout relativeLayout = new RelativeLayout(activity);
        relativeLayout.setId(65519);
        relativeLayout.setBackgroundColor(0);
        frameLayout.removeAllViews();
        frameLayout.addView(relativeLayout, new RelativeLayout.LayoutParams(-1, -1));
    }

    /* JADX WARN: Code restructure failed: missing block: B:19:0x0038, code lost:
    
        r1 = new com.inmobi.media.C2737D4(r4.f1363a, r5, r0);
     */
    /* JADX WARN: Removed duplicated region for block: B:25:0x005e  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x0060  */
    /* JADX INFO: renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m1460a(com.inmobi.media.InterfaceC3411x r5) {
        /*
            r4 = this;
            java.lang.ref.WeakReference r0 = r4.f1363a
            java.lang.Object r0 = r0.get()
            android.app.Activity r0 = (android.app.Activity) r0
            if (r0 != 0) goto Lb
            return
        Lb:
            android.widget.RelativeLayout r0 = r4.f1366d
            if (r0 != 0) goto L10
            return
        L10:
            java.lang.String r1 = r5.getMarkupType()
            int r2 = r1.hashCode()
            r3 = -1084172778(0xffffffffbf60d616, float:-0.8782667)
            if (r2 == r3) goto L40
            r3 = 3213227(0x3107ab, float:4.50269E-39)
            if (r2 == r3) goto L30
            r3 = 1236050372(0x49aca1c4, float:1414200.5)
            if (r2 != r3) goto L67
            java.lang.String r2 = "htmlUrl"
            boolean r1 = r1.equals(r2)
            if (r1 == 0) goto L67
            goto L38
        L30:
            java.lang.String r2 = "html"
            boolean r1 = r1.equals(r2)
            if (r1 == 0) goto L67
        L38:
            com.inmobi.media.D4 r1 = new com.inmobi.media.D4
            java.lang.ref.WeakReference r2 = r4.f1363a
            r1.<init>(r2, r5, r0)
            goto L4f
        L40:
            java.lang.String r2 = "inmobiJson"
            boolean r1 = r1.equals(r2)
            if (r1 == 0) goto L67
            com.inmobi.media.b6 r1 = new com.inmobi.media.b6
            java.lang.ref.WeakReference r2 = r4.f1363a
            r1.<init>(r2, r5, r0)
        L4f:
            r4.f1365c = r1
            com.inmobi.media.I9 r0 = r4.f1368f
            r1.mo938a(r0)
            float r0 = r4.f1369g
            r1.f1348c = r0
            boolean r0 = r5 instanceof com.inmobi.media.GestureDetectorOnGestureListenerC3049Ya
            if (r0 != 0) goto L60
            r5 = 0
            goto L64
        L60:
            com.inmobi.media.Ya r5 = (com.inmobi.media.GestureDetectorOnGestureListenerC3049Ya) r5
            boolean r5 = r5.f1713H0
        L64:
            r1.f1349d = r5
            return
        L67:
            java.lang.IllegalArgumentException r5 = new java.lang.IllegalArgumentException
            java.lang.String r0 = "InMobiActivityViewHandler: Unknown Markup type"
            r5.<init>(r0)
            throw r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.inmobi.media.C2917P4.m1460a(com.inmobi.media.x):void");
    }

    @Override // com.inmobi.media.InterfaceC2862L9
    /* JADX INFO: renamed from: a */
    public final void mo1312a(EnumC2817I9 orientation) {
        Intrinsics.checkNotNullParameter(orientation, "orientation");
        if (((Activity) this.f1363a.get()) == null) {
            return;
        }
        AbstractC2912P abstractC2912P = this.f1365c;
        if (abstractC2912P != null) {
            abstractC2912P.mo938a(orientation);
        }
        EnumC2817I9 enumC2817I9 = this.f1368f;
        if (enumC2817I9 != orientation && AbstractC2832J9.m1196b(enumC2817I9) != AbstractC2832J9.m1196b(orientation)) {
            Objects.toString(orientation);
            this.f1368f = orientation;
            AbstractC2912P abstractC2912P2 = this.f1365c;
            if (abstractC2912P2 != null) {
                abstractC2912P2.m1425e();
            }
            m1462c();
            return;
        }
        Objects.toString(orientation);
        this.f1368f = orientation;
    }

    /* JADX INFO: renamed from: a */
    public static final void m1455a(C2917P4 c2917p4) {
        c2917p4.f1369g = 1.0f;
        AbstractC2912P abstractC2912P = c2917p4.f1365c;
        if (abstractC2912P != null) {
            abstractC2912P.f1348c = 1.0f;
            abstractC2912P.m1425e();
        }
        C2931Q3 c2931q3 = c2917p4.f1367e;
        if (c2931q3 != null) {
            c2931q3.setLayoutParams(new RelativeLayout.LayoutParams(0, 0));
        }
        c2917p4.m1463d();
    }

    /* JADX INFO: renamed from: a */
    public static final void m1456a(C2931Q3 this_run) {
        Intrinsics.checkNotNullParameter(this_run, "$this_run");
        this_run.getParent().requestLayout();
    }

    /* JADX INFO: renamed from: a */
    public final void m1458a(int i, int i2) {
        RelativeLayout.LayoutParams layoutParams;
        Activity activity = (Activity) this.f1363a.get();
        if (activity == null) {
            return;
        }
        AbstractC2832J9.m1196b(this.f1368f);
        if (AbstractC2832J9.m1196b(this.f1368f)) {
            layoutParams = new RelativeLayout.LayoutParams(i, i2);
            layoutParams.addRule(11);
        } else {
            layoutParams = new RelativeLayout.LayoutParams(i, i2);
            layoutParams.addRule(12);
        }
        RelativeLayout relativeLayout = (RelativeLayout) ((FrameLayout) activity.findViewById(R.id.content)).findViewById(65519);
        Intrinsics.checkNotNull(relativeLayout);
        if (((RelativeLayout) relativeLayout.findViewById(65518)) != null) {
            C2931Q3 c2931q3 = this.f1367e;
            if (c2931q3 == null) {
                return;
            }
            c2931q3.setLayoutParams(layoutParams);
            return;
        }
        C2931Q3 c2931q32 = this.f1367e;
        if (c2931q32 != null) {
            relativeLayout.addView(c2931q32, layoutParams);
        }
    }
}
