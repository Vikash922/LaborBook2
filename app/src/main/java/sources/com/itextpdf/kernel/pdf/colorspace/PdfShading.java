package com.itextpdf.kernel.pdf.colorspace;

import com.itextpdf.kernel.exceptions.KernelExceptionMessageConstant;
import com.itextpdf.kernel.exceptions.PdfException;
import com.itextpdf.kernel.pdf.PdfArray;
import com.itextpdf.kernel.pdf.PdfDictionary;
import com.itextpdf.kernel.pdf.PdfName;
import com.itextpdf.kernel.pdf.PdfNumber;
import com.itextpdf.kernel.pdf.PdfObject;
import com.itextpdf.kernel.pdf.PdfObjectWrapper;
import com.itextpdf.kernel.pdf.PdfStream;
import com.itextpdf.kernel.pdf.colorspace.PdfSpecialCs;
import com.itextpdf.kernel.pdf.function.PdfFunction;

/* JADX INFO: loaded from: classes6.dex */
public abstract class PdfShading extends PdfObjectWrapper<PdfDictionary> {
    @Override // com.itextpdf.kernel.pdf.PdfObjectWrapper
    protected boolean isWrappedObjectMustBeIndirect() {
        return true;
    }

    static final class ShadingType {
        public static final int AXIAL = 2;
        public static final int COONS_PATCH_MESH = 6;
        public static final int FREE_FORM_GOURAUD_SHADED_TRIANGLE_MESH = 4;
        public static final int FUNCTION_BASED = 1;
        public static final int LATTICE_FORM_GOURAUD_SHADED_TRIANGLE_MESH = 5;
        public static final int RADIAL = 3;
        public static final int TENSOR_PRODUCT_PATCH_MESH = 7;

        private ShadingType() {
        }
    }

    public static PdfShading makeShading(PdfDictionary pdfDictionary) {
        if (!pdfDictionary.containsKey(PdfName.ShadingType)) {
            throw new PdfException(KernelExceptionMessageConstant.SHADING_TYPE_NOT_FOUND);
        }
        if (!pdfDictionary.containsKey(PdfName.ColorSpace)) {
            throw new PdfException(KernelExceptionMessageConstant.COLOR_SPACE_NOT_FOUND);
        }
        switch (pdfDictionary.getAsNumber(PdfName.ShadingType).intValue()) {
            case 1:
                return new FunctionBased(pdfDictionary);
            case 2:
                return new Axial(pdfDictionary);
            case 3:
                return new Radial(pdfDictionary);
            case 4:
                if (!pdfDictionary.isStream()) {
                    throw new PdfException(KernelExceptionMessageConstant.UNEXPECTED_SHADING_TYPE);
                }
                return new FreeFormGouraudShadedTriangleMesh((PdfStream) pdfDictionary);
            case 5:
                if (!pdfDictionary.isStream()) {
                    throw new PdfException(KernelExceptionMessageConstant.UNEXPECTED_SHADING_TYPE);
                }
                return new LatticeFormGouraudShadedTriangleMesh((PdfStream) pdfDictionary);
            case 6:
                if (!pdfDictionary.isStream()) {
                    throw new PdfException(KernelExceptionMessageConstant.UNEXPECTED_SHADING_TYPE);
                }
                return new CoonsPatchMesh((PdfStream) pdfDictionary);
            case 7:
                if (!pdfDictionary.isStream()) {
                    throw new PdfException(KernelExceptionMessageConstant.UNEXPECTED_SHADING_TYPE);
                }
                return new TensorProductPatchMesh((PdfStream) pdfDictionary);
            default:
                throw new PdfException(KernelExceptionMessageConstant.UNEXPECTED_SHADING_TYPE);
        }
    }

    protected PdfShading(PdfDictionary pdfDictionary) {
        super(pdfDictionary);
    }

    protected PdfShading(PdfDictionary pdfDictionary, int i, PdfColorSpace pdfColorSpace) {
        super(pdfDictionary);
        getPdfObject().put(PdfName.ShadingType, new PdfNumber(i));
        if (pdfColorSpace instanceof PdfSpecialCs.Pattern) {
            throw new IllegalArgumentException("colorSpace");
        }
        getPdfObject().put(PdfName.ColorSpace, pdfColorSpace.getPdfObject());
    }

    public int getShadingType() {
        return getPdfObject().getAsInt(PdfName.ShadingType).intValue();
    }

    public PdfObject getColorSpace() {
        return getPdfObject().get(PdfName.ColorSpace);
    }

    public PdfObject getFunction() {
        return getPdfObject().get(PdfName.Function);
    }

    public void setFunction(PdfFunction pdfFunction) {
        getPdfObject().put(PdfName.Function, pdfFunction.getPdfObject());
        setModified();
    }

    public void setFunction(PdfFunction[] pdfFunctionArr) {
        PdfArray pdfArray = new PdfArray();
        for (PdfFunction pdfFunction : pdfFunctionArr) {
            pdfArray.add(pdfFunction.getPdfObject());
        }
        getPdfObject().put(PdfName.Function, pdfArray);
        setModified();
    }

    @Override // com.itextpdf.kernel.pdf.PdfObjectWrapper
    public void flush() {
        super.flush();
    }

    public static class FunctionBased extends PdfShading {
        protected FunctionBased(PdfDictionary pdfDictionary) {
            super(pdfDictionary);
        }

        public FunctionBased(PdfColorSpace pdfColorSpace, PdfFunction pdfFunction) {
            this(pdfColorSpace.getPdfObject(), pdfFunction);
        }

        public FunctionBased(PdfObject pdfObject, PdfFunction pdfFunction) {
            super(new PdfDictionary(), 1, PdfColorSpace.makeColorSpace(pdfObject));
            setFunction(pdfFunction);
        }

        public PdfArray getDomain() {
            return getPdfObject().getAsArray(PdfName.Domain);
        }

        public void setDomain(float f, float f2, float f3, float f4) {
            setDomain(new PdfArray(new float[]{f, f2, f3, f4}));
        }

        public void setDomain(PdfArray pdfArray) {
            getPdfObject().put(PdfName.Domain, pdfArray);
            setModified();
        }

        public PdfArray getMatrix() {
            PdfArray asArray = getPdfObject().getAsArray(PdfName.Matrix);
            if (asArray != null) {
                return asArray;
            }
            PdfArray pdfArray = new PdfArray(new float[]{1.0f, 0.0f, 0.0f, 1.0f, 0.0f, 0.0f});
            setMatrix(pdfArray);
            return pdfArray;
        }

        public void setMatrix(float[] fArr) {
            setMatrix(new PdfArray(fArr));
        }

        public void setMatrix(PdfArray pdfArray) {
            getPdfObject().put(PdfName.Matrix, pdfArray);
            setModified();
        }
    }

    public static class Axial extends PdfShading {
        protected Axial(PdfDictionary pdfDictionary) {
            super(pdfDictionary);
        }

        public Axial(PdfColorSpace pdfColorSpace, float f, float f2, float[] fArr, float f3, float f4, float[] fArr2) {
            super(new PdfDictionary(), 2, pdfColorSpace);
            setCoords(f, f2, f3, f4);
            setFunction(new PdfFunction.Type2(new PdfArray(new float[]{0.0f, 1.0f}), null, new PdfArray(fArr), new PdfArray(fArr2), new PdfNumber(1)));
        }

        public Axial(PdfColorSpace pdfColorSpace, float f, float f2, float[] fArr, float f3, float f4, float[] fArr2, boolean[] zArr) {
            this(pdfColorSpace, f, f2, fArr, f3, f4, fArr2);
            if (zArr == null || zArr.length != 2) {
                throw new IllegalArgumentException("extend");
            }
            setExtend(zArr[0], zArr[1]);
        }

        public Axial(PdfColorSpace pdfColorSpace, PdfArray pdfArray, PdfFunction pdfFunction) {
            this(pdfColorSpace, pdfArray, null, pdfFunction);
        }

        public Axial(PdfColorSpace pdfColorSpace, PdfArray pdfArray, PdfArray pdfArray2, PdfFunction pdfFunction) {
            super(new PdfDictionary(), 2, pdfColorSpace);
            setCoords(pdfArray);
            if (pdfArray2 != null) {
                setDomain(pdfArray2);
            }
            setFunction(pdfFunction);
        }

        public PdfArray getCoords() {
            return getPdfObject().getAsArray(PdfName.Coords);
        }

        public void setCoords(float f, float f2, float f3, float f4) {
            setCoords(new PdfArray(new float[]{f, f2, f3, f4}));
        }

        public void setCoords(PdfArray pdfArray) {
            getPdfObject().put(PdfName.Coords, pdfArray);
            setModified();
        }

        public PdfArray getDomain() {
            PdfArray asArray = getPdfObject().getAsArray(PdfName.Domain);
            if (asArray != null) {
                return asArray;
            }
            PdfArray pdfArray = new PdfArray(new float[]{0.0f, 1.0f});
            setDomain(pdfArray);
            return pdfArray;
        }

        public void setDomain(float f, float f2) {
            setDomain(new PdfArray(new float[]{f, f2}));
        }

        public void setDomain(PdfArray pdfArray) {
            getPdfObject().put(PdfName.Domain, pdfArray);
            setModified();
        }

        public PdfArray getExtend() {
            PdfArray asArray = getPdfObject().getAsArray(PdfName.Extend);
            if (asArray != null) {
                return asArray;
            }
            PdfArray pdfArray = new PdfArray(new boolean[]{false, false});
            setExtend(pdfArray);
            return pdfArray;
        }

        public void setExtend(boolean z, boolean z2) {
            setExtend(new PdfArray(new boolean[]{z, z2}));
        }

        public void setExtend(PdfArray pdfArray) {
            getPdfObject().put(PdfName.Extend, pdfArray);
            setModified();
        }
    }

    public static class Radial extends PdfShading {
        protected Radial(PdfDictionary pdfDictionary) {
            super(pdfDictionary);
        }

        public Radial(PdfColorSpace pdfColorSpace, float f, float f2, float f3, float[] fArr, float f4, float f5, float f6, float[] fArr2) {
            super(new PdfDictionary(), 3, pdfColorSpace);
            setCoords(f, f2, f3, f4, f5, f6);
            setFunction(new PdfFunction.Type2(new PdfArray(new float[]{0.0f, 1.0f}), null, new PdfArray(fArr), new PdfArray(fArr2), new PdfNumber(1)));
        }

        public Radial(PdfColorSpace pdfColorSpace, float f, float f2, float f3, float[] fArr, float f4, float f5, float f6, float[] fArr2, boolean[] zArr) {
            this(pdfColorSpace, f, f2, f3, fArr, f4, f5, f6, fArr2);
            if (zArr == null || zArr.length != 2) {
                throw new IllegalArgumentException("extend");
            }
            setExtend(zArr[0], zArr[1]);
        }

        public Radial(PdfColorSpace pdfColorSpace, PdfArray pdfArray, PdfFunction pdfFunction) {
            super(new PdfDictionary(), 3, pdfColorSpace);
            setCoords(pdfArray);
            setFunction(pdfFunction);
        }

        public PdfArray getCoords() {
            return getPdfObject().getAsArray(PdfName.Coords);
        }

        public void setCoords(float f, float f2, float f3, float f4, float f5, float f6) {
            setCoords(new PdfArray(new float[]{f, f2, f3, f4, f5, f6}));
        }

        public void setCoords(PdfArray pdfArray) {
            getPdfObject().put(PdfName.Coords, pdfArray);
            setModified();
        }

        public PdfArray getDomain() {
            PdfArray asArray = getPdfObject().getAsArray(PdfName.Domain);
            if (asArray != null) {
                return asArray;
            }
            PdfArray pdfArray = new PdfArray(new float[]{0.0f, 1.0f});
            setDomain(pdfArray);
            return pdfArray;
        }

        public void setDomain(float f, float f2) {
            setDomain(new PdfArray(new float[]{f, f2}));
        }

        public void setDomain(PdfArray pdfArray) {
            getPdfObject().put(PdfName.Domain, pdfArray);
            setModified();
        }

        public PdfArray getExtend() {
            PdfArray asArray = getPdfObject().getAsArray(PdfName.Extend);
            if (asArray != null) {
                return asArray;
            }
            PdfArray pdfArray = new PdfArray(new boolean[]{false, false});
            setExtend(pdfArray);
            return pdfArray;
        }

        public void setExtend(boolean z, boolean z2) {
            setExtend(new PdfArray(new boolean[]{z, z2}));
        }

        public void setExtend(PdfArray pdfArray) {
            getPdfObject().put(PdfName.Extend, pdfArray);
            setModified();
        }
    }

    public static class FreeFormGouraudShadedTriangleMesh extends PdfShading {
        protected FreeFormGouraudShadedTriangleMesh(PdfStream pdfStream) {
            super(pdfStream);
        }

        public FreeFormGouraudShadedTriangleMesh(PdfColorSpace pdfColorSpace, int i, int i2, int i3, float[] fArr) {
            this(pdfColorSpace, i, i2, i3, new PdfArray(fArr));
        }

        public FreeFormGouraudShadedTriangleMesh(PdfColorSpace pdfColorSpace, int i, int i2, int i3, PdfArray pdfArray) {
            super(new PdfStream(), 4, pdfColorSpace);
            setBitsPerCoordinate(i);
            setBitsPerComponent(i2);
            setBitsPerFlag(i3);
            setDecode(pdfArray);
        }

        public int getBitsPerCoordinate() {
            return getPdfObject().getAsInt(PdfName.BitsPerCoordinate).intValue();
        }

        public void setBitsPerCoordinate(int i) {
            getPdfObject().put(PdfName.BitsPerCoordinate, new PdfNumber(i));
            setModified();
        }

        public int getBitsPerComponent() {
            return getPdfObject().getAsInt(PdfName.BitsPerComponent).intValue();
        }

        public void setBitsPerComponent(int i) {
            getPdfObject().put(PdfName.BitsPerComponent, new PdfNumber(i));
            setModified();
        }

        public int getBitsPerFlag() {
            return getPdfObject().getAsInt(PdfName.BitsPerFlag).intValue();
        }

        public void setBitsPerFlag(int i) {
            getPdfObject().put(PdfName.BitsPerFlag, new PdfNumber(i));
            setModified();
        }

        public PdfArray getDecode() {
            return getPdfObject().getAsArray(PdfName.Decode);
        }

        public void setDecode(float[] fArr) {
            setDecode(new PdfArray(fArr));
        }

        public void setDecode(PdfArray pdfArray) {
            getPdfObject().put(PdfName.Decode, pdfArray);
            setModified();
        }
    }

    public static class LatticeFormGouraudShadedTriangleMesh extends PdfShading {
        protected LatticeFormGouraudShadedTriangleMesh(PdfStream pdfStream) {
            super(pdfStream);
        }

        public LatticeFormGouraudShadedTriangleMesh(PdfColorSpace pdfColorSpace, int i, int i2, int i3, float[] fArr) {
            this(pdfColorSpace, i, i2, i3, new PdfArray(fArr));
        }

        public LatticeFormGouraudShadedTriangleMesh(PdfColorSpace pdfColorSpace, int i, int i2, int i3, PdfArray pdfArray) {
            super(new PdfStream(), 5, pdfColorSpace);
            setBitsPerCoordinate(i);
            setBitsPerComponent(i2);
            setVerticesPerRow(i3);
            setDecode(pdfArray);
        }

        public int getBitsPerCoordinate() {
            return getPdfObject().getAsInt(PdfName.BitsPerCoordinate).intValue();
        }

        public void setBitsPerCoordinate(int i) {
            getPdfObject().put(PdfName.BitsPerCoordinate, new PdfNumber(i));
            setModified();
        }

        public int getBitsPerComponent() {
            return getPdfObject().getAsInt(PdfName.BitsPerComponent).intValue();
        }

        public void setBitsPerComponent(int i) {
            getPdfObject().put(PdfName.BitsPerComponent, new PdfNumber(i));
            setModified();
        }

        public int getVerticesPerRow() {
            return getPdfObject().getAsInt(PdfName.VerticesPerRow).intValue();
        }

        public void setVerticesPerRow(int i) {
            getPdfObject().put(PdfName.VerticesPerRow, new PdfNumber(i));
            setModified();
        }

        public PdfArray getDecode() {
            return getPdfObject().getAsArray(PdfName.Decode);
        }

        public void setDecode(float[] fArr) {
            setDecode(new PdfArray(fArr));
        }

        public void setDecode(PdfArray pdfArray) {
            getPdfObject().put(PdfName.Decode, pdfArray);
            setModified();
        }
    }

    public static class CoonsPatchMesh extends PdfShading {
        protected CoonsPatchMesh(PdfStream pdfStream) {
            super(pdfStream);
        }

        public CoonsPatchMesh(PdfColorSpace pdfColorSpace, int i, int i2, int i3, float[] fArr) {
            this(pdfColorSpace, i, i2, i3, new PdfArray(fArr));
        }

        public CoonsPatchMesh(PdfColorSpace pdfColorSpace, int i, int i2, int i3, PdfArray pdfArray) {
            super(new PdfStream(), 6, pdfColorSpace);
            setBitsPerCoordinate(i);
            setBitsPerComponent(i2);
            setBitsPerFlag(i3);
            setDecode(pdfArray);
        }

        public int getBitsPerCoordinate() {
            return getPdfObject().getAsInt(PdfName.BitsPerCoordinate).intValue();
        }

        public void setBitsPerCoordinate(int i) {
            getPdfObject().put(PdfName.BitsPerCoordinate, new PdfNumber(i));
            setModified();
        }

        public int getBitsPerComponent() {
            return getPdfObject().getAsInt(PdfName.BitsPerComponent).intValue();
        }

        public void setBitsPerComponent(int i) {
            getPdfObject().put(PdfName.BitsPerComponent, new PdfNumber(i));
            setModified();
        }

        public int getBitsPerFlag() {
            return getPdfObject().getAsInt(PdfName.BitsPerFlag).intValue();
        }

        public void setBitsPerFlag(int i) {
            getPdfObject().put(PdfName.BitsPerFlag, new PdfNumber(i));
            setModified();
        }

        public PdfArray getDecode() {
            return getPdfObject().getAsArray(PdfName.Decode);
        }

        public void setDecode(float[] fArr) {
            setDecode(new PdfArray(fArr));
        }

        public void setDecode(PdfArray pdfArray) {
            getPdfObject().put(PdfName.Decode, pdfArray);
            setModified();
        }
    }

    public static class TensorProductPatchMesh extends PdfShading {
        protected TensorProductPatchMesh(PdfStream pdfStream) {
            super(pdfStream);
        }

        public TensorProductPatchMesh(PdfColorSpace pdfColorSpace, int i, int i2, int i3, float[] fArr) {
            this(pdfColorSpace, i, i2, i3, new PdfArray(fArr));
        }

        public TensorProductPatchMesh(PdfColorSpace pdfColorSpace, int i, int i2, int i3, PdfArray pdfArray) {
            super(new PdfStream(), 7, pdfColorSpace);
            setBitsPerCoordinate(i);
            setBitsPerComponent(i2);
            setBitsPerFlag(i3);
            setDecode(pdfArray);
        }

        public int getBitsPerCoordinate() {
            return getPdfObject().getAsInt(PdfName.BitsPerCoordinate).intValue();
        }

        public void setBitsPerCoordinate(int i) {
            getPdfObject().put(PdfName.BitsPerCoordinate, new PdfNumber(i));
            setModified();
        }

        public int getBitsPerComponent() {
            return getPdfObject().getAsInt(PdfName.BitsPerComponent).intValue();
        }

        public void setBitsPerComponent(int i) {
            getPdfObject().put(PdfName.BitsPerComponent, new PdfNumber(i));
            setModified();
        }

        public int getBitsPerFlag() {
            return getPdfObject().getAsInt(PdfName.BitsPerFlag).intValue();
        }

        public void setBitsPerFlag(int i) {
            getPdfObject().put(PdfName.BitsPerFlag, new PdfNumber(i));
            setModified();
        }

        public PdfArray getDecode() {
            return getPdfObject().getAsArray(PdfName.Decode);
        }

        public void setDecode(float[] fArr) {
            setDecode(new PdfArray(fArr));
        }

        public void setDecode(PdfArray pdfArray) {
            getPdfObject().put(PdfName.Decode, pdfArray);
            setModified();
        }
    }
}
