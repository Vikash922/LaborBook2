package com.itextpdf.kernel.pdf;

import com.itextpdf.commons.utils.MessageFormatUtil;
import com.itextpdf.kernel.events.PdfDocumentEvent;
import com.itextpdf.kernel.exceptions.KernelExceptionMessageConstant;
import com.itextpdf.kernel.exceptions.PdfException;
import com.itextpdf.kernel.geom.PageSize;
import com.itextpdf.kernel.geom.Rectangle;
import com.itextpdf.kernel.pdf.action.PdfAction;
import com.itextpdf.kernel.pdf.annot.PdfAnnotation;
import com.itextpdf.kernel.pdf.filespec.PdfFileSpec;
import com.itextpdf.kernel.pdf.tagging.StandardRoles;
import com.itextpdf.kernel.pdf.tagutils.TagTreePointer;
import com.itextpdf.kernel.pdf.xobject.PdfFormXObject;
import com.itextpdf.kernel.pdf.xobject.PdfImageXObject;
import com.itextpdf.kernel.utils.ICopyFilter;
import com.itextpdf.kernel.utils.NullCopyFilter;
import com.itextpdf.kernel.xmp.XMPException;
import com.itextpdf.kernel.xmp.XMPMeta;
import com.itextpdf.kernel.xmp.XMPMetaFactory;
import com.itextpdf.kernel.xmp.options.SerializeOptions;
import com.itextpdf.p017io.logs.IoLogMessageConstant;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

/* JADX INFO: loaded from: classes6.dex */
public class PdfPage extends PdfObjectWrapper<PdfDictionary> {
    private static final List<PdfName> PAGE_EXCLUDED_KEYS;
    private static final List<PdfName> XOBJECT_EXCLUDED_KEYS;
    private boolean ignorePageRotationForContent;
    private int mcid;
    private boolean pageRotationInverseMatrixWritten;
    PdfPages parentPages;
    private PdfResources resources;

    @Override // com.itextpdf.kernel.pdf.PdfObjectWrapper
    protected boolean isWrappedObjectMustBeIndirect() {
        return true;
    }

    static {
        ArrayList arrayList = new ArrayList(Arrays.asList(PdfName.Parent, PdfName.Annots, PdfName.StructParents, PdfName.f2973B));
        PAGE_EXCLUDED_KEYS = arrayList;
        ArrayList arrayList2 = new ArrayList(Arrays.asList(PdfName.MediaBox, PdfName.CropBox, PdfName.TrimBox, PdfName.Contents));
        XOBJECT_EXCLUDED_KEYS = arrayList2;
        arrayList2.addAll(arrayList);
    }

    protected PdfPage(PdfDictionary pdfDictionary) {
        super(pdfDictionary);
        this.resources = null;
        this.mcid = -1;
        this.ignorePageRotationForContent = false;
        this.pageRotationInverseMatrixWritten = false;
        setForbidRelease();
        ensureObjectIsAddedToDocument(pdfDictionary);
    }

    protected PdfPage(PdfDocument pdfDocument, PageSize pageSize) {
        this((PdfDictionary) new PdfDictionary().makeIndirect(pdfDocument));
        getPdfObject().put(PdfName.Contents, (PdfStream) new PdfStream().makeIndirect(pdfDocument));
        getPdfObject().put(PdfName.Type, PdfName.Page);
        getPdfObject().put(PdfName.MediaBox, new PdfArray(pageSize));
        getPdfObject().put(PdfName.TrimBox, new PdfArray(pageSize));
        if (pdfDocument.isTagged()) {
            setTabOrder(PdfName.f3065S);
        }
    }

    protected PdfPage(PdfDocument pdfDocument) {
        this(pdfDocument, pdfDocument.getDefaultPageSize());
    }

    public Rectangle getPageSize() {
        return getMediaBox();
    }

    public Rectangle getPageSizeWithRotation() {
        PageSize pageSize = new PageSize(getPageSize());
        for (int rotation = getRotation(); rotation > 0; rotation -= 90) {
            pageSize = pageSize.rotate();
        }
        return pageSize;
    }

    public int getRotation() {
        PdfNumber asNumber = getPdfObject().getAsNumber(PdfName.Rotate);
        if (asNumber == null) {
            asNumber = (PdfNumber) getInheritedValue(PdfName.Rotate, 8);
        }
        int iIntValue = (asNumber != null ? asNumber.intValue() : 0) % 360;
        return iIntValue < 0 ? iIntValue + 360 : iIntValue;
    }

    public PdfPage setRotation(int i) {
        put(PdfName.Rotate, new PdfNumber(i));
        return this;
    }

    public PdfStream getContentStream(int i) {
        int contentStreamCount = getContentStreamCount();
        if (i >= contentStreamCount || i < 0) {
            throw new IndexOutOfBoundsException(MessageFormatUtil.format("Index: {0}, Size: {1}", Integer.valueOf(i), Integer.valueOf(contentStreamCount)));
        }
        PdfObject pdfObject = getPdfObject().get(PdfName.Contents);
        if (pdfObject instanceof PdfStream) {
            return (PdfStream) pdfObject;
        }
        if (pdfObject instanceof PdfArray) {
            return ((PdfArray) pdfObject).getAsStream(i);
        }
        return null;
    }

    public int getContentStreamCount() {
        PdfObject pdfObject = getPdfObject().get(PdfName.Contents);
        if (pdfObject instanceof PdfStream) {
            return 1;
        }
        if (pdfObject instanceof PdfArray) {
            return ((PdfArray) pdfObject).size();
        }
        return 0;
    }

    public PdfStream getFirstContentStream() {
        if (getContentStreamCount() > 0) {
            return getContentStream(0);
        }
        return null;
    }

    public PdfStream getLastContentStream() {
        int contentStreamCount = getContentStreamCount();
        if (contentStreamCount > 0) {
            return getContentStream(contentStreamCount - 1);
        }
        return null;
    }

    public PdfStream newContentStreamBefore() {
        return newContentStream(true);
    }

    public PdfStream newContentStreamAfter() {
        return newContentStream(false);
    }

    public PdfResources getResources() {
        return getResources(true);
    }

    PdfResources getResources(boolean z) {
        if (this.resources == null && z) {
            initResources(true);
        }
        return this.resources;
    }

    PdfDictionary initResources(boolean z) {
        PdfDictionary asDictionary = getPdfObject().getAsDictionary(PdfName.Resources);
        boolean z2 = false;
        if (asDictionary == null && (asDictionary = (PdfDictionary) getInheritedValue(PdfName.Resources, 3)) != null) {
            z2 = true;
        }
        if (asDictionary == null) {
            asDictionary = new PdfDictionary();
            getPdfObject().put(PdfName.Resources, asDictionary);
        }
        if (z) {
            PdfResources pdfResources = new PdfResources(asDictionary);
            this.resources = pdfResources;
            pdfResources.setReadOnly(z2);
        }
        return asDictionary;
    }

    public PdfPage setResources(PdfResources pdfResources) {
        put(PdfName.Resources, pdfResources.getPdfObject());
        this.resources = pdfResources;
        return this;
    }

    public PdfPage setXmpMetadata(byte[] bArr) throws IOException {
        PdfStream pdfStream = (PdfStream) new PdfStream().makeIndirect(getDocument());
        pdfStream.getOutputStream().write(bArr);
        pdfStream.put(PdfName.Type, PdfName.Metadata);
        pdfStream.put(PdfName.Subtype, PdfName.XML);
        put(PdfName.Metadata, pdfStream);
        return this;
    }

    public PdfPage setXmpMetadata(XMPMeta xMPMeta, SerializeOptions serializeOptions) throws XMPException, IOException {
        return setXmpMetadata(XMPMetaFactory.serializeToBuffer(xMPMeta, serializeOptions));
    }

    public PdfPage setXmpMetadata(XMPMeta xMPMeta) throws XMPException, IOException {
        SerializeOptions serializeOptions = new SerializeOptions();
        serializeOptions.setPadding(2000);
        return setXmpMetadata(xMPMeta, serializeOptions);
    }

    public PdfStream getXmpMetadata() {
        return getPdfObject().getAsStream(PdfName.Metadata);
    }

    public PdfPage copyTo(PdfDocument pdfDocument) {
        return copyTo(pdfDocument, null);
    }

    public PdfPage copyTo(PdfDocument pdfDocument, IPdfPageExtraCopier iPdfPageExtraCopier) {
        DestinationResolverCopyFilter destinationResolverCopyFilter = new DestinationResolverCopyFilter(getDocument(), pdfDocument);
        PdfPage pdfPageCreatePdfPage = getDocument().getPageFactory().createPdfPage(getPdfObject().copyTo(pdfDocument, PAGE_EXCLUDED_KEYS, true, destinationResolverCopyFilter));
        copyInheritedProperties(pdfPageCreatePdfPage, pdfDocument, NullCopyFilter.getInstance());
        copyAnnotations(pdfDocument, pdfPageCreatePdfPage, destinationResolverCopyFilter);
        if (iPdfPageExtraCopier != null) {
            iPdfPageExtraCopier.copy(this, pdfPageCreatePdfPage);
        } else if (!pdfDocument.getWriter().isUserWarnedAboutAcroFormCopying && getDocument().hasAcroForm()) {
            LoggerFactory.getLogger((Class<?>) PdfPage.class).warn(IoLogMessageConstant.SOURCE_DOCUMENT_HAS_ACROFORM_DICTIONARY);
            pdfDocument.getWriter().isUserWarnedAboutAcroFormCopying = true;
        }
        return pdfPageCreatePdfPage;
    }

    public PdfFormXObject copyAsFormXObject(PdfDocument pdfDocument) throws IOException {
        PdfFormXObject pdfFormXObject = new PdfFormXObject(getCropBox());
        for (PdfName pdfName : getPdfObject().keySet()) {
            if (!XOBJECT_EXCLUDED_KEYS.contains(pdfName)) {
                PdfObject pdfObject = getPdfObject().get(pdfName);
                if (!pdfFormXObject.getPdfObject().containsKey(pdfName)) {
                    pdfFormXObject.getPdfObject().put(pdfName, pdfObject.copyTo(pdfDocument, false, NullCopyFilter.getInstance()));
                }
            }
        }
        pdfFormXObject.getPdfObject().getOutputStream().write(getContentBytes());
        if (!pdfFormXObject.getPdfObject().containsKey(PdfName.Resources)) {
            pdfFormXObject.getPdfObject().put(PdfName.Resources, getResources().getPdfObject().copyTo(pdfDocument, true, (ICopyFilter) NullCopyFilter.getInstance()));
        }
        return pdfFormXObject;
    }

    public PdfDocument getDocument() {
        if (getPdfObject().getIndirectReference() != null) {
            return getPdfObject().getIndirectReference().getDocument();
        }
        return null;
    }

    @Override // com.itextpdf.kernel.pdf.PdfObjectWrapper
    public void flush() {
        flush(false);
    }

    public void flush(boolean z) {
        if (isFlushed()) {
            return;
        }
        getDocument().dispatchEvent(new PdfDocumentEvent(PdfDocumentEvent.END_PAGE, this));
        if (getDocument().isTagged() && !getDocument().getStructTreeRoot().isFlushed()) {
            tryFlushPageTags();
        }
        PdfResources pdfResources = this.resources;
        if (pdfResources == null) {
            initResources(false);
        } else if (pdfResources.isModified() && !this.resources.isReadOnly()) {
            put(PdfName.Resources, this.resources.getPdfObject());
        }
        if (z) {
            getDocument().checkIsoConformance(this, IsoKey.PAGE);
            flushResourcesContentStreams();
        }
        PdfArray annots = getAnnots(false);
        if (annots != null && !annots.isFlushed()) {
            for (int i = 0; i < annots.size(); i++) {
                PdfObject pdfObject = annots.get(i);
                if (pdfObject != null) {
                    pdfObject.makeIndirect(getDocument()).flush();
                }
            }
        }
        PdfStream asStream = getPdfObject().getAsStream(PdfName.Thumb);
        if (asStream != null) {
            asStream.flush();
        }
        PdfObject pdfObject2 = getPdfObject().get(PdfName.Contents);
        if (pdfObject2 != null && !pdfObject2.isFlushed()) {
            int contentStreamCount = getContentStreamCount();
            for (int i2 = 0; i2 < contentStreamCount; i2++) {
                PdfStream contentStream = getContentStream(i2);
                if (contentStream != null) {
                    contentStream.flush(false);
                }
            }
        }
        releaseInstanceFields();
        super.flush();
    }

    public Rectangle getMediaBox() {
        PdfArray asArray = getPdfObject().getAsArray(PdfName.MediaBox);
        if (asArray == null) {
            asArray = (PdfArray) getInheritedValue(PdfName.MediaBox, 1);
        }
        if (asArray == null) {
            throw new PdfException(KernelExceptionMessageConstant.CANNOT_RETRIEVE_MEDIA_BOX_ATTRIBUTE);
        }
        int size = asArray.size();
        if (size != 4) {
            if (size > 4) {
                Logger logger = LoggerFactory.getLogger((Class<?>) PdfPage.class);
                if (logger.isErrorEnabled()) {
                    logger.error(MessageFormatUtil.format(IoLogMessageConstant.WRONG_MEDIABOX_SIZE_TOO_MANY_ARGUMENTS, Integer.valueOf(size)));
                }
            }
            if (size < 4) {
                throw new PdfException(KernelExceptionMessageConstant.WRONG_MEDIA_BOX_SIZE_TOO_FEW_ARGUMENTS).setMessageParams(Integer.valueOf(asArray.size()));
            }
        }
        PdfNumber asNumber = asArray.getAsNumber(0);
        PdfNumber asNumber2 = asArray.getAsNumber(1);
        PdfNumber asNumber3 = asArray.getAsNumber(2);
        PdfNumber asNumber4 = asArray.getAsNumber(3);
        if (asNumber == null || asNumber2 == null || asNumber3 == null || asNumber4 == null) {
            throw new PdfException(KernelExceptionMessageConstant.INVALID_MEDIA_BOX_VALUE);
        }
        return new Rectangle(Math.min(asNumber.floatValue(), asNumber3.floatValue()), Math.min(asNumber2.floatValue(), asNumber4.floatValue()), Math.abs(asNumber3.floatValue() - asNumber.floatValue()), Math.abs(asNumber4.floatValue() - asNumber2.floatValue()));
    }

    public PdfPage setMediaBox(Rectangle rectangle) {
        put(PdfName.MediaBox, new PdfArray(rectangle));
        return this;
    }

    public Rectangle getCropBox() {
        PdfArray asArray = getPdfObject().getAsArray(PdfName.CropBox);
        if (asArray == null && (asArray = (PdfArray) getInheritedValue(PdfName.CropBox, 1)) == null) {
            return getMediaBox();
        }
        return asArray.toRectangle();
    }

    public PdfPage setCropBox(Rectangle rectangle) {
        put(PdfName.CropBox, new PdfArray(rectangle));
        return this;
    }

    public PdfPage setBleedBox(Rectangle rectangle) {
        put(PdfName.BleedBox, new PdfArray(rectangle));
        return this;
    }

    public Rectangle getBleedBox() {
        Rectangle asRectangle = getPdfObject().getAsRectangle(PdfName.BleedBox);
        return asRectangle == null ? getCropBox() : asRectangle;
    }

    public PdfPage setArtBox(Rectangle rectangle) {
        if (getPdfObject().getAsRectangle(PdfName.TrimBox) != null) {
            getPdfObject().remove(PdfName.TrimBox);
            LoggerFactory.getLogger((Class<?>) PdfPage.class).warn(IoLogMessageConstant.ONLY_ONE_OF_ARTBOX_OR_TRIMBOX_CAN_EXIST_IN_THE_PAGE);
        }
        put(PdfName.ArtBox, new PdfArray(rectangle));
        return this;
    }

    public Rectangle getArtBox() {
        Rectangle asRectangle = getPdfObject().getAsRectangle(PdfName.ArtBox);
        return asRectangle == null ? getCropBox() : asRectangle;
    }

    public PdfPage setTrimBox(Rectangle rectangle) {
        if (getPdfObject().getAsRectangle(PdfName.ArtBox) != null) {
            getPdfObject().remove(PdfName.ArtBox);
            LoggerFactory.getLogger((Class<?>) PdfPage.class).warn(IoLogMessageConstant.ONLY_ONE_OF_ARTBOX_OR_TRIMBOX_CAN_EXIST_IN_THE_PAGE);
        }
        put(PdfName.TrimBox, new PdfArray(rectangle));
        return this;
    }

    public Rectangle getTrimBox() {
        Rectangle asRectangle = getPdfObject().getAsRectangle(PdfName.TrimBox);
        return asRectangle == null ? getCropBox() : asRectangle;
    }

    public byte[] getContentBytes() {
        try {
            MemoryLimitsAwareHandler memoryLimitsAwareHandler = getDocument().memoryLimitsAwareHandler;
            long allMemoryUsedForDecompression = memoryLimitsAwareHandler == null ? -1L : memoryLimitsAwareHandler.getAllMemoryUsedForDecompression();
            MemoryLimitsAwareOutputStream memoryLimitsAwareOutputStream = new MemoryLimitsAwareOutputStream();
            int contentStreamCount = getContentStreamCount();
            for (int i = 0; i < contentStreamCount; i++) {
                byte[] streamBytes = getStreamBytes(i);
                if (memoryLimitsAwareHandler != null && allMemoryUsedForDecompression < memoryLimitsAwareHandler.getAllMemoryUsedForDecompression()) {
                    memoryLimitsAwareOutputStream.setMaxStreamSize(memoryLimitsAwareHandler.getMaxSizeOfSingleDecompressedPdfStream());
                }
                memoryLimitsAwareOutputStream.write(streamBytes);
                if (streamBytes.length != 0 && !Character.isWhitespace((char) streamBytes[streamBytes.length - 1])) {
                    memoryLimitsAwareOutputStream.write(10);
                }
            }
            return memoryLimitsAwareOutputStream.toByteArray();
        } catch (IOException e) {
            throw new PdfException(KernelExceptionMessageConstant.CANNOT_GET_CONTENT_BYTES, e, this);
        }
    }

    public byte[] getStreamBytes(int i) {
        return getContentStream(i).getBytes();
    }

    public int getNextMcid() {
        if (!getDocument().isTagged()) {
            throw new PdfException(KernelExceptionMessageConstant.MUST_BE_A_TAGGED_DOCUMENT);
        }
        if (this.mcid == -1) {
            this.mcid = getDocument().getStructTreeRoot().getNextMcidForPage(this);
        }
        int i = this.mcid;
        this.mcid = i + 1;
        return i;
    }

    public int getStructParentIndex() {
        if (getPdfObject().getAsNumber(PdfName.StructParents) != null) {
            return getPdfObject().getAsNumber(PdfName.StructParents).intValue();
        }
        return -1;
    }

    public PdfPage setAdditionalAction(PdfName pdfName, PdfAction pdfAction) {
        PdfAction.setAdditionalAction(this, pdfName, pdfAction);
        return this;
    }

    public List<PdfAnnotation> getAnnotations() {
        PdfAnnotation pdfAnnotationMakeAnnotation;
        ArrayList arrayList = new ArrayList();
        PdfArray asArray = getPdfObject().getAsArray(PdfName.Annots);
        if (asArray != null) {
            for (int i = 0; i < asArray.size(); i++) {
                PdfDictionary asDictionary = asArray.getAsDictionary(i);
                if (asDictionary != null && (pdfAnnotationMakeAnnotation = PdfAnnotation.makeAnnotation(asDictionary)) != null) {
                    boolean z = (asDictionary.getIndirectReference() == null || asDictionary.getIndirectReference().checkState((short) 8)) ? false : true;
                    arrayList.add(pdfAnnotationMakeAnnotation.setPage(this));
                    if (z) {
                        asDictionary.getIndirectReference().clearState((short) 8);
                        asDictionary.clearState((short) 128);
                    }
                }
            }
        }
        return arrayList;
    }

    public boolean containsAnnotation(PdfAnnotation pdfAnnotation) {
        Iterator<PdfAnnotation> it = getAnnotations().iterator();
        while (it.hasNext()) {
            if (it.next().getPdfObject().equals(pdfAnnotation.getPdfObject())) {
                return true;
            }
        }
        return false;
    }

    public PdfPage addAnnotation(PdfAnnotation pdfAnnotation) {
        return addAnnotation(-1, pdfAnnotation, true);
    }

    public PdfPage addAnnotation(int i, PdfAnnotation pdfAnnotation, boolean z) {
        if (getDocument().isTagged()) {
            if (z) {
                TagTreePointer autoTaggingPointer = getDocument().getTagStructureContext().getAutoTaggingPointer();
                PdfPage currentPage = autoTaggingPointer.getCurrentPage();
                autoTaggingPointer.setPageForTagging(this).addAnnotationTag(pdfAnnotation);
                if (currentPage != null) {
                    autoTaggingPointer.setPageForTagging(currentPage);
                }
            }
            if (getTabOrder() == null) {
                setTabOrder(PdfName.f3065S);
            }
        }
        PdfArray annots = getAnnots(true);
        if (i == -1) {
            annots.add(pdfAnnotation.setPage(this).getPdfObject());
        } else {
            annots.add(i, pdfAnnotation.setPage(this).getPdfObject());
        }
        if (annots.getIndirectReference() == null) {
            setModified();
        } else {
            annots.setModified();
        }
        return this;
    }

    public PdfPage removeAnnotation(PdfAnnotation pdfAnnotation) {
        TagTreePointer tagTreePointerRemoveAnnotationTag;
        PdfArray annots = getAnnots(false);
        if (annots != null) {
            annots.remove(pdfAnnotation.getPdfObject());
            if (annots.isEmpty()) {
                getPdfObject().remove(PdfName.Annots);
                setModified();
            } else if (annots.getIndirectReference() == null) {
                setModified();
            }
        }
        if (getDocument().isTagged() && (tagTreePointerRemoveAnnotationTag = getDocument().getTagStructureContext().removeAnnotationTag(pdfAnnotation)) != null) {
            boolean z = StandardRoles.ANNOT.equals(tagTreePointerRemoveAnnotationTag.getRole()) || StandardRoles.FORM.equals(tagTreePointerRemoveAnnotationTag.getRole());
            if (tagTreePointerRemoveAnnotationTag.getKidsRoles().size() == 0 && z) {
                tagTreePointerRemoveAnnotationTag.removeTag();
            }
        }
        return this;
    }

    public int getAnnotsSize() {
        PdfArray annots = getAnnots(false);
        if (annots == null) {
            return 0;
        }
        return annots.size();
    }

    public List<PdfOutline> getOutlines(boolean z) {
        getDocument().getOutlines(z);
        return getDocument().getCatalog().getPagesWithOutlines().get(getPdfObject());
    }

    public boolean isIgnorePageRotationForContent() {
        return this.ignorePageRotationForContent;
    }

    public PdfPage setIgnorePageRotationForContent(boolean z) {
        this.ignorePageRotationForContent = z;
        return this;
    }

    public PdfPage setPageLabel(PageLabelNumberingStyle pageLabelNumberingStyle, String str) {
        return setPageLabel(pageLabelNumberingStyle, str, 1);
    }

    public PdfPage setPageLabel(PageLabelNumberingStyle pageLabelNumberingStyle, String str, int i) {
        if (i < 1) {
            throw new PdfException(KernelExceptionMessageConstant.IN_A_PAGE_LABEL_THE_PAGE_NUMBERS_MUST_BE_GREATER_OR_EQUAL_TO_1);
        }
        PdfDictionary pdfDictionary = new PdfDictionary();
        if (pageLabelNumberingStyle != null) {
            int i2 = C34731.$SwitchMap$com$itextpdf$kernel$pdf$PageLabelNumberingStyle[pageLabelNumberingStyle.ordinal()];
            if (i2 == 1) {
                pdfDictionary.put(PdfName.f3065S, PdfName.f2992D);
            } else if (i2 == 2) {
                pdfDictionary.put(PdfName.f3065S, PdfName.f3056R);
            } else if (i2 == 3) {
                pdfDictionary.put(PdfName.f3065S, PdfName.f3099r);
            } else if (i2 == 4) {
                pdfDictionary.put(PdfName.f3065S, PdfName.f2967A);
            } else if (i2 == 5) {
                pdfDictionary.put(PdfName.f3065S, PdfName.f3096a);
            }
        }
        if (str != null) {
            pdfDictionary.put(PdfName.f3047P, new PdfString(str));
        }
        if (i != 1) {
            pdfDictionary.put(PdfName.f3069St, new PdfNumber(i));
        }
        getDocument().getCatalog().getPageLabelsTree(true).addEntry(getDocument().getPageNumber(this) - 1, pdfDictionary);
        return this;
    }

    /* JADX INFO: renamed from: com.itextpdf.kernel.pdf.PdfPage$1 */
    static /* synthetic */ class C34731 {
        static final /* synthetic */ int[] $SwitchMap$com$itextpdf$kernel$pdf$PageLabelNumberingStyle;

        static {
            int[] iArr = new int[PageLabelNumberingStyle.values().length];
            $SwitchMap$com$itextpdf$kernel$pdf$PageLabelNumberingStyle = iArr;
            try {
                iArr[PageLabelNumberingStyle.DECIMAL_ARABIC_NUMERALS.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$itextpdf$kernel$pdf$PageLabelNumberingStyle[PageLabelNumberingStyle.UPPERCASE_ROMAN_NUMERALS.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$itextpdf$kernel$pdf$PageLabelNumberingStyle[PageLabelNumberingStyle.LOWERCASE_ROMAN_NUMERALS.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$com$itextpdf$kernel$pdf$PageLabelNumberingStyle[PageLabelNumberingStyle.UPPERCASE_LETTERS.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$com$itextpdf$kernel$pdf$PageLabelNumberingStyle[PageLabelNumberingStyle.LOWERCASE_LETTERS.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
        }
    }

    public PdfPage setTabOrder(PdfName pdfName) {
        put(PdfName.Tabs, pdfName);
        return this;
    }

    public PdfName getTabOrder() {
        return getPdfObject().getAsName(PdfName.Tabs);
    }

    public PdfPage setThumbnailImage(PdfImageXObject pdfImageXObject) {
        return put(PdfName.Thumb, pdfImageXObject.getPdfObject());
    }

    public PdfImageXObject getThumbnailImage() {
        PdfStream asStream = getPdfObject().getAsStream(PdfName.Thumb);
        if (asStream != null) {
            return new PdfImageXObject(asStream);
        }
        return null;
    }

    public PdfPage addOutputIntent(PdfOutputIntent pdfOutputIntent) {
        if (pdfOutputIntent == null) {
            return this;
        }
        PdfArray asArray = ((PdfDictionary) getPdfObject()).getAsArray(PdfName.OutputIntents);
        if (asArray == null) {
            asArray = new PdfArray();
            put(PdfName.OutputIntents, asArray);
        }
        asArray.add(pdfOutputIntent.getPdfObject());
        return this;
    }

    public PdfPage put(PdfName pdfName, PdfObject pdfObject) {
        getPdfObject().put(pdfName, pdfObject);
        setModified();
        return this;
    }

    public boolean isPageRotationInverseMatrixWritten() {
        return this.pageRotationInverseMatrixWritten;
    }

    public void setPageRotationInverseMatrixWritten() {
        this.pageRotationInverseMatrixWritten = true;
    }

    public void addAssociatedFile(String str, PdfFileSpec pdfFileSpec) {
        if (((PdfDictionary) pdfFileSpec.getPdfObject()).get(PdfName.AFRelationship) == null) {
            LoggerFactory.getLogger((Class<?>) PdfPage.class).error(IoLogMessageConstant.ASSOCIATED_FILE_SPEC_SHALL_INCLUDE_AFRELATIONSHIP);
        }
        if (str != null) {
            getDocument().getCatalog().addNameToNameTree(str, pdfFileSpec.getPdfObject(), PdfName.EmbeddedFiles);
        }
        PdfArray asArray = ((PdfDictionary) getPdfObject()).getAsArray(PdfName.f2969AF);
        if (asArray == null) {
            asArray = new PdfArray();
            put(PdfName.f2969AF, asArray);
        }
        asArray.add(pdfFileSpec.getPdfObject());
    }

    public void addAssociatedFile(PdfFileSpec pdfFileSpec) {
        addAssociatedFile(null, pdfFileSpec);
    }

    public PdfArray getAssociatedFiles(boolean z) {
        PdfArray asArray = ((PdfDictionary) getPdfObject()).getAsArray(PdfName.f2969AF);
        if (asArray != null || !z) {
            return asArray;
        }
        PdfArray pdfArray = new PdfArray();
        put(PdfName.f2969AF, pdfArray);
        return pdfArray;
    }

    void tryFlushPageTags() {
        try {
            if (!getDocument().isClosing) {
                getDocument().getTagStructureContext().flushPageTags(this);
            }
            getDocument().getStructTreeRoot().savePageStructParentIndexIfNeeded(this);
        } catch (Exception e) {
            throw new PdfException(KernelExceptionMessageConstant.TAG_STRUCTURE_FLUSHING_FAILED_IT_MIGHT_BE_CORRUPTED, (Throwable) e);
        }
    }

    void releaseInstanceFields() {
        this.resources = null;
        this.parentPages = null;
    }

    private PdfArray getAnnots(boolean z) {
        PdfArray asArray = ((PdfDictionary) getPdfObject()).getAsArray(PdfName.Annots);
        if (asArray != null || !z) {
            return asArray;
        }
        PdfArray pdfArray = new PdfArray();
        put(PdfName.Annots, pdfArray);
        return pdfArray;
    }

    private PdfObject getInheritedValue(PdfName pdfName, int i) {
        if (this.parentPages == null) {
            this.parentPages = getDocument().getCatalog().getPageTree().findPageParent(this);
        }
        PdfObject inheritedValue = getInheritedValue(this.parentPages, pdfName);
        if (inheritedValue == null || inheritedValue.getType() != i) {
            return null;
        }
        return inheritedValue;
    }

    private static PdfObject getInheritedValue(PdfPages pdfPages, PdfName pdfName) {
        if (pdfPages == null) {
            return null;
        }
        PdfObject pdfObject = pdfPages.getPdfObject().get(pdfName);
        return pdfObject != null ? pdfObject : getInheritedValue(pdfPages.getParent(), pdfName);
    }

    private PdfStream newContentStream(boolean z) {
        PdfArray pdfArray;
        PdfObject pdfObject = ((PdfDictionary) getPdfObject()).get(PdfName.Contents);
        if (pdfObject instanceof PdfStream) {
            pdfArray = new PdfArray();
            if (pdfObject.getIndirectReference() != null) {
                pdfArray.add(pdfObject.getIndirectReference());
            } else {
                pdfArray.add(pdfObject);
            }
            put(PdfName.Contents, pdfArray);
        } else {
            pdfArray = pdfObject instanceof PdfArray ? (PdfArray) pdfObject : null;
        }
        PdfStream pdfStream = (PdfStream) new PdfStream().makeIndirect(getDocument());
        if (pdfArray != null) {
            if (z) {
                pdfArray.add(0, pdfStream);
            } else {
                pdfArray.add(pdfStream);
            }
            if (pdfArray.getIndirectReference() != null) {
                pdfArray.setModified();
            } else {
                setModified();
            }
        } else {
            put(PdfName.Contents, pdfStream);
        }
        return pdfStream;
    }

    private void copyAnnotations(PdfDocument pdfDocument, PdfPage pdfPage, ICopyFilter iCopyFilter) {
        for (PdfAnnotation pdfAnnotation : getAnnotations()) {
            if (iCopyFilter.shouldProcess(pdfPage.getPdfObject(), null, pdfAnnotation.getPdfObject())) {
                PdfAnnotation pdfAnnotationMakeAnnotation = PdfAnnotation.makeAnnotation(pdfAnnotation.getPdfObject().copyTo(pdfDocument, Arrays.asList(PdfName.f3047P, PdfName.Parent), true, iCopyFilter));
                if (PdfName.Widget.equals(pdfAnnotation.getSubtype())) {
                    rebuildFormFieldParent(pdfAnnotation.getPdfObject(), pdfAnnotationMakeAnnotation.getPdfObject(), pdfDocument);
                }
                pdfPage.addAnnotation(-1, pdfAnnotationMakeAnnotation, false);
            }
        }
    }

    private void flushResourcesContentStreams() {
        flushResourcesContentStreams(getResources().getPdfObject());
        PdfArray annots = getAnnots(false);
        if (annots == null || annots.isFlushed()) {
            return;
        }
        for (int i = 0; i < annots.size(); i++) {
            PdfDictionary asDictionary = annots.getAsDictionary(i).getAsDictionary(PdfName.f2971AP);
            if (asDictionary != null) {
                flushAppearanceStreams(asDictionary);
            }
        }
    }

    private void flushResourcesContentStreams(PdfDictionary pdfDictionary) {
        if (pdfDictionary == null || pdfDictionary.isFlushed()) {
            return;
        }
        flushWithResources(pdfDictionary.getAsDictionary(PdfName.XObject));
        flushWithResources(pdfDictionary.getAsDictionary(PdfName.Pattern));
        flushWithResources(pdfDictionary.getAsDictionary(PdfName.Shading));
    }

    private void flushWithResources(PdfDictionary pdfDictionary) {
        if (pdfDictionary == null || pdfDictionary.isFlushed()) {
            return;
        }
        for (PdfObject pdfObject : pdfDictionary.values()) {
            if (!pdfObject.isFlushed()) {
                flushResourcesContentStreams(((PdfDictionary) pdfObject).getAsDictionary(PdfName.Resources));
                flushMustBeIndirectObject(pdfObject);
            }
        }
    }

    private void flushAppearanceStreams(PdfDictionary pdfDictionary) {
        if (pdfDictionary.isFlushed()) {
            return;
        }
        for (PdfObject pdfObject : pdfDictionary.values()) {
            if (pdfObject instanceof PdfDictionary) {
                PdfDictionary pdfDictionary2 = (PdfDictionary) pdfObject;
                if (pdfDictionary2.isDictionary()) {
                    flushAppearanceStreams(pdfDictionary2);
                } else if (pdfDictionary2.isStream()) {
                    flushMustBeIndirectObject(pdfDictionary2);
                }
            }
        }
    }

    private void flushMustBeIndirectObject(PdfObject pdfObject) {
        pdfObject.makeIndirect(getDocument()).flush();
    }

    private void copyInheritedProperties(PdfPage pdfPage, PdfDocument pdfDocument, ICopyFilter iCopyFilter) {
        PdfNumber pdfNumber;
        PdfArray pdfArray;
        if (pdfPage.getPdfObject().get(PdfName.Resources) == null) {
            pdfPage.getPdfObject().put(PdfName.Resources, pdfDocument.getWriter().copyObject(getResources().getPdfObject(), pdfDocument, false, iCopyFilter));
        }
        if (pdfPage.getPdfObject().get(PdfName.MediaBox) == null) {
            pdfPage.setMediaBox(getMediaBox());
        }
        if (pdfPage.getPdfObject().get(PdfName.CropBox) == null && (pdfArray = (PdfArray) getInheritedValue(PdfName.CropBox, 1)) != null) {
            pdfPage.put(PdfName.CropBox, pdfArray.copyTo(pdfDocument));
        }
        if (pdfPage.getPdfObject().get(PdfName.Rotate) != null || (pdfNumber = (PdfNumber) getInheritedValue(PdfName.Rotate, 8)) == null) {
            return;
        }
        pdfPage.put(PdfName.Rotate, pdfNumber.copyTo(pdfDocument));
    }

    private void rebuildFormFieldParent(PdfDictionary pdfDictionary, PdfDictionary pdfDictionary2, PdfDocument pdfDocument) {
        PdfDictionary asDictionary;
        if (pdfDictionary2.containsKey(PdfName.Parent) || (asDictionary = pdfDictionary.getAsDictionary(PdfName.Parent)) == null) {
            return;
        }
        PdfDictionary pdfDictionaryCopyTo = asDictionary.copyTo(pdfDocument, Arrays.asList(PdfName.f3047P, PdfName.Kids, PdfName.Parent), false, NullCopyFilter.getInstance());
        if (pdfDictionaryCopyTo.isFlushed()) {
            pdfDictionaryCopyTo = asDictionary.copyTo(pdfDocument, Arrays.asList(PdfName.f3047P, PdfName.Kids, PdfName.Parent), true, NullCopyFilter.getInstance());
        }
        rebuildFormFieldParent(asDictionary, pdfDictionaryCopyTo, pdfDocument);
        if (pdfDictionaryCopyTo.getAsArray(PdfName.Kids) == null) {
            pdfDictionaryCopyTo.put(PdfName.Kids, new PdfArray());
        }
        pdfDictionary2.put(PdfName.Parent, pdfDictionaryCopyTo);
    }
}
