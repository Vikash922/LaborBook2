package com.itextpdf.kernel.pdf.colorspace;

import com.itextpdf.kernel.exceptions.KernelExceptionMessageConstant;
import com.itextpdf.kernel.exceptions.PdfException;
import com.itextpdf.kernel.pdf.PdfArray;
import com.itextpdf.kernel.pdf.PdfDictionary;
import com.itextpdf.kernel.pdf.PdfName;
import com.itextpdf.kernel.pdf.PdfNumber;
import com.itextpdf.kernel.pdf.PdfObject;
import com.itextpdf.kernel.pdf.PdfString;
import com.itextpdf.kernel.pdf.function.IPdfFunction;
import com.itextpdf.kernel.pdf.function.PdfFunction;
import com.itextpdf.kernel.pdf.function.PdfFunctionFactory;
import java.util.Arrays;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public abstract class PdfSpecialCs extends PdfColorSpace {
    @Override // com.itextpdf.kernel.pdf.PdfObjectWrapper
    protected boolean isWrappedObjectMustBeIndirect() {
        return true;
    }

    protected PdfSpecialCs(PdfArray pdfArray) {
        super(pdfArray);
    }

    @Override // com.itextpdf.kernel.pdf.PdfObjectWrapper
    public void flush() {
        super.flush();
    }

    public static class Indexed extends PdfSpecialCs {
        @Override // com.itextpdf.kernel.pdf.colorspace.PdfColorSpace
        public int getNumberOfComponents() {
            return 1;
        }

        public Indexed(PdfArray pdfArray) {
            super(pdfArray);
        }

        public Indexed(PdfObject pdfObject, int i, PdfString pdfString) {
            this(getIndexedCsArray(pdfObject, i, pdfString));
        }

        public PdfColorSpace getBaseCs() {
            return makeColorSpace(((PdfArray) getPdfObject()).get(1));
        }

        private static PdfArray getIndexedCsArray(PdfObject pdfObject, int i, PdfString pdfString) {
            PdfArray pdfArray = new PdfArray();
            pdfArray.add(PdfName.Indexed);
            pdfArray.add(pdfObject);
            pdfArray.add(new PdfNumber(i));
            pdfArray.add(pdfString.setHexWriting(true));
            return pdfArray;
        }
    }

    public static class Separation extends PdfSpecialCs {
        @Override // com.itextpdf.kernel.pdf.colorspace.PdfColorSpace
        public int getNumberOfComponents() {
            return 1;
        }

        public Separation(PdfArray pdfArray) {
            super(pdfArray);
        }

        public Separation(PdfName pdfName, PdfObject pdfObject, PdfObject pdfObject2) {
            this(getSeparationCsArray(pdfName, pdfObject, pdfObject2));
        }

        @Deprecated
        public Separation(String str, PdfColorSpace pdfColorSpace, PdfFunction pdfFunction) {
            this(new PdfName(str), pdfColorSpace.getPdfObject(), pdfFunction.getPdfObject());
            if (!pdfFunction.checkCompatibilityWithColorSpace(pdfColorSpace)) {
                throw new PdfException(KernelExceptionMessageConstant.FUNCTION_IS_NOT_COMPATIBLE_WITH_COLOR_SPACE, this);
            }
        }

        public Separation(String str, PdfColorSpace pdfColorSpace, IPdfFunction iPdfFunction) {
            this(new PdfName(str), pdfColorSpace.getPdfObject(), iPdfFunction.getAsPdfObject());
            if (!iPdfFunction.checkCompatibilityWithColorSpace(pdfColorSpace)) {
                throw new PdfException(KernelExceptionMessageConstant.FUNCTION_IS_NOT_COMPATIBLE_WITH_COLOR_SPACE, this);
            }
        }

        public PdfColorSpace getBaseCs() {
            return makeColorSpace(((PdfArray) getPdfObject()).get(2));
        }

        public PdfName getName() {
            return ((PdfArray) getPdfObject()).getAsName(1);
        }

        public IPdfFunction getTintTransformation() {
            return PdfFunctionFactory.create(((PdfArray) getPdfObject()).get(3));
        }

        private static PdfArray getSeparationCsArray(PdfName pdfName, PdfObject pdfObject, PdfObject pdfObject2) {
            PdfArray pdfArray = new PdfArray();
            pdfArray.add(PdfName.Separation);
            pdfArray.add(pdfName);
            pdfArray.add(pdfObject);
            pdfArray.add(pdfObject2);
            return pdfArray;
        }
    }

    public static class DeviceN extends PdfSpecialCs {
        protected int numOfComponents;

        public DeviceN(PdfArray pdfArray) {
            super(pdfArray);
            this.numOfComponents = 0;
            this.numOfComponents = pdfArray.getAsArray(1).size();
        }

        public DeviceN(PdfArray pdfArray, PdfObject pdfObject, PdfObject pdfObject2) {
            this(getDeviceNCsArray(pdfArray, pdfObject, pdfObject2));
        }

        @Deprecated
        public DeviceN(List<String> list, PdfColorSpace pdfColorSpace, PdfFunction pdfFunction) {
            this(new PdfArray(list, true), pdfColorSpace.getPdfObject(), pdfFunction.getPdfObject());
            if (pdfFunction.getInputSize() != this.numOfComponents || pdfFunction.getOutputSize() != pdfColorSpace.getNumberOfComponents()) {
                throw new PdfException(KernelExceptionMessageConstant.FUNCTION_IS_NOT_COMPATIBLE_WITH_COLOR_SPACE, this);
            }
        }

        public DeviceN(List<String> list, PdfColorSpace pdfColorSpace, IPdfFunction iPdfFunction) {
            this(new PdfArray(list, true), pdfColorSpace.getPdfObject(), iPdfFunction.getAsPdfObject());
            if (iPdfFunction.getInputSize() != this.numOfComponents || iPdfFunction.getOutputSize() != pdfColorSpace.getNumberOfComponents()) {
                throw new PdfException(KernelExceptionMessageConstant.FUNCTION_IS_NOT_COMPATIBLE_WITH_COLOR_SPACE, this);
            }
        }

        @Override // com.itextpdf.kernel.pdf.colorspace.PdfColorSpace
        public int getNumberOfComponents() {
            return this.numOfComponents;
        }

        public PdfColorSpace getBaseCs() {
            return makeColorSpace(((PdfArray) getPdfObject()).get(2));
        }

        public PdfArray getNames() {
            return ((PdfArray) getPdfObject()).getAsArray(1);
        }

        protected static PdfArray getDeviceNCsArray(PdfArray pdfArray, PdfObject pdfObject, PdfObject pdfObject2) {
            PdfArray pdfArray2 = new PdfArray();
            pdfArray2.add(PdfName.DeviceN);
            pdfArray2.add(pdfArray);
            pdfArray2.add(pdfObject);
            pdfArray2.add(pdfObject2);
            return pdfArray2;
        }
    }

    public static class NChannel extends DeviceN {
        public NChannel(PdfArray pdfArray) {
            super(pdfArray);
        }

        public NChannel(PdfArray pdfArray, PdfObject pdfObject, PdfObject pdfObject2, PdfDictionary pdfDictionary) {
            this(getNChannelCsArray(pdfArray, pdfObject, pdfObject2, pdfDictionary));
        }

        @Deprecated
        public NChannel(List<String> list, PdfColorSpace pdfColorSpace, PdfFunction pdfFunction, PdfDictionary pdfDictionary) {
            this(new PdfArray(list, true), pdfColorSpace.getPdfObject(), pdfFunction.getPdfObject(), pdfDictionary);
            if (pdfFunction.getInputSize() != 1 || pdfFunction.getOutputSize() != pdfColorSpace.getNumberOfComponents()) {
                throw new PdfException(KernelExceptionMessageConstant.FUNCTION_IS_NOT_COMPATIBLE_WITH_COLOR_SPACE, this);
            }
        }

        public NChannel(List<String> list, PdfColorSpace pdfColorSpace, IPdfFunction iPdfFunction, PdfDictionary pdfDictionary) {
            this(new PdfArray(list, true), pdfColorSpace.getPdfObject(), iPdfFunction.getAsPdfObject(), pdfDictionary);
            if (iPdfFunction.getInputSize() != 1 || iPdfFunction.getOutputSize() != pdfColorSpace.getNumberOfComponents()) {
                throw new PdfException(KernelExceptionMessageConstant.FUNCTION_IS_NOT_COMPATIBLE_WITH_COLOR_SPACE, this);
            }
        }

        protected static PdfArray getNChannelCsArray(PdfArray pdfArray, PdfObject pdfObject, PdfObject pdfObject2, PdfDictionary pdfDictionary) {
            PdfArray deviceNCsArray = getDeviceNCsArray(pdfArray, pdfObject, pdfObject2);
            deviceNCsArray.add(pdfDictionary);
            return deviceNCsArray;
        }
    }

    public static class Pattern extends PdfColorSpace {
        @Override // com.itextpdf.kernel.pdf.colorspace.PdfColorSpace
        public int getNumberOfComponents() {
            return 0;
        }

        @Override // com.itextpdf.kernel.pdf.PdfObjectWrapper
        protected boolean isWrappedObjectMustBeIndirect() {
            return false;
        }

        public Pattern() {
            super(PdfName.Pattern);
        }

        protected Pattern(PdfObject pdfObject) {
            super(pdfObject);
        }
    }

    public static class UncoloredTilingPattern extends Pattern {
        @Override // com.itextpdf.kernel.pdf.colorspace.PdfSpecialCs.Pattern, com.itextpdf.kernel.pdf.PdfObjectWrapper
        protected boolean isWrappedObjectMustBeIndirect() {
            return true;
        }

        public UncoloredTilingPattern(PdfArray pdfArray) {
            super(pdfArray);
        }

        public UncoloredTilingPattern(PdfColorSpace pdfColorSpace) {
            super(new PdfArray((List<? extends PdfObject>) Arrays.asList(PdfName.Pattern, pdfColorSpace.getPdfObject())));
        }

        @Override // com.itextpdf.kernel.pdf.PdfObjectWrapper
        public void flush() {
            super.flush();
        }

        public PdfColorSpace getUnderlyingColorSpace() {
            return PdfColorSpace.makeColorSpace(((PdfArray) getPdfObject()).get(1));
        }

        @Override // com.itextpdf.kernel.pdf.colorspace.PdfSpecialCs.Pattern, com.itextpdf.kernel.pdf.colorspace.PdfColorSpace
        public int getNumberOfComponents() {
            return PdfColorSpace.makeColorSpace(((PdfArray) getPdfObject()).get(1)).getNumberOfComponents();
        }
    }
}
