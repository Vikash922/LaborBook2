package com.itextpdf.kernel.utils;

import com.google.firebase.sessions.settings.RemoteSettings;
import com.itextpdf.commons.actions.contexts.IMetaInfo;
import com.itextpdf.commons.utils.FileUtil;
import com.itextpdf.commons.utils.MessageFormatUtil;
import com.itextpdf.kernel.geom.Rectangle;
import com.itextpdf.kernel.pdf.DocumentProperties;
import com.itextpdf.kernel.pdf.PdfArray;
import com.itextpdf.kernel.pdf.PdfBoolean;
import com.itextpdf.kernel.pdf.PdfDictionary;
import com.itextpdf.kernel.pdf.PdfDocument;
import com.itextpdf.kernel.pdf.PdfDocumentInfo;
import com.itextpdf.kernel.pdf.PdfIndirectReference;
import com.itextpdf.kernel.pdf.PdfName;
import com.itextpdf.kernel.pdf.PdfNumber;
import com.itextpdf.kernel.pdf.PdfObject;
import com.itextpdf.kernel.pdf.PdfReader;
import com.itextpdf.kernel.pdf.PdfStream;
import com.itextpdf.kernel.pdf.PdfString;
import com.itextpdf.kernel.pdf.PdfWriter;
import com.itextpdf.kernel.pdf.ReaderProperties;
import com.itextpdf.kernel.pdf.StampingProperties;
import com.itextpdf.kernel.pdf.annot.PdfAnnotation;
import com.itextpdf.kernel.pdf.annot.PdfLinkAnnotation;
import com.itextpdf.kernel.pdf.canvas.PdfCanvas;
import com.itextpdf.kernel.utils.objectpathitems.ObjectPath;
import com.itextpdf.kernel.utils.objectpathitems.TrailerPath;
import com.itextpdf.kernel.xmp.PdfConst;
import com.itextpdf.kernel.xmp.XMPConst;
import com.itextpdf.kernel.xmp.XMPMeta;
import com.itextpdf.kernel.xmp.XMPMetaFactory;
import com.itextpdf.kernel.xmp.XMPUtils;
import com.itextpdf.kernel.xmp.options.ParseOptions;
import com.itextpdf.kernel.xmp.options.SerializeOptions;
import com.itextpdf.p017io.font.PdfEncodings;
import com.itextpdf.p017io.logs.IoLogMessageConstant;
import com.itextpdf.p017io.util.GhostscriptHelper;
import com.itextpdf.p017io.util.ImageMagickHelper;
import com.itextpdf.p017io.util.UrlUtil;
import com.itextpdf.p017io.util.XmlUtil;
import com.itextpdf.styledxmlparser.css.CommonCssConstants;
import com.truecaller.android.sdk.common.network.RestAdapter;
import java.io.ByteArrayInputStream;
import java.io.File;
import java.io.FileFilter;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Comparator;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.TreeSet;
import javax.xml.parsers.ParserConfigurationException;
import javax.xml.transform.TransformerException;
import org.shadow.apache.commons.lang3.StringUtils;
import org.slf4j.LoggerFactory;
import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.w3c.dom.Node;
import org.xml.sax.SAXException;

/* JADX INFO: loaded from: classes6.dex */
public class CompareTool {
    static final /* synthetic */ boolean $assertionsDisabled = false;
    private static final String COPYRIGHT_REGEXP = "©\\d+-\\d+ iText Group NV";
    private static final String COPYRIGHT_REPLACEMENT = "©<copyright years> iText Group NV";
    private static final String DIFFERENT_PAGES = "File file://<filename> differs on page <pagenumber>.";
    private static final String FILE_PROTOCOL = "file://";
    private static final String IGNORED_AREAS_PREFIX = "ignored_areas_";
    private static final String NEW_LINES = "\\r|\\n";
    private static final String UNEXPECTED_NUMBER_OF_PAGES = "Unexpected number of pages for <filename>.";
    private static final String VERSION_REGEXP = "(\\d+\\.)+\\d+(-SNAPSHOT)?";
    private static final String VERSION_REPLACEMENT = "<version>";
    private String cmpImage;
    private List<PdfIndirectReference> cmpPagesRef;
    private String cmpPdf;
    private String cmpPdfName;
    private ReaderProperties cmpProps;
    private String compareExec;
    private String gsExec;
    private IMetaInfo metaInfo;
    private String outImage;
    private List<PdfIndirectReference> outPagesRef;
    private String outPdf;
    private String outPdfName;
    private ReaderProperties outProps;
    private int compareByContentErrorsLimit = 1000;
    private boolean generateCompareByContentXmlReport = false;
    private boolean encryptionCompareEnabled = false;
    private boolean useCachedPagesForComparison = true;

    public CompareTool() {
    }

    CompareTool(String str, String str2) {
        this.gsExec = str;
        this.compareExec = str2;
    }

    public CompareResult compareByCatalog(PdfDocument pdfDocument, PdfDocument pdfDocument2) {
        List<PdfIndirectReference> list;
        CompareResult compareResult = new CompareResult(this.compareByContentErrorsLimit);
        ObjectPath objectPath = new ObjectPath(pdfDocument2.getCatalog().getPdfObject().getIndirectReference(), pdfDocument.getCatalog().getPdfObject().getIndirectReference());
        compareDictionariesExtended(pdfDocument.getCatalog().getPdfObject(), pdfDocument2.getCatalog().getPdfObject(), objectPath, compareResult, new LinkedHashSet(Arrays.asList(PdfName.Metadata)));
        if (this.cmpPagesRef != null && (list = this.outPagesRef) != null) {
            if (list.size() != this.cmpPagesRef.size() && !compareResult.isMessageLimitReached()) {
                compareResult.addError(objectPath, "Documents have different numbers of pages.");
            }
            for (int i = 0; i < Math.min(this.cmpPagesRef.size(), this.outPagesRef.size()) && !compareResult.isMessageLimitReached(); i++) {
                compareDictionariesExtended((PdfDictionary) this.outPagesRef.get(i).getRefersTo(), (PdfDictionary) this.cmpPagesRef.get(i).getRefersTo(), new ObjectPath(this.cmpPagesRef.get(i), this.outPagesRef.get(i)), compareResult);
            }
        }
        return compareResult;
    }

    public CompareTool disableCachedPagesComparison() {
        this.useCachedPagesForComparison = false;
        return this;
    }

    public CompareTool setCompareByContentErrorsLimit(int i) {
        this.compareByContentErrorsLimit = i;
        return this;
    }

    public CompareTool setGenerateCompareByContentXmlReport(boolean z) {
        this.generateCompareByContentXmlReport = z;
        return this;
    }

    public void setEventCountingMetaInfo(IMetaInfo iMetaInfo) {
        this.metaInfo = iMetaInfo;
    }

    public CompareTool enableEncryptionCompare() {
        this.encryptionCompareEnabled = true;
        return this;
    }

    public ReaderProperties getOutReaderProperties() {
        if (this.outProps == null) {
            this.outProps = new ReaderProperties();
        }
        return this.outProps;
    }

    public ReaderProperties getCmpReaderProperties() {
        if (this.cmpProps == null) {
            this.cmpProps = new ReaderProperties();
        }
        return this.cmpProps;
    }

    public String compareVisually(String str, String str2, String str3, String str4) throws InterruptedException, IOException {
        return compareVisually(str, str2, str3, str4, null);
    }

    public String compareVisually(String str, String str2, String str3, String str4, Map<Integer, List<Rectangle>> map) throws InterruptedException, IOException {
        init(str, str2);
        System.out.println("Out pdf: " + UrlUtil.getNormalizedFileUriString(str));
        System.out.println("Cmp pdf: " + UrlUtil.getNormalizedFileUriString(str2) + StringUtils.f4768LF);
        return compareVisually(str3, str4, map);
    }

    public String compareByContent(String str, String str2, String str3) throws InterruptedException, IOException {
        return compareByContent(str, str2, str3, null, null, null, null);
    }

    public String compareByContent(String str, String str2, String str3, String str4) throws InterruptedException, IOException {
        return compareByContent(str, str2, str3, str4, null, null, null);
    }

    public String compareByContent(String str, String str2, String str3, String str4, byte[] bArr, byte[] bArr2) throws InterruptedException, IOException {
        return compareByContent(str, str2, str3, str4, null, bArr, bArr2);
    }

    public String compareByContent(String str, String str2, String str3, String str4, Map<Integer, List<Rectangle>> map) throws InterruptedException, IOException {
        return compareByContent(str, str2, str3, str4, map, null, null);
    }

    public String compareByContent(String str, String str2, String str3, String str4, Map<Integer, List<Rectangle>> map, byte[] bArr, byte[] bArr2) throws InterruptedException, IOException {
        init(str, str2);
        System.out.println("Out pdf: " + UrlUtil.getNormalizedFileUriString(str));
        System.out.println("Cmp pdf: " + UrlUtil.getNormalizedFileUriString(str2) + StringUtils.f4768LF);
        setPassword(bArr, bArr2);
        return compareByContent(str3, str4, map);
    }

    public boolean compareDictionaries(PdfDictionary pdfDictionary, PdfDictionary pdfDictionary2) {
        return compareDictionariesExtended(pdfDictionary, pdfDictionary2, null, null);
    }

    public CompareResult compareDictionariesStructure(PdfDictionary pdfDictionary, PdfDictionary pdfDictionary2) {
        return compareDictionariesStructure(pdfDictionary, pdfDictionary2, null);
    }

    public CompareResult compareDictionariesStructure(PdfDictionary pdfDictionary, PdfDictionary pdfDictionary2, Set<PdfName> set) {
        if (pdfDictionary.getIndirectReference() == null || pdfDictionary2.getIndirectReference() == null) {
            throw new IllegalArgumentException("The 'outDict' and 'cmpDict' objects shall have indirect references.");
        }
        CompareResult compareResult = new CompareResult(this.compareByContentErrorsLimit);
        if (compareDictionariesExtended(pdfDictionary, pdfDictionary2, new ObjectPath(pdfDictionary2.getIndirectReference(), pdfDictionary.getIndirectReference()), compareResult, set)) {
            return null;
        }
        System.out.println(compareResult.getReport());
        return compareResult;
    }

    public CompareResult compareStreamsStructure(PdfStream pdfStream, PdfStream pdfStream2) {
        CompareResult compareResult = new CompareResult(this.compareByContentErrorsLimit);
        if (compareStreamsExtended(pdfStream, pdfStream2, new ObjectPath(pdfStream2.getIndirectReference(), pdfStream.getIndirectReference()), compareResult)) {
            return null;
        }
        System.out.println(compareResult.getReport());
        return compareResult;
    }

    public boolean compareStreams(PdfStream pdfStream, PdfStream pdfStream2) {
        return compareStreamsExtended(pdfStream, pdfStream2, null, null);
    }

    public boolean compareArrays(PdfArray pdfArray, PdfArray pdfArray2) {
        return compareArraysExtended(pdfArray, pdfArray2, null, null);
    }

    public boolean compareNames(PdfName pdfName, PdfName pdfName2) {
        return pdfName2.equals(pdfName);
    }

    public boolean compareNumbers(PdfNumber pdfNumber, PdfNumber pdfNumber2) {
        return pdfNumber2.getValue() == pdfNumber.getValue();
    }

    public boolean compareStrings(PdfString pdfString, PdfString pdfString2) {
        return pdfString2.getValue().equals(pdfString.getValue());
    }

    public boolean compareBooleans(PdfBoolean pdfBoolean, PdfBoolean pdfBoolean2) {
        return pdfBoolean2.getValue() == pdfBoolean.getValue();
    }

    public String compareXmp(String str, String str2) {
        return compareXmp(str, str2, false);
    }

    public String compareXmp(String str, String str2, boolean z) {
        init(str, str2);
        try {
            PdfReader pdfReader = new PdfReader(this.cmpPdf);
            try {
                PdfDocument pdfDocument = new PdfDocument(pdfReader, new DocumentProperties().setEventCountingMetaInfo(this.metaInfo));
                try {
                    PdfReader pdfReader2 = new PdfReader(this.outPdf);
                    try {
                        PdfDocument pdfDocument2 = new PdfDocument(pdfReader2, new DocumentProperties().setEventCountingMetaInfo(this.metaInfo));
                        try {
                            byte[] xmpMetadata = pdfDocument.getXmpMetadata();
                            byte[] xmpMetadata2 = pdfDocument2.getXmpMetadata();
                            if (z) {
                                XMPMeta fromBuffer = XMPMetaFactory.parseFromBuffer(xmpMetadata, new ParseOptions().setOmitNormalization(true));
                                XMPUtils.removeProperties(fromBuffer, XMPConst.NS_XMP, PdfConst.CreateDate, true, true);
                                XMPUtils.removeProperties(fromBuffer, XMPConst.NS_XMP, PdfConst.ModifyDate, true, true);
                                XMPUtils.removeProperties(fromBuffer, XMPConst.NS_XMP, PdfConst.MetadataDate, true, true);
                                XMPUtils.removeProperties(fromBuffer, XMPConst.NS_PDF, PdfConst.Producer, true, true);
                                xmpMetadata = XMPMetaFactory.serializeToBuffer(fromBuffer, new SerializeOptions(8192));
                                XMPMeta fromBuffer2 = XMPMetaFactory.parseFromBuffer(xmpMetadata2, new ParseOptions().setOmitNormalization(true));
                                XMPUtils.removeProperties(fromBuffer2, XMPConst.NS_XMP, PdfConst.CreateDate, true, true);
                                XMPUtils.removeProperties(fromBuffer2, XMPConst.NS_XMP, PdfConst.ModifyDate, true, true);
                                XMPUtils.removeProperties(fromBuffer2, XMPConst.NS_XMP, PdfConst.MetadataDate, true, true);
                                XMPUtils.removeProperties(fromBuffer2, XMPConst.NS_PDF, PdfConst.Producer, true, true);
                                xmpMetadata2 = XMPMetaFactory.serializeToBuffer(fromBuffer2, new SerializeOptions(8192));
                            }
                            if (compareXmls(xmpMetadata, xmpMetadata2)) {
                                pdfDocument2.close();
                                pdfReader2.close();
                                pdfDocument.close();
                                pdfReader.close();
                                return null;
                            }
                            pdfDocument2.close();
                            pdfReader2.close();
                            pdfDocument.close();
                            pdfReader.close();
                            return "The XMP packages different!";
                        } finally {
                        }
                    } finally {
                    }
                } finally {
                }
            } finally {
            }
        } catch (Exception unused) {
            return "XMP parsing failure!";
        }
    }

    public boolean compareXmls(byte[] bArr, byte[] bArr2) throws ParserConfigurationException, SAXException, IOException {
        return XmlUtils.compareXmls(new ByteArrayInputStream(bArr), new ByteArrayInputStream(bArr2));
    }

    public boolean compareXmls(String str, String str2) throws ParserConfigurationException, SAXException, IOException {
        System.out.println("Out xml: " + UrlUtil.getNormalizedFileUriString(str));
        System.out.println("Cmp xml: " + UrlUtil.getNormalizedFileUriString(str2) + StringUtils.f4768LF);
        InputStream inputStreamForFile = FileUtil.getInputStreamForFile(str);
        try {
            InputStream inputStreamForFile2 = FileUtil.getInputStreamForFile(str2);
            try {
                boolean zCompareXmls = XmlUtils.compareXmls(inputStreamForFile, inputStreamForFile2);
                if (inputStreamForFile2 != null) {
                    inputStreamForFile2.close();
                }
                if (inputStreamForFile != null) {
                    inputStreamForFile.close();
                }
                return zCompareXmls;
            } finally {
            }
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                if (inputStreamForFile != null) {
                    try {
                        inputStreamForFile.close();
                    } catch (Throwable th3) {
                        th.addSuppressed(th3);
                    }
                }
                throw th2;
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x005a, code lost:
    
        r0 = com.itextpdf.commons.utils.MessageFormatUtil.format("Document info fail. Expected: \"{0}\", actual: \"{1}\"", r0[r2], r1[r2]);
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.String compareDocumentInfo(java.lang.String r6, java.lang.String r7, byte[] r8, byte[] r9) throws java.io.IOException {
        /*
            r5 = this;
            java.io.PrintStream r0 = java.lang.System.out
            java.lang.String r1 = "[itext] INFO  Comparing document info......."
            r0.print(r1)
            r5.setPassword(r8, r9)
            com.itextpdf.kernel.pdf.PdfReader r8 = new com.itextpdf.kernel.pdf.PdfReader
            com.itextpdf.kernel.pdf.ReaderProperties r9 = r5.getOutReaderProperties()
            r8.<init>(r6, r9)
            com.itextpdf.kernel.pdf.PdfDocument r6 = new com.itextpdf.kernel.pdf.PdfDocument     // Catch: java.lang.Throwable -> Lb4
            com.itextpdf.kernel.pdf.DocumentProperties r9 = new com.itextpdf.kernel.pdf.DocumentProperties     // Catch: java.lang.Throwable -> Lb4
            r9.<init>()     // Catch: java.lang.Throwable -> Lb4
            com.itextpdf.commons.actions.contexts.IMetaInfo r0 = r5.metaInfo     // Catch: java.lang.Throwable -> Lb4
            com.itextpdf.kernel.pdf.DocumentProperties r9 = r9.setEventCountingMetaInfo(r0)     // Catch: java.lang.Throwable -> Lb4
            r6.<init>(r8, r9)     // Catch: java.lang.Throwable -> Lb4
            com.itextpdf.kernel.pdf.PdfReader r9 = new com.itextpdf.kernel.pdf.PdfReader     // Catch: java.lang.Throwable -> La8
            com.itextpdf.kernel.pdf.ReaderProperties r0 = r5.getCmpReaderProperties()     // Catch: java.lang.Throwable -> La8
            r9.<init>(r7, r0)     // Catch: java.lang.Throwable -> La8
            com.itextpdf.kernel.pdf.PdfDocument r7 = new com.itextpdf.kernel.pdf.PdfDocument     // Catch: java.lang.Throwable -> L9c
            com.itextpdf.kernel.pdf.DocumentProperties r0 = new com.itextpdf.kernel.pdf.DocumentProperties     // Catch: java.lang.Throwable -> L9c
            r0.<init>()     // Catch: java.lang.Throwable -> L9c
            com.itextpdf.commons.actions.contexts.IMetaInfo r1 = r5.metaInfo     // Catch: java.lang.Throwable -> L9c
            com.itextpdf.kernel.pdf.DocumentProperties r0 = r0.setEventCountingMetaInfo(r1)     // Catch: java.lang.Throwable -> L9c
            r7.<init>(r9, r0)     // Catch: java.lang.Throwable -> L9c
            com.itextpdf.kernel.pdf.PdfDocumentInfo r0 = r7.getDocumentInfo()     // Catch: java.lang.Throwable -> L90
            java.lang.String[] r0 = r5.convertDocInfoToStrings(r0)     // Catch: java.lang.Throwable -> L90
            com.itextpdf.kernel.pdf.PdfDocumentInfo r1 = r6.getDocumentInfo()     // Catch: java.lang.Throwable -> L90
            java.lang.String[] r1 = r5.convertDocInfoToStrings(r1)     // Catch: java.lang.Throwable -> L90
            r2 = 0
        L4d:
            int r3 = r0.length     // Catch: java.lang.Throwable -> L90
            if (r2 >= r3) goto L6c
            r3 = r0[r2]     // Catch: java.lang.Throwable -> L90
            r4 = r1[r2]     // Catch: java.lang.Throwable -> L90
            boolean r3 = r3.equals(r4)     // Catch: java.lang.Throwable -> L90
            if (r3 != 0) goto L69
            java.lang.String r3 = "Document info fail. Expected: \"{0}\", actual: \"{1}\""
            r0 = r0[r2]     // Catch: java.lang.Throwable -> L90
            r1 = r1[r2]     // Catch: java.lang.Throwable -> L90
            java.lang.Object[] r0 = new java.lang.Object[]{r0, r1}     // Catch: java.lang.Throwable -> L90
            java.lang.String r0 = com.itextpdf.commons.utils.MessageFormatUtil.format(r3, r0)     // Catch: java.lang.Throwable -> L90
            goto L6d
        L69:
            int r2 = r2 + 1
            goto L4d
        L6c:
            r0 = 0
        L6d:
            r7.close()     // Catch: java.lang.Throwable -> L9c
            r9.close()     // Catch: java.lang.Throwable -> La8
            r6.close()     // Catch: java.lang.Throwable -> Lb4
            r8.close()
            if (r0 != 0) goto L83
            java.io.PrintStream r6 = java.lang.System.out
            java.lang.String r7 = "OK"
            r6.println(r7)
            goto L8a
        L83:
            java.io.PrintStream r6 = java.lang.System.out
            java.lang.String r7 = "Fail"
            r6.println(r7)
        L8a:
            java.io.PrintStream r6 = java.lang.System.out
            r6.flush()
            return r0
        L90:
            r0 = move-exception
            throw r0     // Catch: java.lang.Throwable -> L92
        L92:
            r1 = move-exception
            r7.close()     // Catch: java.lang.Throwable -> L97
            goto L9b
        L97:
            r7 = move-exception
            r0.addSuppressed(r7)     // Catch: java.lang.Throwable -> L9c
        L9b:
            throw r1     // Catch: java.lang.Throwable -> L9c
        L9c:
            r7 = move-exception
            throw r7     // Catch: java.lang.Throwable -> L9e
        L9e:
            r0 = move-exception
            r9.close()     // Catch: java.lang.Throwable -> La3
            goto La7
        La3:
            r9 = move-exception
            r7.addSuppressed(r9)     // Catch: java.lang.Throwable -> La8
        La7:
            throw r0     // Catch: java.lang.Throwable -> La8
        La8:
            r7 = move-exception
            throw r7     // Catch: java.lang.Throwable -> Laa
        Laa:
            r9 = move-exception
            r6.close()     // Catch: java.lang.Throwable -> Laf
            goto Lb3
        Laf:
            r6 = move-exception
            r7.addSuppressed(r6)     // Catch: java.lang.Throwable -> Lb4
        Lb3:
            throw r9     // Catch: java.lang.Throwable -> Lb4
        Lb4:
            r6 = move-exception
            throw r6     // Catch: java.lang.Throwable -> Lb6
        Lb6:
            r7 = move-exception
            r8.close()     // Catch: java.lang.Throwable -> Lbb
            goto Lbf
        Lbb:
            r8 = move-exception
            r6.addSuppressed(r8)
        Lbf:
            throw r7
        */
        throw new UnsupportedOperationException("Method not decompiled: com.itextpdf.kernel.utils.CompareTool.compareDocumentInfo(java.lang.String, java.lang.String, byte[], byte[]):java.lang.String");
    }

    public String compareDocumentInfo(String str, String str2) throws IOException {
        return compareDocumentInfo(str, str2, null, null);
    }

    /* JADX WARN: Code restructure failed: missing block: B:13:0x0054, code lost:
    
        r3 = com.itextpdf.commons.utils.MessageFormatUtil.format("Different number of links on page {0}.", java.lang.Integer.valueOf(r4));
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.String compareLinkAnnotations(java.lang.String r11, java.lang.String r12) throws java.io.IOException {
        /*
            Method dump skipped, instruction units count: 245
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.itextpdf.kernel.utils.CompareTool.compareLinkAnnotations(java.lang.String, java.lang.String):java.lang.String");
    }

    public String compareTagStructures(String str, String str2) throws ParserConfigurationException, SAXException, IOException {
        System.out.print("[itext] INFO  Comparing tag structures......");
        String strReplace = str.replace(".pdf", ".xml");
        String strReplace2 = str.replace(".pdf", ".cmp.xml");
        PdfReader pdfReader = new PdfReader(str);
        try {
            PdfDocument pdfDocument = new PdfDocument(pdfReader, new DocumentProperties().setEventCountingMetaInfo(this.metaInfo));
            try {
                FileOutputStream fileOutputStream = new FileOutputStream(strReplace);
                try {
                    new TaggedPdfReaderTool(pdfDocument).setRootTag(CommonCssConstants.ROOT).convertToXml(fileOutputStream);
                    fileOutputStream.close();
                    pdfDocument.close();
                    pdfReader.close();
                    pdfReader = new PdfReader(str2);
                    try {
                        pdfDocument = new PdfDocument(pdfReader, new DocumentProperties().setEventCountingMetaInfo(this.metaInfo));
                        try {
                            fileOutputStream = new FileOutputStream(strReplace2);
                            try {
                                new TaggedPdfReaderTool(pdfDocument).setRootTag(CommonCssConstants.ROOT).convertToXml(fileOutputStream);
                                fileOutputStream.close();
                                pdfDocument.close();
                                pdfReader.close();
                                String str3 = !compareXmls(strReplace, strReplace2) ? "The tag structures are different." : null;
                                if (str3 == null) {
                                    System.out.println("OK");
                                } else {
                                    System.out.println("Fail");
                                }
                                System.out.flush();
                                return str3;
                            } finally {
                            }
                        } finally {
                        }
                    } catch (Throwable th) {
                        try {
                            throw th;
                        } finally {
                        }
                    }
                } finally {
                    try {
                        throw th;
                    } finally {
                        try {
                            fileOutputStream.close();
                        } catch (Throwable th2) {
                            th.addSuppressed(th2);
                        }
                    }
                }
            } finally {
                try {
                    throw th;
                } finally {
                    try {
                        pdfDocument.close();
                    } catch (Throwable th3) {
                        th.addSuppressed(th3);
                    }
                }
            }
        } catch (Throwable th4) {
            try {
                throw th4;
            } finally {
            }
        }
    }

    protected String[] convertDocInfoToStrings(PdfDocumentInfo pdfDocumentInfo) {
        String[] strArr = {"", "", "", "", ""};
        String title = pdfDocumentInfo.getTitle();
        if (title != null) {
            strArr[0] = title;
        }
        String author = pdfDocumentInfo.getAuthor();
        if (author != null) {
            strArr[1] = author;
        }
        String subject = pdfDocumentInfo.getSubject();
        if (subject != null) {
            strArr[2] = subject;
        }
        String keywords = pdfDocumentInfo.getKeywords();
        if (keywords != null) {
            strArr[3] = keywords;
        }
        String producer = pdfDocumentInfo.getProducer();
        if (producer != null) {
            strArr[4] = convertProducerLine(producer);
        }
        return strArr;
    }

    String convertProducerLine(String str) {
        return str.replaceAll(VERSION_REGEXP, VERSION_REPLACEMENT).replaceAll(COPYRIGHT_REGEXP, COPYRIGHT_REPLACEMENT);
    }

    private void init(String str, String str2) {
        this.outPdf = str;
        this.cmpPdf = str2;
        this.outPdfName = new File(str).getName();
        String name = new File(str2).getName();
        this.cmpPdfName = name;
        this.outImage = this.outPdfName;
        if (name.startsWith("cmp_")) {
            this.cmpImage = this.cmpPdfName;
        } else {
            this.cmpImage = "cmp_" + this.cmpPdfName;
        }
    }

    private void setPassword(byte[] bArr, byte[] bArr2) {
        if (bArr != null) {
            getOutReaderProperties().setPassword(bArr);
        }
        if (bArr2 != null) {
            getCmpReaderProperties().setPassword(bArr);
        }
    }

    private String compareVisually(String str, String str2, Map<Integer, List<Rectangle>> map) throws InterruptedException, IOException {
        return compareVisually(str, str2, map, (List<Integer>) null);
    }

    private String compareVisually(String str, String str2, Map<Integer, List<Rectangle>> map, List<Integer> list) throws Throwable {
        String str3;
        if (!str.endsWith(RemoteSettings.FORWARD_SLASH_STRING)) {
            str = str + RemoteSettings.FORWARD_SLASH_STRING;
        }
        if (str2 == null) {
            if (this.outPdfName == null) {
                str3 = "";
            } else {
                str3 = this.outPdfName + "_";
            }
            str2 = "diff_" + str3;
        }
        prepareOutputDirs(str, str2);
        System.out.println("Comparing visually..........");
        if (map != null && !map.isEmpty()) {
            createIgnoredAreasPdfs(str, map);
        }
        try {
            GhostscriptHelper ghostscriptHelper = new GhostscriptHelper(this.gsExec);
            ghostscriptHelper.runGhostScriptImageGeneration(this.outPdf, str, this.outImage);
            ghostscriptHelper.runGhostScriptImageGeneration(this.cmpPdf, str, this.cmpImage);
            return compareImagesOfPdfs(str, str2, list);
        } catch (IllegalArgumentException e) {
            throw new CompareToolExecutionException(e.getMessage());
        }
    }

    private String compareImagesOfPdfs(String str, String str2, List<Integer> list) throws InterruptedException, IOException {
        String message;
        boolean z;
        ImageMagickHelper imageMagickHelper;
        int i;
        String str3;
        List<Integer> list2 = list;
        File[] fileArrListFilesInDirectoryByFilter = FileUtil.listFilesInDirectoryByFilter(str, new PngFileFilter(this.outPdfName));
        File[] fileArrListFilesInDirectoryByFilter2 = FileUtil.listFilesInDirectoryByFilter(str, new CmpPngFileFilter(this.cmpPdfName));
        int i2 = 0;
        boolean z2 = fileArrListFilesInDirectoryByFilter.length != fileArrListFilesInDirectoryByFilter2.length;
        int iMin = Math.min(fileArrListFilesInDirectoryByFilter.length, fileArrListFilesInDirectoryByFilter2.length);
        if (iMin < 1) {
            throw new CompareToolExecutionException("No files for comparing. The result or sample pdf file is not processed by GhostScript.");
        }
        Arrays.sort(fileArrListFilesInDirectoryByFilter, new ImageNameComparator());
        Arrays.sort(fileArrListFilesInDirectoryByFilter2, new ImageNameComparator());
        try {
            imageMagickHelper = new ImageMagickHelper(this.compareExec);
            z = true;
            message = null;
        } catch (IllegalArgumentException e) {
            message = e.getMessage();
            LoggerFactory.getLogger((Class<?>) CompareTool.class).warn(e.getMessage());
            z = false;
            imageMagickHelper = null;
        }
        List<Integer> arrayList = new ArrayList<>();
        String str4 = null;
        while (i2 < iMin) {
            if (list2 == null || !list2.contains(Integer.valueOf(i2))) {
                int i3 = i2 + 1;
                i = iMin;
                System.out.println("Comparing page " + Integer.toString(i3) + ": " + UrlUtil.getNormalizedFileUriString(fileArrListFilesInDirectoryByFilter[i2].getName()) + " ...");
                System.out.println("Comparing page " + Integer.toString(i3) + ": " + UrlUtil.getNormalizedFileUriString(fileArrListFilesInDirectoryByFilter[i2].getName()) + " ...");
                FileInputStream fileInputStream = new FileInputStream(fileArrListFilesInDirectoryByFilter[i2].getAbsolutePath());
                FileInputStream fileInputStream2 = new FileInputStream(fileArrListFilesInDirectoryByFilter2[i2].getAbsolutePath());
                boolean zCompareStreams = compareStreams(fileInputStream, fileInputStream2);
                fileInputStream.close();
                fileInputStream2.close();
                if (!zCompareStreams) {
                    arrayList.add(Integer.valueOf(i3));
                    if (z) {
                        String str5 = str + str2 + Integer.toString(i3) + ".png";
                        if (!imageMagickHelper.runImageMagickImageCompare(fileArrListFilesInDirectoryByFilter[i2].getAbsolutePath(), fileArrListFilesInDirectoryByFilter2[i2].getAbsolutePath(), str5)) {
                            str3 = "Page is different!\nPlease, examine file://" + UrlUtil.toNormalizedURI(new File(str5)).getPath() + " for more details.";
                        }
                        str4 = str3;
                        System.out.println(str4);
                    }
                    str3 = "Page is different!";
                    str4 = str3;
                    System.out.println(str4);
                } else {
                    System.out.println(" done.");
                }
            } else {
                i = iMin;
            }
            i2++;
            list2 = list;
            iMin = i;
        }
        if (str4 != null) {
            String strReplace = DIFFERENT_PAGES.replace("<filename>", UrlUtil.toNormalizedURI(this.outPdf).getPath()).replace("<pagenumber>", listDiffPagesAsString(arrayList));
            return !z ? strReplace + StringUtils.f4768LF + message : strReplace;
        }
        if (z2) {
            return UNEXPECTED_NUMBER_OF_PAGES.replace("<filename>", this.outPdf);
        }
        return null;
    }

    private String listDiffPagesAsString(List<Integer> list) {
        StringBuilder sb = new StringBuilder("[");
        for (int i = 0; i < list.size(); i++) {
            sb.append(list.get(i));
            if (i < list.size() - 1) {
                sb.append(", ");
            }
        }
        sb.append("]");
        return sb.toString();
    }

    private void createIgnoredAreasPdfs(String str, Map<Integer, List<Rectangle>> map) throws IOException {
        StampingProperties stampingProperties = new StampingProperties();
        stampingProperties.setEventCountingMetaInfo(this.metaInfo);
        PdfWriter pdfWriter = new PdfWriter(str + IGNORED_AREAS_PREFIX + this.outPdfName);
        try {
            PdfReader pdfReader = new PdfReader(this.outPdf);
            try {
                PdfDocument pdfDocument = new PdfDocument(pdfReader, pdfWriter, stampingProperties);
                try {
                    PdfWriter pdfWriter2 = new PdfWriter(str + IGNORED_AREAS_PREFIX + this.cmpPdfName);
                    try {
                        PdfReader pdfReader2 = new PdfReader(this.cmpPdf);
                        try {
                            PdfDocument pdfDocument2 = new PdfDocument(pdfReader2, pdfWriter2, stampingProperties);
                            try {
                                for (Map.Entry<Integer, List<Rectangle>> entry : map.entrySet()) {
                                    int iIntValue = entry.getKey().intValue();
                                    List<Rectangle> value = entry.getValue();
                                    if (value != null && !value.isEmpty()) {
                                        PdfCanvas pdfCanvas = new PdfCanvas(pdfDocument.getPage(iIntValue));
                                        PdfCanvas pdfCanvas2 = new PdfCanvas(pdfDocument2.getPage(iIntValue));
                                        pdfCanvas.saveState();
                                        pdfCanvas2.saveState();
                                        for (Rectangle rectangle : value) {
                                            pdfCanvas.rectangle(rectangle).fill();
                                            pdfCanvas2.rectangle(rectangle).fill();
                                        }
                                        pdfCanvas.restoreState();
                                        pdfCanvas2.restoreState();
                                    }
                                }
                                pdfDocument2.close();
                                pdfReader2.close();
                                pdfWriter2.close();
                                pdfDocument.close();
                                pdfReader.close();
                                pdfWriter.close();
                                init(str + IGNORED_AREAS_PREFIX + this.outPdfName, str + IGNORED_AREAS_PREFIX + this.cmpPdfName);
                            } finally {
                            }
                        } finally {
                        }
                    } finally {
                    }
                } finally {
                }
            } finally {
            }
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                try {
                    pdfWriter.close();
                } catch (Throwable th3) {
                    th.addSuppressed(th3);
                }
                throw th2;
            }
        }
    }

    private void prepareOutputDirs(String str, String str2) {
        if (!FileUtil.directoryExists(str)) {
            FileUtil.createDirectories(str);
            return;
        }
        for (File file : FileUtil.listFilesInDirectoryByFilter(str, new PngFileFilter(this.cmpPdfName))) {
            file.delete();
        }
        for (File file2 : FileUtil.listFilesInDirectoryByFilter(str, new CmpPngFileFilter(this.cmpPdfName))) {
            file2.delete();
        }
        for (File file3 : FileUtil.listFilesInDirectoryByFilter(str, new DiffPngFileFilter(str2))) {
            file3.delete();
        }
    }

    private void printOutCmpDirectories() {
        System.out.println("Out file folder: file://" + UrlUtil.toNormalizedURI(new File(this.outPdf).getParentFile()).getPath());
        System.out.println("Cmp file folder: file://" + UrlUtil.toNormalizedURI(new File(this.cmpPdf).getParentFile()).getPath());
    }

    private String compareByContent(String str, String str2, Map<Integer, List<Rectangle>> map) throws InterruptedException, IOException {
        printOutCmpDirectories();
        System.out.print("Comparing by content..........");
        PdfReader pdfReader = new PdfReader(this.outPdf, getOutReaderProperties());
        try {
            PdfDocument pdfDocument = new PdfDocument(pdfReader, new DocumentProperties().setEventCountingMetaInfo(this.metaInfo));
            try {
                PdfReader pdfReader2 = new PdfReader(this.cmpPdf, getCmpReaderProperties());
                try {
                    PdfDocument pdfDocument2 = new PdfDocument(pdfReader2, new DocumentProperties().setEventCountingMetaInfo(this.metaInfo));
                    try {
                        List<PdfDictionary> arrayList = new ArrayList<>();
                        List<PdfIndirectReference> arrayList2 = new ArrayList<>();
                        this.outPagesRef = arrayList2;
                        loadPagesFromReader(pdfDocument, arrayList, arrayList2);
                        List<PdfDictionary> arrayList3 = new ArrayList<>();
                        List<PdfIndirectReference> arrayList4 = new ArrayList<>();
                        this.cmpPagesRef = arrayList4;
                        loadPagesFromReader(pdfDocument2, arrayList3, arrayList4);
                        if (arrayList.size() != arrayList3.size()) {
                            String strCompareVisuallyAndCombineReports = compareVisuallyAndCombineReports("Documents have different numbers of pages.", str, str2, map, null);
                            pdfDocument2.close();
                            pdfReader2.close();
                            pdfDocument.close();
                            pdfReader.close();
                            return strCompareVisuallyAndCombineReports;
                        }
                        CompareResult compareResult = new CompareResult(this.compareByContentErrorsLimit);
                        List<Integer> arrayList5 = new ArrayList<>(arrayList3.size());
                        for (int i = 0; i < arrayList3.size(); i++) {
                            if (compareDictionariesExtended(arrayList.get(i), arrayList3.get(i), new ObjectPath(this.cmpPagesRef.get(i), this.outPagesRef.get(i)), compareResult)) {
                                arrayList5.add(Integer.valueOf(i));
                            }
                        }
                        compareDictionariesExtended(pdfDocument.getCatalog().getPdfObject(), pdfDocument2.getCatalog().getPdfObject(), new ObjectPath(pdfDocument2.getCatalog().getPdfObject().getIndirectReference(), pdfDocument.getCatalog().getPdfObject().getIndirectReference()), compareResult, new LinkedHashSet<>(Arrays.asList(PdfName.Pages, PdfName.Metadata)));
                        if (this.encryptionCompareEnabled) {
                            compareDocumentsEncryption(pdfDocument, pdfDocument2, compareResult);
                        }
                        if (this.generateCompareByContentXmlReport) {
                            FileOutputStream fileOutputStream = new FileOutputStream(str + RemoteSettings.FORWARD_SLASH_STRING + new File(this.outPdf).getName().substring(0, r0.length() - 3) + "report.xml");
                            try {
                                try {
                                    compareResult.writeReportToXml(fileOutputStream);
                                } catch (Exception e) {
                                    throw new RuntimeException(e.getMessage(), e);
                                }
                            } finally {
                                fileOutputStream.close();
                            }
                        }
                        if (arrayList5.size() != arrayList3.size() || !compareResult.isOk()) {
                            String strCompareVisuallyAndCombineReports2 = compareVisuallyAndCombineReports(compareResult.getReport(), str, str2, map, arrayList5);
                            pdfDocument2.close();
                            pdfReader2.close();
                            pdfDocument.close();
                            pdfReader.close();
                            return strCompareVisuallyAndCombineReports2;
                        }
                        System.out.println("OK");
                        System.out.flush();
                        pdfDocument2.close();
                        pdfReader2.close();
                        pdfDocument.close();
                        pdfReader.close();
                        return null;
                    } finally {
                    }
                } finally {
                }
            } finally {
            }
        } finally {
        }
    }

    private String compareVisuallyAndCombineReports(String str, String str2, String str3, Map<Integer, List<Rectangle>> map, List<Integer> list) throws Throwable {
        System.out.println("Fail");
        System.out.flush();
        System.out.println("Compare by content report:\n" + str);
        System.out.flush();
        String strCompareVisually = compareVisually(str2, str3, map, list);
        return (strCompareVisually == null || strCompareVisually.length() == 0) ? "Compare by content fails. No visual differences" : strCompareVisually;
    }

    private void loadPagesFromReader(PdfDocument pdfDocument, List<PdfDictionary> list, List<PdfIndirectReference> list2) {
        int numberOfPages = pdfDocument.getNumberOfPages();
        int i = 0;
        while (i < numberOfPages) {
            int i2 = i + 1;
            list.add(pdfDocument.getPage(i2).getPdfObject());
            list2.add(list.get(i).getIndirectReference());
            i = i2;
        }
    }

    private void compareDocumentsEncryption(PdfDocument pdfDocument, PdfDocument pdfDocument2, CompareResult compareResult) {
        PdfDictionary asDictionary = pdfDocument.getTrailer().getAsDictionary(PdfName.Encrypt);
        PdfDictionary asDictionary2 = pdfDocument2.getTrailer().getAsDictionary(PdfName.Encrypt);
        if (asDictionary == null && asDictionary2 == null) {
            return;
        }
        TrailerPath trailerPath = new TrailerPath(pdfDocument2, pdfDocument);
        if (asDictionary == null) {
            compareResult.addError(trailerPath, "Expected encrypted document.");
            return;
        }
        if (asDictionary2 == null) {
            compareResult.addError(trailerPath, "Expected not encrypted document.");
            return;
        }
        LinkedHashSet linkedHashSet = new LinkedHashSet(Arrays.asList(PdfName.f3041O, PdfName.f3083U, PdfName.f3043OE, PdfName.f3084UE, PdfName.Perms, PdfName.f2984CF, PdfName.Recipients));
        ObjectPath objectPath = new ObjectPath(asDictionary.getIndirectReference(), asDictionary2.getIndirectReference());
        compareDictionariesExtended(asDictionary, asDictionary2, objectPath, compareResult, linkedHashSet);
        PdfDictionary asDictionary3 = asDictionary.getAsDictionary(PdfName.f2984CF);
        PdfDictionary asDictionary4 = asDictionary2.getAsDictionary(PdfName.f2984CF);
        if (asDictionary4 == null && asDictionary3 == null) {
            return;
        }
        if ((asDictionary4 != null && asDictionary3 == null) || asDictionary4 == null) {
            compareResult.addError(objectPath, "One of the dictionaries is null, the other is not.");
            return;
        }
        TreeSet<PdfName> treeSet = new TreeSet(asDictionary3.keySet());
        treeSet.addAll(asDictionary4.keySet());
        for (PdfName pdfName : treeSet) {
            objectPath.pushDictItemToPath(pdfName);
            compareDictionariesExtended(asDictionary3.getAsDictionary(pdfName), asDictionary4.getAsDictionary(pdfName), objectPath, compareResult, new LinkedHashSet(Arrays.asList(PdfName.Recipients)));
            objectPath.pop();
        }
    }

    private boolean compareStreams(InputStream inputStream, InputStream inputStream2) throws IOException {
        int i;
        byte[] bArr = new byte[65536];
        byte[] bArr2 = new byte[65536];
        do {
            i = inputStream.read(bArr);
            if (i != inputStream2.read(bArr2) || !Arrays.equals(bArr, bArr2)) {
                return false;
            }
        } while (i != -1);
        return true;
    }

    private boolean compareDictionariesExtended(PdfDictionary pdfDictionary, PdfDictionary pdfDictionary2, ObjectPath objectPath, CompareResult compareResult) {
        return compareDictionariesExtended(pdfDictionary, pdfDictionary2, objectPath, compareResult, null);
    }

    private boolean compareDictionariesExtended(PdfDictionary pdfDictionary, PdfDictionary pdfDictionary2, ObjectPath objectPath, CompareResult compareResult, Set<PdfName> set) {
        PdfObject pdfObject;
        boolean z = false;
        if ((pdfDictionary2 != null && pdfDictionary == null) || (pdfDictionary != null && pdfDictionary2 == null)) {
            compareResult.addError(objectPath, "One of the dictionaries is null, the other is not.");
            return false;
        }
        TreeSet<PdfName> treeSet = new TreeSet(pdfDictionary2.keySet());
        treeSet.addAll(pdfDictionary.keySet());
        boolean z2 = true;
        for (PdfName pdfName : treeSet) {
            if (!z2 && (objectPath == null || compareResult == null || compareResult.isMessageLimitReached())) {
                return z;
            }
            if (set == null || !set.contains(pdfName)) {
                if (!pdfName.equals(PdfName.Parent) && !pdfName.equals(PdfName.f3047P) && !pdfName.equals(PdfName.ModDate) && (!pdfDictionary.isStream() || !pdfDictionary2.isStream() || (!pdfName.equals(PdfName.Filter) && !pdfName.equals(PdfName.Length)))) {
                    if ((pdfName.equals(PdfName.BaseFont) || pdfName.equals(PdfName.FontName)) && (pdfObject = pdfDictionary2.get(pdfName)) != null && pdfObject.isName() && pdfObject.toString().indexOf(43) > 0) {
                        PdfObject pdfObject2 = pdfDictionary.get(pdfName);
                        if (!pdfObject2.isName() || pdfObject2.toString().indexOf(43) == -1) {
                            if (compareResult != null && objectPath != null) {
                                compareResult.addError(objectPath, MessageFormatUtil.format("PdfDictionary {0} entry: Expected: {1}. Found: {2}", pdfName.toString(), pdfObject.toString(), pdfObject2.toString()));
                            }
                            z = false;
                            z2 = false;
                        } else {
                            if (!pdfObject.toString().substring(pdfObject.toString().indexOf(43)).equals(pdfObject2.toString().substring(pdfObject2.toString().indexOf(43)))) {
                                if (compareResult != null && objectPath != null) {
                                    compareResult.addError(objectPath, MessageFormatUtil.format("PdfDictionary {0} entry: Expected: {1}. Found: {2}", pdfName.toString(), pdfObject.toString(), pdfObject2.toString()));
                                }
                                z2 = false;
                            }
                            z = false;
                        }
                    } else if (pdfName.equals(PdfName.ParentTree) || pdfName.equals(PdfName.PageLabels)) {
                        z = false;
                        if (objectPath != null) {
                            objectPath.pushDictItemToPath(pdfName);
                        }
                        PdfDictionary asDictionary = pdfDictionary.getAsDictionary(pdfName);
                        PdfDictionary asDictionary2 = pdfDictionary2.getAsDictionary(pdfName);
                        LinkedList<PdfObject> linkedList = new LinkedList<>();
                        LinkedList<PdfObject> linkedList2 = new LinkedList<>();
                        PdfNumber pdfNumberFlattenNumTree = flattenNumTree(asDictionary, null, linkedList);
                        PdfNumber pdfNumberFlattenNumTree2 = flattenNumTree(asDictionary2, null, linkedList2);
                        if (pdfNumberFlattenNumTree != null) {
                            LoggerFactory.getLogger((Class<?>) CompareTool.class).warn(IoLogMessageConstant.NUM_TREE_SHALL_NOT_END_WITH_KEY);
                            if (pdfNumberFlattenNumTree2 == null) {
                                if (compareResult != null && objectPath != null) {
                                    compareResult.addError(objectPath, "Number tree unexpectedly ends with a key");
                                }
                                z2 = false;
                            }
                        }
                        if (pdfNumberFlattenNumTree2 != null) {
                            LoggerFactory.getLogger((Class<?>) CompareTool.class).warn(IoLogMessageConstant.NUM_TREE_SHALL_NOT_END_WITH_KEY);
                            if (pdfNumberFlattenNumTree == null) {
                                if (compareResult != null && objectPath != null) {
                                    compareResult.addError(objectPath, "Number tree was expected to end with a key (although it is invalid according to the specification), but ended with a value");
                                }
                                z2 = false;
                            }
                        }
                        if (pdfNumberFlattenNumTree != null && pdfNumberFlattenNumTree2 != null && !compareNumbers(pdfNumberFlattenNumTree, pdfNumberFlattenNumTree2)) {
                            if (compareResult != null && objectPath != null) {
                                compareResult.addError(objectPath, "Number tree was expected to end with a different key (although it is invalid according to the specification)");
                            }
                            z2 = false;
                        }
                        if (!compareArraysExtended(new PdfArray(linkedList, linkedList.size()), new PdfArray(linkedList2, linkedList2.size()), objectPath, compareResult)) {
                            if (compareResult != null && objectPath != null) {
                                compareResult.addError(objectPath, "Number trees were flattened, compared and found to be different.");
                            }
                            z2 = false;
                        }
                        if (objectPath != null) {
                            objectPath.pop();
                        }
                    } else {
                        if (objectPath != null) {
                            objectPath.pushDictItemToPath(pdfName);
                        }
                        z = false;
                        z2 = compareObjects(pdfDictionary.get(pdfName, false), pdfDictionary2.get(pdfName, false), objectPath, compareResult) && z2;
                        if (objectPath != null) {
                            objectPath.pop();
                        }
                    }
                }
            }
        }
        return z2;
    }

    private PdfNumber flattenNumTree(PdfDictionary pdfDictionary, PdfNumber pdfNumber, LinkedList<PdfObject> linkedList) {
        PdfNumber pdfNumber2;
        PdfArray asArray = pdfDictionary.getAsArray(PdfName.Nums);
        if (asArray != null) {
            int i = 0;
            while (i < asArray.size()) {
                if (pdfNumber == null) {
                    PdfNumber pdfNumber3 = pdfNumber;
                    pdfNumber = asArray.getAsNumber(i);
                    i++;
                    pdfNumber2 = pdfNumber3;
                } else {
                    pdfNumber2 = null;
                }
                if (i >= asArray.size()) {
                    return pdfNumber;
                }
                linkedList.addLast(pdfNumber);
                linkedList.addLast(asArray.get(i, false));
                i++;
                pdfNumber = pdfNumber2;
            }
        } else {
            PdfArray asArray2 = pdfDictionary.getAsArray(PdfName.Kids);
            if (asArray2 != null) {
                for (int i2 = 0; i2 < asArray2.size(); i2++) {
                    pdfNumber = flattenNumTree(asArray2.getAsDictionary(i2), pdfNumber, linkedList);
                }
            }
        }
        return null;
    }

    protected boolean compareObjects(PdfObject pdfObject, PdfObject pdfObject2, ObjectPath objectPath, CompareResult compareResult) {
        PdfObject refersTo;
        PdfObject refersTo2 = null;
        if (pdfObject != null) {
            refersTo = pdfObject.isIndirectReference() ? ((PdfIndirectReference) pdfObject).getRefersTo(false) : pdfObject;
        } else {
            refersTo = null;
        }
        if (pdfObject2 != null) {
            refersTo2 = pdfObject2.isIndirectReference() ? ((PdfIndirectReference) pdfObject2).getRefersTo(false) : pdfObject2;
        }
        if (refersTo2 == null && refersTo == null) {
            return true;
        }
        if (refersTo == null) {
            compareResult.addError(objectPath, "Expected object was not found.");
            return false;
        }
        if (refersTo2 == null) {
            compareResult.addError(objectPath, "Found object which was not expected to be found.");
            return false;
        }
        if (refersTo2.getType() != refersTo.getType()) {
            compareResult.addError(objectPath, MessageFormatUtil.format("Types do not match. Expected: {0}. Found: {1}.", refersTo2.getClass().getSimpleName(), refersTo.getClass().getSimpleName()));
            return false;
        }
        if (pdfObject2.isIndirectReference() && !pdfObject.isIndirectReference()) {
            compareResult.addError(objectPath, "Expected indirect object.");
            return false;
        }
        if (!pdfObject2.isIndirectReference() && pdfObject.isIndirectReference()) {
            compareResult.addError(objectPath, "Expected direct object.");
            return false;
        }
        if (objectPath != null && pdfObject2.isIndirectReference() && pdfObject.isIndirectReference()) {
            PdfIndirectReference pdfIndirectReference = (PdfIndirectReference) pdfObject2;
            PdfIndirectReference pdfIndirectReference2 = (PdfIndirectReference) pdfObject;
            if (objectPath.isComparing(pdfIndirectReference, pdfIndirectReference2)) {
                return true;
            }
            objectPath = objectPath.resetDirectPath(pdfIndirectReference, pdfIndirectReference2);
        }
        if (refersTo2.isDictionary() && PdfName.Page.equals(((PdfDictionary) refersTo2).getAsName(PdfName.Type)) && this.useCachedPagesForComparison) {
            if (!refersTo.isDictionary() || !PdfName.Page.equals(((PdfDictionary) refersTo).getAsName(PdfName.Type))) {
                if (compareResult != null && objectPath != null) {
                    compareResult.addError(objectPath, "Expected a page. Found not a page.");
                }
                return false;
            }
            PdfIndirectReference indirectReference = pdfObject2.isIndirectReference() ? (PdfIndirectReference) pdfObject2 : pdfObject2.getIndirectReference();
            PdfIndirectReference indirectReference2 = pdfObject.isIndirectReference() ? (PdfIndirectReference) pdfObject : pdfObject.getIndirectReference();
            if (this.cmpPagesRef == null) {
                this.cmpPagesRef = new ArrayList();
                for (int i = 1; i <= indirectReference.getDocument().getNumberOfPages(); i++) {
                    this.cmpPagesRef.add(indirectReference.getDocument().getPage(i).getPdfObject().getIndirectReference());
                }
            }
            if (this.outPagesRef == null) {
                this.outPagesRef = new ArrayList();
                for (int i2 = 1; i2 <= indirectReference2.getDocument().getNumberOfPages(); i2++) {
                    this.outPagesRef.add(indirectReference2.getDocument().getPage(i2).getPdfObject().getIndirectReference());
                }
            }
            if (this.cmpPagesRef.contains(indirectReference) || this.outPagesRef.contains(indirectReference2)) {
                if (this.cmpPagesRef.contains(indirectReference) && this.cmpPagesRef.indexOf(indirectReference) == this.outPagesRef.indexOf(indirectReference2)) {
                    return true;
                }
                if (compareResult != null && objectPath != null) {
                    compareResult.addError(objectPath, MessageFormatUtil.format("The dictionaries refer to different pages. Expected page number: {0}. Found: {1}", Integer.valueOf(this.cmpPagesRef.indexOf(indirectReference) + 1), Integer.valueOf(this.outPagesRef.indexOf(indirectReference2) + 1)));
                }
                return false;
            }
        }
        if (refersTo2.isDictionary()) {
            return compareDictionariesExtended((PdfDictionary) refersTo, (PdfDictionary) refersTo2, objectPath, compareResult);
        }
        if (refersTo2.isStream()) {
            return compareStreamsExtended((PdfStream) refersTo, (PdfStream) refersTo2, objectPath, compareResult);
        }
        if (refersTo2.isArray()) {
            return compareArraysExtended((PdfArray) refersTo, (PdfArray) refersTo2, objectPath, compareResult);
        }
        if (refersTo2.isName()) {
            return compareNamesExtended((PdfName) refersTo, (PdfName) refersTo2, objectPath, compareResult);
        }
        if (refersTo2.isNumber()) {
            return compareNumbersExtended((PdfNumber) refersTo, (PdfNumber) refersTo2, objectPath, compareResult);
        }
        if (refersTo2.isString()) {
            return compareStringsExtended((PdfString) refersTo, (PdfString) refersTo2, objectPath, compareResult);
        }
        if (refersTo2.isBoolean()) {
            return compareBooleansExtended((PdfBoolean) refersTo, (PdfBoolean) refersTo2, objectPath, compareResult);
        }
        if (refersTo.isNull() && refersTo2.isNull()) {
            return true;
        }
        throw new UnsupportedOperationException();
    }

    private boolean compareStreamsExtended(PdfStream pdfStream, PdfStream pdfStream2, ObjectPath objectPath, CompareResult compareResult) {
        boolean zEquals = PdfName.FlateDecode.equals(pdfStream.get(PdfName.Filter));
        byte[] bytes = pdfStream.getBytes(zEquals);
        byte[] bytes2 = pdfStream2.getBytes(zEquals);
        if (Arrays.equals(bytes, bytes2)) {
            return compareDictionariesExtended(pdfStream, pdfStream2, objectPath, compareResult);
        }
        StringBuilder sb = new StringBuilder();
        if (bytes2.length != bytes.length) {
            sb.append(MessageFormatUtil.format("PdfStream. Lengths are different. Expected: {0}. Found: {1}\n", Integer.valueOf(bytes2.length), Integer.valueOf(bytes.length)));
        } else {
            sb.append("PdfStream. Bytes are different.\n");
        }
        int iFindBytesDifference = findBytesDifference(bytes, bytes2, sb);
        if (compareResult == null || objectPath == null) {
            return false;
        }
        objectPath.pushOffsetToPath(iFindBytesDifference);
        compareResult.addError(objectPath, sb.toString());
        objectPath.pop();
        return false;
    }

    private int findBytesDifference(byte[] bArr, byte[] bArr2, StringBuilder sb) {
        String str;
        StringBuilder sb2;
        int iMin = Math.min(bArr2.length, bArr.length);
        int i = 0;
        int i2 = 0;
        for (int i3 = 0; i3 < iMin; i3++) {
            if (bArr2[i3] != bArr[i3] && (i = i + 1) == 1) {
                i2 = i3;
            }
        }
        if (i > 0) {
            int i4 = i2 - 10;
            int iMax = Math.max(0, i4);
            int i5 = i2 + 10;
            int iMin2 = Math.min(bArr2.length, i5);
            int iMax2 = Math.max(0, i4);
            str = MessageFormatUtil.format("First bytes difference is encountered at index {0}. Expected: {1} ({2}). Found: {3} ({4}). Total number of different bytes: {5}", Integer.valueOf(i2).toString(), new String(new byte[]{bArr2[i2]}, StandardCharsets.ISO_8859_1), new String(bArr2, iMax, iMin2 - iMax, StandardCharsets.ISO_8859_1).replaceAll(NEW_LINES, StringUtils.SPACE), new String(new byte[]{bArr[i2]}, StandardCharsets.ISO_8859_1), new String(bArr, iMax2, Math.min(bArr.length, i5) - iMax2, StandardCharsets.ISO_8859_1).replaceAll(NEW_LINES, StringUtils.SPACE), Integer.valueOf(i));
            sb2 = sb;
            iMin = i2;
        } else {
            str = MessageFormatUtil.format("Bytes of the shorter array are the same as the first {0} bytes of the longer one.", Integer.valueOf(iMin));
            sb2 = sb;
        }
        sb2.append(str);
        return iMin;
    }

    private boolean compareArraysExtended(PdfArray pdfArray, PdfArray pdfArray2, ObjectPath objectPath, CompareResult compareResult) {
        if (pdfArray == null) {
            if (compareResult != null && objectPath != null) {
                compareResult.addError(objectPath, "Found null. Expected PdfArray.");
            }
            return false;
        }
        if (pdfArray.size() != pdfArray2.size()) {
            if (compareResult != null && objectPath != null) {
                compareResult.addError(objectPath, MessageFormatUtil.format("PdfArrays. Lengths are different. Expected: {0}. Found: {1}.", Integer.valueOf(pdfArray2.size()), Integer.valueOf(pdfArray.size())));
            }
            return false;
        }
        boolean z = true;
        for (int i = 0; i < pdfArray2.size(); i++) {
            if (objectPath != null) {
                objectPath.pushArrayItemToPath(i);
            }
            z = compareObjects(pdfArray.get(i, false), pdfArray2.get(i, false), objectPath, compareResult) && z;
            if (objectPath != null) {
                objectPath.pop();
            }
            if (!z && (objectPath == null || compareResult == null || compareResult.isMessageLimitReached())) {
                return false;
            }
        }
        return z;
    }

    private boolean compareNamesExtended(PdfName pdfName, PdfName pdfName2, ObjectPath objectPath, CompareResult compareResult) {
        if (pdfName2.equals(pdfName)) {
            return true;
        }
        if (compareResult == null || objectPath == null) {
            return false;
        }
        compareResult.addError(objectPath, MessageFormatUtil.format("PdfName. Expected: {0}. Found: {1}", pdfName2.toString(), pdfName.toString()));
        return false;
    }

    private boolean compareNumbersExtended(PdfNumber pdfNumber, PdfNumber pdfNumber2, ObjectPath objectPath, CompareResult compareResult) {
        if (pdfNumber2.getValue() == pdfNumber.getValue()) {
            return true;
        }
        if (compareResult == null || objectPath == null) {
            return false;
        }
        compareResult.addError(objectPath, MessageFormatUtil.format("PdfNumber. Expected: {0}. Found: {1}", pdfNumber2, pdfNumber));
        return false;
    }

    private boolean compareStringsExtended(PdfString pdfString, PdfString pdfString2, ObjectPath objectPath, CompareResult compareResult) {
        if (Arrays.equals(convertPdfStringToBytes(pdfString2), convertPdfStringToBytes(pdfString))) {
            return true;
        }
        String unicodeString = pdfString2.toUnicodeString();
        String unicodeString2 = pdfString.toUnicodeString();
        StringBuilder sb = new StringBuilder();
        if (unicodeString.length() != unicodeString2.length()) {
            sb.append(MessageFormatUtil.format("PdfString. Lengths are different. Expected: {0}. Found: {1}\n", Integer.valueOf(unicodeString.length()), Integer.valueOf(unicodeString2.length())));
        } else {
            sb.append("PdfString. Characters are different.\n");
        }
        int iFindStringDifference = findStringDifference(unicodeString2, unicodeString, sb);
        if (compareResult == null || objectPath == null) {
            return false;
        }
        objectPath.pushOffsetToPath(iFindStringDifference);
        compareResult.addError(objectPath, sb.toString());
        objectPath.pop();
        return false;
    }

    private int findStringDifference(String str, String str2, StringBuilder sb) {
        String str3;
        StringBuilder sb2;
        int iMin = Math.min(str2.length(), str.length());
        int i = 0;
        int i2 = 0;
        for (int i3 = 0; i3 < iMin; i3++) {
            if (str2.charAt(i3) != str.charAt(i3) && (i = i + 1) == 1) {
                i2 = i3;
            }
        }
        if (i > 0) {
            int i4 = i2 - 15;
            int i5 = i2 + 15;
            str3 = MessageFormatUtil.format("First characters difference is encountered at index {0}.\nExpected: {1} ({2}).\nFound: {3} ({4}).\nTotal number of different characters: {5}", Integer.valueOf(i2).toString(), String.valueOf(str2.charAt(i2)), str2.substring(Math.max(0, i4), Math.min(str2.length(), i5)).replaceAll(NEW_LINES, StringUtils.SPACE), String.valueOf(str.charAt(i2)), str.substring(Math.max(0, i4), Math.min(str.length(), i5)).replaceAll(NEW_LINES, StringUtils.SPACE), Integer.valueOf(i));
            sb2 = sb;
            iMin = i2;
        } else {
            str3 = MessageFormatUtil.format("All characters of the shorter string are the same as the first {0} characters of the longer one.", Integer.valueOf(iMin));
            sb2 = sb;
        }
        sb2.append(str3);
        return iMin;
    }

    private byte[] convertPdfStringToBytes(PdfString pdfString) {
        String value = pdfString.getValue();
        String encoding = pdfString.getEncoding();
        if (encoding != null && PdfEncodings.UNICODE_BIG.equals(encoding) && PdfEncodings.isPdfDocEncoding(value)) {
            return PdfEncodings.convertToBytes(value, PdfEncodings.PDF_DOC_ENCODING);
        }
        return PdfEncodings.convertToBytes(value, encoding);
    }

    private boolean compareBooleansExtended(PdfBoolean pdfBoolean, PdfBoolean pdfBoolean2, ObjectPath objectPath, CompareResult compareResult) {
        if (pdfBoolean2.getValue() == pdfBoolean.getValue()) {
            return true;
        }
        if (compareResult == null || objectPath == null) {
            return false;
        }
        compareResult.addError(objectPath, MessageFormatUtil.format("PdfBoolean. Expected: {0}. Found: {1}.", Boolean.valueOf(pdfBoolean2.getValue()), Boolean.valueOf(pdfBoolean.getValue())));
        return false;
    }

    private List<PdfLinkAnnotation> getLinkAnnotations(int i, PdfDocument pdfDocument) {
        ArrayList arrayList = new ArrayList();
        for (PdfAnnotation pdfAnnotation : pdfDocument.getPage(i).getAnnotations()) {
            if (PdfName.Link.equals(pdfAnnotation.getSubtype())) {
                arrayList.add((PdfLinkAnnotation) pdfAnnotation);
            }
        }
        return arrayList;
    }

    private boolean compareLinkAnnotations(PdfLinkAnnotation pdfLinkAnnotation, PdfLinkAnnotation pdfLinkAnnotation2, PdfDocument pdfDocument, PdfDocument pdfDocument2) {
        PdfArray pdfArray;
        PdfArray pdfArray2;
        PdfObject destinationObject = pdfLinkAnnotation.getDestinationObject();
        PdfObject destinationObject2 = pdfLinkAnnotation2.getDestinationObject();
        if (destinationObject != null && destinationObject2 != null) {
            if (destinationObject.getType() != destinationObject2.getType()) {
                return false;
            }
            Map<String, PdfObject> names = pdfDocument.getCatalog().getNameTree(PdfName.Dests).getNames();
            Map<String, PdfObject> names2 = pdfDocument2.getCatalog().getNameTree(PdfName.Dests).getNames();
            byte type = destinationObject.getType();
            if (type == 1) {
                pdfArray = (PdfArray) destinationObject;
                pdfArray2 = (PdfArray) destinationObject2;
            } else if (type == 6) {
                pdfArray = (PdfArray) names.get(((PdfName) destinationObject).getValue());
                pdfArray2 = (PdfArray) names2.get(((PdfName) destinationObject2).getValue());
            } else if (type != 10) {
                pdfArray = null;
                pdfArray2 = null;
            } else {
                pdfArray = (PdfArray) names.get(((PdfString) destinationObject).toUnicodeString());
                pdfArray2 = (PdfArray) names2.get(((PdfString) destinationObject2).toUnicodeString());
            }
            if (getExplicitDestinationPageNum(pdfArray) != getExplicitDestinationPageNum(pdfArray2)) {
                return false;
            }
        }
        PdfDictionary pdfObject = pdfLinkAnnotation.getPdfObject();
        PdfDictionary pdfObject2 = pdfLinkAnnotation2.getPdfObject();
        if (pdfObject.size() != pdfObject2.size()) {
            return false;
        }
        Rectangle asRectangle = pdfObject.getAsRectangle(PdfName.Rect);
        Rectangle asRectangle2 = pdfObject2.getAsRectangle(PdfName.Rect);
        if (asRectangle.getHeight() != asRectangle2.getHeight() || asRectangle.getWidth() != asRectangle2.getWidth() || asRectangle.getX() != asRectangle2.getX() || asRectangle.getY() != asRectangle2.getY()) {
            return false;
        }
        for (Map.Entry<PdfName, PdfObject> entry : pdfObject.entrySet()) {
            PdfObject value = entry.getValue();
            if (!pdfObject2.containsKey(entry.getKey())) {
                return false;
            }
            PdfObject pdfObject3 = pdfObject2.get(entry.getKey());
            if (value.getType() != pdfObject3.getType()) {
                return false;
            }
            byte type2 = value.getType();
            if (type2 == 2 || type2 == 10 || type2 == 6 || type2 == 7 || type2 == 8) {
                if (!value.toString().equals(pdfObject3.toString())) {
                    return false;
                }
            }
        }
        return true;
    }

    private int getExplicitDestinationPageNum(PdfArray pdfArray) {
        PdfIndirectReference pdfIndirectReference = (PdfIndirectReference) pdfArray.get(0, false);
        PdfDocument document = pdfIndirectReference.getDocument();
        for (int i = 1; i <= document.getNumberOfPages(); i++) {
            if (document.getPage(i).getPdfObject().getIndirectReference().equals(pdfIndirectReference)) {
                return i;
            }
        }
        throw new IllegalArgumentException("PdfLinkAnnotation comparison: Page not found.");
    }

    private static class PngFileFilter implements FileFilter {
        private String currentOutPdfName;

        public PngFileFilter(String str) {
            this.currentOutPdfName = str;
        }

        @Override // java.io.FileFilter
        public boolean accept(File file) {
            String name = file.getName();
            return name.endsWith(".png") && !name.contains("cmp_") && name.contains(this.currentOutPdfName);
        }
    }

    private static class CmpPngFileFilter implements FileFilter {
        private String currentCmpPdfName;

        public CmpPngFileFilter(String str) {
            this.currentCmpPdfName = str;
        }

        @Override // java.io.FileFilter
        public boolean accept(File file) {
            String name = file.getName();
            return name.endsWith(".png") && name.contains("cmp_") && name.contains(this.currentCmpPdfName);
        }
    }

    private static class DiffPngFileFilter implements FileFilter {
        private String differenceImagePrefix;

        public DiffPngFileFilter(String str) {
            this.differenceImagePrefix = str;
        }

        @Override // java.io.FileFilter
        public boolean accept(File file) {
            String name = file.getName();
            return name.endsWith(".png") && name.startsWith(this.differenceImagePrefix);
        }
    }

    private static class ImageNameComparator implements Comparator<File> {
        private ImageNameComparator() {
        }

        @Override // java.util.Comparator
        public int compare(File file, File file2) {
            return file.getName().compareTo(file2.getName());
        }
    }

    public static class CompareResult {
        protected Map<ObjectPath, String> differences = new LinkedHashMap();
        protected int messageLimit;

        public CompareResult(int i) {
            this.messageLimit = i;
        }

        public boolean isOk() {
            return this.differences.size() == 0;
        }

        public int getErrorCount() {
            return this.differences.size();
        }

        public String getReport() {
            StringBuilder sb = new StringBuilder();
            boolean z = true;
            for (Map.Entry<ObjectPath, String> entry : this.differences.entrySet()) {
                if (!z) {
                    sb.append("-----------------------------\n");
                }
                sb.append(entry.getValue()).append(StringUtils.f4768LF).append(entry.getKey().toString()).append(StringUtils.f4768LF);
                z = false;
            }
            return sb.toString();
        }

        public Map<ObjectPath, String> getDifferences() {
            return this.differences;
        }

        public void writeReportToXml(OutputStream outputStream) throws TransformerException, ParserConfigurationException {
            Document documentInitNewXmlDocument = XmlUtil.initNewXmlDocument();
            Element elementCreateElement = documentInitNewXmlDocument.createElement("report");
            Element elementCreateElement2 = documentInitNewXmlDocument.createElement(RestAdapter.JSON_KEY_ERRORS_LIST);
            elementCreateElement2.setAttribute("count", String.valueOf(this.differences.size()));
            elementCreateElement.appendChild(elementCreateElement2);
            for (Map.Entry<ObjectPath, String> entry : this.differences.entrySet()) {
                Element elementCreateElement3 = documentInitNewXmlDocument.createElement("error");
                Element elementCreateElement4 = documentInitNewXmlDocument.createElement("message");
                elementCreateElement4.appendChild(documentInitNewXmlDocument.createTextNode(entry.getValue()));
                Node xmlNode = entry.getKey().toXmlNode(documentInitNewXmlDocument);
                elementCreateElement3.appendChild(elementCreateElement4);
                elementCreateElement3.appendChild(xmlNode);
                elementCreateElement2.appendChild(elementCreateElement3);
            }
            documentInitNewXmlDocument.appendChild(elementCreateElement);
            XmlUtils.writeXmlDocToStream(documentInitNewXmlDocument, outputStream);
        }

        protected boolean isMessageLimitReached() {
            return this.differences.size() >= this.messageLimit;
        }

        protected void addError(ObjectPath objectPath, String str) {
            if (this.differences.size() < this.messageLimit) {
                this.differences.put(new ObjectPath(objectPath), str);
            }
        }
    }

    public static class CompareToolExecutionException extends RuntimeException {
        public CompareToolExecutionException(String str) {
            super(str);
        }
    }
}
