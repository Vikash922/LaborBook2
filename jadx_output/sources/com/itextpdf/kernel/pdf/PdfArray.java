package com.itextpdf.kernel.pdf;

import com.itextpdf.kernel.exceptions.KernelExceptionMessageConstant;
import com.itextpdf.kernel.exceptions.PdfException;
import com.itextpdf.kernel.geom.Rectangle;
import com.itextpdf.kernel.utils.ICopyFilter;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import org.shadow.apache.commons.lang3.StringUtils;

/* JADX INFO: loaded from: classes6.dex */
public class PdfArray extends PdfObject implements Iterable<PdfObject> {
    protected List<PdfObject> list;

    @Override // com.itextpdf.kernel.pdf.PdfObject
    public byte getType() {
        return (byte) 1;
    }

    public PdfArray() {
        this.list = new ArrayList();
    }

    public PdfArray(PdfObject pdfObject) {
        this();
        this.list.add(pdfObject);
    }

    public PdfArray(PdfArray pdfArray) {
        this();
        this.list.addAll(pdfArray.list);
    }

    public PdfArray(Rectangle rectangle) {
        this.list = new ArrayList(4);
        add(new PdfNumber(rectangle.getLeft()));
        add(new PdfNumber(rectangle.getBottom()));
        add(new PdfNumber(rectangle.getRight()));
        add(new PdfNumber(rectangle.getTop()));
    }

    public PdfArray(List<? extends PdfObject> list) {
        this.list = new ArrayList(list.size());
        Iterator<? extends PdfObject> it = list.iterator();
        while (it.hasNext()) {
            add(it.next());
        }
    }

    public PdfArray(float[] fArr) {
        this.list = new ArrayList(fArr.length);
        for (float f : fArr) {
            this.list.add(new PdfNumber(f));
        }
    }

    public PdfArray(double[] dArr) {
        this.list = new ArrayList(dArr.length);
        for (double d : dArr) {
            this.list.add(new PdfNumber(d));
        }
    }

    public PdfArray(int[] iArr) {
        this.list = new ArrayList(iArr.length);
        for (int i : iArr) {
            this.list.add(new PdfNumber(i));
        }
    }

    public PdfArray(boolean[] zArr) {
        this.list = new ArrayList(zArr.length);
        for (boolean z : zArr) {
            this.list.add(PdfBoolean.valueOf(z));
        }
    }

    public PdfArray(List<String> list, boolean z) {
        this.list = new ArrayList(list.size());
        for (String str : list) {
            this.list.add(z ? new PdfName(str) : new PdfString(str));
        }
    }

    public PdfArray(Iterable<? extends PdfObject> iterable, int i) {
        this.list = new ArrayList(i);
        Iterator<? extends PdfObject> it = iterable.iterator();
        while (it.hasNext()) {
            add(it.next());
        }
    }

    public int size() {
        return this.list.size();
    }

    public boolean isEmpty() {
        return this.list.size() == 0;
    }

    public boolean contains(PdfObject pdfObject) {
        if (this.list.contains(pdfObject)) {
            return true;
        }
        if (pdfObject == null) {
            return false;
        }
        Iterator<PdfObject> it = iterator();
        while (it.hasNext()) {
            if (PdfObject.equalContent(pdfObject, it.next())) {
                return true;
            }
        }
        return false;
    }

    @Override // java.lang.Iterable
    public Iterator<PdfObject> iterator() {
        return new PdfArrayDirectIterator(this.list);
    }

    public void add(PdfObject pdfObject) {
        this.list.add(pdfObject);
    }

    public void add(int i, PdfObject pdfObject) {
        this.list.add(i, pdfObject);
    }

    public PdfObject set(int i, PdfObject pdfObject) {
        return this.list.set(i, pdfObject);
    }

    public void addAll(Collection<PdfObject> collection) {
        this.list.addAll(collection);
    }

    public void addAll(PdfArray pdfArray) {
        if (pdfArray != null) {
            addAll(pdfArray.list);
        }
    }

    public PdfObject get(int i) {
        return get(i, true);
    }

    public void remove(int i) {
        this.list.remove(i);
    }

    public void remove(PdfObject pdfObject) {
        if (this.list.remove(pdfObject) || pdfObject == null) {
            return;
        }
        for (PdfObject pdfObject2 : this.list) {
            if (PdfObject.equalContent(pdfObject, pdfObject2)) {
                this.list.remove(pdfObject2);
                return;
            }
        }
    }

    public void clear() {
        this.list.clear();
    }

    public int indexOf(PdfObject pdfObject) {
        if (pdfObject == null) {
            return this.list.indexOf(null);
        }
        Iterator<PdfObject> it = iterator();
        int i = 0;
        while (it.hasNext()) {
            if (PdfObject.equalContent(pdfObject, it.next())) {
                return i;
            }
            i++;
        }
        return -1;
    }

    public List<PdfObject> subList(int i, int i2) {
        return this.list.subList(i, i2);
    }

    public String toString() {
        String str = "[";
        for (PdfObject pdfObject : this.list) {
            PdfIndirectReference indirectReference = pdfObject.getIndirectReference();
            str = str + (indirectReference == null ? pdfObject.toString() : indirectReference.toString()) + StringUtils.SPACE;
        }
        return str + "]";
    }

    public PdfObject get(int i, boolean z) {
        if (!z) {
            return this.list.get(i);
        }
        PdfObject pdfObject = this.list.get(i);
        return pdfObject.getType() == 5 ? ((PdfIndirectReference) pdfObject).getRefersTo(true) : pdfObject;
    }

    public PdfArray getAsArray(int i) {
        PdfObject pdfObject = get(i, true);
        if (pdfObject == null || pdfObject.getType() != 1) {
            return null;
        }
        return (PdfArray) pdfObject;
    }

    public PdfDictionary getAsDictionary(int i) {
        PdfObject pdfObject = get(i, true);
        if (pdfObject == null || pdfObject.getType() != 3) {
            return null;
        }
        return (PdfDictionary) pdfObject;
    }

    public PdfStream getAsStream(int i) {
        PdfObject pdfObject = get(i, true);
        if (pdfObject == null || pdfObject.getType() != 9) {
            return null;
        }
        return (PdfStream) pdfObject;
    }

    public PdfNumber getAsNumber(int i) {
        PdfObject pdfObject = get(i, true);
        if (pdfObject == null || pdfObject.getType() != 8) {
            return null;
        }
        return (PdfNumber) pdfObject;
    }

    public PdfName getAsName(int i) {
        PdfObject pdfObject = get(i, true);
        if (pdfObject == null || pdfObject.getType() != 6) {
            return null;
        }
        return (PdfName) pdfObject;
    }

    public PdfString getAsString(int i) {
        PdfObject pdfObject = get(i, true);
        if (pdfObject == null || pdfObject.getType() != 10) {
            return null;
        }
        return (PdfString) pdfObject;
    }

    public PdfBoolean getAsBoolean(int i) {
        PdfObject pdfObject = get(i, true);
        if (pdfObject == null || pdfObject.getType() != 2) {
            return null;
        }
        return (PdfBoolean) pdfObject;
    }

    public Rectangle toRectangle() {
        try {
            float fFloatValue = getAsNumber(0).floatValue();
            float fFloatValue2 = getAsNumber(1).floatValue();
            float fFloatValue3 = getAsNumber(2).floatValue();
            float fFloatValue4 = getAsNumber(3).floatValue();
            float fMin = Math.min(fFloatValue, fFloatValue3);
            float fMin2 = Math.min(fFloatValue2, fFloatValue4);
            return new Rectangle(fMin, fMin2, Math.max(fFloatValue, fFloatValue3) - fMin, Math.max(fFloatValue2, fFloatValue4) - fMin2);
        } catch (Exception e) {
            throw new PdfException(KernelExceptionMessageConstant.CANNOT_CONVERT_PDF_ARRAY_TO_RECTANGLE, e, this);
        }
    }

    public float[] toFloatArray() {
        try {
            int size = size();
            float[] fArr = new float[size];
            for (int i = 0; i < size; i++) {
                fArr[i] = getAsNumber(i).floatValue();
            }
            return fArr;
        } catch (Exception e) {
            throw new PdfException(KernelExceptionMessageConstant.CANNOT_CONVERT_PDF_ARRAY_TO_FLOAT_ARRAY, e, this);
        }
    }

    public double[] toDoubleArray() {
        try {
            int size = size();
            double[] dArr = new double[size];
            for (int i = 0; i < size; i++) {
                dArr[i] = getAsNumber(i).doubleValue();
            }
            return dArr;
        } catch (Exception e) {
            throw new PdfException(KernelExceptionMessageConstant.CANNOT_CONVERT_PDF_ARRAY_TO_DOUBLE_ARRAY, e, this);
        }
    }

    public long[] toLongArray() {
        try {
            int size = size();
            long[] jArr = new long[size];
            for (int i = 0; i < size; i++) {
                jArr[i] = getAsNumber(i).longValue();
            }
            return jArr;
        } catch (Exception e) {
            throw new PdfException(KernelExceptionMessageConstant.CANNOT_CONVERT_PDF_ARRAY_TO_LONG_ARRAY, e, this);
        }
    }

    public int[] toIntArray() {
        try {
            int size = size();
            int[] iArr = new int[size];
            for (int i = 0; i < size; i++) {
                iArr[i] = getAsNumber(i).intValue();
            }
            return iArr;
        } catch (Exception e) {
            throw new PdfException(KernelExceptionMessageConstant.CANNOT_CONVERT_PDF_ARRAY_TO_INT_ARRAY, e, this);
        }
    }

    public boolean[] toBooleanArray() {
        int size = size();
        boolean[] zArr = new boolean[size];
        for (int i = 0; i < size; i++) {
            PdfBoolean asBoolean = getAsBoolean(i);
            if (asBoolean == null) {
                throw new PdfException(KernelExceptionMessageConstant.CANNOT_CONVERT_PDF_ARRAY_TO_AN_ARRAY_OF_BOOLEANS, this);
            }
            zArr[i] = asBoolean.getValue();
        }
        return zArr;
    }

    @Override // com.itextpdf.kernel.pdf.PdfObject
    protected PdfObject newInstance() {
        return new PdfArray();
    }

    @Override // com.itextpdf.kernel.pdf.PdfObject
    protected void copyContent(PdfObject pdfObject, PdfDocument pdfDocument, ICopyFilter iCopyFilter) {
        super.copyContent(pdfObject, pdfDocument, iCopyFilter);
        for (PdfObject pdfObject2 : ((PdfArray) pdfObject).list) {
            if (iCopyFilter.shouldProcess(this, null, pdfObject2)) {
                add(pdfObject2.processCopying(pdfDocument, false, iCopyFilter));
            }
        }
    }

    protected void releaseContent() {
        this.list = null;
    }
}
