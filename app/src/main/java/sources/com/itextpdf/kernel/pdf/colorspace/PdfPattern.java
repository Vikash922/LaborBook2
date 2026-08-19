package com.itextpdf.kernel.pdf.colorspace;

import com.itextpdf.kernel.geom.Rectangle;
import com.itextpdf.kernel.pdf.PdfArray;
import com.itextpdf.kernel.pdf.PdfDictionary;
import com.itextpdf.kernel.pdf.PdfName;
import com.itextpdf.kernel.pdf.PdfNumber;
import com.itextpdf.kernel.pdf.PdfObjectWrapper;
import com.itextpdf.kernel.pdf.PdfResources;
import com.itextpdf.kernel.pdf.PdfStream;

/* JADX INFO: loaded from: classes6.dex */
public abstract class PdfPattern extends PdfObjectWrapper<PdfDictionary> {
    @Override // com.itextpdf.kernel.pdf.PdfObjectWrapper
    protected boolean isWrappedObjectMustBeIndirect() {
        return true;
    }

    protected PdfPattern(PdfDictionary pdfDictionary) {
        super(pdfDictionary);
    }

    public static PdfPattern getPatternInstance(PdfDictionary pdfDictionary) {
        PdfNumber asNumber = pdfDictionary.getAsNumber(PdfName.PatternType);
        if (asNumber.intValue() == 1 && (pdfDictionary instanceof PdfStream)) {
            return new Tiling((PdfStream) pdfDictionary);
        }
        if (asNumber.intValue() == 2) {
            return new Shading(pdfDictionary);
        }
        throw new IllegalArgumentException("pdfObject");
    }

    public PdfArray getMatrix() {
        return getPdfObject().getAsArray(PdfName.Matrix);
    }

    public void setMatrix(PdfArray pdfArray) {
        getPdfObject().put(PdfName.Matrix, pdfArray);
        setModified();
    }

    @Override // com.itextpdf.kernel.pdf.PdfObjectWrapper
    public void flush() {
        super.flush();
    }

    public static class Tiling extends PdfPattern {
        private PdfResources resources;

        public static class PaintType {
            public static final int COLORED = 1;
            public static final int UNCOLORED = 2;
        }

        public static class TilingType {
            public static final int CONSTANT_SPACING = 1;
            public static final int CONSTANT_SPACING_AND_FASTER_TILING = 3;
            public static final int NO_DISTORTION = 2;
        }

        public Tiling(PdfStream pdfStream) {
            super(pdfStream);
            this.resources = null;
        }

        public Tiling(float f, float f2) {
            this(f, f2, true);
        }

        public Tiling(float f, float f2, boolean z) {
            this(new Rectangle(f, f2), z);
        }

        public Tiling(Rectangle rectangle) {
            this(rectangle, true);
        }

        public Tiling(Rectangle rectangle, boolean z) {
            this(rectangle, rectangle.getWidth(), rectangle.getHeight(), z);
        }

        public Tiling(float f, float f2, float f3, float f4) {
            this(f, f2, f3, f4, true);
        }

        public Tiling(float f, float f2, float f3, float f4, boolean z) {
            this(new Rectangle(f, f2), f3, f4, z);
        }

        public Tiling(Rectangle rectangle, float f, float f2) {
            this(rectangle, f, f2, true);
        }

        public Tiling(Rectangle rectangle, float f, float f2, boolean z) {
            super(new PdfStream());
            this.resources = null;
            getPdfObject().put(PdfName.Type, PdfName.Pattern);
            getPdfObject().put(PdfName.PatternType, new PdfNumber(1));
            getPdfObject().put(PdfName.PaintType, new PdfNumber(z ? 1 : 2));
            getPdfObject().put(PdfName.TilingType, new PdfNumber(1));
            getPdfObject().put(PdfName.BBox, new PdfArray(rectangle));
            getPdfObject().put(PdfName.XStep, new PdfNumber(f));
            getPdfObject().put(PdfName.YStep, new PdfNumber(f2));
            this.resources = new PdfResources();
            getPdfObject().put(PdfName.Resources, this.resources.getPdfObject());
        }

        public boolean isColored() {
            return getPdfObject().getAsNumber(PdfName.PaintType).intValue() == 1;
        }

        public void setColored(boolean z) {
            getPdfObject().put(PdfName.PaintType, new PdfNumber(z ? 1 : 2));
            setModified();
        }

        public int getTilingType() {
            return getPdfObject().getAsNumber(PdfName.TilingType).intValue();
        }

        public void setTilingType(int i) {
            if (i != 1 && i != 2 && i != 3) {
                throw new IllegalArgumentException("tilingType");
            }
            getPdfObject().put(PdfName.TilingType, new PdfNumber(i));
            setModified();
        }

        public Rectangle getBBox() {
            return getPdfObject().getAsArray(PdfName.BBox).toRectangle();
        }

        public void setBBox(Rectangle rectangle) {
            getPdfObject().put(PdfName.BBox, new PdfArray(rectangle));
            setModified();
        }

        public float getXStep() {
            return getPdfObject().getAsNumber(PdfName.XStep).floatValue();
        }

        public void setXStep(float f) {
            getPdfObject().put(PdfName.XStep, new PdfNumber(f));
            setModified();
        }

        public float getYStep() {
            return getPdfObject().getAsNumber(PdfName.YStep).floatValue();
        }

        public void setYStep(float f) {
            getPdfObject().put(PdfName.YStep, new PdfNumber(f));
            setModified();
        }

        public PdfResources getResources() {
            if (this.resources == null) {
                PdfDictionary asDictionary = getPdfObject().getAsDictionary(PdfName.Resources);
                if (asDictionary == null) {
                    asDictionary = new PdfDictionary();
                    getPdfObject().put(PdfName.Resources, asDictionary);
                }
                this.resources = new PdfResources(asDictionary);
            }
            return this.resources;
        }

        @Override // com.itextpdf.kernel.pdf.colorspace.PdfPattern, com.itextpdf.kernel.pdf.PdfObjectWrapper
        public void flush() {
            this.resources = null;
            super.flush();
        }
    }

    public static class Shading extends PdfPattern {
        public Shading(PdfDictionary pdfDictionary) {
            super(pdfDictionary);
        }

        public Shading(PdfShading pdfShading) {
            super(new PdfDictionary());
            getPdfObject().put(PdfName.Type, PdfName.Pattern);
            getPdfObject().put(PdfName.PatternType, new PdfNumber(2));
            getPdfObject().put(PdfName.Shading, pdfShading.getPdfObject());
        }

        public PdfDictionary getShading() {
            return (PdfDictionary) getPdfObject().get(PdfName.Shading);
        }

        public void setShading(PdfShading pdfShading) {
            getPdfObject().put(PdfName.Shading, pdfShading.getPdfObject());
            setModified();
        }

        public void setShading(PdfDictionary pdfDictionary) {
            getPdfObject().put(PdfName.Shading, pdfDictionary);
            setModified();
        }
    }
}
