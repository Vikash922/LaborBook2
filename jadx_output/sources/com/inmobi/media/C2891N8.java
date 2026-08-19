package com.inmobi.media;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Point;
import android.graphics.Typeface;
import android.graphics.drawable.GradientDrawable;
import android.os.Build;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AbsListView;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.inmobi.ads.rendering.InMobiAdActivity;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Locale;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.inmobi.media.N8 */
/* JADX INFO: loaded from: classes6.dex */
public final class C2891N8 {
    /* JADX INFO: renamed from: a */
    public static ViewGroup.LayoutParams m1397a(C2740D7 asset, ViewGroup parent) {
        Intrinsics.checkNotNullParameter(asset, "asset");
        Intrinsics.checkNotNullParameter(parent, "parent");
        C2755E7 c2755e7 = asset.f922d;
        Point point = c2755e7.f974a;
        Point point2 = c2755e7.f976c;
        ViewGroup.LayoutParams layoutParams = new ViewGroup.LayoutParams(m1396a(point.x), m1396a(point.y));
        if (parent instanceof C2830J7) {
            C2815I7 c2815i7 = new C2815I7(m1396a(point.x), m1396a(point.y));
            int iM1396a = m1396a(point2.x);
            int iM1396a2 = m1396a(point2.y);
            c2815i7.f1111a = iM1396a;
            c2815i7.f1112b = iM1396a2;
            return c2815i7;
        }
        if (parent instanceof LinearLayout) {
            LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(m1396a(point.x), m1396a(point.y));
            layoutParams2.setMargins(m1396a(point2.x), m1396a(point2.y), 0, 0);
            return layoutParams2;
        }
        if (parent instanceof AbsListView) {
            return new AbsListView.LayoutParams(m1396a(point.x), m1396a(point.y));
        }
        if (parent instanceof FrameLayout) {
            FrameLayout.LayoutParams layoutParams3 = new FrameLayout.LayoutParams(m1396a(point.x), m1396a(point.y));
            layoutParams3.setMargins(m1396a(point2.x), m1396a(point2.y), 0, 0);
            return layoutParams3;
        }
        HashMap map = C3121d9.f2016c;
        Intrinsics.checkNotNullExpressionValue("d9", "access$getTAG$cp(...)");
        return layoutParams;
    }

    /* JADX INFO: renamed from: a */
    public static int m1396a(int i) {
        int i2;
        return ((((Context) C3121d9.f2018e.get()) instanceof InMobiAdActivity) || (i2 = C3121d9.f2019f) == 0) ? i : (int) (((((double) i2) * 1.0d) / ((double) C3121d9.f2020g)) * ((double) i));
    }

    /* JADX INFO: renamed from: a */
    public static void m1398a(Context context, ImageView imageView) {
        Bitmap bitmapCreateBitmap;
        if (imageView.getDrawable() == null) {
            float f = AbstractC2886N3.m1388d().f1332c;
            C3355t3 c3355t3 = new C3355t3(context, (byte) 0, null);
            if (Build.VERSION.SDK_INT < 28) {
                c3355t3.layout(0, 0, (int) (m1396a(40) * f), (int) (m1396a(40) * f));
                c3355t3.setDrawingCacheEnabled(true);
                c3355t3.buildDrawingCache();
                bitmapCreateBitmap = c3355t3.getDrawingCache();
                Intrinsics.checkNotNullExpressionValue(bitmapCreateBitmap, "getDrawingCache(...)");
            } else {
                c3355t3.layout(0, 0, (int) (m1396a(40) * f), (int) (m1396a(40) * f));
                bitmapCreateBitmap = Bitmap.createBitmap((int) (m1396a(40) * f), (int) (m1396a(40) * f), Bitmap.Config.ARGB_8888);
                Intrinsics.checkNotNullExpressionValue(bitmapCreateBitmap, "createBitmap(...)");
                c3355t3.draw(new Canvas(bitmapCreateBitmap));
            }
            imageView.setImageBitmap(bitmapCreateBitmap);
        }
    }

    /* JADX INFO: renamed from: a */
    public static final void m1401a(TextView textView, ArrayList arrayList) {
        HashMap map = C3121d9.f2016c;
        int paintFlags = textView.getPaintFlags();
        Iterator it = arrayList.iterator();
        int i = 0;
        while (it.hasNext()) {
            String str = (String) it.next();
            int iHashCode = str.hashCode();
            if (iHashCode != -1178781136) {
                if (iHashCode != -1026963764) {
                    if (iHashCode != -891985998) {
                        if (iHashCode == 3029637 && str.equals("bold")) {
                            i |= 1;
                        }
                    } else if (str.equals("strike")) {
                        paintFlags |= 16;
                    }
                } else if (str.equals("underline")) {
                    paintFlags |= 8;
                }
            } else if (str.equals("italic")) {
                i |= 2;
            }
        }
        textView.setTypeface(Typeface.DEFAULT, i);
        textView.setPaintFlags(paintFlags);
    }

    /* JADX INFO: renamed from: a */
    public static void m1400a(View view, C2755E7 assetStyle) {
        Intrinsics.checkNotNullParameter(view, "view");
        Intrinsics.checkNotNullParameter(assetStyle, "assetStyle");
        int color = Color.parseColor("#00000000");
        try {
            color = Color.parseColor(assetStyle.mo1043a());
        } catch (IllegalArgumentException e) {
            HashMap map = C3121d9.f2016c;
            Intrinsics.checkNotNullExpressionValue("d9", "access$getTAG$cp(...)");
            C3402w5 c3402w5 = C3402w5.f2709a;
            C3114d2 event = new C3114d2(e);
            Intrinsics.checkNotNullParameter(event, "event");
            C3402w5.f2712d.m2158a(event);
        }
        view.setBackgroundColor(color);
        if (Intrinsics.areEqual("line", assetStyle.f978e)) {
            GradientDrawable gradientDrawable = new GradientDrawable();
            gradientDrawable.setColor(color);
            if (Intrinsics.areEqual("curved", assetStyle.f979f)) {
                gradientDrawable.setCornerRadius(assetStyle.f981h);
            }
            int color2 = Color.parseColor("#ff000000");
            try {
                String str = assetStyle.f982i;
                Locale US = Locale.US;
                Intrinsics.checkNotNullExpressionValue(US, "US");
                String lowerCase = str.toLowerCase(US);
                Intrinsics.checkNotNullExpressionValue(lowerCase, "this as java.lang.String).toLowerCase(locale)");
                color2 = Color.parseColor(lowerCase);
            } catch (IllegalArgumentException e2) {
                HashMap map2 = C3121d9.f2016c;
                Intrinsics.checkNotNullExpressionValue("d9", "access$getTAG$cp(...)");
                C3402w5 c3402w52 = C3402w5.f2709a;
                C3114d2 event2 = new C3114d2(e2);
                Intrinsics.checkNotNullParameter(event2, "event");
                C3402w5.f2712d.m2158a(event2);
            }
            gradientDrawable.setStroke(1, color2);
            view.setBackground(gradientDrawable);
        }
    }

    /* JADX INFO: renamed from: a */
    public static final void m1399a(View view) {
        HashMap map = C3121d9.f2016c;
        view.setBackground(null);
    }
}
