package com.itextpdf.kernel.pdf.function;

import com.itextpdf.kernel.pdf.PdfArray;
import com.itextpdf.kernel.pdf.PdfDictionary;
import com.itextpdf.kernel.pdf.PdfName;
import com.itextpdf.kernel.pdf.PdfNumber;
import com.itextpdf.kernel.pdf.PdfObject;
import com.itextpdf.kernel.pdf.PdfObjectWrapper;
import com.itextpdf.kernel.pdf.PdfStream;
import com.itextpdf.kernel.pdf.colorspace.PdfColorSpace;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
@Deprecated
public class PdfFunction extends PdfObjectWrapper<PdfObject> {
    public boolean checkCompatibilityWithColorSpace(PdfColorSpace pdfColorSpace) {
        return true;
    }

    @Override // com.itextpdf.kernel.pdf.PdfObjectWrapper
    protected boolean isWrappedObjectMustBeIndirect() {
        return true;
    }

    public PdfFunction(PdfObject pdfObject) {
        super(pdfObject);
    }

    public int getType() {
        return ((PdfDictionary) getPdfObject()).getAsInt(PdfName.FunctionType).intValue();
    }

    public int getInputSize() {
        return ((PdfDictionary) getPdfObject()).getAsArray(PdfName.Domain).size() / 2;
    }

    public int getOutputSize() {
        PdfArray asArray = ((PdfDictionary) getPdfObject()).getAsArray(PdfName.Range);
        if (asArray == null) {
            return 0;
        }
        return asArray.size() / 2;
    }

    @Deprecated
    public static class Type0 extends PdfFunction {
        public Type0(PdfStream pdfStream) {
            super(pdfStream);
        }

        public Type0(PdfArray pdfArray, PdfArray pdfArray2, PdfArray pdfArray3, PdfNumber pdfNumber, byte[] bArr) {
            this(pdfArray, pdfArray2, pdfArray3, pdfNumber, null, null, null, bArr);
        }

        public Type0(PdfArray pdfArray, PdfArray pdfArray2, PdfArray pdfArray3, PdfNumber pdfNumber, PdfNumber pdfNumber2, PdfArray pdfArray4, PdfArray pdfArray5, byte[] bArr) {
            this(makeType0(pdfArray, pdfArray2, pdfArray3, pdfNumber, pdfNumber2, pdfArray4, pdfArray5, bArr));
        }

        @Override // com.itextpdf.kernel.pdf.function.PdfFunction
        public boolean checkCompatibilityWithColorSpace(PdfColorSpace pdfColorSpace) {
            return getInputSize() == 1 && getOutputSize() == pdfColorSpace.getNumberOfComponents();
        }

        private static PdfStream makeType0(PdfArray pdfArray, PdfArray pdfArray2, PdfArray pdfArray3, PdfNumber pdfNumber, PdfNumber pdfNumber2, PdfArray pdfArray4, PdfArray pdfArray5, byte[] bArr) {
            PdfStream pdfStream = new PdfStream(bArr);
            pdfStream.put(PdfName.FunctionType, new PdfNumber(0));
            pdfStream.put(PdfName.Domain, pdfArray);
            pdfStream.put(PdfName.Range, pdfArray2);
            pdfStream.put(PdfName.Size, pdfArray3);
            pdfStream.put(PdfName.BitsPerSample, pdfNumber);
            if (pdfNumber2 != null) {
                pdfStream.put(PdfName.Order, pdfNumber2);
            }
            if (pdfArray4 != null) {
                pdfStream.put(PdfName.Encode, pdfArray4);
            }
            if (pdfArray5 != null) {
                pdfStream.put(PdfName.Decode, pdfArray5);
            }
            return pdfStream;
        }
    }

    @Deprecated
    public static class Type2 extends PdfFunction {
        public Type2(PdfDictionary pdfDictionary) {
            super(pdfDictionary);
        }

        public Type2(PdfArray pdfArray, PdfArray pdfArray2, PdfNumber pdfNumber) {
            this(pdfArray, pdfArray2, null, null, pdfNumber);
        }

        public Type2(PdfArray pdfArray, PdfArray pdfArray2, PdfArray pdfArray3, PdfArray pdfArray4, PdfNumber pdfNumber) {
            this(makeType2(pdfArray, pdfArray2, pdfArray3, pdfArray4, pdfNumber));
        }

        @Override // com.itextpdf.kernel.pdf.function.PdfFunction
        public int getOutputSize() {
            PdfArray asArray = ((PdfDictionary) getPdfObject()).getAsArray(PdfName.f2982C1);
            if (asArray == null) {
                return 0;
            }
            return asArray.size();
        }

        private static PdfDictionary makeType2(PdfArray pdfArray, PdfArray pdfArray2, PdfArray pdfArray3, PdfArray pdfArray4, PdfNumber pdfNumber) {
            PdfDictionary pdfDictionary = new PdfDictionary();
            pdfDictionary.put(PdfName.FunctionType, new PdfNumber(2));
            pdfDictionary.put(PdfName.Domain, pdfArray);
            if (pdfArray2 != null) {
                pdfDictionary.put(PdfName.Range, pdfArray2);
            }
            if (pdfArray3 != null) {
                pdfDictionary.put(PdfName.f2981C0, pdfArray3);
            }
            if (pdfArray4 != null) {
                pdfDictionary.put(PdfName.f2982C1, pdfArray4);
            }
            pdfDictionary.put(PdfName.f3037N, pdfNumber);
            return pdfDictionary;
        }
    }

    @Deprecated
    public static class Type3 extends PdfFunction {
        public Type3(PdfDictionary pdfDictionary) {
            super(pdfDictionary);
        }

        public Type3(PdfArray pdfArray, PdfArray pdfArray2, PdfArray pdfArray3, PdfArray pdfArray4, PdfArray pdfArray5) {
            this(makeType3(pdfArray, pdfArray2, pdfArray3, pdfArray4, pdfArray5));
        }

        public Type3(PdfArray pdfArray, PdfArray pdfArray2, List<PdfFunction> list, PdfArray pdfArray3, PdfArray pdfArray4) {
            this(pdfArray, pdfArray2, getFunctionsArray(list), pdfArray3, pdfArray4);
        }

        private static PdfDictionary makeType3(PdfArray pdfArray, PdfArray pdfArray2, PdfArray pdfArray3, PdfArray pdfArray4, PdfArray pdfArray5) {
            PdfDictionary pdfDictionary = new PdfDictionary();
            pdfDictionary.put(PdfName.FunctionType, new PdfNumber(3));
            pdfDictionary.put(PdfName.Domain, pdfArray);
            if (pdfArray2 != null) {
                pdfDictionary.put(PdfName.Range, pdfArray2);
            }
            pdfDictionary.put(PdfName.Functions, pdfArray3);
            pdfDictionary.put(PdfName.Bounds, pdfArray4);
            pdfDictionary.put(PdfName.Encode, pdfArray5);
            return pdfDictionary;
        }

        private static PdfArray getFunctionsArray(List<PdfFunction> list) {
            PdfArray pdfArray = new PdfArray();
            Iterator<PdfFunction> it = list.iterator();
            while (it.hasNext()) {
                pdfArray.add(it.next().getPdfObject());
            }
            return pdfArray;
        }
    }

    @Deprecated
    public static class Type4 extends PdfFunction {
        public Type4(PdfStream pdfStream) {
            super(pdfStream);
        }

        public Type4(PdfArray pdfArray, PdfArray pdfArray2, byte[] bArr) {
            this(makeType4(pdfArray, pdfArray2, bArr));
        }

        @Override // com.itextpdf.kernel.pdf.function.PdfFunction
        public boolean checkCompatibilityWithColorSpace(PdfColorSpace pdfColorSpace) {
            return getInputSize() == 1 && getOutputSize() == pdfColorSpace.getNumberOfComponents();
        }

        private static PdfStream makeType4(PdfArray pdfArray, PdfArray pdfArray2, byte[] bArr) {
            PdfStream pdfStream = new PdfStream(bArr);
            pdfStream.put(PdfName.FunctionType, new PdfNumber(4));
            pdfStream.put(PdfName.Domain, pdfArray);
            pdfStream.put(PdfName.Range, pdfArray2);
            return pdfStream;
        }
    }

    public static PdfFunction makeFunction(PdfDictionary pdfDictionary) {
        int iIntValue = pdfDictionary.getAsNumber(PdfName.FunctionType).intValue();
        if (iIntValue == 0) {
            return new Type0((PdfStream) pdfDictionary);
        }
        if (iIntValue == 2) {
            return new Type2(pdfDictionary);
        }
        if (iIntValue == 3) {
            return new Type3(pdfDictionary);
        }
        if (iIntValue != 4) {
            return null;
        }
        return new Type4((PdfStream) pdfDictionary);
    }
}
