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

/* JADX INFO: loaded from: classes6.dex */
public final class P4 implements L9 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final WeakReference f212a;
    public InterfaceC0559x b;
    public P c;
    public RelativeLayout d;
    public Q3 e;
    public I9 f;
    public float g;
    public InterfaceC0298f5 h;
    public final O4 i;
    public final N4 j;

    public P4(InMobiAdActivity activity) {
        Intrinsics.checkNotNullParameter(activity, "activity");
        this.f212a = new WeakReference(activity);
        this.f = J9.a(N3.g());
        this.g = 1.0f;
        this.i = new O4(this);
        this.j = new N4(this);
    }

    public final void a(Intent intent, SparseArray adContainers) {
        Q3 q3;
        Window window;
        Intrinsics.checkNotNullParameter(intent, "intent");
        Intrinsics.checkNotNullParameter(adContainers, "adContainers");
        if (!intent.hasExtra("com.inmobi.ads.rendering.InMobiAdActivity.EXTRA_AD_CONTAINER_INDEX")) {
            b();
            return;
        }
        InterfaceC0559x interfaceC0559x = (InterfaceC0559x) adContainers.get(intent.getIntExtra("com.inmobi.ads.rendering.InMobiAdActivity.EXTRA_AD_CONTAINER_INDEX", -1));
        if (interfaceC0559x == null) {
            b();
            return;
        }
        int intExtra = intent.getIntExtra("com.inmobi.ads.rendering.InMobiAdActivity.EXTRA_AD_CONTAINER_TYPE", 0);
        if (intExtra == 0) {
            InterfaceC0545w fullScreenEventsListener = interfaceC0559x.getFullScreenEventsListener();
            if (fullScreenEventsListener != null) {
                fullScreenEventsListener.a();
            }
            b();
            return;
        }
        if (intent.getBooleanExtra("com.inmobi.ads.rendering.InMobiAdActivity.EXTRA_AD_ACTIVITY_IS_FULL_SCREEN", false) && (this.f212a.get() instanceof InMobiAdActivity)) {
            Object obj = this.f212a.get();
            Intrinsics.checkNotNull(obj, "null cannot be cast to non-null type com.inmobi.ads.rendering.InMobiAdActivity");
            if (!((InMobiAdActivity) obj).g) {
                Object obj2 = this.f212a.get();
                Intrinsics.checkNotNull(obj2, "null cannot be cast to non-null type com.inmobi.ads.rendering.InMobiAdActivity");
                ((InMobiAdActivity) obj2).g = true;
                if (!(interfaceC0559x instanceof Ya) ? false : ((Ya) interfaceC0559x).H0) {
                    InterfaceC0298f5 interfaceC0298f5 = this.h;
                    if (interfaceC0298f5 != null) {
                        ((C0314g5) interfaceC0298f5).a("InMobiActivityViewHandler", "showInImmersiveMode");
                    }
                    Object obj3 = this.f212a.get();
                    InMobiAdActivity inMobiAdActivity = obj3 instanceof InMobiAdActivity ? (InMobiAdActivity) obj3 : null;
                    if (inMobiAdActivity != null && (window = inMobiAdActivity.getWindow()) != null) {
                        E3 e3 = E3.f104a;
                        if (e3.z()) {
                            WindowManager.LayoutParams attributes = window.getAttributes();
                            attributes.layoutInDisplayCutoutMode = 3;
                            window.setAttributes(attributes);
                            WindowCompat.setDecorFitsSystemWindows(window, false);
                        } else if (e3.x()) {
                            WindowManager.LayoutParams attributes2 = window.getAttributes();
                            attributes2.layoutInDisplayCutoutMode = 1;
                            window.setAttributes(attributes2);
                            WindowCompat.setDecorFitsSystemWindows(window, false);
                        }
                        if (e3.z()) {
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
                        } else if (e3.F()) {
                            window.getDecorView().setSystemUiVisibility(5638);
                        }
                    }
                } else {
                    Activity activity = (Activity) this.f212a.get();
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
        if ((200 == intExtra && !Intrinsics.areEqual("html", interfaceC0559x.getMarkupType())) || ((202 == intExtra && !Intrinsics.areEqual("htmlUrl", interfaceC0559x.getMarkupType())) || (201 == intExtra && !Intrinsics.areEqual("inmobiJson", interfaceC0559x.getMarkupType())))) {
            InterfaceC0545w fullScreenEventsListener2 = interfaceC0559x.getFullScreenEventsListener();
            if (fullScreenEventsListener2 != null) {
                fullScreenEventsListener2.a();
            }
            b();
            return;
        }
        try {
            this.b = interfaceC0559x;
            interfaceC0559x.setFullScreenActivityContext((Activity) this.f212a.get());
            a();
            Activity activity2 = (Activity) this.f212a.get();
            if (activity2 != null) {
                RelativeLayout relativeLayout = new RelativeLayout(activity2);
                relativeLayout.setId(65534);
                this.d = relativeLayout;
            }
            a(interfaceC0559x);
            P p = this.c;
            if (p != null) {
                p.f();
            }
            Activity activity3 = (Activity) this.f212a.get();
            if (activity3 != null) {
                FrameLayout frameLayout = (FrameLayout) activity3.findViewById(R.id.content);
                RelativeLayout relativeLayout2 = frameLayout != null ? (RelativeLayout) frameLayout.findViewById(65519) : null;
                RelativeLayout relativeLayout3 = this.d;
                if (relativeLayout3 != null && relativeLayout2 != null) {
                    RelativeLayout relativeLayout4 = (RelativeLayout) relativeLayout2.findViewById(65534);
                    if (relativeLayout4 != null) {
                        relativeLayout2.removeView(relativeLayout4);
                    }
                    relativeLayout2.addView(relativeLayout3);
                    P p2 = this.c;
                    if (p2 != null) {
                        p2.e();
                    }
                }
            }
            if (interfaceC0559x instanceof Ya) {
                ((Ya) interfaceC0559x).setEmbeddedBrowserJSCallbacks(this.j);
            }
            if ((interfaceC0559x instanceof Ya) && (q3 = this.e) != null) {
                q3.setUserLeftApplicationListener(((Ya) interfaceC0559x).getListener());
            }
        } catch (Exception e) {
            interfaceC0559x.setFullScreenActivityContext(null);
            InterfaceC0545w fullScreenEventsListener3 = interfaceC0559x.getFullScreenEventsListener();
            if (fullScreenEventsListener3 != null) {
                fullScreenEventsListener3.a();
            }
            b();
            C0551w5 c0551w5 = C0551w5.f513a;
            C0551w5.d.a(AbstractC0251c5.a(e, "event"));
        }
    }

    public final void b() {
        Activity activity = (Activity) this.f212a.get();
        if (activity instanceof InMobiAdActivity) {
            ((InMobiAdActivity) activity).finish();
        }
    }

    public final void c() {
        O3 o3D;
        if (this.e == null) {
            return;
        }
        InterfaceC0559x interfaceC0559x = this.b;
        if (interfaceC0559x == null) {
            o3D = N3.d();
        } else {
            if (!(!(interfaceC0559x instanceof Ya) ? false : ((Ya) interfaceC0559x).H0)) {
                Activity activity = (Activity) this.f212a.get();
                if (activity != null) {
                    Intrinsics.checkNotNull(activity);
                    if (AbstractC0576y2.a(activity)) {
                    }
                }
                o3D = N3.d();
            }
            o3D = N3.h();
        }
        float f = o3D.f199a;
        float f2 = o3D.c;
        float f3 = f * f2;
        float f4 = o3D.b * f2;
        if (J9.b(this.f)) {
            a(MathKt.roundToInt((1 - this.g) * f3), -1);
        } else {
            a(-1, MathKt.roundToInt((1 - this.g) * f4));
        }
    }

    public final void d() {
        try {
            final Q3 q3 = this.e;
            if (q3 != null) {
                ViewParent parent = q3.getParent();
                ViewGroup viewGroup = parent instanceof ViewGroup ? (ViewGroup) parent : null;
                if (viewGroup != null) {
                    viewGroup.removeView(q3);
                }
                ViewParent parent2 = q3.getParent();
                ViewGroup viewGroup2 = parent2 instanceof ViewGroup ? (ViewGroup) parent2 : null;
                if (viewGroup2 != null) {
                    viewGroup2.post(new Runnable() { // from class: com.inmobi.media.P4$$ExternalSyntheticLambda0
                        @Override // java.lang.Runnable
                        public final void run() {
                            P4.a(q3);
                        }
                    });
                }
            }
            Q3 q32 = this.e;
            if (q32 != null) {
                Y3 y3 = q32.c;
                if (y3 != null) {
                    y3.destroy();
                }
                q32.c = null;
                q32.d = null;
                q32.e = null;
                Pd pd = q32.g;
                if (pd != null) {
                    pd.a();
                }
                q32.removeAllViews();
            }
            this.e = null;
        } catch (Exception unused) {
        }
    }

    public final void a() {
        Activity activity = (Activity) this.f212a.get();
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
    
        r1 = new com.inmobi.media.D4(r4.f212a, r5, r0);
     */
    /* JADX WARN: Removed duplicated region for block: B:25:0x005e  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x0060  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void a(com.inmobi.media.InterfaceC0559x r5) {
        /*
            r4 = this;
            java.lang.ref.WeakReference r0 = r4.f212a
            java.lang.Object r0 = r0.get()
            android.app.Activity r0 = (android.app.Activity) r0
            if (r0 != 0) goto Lb
            return
        Lb:
            android.widget.RelativeLayout r0 = r4.d
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
            java.lang.ref.WeakReference r2 = r4.f212a
            r1.<init>(r2, r5, r0)
            goto L4f
        L40:
            java.lang.String r2 = "inmobiJson"
            boolean r1 = r1.equals(r2)
            if (r1 == 0) goto L67
            com.inmobi.media.b6 r1 = new com.inmobi.media.b6
            java.lang.ref.WeakReference r2 = r4.f212a
            r1.<init>(r2, r5, r0)
        L4f:
            r4.c = r1
            com.inmobi.media.I9 r0 = r4.f
            r1.a(r0)
            float r0 = r4.g
            r1.c = r0
            boolean r0 = r5 instanceof com.inmobi.media.Ya
            if (r0 != 0) goto L60
            r5 = 0
            goto L64
        L60:
            com.inmobi.media.Ya r5 = (com.inmobi.media.Ya) r5
            boolean r5 = r5.H0
        L64:
            r1.d = r5
            return
        L67:
            java.lang.IllegalArgumentException r5 = new java.lang.IllegalArgumentException
            java.lang.String r0 = "InMobiActivityViewHandler: Unknown Markup type"
            r5.<init>(r0)
            throw r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.inmobi.media.P4.a(com.inmobi.media.x):void");
    }

    @Override // com.inmobi.media.L9
    public final void a(I9 orientation) {
        Intrinsics.checkNotNullParameter(orientation, "orientation");
        if (((Activity) this.f212a.get()) == null) {
            return;
        }
        P p = this.c;
        if (p != null) {
            p.a(orientation);
        }
        I9 i9 = this.f;
        if (i9 != orientation && J9.b(i9) != J9.b(orientation)) {
            Objects.toString(orientation);
            this.f = orientation;
            P p2 = this.c;
            if (p2 != null) {
                p2.e();
            }
            c();
            return;
        }
        Objects.toString(orientation);
        this.f = orientation;
    }

    public static final void a(P4 p4) {
        p4.g = 1.0f;
        P p = p4.c;
        if (p != null) {
            p.c = 1.0f;
            p.e();
        }
        Q3 q3 = p4.e;
        if (q3 != null) {
            q3.setLayoutParams(new RelativeLayout.LayoutParams(0, 0));
        }
        p4.d();
    }

    public static final void a(Q3 this_run) {
        Intrinsics.checkNotNullParameter(this_run, "$this_run");
        this_run.getParent().requestLayout();
    }

    public final void a(int i, int i2) {
        RelativeLayout.LayoutParams layoutParams;
        Activity activity = (Activity) this.f212a.get();
        if (activity == null) {
            return;
        }
        J9.b(this.f);
        if (J9.b(this.f)) {
            layoutParams = new RelativeLayout.LayoutParams(i, i2);
            layoutParams.addRule(11);
        } else {
            layoutParams = new RelativeLayout.LayoutParams(i, i2);
            layoutParams.addRule(12);
        }
        RelativeLayout relativeLayout = (RelativeLayout) ((FrameLayout) activity.findViewById(R.id.content)).findViewById(65519);
        Intrinsics.checkNotNull(relativeLayout);
        if (((RelativeLayout) relativeLayout.findViewById(65518)) != null) {
            Q3 q3 = this.e;
            if (q3 == null) {
                return;
            }
            q3.setLayoutParams(layoutParams);
            return;
        }
        Q3 q32 = this.e;
        if (q32 != null) {
            relativeLayout.addView(q32, layoutParams);
        }
    }
}
