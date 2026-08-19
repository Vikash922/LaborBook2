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

/* JADX INFO: loaded from: classes6.dex */
public final class N8 {
    public static ViewGroup.LayoutParams a(D7 asset, ViewGroup parent) {
        Intrinsics.checkNotNullParameter(asset, "asset");
        Intrinsics.checkNotNullParameter(parent, "parent");
        E7 e7 = asset.d;
        Point point = e7.f107a;
        Point point2 = e7.c;
        ViewGroup.LayoutParams layoutParams = new ViewGroup.LayoutParams(a(point.x), a(point.y));
        if (parent instanceof J7) {
            I7 i7 = new I7(a(point.x), a(point.y));
            int iA = a(point2.x);
            int iA2 = a(point2.y);
            i7.f140a = iA;
            i7.b = iA2;
            return i7;
        }
        if (parent instanceof LinearLayout) {
            LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(a(point.x), a(point.y));
            layoutParams2.setMargins(a(point2.x), a(point2.y), 0, 0);
            return layoutParams2;
        }
        if (parent instanceof AbsListView) {
            return new AbsListView.LayoutParams(a(point.x), a(point.y));
        }
        if (parent instanceof FrameLayout) {
            FrameLayout.LayoutParams layoutParams3 = new FrameLayout.LayoutParams(a(point.x), a(point.y));
            layoutParams3.setMargins(a(point2.x), a(point2.y), 0, 0);
            return layoutParams3;
        }
        HashMap map = C0271d9.c;
        Intrinsics.checkNotNullExpressionValue("d9", "access$getTAG$cp(...)");
        return layoutParams;
    }

    public static int a(int i) {
        int i2;
        return ((((Context) C0271d9.e.get()) instanceof InMobiAdActivity) || (i2 = C0271d9.f) == 0) ? i : (int) (((((double) i2) * 1.0d) / ((double) C0271d9.g)) * ((double) i));
    }

    public static void a(Context context, ImageView imageView) {
        Bitmap bitmapCreateBitmap;
        if (imageView.getDrawable() == null) {
            float f = N3.d().c;
            C0507t3 c0507t3 = new C0507t3(context, (byte) 0, null);
            if (Build.VERSION.SDK_INT < 28) {
                c0507t3.layout(0, 0, (int) (a(40) * f), (int) (a(40) * f));
                c0507t3.setDrawingCacheEnabled(true);
                c0507t3.buildDrawingCache();
                bitmapCreateBitmap = c0507t3.getDrawingCache();
                Intrinsics.checkNotNullExpressionValue(bitmapCreateBitmap, "getDrawingCache(...)");
            } else {
                c0507t3.layout(0, 0, (int) (a(40) * f), (int) (a(40) * f));
                bitmapCreateBitmap = Bitmap.createBitmap((int) (a(40) * f), (int) (a(40) * f), Bitmap.Config.ARGB_8888);
                Intrinsics.checkNotNullExpressionValue(bitmapCreateBitmap, "createBitmap(...)");
                c0507t3.draw(new Canvas(bitmapCreateBitmap));
            }
            imageView.setImageBitmap(bitmapCreateBitmap);
        }
    }

    public static final void a(TextView textView, ArrayList arrayList) {
        HashMap map = C0271d9.c;
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

    public static void a(View view, E7 assetStyle) {
        Intrinsics.checkNotNullParameter(view, "view");
        Intrinsics.checkNotNullParameter(assetStyle, "assetStyle");
        int color = Color.parseColor("#00000000");
        try {
            color = Color.parseColor(assetStyle.a());
        } catch (IllegalArgumentException e) {
            HashMap map = C0271d9.c;
            Intrinsics.checkNotNullExpressionValue("d9", "access$getTAG$cp(...)");
            C0551w5 c0551w5 = C0551w5.f513a;
            C0264d2 event = new C0264d2(e);
            Intrinsics.checkNotNullParameter(event, "event");
            C0551w5.d.a(event);
        }
        view.setBackgroundColor(color);
        if (Intrinsics.areEqual("line", assetStyle.e)) {
            GradientDrawable gradientDrawable = new GradientDrawable();
            gradientDrawable.setColor(color);
            if (Intrinsics.areEqual("curved", assetStyle.f)) {
                gradientDrawable.setCornerRadius(assetStyle.h);
            }
            int color2 = Color.parseColor("#ff000000");
            try {
                String str = assetStyle.i;
                Locale US = Locale.US;
                Intrinsics.checkNotNullExpressionValue(US, "US");
                String lowerCase = str.toLowerCase(US);
                Intrinsics.checkNotNullExpressionValue(lowerCase, "this as java.lang.String).toLowerCase(locale)");
                color2 = Color.parseColor(lowerCase);
            } catch (IllegalArgumentException e2) {
                HashMap map2 = C0271d9.c;
                Intrinsics.checkNotNullExpressionValue("d9", "access$getTAG$cp(...)");
                C0551w5 c0551w52 = C0551w5.f513a;
                C0264d2 event2 = new C0264d2(e2);
                Intrinsics.checkNotNullParameter(event2, "event");
                C0551w5.d.a(event2);
            }
            gradientDrawable.setStroke(1, color2);
            view.setBackground(gradientDrawable);
        }
    }

    public static final void a(View view) {
        HashMap map = C0271d9.c;
        view.setBackground(null);
    }
}
