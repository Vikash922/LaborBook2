package com.rebuilt.app.keep.screen.home.fragment;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.Path;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.animation.DecelerateInterpolator;
import android.widget.FrameLayout;
import com.facebook.appevents.iap.InAppPurchaseConstants;
import com.itextpdf.svg.SvgConstants;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.random.Random;
import kotlin.ranges.RangesKt;

/* JADX INFO: compiled from: ConfettiView.kt */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(m2721d1 = {"\u0000T\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u0007\n\u0002\b\u0002\n\u0002\u0010 \n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u000b\u0018\u00002\u00020\u0001:\u0001'B'\b\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0007¢\u0006\u0004\b\b\u0010\tJ\u0006\u0010\u0017\u001a\u00020\u0018J\u0010\u0010\u0019\u001a\u00020\u00182\u0006\u0010\u001a\u001a\u00020\u0013H\u0002J\u0010\u0010\u001b\u001a\u00020\u00182\u0006\u0010\u001c\u001a\u00020\u001dH\u0014J\b\u0010\u001e\u001a\u00020\u0018H\u0014J(\u0010\u001f\u001a\u00020\u00182\u0006\u0010 \u001a\u00020\u00072\u0006\u0010!\u001a\u00020\u00072\u0006\u0010\"\u001a\u00020\u00072\u0006\u0010#\u001a\u00020\u0007H\u0014J\u0018\u0010$\u001a\u00020\u00182\u0006\u0010%\u001a\u00020\u00072\u0006\u0010&\u001a\u00020\u0007H\u0014R\u0014\u0010\n\u001a\b\u0012\u0004\u0012\u00020\f0\u000bX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u000eX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0010X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u0010X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\u0013X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0014\u001a\u00020\u0013X\u0082\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0015\u001a\b\u0012\u0004\u0012\u00020\u00070\u0016X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006("}, m2722d2 = {"Lcom/laborbook/keep/screen/home/fragment/ConfettiView;", "Landroid/view/View;", "context", "Landroid/content/Context;", "attrs", "Landroid/util/AttributeSet;", "defStyleAttr", "", "<init>", "(Landroid/content/Context;Landroid/util/AttributeSet;I)V", "confettiParticles", "", "Lcom/laborbook/keep/screen/home/fragment/ConfettiView$ConfettiParticle;", "paint", "Landroid/graphics/Paint;", "isAnimating", "", "hasAnimated", "centerX", "", "centerY", "confettiColors", "", "startConfettiAnimation", "", "updateParticles", "progress", "onDraw", "canvas", "Landroid/graphics/Canvas;", "onAttachedToWindow", "onSizeChanged", "w", SvgConstants.Attributes.PATH_DATA_REL_LINE_TO_H, "oldw", "oldh", "onMeasure", "widthMeasureSpec", "heightMeasureSpec", "ConfettiParticle", "keep_release"}, m2723k = 1, m2724mv = {2, 0, 0}, m2726xi = 48)
public final class ConfettiView extends View {
    private float centerX;
    private float centerY;
    private final List<Integer> confettiColors;
    private final List<ConfettiParticle> confettiParticles;
    private boolean hasAnimated;
    private boolean isAnimating;
    private final Paint paint;

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public ConfettiView(Context context) {
        this(context, null, 0, 6, null);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public ConfettiView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0, 4, null);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    public /* synthetic */ ConfettiView(Context context, AttributeSet attributeSet, int i, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i2 & 2) != 0 ? null : attributeSet, (i2 & 4) != 0 ? 0 : i);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ConfettiView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        Intrinsics.checkNotNullParameter(context, "context");
        this.confettiParticles = new ArrayList();
        this.paint = new Paint(1);
        this.confettiColors = CollectionsKt.listOf((Object[]) new Integer[]{Integer.valueOf(Color.parseColor("#FFB6C1")), Integer.valueOf(Color.parseColor("#87CEEB")), Integer.valueOf(Color.parseColor("#FFD700")), Integer.valueOf(Color.parseColor("#98FB98")), Integer.valueOf(Color.parseColor("#DDA0DD"))});
    }

    /* JADX INFO: compiled from: ConfettiView.kt */
    @Metadata(m2721d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0007\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b6\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001Bo\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0003\u0012\u0006\u0010\u0007\u001a\u00020\u0003\u0012\u0006\u0010\b\u001a\u00020\t\u0012\u0006\u0010\n\u001a\u00020\u0003\u0012\u0006\u0010\u000b\u001a\u00020\u0003\u0012\u0006\u0010\f\u001a\u00020\u0003\u0012\u0006\u0010\r\u001a\u00020\u0003\u0012\u0006\u0010\u000e\u001a\u00020\u0003\u0012\u0006\u0010\u000f\u001a\u00020\u0003\u0012\u0006\u0010\u0010\u001a\u00020\t¢\u0006\u0004\b\u0011\u0010\u0012J\t\u00101\u001a\u00020\u0003HÆ\u0003J\t\u00102\u001a\u00020\u0003HÆ\u0003J\t\u00103\u001a\u00020\u0003HÆ\u0003J\t\u00104\u001a\u00020\u0003HÆ\u0003J\t\u00105\u001a\u00020\u0003HÆ\u0003J\t\u00106\u001a\u00020\tHÆ\u0003J\t\u00107\u001a\u00020\u0003HÆ\u0003J\t\u00108\u001a\u00020\u0003HÆ\u0003J\t\u00109\u001a\u00020\u0003HÆ\u0003J\t\u0010:\u001a\u00020\u0003HÆ\u0003J\t\u0010;\u001a\u00020\u0003HÆ\u0003J\t\u0010<\u001a\u00020\u0003HÆ\u0003J\t\u0010=\u001a\u00020\tHÆ\u0003J\u008b\u0001\u0010>\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u00032\b\b\u0002\u0010\u0006\u001a\u00020\u00032\b\b\u0002\u0010\u0007\u001a\u00020\u00032\b\b\u0002\u0010\b\u001a\u00020\t2\b\b\u0002\u0010\n\u001a\u00020\u00032\b\b\u0002\u0010\u000b\u001a\u00020\u00032\b\b\u0002\u0010\f\u001a\u00020\u00032\b\b\u0002\u0010\r\u001a\u00020\u00032\b\b\u0002\u0010\u000e\u001a\u00020\u00032\b\b\u0002\u0010\u000f\u001a\u00020\u00032\b\b\u0002\u0010\u0010\u001a\u00020\tHÆ\u0001J\u0013\u0010?\u001a\u00020@2\b\u0010A\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010B\u001a\u00020\tHÖ\u0001J\t\u0010C\u001a\u00020DHÖ\u0001R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0013\u0010\u0014\"\u0004\b\u0015\u0010\u0016R\u001a\u0010\u0004\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0017\u0010\u0014\"\u0004\b\u0018\u0010\u0016R\u001a\u0010\u0005\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0019\u0010\u0014\"\u0004\b\u001a\u0010\u0016R\u001a\u0010\u0006\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001b\u0010\u0014\"\u0004\b\u001c\u0010\u0016R\u001a\u0010\u0007\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001d\u0010\u0014\"\u0004\b\u001e\u0010\u0016R\u001a\u0010\b\u001a\u00020\tX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001f\u0010 \"\u0004\b!\u0010\"R\u001a\u0010\n\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b#\u0010\u0014\"\u0004\b$\u0010\u0016R\u001a\u0010\u000b\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b%\u0010\u0014\"\u0004\b&\u0010\u0016R\u001a\u0010\f\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b'\u0010\u0014\"\u0004\b(\u0010\u0016R\u001a\u0010\r\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b)\u0010\u0014\"\u0004\b*\u0010\u0016R\u001a\u0010\u000e\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b+\u0010\u0014\"\u0004\b,\u0010\u0016R\u001a\u0010\u000f\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b-\u0010\u0014\"\u0004\b.\u0010\u0016R\u001a\u0010\u0010\u001a\u00020\tX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b/\u0010 \"\u0004\b0\u0010\"¨\u0006E"}, m2722d2 = {"Lcom/laborbook/keep/screen/home/fragment/ConfettiView$ConfettiParticle;", "", "startX", "", "startY", SvgConstants.Attributes.f3330X, SvgConstants.Attributes.f3333Y, "size", "color", "", "rotation", "rotationSpeed", "velocityX", "velocityY", "angle", "distance", "shapeType", "<init>", "(FFFFFIFFFFFFI)V", "getStartX", "()F", "setStartX", "(F)V", "getStartY", "setStartY", "getX", "setX", "getY", "setY", "getSize", "setSize", "getColor", "()I", "setColor", "(I)V", "getRotation", "setRotation", "getRotationSpeed", "setRotationSpeed", "getVelocityX", "setVelocityX", "getVelocityY", "setVelocityY", "getAngle", "setAngle", "getDistance", "setDistance", "getShapeType", "setShapeType", "component1", "component2", "component3", "component4", "component5", "component6", "component7", "component8", "component9", "component10", "component11", "component12", "component13", "copy", "equals", "", "other", "hashCode", InAppPurchaseConstants.METHOD_TO_STRING, "", "keep_release"}, m2723k = 1, m2724mv = {2, 0, 0}, m2726xi = 48)
    public static final /* data */ class ConfettiParticle {
        private float angle;
        private int color;
        private float distance;
        private float rotation;
        private float rotationSpeed;
        private int shapeType;
        private float size;
        private float startX;
        private float startY;
        private float velocityX;
        private float velocityY;
        private float x;
        private float y;

        /* JADX INFO: renamed from: component1, reason: from getter */
        public final float getStartX() {
            return this.startX;
        }

        /* JADX INFO: renamed from: component10, reason: from getter */
        public final float getVelocityY() {
            return this.velocityY;
        }

        /* JADX INFO: renamed from: component11, reason: from getter */
        public final float getAngle() {
            return this.angle;
        }

        /* JADX INFO: renamed from: component12, reason: from getter */
        public final float getDistance() {
            return this.distance;
        }

        /* JADX INFO: renamed from: component13, reason: from getter */
        public final int getShapeType() {
            return this.shapeType;
        }

        /* JADX INFO: renamed from: component2, reason: from getter */
        public final float getStartY() {
            return this.startY;
        }

        /* JADX INFO: renamed from: component3, reason: from getter */
        public final float getX() {
            return this.x;
        }

        /* JADX INFO: renamed from: component4, reason: from getter */
        public final float getY() {
            return this.y;
        }

        /* JADX INFO: renamed from: component5, reason: from getter */
        public final float getSize() {
            return this.size;
        }

        /* JADX INFO: renamed from: component6, reason: from getter */
        public final int getColor() {
            return this.color;
        }

        /* JADX INFO: renamed from: component7, reason: from getter */
        public final float getRotation() {
            return this.rotation;
        }

        /* JADX INFO: renamed from: component8, reason: from getter */
        public final float getRotationSpeed() {
            return this.rotationSpeed;
        }

        /* JADX INFO: renamed from: component9, reason: from getter */
        public final float getVelocityX() {
            return this.velocityX;
        }

        public final ConfettiParticle copy(float startX, float startY, float x, float y, float size, int color, float rotation, float rotationSpeed, float velocityX, float velocityY, float angle, float distance, int shapeType) {
            return new ConfettiParticle(startX, startY, x, y, size, color, rotation, rotationSpeed, velocityX, velocityY, angle, distance, shapeType);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            if (!(other instanceof ConfettiParticle)) {
                return false;
            }
            ConfettiParticle confettiParticle = (ConfettiParticle) other;
            return Float.compare(this.startX, confettiParticle.startX) == 0 && Float.compare(this.startY, confettiParticle.startY) == 0 && Float.compare(this.x, confettiParticle.x) == 0 && Float.compare(this.y, confettiParticle.y) == 0 && Float.compare(this.size, confettiParticle.size) == 0 && this.color == confettiParticle.color && Float.compare(this.rotation, confettiParticle.rotation) == 0 && Float.compare(this.rotationSpeed, confettiParticle.rotationSpeed) == 0 && Float.compare(this.velocityX, confettiParticle.velocityX) == 0 && Float.compare(this.velocityY, confettiParticle.velocityY) == 0 && Float.compare(this.angle, confettiParticle.angle) == 0 && Float.compare(this.distance, confettiParticle.distance) == 0 && this.shapeType == confettiParticle.shapeType;
        }

        public int hashCode() {
            return (((((((((((((((((((((((Float.hashCode(this.startX) * 31) + Float.hashCode(this.startY)) * 31) + Float.hashCode(this.x)) * 31) + Float.hashCode(this.y)) * 31) + Float.hashCode(this.size)) * 31) + Integer.hashCode(this.color)) * 31) + Float.hashCode(this.rotation)) * 31) + Float.hashCode(this.rotationSpeed)) * 31) + Float.hashCode(this.velocityX)) * 31) + Float.hashCode(this.velocityY)) * 31) + Float.hashCode(this.angle)) * 31) + Float.hashCode(this.distance)) * 31) + Integer.hashCode(this.shapeType);
        }

        public String toString() {
            StringBuilder sb = new StringBuilder("ConfettiParticle(startX=");
            sb.append(this.startX).append(", startY=").append(this.startY).append(", x=").append(this.x).append(", y=").append(this.y).append(", size=").append(this.size).append(", color=").append(this.color).append(", rotation=").append(this.rotation).append(", rotationSpeed=").append(this.rotationSpeed).append(", velocityX=").append(this.velocityX).append(", velocityY=").append(this.velocityY).append(", angle=").append(this.angle).append(", distance=");
            sb.append(this.distance).append(", shapeType=").append(this.shapeType).append(')');
            return sb.toString();
        }

        public ConfettiParticle(float f, float f2, float f3, float f4, float f5, int i, float f6, float f7, float f8, float f9, float f10, float f11, int i2) {
            this.startX = f;
            this.startY = f2;
            this.x = f3;
            this.y = f4;
            this.size = f5;
            this.color = i;
            this.rotation = f6;
            this.rotationSpeed = f7;
            this.velocityX = f8;
            this.velocityY = f9;
            this.angle = f10;
            this.distance = f11;
            this.shapeType = i2;
        }

        public final float getStartX() {
            return this.startX;
        }

        public final void setStartX(float f) {
            this.startX = f;
        }

        public final float getStartY() {
            return this.startY;
        }

        public final void setStartY(float f) {
            this.startY = f;
        }

        public final float getX() {
            return this.x;
        }

        public final void setX(float f) {
            this.x = f;
        }

        public final float getY() {
            return this.y;
        }

        public final void setY(float f) {
            this.y = f;
        }

        public final float getSize() {
            return this.size;
        }

        public final void setSize(float f) {
            this.size = f;
        }

        public final int getColor() {
            return this.color;
        }

        public final void setColor(int i) {
            this.color = i;
        }

        public final float getRotation() {
            return this.rotation;
        }

        public final void setRotation(float f) {
            this.rotation = f;
        }

        public final float getRotationSpeed() {
            return this.rotationSpeed;
        }

        public final void setRotationSpeed(float f) {
            this.rotationSpeed = f;
        }

        public final float getVelocityX() {
            return this.velocityX;
        }

        public final void setVelocityX(float f) {
            this.velocityX = f;
        }

        public final float getVelocityY() {
            return this.velocityY;
        }

        public final void setVelocityY(float f) {
            this.velocityY = f;
        }

        public final float getAngle() {
            return this.angle;
        }

        public final void setAngle(float f) {
            this.angle = f;
        }

        public final float getDistance() {
            return this.distance;
        }

        public final void setDistance(float f) {
            this.distance = f;
        }

        public final int getShapeType() {
            return this.shapeType;
        }

        public final void setShapeType(int i) {
            this.shapeType = i;
        }
    }

    public final void startConfettiAnimation() {
        if (this.hasAnimated || this.isAnimating) {
            return;
        }
        this.isAnimating = true;
        this.hasAnimated = true;
        this.centerX = getWidth() / 2.0f;
        this.centerY = getHeight() / 3.0f;
        this.confettiParticles.clear();
        for (int i = 0; i < 60; i++) {
            float fNextFloat = Random.INSTANCE.nextFloat() * 360.0f;
            double radians = Math.toRadians(fNextFloat);
            float fNextFloat2 = (Random.INSTANCE.nextFloat() * 200) + 50;
            float f = 15;
            double dNextFloat = (Random.INSTANCE.nextFloat() * f) + 10;
            float fCos = (float) (Math.cos(radians) * dNextFloat);
            float fSin = (float) (Math.sin(radians) * dNextFloat);
            float f2 = this.centerX;
            float f3 = this.centerY;
            this.confettiParticles.add(new ConfettiParticle(f2, f3, f2, f3, (Random.INSTANCE.nextFloat() * 16) + 6, this.confettiColors.get(Random.INSTANCE.nextInt(this.confettiColors.size())).intValue(), Random.INSTANCE.nextFloat() * 360, (Random.INSTANCE.nextFloat() - 0.5f) * f, fCos, fSin, fNextFloat, fNextFloat2, Random.INSTANCE.nextInt(4)));
        }
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
        valueAnimatorOfFloat.setDuration(1500L);
        valueAnimatorOfFloat.setInterpolator(new DecelerateInterpolator());
        valueAnimatorOfFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.rebuilt.app.keep.screen.home.fragment.ConfettiView$$ExternalSyntheticLambda0
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                ConfettiView.startConfettiAnimation$lambda$1$lambda$0(this.f$0, valueAnimator);
            }
        });
        valueAnimatorOfFloat.addListener(new AnimatorListenerAdapter() { // from class: com.rebuilt.app.keep.screen.home.fragment.ConfettiView$startConfettiAnimation$animator$1$2
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animation) {
                Intrinsics.checkNotNullParameter(animation, "animation");
                this.this$0.isAnimating = false;
                this.this$0.setVisibility(8);
            }
        });
        valueAnimatorOfFloat.start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void startConfettiAnimation$lambda$1$lambda$0(ConfettiView this$0, ValueAnimator animation) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(animation, "animation");
        Object animatedValue = animation.getAnimatedValue();
        Intrinsics.checkNotNull(animatedValue, "null cannot be cast to non-null type kotlin.Float");
        this$0.updateParticles(((Float) animatedValue).floatValue());
        this$0.invalidate();
    }

    private final void updateParticles(float progress) {
        for (ConfettiParticle confettiParticle : this.confettiParticles) {
            float f = 1.0f - progress;
            float f2 = 1.0f - (f * f);
            float f3 = 20;
            confettiParticle.setX(confettiParticle.getStartX() + (confettiParticle.getVelocityX() * f2 * f3));
            confettiParticle.setY(confettiParticle.getStartY() + (confettiParticle.getVelocityY() * f2 * f3));
            if (progress > 0.3f) {
                confettiParticle.setY(confettiParticle.getY() + (((progress - 0.3f) / 0.7f) * 30));
            }
            confettiParticle.setRotation(confettiParticle.getRotation() + confettiParticle.getRotationSpeed());
            if (Random.INSTANCE.nextFloat() < 0.1f) {
                confettiParticle.setVelocityX(confettiParticle.getVelocityX() + ((Random.INSTANCE.nextFloat() - 0.5f) * 0.3f));
                confettiParticle.setVelocityY(confettiParticle.getVelocityY() + ((Random.INSTANCE.nextFloat() - 0.5f) * 0.3f));
            }
        }
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        Intrinsics.checkNotNullParameter(canvas, "canvas");
        super.onDraw(canvas);
        if (this.confettiParticles.isEmpty() || getWidth() == 0 || getHeight() == 0) {
            return;
        }
        for (ConfettiParticle confettiParticle : this.confettiParticles) {
            if (confettiParticle.getY() < getHeight() + 100 && confettiParticle.getX() > -50.0f && confettiParticle.getX() < getWidth() + 50 && confettiParticle.getY() > -50.0f) {
                canvas.save();
                canvas.translate(confettiParticle.getX(), confettiParticle.getY());
                canvas.rotate(confettiParticle.getRotation());
                this.paint.setColor(confettiParticle.getColor());
                float fSqrt = (float) Math.sqrt(((confettiParticle.getX() - this.centerX) * (confettiParticle.getX() - this.centerX)) + ((confettiParticle.getY() - this.centerY) * (confettiParticle.getY() - this.centerY)));
                float fCoerceAtLeast = RangesKt.coerceAtLeast(getWidth(), getHeight()) * 0.8f;
                this.paint.setAlpha(fSqrt > fCoerceAtLeast ? RangesKt.coerceIn((int) (255 * (1 - ((fSqrt - fCoerceAtLeast) / 100))), 0, 255) : 255);
                int shapeType = confettiParticle.getShapeType();
                if (shapeType == 0) {
                    canvas.drawCircle(0.0f, 0.0f, confettiParticle.getSize() / 2, this.paint);
                } else if (shapeType == 1) {
                    float size = confettiParticle.getSize() / 2;
                    float f = -size;
                    canvas.drawRect(f, f, size, size, this.paint);
                } else if (shapeType == 2) {
                    float size2 = confettiParticle.getSize() / 2;
                    Path path = new Path();
                    float f2 = -size2;
                    path.moveTo(0.0f, f2);
                    path.lineTo(f2, size2);
                    path.lineTo(size2, size2);
                    path.close();
                    canvas.drawPath(path, this.paint);
                } else if (shapeType == 3) {
                    float size3 = confettiParticle.getSize() / 2;
                    Path path2 = new Path();
                    float f3 = 0.4f * size3;
                    for (int i = 0; i < 10; i++) {
                        double d = ((double) i) * 0.6283185307179586d;
                        double d2 = i % 2 == 0 ? size3 : f3;
                        float fCos = (float) (Math.cos(d) * d2);
                        float fSin = (float) (Math.sin(d) * d2);
                        if (i == 0) {
                            path2.moveTo(fCos, fSin);
                        } else {
                            path2.lineTo(fCos, fSin);
                        }
                    }
                    path2.close();
                    canvas.drawPath(path2, this.paint);
                }
                canvas.restore();
            }
        }
    }

    @Override // android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (this.hasAnimated || getWidth() <= 0 || getHeight() <= 0) {
            return;
        }
        post(new Runnable() { // from class: com.rebuilt.app.keep.screen.home.fragment.ConfettiView$$ExternalSyntheticLambda2
            @Override // java.lang.Runnable
            public final void run() {
                ConfettiView.onAttachedToWindow$lambda$6(this.f$0);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onAttachedToWindow$lambda$6(ConfettiView this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.startConfettiAnimation();
    }

    @Override // android.view.View
    protected void onSizeChanged(int w, int h, int oldw, int oldh) {
        super.onSizeChanged(w, h, oldw, oldh);
        if (w <= 0 || h <= 0 || this.hasAnimated || this.isAnimating) {
            return;
        }
        post(new Runnable() { // from class: com.rebuilt.app.keep.screen.home.fragment.ConfettiView$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                ConfettiView.onSizeChanged$lambda$7(this.f$0);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onSizeChanged$lambda$7(ConfettiView this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.startConfettiAnimation();
    }

    @Override // android.view.View
    protected void onMeasure(int widthMeasureSpec, int heightMeasureSpec) {
        View childAt;
        ViewParent parent = getParent();
        if ((parent instanceof FrameLayout) && (childAt = ((ViewGroup) parent).getChildAt(1)) != null) {
            if (childAt.getMeasuredHeight() == 0) {
                childAt.measure(View.MeasureSpec.makeMeasureSpec(View.MeasureSpec.getSize(widthMeasureSpec), 1073741824), View.MeasureSpec.makeMeasureSpec(0, 0));
            }
            setMeasuredDimension(View.MeasureSpec.getSize(widthMeasureSpec), childAt.getMeasuredHeight());
            return;
        }
        super.onMeasure(widthMeasureSpec, heightMeasureSpec);
    }
}
