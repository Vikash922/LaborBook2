package com.itextpdf.kernel.utils;

import com.itextpdf.commons.actions.contexts.IMetaInfo;
import com.itextpdf.kernel.exceptions.KernelExceptionMessageConstant;
import com.itextpdf.kernel.exceptions.PdfException;
import com.itextpdf.kernel.pdf.DocumentProperties;
import com.itextpdf.kernel.pdf.PdfDocument;
import com.itextpdf.kernel.pdf.PdfName;
import com.itextpdf.kernel.pdf.PdfObject;
import com.itextpdf.kernel.pdf.PdfOutline;
import com.itextpdf.kernel.pdf.PdfPage;
import com.itextpdf.kernel.pdf.PdfWriter;
import com.itextpdf.p017io.source.ByteArrayOutputStream;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes6.dex */
public class PdfSplitter {
    private IMetaInfo metaInfo;
    private PdfDocument pdfDocument;
    private boolean preserveOutlines;
    private boolean preserveTagged;

    public interface IDocumentReadyListener {
        void documentReady(PdfDocument pdfDocument, PageRange pageRange);
    }

    private long xrefLength(int i) {
        return ((long) (i + 1)) * 20;
    }

    public PdfSplitter(PdfDocument pdfDocument) {
        if (pdfDocument.getWriter() != null) {
            throw new PdfException(KernelExceptionMessageConstant.CANNOT_SPLIT_DOCUMENT_THAT_IS_BEING_WRITTEN);
        }
        this.pdfDocument = pdfDocument;
        this.preserveTagged = true;
        this.preserveOutlines = true;
    }

    public void setEventCountingMetaInfo(IMetaInfo iMetaInfo) {
        this.metaInfo = iMetaInfo;
    }

    public void setPreserveTagged(boolean z) {
        this.preserveTagged = z;
    }

    public void setPreserveOutlines(boolean z) {
        this.preserveOutlines = z;
    }

    public List<PdfDocument> splitBySize(long j) {
        ArrayList arrayList = new ArrayList();
        int numberOfPages = this.pdfDocument.getNumberOfPages();
        int iIntValue = 1;
        while (iIntValue <= numberOfPages) {
            PageRange nextRange = getNextRange(iIntValue, numberOfPages, j);
            arrayList.add(nextRange);
            List<Integer> qualifyingPageNums = nextRange.getQualifyingPageNums(numberOfPages);
            iIntValue = qualifyingPageNums.get(qualifyingPageNums.size() - 1).intValue() + 1;
        }
        return extractPageRanges(arrayList);
    }

    public void splitByPageNumbers(List<Integer> list, IDocumentReadyListener iDocumentReadyListener) {
        int i = 0;
        int i2 = 1;
        while (i <= list.size()) {
            int numberOfPages = i == list.size() ? this.pdfDocument.getNumberOfPages() + 1 : list.get(i).intValue();
            if (i != 0 || numberOfPages != 1) {
                int i3 = numberOfPages - 1;
                PageRange pageRangeAddPageSequence = new PageRange().addPageSequence(i2, i3);
                PdfDocument pdfDocumentCreatePdfDocument = createPdfDocument(pageRangeAddPageSequence);
                this.pdfDocument.copyPagesTo(i2, i3, pdfDocumentCreatePdfDocument);
                iDocumentReadyListener.documentReady(pdfDocumentCreatePdfDocument, pageRangeAddPageSequence);
                i2 = numberOfPages;
            }
            i++;
        }
    }

    public List<PdfDocument> splitByPageNumbers(List<Integer> list) {
        ArrayList arrayList = new ArrayList();
        splitByPageNumbers(list, new SplitReadyListener(arrayList));
        return arrayList;
    }

    public void splitByPageCount(int i, IDocumentReadyListener iDocumentReadyListener) {
        int i2 = 1;
        while (i2 <= this.pdfDocument.getNumberOfPages()) {
            int i3 = i2 + i;
            int iMin = Math.min(i3 - 1, this.pdfDocument.getNumberOfPages());
            PageRange pageRangeAddPageSequence = new PageRange().addPageSequence(i2, iMin);
            PdfDocument pdfDocumentCreatePdfDocument = createPdfDocument(pageRangeAddPageSequence);
            this.pdfDocument.copyPagesTo(i2, iMin, pdfDocumentCreatePdfDocument);
            iDocumentReadyListener.documentReady(pdfDocumentCreatePdfDocument, pageRangeAddPageSequence);
            i2 = i3;
        }
    }

    public List<PdfDocument> splitByPageCount(int i) {
        ArrayList arrayList = new ArrayList();
        splitByPageCount(i, new SplitReadyListener(arrayList));
        return arrayList;
    }

    public List<PdfDocument> extractPageRanges(List<PageRange> list) {
        ArrayList arrayList = new ArrayList();
        for (PageRange pageRange : list) {
            PdfDocument pdfDocumentCreatePdfDocument = createPdfDocument(pageRange);
            arrayList.add(pdfDocumentCreatePdfDocument);
            PdfDocument pdfDocument = this.pdfDocument;
            pdfDocument.copyPagesTo(pageRange.getQualifyingPageNums(pdfDocument.getNumberOfPages()), pdfDocumentCreatePdfDocument);
        }
        return arrayList;
    }

    public PdfDocument extractPageRange(PageRange pageRange) {
        return extractPageRanges(Collections.singletonList(pageRange)).get(0);
    }

    public PdfDocument getPdfDocument() {
        return this.pdfDocument;
    }

    protected PdfWriter getNextPdfWriter(PageRange pageRange) {
        return new PdfWriter(new ByteArrayOutputStream());
    }

    private PdfDocument createPdfDocument(PageRange pageRange) {
        PdfDocument pdfDocument = new PdfDocument(getNextPdfWriter(pageRange), new DocumentProperties().setEventCountingMetaInfo(this.metaInfo));
        if (this.pdfDocument.isTagged() && this.preserveTagged) {
            pdfDocument.setTagged();
        }
        if (this.pdfDocument.hasOutlines() && this.preserveOutlines) {
            pdfDocument.initializeOutlines();
        }
        return pdfDocument;
    }

    public List<PdfDocument> splitByOutlines(List<String> list) {
        if (list == null || list.size() == 0) {
            return Collections.emptyList();
        }
        ArrayList arrayList = new ArrayList(list.size());
        Iterator<String> it = list.iterator();
        while (it.hasNext()) {
            PdfDocument pdfDocumentSplitByOutline = splitByOutline(it.next());
            if (pdfDocumentSplitByOutline != null) {
                arrayList.add(pdfDocumentSplitByOutline);
            }
        }
        return arrayList;
    }

    private PdfDocument splitByOutline(String str) {
        PdfDocument pdfDocumentCreatePdfDocument = createPdfDocument(null);
        int numberOfPages = this.pdfDocument.getNumberOfPages();
        int pageNumber = -1;
        int pageNumber2 = -1;
        for (int i = 1; i <= numberOfPages; i++) {
            PdfPage page = this.pdfDocument.getPage(i);
            List<PdfOutline> outlines = page.getOutlines(false);
            if (outlines != null) {
                Iterator<PdfOutline> it = outlines.iterator();
                while (true) {
                    if (it.hasNext()) {
                        PdfOutline next = it.next();
                        if (next.getTitle().equals(str)) {
                            pageNumber = this.pdfDocument.getPageNumber(page);
                            PdfOutline absoluteTreeNextOutline = getAbsoluteTreeNextOutline(next);
                            pageNumber2 = absoluteTreeNextOutline != null ? this.pdfDocument.getPageNumber(getPageByOutline(i, absoluteTreeNextOutline)) - 1 : numberOfPages;
                            if (pageNumber - pageNumber2 == 1) {
                                pageNumber2 = pageNumber;
                            }
                        }
                    }
                }
            }
        }
        if (pageNumber == -1 || pageNumber2 == -1) {
            return null;
        }
        this.pdfDocument.copyPagesTo(pageNumber, pageNumber2, pdfDocumentCreatePdfDocument);
        return pdfDocumentCreatePdfDocument;
    }

    private PdfPage getPageByOutline(int i, PdfOutline pdfOutline) {
        int numberOfPages = this.pdfDocument.getNumberOfPages();
        while (i <= numberOfPages) {
            PdfPage page = this.pdfDocument.getPage(i);
            List<PdfOutline> outlines = page.getOutlines(false);
            if (outlines != null) {
                Iterator<PdfOutline> it = outlines.iterator();
                while (it.hasNext()) {
                    if (it.next().equals(pdfOutline)) {
                        return page;
                    }
                }
            }
            i++;
        }
        return null;
    }

    private PdfOutline getAbsoluteTreeNextOutline(PdfOutline pdfOutline) {
        PdfOutline next;
        PdfObject pdfObject = pdfOutline.getContent().get(PdfName.Next);
        if (pdfOutline.getParent() == null || pdfObject == null) {
            next = null;
        } else {
            Iterator<PdfOutline> it = pdfOutline.getParent().getAllChildren().iterator();
            while (it.hasNext()) {
                next = it.next();
                if (next.getContent().getIndirectReference().equals(pdfObject.getIndirectReference())) {
                    break;
                }
            }
            next = null;
        }
        return (next != null || pdfOutline.getParent() == null) ? next : getAbsoluteTreeNextOutline(pdfOutline.getParent());
    }

    private PageRange getNextRange(int i, int i2, long j) {
        int i3;
        PdfResourceCounter pdfResourceCounter = new PdfResourceCounter(this.pdfDocument.getTrailer());
        Map<Integer, PdfObject> resources = pdfResourceCounter.getResources();
        long length = pdfResourceCounter.getLength(null);
        boolean z = false;
        int i4 = i;
        while (true) {
            i3 = i4 + 1;
            PdfResourceCounter pdfResourceCounter2 = new PdfResourceCounter(this.pdfDocument.getPage(i4).getPdfObject());
            length += pdfResourceCounter2.getLength(resources);
            resources.putAll(pdfResourceCounter2.getResources());
            if (xrefLength(resources.size()) + length > j) {
                z = true;
            }
            if (i3 > i2 || z) {
                break;
            }
            i4 = i3;
        }
        if (!z || i4 == i) {
            i4 = i3;
        }
        return new PageRange().addPageSequence(i, i4 - 1);
    }

    private static final class SplitReadyListener implements IDocumentReadyListener {
        private List<PdfDocument> splitDocuments;

        public SplitReadyListener(List<PdfDocument> list) {
            this.splitDocuments = list;
        }

        @Override // com.itextpdf.kernel.utils.PdfSplitter.IDocumentReadyListener
        public void documentReady(PdfDocument pdfDocument, PageRange pageRange) {
            this.splitDocuments.add(pdfDocument);
        }
    }
}
