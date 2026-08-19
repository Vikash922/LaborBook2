package com.itextpdf.kernel.pdf;

import com.google.firebase.analytics.FirebaseAnalytics;
import com.itextpdf.commons.utils.MessageFormatUtil;
import com.itextpdf.kernel.exceptions.KernelExceptionMessageConstant;
import com.itextpdf.kernel.exceptions.PdfException;
import com.itextpdf.p017io.logs.IoLogMessageConstant;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

/* JADX INFO: loaded from: classes6.dex */
class PdfPagesTree {
    static final int DEFAULT_LEAF_SIZE = 10;
    private static final Logger LOGGER = LoggerFactory.getLogger((Class<?>) PdfPagesTree.class);
    private PdfDocument document;
    private PdfPages root;
    private final int leafSize = 10;
    private boolean generated = false;
    private List<PdfIndirectReference> pageRefs = new ArrayList();
    private List<PdfPages> parents = new ArrayList();
    private List<PdfPage> pages = new ArrayList();

    public PdfPagesTree(PdfCatalog pdfCatalog) {
        this.document = pdfCatalog.getDocument();
        if (pdfCatalog.getPdfObject().containsKey(PdfName.Pages)) {
            PdfDictionary asDictionary = pdfCatalog.getPdfObject().getAsDictionary(PdfName.Pages);
            if (asDictionary == null) {
                throw new PdfException(KernelExceptionMessageConstant.INVALID_PAGE_STRUCTURE_PAGES_MUST_BE_PDF_DICTIONARY);
            }
            PdfPages pdfPages = new PdfPages(0, Integer.MAX_VALUE, asDictionary, null);
            this.root = pdfPages;
            this.parents.add(pdfPages);
            for (int i = 0; i < this.root.getCount(); i++) {
                this.pageRefs.add(null);
                this.pages.add(null);
            }
            return;
        }
        this.root = null;
        this.parents.add(new PdfPages(0, this.document));
    }

    public PdfPage getPage(int i) {
        if (i < 1 || i > getNumberOfPages()) {
            throw new IndexOutOfBoundsException(MessageFormatUtil.format(KernelExceptionMessageConstant.REQUESTED_PAGE_NUMBER_IS_OUT_OF_BOUNDS, Integer.valueOf(i)));
        }
        int i2 = i - 1;
        PdfPage pdfPageCreatePdfPage = this.pages.get(i2);
        if (pdfPageCreatePdfPage == null) {
            loadPage(i2);
            if (this.pageRefs.get(i2) != null) {
                int iFindPageParent = findPageParent(i2);
                PdfObject refersTo = this.pageRefs.get(i2).getRefersTo();
                if (refersTo instanceof PdfDictionary) {
                    pdfPageCreatePdfPage = this.document.getPageFactory().createPdfPage((PdfDictionary) refersTo);
                    pdfPageCreatePdfPage.parentPages = this.parents.get(iFindPageParent);
                } else {
                    LOGGER.error(MessageFormatUtil.format(IoLogMessageConstant.PAGE_TREE_IS_BROKEN_FAILED_TO_RETRIEVE_PAGE, Integer.valueOf(i)));
                }
            } else {
                LOGGER.error(MessageFormatUtil.format(IoLogMessageConstant.PAGE_TREE_IS_BROKEN_FAILED_TO_RETRIEVE_PAGE, Integer.valueOf(i)));
            }
            this.pages.set(i2, pdfPageCreatePdfPage);
        }
        if (pdfPageCreatePdfPage != null) {
            return pdfPageCreatePdfPage;
        }
        throw new PdfException(MessageFormatUtil.format(IoLogMessageConstant.PAGE_TREE_IS_BROKEN_FAILED_TO_RETRIEVE_PAGE, Integer.valueOf(i)));
    }

    public PdfPage getPage(PdfDictionary pdfDictionary) {
        int pageNumber = getPageNumber(pdfDictionary);
        if (pageNumber > 0) {
            return getPage(pageNumber);
        }
        return null;
    }

    public int getNumberOfPages() {
        return this.pageRefs.size();
    }

    public int getPageNumber(PdfPage pdfPage) {
        return this.pages.indexOf(pdfPage) + 1;
    }

    public int getPageNumber(PdfDictionary pdfDictionary) {
        int iIndexOf = this.pageRefs.indexOf(pdfDictionary.getIndirectReference());
        if (iIndexOf >= 0) {
            return iIndexOf + 1;
        }
        for (int i = 0; i < this.pageRefs.size(); i++) {
            if (this.pageRefs.get(i) == null) {
                loadPage(i);
            }
            if (this.pageRefs.get(i).equals(pdfDictionary.getIndirectReference())) {
                return i + 1;
            }
        }
        return 0;
    }

    public void addPage(PdfPage pdfPage) {
        PdfPages pdfPages;
        if (this.root != null) {
            if (this.pageRefs.size() == 0) {
                pdfPages = this.root;
            } else {
                loadPage(this.pageRefs.size() - 1);
                pdfPages = this.parents.get(r0.size() - 1);
            }
        } else {
            pdfPages = this.parents.get(r0.size() - 1);
            if (pdfPages.getCount() % 10 == 0 && this.pageRefs.size() > 0) {
                PdfPages pdfPages2 = new PdfPages(pdfPages.getFrom() + pdfPages.getCount(), this.document);
                this.parents.add(pdfPages2);
                pdfPages = pdfPages2;
            }
        }
        pdfPage.makeIndirect(this.document);
        pdfPages.addPage(pdfPage.getPdfObject());
        pdfPage.parentPages = pdfPages;
        this.pageRefs.add(pdfPage.getPdfObject().getIndirectReference());
        this.pages.add(pdfPage);
    }

    public void addPage(int i, PdfPage pdfPage) {
        int i2 = i - 1;
        if (i2 > this.pageRefs.size()) {
            throw new IndexOutOfBoundsException(FirebaseAnalytics.Param.INDEX);
        }
        if (i2 == this.pageRefs.size()) {
            addPage(pdfPage);
            return;
        }
        loadPage(i2);
        pdfPage.makeIndirect(this.document);
        int iFindPageParent = findPageParent(i2);
        PdfPages pdfPages = this.parents.get(iFindPageParent);
        pdfPages.addPage(i2, pdfPage);
        pdfPage.parentPages = pdfPages;
        correctPdfPagesFromProperty(iFindPageParent + 1, 1);
        this.pageRefs.add(i2, pdfPage.getPdfObject().getIndirectReference());
        this.pages.add(i2, pdfPage);
    }

    public PdfPage removePage(int i) {
        PdfPage page = getPage(i);
        if (page.isFlushed()) {
            LOGGER.warn(IoLogMessageConstant.REMOVING_PAGE_HAS_ALREADY_BEEN_FLUSHED);
        }
        if (internalRemovePage(i - 1)) {
            return page;
        }
        return null;
    }

    void releasePage(int i) {
        int i2 = i - 1;
        if (this.pageRefs.get(i2) == null || this.pageRefs.get(i2).checkState((short) 1) || this.pageRefs.get(i2).checkState((short) 8)) {
            return;
        }
        if (this.pageRefs.get(i2).getOffset() > 0 || this.pageRefs.get(i2).getIndex() >= 0) {
            this.pages.set(i2, null);
        }
    }

    protected PdfObject generateTree() {
        if (this.pageRefs.size() == 0) {
            LOGGER.info(IoLogMessageConstant.ATTEMPT_TO_GENERATE_PDF_PAGES_TREE_WITHOUT_ANY_PAGES);
            this.document.addNewPage();
        }
        if (this.generated) {
            throw new PdfException(KernelExceptionMessageConstant.PDF_PAGES_TREE_COULD_BE_GENERATED_ONLY_ONCE);
        }
        if (this.root == null) {
            while (true) {
                if (this.parents.size() == 1) {
                    break;
                }
                ArrayList arrayList = new ArrayList();
                PdfPages pdfPages = null;
                int i = 10;
                for (int i2 = 0; i2 < this.parents.size(); i2++) {
                    PdfPages pdfPages2 = this.parents.get(i2);
                    int count = pdfPages2.getCount();
                    if (i2 % i == 0) {
                        if (count <= 1) {
                            i++;
                        } else {
                            pdfPages = new PdfPages(-1, this.document);
                            arrayList.add(pdfPages);
                            i = 10;
                        }
                    }
                    pdfPages.addPages(pdfPages2);
                }
                this.parents = arrayList;
            }
            this.root = this.parents.get(0);
        }
        this.generated = true;
        return this.root.getPdfObject();
    }

    protected void clearPageRefs() {
        this.pageRefs = null;
        this.pages = null;
    }

    protected List<PdfPages> getParents() {
        return this.parents;
    }

    protected PdfPages getRoot() {
        return this.root;
    }

    protected PdfPages findPageParent(PdfPage pdfPage) {
        return this.parents.get(findPageParent(getPageNumber(pdfPage) - 1));
    }

    private void loadPage(int i) {
        loadPage(i, new HashSet());
    }

    private void loadPage(int i, Set<PdfIndirectReference> set) {
        int count;
        if (this.pageRefs.get(i) != null) {
            return;
        }
        int iFindPageParent = findPageParent(i);
        PdfPages pdfPages = this.parents.get(iFindPageParent);
        PdfIndirectReference indirectReference = pdfPages.getPdfObject().getIndirectReference();
        if (indirectReference != null) {
            if (set.contains(indirectReference)) {
                throw new PdfException(KernelExceptionMessageConstant.INVALID_PAGE_STRUCTURE).setMessageParams(Integer.valueOf(i + 1));
            }
            set.add(indirectReference);
        }
        PdfArray kids = pdfPages.getKids();
        if (kids == null) {
            throw new PdfException(KernelExceptionMessageConstant.INVALID_PAGE_STRUCTURE).setMessageParams(Integer.valueOf(i + 1));
        }
        int count2 = pdfPages.getCount();
        int i2 = 0;
        boolean z = false;
        for (int i3 = 0; i3 < kids.size(); i3++) {
            PdfDictionary asDictionary = kids.getAsDictionary(i3);
            if (asDictionary == null) {
                throw new PdfException(KernelExceptionMessageConstant.INVALID_PAGE_STRUCTURE).setMessageParams(Integer.valueOf(i + 1));
            }
            PdfObject pdfObject = asDictionary.get(PdfName.Kids);
            if (pdfObject != null) {
                if (!pdfObject.isArray()) {
                    throw new PdfException(KernelExceptionMessageConstant.INVALID_PAGE_STRUCTURE).setMessageParams(Integer.valueOf(i + 1));
                }
                z = true;
            }
            if (this.document.getReader().isMemorySavingMode() && !z && pdfPages.getFrom() + i3 != i) {
                asDictionary.release();
            }
        }
        if (z) {
            ArrayList arrayList = new ArrayList(kids.size());
            PdfPages pdfPages2 = null;
            while (i2 < kids.size() && count2 > 0) {
                PdfDictionary asDictionary2 = kids.getAsDictionary(i2);
                if (asDictionary2.getAsArray(PdfName.Kids) == null) {
                    if (pdfPages2 == null) {
                        pdfPages2 = new PdfPages(pdfPages.getFrom(), this.document, pdfPages);
                        kids.set(i2, pdfPages2.getPdfObject());
                        arrayList.add(pdfPages2);
                    } else {
                        kids.remove(i2);
                        i2--;
                    }
                    pdfPages.decrementCount();
                    pdfPages2.addPage(asDictionary2);
                    count2--;
                } else {
                    if (pdfPages2 == null) {
                        count = pdfPages.getFrom();
                    } else {
                        count = pdfPages2.getCount() + pdfPages2.getFrom();
                    }
                    PdfPages pdfPages3 = new PdfPages(count, count2, asDictionary2, pdfPages);
                    arrayList.add(pdfPages3);
                    count2 -= pdfPages3.getCount();
                    pdfPages2 = pdfPages3;
                }
                i2++;
            }
            this.parents.remove(iFindPageParent);
            for (int size = arrayList.size() - 1; size >= 0; size--) {
                this.parents.add(iFindPageParent, (PdfPages) arrayList.get(size));
            }
            loadPage(i, set);
            return;
        }
        int from = pdfPages.getFrom();
        for (int i4 = 0; i4 < pdfPages.getCount(); i4++) {
            PdfObject pdfObject2 = kids.get(i4, false);
            if (pdfObject2 instanceof PdfIndirectReference) {
                this.pageRefs.set(from + i4, (PdfIndirectReference) pdfObject2);
            } else {
                this.pageRefs.set(from + i4, pdfObject2.getIndirectReference());
            }
        }
    }

    private boolean internalRemovePage(int i) {
        int iFindPageParent = findPageParent(i);
        PdfPages pdfPages = this.parents.get(iFindPageParent);
        if (!pdfPages.removePage(i)) {
            return false;
        }
        if (pdfPages.getCount() == 0) {
            this.parents.remove(iFindPageParent);
            pdfPages.removeFromParent();
            iFindPageParent--;
        }
        if (this.parents.size() == 0) {
            this.root = null;
            this.parents.add(new PdfPages(0, this.document));
        } else {
            correctPdfPagesFromProperty(iFindPageParent + 1, -1);
        }
        this.pageRefs.remove(i);
        this.pages.remove(i);
        return true;
    }

    private int findPageParent(int i) {
        int size = this.parents.size() - 1;
        int i2 = 0;
        while (i2 != size) {
            int i3 = ((i2 + size) + 1) / 2;
            if (this.parents.get(i3).compareTo(i) > 0) {
                size = i3 - 1;
            } else {
                i2 = i3;
            }
        }
        return i2;
    }

    private void correctPdfPagesFromProperty(int i, int i2) {
        while (i < this.parents.size()) {
            if (this.parents.get(i) != null) {
                this.parents.get(i).correctFrom(i2);
            }
            i++;
        }
    }
}
