package com.mukeshsolanki;

import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PointF;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Typeface;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.text.InputFilter;
import android.text.TextPaint;
import android.text.TextUtils;
import android.text.method.MovementMethod;
import android.util.AttributeSet;
import android.view.View;
import android.view.animation.DecelerateInterpolator;
import androidx.appcompat.widget.AppCompatEditText;
import androidx.core.content.res.ResourcesCompat;
import androidx.core.view.ViewCompat;

/* JADX INFO: loaded from: classes.dex */
public class OtpView extends AppCompatEditText {
    private static final int BLINK = 500;
    private static final boolean DBG = false;
    private static final int DEFAULT_COUNT = 4;
    private static final int VIEW_TYPE_LINE = 1;
    private static final int VIEW_TYPE_NONE = 2;
    private static final int VIEW_TYPE_RECTANGLE = 0;
    private final TextPaint animatorTextPaint;
    private Blink blink;
    private int cursorColor;
    private float cursorHeight;
    private int cursorLineColor;
    private int cursorWidth;
    private ValueAnimator defaultAddAnimator;
    private boolean drawCursor;
    private boolean hideLineWhenFilled;
    private boolean isAllCaps;
    private boolean isAnimationEnable;
    private boolean isCursorVisible;
    private Drawable itemBackground;
    private int itemBackgroundResource;
    private final RectF itemBorderRect;
    private final PointF itemCenterPoint;
    private final RectF itemLineRect;
    private ColorStateList lineColor;
    private int lineWidth;
    private String maskingChar;
    private OnOtpCompletionListener onOtpCompletionListener;
    private int otpViewItemCount;
    private int otpViewItemHeight;
    private int otpViewItemRadius;
    private int otpViewItemSpacing;
    private int otpViewItemWidth;
    private final Paint paint;
    private final Path path;
    private boolean rtlTextDirection;
    private final Rect textRect;
    private int viewType;
    private static final InputFilter[] NO_FILTERS = new InputFilter[0];
    private static final int[] SELECTED_STATE = {android.R.attr.state_selected};
    private static final int[] FILLED_STATE = {C3876R.attr.OtpState_filled};

    private static boolean isNumberInputType(int i) {
        return i == 2;
    }

    private static boolean isPasswordInputType(int i) {
        int i2 = i & 4095;
        return i2 == 129 || i2 == 225 || i2 == 18;
    }

    public OtpView(Context context) {
        this(context, null);
    }

    public OtpView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, C3876R.attr.otpViewStyle);
    }

    public OtpView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        TextPaint textPaint = new TextPaint();
        this.animatorTextPaint = textPaint;
        this.cursorLineColor = ViewCompat.MEASURED_STATE_MASK;
        this.textRect = new Rect();
        this.itemBorderRect = new RectF();
        this.itemLineRect = new RectF();
        this.path = new Path();
        this.itemCenterPoint = new PointF();
        this.isAnimationEnable = false;
        this.isAllCaps = false;
        Resources resources = getResources();
        Paint paint = new Paint(1);
        this.paint = paint;
        paint.setStyle(Paint.Style.STROKE);
        textPaint.set(getPaint());
        TypedArray typedArrayObtainStyledAttributes = context.getTheme().obtainStyledAttributes(attributeSet, C3876R.styleable.OtpView, i, 0);
        this.viewType = typedArrayObtainStyledAttributes.getInt(C3876R.styleable.OtpView_OtpViewType, 2);
        this.otpViewItemCount = typedArrayObtainStyledAttributes.getInt(C3876R.styleable.OtpView_OtpItemCount, 4);
        this.otpViewItemHeight = (int) typedArrayObtainStyledAttributes.getDimension(C3876R.styleable.OtpView_OtpItemHeight, resources.getDimensionPixelSize(C3876R.dimen.otp_view_item_size));
        this.otpViewItemWidth = (int) typedArrayObtainStyledAttributes.getDimension(C3876R.styleable.OtpView_OtpItemWidth, resources.getDimensionPixelSize(C3876R.dimen.otp_view_item_size));
        this.otpViewItemSpacing = typedArrayObtainStyledAttributes.getDimensionPixelSize(C3876R.styleable.OtpView_OtpItemSpacing, resources.getDimensionPixelSize(C3876R.dimen.otp_view_item_spacing));
        this.otpViewItemRadius = (int) typedArrayObtainStyledAttributes.getDimension(C3876R.styleable.OtpView_OtpItemRadius, 0.0f);
        this.lineWidth = (int) typedArrayObtainStyledAttributes.getDimension(C3876R.styleable.OtpView_OtpLineWidth, resources.getDimensionPixelSize(C3876R.dimen.otp_view_item_line_width));
        this.lineColor = typedArrayObtainStyledAttributes.getColorStateList(C3876R.styleable.OtpView_OtpLineColor);
        this.isCursorVisible = typedArrayObtainStyledAttributes.getBoolean(C3876R.styleable.OtpView_android_cursorVisible, true);
        this.cursorColor = typedArrayObtainStyledAttributes.getColor(C3876R.styleable.OtpView_OtpCursorColor, getCurrentTextColor());
        this.cursorWidth = typedArrayObtainStyledAttributes.getDimensionPixelSize(C3876R.styleable.OtpView_OtpCursorWidth, resources.getDimensionPixelSize(C3876R.dimen.otp_view_cursor_width));
        this.itemBackground = typedArrayObtainStyledAttributes.getDrawable(C3876R.styleable.OtpView_android_itemBackground);
        this.hideLineWhenFilled = typedArrayObtainStyledAttributes.getBoolean(C3876R.styleable.OtpView_OtpHideLineWhenFilled, false);
        this.rtlTextDirection = typedArrayObtainStyledAttributes.getBoolean(C3876R.styleable.OtpView_OtpRtlTextDirection, false);
        this.maskingChar = typedArrayObtainStyledAttributes.getString(C3876R.styleable.OtpView_OtpMaskingChar);
        this.isAllCaps = typedArrayObtainStyledAttributes.getBoolean(C3876R.styleable.OtpView_android_textAllCaps, false);
        typedArrayObtainStyledAttributes.recycle();
        ColorStateList colorStateList = this.lineColor;
        if (colorStateList != null) {
            this.cursorLineColor = colorStateList.getDefaultColor();
        }
        updateCursorHeight();
        checkItemRadius();
        setMaxLength(this.otpViewItemCount);
        paint.setStrokeWidth(this.lineWidth);
        setupAnimator();
        setTextIsSelectable(false);
    }

    @Override // android.widget.TextView
    public void setTypeface(Typeface typeface, int i) {
        super.setTypeface(typeface, i);
    }

    @Override // android.widget.TextView
    public void setTypeface(Typeface typeface) {
        super.setTypeface(typeface);
        TextPaint textPaint = this.animatorTextPaint;
        if (textPaint != null) {
            textPaint.set(getPaint());
        }
    }

    private void setMaxLength(int i) {
        InputFilter[] inputFilterArr;
        if (i >= 0) {
            inputFilterArr = new InputFilter[]{new InputFilter.LengthFilter(i)};
        } else {
            inputFilterArr = NO_FILTERS;
        }
        setFilters(inputFilterArr);
    }

    private void setupAnimator() {
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(0.5f, 1.0f);
        this.defaultAddAnimator = valueAnimatorOfFloat;
        valueAnimatorOfFloat.setDuration(150L);
        this.defaultAddAnimator.setInterpolator(new DecelerateInterpolator());
        this.defaultAddAnimator.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.mukeshsolanki.OtpView.1
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public void onAnimationUpdate(ValueAnimator valueAnimator) {
                float fFloatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
                OtpView.this.animatorTextPaint.setTextSize(OtpView.this.getTextSize() * fFloatValue);
                OtpView.this.animatorTextPaint.setAlpha((int) (255.0f * fFloatValue));
                OtpView.this.postInvalidate();
            }
        });
    }

    private void checkItemRadius() {
        int i = this.viewType;
        if (i == 1) {
            if (this.otpViewItemRadius > this.lineWidth / 2.0f) {
                throw new IllegalArgumentException("The itemRadius can not be greater than lineWidth when viewType is line");
            }
        } else if (i == 0) {
            if (this.otpViewItemRadius > this.otpViewItemWidth / 2.0f) {
                throw new IllegalArgumentException("The itemRadius can not be greater than itemWidth");
            }
        }
    }

    @Override // android.widget.TextView, android.view.View
    protected void onMeasure(int i, int i2) {
        int mode = View.MeasureSpec.getMode(i);
        int mode2 = View.MeasureSpec.getMode(i2);
        int size = View.MeasureSpec.getSize(i);
        int size2 = View.MeasureSpec.getSize(i2);
        int i3 = this.otpViewItemHeight;
        if (mode != 1073741824) {
            int i4 = this.otpViewItemCount;
            size = ViewCompat.getPaddingStart(this) + ((i4 - 1) * this.otpViewItemSpacing) + (i4 * this.otpViewItemWidth) + ViewCompat.getPaddingEnd(this);
            if (this.otpViewItemSpacing == 0) {
                size -= (this.otpViewItemCount - 1) * this.lineWidth;
            }
        }
        if (mode2 != 1073741824) {
            size2 = getPaddingBottom() + i3 + getPaddingTop();
        }
        setMeasuredDimension(size, size2);
    }

    @Override // android.widget.TextView
    protected void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        ValueAnimator valueAnimator;
        OnOtpCompletionListener onOtpCompletionListener;
        if (i != charSequence.length()) {
            moveSelectionToEnd();
        }
        if (charSequence.length() == this.otpViewItemCount && (onOtpCompletionListener = this.onOtpCompletionListener) != null) {
            onOtpCompletionListener.onOtpCompleted(charSequence.toString());
        }
        makeBlink();
        if (!this.isAnimationEnable || i3 - i2 <= 0 || (valueAnimator = this.defaultAddAnimator) == null) {
            return;
        }
        valueAnimator.end();
        this.defaultAddAnimator.start();
    }

    @Override // android.widget.TextView, android.view.View
    protected void onFocusChanged(boolean z, int i, Rect rect) {
        super.onFocusChanged(z, i, rect);
        if (z) {
            moveSelectionToEnd();
            makeBlink();
        }
    }

    @Override // android.widget.TextView
    protected void onSelectionChanged(int i, int i2) {
        super.onSelectionChanged(i, i2);
        if (getText() == null || i2 == getText().length()) {
            return;
        }
        moveSelectionToEnd();
    }

    private void moveSelectionToEnd() {
        if (getText() != null) {
            setSelection(getText().length());
        }
    }

    @Override // androidx.appcompat.widget.AppCompatEditText, android.widget.TextView, android.view.View
    protected void drawableStateChanged() {
        super.drawableStateChanged();
        ColorStateList colorStateList = this.lineColor;
        if (colorStateList == null || colorStateList.isStateful()) {
            updateColors();
        }
    }

    @Override // android.widget.TextView, android.view.View
    protected void onDraw(Canvas canvas) {
        canvas.save();
        updatePaints();
        drawOtpView(canvas);
        canvas.restore();
    }

    private void updatePaints() {
        this.paint.setColor(this.cursorLineColor);
        this.paint.setStyle(Paint.Style.STROKE);
        this.paint.setStrokeWidth(this.lineWidth);
        getPaint().setColor(getCurrentTextColor());
    }

    private void drawOtpView(Canvas canvas) {
        int length;
        int[] iArr;
        if (this.rtlTextDirection) {
            length = this.otpViewItemCount - 1;
        } else {
            length = getText() != null ? getText().length() : 0;
        }
        int i = 0;
        while (i < this.otpViewItemCount) {
            boolean z = isFocused() && length == i;
            if (i < length) {
                iArr = FILLED_STATE;
            } else {
                iArr = z ? SELECTED_STATE : null;
            }
            this.paint.setColor(iArr != null ? getLineColorForState(iArr) : this.cursorLineColor);
            updateItemRectF(i);
            updateCenterPoint();
            canvas.save();
            if (this.viewType == 0) {
                updateOtpViewBoxPath(i);
                canvas.clipPath(this.path);
            }
            drawItemBackground(canvas, iArr);
            canvas.restore();
            if (z) {
                drawCursor(canvas);
            }
            int i2 = this.viewType;
            if (i2 == 0) {
                drawOtpBox(canvas, i);
            } else if (i2 == 1) {
                drawOtpLine(canvas, i);
            }
            if (this.rtlTextDirection) {
                if (getText().length() >= this.otpViewItemCount - i) {
                    drawInput(canvas, i);
                } else if (!TextUtils.isEmpty(getHint()) && getHint().length() == this.otpViewItemCount) {
                    drawHint(canvas, i);
                }
            } else if (getText().length() > i) {
                drawInput(canvas, i);
            } else if (!TextUtils.isEmpty(getHint()) && getHint().length() == this.otpViewItemCount) {
                drawHint(canvas, i);
            }
            i++;
        }
        if (!isFocused() || getText() == null || getText().length() == this.otpViewItemCount || this.viewType != 0) {
            return;
        }
        int length2 = getText().length();
        updateItemRectF(length2);
        updateCenterPoint();
        updateOtpViewBoxPath(length2);
        this.paint.setColor(getLineColorForState(SELECTED_STATE));
        drawOtpBox(canvas, length2);
    }

    private void drawInput(Canvas canvas, int i) {
        if (this.maskingChar != null && (isNumberInputType(getInputType()) || isPasswordInputType(getInputType()))) {
            drawMaskingText(canvas, i, Character.toString(this.maskingChar.charAt(0)));
        } else if (isPasswordInputType(getInputType())) {
            drawCircle(canvas, i);
        } else {
            drawText(canvas, i);
        }
    }

    private int getLineColorForState(int... iArr) {
        ColorStateList colorStateList = this.lineColor;
        return colorStateList != null ? colorStateList.getColorForState(iArr, this.cursorLineColor) : this.cursorLineColor;
    }

    private void drawItemBackground(Canvas canvas, int[] iArr) {
        if (this.itemBackground == null) {
            return;
        }
        float f = this.lineWidth / 2.0f;
        this.itemBackground.setBounds(Math.round(this.itemBorderRect.left - f), Math.round(this.itemBorderRect.top - f), Math.round(this.itemBorderRect.right + f), Math.round(this.itemBorderRect.bottom + f));
        if (this.viewType != 2) {
            Drawable drawable = this.itemBackground;
            if (iArr == null) {
                iArr = getDrawableState();
            }
            drawable.setState(iArr);
        }
        this.itemBackground.draw(canvas);
    }

    private void updateOtpViewBoxPath(int i) {
        boolean z;
        boolean z2;
        if (this.otpViewItemSpacing != 0) {
            z2 = true;
            z = true;
        } else {
            boolean z3 = i == 0 && i != this.otpViewItemCount - 1;
            z = i == this.otpViewItemCount - 1 && i != 0;
            z2 = z3;
        }
        RectF rectF = this.itemBorderRect;
        int i2 = this.otpViewItemRadius;
        updateRoundRectPath(rectF, i2, i2, z2, z);
    }

    private void drawOtpBox(Canvas canvas, int i) {
        if (getText() == null || !this.hideLineWhenFilled || i >= getText().length()) {
            canvas.drawPath(this.path, this.paint);
        }
    }

    private void drawOtpLine(Canvas canvas, int i) {
        boolean z;
        boolean z2;
        int i2;
        if (getText() == null || !this.hideLineWhenFilled || i >= getText().length()) {
            if (this.otpViewItemSpacing == 0 && (i2 = this.otpViewItemCount) > 1) {
                if (i == 0) {
                    z = true;
                    z2 = false;
                } else if (i == i2 - 1) {
                    z2 = true;
                    z = false;
                } else {
                    z = false;
                }
                this.paint.setStyle(Paint.Style.FILL);
                this.paint.setStrokeWidth(this.lineWidth / 10.0f);
                float f = this.lineWidth / 2.0f;
                this.itemLineRect.set(this.itemBorderRect.left - f, this.itemBorderRect.bottom - f, this.itemBorderRect.right + f, this.itemBorderRect.bottom + f);
                RectF rectF = this.itemLineRect;
                int i3 = this.otpViewItemRadius;
                updateRoundRectPath(rectF, i3, i3, z, z2);
                canvas.drawPath(this.path, this.paint);
            }
            z = true;
            z2 = z;
            this.paint.setStyle(Paint.Style.FILL);
            this.paint.setStrokeWidth(this.lineWidth / 10.0f);
            float f2 = this.lineWidth / 2.0f;
            this.itemLineRect.set(this.itemBorderRect.left - f2, this.itemBorderRect.bottom - f2, this.itemBorderRect.right + f2, this.itemBorderRect.bottom + f2);
            RectF rectF2 = this.itemLineRect;
            int i32 = this.otpViewItemRadius;
            updateRoundRectPath(rectF2, i32, i32, z, z2);
            canvas.drawPath(this.path, this.paint);
        }
    }

    private void drawCursor(Canvas canvas) {
        if (this.drawCursor) {
            float f = this.itemCenterPoint.x;
            float f2 = this.itemCenterPoint.y - (this.cursorHeight / 2.0f);
            int color = this.paint.getColor();
            float strokeWidth = this.paint.getStrokeWidth();
            this.paint.setColor(this.cursorColor);
            this.paint.setStrokeWidth(this.cursorWidth);
            canvas.drawLine(f, f2, f, f2 + this.cursorHeight, this.paint);
            this.paint.setColor(color);
            this.paint.setStrokeWidth(strokeWidth);
        }
    }

    private void updateRoundRectPath(RectF rectF, float f, float f2, boolean z, boolean z2) {
        updateRoundRectPath(rectF, f, f2, z, z2, z2, z);
    }

    private void updateRoundRectPath(RectF rectF, float f, float f2, boolean z, boolean z2, boolean z3, boolean z4) {
        this.path.reset();
        float f3 = rectF.left;
        float f4 = rectF.top;
        float f5 = (rectF.right - f3) - (f * 2.0f);
        float f6 = (rectF.bottom - f4) - (2.0f * f2);
        this.path.moveTo(f3, f4 + f2);
        if (z) {
            float f7 = -f2;
            this.path.rQuadTo(0.0f, f7, f, f7);
        } else {
            this.path.rLineTo(0.0f, -f2);
            this.path.rLineTo(f, 0.0f);
        }
        this.path.rLineTo(f5, 0.0f);
        if (z2) {
            this.path.rQuadTo(f, 0.0f, f, f2);
        } else {
            this.path.rLineTo(f, 0.0f);
            this.path.rLineTo(0.0f, f2);
        }
        this.path.rLineTo(0.0f, f6);
        if (z3) {
            this.path.rQuadTo(0.0f, f2, -f, f2);
        } else {
            this.path.rLineTo(0.0f, f2);
            this.path.rLineTo(-f, 0.0f);
        }
        this.path.rLineTo(-f5, 0.0f);
        if (z4) {
            float f8 = -f;
            this.path.rQuadTo(f8, 0.0f, f8, -f2);
        } else {
            this.path.rLineTo(-f, 0.0f);
            this.path.rLineTo(0.0f, -f2);
        }
        this.path.rLineTo(0.0f, -f6);
        this.path.close();
    }

    private void updateItemRectF(int i) {
        float f = this.lineWidth / 2.0f;
        int scrollX = getScrollX() + ViewCompat.getPaddingStart(this);
        int i2 = this.otpViewItemSpacing;
        int i3 = this.otpViewItemWidth;
        float f2 = scrollX + ((i2 + i3) * i) + f;
        if (i2 == 0 && i > 0) {
            f2 -= this.lineWidth * i;
        }
        float scrollY = getScrollY() + getPaddingTop() + f;
        this.itemBorderRect.set(f2, scrollY, (i3 + f2) - this.lineWidth, (this.otpViewItemHeight + scrollY) - this.lineWidth);
    }

    private void drawText(Canvas canvas, int i) {
        Paint paintByIndex = getPaintByIndex(i);
        paintByIndex.setColor(getCurrentTextColor());
        if (this.rtlTextDirection) {
            int length = this.otpViewItemCount - i;
            if (getText() != null) {
                length -= getText().length();
            }
            if (length > 0 || getText() == null) {
                return;
            }
            drawTextAtBox(canvas, paintByIndex, getText(), Math.abs(length));
            return;
        }
        if (getText() != null) {
            drawTextAtBox(canvas, paintByIndex, getText(), i);
        }
    }

    private void drawMaskingText(Canvas canvas, int i, String str) {
        Paint paintByIndex = getPaintByIndex(i);
        paintByIndex.setColor(getCurrentTextColor());
        if (this.rtlTextDirection) {
            int length = this.otpViewItemCount - i;
            if (getText() != null) {
                length -= getText().length();
            }
            if (length > 0 || getText() == null) {
                return;
            }
            drawTextAtBox(canvas, paintByIndex, getText().toString().replaceAll(".", str), Math.abs(length));
            return;
        }
        if (getText() != null) {
            drawTextAtBox(canvas, paintByIndex, getText().toString().replaceAll(".", str), i);
        }
    }

    private void drawHint(Canvas canvas, int i) {
        Paint paintByIndex = getPaintByIndex(i);
        paintByIndex.setColor(getCurrentHintTextColor());
        if (this.rtlTextDirection) {
            int length = (this.otpViewItemCount - i) - getHint().length();
            if (length <= 0) {
                drawTextAtBox(canvas, paintByIndex, getHint(), Math.abs(length));
                return;
            }
            return;
        }
        drawTextAtBox(canvas, paintByIndex, getHint(), i);
    }

    private void drawTextAtBox(Canvas canvas, Paint paint, CharSequence charSequence, int i) {
        int i2 = i + 1;
        paint.getTextBounds(charSequence.toString(), i, i2, this.textRect);
        float f = this.itemCenterPoint.x;
        float f2 = this.itemCenterPoint.y;
        float fAbs = (f - (Math.abs(this.textRect.width()) / 2.0f)) - this.textRect.left;
        float fAbs2 = (f2 + (Math.abs(this.textRect.height()) / 2.0f)) - this.textRect.bottom;
        if (this.isAllCaps) {
            canvas.drawText(charSequence.toString().toUpperCase(), i, i2, fAbs, fAbs2, paint);
        } else {
            canvas.drawText(charSequence, i, i2, fAbs, fAbs2, paint);
        }
    }

    private void drawCircle(Canvas canvas, int i) {
        Paint paintByIndex = getPaintByIndex(i);
        float f = this.itemCenterPoint.x;
        float f2 = this.itemCenterPoint.y;
        if (this.rtlTextDirection) {
            if ((this.otpViewItemCount - i) - getHint().length() <= 0) {
                canvas.drawCircle(f, f2, paintByIndex.getTextSize() / 2.0f, paintByIndex);
                return;
            }
            return;
        }
        canvas.drawCircle(f, f2, paintByIndex.getTextSize() / 2.0f, paintByIndex);
    }

    private Paint getPaintByIndex(int i) {
        if (getText() != null && this.isAnimationEnable && i == getText().length() - 1) {
            this.animatorTextPaint.setColor(getPaint().getColor());
            return this.animatorTextPaint;
        }
        return getPaint();
    }

    private void drawAnchorLine(Canvas canvas) {
        float f = this.itemCenterPoint.x;
        float f2 = this.itemCenterPoint.y;
        this.paint.setStrokeWidth(1.0f);
        float strokeWidth = f - (this.paint.getStrokeWidth() / 2.0f);
        float strokeWidth2 = f2 - (this.paint.getStrokeWidth() / 2.0f);
        this.path.reset();
        this.path.moveTo(strokeWidth, this.itemBorderRect.top);
        this.path.lineTo(strokeWidth, this.itemBorderRect.top + Math.abs(this.itemBorderRect.height()));
        canvas.drawPath(this.path, this.paint);
        this.path.reset();
        this.path.moveTo(this.itemBorderRect.left, strokeWidth2);
        this.path.lineTo(this.itemBorderRect.left + Math.abs(this.itemBorderRect.width()), strokeWidth2);
        canvas.drawPath(this.path, this.paint);
        this.path.reset();
        this.paint.setStrokeWidth(this.lineWidth);
    }

    private void updateColors() {
        ColorStateList colorStateList = this.lineColor;
        int colorForState = colorStateList != null ? colorStateList.getColorForState(getDrawableState(), 0) : getCurrentTextColor();
        if (colorForState != this.cursorLineColor) {
            this.cursorLineColor = colorForState;
            invalidate();
        }
    }

    private void updateCenterPoint() {
        this.itemCenterPoint.set(this.itemBorderRect.left + (Math.abs(this.itemBorderRect.width()) / 2.0f), this.itemBorderRect.top + (Math.abs(this.itemBorderRect.height()) / 2.0f));
    }

    @Override // android.widget.EditText, android.widget.TextView
    protected MovementMethod getDefaultMovementMethod() {
        return DefaultMovementMethod.getInstance();
    }

    public void setLineColor(int i) {
        this.lineColor = ColorStateList.valueOf(i);
        updateColors();
    }

    public void setLineColor(ColorStateList colorStateList) {
        if (colorStateList == null) {
            throw new IllegalArgumentException("Color cannot be null");
        }
        this.lineColor = colorStateList;
        updateColors();
    }

    public ColorStateList getLineColors() {
        return this.lineColor;
    }

    public int getCurrentLineColor() {
        return this.cursorLineColor;
    }

    public void setLineWidth(int i) {
        this.lineWidth = i;
        checkItemRadius();
        requestLayout();
    }

    public int getLineWidth() {
        return this.lineWidth;
    }

    public void setItemCount(int i) {
        this.otpViewItemCount = i;
        setMaxLength(i);
        requestLayout();
    }

    public int getItemCount() {
        return this.otpViewItemCount;
    }

    public void setItemRadius(int i) {
        this.otpViewItemRadius = i;
        checkItemRadius();
        requestLayout();
    }

    public int getItemRadius() {
        return this.otpViewItemRadius;
    }

    public void setItemSpacing(int i) {
        this.otpViewItemSpacing = i;
        requestLayout();
    }

    public int getItemSpacing() {
        return this.otpViewItemSpacing;
    }

    public void setItemHeight(int i) {
        this.otpViewItemHeight = i;
        updateCursorHeight();
        requestLayout();
    }

    public int getItemHeight() {
        return this.otpViewItemHeight;
    }

    public void setItemWidth(int i) {
        this.otpViewItemWidth = i;
        checkItemRadius();
        requestLayout();
    }

    public int getItemWidth() {
        return this.otpViewItemWidth;
    }

    public void setAnimationEnable(boolean z) {
        this.isAnimationEnable = z;
    }

    public void setHideLineWhenFilled(boolean z) {
        this.hideLineWhenFilled = z;
    }

    @Override // android.widget.TextView
    public void setTextSize(float f) {
        super.setTextSize(f);
        updateCursorHeight();
    }

    @Override // android.widget.TextView
    public void setTextSize(int i, float f) {
        super.setTextSize(i, f);
        updateCursorHeight();
    }

    public void setOtpCompletionListener(OnOtpCompletionListener onOtpCompletionListener) {
        this.onOtpCompletionListener = onOtpCompletionListener;
    }

    public void setItemBackgroundResources(int i) {
        if (i == 0 || this.itemBackgroundResource == i) {
            Drawable drawable = ResourcesCompat.getDrawable(getResources(), i, getContext().getTheme());
            this.itemBackground = drawable;
            setItemBackground(drawable);
            this.itemBackgroundResource = i;
        }
    }

    public void setItemBackgroundColor(int i) {
        Drawable drawable = this.itemBackground;
        if (drawable instanceof ColorDrawable) {
            ((ColorDrawable) drawable.mutate()).setColor(i);
            this.itemBackgroundResource = 0;
        } else {
            setItemBackground(new ColorDrawable(i));
        }
    }

    public void setItemBackground(Drawable drawable) {
        this.itemBackgroundResource = 0;
        this.itemBackground = drawable;
        invalidate();
    }

    public void setCursorWidth(int i) {
        this.cursorWidth = i;
        if (isCursorVisible()) {
            invalidateCursor(true);
        }
    }

    public int getCursorWidth() {
        return this.cursorWidth;
    }

    public void setCursorColor(int i) {
        this.cursorColor = i;
        if (isCursorVisible()) {
            invalidateCursor(true);
        }
    }

    public int getCursorColor() {
        return this.cursorColor;
    }

    public void setMaskingChar(String str) {
        this.maskingChar = str;
        requestLayout();
    }

    public String getMaskingChar() {
        return this.maskingChar;
    }

    @Override // android.widget.TextView
    public void setCursorVisible(boolean z) {
        if (this.isCursorVisible != z) {
            this.isCursorVisible = z;
            invalidateCursor(z);
            makeBlink();
        }
    }

    @Override // android.widget.TextView
    public boolean isCursorVisible() {
        return this.isCursorVisible;
    }

    @Override // android.widget.TextView, android.view.View
    public void onScreenStateChanged(int i) {
        super.onScreenStateChanged(i);
        if (i == 1) {
            resumeBlink();
        } else if (i == 0) {
            suspendBlink();
        }
    }

    @Override // android.widget.TextView, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        resumeBlink();
    }

    @Override // android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        suspendBlink();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean shouldBlink() {
        return isCursorVisible() && isFocused();
    }

    private void makeBlink() {
        if (shouldBlink()) {
            if (this.blink == null) {
                this.blink = new Blink();
            }
            removeCallbacks(this.blink);
            this.drawCursor = false;
            postDelayed(this.blink, 500L);
            return;
        }
        Blink blink = this.blink;
        if (blink != null) {
            removeCallbacks(blink);
        }
    }

    private void suspendBlink() {
        Blink blink = this.blink;
        if (blink != null) {
            blink.cancel();
            invalidateCursor(false);
        }
    }

    private void resumeBlink() {
        Blink blink = this.blink;
        if (blink != null) {
            blink.unCancel();
            makeBlink();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void invalidateCursor(boolean z) {
        if (this.drawCursor != z) {
            this.drawCursor = z;
            invalidate();
        }
    }

    private void updateCursorHeight() {
        float fDpToPx = dpToPx() * 2;
        this.cursorHeight = ((float) this.otpViewItemHeight) - getTextSize() > fDpToPx ? getTextSize() + fDpToPx : getTextSize();
    }

    /* JADX INFO: loaded from: classes5.dex */
    private class Blink implements Runnable {
        private boolean cancelled;

        private Blink() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (this.cancelled) {
                return;
            }
            OtpView.this.removeCallbacks(this);
            if (OtpView.this.shouldBlink()) {
                OtpView.this.invalidateCursor(!r0.drawCursor);
                OtpView.this.postDelayed(this, 500L);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void cancel() {
            if (this.cancelled) {
                return;
            }
            OtpView.this.removeCallbacks(this);
            this.cancelled = true;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void unCancel() {
            this.cancelled = false;
        }
    }

    private int dpToPx() {
        return (int) ((getResources().getDisplayMetrics().density * 2.0f) + 0.5f);
    }
}
