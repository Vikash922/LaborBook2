package com.inmobi.media;

import android.content.Context;
import android.graphics.Color;
import android.graphics.Typeface;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.TextView;
import com.squareup.picasso.Callback;
import com.squareup.picasso.RequestCreator;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Locale;
import java.util.Map;
import java.util.Stack;
import kotlin.TuplesKt;
import kotlin.collections.CollectionsKt;
import kotlin.collections.MapsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;

/* JADX INFO: renamed from: com.inmobi.media.d9 */
/* JADX INFO: loaded from: classes6.dex */
public final class C3121d9 {

    /* JADX INFO: renamed from: d */
    public static volatile WeakReference f2017d;

    /* JADX INFO: renamed from: a */
    public int f2021a;

    /* JADX INFO: renamed from: b */
    public final HashMap f2022b;

    /* JADX INFO: renamed from: c */
    public static final HashMap f2016c = MapsKt.hashMapOf(TuplesKt.m2729to(C3210j8.class, (byte) 0), TuplesKt.m2729to(C2819Ib.class, (byte) 1), TuplesKt.m2729to(C2804Hb.class, (byte) 2), TuplesKt.m2729to(C2830J7.class, (byte) 3), TuplesKt.m2729to(ImageView.class, (byte) 6), TuplesKt.m2729to(C2876M8.class, (byte) 7), TuplesKt.m2729to(C2921P8.class, (byte) 4), TuplesKt.m2729to(Button.class, (byte) 5), TuplesKt.m2729to(C3360t8.class, (byte) 8), TuplesKt.m2729to(GestureDetectorOnGestureListenerC3049Ya.class, (byte) 9), TuplesKt.m2729to(C3416x4.class, (byte) 10));

    /* JADX INFO: renamed from: e */
    public static WeakReference f2018e = new WeakReference(null);

    /* JADX INFO: renamed from: f */
    public static int f2019f = 1;

    /* JADX INFO: renamed from: g */
    public static int f2020g = 1;

    public C3121d9(Context context) {
        f2018e = new WeakReference(context);
        this.f2022b = MapsKt.hashMapOf(TuplesKt.m2729to((byte) 0, new C3019W8(this)), TuplesKt.m2729to((byte) 3, new C2963S8(this)), TuplesKt.m2729to((byte) 1, new C3091b9(this)), TuplesKt.m2729to((byte) 2, new C3033X8(this)), TuplesKt.m2729to((byte) 6, new C3005V8(this)), TuplesKt.m2729to((byte) 10, new C2991U8(this)), TuplesKt.m2729to((byte) 7, new C3076a9(this)), TuplesKt.m2729to((byte) 4, new C3047Y8(this)), TuplesKt.m2729to((byte) 5, new C2977T8(this)), TuplesKt.m2729to((byte) 8, new C3061Z8(this)), TuplesKt.m2729to((byte) 9, new C3106c9(this)));
    }

    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    /* JADX WARN: Removed duplicated region for block: B:41:0x0083  */
    /* JADX INFO: renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final android.view.View m2075a(android.content.Context r9, com.inmobi.media.C2740D7 r10, com.inmobi.commons.core.configs.AdConfig r11) {
        /*
            Method dump skipped, instruction units count: 278
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.inmobi.media.C3121d9.m2075a(android.content.Context, com.inmobi.media.D7, com.inmobi.commons.core.configs.AdConfig):android.view.View");
    }

    /* JADX INFO: renamed from: b */
    public final void m2077b(View view) {
        Byte b = (Byte) f2016c.get(view.getClass());
        byte bByteValue = b != null ? b.byteValue() : (byte) -1;
        if (-1 == bByteValue) {
            Intrinsics.checkNotNullExpressionValue("d9", "TAG");
            view.toString();
            return;
        }
        AbstractC2949R8 abstractC2949R8 = (AbstractC2949R8) this.f2022b.get(Byte.valueOf(bByteValue));
        if (abstractC2949R8 == null) {
            Intrinsics.checkNotNullExpressionValue("d9", "TAG");
            return;
        }
        if (this.f2021a >= 300) {
            Iterator it = this.f2022b.entrySet().iterator();
            int size = 0;
            AbstractC2949R8 abstractC2949R82 = null;
            while (it.hasNext()) {
                AbstractC2949R8 abstractC2949R83 = (AbstractC2949R8) ((Map.Entry) it.next()).getValue();
                if (abstractC2949R83.f1499a.size() > size) {
                    size = abstractC2949R83.f1499a.size();
                    abstractC2949R82 = abstractC2949R83;
                }
            }
            if (abstractC2949R82 != null && abstractC2949R82.f1499a.size() > 0) {
                CollectionsKt.removeFirst(abstractC2949R82.f1499a);
            }
        }
        abstractC2949R8.mo1764a(view);
    }

    /* JADX INFO: renamed from: a */
    public static final void m2070a(C3121d9 c3121d9, Button button, C2740D7 c2740d7) {
        c3121d9.getClass();
        C2755E7 c2755e7 = c2740d7.f922d;
        Intrinsics.checkNotNull(c2755e7, "null cannot be cast to non-null type com.inmobi.ads.modelsv2.NativeCtaAsset.NativeCtaAssetStyle");
        C2845K7 c2845k7 = (C2845K7) c2755e7;
        button.setLayoutParams(new ViewGroup.LayoutParams(C2891N8.m1396a(c2845k7.f974a.x), C2891N8.m1396a(c2845k7.f974a.y)));
        Object obj = c2740d7.f923e;
        button.setText(obj instanceof CharSequence ? (CharSequence) obj : null);
        button.setTextSize(1, C2891N8.m1396a(c2845k7.f2327l));
        int color = Color.parseColor("#ff000000");
        try {
            String str = c2845k7.f2329n;
            Locale US = Locale.US;
            Intrinsics.checkNotNullExpressionValue(US, "US");
            String lowerCase = str.toLowerCase(US);
            Intrinsics.checkNotNullExpressionValue(lowerCase, "this as java.lang.String).toLowerCase(locale)");
            color = Color.parseColor(lowerCase);
        } catch (IllegalArgumentException e) {
            Intrinsics.checkNotNullExpressionValue("d9", "TAG");
            C3402w5 c3402w5 = C3402w5.f2709a;
            C3114d2 event = new C3114d2(e);
            Intrinsics.checkNotNullParameter(event, "event");
            C3402w5.f2712d.m2158a(event);
        }
        button.setTextColor(color);
        int color2 = Color.parseColor("#00000000");
        try {
            color2 = Color.parseColor(c2845k7.mo1043a());
        } catch (IllegalArgumentException e2) {
            Intrinsics.checkNotNullExpressionValue("d9", "TAG");
            C3402w5 c3402w52 = C3402w5.f2709a;
            C3114d2 event2 = new C3114d2(e2);
            Intrinsics.checkNotNullParameter(event2, "event");
            C3402w5.f2712d.m2158a(event2);
        }
        button.setBackgroundColor(color2);
        button.setTextAlignment(4);
        button.setGravity(17);
        C2891N8.m1401a(button, c2845k7.f2330o);
        C2891N8.m1400a(button, c2845k7);
    }

    /* JADX INFO: renamed from: a */
    public static final void m2071a(C3121d9 c3121d9, ImageView imageView, C2740D7 c2740d7) {
        int i;
        int i2;
        int i3;
        String str;
        c3121d9.getClass();
        Object obj = c2740d7.f923e;
        String str2 = obj instanceof String ? (String) obj : null;
        if (str2 != null) {
            int iM1396a = C2891N8.m1396a(c2740d7.f922d.f974a.x);
            int iM1396a2 = C2891N8.m1396a(c2740d7.f922d.f974a.y);
            String str3 = c2740d7.f922d.f980g;
            if (Intrinsics.areEqual(str3, "aspectFit")) {
                imageView.setScaleType(ImageView.ScaleType.FIT_CENTER);
            } else if (Intrinsics.areEqual(str3, "aspectFill")) {
                imageView.setScaleType(ImageView.ScaleType.CENTER_CROP);
            } else {
                imageView.setScaleType(ImageView.ScaleType.FIT_XY);
            }
            Context context = (Context) f2018e.get();
            if (context != null && iM1396a > 0 && iM1396a2 > 0) {
                int length = str2.length() - 1;
                int i4 = 0;
                boolean z = false;
                while (i4 <= length) {
                    boolean z2 = Intrinsics.compare((int) str2.charAt(!z ? i4 : length), 32) <= 0;
                    if (z) {
                        if (!z2) {
                            break;
                        } else {
                            length--;
                        }
                    } else if (z2) {
                        i4++;
                    } else {
                        z = true;
                    }
                }
                if (str2.subSequence(i4, length + 1).toString().length() > 0) {
                    C2950R9 c2950r9 = C2950R9.f1503a;
                    RequestCreator requestCreatorLoad = c2950r9.m1772a(context).load(str2);
                    Object objM1773a = c2950r9.m1773a(new C2936Q8(context, imageView, c2740d7));
                    Intrinsics.checkNotNull(objM1773a, "null cannot be cast to non-null type com.squareup.picasso.Callback");
                    requestCreatorLoad.into(imageView, (Callback) objM1773a);
                    if (StringsKt.equals("cross_button", c2740d7.f920b, true) && ((str = c2740d7.f934p) == null || str.length() == 0)) {
                        new Handler(Looper.getMainLooper()).postDelayed(new RunnableC2906O8(context, imageView), 2000L);
                    }
                }
            }
            C2800H7 c2800h7 = c2740d7.f936r;
            if (c2800h7 == null || !Intrinsics.areEqual("line", c2800h7.f922d.f978e)) {
                i = 0;
                i2 = 0;
                i3 = 0;
            } else {
                C2755E7 c2755e7 = c2800h7.f922d;
                int i5 = c2755e7.f976c.x == c2740d7.f922d.f976c.x ? 1 : 0;
                i2 = C2891N8.m1396a(c2755e7.f974a.x) == C2891N8.m1396a(c2740d7.f922d.f974a.x) + c2740d7.f922d.f976c.x ? 1 : 0;
                i3 = C2891N8.m1396a(c2800h7.f922d.f976c.y) == C2891N8.m1396a(c2740d7.f922d.f976c.y) ? 1 : 0;
                i = C2891N8.m1396a(c2800h7.f922d.f974a.y) == C2891N8.m1396a(c2740d7.f922d.f976c.y) + C2891N8.m1396a(c2740d7.f922d.f974a.y) ? 1 : 0;
                if (C2891N8.m1396a(c2800h7.f922d.f974a.x) == C2891N8.m1396a(c2740d7.f922d.f974a.x)) {
                    i = i;
                    i2 = 1;
                    i = 1;
                } else {
                    i = i;
                    i = i5;
                }
            }
            imageView.setPaddingRelative(i, i3, i2, i);
            C2891N8.m1400a(imageView, c2740d7.f922d);
        }
    }

    /* JADX INFO: renamed from: a */
    public static final void m2072a(C3121d9 c3121d9, TextView textView, C2740D7 c2740d7) {
        c3121d9.getClass();
        C2755E7 c2755e7 = c2740d7.f922d;
        Intrinsics.checkNotNull(c2755e7, "null cannot be cast to non-null type com.inmobi.ads.modelsv2.NativeTextAsset.NativeTextAssetStyle");
        C3255m8 c3255m8 = (C3255m8) c2755e7;
        textView.setLayoutParams(new ViewGroup.LayoutParams(C2891N8.m1396a(c3255m8.f974a.x), C2891N8.m1396a(c3255m8.f974a.y)));
        Object obj = c2740d7.f923e;
        textView.setText(obj instanceof CharSequence ? (CharSequence) obj : null);
        textView.setTypeface(Typeface.DEFAULT);
        byte b = c3255m8.f2328m;
        if (b == 0) {
            textView.setGravity(8388627);
        } else if (b == 1) {
            textView.setGravity(8388629);
        } else if (b == 2) {
            textView.setGravity(17);
        } else {
            textView.setGravity(8388627);
        }
        textView.setTextSize(1, C2891N8.m1396a(c3255m8.f2327l));
        int color = Color.parseColor("#ff000000");
        try {
            String str = c3255m8.f2329n;
            Locale US = Locale.US;
            Intrinsics.checkNotNullExpressionValue(US, "US");
            String lowerCase = str.toLowerCase(US);
            Intrinsics.checkNotNullExpressionValue(lowerCase, "this as java.lang.String).toLowerCase(locale)");
            color = Color.parseColor(lowerCase);
        } catch (IllegalArgumentException e) {
            Intrinsics.checkNotNullExpressionValue("d9", "TAG");
            C3402w5 c3402w5 = C3402w5.f2709a;
            C3114d2 event = new C3114d2(e);
            Intrinsics.checkNotNullParameter(event, "event");
            C3402w5.f2712d.m2158a(event);
        }
        textView.setTextColor(color);
        int color2 = Color.parseColor("#00000000");
        try {
            color2 = Color.parseColor(c3255m8.mo1043a());
        } catch (IllegalArgumentException e2) {
            Intrinsics.checkNotNullExpressionValue("d9", "TAG");
            C3402w5 c3402w52 = C3402w5.f2709a;
            C3114d2 event2 = new C3114d2(e2);
            Intrinsics.checkNotNullParameter(event2, "event");
            C3402w5.f2712d.m2158a(event2);
        }
        textView.setBackgroundColor(color2);
        textView.setTextAlignment(1);
        C2891N8.m1401a(textView, c3255m8.f2330o);
        textView.setEllipsize(TextUtils.TruncateAt.END);
        textView.setHorizontallyScrolling(true);
        textView.setFocusable(true);
        textView.setFocusableInTouchMode(true);
        C2891N8.m1400a(textView, c3255m8);
    }

    /* JADX INFO: renamed from: a */
    public final void m2076a(View view) {
        Intrinsics.checkNotNullParameter(view, "view");
        if (!(view instanceof C3210j8) && !(view instanceof C2830J7)) {
            m2077b(view);
            return;
        }
        C2830J7 c2830j7 = (C2830J7) view;
        if (c2830j7.getChildCount() == 0) {
            m2077b(view);
            return;
        }
        Stack stack = new Stack();
        stack.push(c2830j7);
        while (!stack.isEmpty()) {
            C2830J7 c2830j72 = (C2830J7) stack.pop();
            int childCount = c2830j72.getChildCount();
            while (true) {
                childCount--;
                if (-1 < childCount) {
                    View childAt = c2830j72.getChildAt(childCount);
                    c2830j72.removeViewAt(childCount);
                    if (childAt instanceof C2830J7) {
                        stack.push(childAt);
                    } else {
                        Intrinsics.checkNotNull(childAt);
                        m2077b(childAt);
                    }
                }
            }
            Intrinsics.checkNotNull(c2830j72);
            m2077b(c2830j72);
        }
    }

    /* JADX INFO: renamed from: a */
    public static void m2074a(final C3360t8 c3360t8, C2740D7 c2740d7) {
        long jM2336a;
        c3360t8.setVisibility(4);
        Intrinsics.checkNotNull(c2740d7, "null cannot be cast to non-null type com.inmobi.ads.modelsv2.NativeTimerAsset");
        final C3315q8 c3315q8 = (C3315q8) c2740d7;
        C3300p8 c3300p8 = c3315q8.f2460x;
        C3285o8 c3285o8 = c3300p8.f2437a;
        C3285o8 c3285o82 = c3300p8.f2438b;
        if (c3285o8 != null) {
            try {
                jM2336a = c3285o8.m2336a();
            } catch (Exception e) {
                Intrinsics.checkNotNullExpressionValue("d9", "TAG");
                C3402w5 c3402w5 = C3402w5.f2709a;
                C3402w5.f2712d.m2158a(AbstractC3102c5.m2045a(e, "event"));
                return;
            }
        } else {
            jM2336a = 0;
        }
        long jM2336a2 = c3285o82 != null ? c3285o82.m2336a() : 0L;
        if (jM2336a2 >= 0) {
            c3360t8.setTimerValue(jM2336a2);
            new Handler(Looper.getMainLooper()).postDelayed(new Runnable() { // from class: com.inmobi.media.d9$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    C3121d9.m2073a(c3315q8, c3360t8);
                }
            }, jM2336a * ((long) 1000));
        }
    }

    /* JADX INFO: renamed from: a */
    public static final void m2073a(C3315q8 timerAsset, C3360t8 timerView) {
        Intrinsics.checkNotNullParameter(timerAsset, "$timerAsset");
        Intrinsics.checkNotNullParameter(timerView, "$timerView");
        if (f2018e.get() != null) {
            if (timerAsset.f2461y) {
                timerView.setVisibility(0);
            }
            timerView.m2456d();
        }
    }
}
