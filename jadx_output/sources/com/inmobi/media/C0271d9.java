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

/* JADX INFO: renamed from: com.inmobi.media.d9, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes6.dex */
public final class C0271d9 {
    public static volatile WeakReference d;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int f333a;
    public final HashMap b;
    public static final HashMap c = MapsKt.hashMapOf(TuplesKt.to(C0365j8.class, (byte) 0), TuplesKt.to(Ib.class, (byte) 1), TuplesKt.to(Hb.class, (byte) 2), TuplesKt.to(J7.class, (byte) 3), TuplesKt.to(ImageView.class, (byte) 6), TuplesKt.to(M8.class, (byte) 7), TuplesKt.to(P8.class, (byte) 4), TuplesKt.to(Button.class, (byte) 5), TuplesKt.to(C0512t8.class, (byte) 8), TuplesKt.to(Ya.class, (byte) 9), TuplesKt.to(C0564x4.class, (byte) 10));
    public static WeakReference e = new WeakReference(null);
    public static int f = 1;
    public static int g = 1;

    public C0271d9(Context context) {
        e = new WeakReference(context);
        this.b = MapsKt.hashMapOf(TuplesKt.to((byte) 0, new W8(this)), TuplesKt.to((byte) 3, new S8(this)), TuplesKt.to((byte) 1, new C0240b9(this)), TuplesKt.to((byte) 2, new X8(this)), TuplesKt.to((byte) 6, new V8(this)), TuplesKt.to((byte) 10, new U8(this)), TuplesKt.to((byte) 7, new C0225a9(this)), TuplesKt.to((byte) 4, new Y8(this)), TuplesKt.to((byte) 5, new T8(this)), TuplesKt.to((byte) 8, new Z8(this)), TuplesKt.to((byte) 9, new C0255c9(this)));
    }

    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    /* JADX WARN: Removed duplicated region for block: B:41:0x0083  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final android.view.View a(android.content.Context r9, com.inmobi.media.D7 r10, com.inmobi.commons.core.configs.AdConfig r11) {
        /*
            Method dump skipped, instruction units count: 278
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.inmobi.media.C0271d9.a(android.content.Context, com.inmobi.media.D7, com.inmobi.commons.core.configs.AdConfig):android.view.View");
    }

    public final void b(View view) {
        Byte b = (Byte) c.get(view.getClass());
        byte bByteValue = b != null ? b.byteValue() : (byte) -1;
        if (-1 == bByteValue) {
            Intrinsics.checkNotNullExpressionValue("d9", "TAG");
            view.toString();
            return;
        }
        R8 r8 = (R8) this.b.get(Byte.valueOf(bByteValue));
        if (r8 == null) {
            Intrinsics.checkNotNullExpressionValue("d9", "TAG");
            return;
        }
        if (this.f333a >= 300) {
            Iterator it = this.b.entrySet().iterator();
            int size = 0;
            R8 r82 = null;
            while (it.hasNext()) {
                R8 r83 = (R8) ((Map.Entry) it.next()).getValue();
                if (r83.f234a.size() > size) {
                    size = r83.f234a.size();
                    r82 = r83;
                }
            }
            if (r82 != null && r82.f234a.size() > 0) {
                CollectionsKt.removeFirst(r82.f234a);
            }
        }
        r8.a(view);
    }

    public static final void a(C0271d9 c0271d9, Button button, D7 d7) {
        c0271d9.getClass();
        E7 e7 = d7.d;
        Intrinsics.checkNotNull(e7, "null cannot be cast to non-null type com.inmobi.ads.modelsv2.NativeCtaAsset.NativeCtaAssetStyle");
        K7 k7 = (K7) e7;
        button.setLayoutParams(new ViewGroup.LayoutParams(N8.a(k7.f107a.x), N8.a(k7.f107a.y)));
        Object obj = d7.e;
        button.setText(obj instanceof CharSequence ? (CharSequence) obj : null);
        button.setTextSize(1, N8.a(k7.l));
        int color = Color.parseColor("#ff000000");
        try {
            String str = k7.n;
            Locale US = Locale.US;
            Intrinsics.checkNotNullExpressionValue(US, "US");
            String lowerCase = str.toLowerCase(US);
            Intrinsics.checkNotNullExpressionValue(lowerCase, "this as java.lang.String).toLowerCase(locale)");
            color = Color.parseColor(lowerCase);
        } catch (IllegalArgumentException e2) {
            Intrinsics.checkNotNullExpressionValue("d9", "TAG");
            C0551w5 c0551w5 = C0551w5.f513a;
            C0264d2 event = new C0264d2(e2);
            Intrinsics.checkNotNullParameter(event, "event");
            C0551w5.d.a(event);
        }
        button.setTextColor(color);
        int color2 = Color.parseColor("#00000000");
        try {
            color2 = Color.parseColor(k7.a());
        } catch (IllegalArgumentException e3) {
            Intrinsics.checkNotNullExpressionValue("d9", "TAG");
            C0551w5 c0551w52 = C0551w5.f513a;
            C0264d2 event2 = new C0264d2(e3);
            Intrinsics.checkNotNullParameter(event2, "event");
            C0551w5.d.a(event2);
        }
        button.setBackgroundColor(color2);
        button.setTextAlignment(4);
        button.setGravity(17);
        N8.a(button, k7.o);
        N8.a(button, k7);
    }

    public static final void a(C0271d9 c0271d9, ImageView imageView, D7 d7) {
        int i;
        int i2;
        int i3;
        String str;
        c0271d9.getClass();
        Object obj = d7.e;
        String str2 = obj instanceof String ? (String) obj : null;
        if (str2 != null) {
            int iA = N8.a(d7.d.f107a.x);
            int iA2 = N8.a(d7.d.f107a.y);
            String str3 = d7.d.g;
            if (Intrinsics.areEqual(str3, "aspectFit")) {
                imageView.setScaleType(ImageView.ScaleType.FIT_CENTER);
            } else if (Intrinsics.areEqual(str3, "aspectFill")) {
                imageView.setScaleType(ImageView.ScaleType.CENTER_CROP);
            } else {
                imageView.setScaleType(ImageView.ScaleType.FIT_XY);
            }
            Context context = (Context) e.get();
            if (context != null && iA > 0 && iA2 > 0) {
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
                    R9 r9 = R9.f235a;
                    RequestCreator requestCreatorLoad = r9.a(context).load(str2);
                    Object objA = r9.a(new Q8(context, imageView, d7));
                    Intrinsics.checkNotNull(objA, "null cannot be cast to non-null type com.squareup.picasso.Callback");
                    requestCreatorLoad.into(imageView, (Callback) objA);
                    if (StringsKt.equals("cross_button", d7.b, true) && ((str = d7.p) == null || str.length() == 0)) {
                        new Handler(Looper.getMainLooper()).postDelayed(new O8(context, imageView), 2000L);
                    }
                }
            }
            H7 h7 = d7.r;
            if (h7 == null || !Intrinsics.areEqual("line", h7.d.e)) {
                i = 0;
                i2 = 0;
                i3 = 0;
            } else {
                E7 e7 = h7.d;
                int i5 = e7.c.x == d7.d.c.x ? 1 : 0;
                i2 = N8.a(e7.f107a.x) == N8.a(d7.d.f107a.x) + d7.d.c.x ? 1 : 0;
                i3 = N8.a(h7.d.c.y) == N8.a(d7.d.c.y) ? 1 : 0;
                i = N8.a(h7.d.f107a.y) == N8.a(d7.d.c.y) + N8.a(d7.d.f107a.y) ? 1 : 0;
                if (N8.a(h7.d.f107a.x) == N8.a(d7.d.f107a.x)) {
                    i = i;
                    i2 = 1;
                    i = 1;
                } else {
                    i = i;
                    i = i5;
                }
            }
            imageView.setPaddingRelative(i, i3, i2, i);
            N8.a(imageView, d7.d);
        }
    }

    public static final void a(C0271d9 c0271d9, TextView textView, D7 d7) {
        c0271d9.getClass();
        E7 e7 = d7.d;
        Intrinsics.checkNotNull(e7, "null cannot be cast to non-null type com.inmobi.ads.modelsv2.NativeTextAsset.NativeTextAssetStyle");
        C0411m8 c0411m8 = (C0411m8) e7;
        textView.setLayoutParams(new ViewGroup.LayoutParams(N8.a(c0411m8.f107a.x), N8.a(c0411m8.f107a.y)));
        Object obj = d7.e;
        textView.setText(obj instanceof CharSequence ? (CharSequence) obj : null);
        textView.setTypeface(Typeface.DEFAULT);
        byte b = c0411m8.m;
        if (b == 0) {
            textView.setGravity(8388627);
        } else if (b == 1) {
            textView.setGravity(8388629);
        } else if (b == 2) {
            textView.setGravity(17);
        } else {
            textView.setGravity(8388627);
        }
        textView.setTextSize(1, N8.a(c0411m8.l));
        int color = Color.parseColor("#ff000000");
        try {
            String str = c0411m8.n;
            Locale US = Locale.US;
            Intrinsics.checkNotNullExpressionValue(US, "US");
            String lowerCase = str.toLowerCase(US);
            Intrinsics.checkNotNullExpressionValue(lowerCase, "this as java.lang.String).toLowerCase(locale)");
            color = Color.parseColor(lowerCase);
        } catch (IllegalArgumentException e2) {
            Intrinsics.checkNotNullExpressionValue("d9", "TAG");
            C0551w5 c0551w5 = C0551w5.f513a;
            C0264d2 event = new C0264d2(e2);
            Intrinsics.checkNotNullParameter(event, "event");
            C0551w5.d.a(event);
        }
        textView.setTextColor(color);
        int color2 = Color.parseColor("#00000000");
        try {
            color2 = Color.parseColor(c0411m8.a());
        } catch (IllegalArgumentException e3) {
            Intrinsics.checkNotNullExpressionValue("d9", "TAG");
            C0551w5 c0551w52 = C0551w5.f513a;
            C0264d2 event2 = new C0264d2(e3);
            Intrinsics.checkNotNullParameter(event2, "event");
            C0551w5.d.a(event2);
        }
        textView.setBackgroundColor(color2);
        textView.setTextAlignment(1);
        N8.a(textView, c0411m8.o);
        textView.setEllipsize(TextUtils.TruncateAt.END);
        textView.setHorizontallyScrolling(true);
        textView.setFocusable(true);
        textView.setFocusableInTouchMode(true);
        N8.a(textView, c0411m8);
    }

    public final void a(View view) {
        Intrinsics.checkNotNullParameter(view, "view");
        if (!(view instanceof C0365j8) && !(view instanceof J7)) {
            b(view);
            return;
        }
        J7 j7 = (J7) view;
        if (j7.getChildCount() == 0) {
            b(view);
            return;
        }
        Stack stack = new Stack();
        stack.push(j7);
        while (!stack.isEmpty()) {
            J7 j72 = (J7) stack.pop();
            int childCount = j72.getChildCount();
            while (true) {
                childCount--;
                if (-1 < childCount) {
                    View childAt = j72.getChildAt(childCount);
                    j72.removeViewAt(childCount);
                    if (childAt instanceof J7) {
                        stack.push(childAt);
                    } else {
                        Intrinsics.checkNotNull(childAt);
                        b(childAt);
                    }
                }
            }
            Intrinsics.checkNotNull(j72);
            b(j72);
        }
    }

    public static void a(final C0512t8 c0512t8, D7 d7) {
        long jA;
        c0512t8.setVisibility(4);
        Intrinsics.checkNotNull(d7, "null cannot be cast to non-null type com.inmobi.ads.modelsv2.NativeTimerAsset");
        final C0471q8 c0471q8 = (C0471q8) d7;
        C0456p8 c0456p8 = c0471q8.x;
        C0441o8 c0441o8 = c0456p8.f456a;
        C0441o8 c0441o82 = c0456p8.b;
        if (c0441o8 != null) {
            try {
                jA = c0441o8.a();
            } catch (Exception e2) {
                Intrinsics.checkNotNullExpressionValue("d9", "TAG");
                C0551w5 c0551w5 = C0551w5.f513a;
                C0551w5.d.a(AbstractC0251c5.a(e2, "event"));
                return;
            }
        } else {
            jA = 0;
        }
        long jA2 = c0441o82 != null ? c0441o82.a() : 0L;
        if (jA2 >= 0) {
            c0512t8.setTimerValue(jA2);
            new Handler(Looper.getMainLooper()).postDelayed(new Runnable() { // from class: com.inmobi.media.d9$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    C0271d9.a(c0471q8, c0512t8);
                }
            }, jA * ((long) 1000));
        }
    }

    public static final void a(C0471q8 timerAsset, C0512t8 timerView) {
        Intrinsics.checkNotNullParameter(timerAsset, "$timerAsset");
        Intrinsics.checkNotNullParameter(timerView, "$timerView");
        if (e.get() != null) {
            if (timerAsset.y) {
                timerView.setVisibility(0);
            }
            timerView.d();
        }
    }
}
