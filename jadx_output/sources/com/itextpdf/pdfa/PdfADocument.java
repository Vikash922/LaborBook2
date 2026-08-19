package com.itextpdf.pdfa;

import com.itextpdf.kernel.font.PdfFont;
import com.itextpdf.kernel.pdf.DocumentProperties;
import com.itextpdf.kernel.pdf.IPdfPageFactory;
import com.itextpdf.kernel.pdf.IsoKey;
import com.itextpdf.kernel.pdf.PdfAConformanceLevel;
import com.itextpdf.kernel.pdf.PdfDictionary;
import com.itextpdf.kernel.pdf.PdfDocument;
import com.itextpdf.kernel.pdf.PdfName;
import com.itextpdf.kernel.pdf.PdfObject;
import com.itextpdf.kernel.pdf.PdfOutputIntent;
import com.itextpdf.kernel.pdf.PdfPage;
import com.itextpdf.kernel.pdf.PdfReader;
import com.itextpdf.kernel.pdf.PdfResources;
import com.itextpdf.kernel.pdf.PdfStream;
import com.itextpdf.kernel.pdf.PdfVersion;
import com.itextpdf.kernel.pdf.PdfWriter;
import com.itextpdf.kernel.pdf.PdfXrefTable;
import com.itextpdf.kernel.pdf.StampingProperties;
import com.itextpdf.kernel.pdf.canvas.CanvasGraphicsState;
import com.itextpdf.kernel.pdf.tagutils.TagStructureContext;
import com.itextpdf.kernel.xmp.XMPConst;
import com.itextpdf.kernel.xmp.XMPException;
import com.itextpdf.kernel.xmp.XMPMeta;
import com.itextpdf.kernel.xmp.XMPMetaFactory;
import com.itextpdf.kernel.xmp.XMPUtils;
import com.itextpdf.p017io.logs.IoLogMessageConstant;
import com.itextpdf.pdfa.checker.PdfA1Checker;
import com.itextpdf.pdfa.checker.PdfA2Checker;
import com.itextpdf.pdfa.checker.PdfA3Checker;
import com.itextpdf.pdfa.checker.PdfAChecker;
import com.itextpdf.pdfa.exceptions.PdfAConformanceException;
import com.itextpdf.pdfa.logs.PdfALogMessageConstant;
import java.io.IOException;
import java.util.Iterator;
import org.slf4j.LoggerFactory;

/* JADX INFO: loaded from: classes6.dex */
public class PdfADocument extends PdfDocument {
    private static IPdfPageFactory pdfAPageFactory = new PdfAPageFactory();
    private boolean alreadyLoggedThatObjectFlushingWasNotPerformed;
    private boolean alreadyLoggedThatPageFlushingWasNotPerformed;
    protected PdfAChecker checker;
    private boolean isPdfADocument;

    public PdfADocument(PdfWriter pdfWriter, PdfAConformanceLevel pdfAConformanceLevel, PdfOutputIntent pdfOutputIntent) {
        this(pdfWriter, pdfAConformanceLevel, pdfOutputIntent, new DocumentProperties());
    }

    public PdfADocument(PdfWriter pdfWriter, PdfAConformanceLevel pdfAConformanceLevel, PdfOutputIntent pdfOutputIntent, DocumentProperties documentProperties) {
        super(pdfWriter, documentProperties);
        this.alreadyLoggedThatObjectFlushingWasNotPerformed = false;
        this.alreadyLoggedThatPageFlushingWasNotPerformed = false;
        this.isPdfADocument = true;
        setChecker(pdfAConformanceLevel);
        addOutputIntent(pdfOutputIntent);
    }

    public PdfADocument(PdfReader pdfReader, PdfWriter pdfWriter) {
        this(pdfReader, pdfWriter, new StampingProperties());
    }

    public PdfADocument(PdfReader pdfReader, PdfWriter pdfWriter, StampingProperties stampingProperties) {
        this(pdfReader, pdfWriter, stampingProperties, false);
    }

    PdfADocument(PdfReader pdfReader, PdfWriter pdfWriter, StampingProperties stampingProperties, boolean z) {
        super(pdfReader, pdfWriter, stampingProperties);
        this.alreadyLoggedThatObjectFlushingWasNotPerformed = false;
        this.alreadyLoggedThatPageFlushingWasNotPerformed = false;
        this.isPdfADocument = true;
        PdfAConformanceLevel pdfAConformanceLevel = pdfReader.getPdfAConformanceLevel();
        if (pdfAConformanceLevel == null) {
            if (z) {
                this.isPdfADocument = false;
            } else {
                throw new PdfAConformanceException(PdfAConformanceException.f3249x75e3db75);
            }
        }
        setChecker(pdfAConformanceLevel);
    }

    @Override // com.itextpdf.kernel.pdf.PdfDocument
    public void checkIsoConformance(Object obj, IsoKey isoKey) {
        checkIsoConformance(obj, isoKey, null, null);
    }

    @Override // com.itextpdf.kernel.pdf.PdfDocument
    public void checkIsoConformance(Object obj, IsoKey isoKey, PdfResources pdfResources, PdfStream pdfStream) {
        if (!this.isPdfADocument) {
            super.checkIsoConformance(obj, isoKey, pdfResources, pdfStream);
        }
        PdfDictionary asDictionary = pdfResources != null ? pdfResources.getPdfObject().getAsDictionary(PdfName.ColorSpace) : null;
        switch (C35221.$SwitchMap$com$itextpdf$kernel$pdf$IsoKey[isoKey.ordinal()]) {
            case 1:
                this.checker.checkCanvasStack(((Character) obj).charValue());
                break;
            case 2:
                this.checker.checkPdfObject((PdfObject) obj);
                break;
            case 3:
                this.checker.checkRenderingIntent((PdfName) obj);
                break;
            case 4:
                this.checker.checkInlineImage((PdfStream) obj, asDictionary);
                break;
            case 5:
                this.checker.checkExtGState((CanvasGraphicsState) obj, pdfStream);
                break;
            case 6:
                this.checker.checkColor(((CanvasGraphicsState) obj).getFillColor(), asDictionary, true, pdfStream);
                break;
            case 7:
                this.checker.checkSinglePage((PdfPage) obj);
                break;
            case 8:
                this.checker.checkColor(((CanvasGraphicsState) obj).getStrokeColor(), asDictionary, false, pdfStream);
                break;
            case 9:
                this.checker.checkTagStructureElement((PdfObject) obj);
                break;
            case 10:
                this.checker.checkFontGlyphs(((CanvasGraphicsState) obj).getFont(), pdfStream);
                break;
            case 11:
                this.checker.checkXrefTable((PdfXrefTable) obj);
                break;
            case 12:
                this.checker.checkSignature((PdfDictionary) obj);
                break;
        }
    }

    /* JADX INFO: renamed from: com.itextpdf.pdfa.PdfADocument$1 */
    static /* synthetic */ class C35221 {
        static final /* synthetic */ int[] $SwitchMap$com$itextpdf$kernel$pdf$IsoKey;

        static {
            int[] iArr = new int[IsoKey.values().length];
            $SwitchMap$com$itextpdf$kernel$pdf$IsoKey = iArr;
            try {
                iArr[IsoKey.CANVAS_STACK.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$itextpdf$kernel$pdf$IsoKey[IsoKey.PDF_OBJECT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$itextpdf$kernel$pdf$IsoKey[IsoKey.RENDERING_INTENT.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$com$itextpdf$kernel$pdf$IsoKey[IsoKey.INLINE_IMAGE.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$com$itextpdf$kernel$pdf$IsoKey[IsoKey.EXTENDED_GRAPHICS_STATE.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                $SwitchMap$com$itextpdf$kernel$pdf$IsoKey[IsoKey.FILL_COLOR.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                $SwitchMap$com$itextpdf$kernel$pdf$IsoKey[IsoKey.PAGE.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                $SwitchMap$com$itextpdf$kernel$pdf$IsoKey[IsoKey.STROKE_COLOR.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                $SwitchMap$com$itextpdf$kernel$pdf$IsoKey[IsoKey.TAG_STRUCTURE_ELEMENT.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                $SwitchMap$com$itextpdf$kernel$pdf$IsoKey[IsoKey.FONT_GLYPHS.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                $SwitchMap$com$itextpdf$kernel$pdf$IsoKey[IsoKey.XREF_TABLE.ordinal()] = 11;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                $SwitchMap$com$itextpdf$kernel$pdf$IsoKey[IsoKey.SIGNATURE.ordinal()] = 12;
            } catch (NoSuchFieldError unused12) {
            }
        }
    }

    public PdfAConformanceLevel getConformanceLevel() {
        if (this.isPdfADocument) {
            return this.checker.getConformanceLevel();
        }
        return null;
    }

    void logThatPdfAPageFlushingWasNotPerformed() {
        if (this.alreadyLoggedThatPageFlushingWasNotPerformed) {
            return;
        }
        this.alreadyLoggedThatPageFlushingWasNotPerformed = true;
        LoggerFactory.getLogger((Class<?>) PdfADocument.class).warn(PdfALogMessageConstant.PDFA_PAGE_FLUSHING_WAS_NOT_PERFORMED);
    }

    @Override // com.itextpdf.kernel.pdf.PdfDocument
    protected void addCustomMetadataExtensions(XMPMeta xMPMeta) {
        if (!this.isPdfADocument) {
            super.addCustomMetadataExtensions(xMPMeta);
            return;
        }
        if (isTagged()) {
            try {
                if (xMPMeta.getPropertyInteger(XMPConst.NS_PDFUA_ID, "part") != null) {
                    XMPUtils.appendProperties(XMPMetaFactory.parseFromString(PdfAXMPUtil.PDF_UA_EXTENSION), xMPMeta, true, false);
                }
            } catch (XMPException e) {
                LoggerFactory.getLogger((Class<?>) PdfADocument.class).error(IoLogMessageConstant.EXCEPTION_WHILE_UPDATING_XMPMETADATA, (Throwable) e);
            }
        }
    }

    @Override // com.itextpdf.kernel.pdf.PdfDocument
    protected void updateXmpMetadata() {
        if (!this.isPdfADocument) {
            super.updateXmpMetadata();
            return;
        }
        try {
            XMPMeta xMPMetaUpdateDefaultXmpMetadata = updateDefaultXmpMetadata();
            xMPMetaUpdateDefaultXmpMetadata.setProperty(XMPConst.NS_PDFA_ID, "part", this.checker.getConformanceLevel().getPart());
            xMPMetaUpdateDefaultXmpMetadata.setProperty(XMPConst.NS_PDFA_ID, XMPConst.CONFORMANCE, this.checker.getConformanceLevel().getConformance());
            addCustomMetadataExtensions(xMPMetaUpdateDefaultXmpMetadata);
            setXmpMetadata(xMPMetaUpdateDefaultXmpMetadata);
        } catch (XMPException e) {
            LoggerFactory.getLogger((Class<?>) PdfADocument.class).error(IoLogMessageConstant.EXCEPTION_WHILE_UPDATING_XMPMETADATA, (Throwable) e);
        }
    }

    @Override // com.itextpdf.kernel.pdf.PdfDocument
    protected void checkIsoConformance() {
        if (this.isPdfADocument) {
            this.checker.checkDocument(this.catalog);
        } else {
            super.checkIsoConformance();
        }
    }

    @Override // com.itextpdf.kernel.pdf.PdfDocument
    protected void flushObject(PdfObject pdfObject, boolean z) throws IOException {
        if (!this.isPdfADocument) {
            super.flushObject(pdfObject, z);
            return;
        }
        markObjectAsMustBeFlushed(pdfObject);
        if (this.isClosing || this.checker.objectIsChecked(pdfObject)) {
            super.flushObject(pdfObject, z);
        } else {
            if (this.alreadyLoggedThatObjectFlushingWasNotPerformed) {
                return;
            }
            this.alreadyLoggedThatObjectFlushingWasNotPerformed = true;
            LoggerFactory.getLogger((Class<?>) PdfADocument.class).warn(PdfALogMessageConstant.PDFA_OBJECT_FLUSHING_WAS_NOT_PERFORMED);
        }
    }

    @Override // com.itextpdf.kernel.pdf.PdfDocument
    protected void flushFonts() {
        if (this.isPdfADocument) {
            Iterator<PdfFont> it = getDocumentFonts().iterator();
            while (it.hasNext()) {
                this.checker.checkFont(it.next());
            }
        }
        super.flushFonts();
    }

    protected void setChecker(PdfAConformanceLevel pdfAConformanceLevel) {
        if (this.isPdfADocument) {
            String part = pdfAConformanceLevel.getPart();
            part.hashCode();
            switch (part) {
                case "1":
                    this.checker = new PdfA1Checker(pdfAConformanceLevel);
                    break;
                case "2":
                    this.checker = new PdfA2Checker(pdfAConformanceLevel);
                    break;
                case "3":
                    this.checker = new PdfA3Checker(pdfAConformanceLevel);
                    break;
            }
        }
    }

    @Override // com.itextpdf.kernel.pdf.PdfDocument
    protected void initTagStructureContext() {
        if (this.isPdfADocument) {
            this.tagStructureContext = new TagStructureContext(this, getPdfVersionForPdfA(this.checker.getConformanceLevel()));
        } else {
            super.initTagStructureContext();
        }
    }

    @Override // com.itextpdf.kernel.pdf.PdfDocument
    protected IPdfPageFactory getPageFactory() {
        if (this.isPdfADocument) {
            return pdfAPageFactory;
        }
        return super.getPageFactory();
    }

    boolean isClosing() {
        return this.isClosing;
    }

    private static PdfVersion getPdfVersionForPdfA(PdfAConformanceLevel pdfAConformanceLevel) {
        String part = pdfAConformanceLevel.getPart();
        part.hashCode();
        switch (part) {
        }
        return PdfVersion.PDF_1_4;
    }
}
