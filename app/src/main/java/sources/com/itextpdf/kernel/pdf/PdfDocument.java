package com.itextpdf.kernel.pdf;

import com.itextpdf.commons.actions.EventManager;
import com.itextpdf.commons.actions.confirmations.ConfirmEvent;
import com.itextpdf.commons.actions.confirmations.EventConfirmationType;
import com.itextpdf.commons.actions.data.ProductData;
import com.itextpdf.commons.actions.sequence.SequenceId;
import com.itextpdf.commons.utils.MessageFormatUtil;
import com.itextpdf.kernel.actions.data.ITextCoreProductData;
import com.itextpdf.kernel.actions.events.FlushPdfDocumentEvent;
import com.itextpdf.kernel.actions.events.ITextCoreProductEvent;
import com.itextpdf.kernel.colors.Color;
import com.itextpdf.kernel.events.Event;
import com.itextpdf.kernel.events.EventDispatcher;
import com.itextpdf.kernel.events.IEventDispatcher;
import com.itextpdf.kernel.events.IEventHandler;
import com.itextpdf.kernel.events.PdfDocumentEvent;
import com.itextpdf.kernel.exceptions.BadPasswordException;
import com.itextpdf.kernel.exceptions.KernelExceptionMessageConstant;
import com.itextpdf.kernel.exceptions.PdfException;
import com.itextpdf.kernel.font.PdfFont;
import com.itextpdf.kernel.font.PdfFontFactory;
import com.itextpdf.kernel.geom.PageSize;
import com.itextpdf.kernel.logs.KernelLogMessageConstant;
import com.itextpdf.kernel.numbering.EnglishAlphabetNumbering;
import com.itextpdf.kernel.numbering.RomanNumbering;
import com.itextpdf.kernel.pdf.PdfReader;
import com.itextpdf.kernel.pdf.annot.PdfAnnotation;
import com.itextpdf.kernel.pdf.annot.PdfLinkAnnotation;
import com.itextpdf.kernel.pdf.annot.PdfWidgetAnnotation;
import com.itextpdf.kernel.pdf.canvas.CanvasGraphicsState;
import com.itextpdf.kernel.pdf.collection.PdfCollection;
import com.itextpdf.kernel.pdf.filespec.PdfEncryptedPayloadFileSpecFactory;
import com.itextpdf.kernel.pdf.filespec.PdfFileSpec;
import com.itextpdf.kernel.pdf.navigation.PdfDestination;
import com.itextpdf.kernel.pdf.statistics.NumberOfPagesStatisticsEvent;
import com.itextpdf.kernel.pdf.statistics.SizeOfPdfStatisticsEvent;
import com.itextpdf.kernel.pdf.tagging.PdfStructTreeRoot;
import com.itextpdf.kernel.pdf.tagutils.TagStructureContext;
import com.itextpdf.kernel.xmp.PdfConst;
import com.itextpdf.kernel.xmp.XMPConst;
import com.itextpdf.kernel.xmp.XMPException;
import com.itextpdf.kernel.xmp.XMPMeta;
import com.itextpdf.kernel.xmp.XMPMetaFactory;
import com.itextpdf.kernel.xmp.options.PropertyOptions;
import com.itextpdf.kernel.xmp.options.SerializeOptions;
import com.itextpdf.p017io.logs.IoLogMessageConstant;
import com.itextpdf.p017io.source.ByteUtils;
import com.itextpdf.p017io.source.RandomAccessFileOrArray;
import java.io.Closeable;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.function.Consumer;
import org.slf4j.LoggerFactory;

/* JADX INFO: loaded from: classes6.dex */
public class PdfDocument implements IEventDispatcher, Closeable {
    static final /* synthetic */ boolean $assertionsDisabled = false;
    private static final IPdfPageFactory pdfPageFactory = new PdfPageFactory();
    protected PdfCatalog catalog;
    protected boolean closeReader;
    protected boolean closeWriter;
    protected boolean closed;
    private PdfFont defaultFont;
    private PageSize defaultPageSize;
    private final Map<PdfIndirectReference, PdfFont> documentFonts;
    private final SequenceId documentId;
    private EncryptedEmbeddedStreamsHandler encryptedEmbeddedStreamsHandler;
    protected EventDispatcher eventDispatcher;
    protected FingerPrint fingerPrint;
    protected boolean flushUnusedObjects;
    protected PdfDocumentInfo info;
    protected boolean isClosing;
    MemoryLimitsAwareHandler memoryLimitsAwareHandler;
    private PdfString modifiedDocumentId;
    private PdfString originalDocumentId;
    protected PdfVersion pdfVersion;
    private final List<DestinationMutationInfo> pendingDestinationMutations;
    protected final StampingProperties properties;
    protected PdfReader reader;
    protected SerializeOptions serializeOptions;
    Map<PdfIndirectReference, byte[]> serializedObjectsCache;
    protected int structParentIndex;
    protected PdfStructTreeRoot structTreeRoot;
    protected TagStructureContext tagStructureContext;
    protected PdfDictionary trailer;
    protected PdfWriter writer;
    protected byte[] xmpMetadata;
    final PdfXrefTable xref;

    protected void addCustomMetadataExtensions(XMPMeta xMPMeta) {
    }

    protected void checkIsoConformance() {
    }

    public void checkIsoConformance(Object obj, IsoKey isoKey) {
    }

    public void checkIsoConformance(Object obj, IsoKey isoKey, PdfResources pdfResources, PdfStream pdfStream) {
    }

    public void checkShowTextIsoConformance(CanvasGraphicsState canvasGraphicsState, PdfResources pdfResources) {
    }

    @Deprecated
    protected void storeLinkAnnotation(PdfPage pdfPage, PdfLinkAnnotation pdfLinkAnnotation) {
    }

    public PdfDocument(PdfReader pdfReader) {
        this(pdfReader, new DocumentProperties());
    }

    public PdfDocument(PdfReader pdfReader, DocumentProperties documentProperties) {
        this.xref = new PdfXrefTable();
        this.documentFonts = new HashMap();
        this.pendingDestinationMutations = new ArrayList();
        this.eventDispatcher = new EventDispatcher();
        this.writer = null;
        this.reader = null;
        this.xmpMetadata = null;
        this.catalog = null;
        this.trailer = null;
        this.info = null;
        this.pdfVersion = PdfVersion.PDF_1_7;
        this.serializeOptions = new SerializeOptions();
        this.structParentIndex = -1;
        this.closeReader = true;
        this.closeWriter = true;
        this.isClosing = false;
        this.closed = false;
        this.flushUnusedObjects = false;
        this.serializedObjectsCache = new HashMap();
        this.memoryLimitsAwareHandler = null;
        this.defaultPageSize = PageSize.DEFAULT;
        this.defaultFont = null;
        if (pdfReader == null) {
            throw new IllegalArgumentException("The reader in PdfDocument constructor can not be null.");
        }
        this.documentId = new SequenceId();
        this.reader = pdfReader;
        StampingProperties stampingProperties = new StampingProperties();
        this.properties = stampingProperties;
        stampingProperties.setEventCountingMetaInfo(documentProperties.metaInfo);
        open(null);
    }

    public PdfDocument(PdfWriter pdfWriter) {
        this(pdfWriter, new DocumentProperties());
    }

    public PdfDocument(PdfWriter pdfWriter, DocumentProperties documentProperties) {
        this.xref = new PdfXrefTable();
        this.documentFonts = new HashMap();
        this.pendingDestinationMutations = new ArrayList();
        this.eventDispatcher = new EventDispatcher();
        this.writer = null;
        this.reader = null;
        this.xmpMetadata = null;
        this.catalog = null;
        this.trailer = null;
        this.info = null;
        this.pdfVersion = PdfVersion.PDF_1_7;
        this.serializeOptions = new SerializeOptions();
        this.structParentIndex = -1;
        this.closeReader = true;
        this.closeWriter = true;
        this.isClosing = false;
        this.closed = false;
        this.flushUnusedObjects = false;
        this.serializedObjectsCache = new HashMap();
        this.memoryLimitsAwareHandler = null;
        this.defaultPageSize = PageSize.DEFAULT;
        this.defaultFont = null;
        if (pdfWriter == null) {
            throw new IllegalArgumentException("The writer in PdfDocument constructor can not be null.");
        }
        this.documentId = new SequenceId();
        this.writer = pdfWriter;
        StampingProperties stampingProperties = new StampingProperties();
        this.properties = stampingProperties;
        stampingProperties.setEventCountingMetaInfo(documentProperties.metaInfo);
        open(pdfWriter.properties.pdfVersion);
    }

    public PdfDocument(PdfReader pdfReader, PdfWriter pdfWriter) {
        this(pdfReader, pdfWriter, new StampingProperties());
    }

    public PdfDocument(PdfReader pdfReader, PdfWriter pdfWriter, StampingProperties stampingProperties) {
        this.xref = new PdfXrefTable();
        this.documentFonts = new HashMap();
        this.pendingDestinationMutations = new ArrayList();
        this.eventDispatcher = new EventDispatcher();
        this.writer = null;
        this.reader = null;
        this.xmpMetadata = null;
        this.catalog = null;
        this.trailer = null;
        this.info = null;
        this.pdfVersion = PdfVersion.PDF_1_7;
        this.serializeOptions = new SerializeOptions();
        this.structParentIndex = -1;
        this.closeReader = true;
        this.closeWriter = true;
        this.isClosing = false;
        this.closed = false;
        this.flushUnusedObjects = false;
        this.serializedObjectsCache = new HashMap();
        this.memoryLimitsAwareHandler = null;
        this.defaultPageSize = PageSize.DEFAULT;
        this.defaultFont = null;
        if (pdfReader == null) {
            throw new IllegalArgumentException("The reader in PdfDocument constructor can not be null.");
        }
        if (pdfWriter == null) {
            throw new IllegalArgumentException("The writer in PdfDocument constructor can not be null.");
        }
        this.documentId = new SequenceId();
        this.reader = pdfReader;
        this.writer = pdfWriter;
        this.properties = stampingProperties;
        boolean zWriterHasEncryption = writerHasEncryption();
        if (stampingProperties.appendMode && zWriterHasEncryption) {
            LoggerFactory.getLogger((Class<?>) PdfDocument.class).warn(IoLogMessageConstant.WRITER_ENCRYPTION_IS_IGNORED_APPEND);
        }
        if (stampingProperties.preserveEncryption && zWriterHasEncryption) {
            LoggerFactory.getLogger((Class<?>) PdfDocument.class).warn(IoLogMessageConstant.WRITER_ENCRYPTION_IS_IGNORED_PRESERVE);
        }
        open(pdfWriter.properties.pdfVersion);
    }

    public void setXmpMetadata(XMPMeta xMPMeta, SerializeOptions serializeOptions) throws XMPException {
        this.serializeOptions = serializeOptions;
        setXmpMetadata(XMPMetaFactory.serializeToBuffer(xMPMeta, serializeOptions));
    }

    protected void setXmpMetadata(byte[] bArr) {
        this.xmpMetadata = bArr;
    }

    public void setXmpMetadata(XMPMeta xMPMeta) throws XMPException {
        this.serializeOptions.setPadding(2000);
        setXmpMetadata(xMPMeta, this.serializeOptions);
    }

    public byte[] getXmpMetadata() {
        return getXmpMetadata(false);
    }

    public byte[] getXmpMetadata(boolean z) {
        if (this.xmpMetadata == null && z) {
            XMPMeta xMPMetaCreate = XMPMetaFactory.create();
            xMPMetaCreate.setObjectName(XMPConst.TAG_XMPMETA);
            xMPMetaCreate.setObjectName("");
            addCustomMetadataExtensions(xMPMetaCreate);
            try {
                xMPMetaCreate.setProperty(XMPConst.NS_DC, PdfConst.Format, "application/pdf");
                setXmpMetadata(xMPMetaCreate);
            } catch (XMPException unused) {
            }
        }
        return this.xmpMetadata;
    }

    public PdfObject getPdfObject(int i) {
        checkClosingStatus();
        PdfIndirectReference pdfIndirectReference = this.xref.get(i);
        if (pdfIndirectReference == null) {
            return null;
        }
        return pdfIndirectReference.getRefersTo();
    }

    public int getNumberOfPdfObjects() {
        return this.xref.size();
    }

    public PdfPage getPage(int i) {
        checkClosingStatus();
        return this.catalog.getPageTree().getPage(i);
    }

    public PdfPage getPage(PdfDictionary pdfDictionary) {
        checkClosingStatus();
        return this.catalog.getPageTree().getPage(pdfDictionary);
    }

    public PdfPage getFirstPage() {
        checkClosingStatus();
        return getPage(1);
    }

    public PdfPage getLastPage() {
        return getPage(getNumberOfPages());
    }

    public void markStreamAsEmbeddedFile(PdfStream pdfStream) {
        this.encryptedEmbeddedStreamsHandler.storeEmbeddedStream(pdfStream);
    }

    public PdfPage addNewPage() {
        return addNewPage(getDefaultPageSize());
    }

    public PdfPage addNewPage(PageSize pageSize) {
        checkClosingStatus();
        PdfPage pdfPageCreatePdfPage = getPageFactory().createPdfPage(this, pageSize);
        checkAndAddPage(pdfPageCreatePdfPage);
        dispatchEvent(new PdfDocumentEvent(PdfDocumentEvent.START_PAGE, pdfPageCreatePdfPage));
        dispatchEvent(new PdfDocumentEvent(PdfDocumentEvent.INSERT_PAGE, pdfPageCreatePdfPage));
        return pdfPageCreatePdfPage;
    }

    public PdfPage addNewPage(int i) {
        return addNewPage(i, getDefaultPageSize());
    }

    public PdfPage addNewPage(int i, PageSize pageSize) {
        checkClosingStatus();
        PdfPage pdfPageCreatePdfPage = getPageFactory().createPdfPage(this, pageSize);
        checkAndAddPage(i, pdfPageCreatePdfPage);
        dispatchEvent(new PdfDocumentEvent(PdfDocumentEvent.START_PAGE, pdfPageCreatePdfPage));
        dispatchEvent(new PdfDocumentEvent(PdfDocumentEvent.INSERT_PAGE, pdfPageCreatePdfPage));
        return pdfPageCreatePdfPage;
    }

    public PdfPage addPage(PdfPage pdfPage) {
        checkClosingStatus();
        checkAndAddPage(pdfPage);
        dispatchEvent(new PdfDocumentEvent(PdfDocumentEvent.INSERT_PAGE, pdfPage));
        return pdfPage;
    }

    public PdfPage addPage(int i, PdfPage pdfPage) {
        checkClosingStatus();
        checkAndAddPage(i, pdfPage);
        dispatchEvent(new PdfDocumentEvent(PdfDocumentEvent.INSERT_PAGE, pdfPage));
        return pdfPage;
    }

    public int getNumberOfPages() {
        checkClosingStatus();
        return this.catalog.getPageTree().getNumberOfPages();
    }

    public int getPageNumber(PdfPage pdfPage) {
        checkClosingStatus();
        return this.catalog.getPageTree().getPageNumber(pdfPage);
    }

    public int getPageNumber(PdfDictionary pdfDictionary) {
        return this.catalog.getPageTree().getPageNumber(pdfDictionary);
    }

    public boolean movePage(PdfPage pdfPage, int i) {
        checkClosingStatus();
        int pageNumber = getPageNumber(pdfPage);
        if (pageNumber <= 0) {
            return false;
        }
        movePage(pageNumber, i);
        return true;
    }

    public void movePage(int i, int i2) {
        checkClosingStatus();
        if (i2 < 1 || i2 > getNumberOfPages() + 1) {
            throw new IndexOutOfBoundsException(MessageFormatUtil.format(KernelExceptionMessageConstant.REQUESTED_PAGE_NUMBER_IS_OUT_OF_BOUNDS, Integer.valueOf(i2)));
        }
        PdfPage page = getPage(i);
        if (isTagged()) {
            getStructTreeRoot().move(page, i2);
            getTagStructureContext().normalizeDocumentRootTag();
        }
        PdfPage pdfPageRemovePage = this.catalog.getPageTree().removePage(i);
        if (i2 > i) {
            i2--;
        }
        this.catalog.getPageTree().addPage(i2, pdfPageRemovePage);
    }

    public boolean removePage(PdfPage pdfPage) {
        checkClosingStatus();
        int pageNumber = getPageNumber(pdfPage);
        if (pageNumber < 1) {
            return false;
        }
        removePage(pageNumber);
        return true;
    }

    public void removePage(int i) {
        checkClosingStatus();
        PdfPage page = getPage(i);
        if (page != null && page.isFlushed() && (isTagged() || hasAcroForm())) {
            throw new PdfException(KernelExceptionMessageConstant.FLUSHED_PAGE_CANNOT_BE_REMOVED);
        }
        if (page != null) {
            this.catalog.removeOutlines(page);
            removeUnusedWidgetsFromFields(page);
            if (isTagged()) {
                getTagStructureContext().removePageTags(page);
            }
            if (!page.isFlushed()) {
                page.getPdfObject().remove(PdfName.Parent);
                page.getPdfObject().getIndirectReference().setFree();
            }
            dispatchEvent(new PdfDocumentEvent(PdfDocumentEvent.REMOVE_PAGE, page));
        }
        this.catalog.getPageTree().removePage(i);
    }

    public PdfDocumentInfo getDocumentInfo() {
        checkClosingStatus();
        if (this.info == null) {
            PdfObject pdfObject = this.trailer.get(PdfName.Info);
            PdfDocumentInfo pdfDocumentInfo = new PdfDocumentInfo(pdfObject instanceof PdfDictionary ? (PdfDictionary) pdfObject : new PdfDictionary(), this);
            this.info = pdfDocumentInfo;
            XmpMetaInfoConverter.appendMetadataToInfo(this.xmpMetadata, pdfDocumentInfo);
        }
        return this.info;
    }

    public PdfString getOriginalDocumentId() {
        return this.originalDocumentId;
    }

    public PdfString getModifiedDocumentId() {
        return this.modifiedDocumentId;
    }

    public PageSize getDefaultPageSize() {
        return this.defaultPageSize;
    }

    public void setDefaultPageSize(PageSize pageSize) {
        this.defaultPageSize = pageSize;
    }

    @Override // com.itextpdf.kernel.events.IEventDispatcher
    public void addEventHandler(String str, IEventHandler iEventHandler) {
        this.eventDispatcher.addEventHandler(str, iEventHandler);
    }

    @Override // com.itextpdf.kernel.events.IEventDispatcher
    public void dispatchEvent(Event event) {
        this.eventDispatcher.dispatchEvent(event);
    }

    @Override // com.itextpdf.kernel.events.IEventDispatcher
    public void dispatchEvent(Event event, boolean z) {
        this.eventDispatcher.dispatchEvent(event, z);
    }

    @Override // com.itextpdf.kernel.events.IEventDispatcher
    public boolean hasEventHandler(String str) {
        return this.eventDispatcher.hasEventHandler(str);
    }

    @Override // com.itextpdf.kernel.events.IEventDispatcher
    public void removeEventHandler(String str, IEventHandler iEventHandler) {
        this.eventDispatcher.removeEventHandler(str, iEventHandler);
    }

    @Override // com.itextpdf.kernel.events.IEventDispatcher
    public void removeAllHandlers() {
        this.eventDispatcher.removeAllHandlers();
    }

    public PdfWriter getWriter() {
        checkClosingStatus();
        return this.writer;
    }

    public PdfReader getReader() {
        checkClosingStatus();
        return this.reader;
    }

    public boolean isAppendMode() {
        checkClosingStatus();
        return this.properties.appendMode;
    }

    public PdfIndirectReference createNextIndirectReference() {
        checkClosingStatus();
        return this.xref.createNextIndirectReference(this);
    }

    public PdfVersion getPdfVersion() {
        return this.pdfVersion;
    }

    public PdfCatalog getCatalog() {
        checkClosingStatus();
        return this.catalog;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        PdfDictionary pdfObject;
        PdfObject refersTo;
        if (this.closed) {
            return;
        }
        this.isClosing = true;
        try {
            try {
                if (this.writer != null) {
                    if (this.catalog.isFlushed()) {
                        throw new PdfException(KernelExceptionMessageConstant.CANNOT_CLOSE_DOCUMENT_WITH_ALREADY_FLUSHED_PDF_CATALOG);
                    }
                    EventManager eventManager = EventManager.getInstance();
                    eventManager.onEvent(new NumberOfPagesStatisticsEvent(this.catalog.getPageTree().getNumberOfPages(), ITextCoreProductData.getInstance()));
                    eventManager.onEvent(new FlushPdfDocumentEvent(this));
                    updateXmpMetadata();
                    if (this.pdfVersion.compareTo(PdfVersion.PDF_2_0) >= 0) {
                        for (PdfName pdfName : PdfDocumentInfo.PDF20_DEPRECATED_KEYS) {
                            getDocumentInfo().getPdfObject().remove(pdfName);
                        }
                    }
                    if (getXmpMetadata() != null) {
                        PdfStream asStream = this.catalog.getPdfObject().getAsStream(PdfName.Metadata);
                        if (isAppendMode() && asStream != null && !asStream.isFlushed() && asStream.getIndirectReference() != null) {
                            asStream.setData(this.xmpMetadata);
                            asStream.setModified();
                        } else {
                            asStream = (PdfStream) new PdfStream().makeIndirect(this);
                            asStream.getOutputStream().write(this.xmpMetadata);
                            this.catalog.getPdfObject().put(PdfName.Metadata, asStream);
                            this.catalog.setModified();
                        }
                        asStream.put(PdfName.Type, PdfName.Metadata);
                        asStream.put(PdfName.Subtype, PdfName.XML);
                        if (this.writer.crypto != null && !this.writer.crypto.isMetadataEncrypted()) {
                            PdfArray pdfArray = new PdfArray();
                            pdfArray.add(PdfName.Crypt);
                            asStream.put(PdfName.Filter, pdfArray);
                        }
                    }
                    checkIsoConformance();
                    if (getNumberOfPages() == 0) {
                        addNewPage();
                    }
                    Set<PdfIndirectReference> hashSet = new HashSet<>();
                    if (this.properties.appendMode) {
                        if (this.structTreeRoot != null) {
                            tryFlushTagStructure(true);
                        }
                        if (this.catalog.isOCPropertiesMayHaveChanged() && this.catalog.getOCProperties(false).getPdfObject().isModified()) {
                            this.catalog.getOCProperties(false).flush();
                        }
                        if (this.catalog.pageLabels != null) {
                            this.catalog.put(PdfName.PageLabels, this.catalog.pageLabels.buildTree());
                        }
                        for (Map.Entry<PdfName, PdfNameTree> entry : this.catalog.nameTrees.entrySet()) {
                            PdfNameTree value = entry.getValue();
                            if (value.isModified()) {
                                ensureTreeRootAddedToNames(value.buildTree().makeIndirect(this), entry.getKey());
                            }
                        }
                        PdfObject pdfObjectGenerateTree = this.catalog.getPageTree().generateTree();
                        if (this.catalog.getPdfObject().isModified() || pdfObjectGenerateTree.isModified()) {
                            this.catalog.put(PdfName.Pages, pdfObjectGenerateTree);
                            this.catalog.getPdfObject().flush(false);
                        }
                        if (getDocumentInfo().getPdfObject().isModified()) {
                            getDocumentInfo().getPdfObject().flush(false);
                        }
                        flushFonts();
                        if (this.writer.crypto != null) {
                            pdfObject = this.reader.decrypt.getPdfObject();
                            if (pdfObject.getIndirectReference() != null) {
                                hashSet.add(pdfObject.getIndirectReference());
                            }
                        } else {
                            pdfObject = null;
                        }
                        this.writer.flushModifiedWaitingObjects(hashSet);
                        for (int i = 0; i < this.xref.size(); i++) {
                            PdfIndirectReference pdfIndirectReference = this.xref.get(i);
                            if (pdfIndirectReference != null && !pdfIndirectReference.isFree() && pdfIndirectReference.checkState((short) 8) && !pdfIndirectReference.checkState((short) 1) && !hashSet.contains(pdfIndirectReference)) {
                                pdfIndirectReference.setFree();
                            }
                        }
                    } else {
                        if (this.catalog.isOCPropertiesMayHaveChanged()) {
                            this.catalog.getPdfObject().put(PdfName.OCProperties, this.catalog.getOCProperties(false).getPdfObject());
                            this.catalog.getOCProperties(false).flush();
                        }
                        if (this.catalog.pageLabels != null) {
                            this.catalog.put(PdfName.PageLabels, this.catalog.pageLabels.buildTree());
                        }
                        this.catalog.getPdfObject().put(PdfName.Pages, this.catalog.getPageTree().generateTree());
                        for (Map.Entry<PdfName, PdfNameTree> entry2 : this.catalog.nameTrees.entrySet()) {
                            PdfNameTree value2 = entry2.getValue();
                            if (value2.isModified()) {
                                ensureTreeRootAddedToNames(value2.buildTree().makeIndirect(this), entry2.getKey());
                            }
                        }
                        for (int i2 = 1; i2 <= getNumberOfPages(); i2++) {
                            PdfPage page = getPage(i2);
                            if (page != null) {
                                page.flush();
                            }
                        }
                        if (this.structTreeRoot != null) {
                            tryFlushTagStructure(false);
                        }
                        this.catalog.getPdfObject().flush(false);
                        getDocumentInfo().getPdfObject().flush(false);
                        flushFonts();
                        if (this.writer.crypto != null) {
                            pdfObject = this.writer.crypto.getPdfObject();
                            pdfObject.makeIndirect(this);
                            hashSet.add(pdfObject.getIndirectReference());
                        } else {
                            pdfObject = null;
                        }
                        this.writer.flushWaitingObjects(hashSet);
                        for (int i3 = 0; i3 < this.xref.size(); i3++) {
                            PdfIndirectReference pdfIndirectReference2 = this.xref.get(i3);
                            if (pdfIndirectReference2 != null && !pdfIndirectReference2.isFree() && !pdfIndirectReference2.checkState((short) 1) && !hashSet.contains(pdfIndirectReference2)) {
                                if (isFlushUnusedObjects() && !pdfIndirectReference2.checkState((short) 16) && (refersTo = pdfIndirectReference2.getRefersTo(false)) != null) {
                                    refersTo.flush();
                                } else {
                                    pdfIndirectReference2.setFree();
                                }
                            }
                        }
                    }
                    this.writer.crypto = null;
                    if (!this.properties.appendMode && pdfObject != null) {
                        pdfObject.flush(false);
                    }
                    this.trailer.put(PdfName.Root, this.catalog.getPdfObject());
                    this.trailer.put(PdfName.Info, getDocumentInfo().getPdfObject());
                    this.xref.writeXrefTableAndTrailer(this, PdfEncryption.createInfoId(ByteUtils.getIsoBytes(this.originalDocumentId.getValue()), ByteUtils.getIsoBytes(this.modifiedDocumentId.getValue())), pdfObject);
                    this.writer.flush();
                    if (this.writer.getOutputStream() instanceof CountOutputStream) {
                        eventManager.onEvent(new SizeOfPdfStatisticsEvent(((CountOutputStream) this.writer.getOutputStream()).getAmountOfWrittenBytes(), ITextCoreProductData.getInstance()));
                    }
                }
                this.catalog.getPageTree().clearPageRefs();
                removeAllHandlers();
                if (this.writer != null && isCloseWriter()) {
                    try {
                        this.writer.close();
                    } catch (Exception e) {
                        LoggerFactory.getLogger((Class<?>) PdfDocument.class).error(IoLogMessageConstant.PDF_WRITER_CLOSING_FAILED, (Throwable) e);
                    }
                }
                if (this.reader != null && isCloseReader()) {
                    try {
                        this.reader.close();
                    } catch (Exception e2) {
                        LoggerFactory.getLogger((Class<?>) PdfDocument.class).error(IoLogMessageConstant.PDF_READER_CLOSING_FAILED, (Throwable) e2);
                    }
                }
                this.closed = true;
            } catch (IOException e3) {
                throw new PdfException(KernelExceptionMessageConstant.CANNOT_CLOSE_DOCUMENT, e3, this);
            }
        } catch (Throwable th) {
            if (this.writer != null && isCloseWriter()) {
                try {
                    this.writer.close();
                } catch (Exception e4) {
                    LoggerFactory.getLogger((Class<?>) PdfDocument.class).error(IoLogMessageConstant.PDF_WRITER_CLOSING_FAILED, (Throwable) e4);
                }
            }
            if (this.reader != null && isCloseReader()) {
                try {
                    this.reader.close();
                    throw th;
                } catch (Exception e5) {
                    LoggerFactory.getLogger((Class<?>) PdfDocument.class).error(IoLogMessageConstant.PDF_READER_CLOSING_FAILED, (Throwable) e5);
                    throw th;
                }
            }
            throw th;
        }
    }

    public boolean isClosed() {
        return this.closed;
    }

    public boolean isTagged() {
        return this.structTreeRoot != null;
    }

    public PdfDocument setTagged() {
        checkClosingStatus();
        if (this.structTreeRoot == null) {
            this.structTreeRoot = new PdfStructTreeRoot(this);
            this.catalog.getPdfObject().put(PdfName.StructTreeRoot, this.structTreeRoot.getPdfObject());
            updateValueInMarkInfoDict(PdfName.Marked, PdfBoolean.TRUE);
            this.structParentIndex = 0;
        }
        return this;
    }

    public PdfStructTreeRoot getStructTreeRoot() {
        return this.structTreeRoot;
    }

    public int getNextStructParentIndex() {
        int i = this.structParentIndex;
        if (i < 0) {
            return -1;
        }
        this.structParentIndex = i + 1;
        return i;
    }

    public TagStructureContext getTagStructureContext() {
        checkClosingStatus();
        if (this.tagStructureContext == null) {
            if (!isTagged()) {
                throw new PdfException(KernelExceptionMessageConstant.MUST_BE_A_TAGGED_DOCUMENT);
            }
            initTagStructureContext();
        }
        return this.tagStructureContext;
    }

    public List<PdfPage> copyPagesTo(int i, int i2, PdfDocument pdfDocument, int i3) {
        return copyPagesTo(i, i2, pdfDocument, i3, null);
    }

    public List<PdfPage> copyPagesTo(int i, int i2, PdfDocument pdfDocument, int i3, IPdfPageExtraCopier iPdfPageExtraCopier) {
        ArrayList arrayList = new ArrayList();
        while (i <= i2) {
            arrayList.add(Integer.valueOf(i));
            i++;
        }
        return copyPagesTo(arrayList, pdfDocument, i3, iPdfPageExtraCopier);
    }

    public List<PdfPage> copyPagesTo(int i, int i2, PdfDocument pdfDocument) {
        return copyPagesTo(i, i2, pdfDocument, (IPdfPageExtraCopier) null);
    }

    public List<PdfPage> copyPagesTo(int i, int i2, PdfDocument pdfDocument, IPdfPageExtraCopier iPdfPageExtraCopier) {
        return copyPagesTo(i, i2, pdfDocument, pdfDocument.getNumberOfPages() + 1, iPdfPageExtraCopier);
    }

    public List<PdfPage> copyPagesTo(List<Integer> list, PdfDocument pdfDocument, int i) {
        return copyPagesTo(list, pdfDocument, i, (IPdfPageExtraCopier) null);
    }

    public List<PdfPage> copyPagesTo(List<Integer> list, PdfDocument pdfDocument, int i, IPdfPageExtraCopier iPdfPageExtraCopier) {
        List<PdfOutline> outlines;
        if (list.isEmpty()) {
            return Collections.emptyList();
        }
        this.pendingDestinationMutations.clear();
        checkClosingStatus();
        ArrayList arrayList = new ArrayList();
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        HashSet hashSet = new HashSet();
        ArrayList<Map<PdfPage, PdfPage>> arrayList2 = new ArrayList();
        int iIntValue = list.get(0).intValue();
        int size = i;
        boolean z = size < pdfDocument.getNumberOfPages() + 1;
        int i2 = size;
        for (Integer num : list) {
            PdfPage page = getPage(num.intValue());
            PdfPage pdfPageCopyTo = page.copyTo(pdfDocument, iPdfPageExtraCopier);
            arrayList.add(pdfPageCopyTo);
            linkedHashMap.put(page, pdfPageCopyTo);
            if (iIntValue >= num.intValue()) {
                arrayList2.add(new HashMap());
            }
            ((Map) arrayList2.get(arrayList2.size() - 1)).put(page, pdfPageCopyTo);
            if (z) {
                pdfDocument.addPage(i2, pdfPageCopyTo);
            } else {
                pdfDocument.addPage(pdfPageCopyTo);
            }
            i2++;
            if (pdfDocument.hasOutlines() && (outlines = page.getOutlines(false)) != null) {
                hashSet.addAll(outlines);
            }
            iIntValue = num.intValue();
        }
        resolveDestinations(pdfDocument, linkedHashMap);
        if (getCatalog() != null && getCatalog().getPdfObject().getAsDictionary(PdfName.OCProperties) != null) {
            OcgPropertiesCopier.copyOCGProperties(this, pdfDocument, linkedHashMap);
        }
        if (pdfDocument.isTagged()) {
            if (isTagged()) {
                try {
                    for (Map<PdfPage, PdfPage> map : arrayList2) {
                        if (z) {
                            getStructTreeRoot().copyTo(pdfDocument, size, map);
                        } else {
                            getStructTreeRoot().copyTo(pdfDocument, map);
                        }
                        size += map.size();
                    }
                    pdfDocument.getTagStructureContext().normalizeDocumentRootTag();
                } catch (Exception e) {
                    throw new PdfException(KernelExceptionMessageConstant.f2928xc0aded03, (Throwable) e);
                }
            } else {
                LoggerFactory.getLogger((Class<?>) PdfDocument.class).warn(IoLogMessageConstant.NOT_TAGGED_PAGES_IN_TAGGED_DOCUMENT);
            }
        }
        if (this.catalog.isOutlineMode()) {
            copyOutlines(hashSet, pdfDocument, linkedHashMap);
        }
        return arrayList;
    }

    public List<PdfPage> copyPagesTo(List<Integer> list, PdfDocument pdfDocument) {
        return copyPagesTo(list, pdfDocument, (IPdfPageExtraCopier) null);
    }

    public List<PdfPage> copyPagesTo(List<Integer> list, PdfDocument pdfDocument, IPdfPageExtraCopier iPdfPageExtraCopier) {
        return copyPagesTo(list, pdfDocument, pdfDocument.getNumberOfPages() + 1, iPdfPageExtraCopier);
    }

    public void flushCopiedObjects(PdfDocument pdfDocument) {
        if (getWriter() != null) {
            getWriter().flushCopiedObjects(pdfDocument.getDocumentId());
        }
    }

    public boolean isCloseReader() {
        return this.closeReader;
    }

    public void setCloseReader(boolean z) {
        checkClosingStatus();
        this.closeReader = z;
    }

    public boolean isCloseWriter() {
        return this.closeWriter;
    }

    public void setCloseWriter(boolean z) {
        checkClosingStatus();
        this.closeWriter = z;
    }

    public boolean isFlushUnusedObjects() {
        return this.flushUnusedObjects;
    }

    public void setFlushUnusedObjects(boolean z) {
        checkClosingStatus();
        this.flushUnusedObjects = z;
    }

    public PdfOutline getOutlines(boolean z) {
        checkClosingStatus();
        return this.catalog.getOutlines(z);
    }

    public void initializeOutlines() {
        checkClosingStatus();
        getOutlines(false);
    }

    public void addNamedDestination(String str, PdfObject pdfObject) {
        checkClosingStatus();
        if (pdfObject.isArray() && ((PdfArray) pdfObject).get(0).isNumber()) {
            LoggerFactory.getLogger((Class<?>) PdfDocument.class).warn(IoLogMessageConstant.INVALID_DESTINATION_TYPE);
        }
        this.catalog.addNamedDestination(str, pdfObject);
    }

    public List<PdfIndirectReference> listIndirectReferences() {
        checkClosingStatus();
        ArrayList arrayList = new ArrayList(this.xref.size());
        for (int i = 0; i < this.xref.size(); i++) {
            PdfIndirectReference pdfIndirectReference = this.xref.get(i);
            if (pdfIndirectReference != null) {
                arrayList.add(pdfIndirectReference);
            }
        }
        return arrayList;
    }

    public PdfDictionary getTrailer() {
        checkClosingStatus();
        return this.trailer;
    }

    public void addOutputIntent(PdfOutputIntent pdfOutputIntent) {
        checkClosingStatus();
        if (pdfOutputIntent == null) {
            return;
        }
        PdfArray asArray = this.catalog.getPdfObject().getAsArray(PdfName.OutputIntents);
        if (asArray == null) {
            asArray = new PdfArray();
            this.catalog.put(PdfName.OutputIntents, asArray);
        }
        asArray.add(pdfOutputIntent.getPdfObject());
    }

    public void addFileAttachment(String str, PdfFileSpec pdfFileSpec) {
        checkClosingStatus();
        this.catalog.addNameToNameTree(str, pdfFileSpec.getPdfObject(), PdfName.EmbeddedFiles);
    }

    public void addAssociatedFile(String str, PdfFileSpec pdfFileSpec) {
        if (((PdfDictionary) pdfFileSpec.getPdfObject()).get(PdfName.AFRelationship) == null) {
            LoggerFactory.getLogger((Class<?>) PdfDocument.class).error(IoLogMessageConstant.ASSOCIATED_FILE_SPEC_SHALL_INCLUDE_AFRELATIONSHIP);
        }
        PdfArray asArray = this.catalog.getPdfObject().getAsArray(PdfName.f2969AF);
        if (asArray == null) {
            asArray = (PdfArray) new PdfArray().makeIndirect(this);
            this.catalog.put(PdfName.f2969AF, asArray);
        }
        asArray.add(pdfFileSpec.getPdfObject());
        addFileAttachment(str, pdfFileSpec);
    }

    public PdfArray getAssociatedFiles() {
        checkClosingStatus();
        return this.catalog.getPdfObject().getAsArray(PdfName.f2969AF);
    }

    public PdfEncryptedPayloadDocument getEncryptedPayloadDocument() {
        PdfCollection collection;
        if ((getReader() == null || !getReader().isEncrypted()) && (collection = getCatalog().getCollection()) != null && collection.isViewHidden()) {
            PdfString initialDocument = collection.getInitialDocument();
            PdfNameTree nameTree = getCatalog().getNameTree(PdfName.EmbeddedFiles);
            String unicodeString = initialDocument.toUnicodeString();
            PdfObject pdfObject = nameTree.getNames().get(unicodeString);
            if (pdfObject != null && pdfObject.isDictionary()) {
                try {
                    PdfFileSpec pdfFileSpecWrap = PdfEncryptedPayloadFileSpecFactory.wrap((PdfDictionary) pdfObject);
                    if (pdfFileSpecWrap != null) {
                        PdfDictionary asDictionary = ((PdfDictionary) pdfFileSpecWrap.getPdfObject()).getAsDictionary(PdfName.f3001EF);
                        PdfStream asStream = asDictionary.getAsStream(PdfName.f3085UF);
                        if (asStream == null) {
                            asStream = asDictionary.getAsStream(PdfName.f3004F);
                        }
                        if (asStream != null) {
                            return new PdfEncryptedPayloadDocument(asStream, pdfFileSpecWrap, unicodeString);
                        }
                    }
                } catch (PdfException e) {
                    LoggerFactory.getLogger(getClass()).error(e.getMessage());
                }
            }
        }
        return null;
    }

    public void setEncryptedPayload(PdfFileSpec pdfFileSpec) {
        if (getWriter() == null) {
            throw new PdfException(KernelExceptionMessageConstant.CANNOT_SET_ENCRYPTED_PAYLOAD_TO_DOCUMENT_OPENED_IN_READING_MODE);
        }
        if (writerHasEncryption()) {
            throw new PdfException(KernelExceptionMessageConstant.CANNOT_SET_ENCRYPTED_PAYLOAD_TO_ENCRYPTED_DOCUMENT);
        }
        if (!PdfName.EncryptedPayload.equals(((PdfDictionary) pdfFileSpec.getPdfObject()).get(PdfName.AFRelationship))) {
            LoggerFactory.getLogger(getClass()).error(IoLogMessageConstant.f2892xfdc6407c);
        }
        PdfEncryptedPayload pdfEncryptedPayloadExtractFrom = PdfEncryptedPayload.extractFrom(pdfFileSpec);
        if (pdfEncryptedPayloadExtractFrom == null) {
            throw new PdfException(KernelExceptionMessageConstant.f2918x55092f54);
        }
        PdfCollection collection = getCatalog().getCollection();
        if (collection != null) {
            LoggerFactory.getLogger(getClass()).warn(IoLogMessageConstant.COLLECTION_DICTIONARY_ALREADY_EXISTS_IT_WILL_BE_MODIFIED);
        } else {
            collection = new PdfCollection();
            getCatalog().setCollection(collection);
        }
        collection.setView(2);
        String strGenerateFileDisplay = PdfEncryptedPayloadFileSpecFactory.generateFileDisplay(pdfEncryptedPayloadExtractFrom);
        collection.setInitialDocument(strGenerateFileDisplay);
        addAssociatedFile(strGenerateFileDisplay, pdfFileSpec);
    }

    public String[] getPageLabels() {
        if (this.catalog.getPageLabelsTree(false) == null) {
            return null;
        }
        Map<Integer, PdfObject> numbers = this.catalog.getPageLabelsTree(false).getNumbers();
        if (numbers.size() == 0) {
            return null;
        }
        String[] strArr = new String[getNumberOfPages()];
        String value = "D";
        String unicodeString = "";
        int iIntValue = 1;
        for (int i = 0; i < getNumberOfPages(); i++) {
            if (numbers.containsKey(Integer.valueOf(i))) {
                PdfDictionary pdfDictionary = (PdfDictionary) numbers.get(Integer.valueOf(i));
                PdfNumber asNumber = pdfDictionary.getAsNumber(PdfName.f3069St);
                iIntValue = asNumber != null ? asNumber.intValue() : 1;
                PdfString asString = pdfDictionary.getAsString(PdfName.f3047P);
                if (asString == null) {
                    unicodeString = "";
                } else {
                    unicodeString = asString.toUnicodeString();
                }
                PdfName asName = pdfDictionary.getAsName(PdfName.f3065S);
                value = asName != null ? asName.getValue() : "e";
            }
            value.hashCode();
            switch (value) {
                case "A":
                    strArr[i] = unicodeString + EnglishAlphabetNumbering.toLatinAlphabetNumberUpperCase(iIntValue);
                    break;
                case "R":
                    strArr[i] = unicodeString + RomanNumbering.toRomanUpperCase(iIntValue);
                    break;
                case "a":
                    strArr[i] = unicodeString + EnglishAlphabetNumbering.toLatinAlphabetNumberLowerCase(iIntValue);
                    break;
                case "e":
                    strArr[i] = unicodeString;
                    break;
                case "r":
                    strArr[i] = unicodeString + RomanNumbering.toRomanLowerCase(iIntValue);
                    break;
                default:
                    strArr[i] = unicodeString + iIntValue;
                    break;
            }
            iIntValue++;
        }
        return strArr;
    }

    public boolean hasOutlines() {
        return this.catalog.hasOutlines();
    }

    public void setUserProperties(boolean z) {
        updateValueInMarkInfoDict(PdfName.UserProperties, z ? PdfBoolean.TRUE : PdfBoolean.FALSE);
    }

    public PdfFont getFont(PdfDictionary pdfDictionary) {
        PdfIndirectReference indirectReference = pdfDictionary.getIndirectReference();
        if (indirectReference != null && this.documentFonts.containsKey(indirectReference)) {
            return this.documentFonts.get(indirectReference);
        }
        return addFont(PdfFontFactory.createFont(pdfDictionary));
    }

    public PdfFont getDefaultFont() {
        if (this.defaultFont == null) {
            try {
                PdfFont pdfFontCreateFont = PdfFontFactory.createFont();
                this.defaultFont = pdfFontCreateFont;
                if (this.writer != null) {
                    pdfFontCreateFont.makeIndirect(this);
                }
            } catch (IOException e) {
                LoggerFactory.getLogger((Class<?>) PdfDocument.class).error(IoLogMessageConstant.EXCEPTION_WHILE_CREATING_DEFAULT_FONT, (Throwable) e);
                this.defaultFont = null;
            }
        }
        return this.defaultFont;
    }

    public PdfFont addFont(PdfFont pdfFont) {
        pdfFont.makeIndirect(this);
        pdfFont.setForbidRelease();
        this.documentFonts.put(pdfFont.getPdfObject().getIndirectReference(), pdfFont);
        return pdfFont;
    }

    public boolean registerProduct(ProductData productData) {
        return this.fingerPrint.registerProduct(productData);
    }

    public FingerPrint getFingerPrint() {
        return this.fingerPrint;
    }

    public PdfFont findFont(String str, String str2) {
        for (PdfFont pdfFont : this.documentFonts.values()) {
            if (!pdfFont.isFlushed() && pdfFont.isBuiltWith(str, str2)) {
                return pdfFont;
            }
        }
        return null;
    }

    public long getDocumentId() {
        return this.documentId.getId();
    }

    public SequenceId getDocumentIdWrapper() {
        return this.documentId;
    }

    public SerializeOptions getSerializeOptions() {
        return this.serializeOptions;
    }

    public void setSerializeOptions(SerializeOptions serializeOptions) {
        this.serializeOptions = serializeOptions;
    }

    protected void initTagStructureContext() {
        this.tagStructureContext = new TagStructureContext(this);
    }

    protected void storeDestinationToReaddress(PdfDestination pdfDestination, Consumer<PdfDestination> consumer, Consumer<PdfDestination> consumer2) {
        this.pendingDestinationMutations.add(new DestinationMutationInfo(pdfDestination, consumer, consumer2));
    }

    protected void markObjectAsMustBeFlushed(PdfObject pdfObject) {
        if (pdfObject.getIndirectReference() != null) {
            pdfObject.getIndirectReference().setState((short) 32);
        }
    }

    protected void flushObject(PdfObject pdfObject, boolean z) throws IOException {
        this.writer.flushObject(pdfObject, z);
    }

    protected void open(PdfVersion pdfVersion) {
        boolean z;
        PdfNumber asNumber;
        PdfString pdfString;
        PdfReader pdfReader;
        this.fingerPrint = new FingerPrint();
        this.encryptedEmbeddedStreamsHandler = new EncryptedEmbeddedStreamsHandler(this);
        try {
            ITextCoreProductEvent iTextCoreProductEventCreateProcessPdfEvent = ITextCoreProductEvent.createProcessPdfEvent(getDocumentIdWrapper(), this.properties.metaInfo, this.writer == null ? EventConfirmationType.ON_DEMAND : EventConfirmationType.ON_CLOSE);
            EventManager.getInstance().onEvent(iTextCoreProductEventCreateProcessPdfEvent);
            PdfReader pdfReader2 = this.reader;
            if (pdfReader2 == null) {
                z = false;
            } else {
                if (pdfReader2.pdfDocument != null) {
                    throw new PdfException(KernelExceptionMessageConstant.PDF_READER_HAS_BEEN_ALREADY_UTILIZED);
                }
                this.reader.pdfDocument = this;
                MemoryLimitsAwareHandler memoryLimitsAwareHandler = this.reader.properties.memoryLimitsAwareHandler;
                this.memoryLimitsAwareHandler = memoryLimitsAwareHandler;
                if (memoryLimitsAwareHandler == null) {
                    this.memoryLimitsAwareHandler = new MemoryLimitsAwareHandler(this.reader.tokens.getSafeFile().length());
                }
                this.xref.setMemoryLimitsAwareHandler(this.memoryLimitsAwareHandler);
                this.reader.readPdf();
                if (this.reader.decrypt == null || !this.reader.decrypt.isEmbeddedFilesOnly()) {
                    z = false;
                } else {
                    this.encryptedEmbeddedStreamsHandler.storeAllEmbeddedStreams();
                    z = true;
                }
                this.pdfVersion = this.reader.headerPdfVersion;
                this.trailer = new PdfDictionary(this.reader.trailer);
                readDocumentIds();
                PdfDictionary pdfDictionary = (PdfDictionary) this.trailer.get(PdfName.Root, true);
                if (pdfDictionary == null) {
                    throw new PdfException(KernelExceptionMessageConstant.CORRUPTED_ROOT_ENTRY_IN_TRAILER);
                }
                this.catalog = new PdfCatalog(pdfDictionary);
                updatePdfVersionFromCatalog();
                PdfStream asStream = this.catalog.getPdfObject().getAsStream(PdfName.Metadata);
                if (asStream != null) {
                    this.xmpMetadata = asStream.getBytes();
                    if (!getClass().equals(PdfDocument.class)) {
                        this.reader.getPdfAConformanceLevel();
                        getDocumentInfo();
                    }
                }
                PdfDictionary asDictionary = this.catalog.getPdfObject().getAsDictionary(PdfName.StructTreeRoot);
                if (asDictionary != null) {
                    tryInitTagStructure(asDictionary);
                }
                if (this.properties.appendMode && (this.reader.hasRebuiltXref() || this.reader.hasFixedXref())) {
                    throw new PdfException(KernelExceptionMessageConstant.f2909xb0c47c6a);
                }
            }
            this.xref.initFreeReferencesList(this);
            if (this.writer != null) {
                PdfReader pdfReader3 = this.reader;
                if (pdfReader3 != null && pdfReader3.hasXrefStm() && this.writer.properties.isFullCompression == null) {
                    this.writer.properties.isFullCompression = true;
                }
                PdfReader pdfReader4 = this.reader;
                if (pdfReader4 != null && !pdfReader4.isOpenedWithFullPermission()) {
                    throw new BadPasswordException(BadPasswordException.PdfReaderNotOpenedWithOwnerPassword);
                }
                if (this.reader != null && this.properties.preserveEncryption) {
                    this.writer.crypto = this.reader.decrypt;
                }
                this.writer.document = this;
                if (this.reader == null) {
                    this.catalog = new PdfCatalog(this);
                    this.info = new PdfDocumentInfo(this).addCreationDate();
                }
                getDocumentInfo().addModDate();
                PdfDictionary pdfDictionary2 = new PdfDictionary();
                this.trailer = pdfDictionary2;
                pdfDictionary2.put(PdfName.Root, this.catalog.getPdfObject().getIndirectReference());
                this.trailer.put(PdfName.Info, getDocumentInfo().getPdfObject().getIndirectReference());
                PdfReader pdfReader5 = this.reader;
                if (pdfReader5 != null && pdfReader5.trailer.containsKey(PdfName.f3021ID)) {
                    this.trailer.put(PdfName.f3021ID, this.reader.trailer.get(PdfName.f3021ID));
                }
                if (this.writer.properties != null) {
                    PdfString pdfString2 = this.modifiedDocumentId;
                    if (this.writer.properties.initialDocumentId != null && ((pdfReader = this.reader) == null || pdfReader.decrypt == null || (!this.properties.appendMode && !this.properties.preserveEncryption))) {
                        this.originalDocumentId = this.writer.properties.initialDocumentId;
                    }
                    if (this.writer.properties.modifiedDocumentId != null) {
                        this.modifiedDocumentId = this.writer.properties.modifiedDocumentId;
                    }
                    if (this.originalDocumentId == null && (pdfString = this.modifiedDocumentId) != null) {
                        this.originalDocumentId = pdfString;
                    }
                    if (this.modifiedDocumentId == null) {
                        if (this.originalDocumentId == null) {
                            this.originalDocumentId = new PdfString(PdfEncryption.generateNewDocumentId());
                        }
                        this.modifiedDocumentId = this.originalDocumentId;
                    }
                    if (this.writer.properties.modifiedDocumentId == null && this.modifiedDocumentId.equals(pdfString2)) {
                        this.modifiedDocumentId = new PdfString(PdfEncryption.generateNewDocumentId());
                    }
                }
            }
            if (this.properties.appendMode) {
                RandomAccessFileOrArray safeFile = this.reader.tokens.getSafeFile();
                byte[] bArr = new byte[8192];
                while (true) {
                    int i = safeFile.read(bArr);
                    if (i <= 0) {
                        break;
                    } else {
                        this.writer.write(bArr, 0, i);
                    }
                }
                safeFile.close();
                this.writer.write(10);
                overrideFullCompressionInWriterProperties(this.writer.properties, this.reader.hasXrefStm());
                this.writer.crypto = this.reader.decrypt;
                if (pdfVersion != null && this.pdfVersion.compareTo(PdfVersion.PDF_1_4) >= 0 && pdfVersion.compareTo(this.reader.headerPdfVersion) > 0) {
                    this.catalog.put(PdfName.Version, pdfVersion.toPdfName());
                    this.catalog.setModified();
                    this.pdfVersion = pdfVersion;
                }
            } else {
                PdfWriter pdfWriter = this.writer;
                if (pdfWriter != null) {
                    if (pdfVersion != null) {
                        this.pdfVersion = pdfVersion;
                    }
                    pdfWriter.writeHeader();
                    if (this.writer.crypto == null) {
                        this.writer.initCryptoIfSpecified(this.pdfVersion);
                    }
                    if (this.writer.crypto != null) {
                        if (!z && this.writer.crypto.isEmbeddedFilesOnly()) {
                            this.encryptedEmbeddedStreamsHandler.storeAllEmbeddedStreams();
                        }
                        if (this.writer.crypto.getCryptoMode() < 3) {
                            VersionConforming.validatePdfVersionForDeprecatedFeatureLogWarn(this, PdfVersion.PDF_2_0, VersionConforming.DEPRECATED_ENCRYPTION_ALGORITHMS);
                        } else if (this.writer.crypto.getCryptoMode() == 3 && (asNumber = this.writer.crypto.getPdfObject().getAsNumber(PdfName.f3056R)) != null && asNumber.intValue() == 5) {
                            VersionConforming.validatePdfVersionForDeprecatedFeatureLogWarn(this, PdfVersion.PDF_2_0, VersionConforming.DEPRECATED_AES256_REVISION);
                        }
                    }
                }
            }
            if (EventConfirmationType.ON_DEMAND == iTextCoreProductEventCreateProcessPdfEvent.getConfirmationType()) {
                EventManager.getInstance().onEvent(new ConfirmEvent(iTextCoreProductEventCreateProcessPdfEvent));
            }
        } catch (IOException e) {
            throw new PdfException(KernelExceptionMessageConstant.CANNOT_OPEN_DOCUMENT, e, this);
        }
    }

    protected void updateXmpMetadata() {
        try {
            if (this.xmpMetadata != null || this.writer.properties.addXmpMetadata || this.pdfVersion.compareTo(PdfVersion.PDF_2_0) >= 0) {
                setXmpMetadata(updateDefaultXmpMetadata());
            }
        } catch (XMPException e) {
            LoggerFactory.getLogger((Class<?>) PdfDocument.class).error(IoLogMessageConstant.EXCEPTION_WHILE_UPDATING_XMPMETADATA, (Throwable) e);
        }
    }

    protected XMPMeta updateDefaultXmpMetadata() throws XMPException {
        XMPMeta fromBuffer = XMPMetaFactory.parseFromBuffer(getXmpMetadata(true));
        XmpMetaInfoConverter.appendDocumentInfoToMetadata(getDocumentInfo(), fromBuffer);
        if (isTagged() && this.writer.properties.addUAXmpMetadata && !isXmpMetaHasProperty(fromBuffer, XMPConst.NS_PDFUA_ID, "part")) {
            fromBuffer.setPropertyInteger(XMPConst.NS_PDFUA_ID, "part", 1, new PropertyOptions(1073741824));
        }
        return fromBuffer;
    }

    protected Collection<PdfFont> getDocumentFonts() {
        return this.documentFonts.values();
    }

    protected void flushFonts() {
        if (this.properties.appendMode) {
            for (PdfFont pdfFont : getDocumentFonts()) {
                if (pdfFont.getPdfObject().checkState((short) 64) || pdfFont.getPdfObject().getIndirectReference().checkState((short) 8)) {
                    pdfFont.flush();
                }
            }
            return;
        }
        Iterator<PdfFont> it = getDocumentFonts().iterator();
        while (it.hasNext()) {
            it.next().flush();
        }
    }

    protected void checkAndAddPage(int i, PdfPage pdfPage) {
        if (pdfPage.isFlushed()) {
            throw new PdfException(KernelExceptionMessageConstant.FLUSHED_PAGE_CANNOT_BE_ADDED_OR_INSERTED, pdfPage);
        }
        if (pdfPage.getDocument() != null && this != pdfPage.getDocument()) {
            throw new PdfException(KernelExceptionMessageConstant.f2922xeea6ed64).setMessageParams(pdfPage.getDocument(), Integer.valueOf(pdfPage.getDocument().getPageNumber(pdfPage)), this);
        }
        this.catalog.getPageTree().addPage(i, pdfPage);
    }

    protected void checkAndAddPage(PdfPage pdfPage) {
        if (pdfPage.isFlushed()) {
            throw new PdfException(KernelExceptionMessageConstant.FLUSHED_PAGE_CANNOT_BE_ADDED_OR_INSERTED, pdfPage);
        }
        if (pdfPage.getDocument() != null && this != pdfPage.getDocument()) {
            throw new PdfException(KernelExceptionMessageConstant.f2922xeea6ed64).setMessageParams(pdfPage.getDocument(), Integer.valueOf(pdfPage.getDocument().getPageNumber(pdfPage)), this);
        }
        this.catalog.getPageTree().addPage(pdfPage);
    }

    protected void checkClosingStatus() {
        if (this.closed) {
            throw new PdfException("Document was closed. It is impossible to execute action.");
        }
    }

    protected IPdfPageFactory getPageFactory() {
        return pdfPageFactory;
    }

    protected void tryInitTagStructure(PdfDictionary pdfDictionary) {
        try {
            this.structTreeRoot = new PdfStructTreeRoot(pdfDictionary, this);
            this.structParentIndex = getStructTreeRoot().getParentTreeNextKey();
        } catch (Exception e) {
            this.structTreeRoot = null;
            this.structParentIndex = -1;
            LoggerFactory.getLogger((Class<?>) PdfDocument.class).error(IoLogMessageConstant.TAG_STRUCTURE_INIT_FAILED, (Throwable) e);
        }
    }

    PdfXrefTable getXref() {
        return this.xref;
    }

    boolean isDocumentFont(PdfIndirectReference pdfIndirectReference) {
        return pdfIndirectReference != null && this.documentFonts.containsKey(pdfIndirectReference);
    }

    boolean doesStreamBelongToEmbeddedFile(PdfStream pdfStream) {
        return this.encryptedEmbeddedStreamsHandler.isStreamStoredAsEmbedded(pdfStream);
    }

    boolean hasAcroForm() {
        return getCatalog().getPdfObject().containsKey(PdfName.AcroForm);
    }

    private void tryFlushTagStructure(boolean z) {
        try {
            TagStructureContext tagStructureContext = this.tagStructureContext;
            if (tagStructureContext != null) {
                tagStructureContext.prepareToDocumentClosing();
            }
            if (!z || this.structTreeRoot.getPdfObject().isModified()) {
                this.structTreeRoot.flush();
            }
        } catch (Exception e) {
            throw new PdfException(KernelExceptionMessageConstant.TAG_STRUCTURE_FLUSHING_FAILED_IT_MIGHT_BE_CORRUPTED, (Throwable) e);
        }
    }

    private void updateValueInMarkInfoDict(PdfName pdfName, PdfObject pdfObject) {
        PdfDictionary asDictionary = this.catalog.getPdfObject().getAsDictionary(PdfName.MarkInfo);
        if (asDictionary == null) {
            asDictionary = new PdfDictionary();
            this.catalog.getPdfObject().put(PdfName.MarkInfo, asDictionary);
        }
        asDictionary.put(pdfName, pdfObject);
    }

    private void removeUnusedWidgetsFromFields(PdfPage pdfPage) {
        if (pdfPage.isFlushed()) {
            return;
        }
        PdfDictionary asDictionary = getCatalog().getPdfObject().getAsDictionary(PdfName.AcroForm);
        PdfArray asArray = asDictionary == null ? null : asDictionary.getAsArray(PdfName.Fields);
        for (PdfAnnotation pdfAnnotation : pdfPage.getAnnotations()) {
            if (pdfAnnotation.getSubtype().equals(PdfName.Widget)) {
                ((PdfWidgetAnnotation) pdfAnnotation).releaseFormFieldFromWidgetAnnotation();
                if (asArray != null) {
                    asArray.remove(pdfAnnotation.getPdfObject());
                }
            }
        }
    }

    private void resolveDestinations(PdfDocument pdfDocument, Map<PdfPage, PdfPage> map) {
        for (DestinationMutationInfo destinationMutationInfo : this.pendingDestinationMutations) {
            PdfDestination pdfDestinationCopyDestination = getCatalog().copyDestination(destinationMutationInfo.getOriginalDestination().getPdfObject(), map, pdfDocument);
            if (pdfDestinationCopyDestination == null) {
                destinationMutationInfo.handleDestinationUnavailable();
            } else {
                destinationMutationInfo.handleDestinationAvailable(pdfDestinationCopyDestination);
            }
        }
    }

    private void copyOutlines(Set<PdfOutline> set, PdfDocument pdfDocument, Map<PdfPage, PdfPage> map) {
        HashSet hashSet = new HashSet();
        hashSet.addAll(set);
        Iterator<PdfOutline> it = set.iterator();
        while (it.hasNext()) {
            getAllOutlinesToCopy(it.next(), hashSet);
        }
        PdfOutline outlines = pdfDocument.getOutlines(false);
        if (outlines == null) {
            outlines = new PdfOutline(pdfDocument);
            outlines.setTitle("Outlines");
        }
        cloneOutlines(hashSet, outlines, getOutlines(false), map, pdfDocument);
    }

    private void getAllOutlinesToCopy(PdfOutline pdfOutline, Set<PdfOutline> set) {
        PdfOutline parent = pdfOutline.getParent();
        if ("Outlines".equals(parent.getTitle()) || set.contains(parent)) {
            return;
        }
        set.add(parent);
        getAllOutlinesToCopy(parent, set);
    }

    private void cloneOutlines(Set<PdfOutline> set, PdfOutline pdfOutline, PdfOutline pdfOutline2, Map<PdfPage, PdfPage> map, PdfDocument pdfDocument) {
        if (pdfOutline2 == null) {
            return;
        }
        for (PdfOutline pdfOutline3 : pdfOutline2.getAllChildren()) {
            if (set.contains(pdfOutline3)) {
                PdfDestination pdfDestinationCopyDestination = pdfOutline3.getDestination() != null ? getCatalog().copyDestination(pdfOutline3.getDestination().getPdfObject(), map, pdfDocument) : null;
                PdfOutline pdfOutlineAddOutline = pdfOutline.addOutline(pdfOutline3.getTitle());
                if (pdfDestinationCopyDestination != null) {
                    pdfOutlineAddOutline.addDestination(pdfDestinationCopyDestination);
                }
                Integer style = pdfOutline3.getStyle();
                if (style != null) {
                    pdfOutlineAddOutline.setStyle(style.intValue());
                }
                Color color = pdfOutline3.getColor();
                if (color != null) {
                    pdfOutlineAddOutline.setColor(color);
                }
                pdfOutlineAddOutline.setOpen(pdfOutline3.isOpen());
                cloneOutlines(set, pdfOutlineAddOutline, pdfOutline3, map, pdfDocument);
            }
        }
    }

    private void ensureTreeRootAddedToNames(PdfObject pdfObject, PdfName pdfName) {
        PdfDictionary asDictionary = this.catalog.getPdfObject().getAsDictionary(PdfName.Names);
        if (asDictionary == null) {
            asDictionary = new PdfDictionary();
            this.catalog.put(PdfName.Names, asDictionary);
            asDictionary.makeIndirect(this);
        }
        asDictionary.put(pdfName, pdfObject);
        asDictionary.setModified();
    }

    private boolean writerHasEncryption() {
        return this.writer.properties.isStandardEncryptionUsed() || this.writer.properties.isPublicKeyEncryptionUsed();
    }

    private void updatePdfVersionFromCatalog() {
        if (this.catalog.getPdfObject().containsKey(PdfName.Version)) {
            try {
                PdfVersion pdfVersionFromPdfName = PdfVersion.fromPdfName(this.catalog.getPdfObject().getAsName(PdfName.Version));
                if (pdfVersionFromPdfName.compareTo(this.pdfVersion) > 0) {
                    this.pdfVersion = pdfVersionFromPdfName;
                }
            } catch (IllegalArgumentException unused) {
                processReadingError(IoLogMessageConstant.DOCUMENT_VERSION_IN_CATALOG_CORRUPTED);
            }
        }
    }

    private void readDocumentIds() {
        PdfArray asArray = this.reader.trailer.getAsArray(PdfName.f3021ID);
        if (asArray != null) {
            if (asArray.size() == 2) {
                this.originalDocumentId = asArray.getAsString(0);
                this.modifiedDocumentId = asArray.getAsString(1);
            }
            if (this.originalDocumentId == null || this.modifiedDocumentId == null) {
                processReadingError(IoLogMessageConstant.DOCUMENT_IDS_ARE_CORRUPTED);
            }
        }
    }

    private void processReadingError(String str) {
        if (PdfReader.StrictnessLevel.CONSERVATIVE.isStricter(this.reader.getStrictnessLevel())) {
            LoggerFactory.getLogger((Class<?>) PdfDocument.class).error(str);
            return;
        }
        throw new PdfException(str);
    }

    private static void overrideFullCompressionInWriterProperties(WriterProperties writerProperties, boolean z) {
        if (Boolean.TRUE == writerProperties.isFullCompression && !z) {
            LoggerFactory.getLogger((Class<?>) PdfDocument.class).warn(KernelLogMessageConstant.FULL_COMPRESSION_APPEND_MODE_XREF_TABLE_INCONSISTENCY);
        } else if (Boolean.FALSE == writerProperties.isFullCompression && z) {
            LoggerFactory.getLogger((Class<?>) PdfDocument.class).warn(KernelLogMessageConstant.FULL_COMPRESSION_APPEND_MODE_XREF_STREAM_INCONSISTENCY);
        }
        writerProperties.isFullCompression = Boolean.valueOf(z);
    }

    private static boolean isXmpMetaHasProperty(XMPMeta xMPMeta, String str, String str2) throws XMPException {
        return xMPMeta.getProperty(str, str2) != null;
    }

    private static class DestinationMutationInfo {
        private final Consumer<PdfDestination> onDestinationAvailable;
        private final Consumer<PdfDestination> onDestinationNotAvailable;
        private final PdfDestination originalDestination;

        public DestinationMutationInfo(PdfDestination pdfDestination, Consumer<PdfDestination> consumer, Consumer<PdfDestination> consumer2) {
            this.originalDestination = pdfDestination;
            this.onDestinationAvailable = consumer;
            this.onDestinationNotAvailable = consumer2;
        }

        public void handleDestinationAvailable(PdfDestination pdfDestination) {
            this.onDestinationAvailable.accept(pdfDestination);
        }

        public void handleDestinationUnavailable() {
            this.onDestinationNotAvailable.accept(this.originalDestination);
        }

        public PdfDestination getOriginalDestination() {
            return this.originalDestination;
        }
    }
}
