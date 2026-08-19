package com.itextpdf.kernel.pdf;

import com.itextpdf.commons.utils.MessageFormatUtil;
import com.itextpdf.kernel.exceptions.KernelExceptionMessageConstant;
import com.itextpdf.kernel.exceptions.PdfException;
import com.itextpdf.kernel.logs.KernelLogMessageConstant;
import com.itextpdf.kernel.pdf.PdfReader;
import com.itextpdf.kernel.pdf.action.PdfAction;
import com.itextpdf.kernel.pdf.collection.PdfCollection;
import com.itextpdf.kernel.pdf.layer.PdfOCProperties;
import com.itextpdf.kernel.pdf.navigation.PdfDestination;
import com.itextpdf.kernel.pdf.navigation.PdfExplicitDestination;
import com.itextpdf.kernel.pdf.navigation.PdfStringDestination;
import com.itextpdf.kernel.utils.NullCopyFilter;
import com.itextpdf.p017io.logs.IoLogMessageConstant;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

/* JADX INFO: loaded from: classes6.dex */
public class PdfCatalog extends PdfObjectWrapper<PdfDictionary> {
    private static final String ROOT_OUTLINE_TITLE = "Outlines";
    protected Map<PdfName, PdfNameTree> nameTrees;
    protected PdfOCProperties ocProperties;
    private boolean outlineMode;
    private PdfOutline outlines;
    protected PdfNumTree pageLabels;
    private final PdfPagesTree pageTree;
    private final Map<PdfObject, List<PdfOutline>> pagesWithOutlines;
    private static final Logger LOGGER = LoggerFactory.getLogger((Class<?>) PdfCatalog.class);
    private static final Set<PdfName> PAGE_MODES = Collections.unmodifiableSet(new HashSet(Arrays.asList(PdfName.UseNone, PdfName.UseOutlines, PdfName.UseThumbs, PdfName.FullScreen, PdfName.UseOC, PdfName.UseAttachments)));
    private static final Set<PdfName> PAGE_LAYOUTS = Collections.unmodifiableSet(new HashSet(Arrays.asList(PdfName.SinglePage, PdfName.OneColumn, PdfName.TwoColumnLeft, PdfName.TwoColumnRight, PdfName.TwoPageLeft, PdfName.TwoPageRight)));

    @Override // com.itextpdf.kernel.pdf.PdfObjectWrapper
    protected boolean isWrappedObjectMustBeIndirect() {
        return true;
    }

    protected PdfCatalog(PdfDictionary pdfDictionary) {
        super(pdfDictionary);
        this.nameTrees = new LinkedHashMap();
        this.pagesWithOutlines = new HashMap();
        if (pdfDictionary == null) {
            throw new PdfException(KernelExceptionMessageConstant.DOCUMENT_HAS_NO_PDF_CATALOG_OBJECT);
        }
        ensureObjectIsAddedToDocument(pdfDictionary);
        getPdfObject().put(PdfName.Type, PdfName.Catalog);
        setForbidRelease();
        this.pageTree = new PdfPagesTree(this);
    }

    protected PdfCatalog(PdfDocument pdfDocument) {
        this((PdfDictionary) new PdfDictionary().makeIndirect(pdfDocument));
    }

    public PdfOCProperties getOCProperties(boolean z) {
        PdfOCProperties pdfOCProperties = this.ocProperties;
        if (pdfOCProperties != null) {
            return pdfOCProperties;
        }
        PdfDictionary asDictionary = getPdfObject().getAsDictionary(PdfName.OCProperties);
        if (asDictionary != null) {
            if (getDocument().getWriter() != null) {
                asDictionary.makeIndirect(getDocument());
            }
            this.ocProperties = new PdfOCProperties(asDictionary);
        } else if (z) {
            this.ocProperties = new PdfOCProperties(getDocument());
        }
        return this.ocProperties;
    }

    public PdfDocument getDocument() {
        return getPdfObject().getIndirectReference().getDocument();
    }

    @Override // com.itextpdf.kernel.pdf.PdfObjectWrapper
    public void flush() {
        LoggerFactory.getLogger((Class<?>) PdfDocument.class).warn("PdfCatalog cannot be flushed manually");
    }

    public PdfCatalog setOpenAction(PdfDestination pdfDestination) {
        return put(PdfName.OpenAction, pdfDestination.getPdfObject());
    }

    public PdfCatalog setOpenAction(PdfAction pdfAction) {
        return put(PdfName.OpenAction, pdfAction.getPdfObject());
    }

    public PdfCatalog setAdditionalAction(PdfName pdfName, PdfAction pdfAction) {
        PdfAction.setAdditionalAction(this, pdfName, pdfAction);
        return this;
    }

    public PdfName getPageMode() {
        return getPdfObject().getAsName(PdfName.PageMode);
    }

    public PdfCatalog setPageMode(PdfName pdfName) {
        return PAGE_MODES.contains(pdfName) ? put(PdfName.PageMode, pdfName) : this;
    }

    public PdfName getPageLayout() {
        return getPdfObject().getAsName(PdfName.PageLayout);
    }

    public PdfCatalog setPageLayout(PdfName pdfName) {
        return PAGE_LAYOUTS.contains(pdfName) ? put(PdfName.PageLayout, pdfName) : this;
    }

    public PdfViewerPreferences getViewerPreferences() {
        PdfDictionary asDictionary = getPdfObject().getAsDictionary(PdfName.ViewerPreferences);
        if (asDictionary != null) {
            return new PdfViewerPreferences(asDictionary);
        }
        return null;
    }

    public PdfCatalog setViewerPreferences(PdfViewerPreferences pdfViewerPreferences) {
        return put(PdfName.ViewerPreferences, pdfViewerPreferences.getPdfObject());
    }

    public PdfNameTree getNameTree(PdfName pdfName) {
        PdfNameTree pdfNameTree = this.nameTrees.get(pdfName);
        if (pdfNameTree != null) {
            return pdfNameTree;
        }
        PdfNameTree pdfNameTree2 = new PdfNameTree(this, pdfName);
        this.nameTrees.put(pdfName, pdfNameTree2);
        return pdfNameTree2;
    }

    public PdfNumTree getPageLabelsTree(boolean z) {
        if (this.pageLabels == null && (getPdfObject().containsKey(PdfName.PageLabels) || z)) {
            this.pageLabels = new PdfNumTree(this, PdfName.PageLabels);
        }
        return this.pageLabels;
    }

    public PdfString getLang() {
        return getPdfObject().getAsString(PdfName.Lang);
    }

    public void setLang(PdfString pdfString) {
        put(PdfName.Lang, pdfString);
    }

    public void addDeveloperExtension(PdfDeveloperExtension pdfDeveloperExtension) {
        PdfDictionary asDictionary = ((PdfDictionary) getPdfObject()).getAsDictionary(PdfName.Extensions);
        if (asDictionary == null) {
            asDictionary = new PdfDictionary();
            put(PdfName.Extensions, asDictionary);
        } else {
            PdfDictionary asDictionary2 = asDictionary.getAsDictionary(pdfDeveloperExtension.getPrefix());
            if (asDictionary2 != null && (pdfDeveloperExtension.getBaseVersion().compareTo(asDictionary2.getAsName(PdfName.BaseVersion)) < 0 || pdfDeveloperExtension.getExtensionLevel() - asDictionary2.getAsNumber(PdfName.ExtensionLevel).intValue() <= 0)) {
                return;
            }
        }
        asDictionary.put(pdfDeveloperExtension.getPrefix(), pdfDeveloperExtension.getDeveloperExtensions());
    }

    public PdfCollection getCollection() {
        PdfDictionary asDictionary = getPdfObject().getAsDictionary(PdfName.Collection);
        if (asDictionary != null) {
            return new PdfCollection(asDictionary);
        }
        return null;
    }

    public PdfCatalog setCollection(PdfCollection pdfCollection) {
        put(PdfName.Collection, pdfCollection.getPdfObject());
        return this;
    }

    public PdfCatalog put(PdfName pdfName, PdfObject pdfObject) {
        getPdfObject().put(pdfName, pdfObject);
        setModified();
        return this;
    }

    public PdfCatalog remove(PdfName pdfName) {
        getPdfObject().remove(pdfName);
        setModified();
        return this;
    }

    protected boolean isOCPropertiesMayHaveChanged() {
        return this.ocProperties != null;
    }

    PdfPagesTree getPageTree() {
        return this.pageTree;
    }

    Map<PdfObject, List<PdfOutline>> getPagesWithOutlines() {
        return this.pagesWithOutlines;
    }

    void addNamedDestination(String str, PdfObject pdfObject) {
        addNameToNameTree(str, pdfObject, PdfName.Dests);
    }

    void addNameToNameTree(String str, PdfObject pdfObject, PdfName pdfName) {
        getNameTree(pdfName).addEntry(str, pdfObject);
    }

    PdfOutline getOutlines(boolean z) {
        PdfOutline pdfOutline = this.outlines;
        if (pdfOutline != null && !z) {
            return pdfOutline;
        }
        if (pdfOutline != null) {
            pdfOutline.clear();
            this.pagesWithOutlines.clear();
        }
        this.outlineMode = true;
        PdfNameTree nameTree = getNameTree(PdfName.Dests);
        PdfDictionary asDictionary = getPdfObject().getAsDictionary(PdfName.Outlines);
        if (asDictionary == null) {
            if (getDocument().getWriter() == null) {
                return null;
            }
            this.outlines = new PdfOutline(getDocument());
        } else {
            constructOutlines(asDictionary, nameTree.getNames());
        }
        return this.outlines;
    }

    boolean hasOutlines() {
        return getPdfObject().containsKey(PdfName.Outlines);
    }

    boolean isOutlineMode() {
        return this.outlineMode;
    }

    void removeOutlines(PdfPage pdfPage) {
        if (getDocument().getWriter() != null && hasOutlines()) {
            getOutlines(false);
            if (this.pagesWithOutlines.size() <= 0 || this.pagesWithOutlines.get(pdfPage.getPdfObject()) == null) {
                return;
            }
            Iterator<PdfOutline> it = this.pagesWithOutlines.get(pdfPage.getPdfObject()).iterator();
            while (it.hasNext()) {
                it.next().removeOutline();
            }
        }
    }

    void addRootOutline(PdfOutline pdfOutline) {
        if (this.outlineMode && this.pagesWithOutlines.size() == 0) {
            put(PdfName.Outlines, pdfOutline.getContent());
        }
    }

    void constructOutlines(PdfDictionary pdfDictionary, Map<String, PdfObject> map) {
        if (pdfDictionary == null) {
            return;
        }
        PdfReader reader = getDocument().getReader();
        boolean z = reader == null || PdfReader.StrictnessLevel.CONSERVATIVE.isStricter(reader.getStrictnessLevel());
        PdfDictionary asDictionary = pdfDictionary.getAsDictionary(PdfName.First);
        PdfOutline pdfOutline = new PdfOutline(ROOT_OUTLINE_TITLE, pdfDictionary, getDocument());
        this.outlines = pdfOutline;
        HashMap map2 = new HashMap();
        HashSet hashSet = new HashSet();
        while (asDictionary != null) {
            if (asDictionary.getAsDictionary(PdfName.Parent) == null && !z) {
                throw new PdfException(MessageFormatUtil.format(KernelExceptionMessageConstant.CORRUPTED_OUTLINE_NO_PARENT_ENTRY, asDictionary.indirectReference));
            }
            PdfString asString = asDictionary.getAsString(PdfName.Title);
            if (asString == null) {
                throw new PdfException(MessageFormatUtil.format(KernelExceptionMessageConstant.CORRUPTED_OUTLINE_NO_TITLE_ENTRY, asDictionary.indirectReference));
            }
            PdfOutline pdfOutline2 = new PdfOutline(asString.toUnicodeString(), asDictionary, pdfOutline);
            hashSet.add(asDictionary);
            addOutlineToPage(pdfOutline2, asDictionary, map);
            pdfOutline.getAllChildren().add(pdfOutline2);
            PdfDictionary asDictionary2 = asDictionary.getAsDictionary(PdfName.First);
            asDictionary = asDictionary.getAsDictionary(PdfName.Next);
            if (asDictionary2 != null) {
                if (hashSet.contains(asDictionary2)) {
                    if (!z) {
                        throw new PdfException(MessageFormatUtil.format(KernelExceptionMessageConstant.CORRUPTED_OUTLINE_DICTIONARY_HAS_INFINITE_LOOP, asDictionary2));
                    }
                    LOGGER.warn(MessageFormatUtil.format(KernelLogMessageConstant.CORRUPTED_OUTLINE_DICTIONARY_HAS_INFINITE_LOOP, asDictionary2));
                    return;
                } else {
                    map2.put(pdfOutline, asDictionary);
                    asDictionary = asDictionary2;
                    pdfOutline = pdfOutline2;
                }
            } else if (asDictionary == null) {
                asDictionary = null;
                while (asDictionary == null && pdfOutline != null) {
                    pdfOutline = pdfOutline.getParent();
                    if (pdfOutline != null) {
                        asDictionary = (PdfDictionary) map2.get(pdfOutline);
                    }
                }
            } else if (hashSet.contains(asDictionary)) {
                if (!z) {
                    throw new PdfException(MessageFormatUtil.format(KernelExceptionMessageConstant.CORRUPTED_OUTLINE_DICTIONARY_HAS_INFINITE_LOOP, asDictionary));
                }
                LOGGER.warn(MessageFormatUtil.format(KernelLogMessageConstant.CORRUPTED_OUTLINE_DICTIONARY_HAS_INFINITE_LOOP, asDictionary));
                return;
            }
        }
    }

    PdfDestination copyDestination(PdfObject pdfObject, Map<PdfPage, PdfPage> map, PdfDocument pdfDocument) {
        if (pdfObject == null) {
            return null;
        }
        if (pdfObject.isArray()) {
            PdfObject pdfObject2 = ((PdfArray) pdfObject).get(0);
            Iterator<PdfPage> it = map.keySet().iterator();
            while (it.hasNext()) {
                if (it.next().getPdfObject() == pdfObject2) {
                    return new PdfExplicitDestination((PdfArray) pdfObject.copyTo(pdfDocument, false, NullCopyFilter.getInstance()));
                }
            }
            return null;
        }
        if (!pdfObject.isString() && !pdfObject.isName()) {
            return null;
        }
        Map<String, PdfObject> names = getNameTree(PdfName.Dests).getNames();
        String unicodeString = pdfObject.isString() ? ((PdfString) pdfObject).toUnicodeString() : ((PdfName) pdfObject).getValue();
        PdfArray pdfArray = (PdfArray) names.get(unicodeString);
        if (pdfArray == null) {
            return null;
        }
        PdfObject pdfObject3 = pdfArray.get(0);
        if (pdfObject3 instanceof PdfNumber) {
            pdfObject3 = getDocument().getPage(((PdfNumber) pdfObject3).intValue() + 1).getPdfObject();
        }
        for (PdfPage pdfPage : map.keySet()) {
            if (pdfPage.getPdfObject() == pdfObject3) {
                PdfStringDestination pdfStringDestination = new PdfStringDestination(unicodeString);
                if (isEqualSameNameDestExist(map, pdfDocument, unicodeString, pdfArray, pdfPage)) {
                    return pdfStringDestination;
                }
                PdfArray pdfArray2 = (PdfArray) pdfArray.copyTo(pdfDocument, false);
                pdfArray2.set(0, map.get(pdfPage).getPdfObject());
                pdfDocument.addNamedDestination(unicodeString, pdfArray2);
                return pdfStringDestination;
            }
        }
        return null;
    }

    PdfDictionary fillAndGetOcPropertiesDictionary() {
        PdfOCProperties pdfOCProperties = this.ocProperties;
        if (pdfOCProperties != null) {
            pdfOCProperties.fillDictionary(false);
            getPdfObject().put(PdfName.OCProperties, this.ocProperties.getPdfObject());
            this.ocProperties = null;
        }
        if (getPdfObject().getAsDictionary(PdfName.OCProperties) == null) {
            PdfDictionary pdfDictionary = new PdfDictionary();
            pdfDictionary.makeIndirect(getDocument());
            getDocument().getCatalog().getPdfObject().put(PdfName.OCProperties, pdfDictionary);
        }
        return getPdfObject().getAsDictionary(PdfName.OCProperties);
    }

    private boolean isEqualSameNameDestExist(Map<PdfPage, PdfPage> map, PdfDocument pdfDocument, String str, PdfArray pdfArray, PdfPage pdfPage) {
        PdfArray pdfArray2 = (PdfArray) pdfDocument.getCatalog().getNameTree(PdfName.Dests).getNames().get(str);
        if (pdfArray2 == null || pdfArray2.getAsDictionary(0) == null) {
            return false;
        }
        boolean z = pdfArray2.getAsDictionary(0).getIndirectReference().equals(map.get(pdfPage).getPdfObject().getIndirectReference()) && pdfArray2.size() == pdfArray.size();
        if (z) {
            for (int i = 1; i < pdfArray2.size(); i++) {
                z = z && pdfArray2.get(i).equals(pdfArray.get(i));
            }
        }
        return z;
    }

    private void addOutlineToPage(PdfOutline pdfOutline, Map<String, PdfObject> map) {
        PdfObject destinationPage = pdfOutline.getDestination().getDestinationPage(map);
        if (destinationPage instanceof PdfNumber) {
            int iIntValue = ((PdfNumber) destinationPage).intValue() + 1;
            try {
                destinationPage = getDocument().getPage(iIntValue).getPdfObject();
            } catch (IndexOutOfBoundsException unused) {
                LOGGER.warn(MessageFormatUtil.format(IoLogMessageConstant.OUTLINE_DESTINATION_PAGE_NUMBER_IS_OUT_OF_BOUNDS, Integer.valueOf(iIntValue)));
                destinationPage = null;
            }
        }
        if (destinationPage != null) {
            List<PdfOutline> arrayList = this.pagesWithOutlines.get(destinationPage);
            if (arrayList == null) {
                arrayList = new ArrayList<>();
                this.pagesWithOutlines.put(destinationPage, arrayList);
            }
            arrayList.add(pdfOutline);
        }
    }

    private void addOutlineToPage(PdfOutline pdfOutline, PdfDictionary pdfDictionary, Map<String, PdfObject> map) {
        PdfObject pdfObject;
        PdfObject pdfObject2 = pdfDictionary.get(PdfName.Dest);
        if (pdfObject2 != null) {
            pdfOutline.setDestination(PdfDestination.makeDestination(pdfObject2));
            addOutlineToPage(pdfOutline, map);
            return;
        }
        PdfDictionary asDictionary = pdfDictionary.getAsDictionary(PdfName.f2967A);
        if (asDictionary != null) {
            if (!PdfName.GoTo.equals(asDictionary.getAsName(PdfName.f3065S)) || (pdfObject = asDictionary.get(PdfName.f2992D)) == null) {
                return;
            }
            pdfOutline.setDestination(PdfDestination.makeDestination(pdfObject));
            addOutlineToPage(pdfOutline, map);
        }
    }
}
