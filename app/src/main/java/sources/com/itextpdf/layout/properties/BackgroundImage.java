package com.itextpdf.layout.properties;

import com.itextpdf.kernel.colors.gradients.AbstractLinearGradientBuilder;
import com.itextpdf.kernel.pdf.xobject.PdfFormXObject;
import com.itextpdf.kernel.pdf.xobject.PdfImageXObject;
import com.itextpdf.kernel.pdf.xobject.PdfXObject;
import com.itextpdf.layout.properties.BackgroundRepeat;

/* JADX INFO: loaded from: classes6.dex */
public class BackgroundImage {
    private static final BlendMode DEFAULT_BLEND_MODE = BlendMode.NORMAL;
    private final BackgroundBox backgroundClip;
    private final BackgroundBox backgroundOrigin;
    private final BackgroundSize backgroundSize;
    private BlendMode blendMode;
    protected PdfXObject image;
    protected AbstractLinearGradientBuilder linearGradientBuilder;
    private final BackgroundPosition position;
    private final BackgroundRepeat repeat;

    public BackgroundImage(BackgroundImage backgroundImage) {
        this(backgroundImage.getImage() == null ? backgroundImage.getForm() : backgroundImage.getImage(), backgroundImage.getRepeat(), backgroundImage.getBackgroundPosition(), backgroundImage.getBackgroundSize(), backgroundImage.getLinearGradientBuilder(), backgroundImage.getBlendMode(), backgroundImage.getBackgroundClip(), backgroundImage.getBackgroundOrigin());
    }

    public PdfImageXObject getImage() {
        PdfXObject pdfXObject = this.image;
        if (pdfXObject instanceof PdfImageXObject) {
            return (PdfImageXObject) pdfXObject;
        }
        return null;
    }

    public PdfFormXObject getForm() {
        PdfXObject pdfXObject = this.image;
        if (pdfXObject instanceof PdfFormXObject) {
            return (PdfFormXObject) pdfXObject;
        }
        return null;
    }

    private BackgroundImage(PdfXObject pdfXObject, BackgroundRepeat backgroundRepeat, BackgroundPosition backgroundPosition, BackgroundSize backgroundSize, AbstractLinearGradientBuilder abstractLinearGradientBuilder, BlendMode blendMode, BackgroundBox backgroundBox, BackgroundBox backgroundBox2) {
        this.blendMode = DEFAULT_BLEND_MODE;
        this.image = pdfXObject;
        this.repeat = backgroundRepeat;
        this.position = backgroundPosition;
        this.backgroundSize = backgroundSize;
        this.linearGradientBuilder = abstractLinearGradientBuilder;
        if (blendMode != null) {
            this.blendMode = blendMode;
        }
        this.backgroundClip = backgroundBox;
        this.backgroundOrigin = backgroundBox2;
    }

    public BackgroundPosition getBackgroundPosition() {
        return this.position;
    }

    public AbstractLinearGradientBuilder getLinearGradientBuilder() {
        return this.linearGradientBuilder;
    }

    public boolean isBackgroundSpecified() {
        PdfXObject pdfXObject = this.image;
        return (pdfXObject instanceof PdfFormXObject) || (pdfXObject instanceof PdfImageXObject) || this.linearGradientBuilder != null;
    }

    public BackgroundSize getBackgroundSize() {
        return this.backgroundSize;
    }

    public float getImageWidth() {
        return this.image.getWidth();
    }

    public float getImageHeight() {
        return this.image.getHeight();
    }

    public BackgroundRepeat getRepeat() {
        return this.repeat;
    }

    public BlendMode getBlendMode() {
        return this.blendMode;
    }

    public BackgroundBox getBackgroundClip() {
        return this.backgroundClip;
    }

    public BackgroundBox getBackgroundOrigin() {
        return this.backgroundOrigin;
    }

    public static class Builder {
        private PdfXObject image;
        private AbstractLinearGradientBuilder linearGradientBuilder;
        private BackgroundPosition position = new BackgroundPosition();
        private BackgroundRepeat repeat = new BackgroundRepeat();
        private BlendMode blendMode = BackgroundImage.DEFAULT_BLEND_MODE;
        private BackgroundSize backgroundSize = new BackgroundSize();
        private BackgroundBox clip = BackgroundBox.BORDER_BOX;
        private BackgroundBox origin = BackgroundBox.PADDING_BOX;

        public Builder setImage(PdfXObject pdfXObject) {
            this.image = pdfXObject;
            this.linearGradientBuilder = null;
            return this;
        }

        public Builder setLinearGradientBuilder(AbstractLinearGradientBuilder abstractLinearGradientBuilder) {
            this.linearGradientBuilder = abstractLinearGradientBuilder;
            this.repeat = new BackgroundRepeat(BackgroundRepeat.BackgroundRepeatValue.NO_REPEAT);
            this.image = null;
            return this;
        }

        public Builder setBackgroundRepeat(BackgroundRepeat backgroundRepeat) {
            this.repeat = backgroundRepeat;
            return this;
        }

        public Builder setBackgroundPosition(BackgroundPosition backgroundPosition) {
            this.position = backgroundPosition;
            return this;
        }

        public Builder setBackgroundBlendMode(BlendMode blendMode) {
            if (blendMode != null) {
                this.blendMode = blendMode;
            }
            return this;
        }

        public Builder setBackgroundSize(BackgroundSize backgroundSize) {
            if (backgroundSize != null) {
                this.backgroundSize = backgroundSize;
            }
            return this;
        }

        public Builder setBackgroundClip(BackgroundBox backgroundBox) {
            this.clip = backgroundBox;
            return this;
        }

        public Builder setBackgroundOrigin(BackgroundBox backgroundBox) {
            this.origin = backgroundBox;
            return this;
        }

        public BackgroundImage build() {
            return new BackgroundImage(this.image, this.repeat, this.position, this.backgroundSize, this.linearGradientBuilder, this.blendMode, this.clip, this.origin);
        }
    }
}
