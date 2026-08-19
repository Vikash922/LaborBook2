package com.itextpdf.kernel.pdf;

/* JADX INFO: loaded from: classes6.dex */
class PdfPages extends PdfObjectWrapper<PdfDictionary> {
    static final /* synthetic */ boolean $assertionsDisabled = false;
    private PdfNumber count;
    private int from;
    private final PdfArray kids;
    private final PdfPages parent;

    @Override // com.itextpdf.kernel.pdf.PdfObjectWrapper
    protected boolean isWrappedObjectMustBeIndirect() {
        return true;
    }

    public PdfPages(int i, PdfDocument pdfDocument, PdfPages pdfPages) {
        super(new PdfDictionary());
        if (pdfDocument.getWriter() != null) {
            getPdfObject().makeIndirect(pdfDocument);
        }
        setForbidRelease();
        this.from = i;
        this.count = new PdfNumber(0);
        PdfArray pdfArray = new PdfArray();
        this.kids = pdfArray;
        this.parent = pdfPages;
        getPdfObject().put(PdfName.Type, PdfName.Pages);
        getPdfObject().put(PdfName.Kids, pdfArray);
        getPdfObject().put(PdfName.Count, this.count);
        if (pdfPages != null) {
            getPdfObject().put(PdfName.Parent, pdfPages.getPdfObject());
        }
    }

    public PdfPages(int i, PdfDocument pdfDocument) {
        this(i, pdfDocument, null);
    }

    public PdfPages(int i, int i2, PdfDictionary pdfDictionary, PdfPages pdfPages) {
        super(pdfDictionary);
        setForbidRelease();
        this.from = i;
        PdfNumber asNumber = pdfDictionary.getAsNumber(PdfName.Count);
        this.count = asNumber;
        this.parent = pdfPages;
        if (asNumber == null) {
            this.count = new PdfNumber(1);
            pdfDictionary.put(PdfName.Count, this.count);
        } else if (i2 < asNumber.intValue()) {
            this.count.setValue(i2);
        }
        this.kids = pdfDictionary.getAsArray(PdfName.Kids);
        pdfDictionary.put(PdfName.Type, PdfName.Pages);
    }

    public void addPage(PdfDictionary pdfDictionary) {
        this.kids.add(pdfDictionary);
        incrementCount();
        pdfDictionary.put(PdfName.Parent, getPdfObject());
        pdfDictionary.setModified();
    }

    public boolean addPage(int i, PdfPage pdfPage) {
        int i2 = this.from;
        if (i < i2 || i > i2 + getCount()) {
            return false;
        }
        this.kids.add(i - this.from, pdfPage.getPdfObject());
        pdfPage.getPdfObject().put(PdfName.Parent, getPdfObject());
        pdfPage.setModified();
        incrementCount();
        return true;
    }

    public boolean removePage(int i) {
        int i2 = this.from;
        if (i < i2 || i >= i2 + getCount()) {
            return false;
        }
        decrementCount();
        this.kids.remove(i - this.from);
        return true;
    }

    public void addPages(PdfPages pdfPages) {
        this.kids.add(pdfPages.getPdfObject());
        PdfNumber pdfNumber = this.count;
        pdfNumber.setValue(pdfNumber.intValue() + pdfPages.getCount());
        pdfPages.getPdfObject().put(PdfName.Parent, getPdfObject());
        pdfPages.setModified();
        setModified();
    }

    public void removeFromParent() {
        PdfPages pdfPages = this.parent;
        if (pdfPages != null) {
            pdfPages.kids.remove(getPdfObject().getIndirectReference());
            if (this.parent.getCount() == 0) {
                this.parent.removeFromParent();
            }
        }
    }

    public int getFrom() {
        return this.from;
    }

    public int getCount() {
        return this.count.intValue();
    }

    public void correctFrom(int i) {
        this.from += i;
    }

    public PdfArray getKids() {
        return getPdfObject().getAsArray(PdfName.Kids);
    }

    public PdfPages getParent() {
        return this.parent;
    }

    public void incrementCount() {
        this.count.increment();
        setModified();
        PdfPages pdfPages = this.parent;
        if (pdfPages != null) {
            pdfPages.incrementCount();
        }
    }

    public void decrementCount() {
        this.count.decrement();
        setModified();
        PdfPages pdfPages = this.parent;
        if (pdfPages != null) {
            pdfPages.decrementCount();
        }
    }

    public int compareTo(int i) {
        int i2 = this.from;
        if (i < i2) {
            return 1;
        }
        return i >= i2 + getCount() ? -1 : 0;
    }
}
