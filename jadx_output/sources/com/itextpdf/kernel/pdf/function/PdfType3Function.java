package com.itextpdf.kernel.pdf.function;

import com.itextpdf.kernel.exceptions.KernelExceptionMessageConstant;
import com.itextpdf.kernel.exceptions.PdfException;
import com.itextpdf.kernel.pdf.PdfArray;
import com.itextpdf.kernel.pdf.PdfDictionary;
import com.itextpdf.kernel.pdf.PdfName;
import com.itextpdf.kernel.pdf.PdfObject;
import com.itextpdf.kernel.pdf.colorspace.PdfColorSpace;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public class PdfType3Function extends AbstractPdfFunction<PdfDictionary> {
    private static final IPdfFunctionFactory DEFAULT_FUNCTION_FACTORY = new IPdfFunctionFactory() { // from class: com.itextpdf.kernel.pdf.function.PdfType3Function$$ExternalSyntheticLambda0
        @Override // com.itextpdf.kernel.pdf.function.IPdfFunctionFactory
        public final IPdfFunction create(PdfObject pdfObject) {
            return PdfFunctionFactory.create(pdfObject);
        }
    };
    private double[] bounds;
    private double[] encode;
    private final IPdfFunctionFactory functionFactory;
    private List<IPdfFunction> functions;

    private static double mapValueFromActualRangeToExpected(double d, double d2, double d3, double d4, double d5) {
        double d6 = d3 - d2;
        if (d6 == 0.0d) {
            return d4;
        }
        return d4 + (((d5 - d4) / d6) * (d - d2));
    }

    @Override // com.itextpdf.kernel.pdf.function.AbstractPdfFunction, com.itextpdf.kernel.pdf.function.IPdfFunction
    public boolean checkCompatibilityWithColorSpace(PdfColorSpace pdfColorSpace) {
        return false;
    }

    @Override // com.itextpdf.kernel.pdf.PdfObjectWrapper
    protected boolean isWrappedObjectMustBeIndirect() {
        return false;
    }

    public PdfType3Function(PdfDictionary pdfDictionary) {
        this(pdfDictionary, DEFAULT_FUNCTION_FACTORY);
    }

    public PdfType3Function(double[] dArr, double[] dArr2, List<AbstractPdfFunction<? extends PdfDictionary>> list, double[] dArr3, double[] dArr4) {
        super(new PdfDictionary(), 3, dArr, dArr2);
        this.functionFactory = DEFAULT_FUNCTION_FACTORY;
        PdfArray pdfArray = new PdfArray();
        Iterator<AbstractPdfFunction<? extends PdfDictionary>> it = list.iterator();
        while (it.hasNext()) {
            pdfArray.add(it.next().getPdfObject().getIndirectReference());
        }
        ((PdfDictionary) super.getPdfObject()).put(PdfName.Functions, pdfArray);
        ((PdfDictionary) super.getPdfObject()).put(PdfName.Bounds, new PdfArray(dArr3));
        ((PdfDictionary) super.getPdfObject()).put(PdfName.Encode, new PdfArray(dArr4));
    }

    PdfType3Function(PdfDictionary pdfDictionary, IPdfFunctionFactory iPdfFunctionFactory) {
        super(pdfDictionary);
        this.functionFactory = iPdfFunctionFactory;
        this.functions = Collections.unmodifiableList(checkAndGetFunctions(pdfDictionary.getAsArray(PdfName.Functions)));
        if (super.getDomain().length < 2) {
            throw new PdfException(KernelExceptionMessageConstant.INVALID_TYPE_3_FUNCTION_DOMAIN);
        }
        this.bounds = checkAndGetBounds(pdfDictionary.getAsArray(PdfName.Bounds));
        this.encode = checkAndGetEncode(pdfDictionary.getAsArray(PdfName.Encode));
    }

    public Collection<IPdfFunction> getFunctions() {
        return this.functions;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void setFunctions(Iterable<AbstractPdfFunction<? extends PdfDictionary>> iterable) {
        PdfArray pdfArray = new PdfArray();
        Iterator<AbstractPdfFunction<? extends PdfDictionary>> it = iterable.iterator();
        while (it.hasNext()) {
            pdfArray.add(it.next().getPdfObject().getIndirectReference());
        }
        ((PdfDictionary) getPdfObject()).put(PdfName.Functions, pdfArray);
    }

    public double[] getBounds() {
        return this.bounds;
    }

    public void setBounds(double[] dArr) {
        this.bounds = Arrays.copyOf(dArr, dArr.length);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public double[] getEncode() {
        return ((PdfDictionary) getPdfObject()).getAsArray(PdfName.Encode).toDoubleArray();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void setEncode(double[] dArr) {
        ((PdfDictionary) getPdfObject()).put(PdfName.Encode, new PdfArray(dArr));
    }

    @Override // com.itextpdf.kernel.pdf.function.AbstractPdfFunction, com.itextpdf.kernel.pdf.function.IPdfFunction
    public int getOutputSize() {
        return getRange() == null ? this.functions.get(0).getOutputSize() : getRange().length / 2;
    }

    @Override // com.itextpdf.kernel.pdf.function.IPdfFunction
    public double[] calculate(double[] dArr) {
        if (dArr == null || dArr.length != 1) {
            throw new PdfException(KernelExceptionMessageConstant.INVALID_INPUT_FOR_TYPE_3_FUNCTION);
        }
        double d = clipInput(dArr)[0];
        int iCalculateSubdomain = calculateSubdomain(d);
        double[] subdomainBorders = getSubdomainBorders(iCalculateSubdomain);
        double d2 = subdomainBorders[0];
        double d3 = subdomainBorders[1];
        double[] dArr2 = this.encode;
        int i = iCalculateSubdomain * 2;
        return clipOutput(this.functions.get(iCalculateSubdomain).calculate(new double[]{mapValueFromActualRangeToExpected(d, d2, d3, dArr2[i], dArr2[i + 1])}));
    }

    private int calculateSubdomain(double d) {
        double[] dArr = this.bounds;
        int i = 0;
        if (dArr.length > 0) {
            if (areThreeDoubleEqual(dArr[0], getDomain()[0], d)) {
                return 0;
            }
            double[] dArr2 = this.bounds;
            if (areThreeDoubleEqual(dArr2[dArr2.length - 1], getDomain()[1], d)) {
                return this.bounds.length;
            }
        }
        while (true) {
            double[] dArr3 = this.bounds;
            if (i >= dArr3.length) {
                return dArr3.length;
            }
            if (d < dArr3[i]) {
                return i;
            }
            i++;
        }
    }

    private double[] getSubdomainBorders(int i) {
        double[] dArr = this.bounds;
        if (dArr.length == 0) {
            return getDomain();
        }
        if (i == 0) {
            return new double[]{getDomain()[0], this.bounds[0]};
        }
        if (i == dArr.length) {
            return new double[]{dArr[dArr.length - 1], getDomain()[1]};
        }
        return new double[]{dArr[i - 1], dArr[i]};
    }

    private List<IPdfFunction> checkAndGetFunctions(PdfArray pdfArray) {
        if (pdfArray == null || pdfArray.size() == 0) {
            throw new PdfException(KernelExceptionMessageConstant.INVALID_TYPE_3_FUNCTION_NULL_FUNCTIONS);
        }
        Integer numValueOf = getRange() != null ? Integer.valueOf(getOutputSize()) : null;
        ArrayList arrayList = new ArrayList();
        for (PdfObject pdfObject : pdfArray) {
            if (pdfObject instanceof PdfDictionary) {
                IPdfFunction iPdfFunctionCreate = this.functionFactory.create((PdfDictionary) pdfObject);
                if (numValueOf == null) {
                    numValueOf = Integer.valueOf(iPdfFunctionCreate.getOutputSize());
                }
                if (numValueOf.intValue() != iPdfFunctionCreate.getOutputSize()) {
                    throw new PdfException(KernelExceptionMessageConstant.INVALID_TYPE_3_FUNCTION_FUNCTIONS_OUTPUT);
                }
                if (iPdfFunctionCreate.getInputSize() != 1) {
                    throw new PdfException(KernelExceptionMessageConstant.INVALID_TYPE_3_FUNCTION_FUNCTIONS_INPUT);
                }
                arrayList.add(iPdfFunctionCreate);
            }
        }
        return arrayList;
    }

    private double[] checkAndGetBounds(PdfArray pdfArray) {
        if (pdfArray == null || pdfArray.size() != this.functions.size() - 1) {
            throw new PdfException(KernelExceptionMessageConstant.INVALID_TYPE_3_FUNCTION_NULL_BOUNDS);
        }
        double[] doubleArray = pdfArray.toDoubleArray();
        int i = 0;
        boolean z = false;
        while (i < doubleArray.length) {
            z = z | (i != 0 ? doubleArray[i] <= getDomain()[0] : doubleArray[i] < getDomain()[0]) | (i != doubleArray.length - 1 ? getDomain()[1] <= doubleArray[i] : getDomain()[1] < doubleArray[i]) | (i != 0 && doubleArray[i] <= doubleArray[i + (-1)]);
            i++;
        }
        if (z) {
            throw new PdfException(KernelExceptionMessageConstant.INVALID_TYPE_3_FUNCTION_BOUNDS);
        }
        return doubleArray;
    }

    private double[] checkAndGetEncode(PdfArray pdfArray) {
        if (pdfArray == null || pdfArray.size() < this.functions.size() * 2) {
            throw new PdfException(KernelExceptionMessageConstant.INVALID_TYPE_3_FUNCTION_NULL_ENCODE);
        }
        return pdfArray.toDoubleArray();
    }

    private static boolean areThreeDoubleEqual(double d, double d2, double d3) {
        return Double.compare(d, d2) == 0 && Double.compare(d2, d3) == 0;
    }
}
