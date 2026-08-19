package com.rebuilt.app.keep.screen.calendar.fragment;

import android.content.Context;
import android.graphics.Paint;
import android.graphics.Typeface;
import android.view.View;
import android.widget.EditText;
import android.widget.NumberPicker;
import androidx.core.content.ContextCompat;
import com.boilerplate.uikit.C1111R;
import com.google.android.material.timepicker.TimeModel;
import java.lang.reflect.Field;
import java.util.Arrays;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.StringCompanionObject;

/* JADX INFO: compiled from: OvertimeBottomSheetFragment.kt */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(m2721d1 = {"\u0000\u0012\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u001a\u0014\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0004H\u0002¨\u0006\u0005"}, m2722d2 = {"applyConsistentStyling", "", "Landroid/widget/NumberPicker;", "context", "Landroid/content/Context;", "keep_release"}, m2723k = 2, m2724mv = {2, 0, 0}, m2726xi = 48)
public final class OvertimeBottomSheetFragmentKt {
    /* JADX INFO: Access modifiers changed from: private */
    public static final void applyConsistentStyling(NumberPicker numberPicker, Context context) {
        numberPicker.setFocusable(false);
        numberPicker.setFocusableInTouchMode(false);
        numberPicker.setFormatter(new NumberPicker.Formatter() { // from class: com.rebuilt.app.keep.screen.calendar.fragment.OvertimeBottomSheetFragmentKt$$ExternalSyntheticLambda0
            @Override // android.widget.NumberPicker.Formatter
            public final String format(int i) {
                return OvertimeBottomSheetFragmentKt.applyConsistentStyling$lambda$0(i);
            }
        });
        int childCount = numberPicker.getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = numberPicker.getChildAt(i);
            if (childAt instanceof EditText) {
                EditText editText = (EditText) childAt;
                editText.setTextSize(20.0f);
                editText.setTypeface(editText.getTypeface(), 1);
                editText.setTextColor(ContextCompat.getColor(context, C1111R.color.text_20_color));
                editText.setFocusable(false);
                editText.setCursorVisible(false);
                editText.setBackgroundColor(0);
                editText.setPadding(0, 0, 0, 0);
            }
        }
        try {
            Field declaredField = NumberPicker.class.getDeclaredField("mSelectorWheelPaint");
            declaredField.setAccessible(true);
            Object obj = declaredField.get(numberPicker);
            Intrinsics.checkNotNull(obj, "null cannot be cast to non-null type android.graphics.Paint");
            Paint paint = (Paint) obj;
            paint.setTextSize(20.0f);
            paint.setTypeface(Typeface.DEFAULT_BOLD);
            paint.setColor(ContextCompat.getColor(context, C1111R.color.text_20_color));
            paint.setAntiAlias(true);
            Field declaredField2 = NumberPicker.class.getDeclaredField("mInputText");
            declaredField2.setAccessible(true);
            Object obj2 = declaredField2.get(numberPicker);
            Intrinsics.checkNotNull(obj2, "null cannot be cast to non-null type android.widget.EditText");
            EditText editText2 = (EditText) obj2;
            editText2.setTextSize(20.0f);
            editText2.setTypeface(editText2.getTypeface(), 1);
            editText2.setTextColor(ContextCompat.getColor(context, C1111R.color.text_20_color));
            editText2.setFocusable(false);
            editText2.setCursorVisible(false);
            editText2.setBackgroundColor(0);
            try {
                Field declaredField3 = NumberPicker.class.getDeclaredField("mSelectorElementPaint");
                declaredField3.setAccessible(true);
                Object obj3 = declaredField3.get(numberPicker);
                Intrinsics.checkNotNull(obj3, "null cannot be cast to non-null type android.graphics.Paint");
                Paint paint2 = (Paint) obj3;
                paint2.setTextSize(20.0f);
                paint2.setTypeface(Typeface.DEFAULT_BOLD);
                paint2.setColor(ContextCompat.getColor(context, C1111R.color.text_20_color));
                paint2.setAntiAlias(true);
            } catch (Exception unused) {
            }
            numberPicker.invalidate();
        } catch (Exception unused2) {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String applyConsistentStyling$lambda$0(int i) {
        StringCompanionObject stringCompanionObject = StringCompanionObject.INSTANCE;
        String str = String.format(TimeModel.ZERO_LEADING_NUMBER_FORMAT, Arrays.copyOf(new Object[]{Integer.valueOf(i)}, 1));
        Intrinsics.checkNotNullExpressionValue(str, "format(...)");
        return str;
    }
}
