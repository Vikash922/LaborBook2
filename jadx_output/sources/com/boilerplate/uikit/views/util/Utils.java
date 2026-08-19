package com.boilerplate.uikit.views.util;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Typeface;
import android.os.Build;
import android.util.TypedValue;
import androidx.core.content.res.ResourcesCompat;
import com.itextpdf.styledxmlparser.css.CommonCssConstants;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
@Metadata(m2721d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0007\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0002\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0016\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\tJ\u0016\u0010\n\u001a\u00020\u00052\u0006\u0010\u000b\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\tJ\u0016\u0010\f\u001a\u00020\u00052\u0006\u0010\b\u001a\u00020\t2\u0006\u0010\r\u001a\u00020\u0005J\u0016\u0010\u000e\u001a\u00020\u00052\u0006\u0010\b\u001a\u00020\t2\u0006\u0010\u000f\u001a\u00020\u0005J\u0018\u0010\u0010\u001a\u0004\u0018\u00010\u00112\u0006\u0010\b\u001a\u00020\t2\u0006\u0010\u0012\u001a\u00020\u0005¨\u0006\u0013"}, m2722d2 = {"Lcom/boilerplate/uikit/views/util/Utils;", "", "<init>", "()V", "dpToPx", "", "dp", "", "context", "Landroid/content/Context;", "spToPx", "sp", "getColor", "colorResId", "getThemeAttrData", CommonCssConstants.ATTRIBUTE, "getFont", "Landroid/graphics/Typeface;", "font", "uikit_release"}, m2723k = 1, m2724mv = {2, 0, 0}, m2726xi = 48)
public final class Utils {
    public static final Utils INSTANCE = new Utils();

    private Utils() {
    }

    public final int dpToPx(float dp, Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        return (int) TypedValue.applyDimension(1, dp, context.getResources().getDisplayMetrics());
    }

    public final int getColor(Context context, int colorResId) {
        Intrinsics.checkNotNullParameter(context, "context");
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(new TypedValue().data, new int[]{colorResId});
        Intrinsics.checkNotNullExpressionValue(typedArrayObtainStyledAttributes, "obtainStyledAttributes(...)");
        int color = typedArrayObtainStyledAttributes.getColor(0, 0);
        typedArrayObtainStyledAttributes.recycle();
        return color;
    }

    public final Typeface getFont(Context context, int font) {
        Intrinsics.checkNotNullParameter(context, "context");
        return Build.VERSION.SDK_INT >= 26 ? context.getResources().getFont(font) : ResourcesCompat.getFont(context, font);
    }

    public final int getThemeAttrData(Context context, int attr) {
        Intrinsics.checkNotNullParameter(context, "context");
        TypedValue typedValue = new TypedValue();
        context.getTheme().resolveAttribute(attr, typedValue, true);
        return typedValue.data;
    }

    public final int spToPx(float sp, Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        return (int) TypedValue.applyDimension(2, sp, context.getResources().getDisplayMetrics());
    }
}
