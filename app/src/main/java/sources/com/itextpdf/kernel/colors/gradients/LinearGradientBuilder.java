package com.itextpdf.kernel.colors.gradients;

import com.itextpdf.kernel.geom.AffineTransform;
import com.itextpdf.kernel.geom.Point;
import com.itextpdf.kernel.geom.Rectangle;

/* JADX INFO: loaded from: classes6.dex */
public class LinearGradientBuilder extends AbstractLinearGradientBuilder {
    private final Point[] coordinates = {new Point(), new Point()};
    private AffineTransform transformation = null;

    public LinearGradientBuilder setGradientVector(double d, double d2, double d3, double d4) {
        this.coordinates[0].setLocation(d, d2);
        this.coordinates[1].setLocation(d3, d4);
        return this;
    }

    public LinearGradientBuilder setCurrentSpaceToGradientVectorSpaceTransformation(AffineTransform affineTransform) {
        this.transformation = affineTransform;
        return this;
    }

    @Override // com.itextpdf.kernel.colors.gradients.AbstractLinearGradientBuilder
    public Point[] getGradientVector(Rectangle rectangle, AffineTransform affineTransform) {
        return new Point[]{this.coordinates[0].getLocation(), this.coordinates[1].getLocation()};
    }

    @Override // com.itextpdf.kernel.colors.gradients.AbstractLinearGradientBuilder
    public AffineTransform getCurrentSpaceToGradientVectorSpaceTransformation(Rectangle rectangle, AffineTransform affineTransform) {
        return this.transformation;
    }
}
