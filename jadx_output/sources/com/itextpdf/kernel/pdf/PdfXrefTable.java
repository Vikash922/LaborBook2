package com.itextpdf.kernel.pdf;

import com.itextpdf.commons.actions.data.ProductData;
import com.itextpdf.commons.utils.MessageFormatUtil;
import com.itextpdf.kernel.actions.data.ITextCoreProductData;
import com.itextpdf.p017io.logs.IoLogMessageConstant;
import com.itextpdf.p017io.source.ByteUtils;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.TreeMap;
import org.slf4j.LoggerFactory;

/* JADX INFO: loaded from: classes6.dex */
public class PdfXrefTable {
    static final /* synthetic */ boolean $assertionsDisabled = false;
    private static final int INITIAL_CAPACITY = 32;
    private static final int MAX_GENERATION = 65535;
    private static final byte[] freeXRefEntry = ByteUtils.getIsoBytes("f \n");
    private static final byte[] inUseXRefEntry = ByteUtils.getIsoBytes("n \n");
    private int count;
    private final TreeMap<Integer, PdfIndirectReference> freeReferencesLinkedList;
    private MemoryLimitsAwareHandler memoryLimitsAwareHandler;
    private boolean readingCompleted;
    private PdfIndirectReference[] xref;

    private int getOffsetSize(long j) {
        int i = 5;
        long j2 = 1095216660480L;
        while (i > 1 && (j2 & j) == 0) {
            j2 >>= 8;
            i--;
        }
        return i;
    }

    public PdfXrefTable() {
        this(32);
    }

    public PdfXrefTable(int i) {
        this(i, null);
    }

    public PdfXrefTable(MemoryLimitsAwareHandler memoryLimitsAwareHandler) {
        this(32, memoryLimitsAwareHandler);
    }

    public PdfXrefTable(int i, MemoryLimitsAwareHandler memoryLimitsAwareHandler) {
        this.count = 0;
        if (i < 1) {
            i = 32;
            if (memoryLimitsAwareHandler != null) {
                i = Math.min(32, memoryLimitsAwareHandler.getMaxNumberOfElementsInXrefStructure());
            }
        }
        this.memoryLimitsAwareHandler = memoryLimitsAwareHandler;
        if (memoryLimitsAwareHandler != null) {
            memoryLimitsAwareHandler.checkIfXrefStructureExceedsTheLimit(i);
        }
        this.xref = new PdfIndirectReference[i];
        this.freeReferencesLinkedList = new TreeMap<>();
        add((PdfIndirectReference) new PdfIndirectReference(null, 0, 65535, 0L).setState((short) 2));
    }

    public void setMemoryLimitsAwareHandler(MemoryLimitsAwareHandler memoryLimitsAwareHandler) {
        this.memoryLimitsAwareHandler = memoryLimitsAwareHandler;
    }

    public PdfIndirectReference add(PdfIndirectReference pdfIndirectReference) {
        if (pdfIndirectReference == null) {
            return null;
        }
        int objNumber = pdfIndirectReference.getObjNumber();
        this.count = Math.max(this.count, objNumber);
        ensureCount(objNumber);
        this.xref[objNumber] = pdfIndirectReference;
        return pdfIndirectReference;
    }

    public int size() {
        return this.count + 1;
    }

    public int getCountOfIndirectObjects() {
        int i = 0;
        for (PdfIndirectReference pdfIndirectReference : this.xref) {
            if (pdfIndirectReference != null && !pdfIndirectReference.isFree()) {
                i++;
            }
        }
        return i;
    }

    public PdfIndirectReference get(int i) {
        if (i > this.count) {
            return null;
        }
        return this.xref[i];
    }

    protected static void writeKeyInfo(PdfDocument pdfDocument) {
        PdfWriter writer = pdfDocument.getWriter();
        Collection<ProductData> products = pdfDocument.getFingerPrint().getProducts();
        if (products.isEmpty()) {
            writer.writeString(MessageFormatUtil.format("%iText-{0}-no-registered-products\n", ITextCoreProductData.getInstance().getVersion()));
            return;
        }
        for (ProductData productData : products) {
            writer.writeString(MessageFormatUtil.format("%iText-{0}-{1}\n", productData.getPublicProductName(), productData.getVersion()));
        }
    }

    protected PdfIndirectReference createNextIndirectReference(PdfDocument pdfDocument) {
        int i = this.count + 1;
        this.count = i;
        PdfIndirectReference pdfIndirectReference = new PdfIndirectReference(pdfDocument, i);
        add(pdfIndirectReference);
        return (PdfIndirectReference) pdfIndirectReference.setState((short) 8);
    }

    protected void freeReference(PdfIndirectReference pdfIndirectReference) {
        if (pdfIndirectReference.isFree()) {
            return;
        }
        if (pdfIndirectReference.checkState((short) 32)) {
            LoggerFactory.getLogger((Class<?>) PdfXrefTable.class).error(IoLogMessageConstant.INDIRECT_REFERENCE_USED_IN_FLUSHED_OBJECT_MADE_FREE);
            return;
        }
        if (pdfIndirectReference.checkState((short) 1)) {
            LoggerFactory.getLogger((Class<?>) PdfXrefTable.class).error(IoLogMessageConstant.ALREADY_FLUSHED_INDIRECT_OBJECT_MADE_FREE);
            return;
        }
        pdfIndirectReference.setState((short) 2).setState((short) 8);
        appendNewRefToFreeList(pdfIndirectReference);
        if (pdfIndirectReference.getGenNumber() < 65535) {
            pdfIndirectReference.genNr++;
        }
    }

    protected int getCapacity() {
        return this.xref.length;
    }

    protected void setCapacity(int i) {
        if (i > this.xref.length) {
            extendXref(i);
        }
    }

    protected void writeXrefTableAndTrailer(PdfDocument pdfDocument, PdfObject pdfObject, PdfObject pdfObject2) throws IOException {
        PdfStream pdfStream;
        List<Integer> list;
        long j;
        PdfXrefTable pdfXrefTable;
        List<Integer> list2;
        int i;
        PdfWriter writer = pdfDocument.getWriter();
        if (!pdfDocument.properties.appendMode) {
            for (int i2 = this.count; i2 > 0; i2--) {
                PdfIndirectReference pdfIndirectReference = this.xref[i2];
                if (pdfIndirectReference != null && !pdfIndirectReference.isFree()) {
                    break;
                }
                removeFreeRefFromList(i2);
                this.count--;
            }
        }
        if (writer.isFullCompression()) {
            pdfStream = new PdfStream();
            pdfStream.makeIndirect(pdfDocument);
        } else {
            pdfStream = null;
        }
        List<Integer> listCreateSections = createSections(pdfDocument, false);
        boolean z = listCreateSections.size() == 0 || (pdfStream != null && listCreateSections.size() == 2 && listCreateSections.get(0).intValue() == this.count && listCreateSections.get(1).intValue() == 1);
        if (pdfDocument.properties.appendMode && z) {
            this.xref = null;
            return;
        }
        pdfDocument.checkIsoConformance(this, IsoKey.XREF_TABLE);
        long currentPos = writer.getCurrentPos();
        if (pdfStream != null) {
            pdfStream.put(PdfName.Type, PdfName.XRef);
            pdfStream.put(PdfName.f3021ID, pdfObject);
            if (pdfObject2 != null) {
                pdfStream.put(PdfName.Encrypt, pdfObject2);
            }
            pdfStream.put(PdfName.Size, new PdfNumber(size()));
            int offsetSize = getOffsetSize(Math.max(currentPos, size()));
            pdfStream.put(PdfName.f3089W, new PdfArray((List<? extends PdfObject>) Arrays.asList(new PdfNumber(1), new PdfNumber(offsetSize), new PdfNumber(2))));
            pdfStream.put(PdfName.Info, pdfDocument.getDocumentInfo().getPdfObject());
            pdfStream.put(PdfName.Root, pdfDocument.getCatalog().getPdfObject());
            PdfArray pdfArray = new PdfArray();
            Iterator<Integer> it = listCreateSections.iterator();
            while (it.hasNext()) {
                pdfArray.add(new PdfNumber(it.next().intValue()));
            }
            if (pdfDocument.properties.appendMode && !pdfDocument.reader.hybridXref) {
                pdfStream.put(PdfName.Prev, new PdfNumber(pdfDocument.reader.getLastXref()));
            }
            pdfStream.put(PdfName.Index, pdfArray);
            pdfStream.getIndirectReference().setOffset(currentPos);
            PdfXrefTable xref = pdfDocument.getXref();
            int i3 = 0;
            while (i3 < listCreateSections.size()) {
                int iIntValue = listCreateSections.get(i3).intValue();
                int iIntValue2 = listCreateSections.get(i3 + 1).intValue();
                int i4 = iIntValue;
                while (i4 < iIntValue + iIntValue2) {
                    PdfIndirectReference pdfIndirectReference2 = xref.get(i4);
                    if (pdfIndirectReference2.isFree()) {
                        pdfXrefTable = xref;
                        list2 = listCreateSections;
                        pdfStream.getOutputStream().write(0);
                        i = i3;
                        pdfStream.getOutputStream().write(pdfIndirectReference2.getOffset(), offsetSize);
                        pdfStream.getOutputStream().write(pdfIndirectReference2.getGenNumber(), 2);
                    } else {
                        pdfXrefTable = xref;
                        list2 = listCreateSections;
                        i = i3;
                        if (pdfIndirectReference2.getObjStreamNumber() == 0) {
                            pdfStream.getOutputStream().write(1);
                            pdfStream.getOutputStream().write(pdfIndirectReference2.getOffset(), offsetSize);
                            pdfStream.getOutputStream().write(pdfIndirectReference2.getGenNumber(), 2);
                        } else {
                            pdfStream.getOutputStream().write(2);
                            pdfStream.getOutputStream().write(pdfIndirectReference2.getObjStreamNumber(), offsetSize);
                            pdfStream.getOutputStream().write(pdfIndirectReference2.getIndex(), 2);
                        }
                    }
                    i4++;
                    i3 = i;
                    xref = pdfXrefTable;
                    listCreateSections = list2;
                }
                i3 += 2;
                listCreateSections = listCreateSections;
            }
            list = listCreateSections;
            pdfStream.flush();
            j = currentPos;
        } else {
            list = listCreateSections;
            j = -1;
        }
        if (!writer.isFullCompression() || (pdfDocument.properties.appendMode && pdfDocument.reader.hybridXref)) {
            long currentPos2 = writer.getCurrentPos();
            writer.writeString("xref\n");
            PdfXrefTable xref2 = pdfDocument.getXref();
            List<Integer> listCreateSections2 = j != -1 ? createSections(pdfDocument, true) : list;
            int i5 = 0;
            while (i5 < listCreateSections2.size()) {
                int iIntValue3 = listCreateSections2.get(i5).intValue();
                int iIntValue4 = listCreateSections2.get(i5 + 1).intValue();
                List<Integer> list3 = listCreateSections2;
                writer.writeInteger(iIntValue3).writeSpace().writeInteger(iIntValue4).writeByte((byte) 10);
                int i6 = iIntValue3;
                while (i6 < iIntValue3 + iIntValue4) {
                    PdfIndirectReference pdfIndirectReference3 = xref2.get(i6);
                    PdfXrefTable pdfXrefTable2 = xref2;
                    int i7 = iIntValue3;
                    long j2 = currentPos2;
                    StringBuilder sbAppend = new StringBuilder("0000000000").append(pdfIndirectReference3.getOffset());
                    StringBuilder sbAppend2 = new StringBuilder("00000").append(pdfIndirectReference3.getGenNumber());
                    writer.writeString(sbAppend.substring(sbAppend.length() - 10, sbAppend.length())).writeSpace().writeString(sbAppend2.substring(sbAppend2.length() - 5, sbAppend2.length())).writeSpace();
                    if (pdfIndirectReference3.isFree()) {
                        writer.writeBytes(freeXRefEntry);
                    } else {
                        writer.writeBytes(inUseXRefEntry);
                    }
                    i6++;
                    xref2 = pdfXrefTable2;
                    iIntValue3 = i7;
                    currentPos2 = j2;
                }
                i5 += 2;
                listCreateSections2 = list3;
            }
            long j3 = currentPos2;
            PdfDictionary trailer = pdfDocument.getTrailer();
            trailer.remove(PdfName.f3089W);
            trailer.remove(PdfName.Index);
            trailer.remove(PdfName.Type);
            trailer.remove(PdfName.Length);
            trailer.put(PdfName.Size, new PdfNumber(size()));
            trailer.put(PdfName.f3021ID, pdfObject);
            if (j != -1) {
                trailer.put(PdfName.XRefStm, new PdfNumber(j));
            }
            if (pdfObject2 != null) {
                trailer.put(PdfName.Encrypt, pdfObject2);
            }
            writer.writeString("trailer\n");
            if (pdfDocument.properties.appendMode) {
                trailer.put(PdfName.Prev, new PdfNumber(pdfDocument.reader.getLastXref()));
            }
            writer.write((PdfObject) pdfDocument.getTrailer());
            writer.write(10);
            currentPos = j3;
        }
        writeKeyInfo(pdfDocument);
        writer.writeString("startxref\n").writeLong(currentPos).writeString("\n%%EOF\n");
        this.xref = null;
        this.freeReferencesLinkedList.clear();
    }

    void markReadingCompleted() {
        this.readingCompleted = true;
    }

    boolean isReadingCompleted() {
        return this.readingCompleted;
    }

    /* JADX WARN: Removed duplicated region for block: B:39:0x00c6  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    void initFreeReferencesList(com.itextpdf.kernel.pdf.PdfDocument r11) {
        /*
            Method dump skipped, instruction units count: 248
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.itextpdf.kernel.pdf.PdfXrefTable.initFreeReferencesList(com.itextpdf.kernel.pdf.PdfDocument):void");
    }

    PdfIndirectReference createNewIndirectReference(PdfDocument pdfDocument) {
        int i = this.count + 1;
        this.count = i;
        PdfIndirectReference pdfIndirectReference = new PdfIndirectReference(pdfDocument, i);
        add(pdfIndirectReference);
        return (PdfIndirectReference) pdfIndirectReference.setState((short) 8);
    }

    void clear() {
        for (int i = 1; i <= this.count; i++) {
            PdfIndirectReference pdfIndirectReference = this.xref[i];
            if (pdfIndirectReference == null || !pdfIndirectReference.isFree()) {
                this.xref[i] = null;
            }
        }
        this.count = 1;
    }

    private List<Integer> createSections(PdfDocument pdfDocument, boolean z) {
        ArrayList arrayList = new ArrayList();
        int i = 0;
        int i2 = 0;
        for (int i3 = 0; i3 < size(); i3++) {
            PdfIndirectReference pdfIndirectReference = this.xref[i3];
            if (pdfDocument.properties.appendMode && pdfIndirectReference != null && (!pdfIndirectReference.checkState((short) 8) || (z && pdfIndirectReference.getObjStreamNumber() != 0))) {
                pdfIndirectReference = null;
            }
            if (pdfIndirectReference == null) {
                if (i > 0) {
                    arrayList.add(Integer.valueOf(i2));
                    arrayList.add(Integer.valueOf(i));
                }
                i = 0;
            } else if (i > 0) {
                i++;
            } else {
                i = 1;
                i2 = i3;
            }
        }
        if (i > 0) {
            arrayList.add(Integer.valueOf(i2));
            arrayList.add(Integer.valueOf(i));
        }
        return arrayList;
    }

    private void appendNewRefToFreeList(PdfIndirectReference pdfIndirectReference) {
        pdfIndirectReference.setOffset(0L);
        if (this.freeReferencesLinkedList.isEmpty()) {
            return;
        }
        PdfIndirectReference pdfIndirectReference2 = this.freeReferencesLinkedList.get(0);
        ((PdfIndirectReference) pdfIndirectReference2.setState((short) 8)).setOffset(pdfIndirectReference.getObjNumber());
        this.freeReferencesLinkedList.put(Integer.valueOf(pdfIndirectReference.getObjNumber()), pdfIndirectReference2);
        this.freeReferencesLinkedList.put(0, pdfIndirectReference);
    }

    private PdfIndirectReference removeFreeRefFromList(int i) {
        Integer key;
        if (this.freeReferencesLinkedList.isEmpty() || i == 0) {
            return null;
        }
        if (i < 0) {
            Iterator<Map.Entry<Integer, PdfIndirectReference>> it = this.freeReferencesLinkedList.entrySet().iterator();
            while (true) {
                if (!it.hasNext()) {
                    key = null;
                    break;
                }
                Map.Entry<Integer, PdfIndirectReference> next = it.next();
                if (next.getKey().intValue() > 0 && this.xref[next.getKey().intValue()].getGenNumber() < 65535) {
                    key = next.getKey();
                    break;
                }
            }
            if (key == null) {
                return null;
            }
            i = key.intValue();
        }
        PdfIndirectReference pdfIndirectReference = this.xref[i];
        if (!pdfIndirectReference.isFree()) {
            return null;
        }
        PdfIndirectReference pdfIndirectReferenceRemove = this.freeReferencesLinkedList.remove(Integer.valueOf(pdfIndirectReference.getObjNumber()));
        if (pdfIndirectReferenceRemove != null) {
            this.freeReferencesLinkedList.put(Integer.valueOf((int) pdfIndirectReference.getOffset()), pdfIndirectReferenceRemove);
            ((PdfIndirectReference) pdfIndirectReferenceRemove.setState((short) 8)).setOffset(pdfIndirectReference.getOffset());
        }
        return pdfIndirectReference;
    }

    private void ensureCount(int i) {
        if (i >= this.xref.length) {
            extendXref(i << 1);
        }
    }

    private void extendXref(int i) {
        MemoryLimitsAwareHandler memoryLimitsAwareHandler = this.memoryLimitsAwareHandler;
        if (memoryLimitsAwareHandler != null) {
            memoryLimitsAwareHandler.checkIfXrefStructureExceedsTheLimit(i);
        }
        PdfIndirectReference[] pdfIndirectReferenceArr = new PdfIndirectReference[i];
        PdfIndirectReference[] pdfIndirectReferenceArr2 = this.xref;
        System.arraycopy(pdfIndirectReferenceArr2, 0, pdfIndirectReferenceArr, 0, pdfIndirectReferenceArr2.length);
        this.xref = pdfIndirectReferenceArr;
    }
}
