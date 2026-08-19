package com.itextpdf.kernel.utils;

import com.itextpdf.kernel.exceptions.KernelExceptionMessageConstant;
import com.itextpdf.kernel.exceptions.PdfException;
import com.itextpdf.kernel.pdf.PdfArray;
import com.itextpdf.kernel.pdf.PdfDictionary;
import com.itextpdf.kernel.pdf.PdfDocument;
import com.itextpdf.kernel.pdf.PdfName;
import com.itextpdf.kernel.pdf.PdfObject;
import com.itextpdf.kernel.pdf.PdfString;
import com.itextpdf.kernel.pdf.canvas.parser.EventType;
import com.itextpdf.kernel.pdf.canvas.parser.data.IEventData;
import com.itextpdf.kernel.pdf.canvas.parser.data.TextRenderInfo;
import com.itextpdf.kernel.pdf.canvas.parser.listener.IEventListener;
import com.itextpdf.kernel.pdf.canvas.parser.listener.ITextExtractionStrategy;
import com.itextpdf.kernel.pdf.canvas.parser.listener.LocationTextExtractionStrategy;
import com.itextpdf.kernel.pdf.tagging.IStructureNode;
import com.itextpdf.kernel.pdf.tagging.PdfMcr;
import com.itextpdf.kernel.pdf.tagging.PdfStructElem;
import com.itextpdf.kernel.pdf.tagging.PdfStructTreeRoot;
import java.io.IOException;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.nio.charset.Charset;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

/* JADX INFO: loaded from: classes6.dex */
public class TaggedPdfReaderTool {
    protected PdfDocument document;
    protected OutputStreamWriter out;
    protected Map<PdfDictionary, Map<Integer, String>> parsedTags = new HashMap();
    protected String rootTag;

    public static boolean isValidCharacterValue(int i) {
        return i == 9 || i == 10 || i == 13 || (i >= 32 && i <= 55295) || ((i >= 57344 && i <= 65533) || (i >= 65536 && i <= 1114111));
    }

    public TaggedPdfReaderTool(PdfDocument pdfDocument) {
        this.document = pdfDocument;
    }

    public void convertToXml(OutputStream outputStream) throws IOException {
        convertToXml(outputStream, "UTF-8");
    }

    public void convertToXml(OutputStream outputStream, String str) throws IOException {
        OutputStreamWriter outputStreamWriter = new OutputStreamWriter(outputStream, Charset.forName(str));
        this.out = outputStreamWriter;
        if (this.rootTag != null) {
            outputStreamWriter.write("<" + this.rootTag + ">" + System.lineSeparator());
        }
        PdfStructTreeRoot structTreeRoot = this.document.getStructTreeRoot();
        if (structTreeRoot == null) {
            throw new PdfException(KernelExceptionMessageConstant.DOCUMENT_DOES_NOT_CONTAIN_STRUCT_TREE_ROOT);
        }
        inspectKids(structTreeRoot.getKids());
        if (this.rootTag != null) {
            this.out.write("</" + this.rootTag + ">");
        }
        this.out.flush();
        this.out.close();
    }

    public TaggedPdfReaderTool setRootTag(String str) {
        this.rootTag = str;
        return this;
    }

    protected void inspectKids(List<IStructureNode> list) {
        if (list == null) {
            return;
        }
        Iterator<IStructureNode> it = list.iterator();
        while (it.hasNext()) {
            inspectKid(it.next());
        }
    }

    protected void inspectKid(IStructureNode iStructureNode) {
        try {
            if (iStructureNode instanceof PdfStructElem) {
                PdfStructElem pdfStructElem = (PdfStructElem) iStructureNode;
                String strFixTagName = fixTagName(pdfStructElem.getRole().getValue());
                this.out.write("<");
                this.out.write(strFixTagName);
                inspectAttributes(pdfStructElem);
                this.out.write(">" + System.lineSeparator());
                PdfString alt = pdfStructElem.getAlt();
                if (alt != null) {
                    this.out.write("<alt><![CDATA[");
                    this.out.write(alt.getValue().replaceAll("[\\000]*", ""));
                    this.out.write("]]></alt>" + System.lineSeparator());
                }
                inspectKids(pdfStructElem.getKids());
                this.out.write("</");
                this.out.write(strFixTagName);
                this.out.write(">" + System.lineSeparator());
                return;
            }
            if (iStructureNode instanceof PdfMcr) {
                parseTag((PdfMcr) iStructureNode);
            } else {
                this.out.write(" <flushedKid/> ");
            }
        } catch (IOException e) {
            throw new com.itextpdf.p017io.exceptions.IOException(com.itextpdf.p017io.exceptions.IOException.UnknownIOException, (Throwable) e);
        }
    }

    protected void inspectAttributes(PdfStructElem pdfStructElem) {
        PdfDictionary asDictionary;
        PdfObject attributes = pdfStructElem.getAttributes(false);
        if (attributes != null) {
            if (attributes instanceof PdfArray) {
                asDictionary = ((PdfArray) attributes).getAsDictionary(0);
            } else {
                asDictionary = (PdfDictionary) attributes;
            }
            try {
                for (PdfName pdfName : asDictionary.keySet()) {
                    this.out.write(32);
                    String value = pdfName.getValue();
                    this.out.write(Character.toLowerCase(value.charAt(0)) + value.substring(1));
                    this.out.write("=\"");
                    this.out.write(asDictionary.get(pdfName, false).toString());
                    this.out.write("\"");
                }
            } catch (IOException e) {
                throw new com.itextpdf.p017io.exceptions.IOException(com.itextpdf.p017io.exceptions.IOException.UnknownIOException, (Throwable) e);
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x0077  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    protected void parseTag(com.itextpdf.kernel.pdf.tagging.PdfMcr r6) {
        /*
            r5 = this;
            int r0 = r6.getMcid()
            com.itextpdf.kernel.pdf.PdfDictionary r1 = r6.getPageObject()
            r2 = -1
            if (r0 == r2) goto L5d
            java.util.Map<com.itextpdf.kernel.pdf.PdfDictionary, java.util.Map<java.lang.Integer, java.lang.String>> r6 = r5.parsedTags
            boolean r6 = r6.containsKey(r1)
            if (r6 != 0) goto L38
            com.itextpdf.kernel.utils.TaggedPdfReaderTool$MarkedContentEventListener r6 = new com.itextpdf.kernel.utils.TaggedPdfReaderTool$MarkedContentEventListener
            r2 = 0
            r6.<init>(r5, r2)
            com.itextpdf.kernel.pdf.canvas.parser.PdfCanvasProcessor r2 = new com.itextpdf.kernel.pdf.canvas.parser.PdfCanvasProcessor
            r2.<init>(r6)
            com.itextpdf.kernel.pdf.PdfDocument r3 = r5.document
            com.itextpdf.kernel.pdf.PdfPage r3 = r3.getPage(r1)
            byte[] r4 = r3.getContentBytes()
            com.itextpdf.kernel.pdf.PdfResources r3 = r3.getResources()
            r2.processContent(r4, r3)
            java.util.Map<com.itextpdf.kernel.pdf.PdfDictionary, java.util.Map<java.lang.Integer, java.lang.String>> r2 = r5.parsedTags
            java.util.Map r6 = r6.getMcidContent()
            r2.put(r1, r6)
        L38:
            java.util.Map<com.itextpdf.kernel.pdf.PdfDictionary, java.util.Map<java.lang.Integer, java.lang.String>> r6 = r5.parsedTags
            java.lang.Object r6 = r6.get(r1)
            java.util.Map r6 = (java.util.Map) r6
            java.lang.Integer r2 = java.lang.Integer.valueOf(r0)
            boolean r6 = r6.containsKey(r2)
            if (r6 == 0) goto L77
            java.util.Map<com.itextpdf.kernel.pdf.PdfDictionary, java.util.Map<java.lang.Integer, java.lang.String>> r6 = r5.parsedTags
            java.lang.Object r6 = r6.get(r1)
            java.util.Map r6 = (java.util.Map) r6
            java.lang.Integer r0 = java.lang.Integer.valueOf(r0)
            java.lang.Object r6 = r6.get(r0)
            java.lang.String r6 = (java.lang.String) r6
            goto L79
        L5d:
            com.itextpdf.kernel.pdf.tagging.PdfObjRef r6 = (com.itextpdf.kernel.pdf.tagging.PdfObjRef) r6
            com.itextpdf.kernel.pdf.PdfDictionary r6 = r6.getReferencedObject()
            boolean r0 = r6.isDictionary()
            if (r0 == 0) goto L77
            r0 = r6
            com.itextpdf.kernel.pdf.PdfDictionary r0 = (com.itextpdf.kernel.pdf.PdfDictionary) r0
            com.itextpdf.kernel.pdf.PdfName r0 = com.itextpdf.kernel.pdf.PdfName.Subtype
            com.itextpdf.kernel.pdf.PdfName r6 = r6.getAsName(r0)
            java.lang.String r6 = r6.toString()
            goto L79
        L77:
            java.lang.String r6 = ""
        L79:
            java.io.OutputStreamWriter r0 = r5.out     // Catch: java.io.IOException -> L84
            r1 = 1
            java.lang.String r6 = escapeXML(r6, r1)     // Catch: java.io.IOException -> L84
            r0.write(r6)     // Catch: java.io.IOException -> L84
            return
        L84:
            r6 = move-exception
            com.itextpdf.io.exceptions.IOException r0 = new com.itextpdf.io.exceptions.IOException
            java.lang.String r1 = "Unknown I/O exception."
            r0.<init>(r1, r6)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.itextpdf.kernel.utils.TaggedPdfReaderTool.parseTag(com.itextpdf.kernel.pdf.tagging.PdfMcr):void");
    }

    protected static String fixTagName(String str) {
        StringBuilder sb = new StringBuilder();
        for (int i = 0; i < str.length(); i++) {
            char cCharAt = str.charAt(i);
            boolean z = true;
            boolean z2 = cCharAt == ':' || (cCharAt >= 'A' && cCharAt <= 'Z') || cCharAt == '_' || ((cCharAt >= 'a' && cCharAt <= 'z') || ((cCharAt >= 192 && cCharAt <= 214) || ((cCharAt >= 216 && cCharAt <= 246) || ((cCharAt >= 248 && cCharAt <= 767) || ((cCharAt >= 880 && cCharAt <= 893) || ((cCharAt >= 895 && cCharAt <= 8191) || ((cCharAt >= 8204 && cCharAt <= 8205) || ((cCharAt >= 8304 && cCharAt <= 8591) || ((cCharAt >= 11264 && cCharAt <= 12271) || ((cCharAt >= 12289 && cCharAt <= 55295) || ((cCharAt >= 63744 && cCharAt <= 64975) || (cCharAt >= 65008 && cCharAt <= 65533))))))))))));
            if (cCharAt != '-' && cCharAt != '.' && ((cCharAt < '0' || cCharAt > '9') && cCharAt != 183 && ((cCharAt < 768 || cCharAt > 879) && ((cCharAt < 8255 || cCharAt > 8256) && !z2)))) {
                z = false;
            }
            if (i == 0) {
                if (!z2) {
                    cCharAt = '_';
                }
            } else if (!z) {
                cCharAt = '-';
            }
            sb.append(cCharAt);
        }
        return sb.toString();
    }

    protected static String escapeXML(String str, boolean z) {
        char[] charArray = str.toCharArray();
        StringBuilder sb = new StringBuilder();
        for (char c : charArray) {
            if (c == '\"') {
                sb.append("&quot;");
            } else if (c == '<') {
                sb.append("&lt;");
            } else if (c == '>') {
                sb.append("&gt;");
            } else if (c == '&') {
                sb.append("&amp;");
            } else if (c == '\'') {
                sb.append("&apos;");
            } else if (isValidCharacterValue(c)) {
                if (z && c > 127) {
                    sb.append("&#").append((int) c).append(';');
                } else {
                    sb.append(c);
                }
            }
        }
        return sb.toString();
    }

    private class MarkedContentEventListener implements IEventListener {
        private Map<Integer, ITextExtractionStrategy> contentByMcid;

        @Override // com.itextpdf.kernel.pdf.canvas.parser.listener.IEventListener
        public Set<EventType> getSupportedEvents() {
            return null;
        }

        private MarkedContentEventListener() {
            this.contentByMcid = new HashMap();
        }

        /* synthetic */ MarkedContentEventListener(TaggedPdfReaderTool taggedPdfReaderTool, C34911 c34911) {
            this();
        }

        public Map<Integer, String> getMcidContent() {
            HashMap map = new HashMap();
            Iterator<Integer> it = this.contentByMcid.keySet().iterator();
            while (it.hasNext()) {
                int iIntValue = it.next().intValue();
                map.put(Integer.valueOf(iIntValue), this.contentByMcid.get(Integer.valueOf(iIntValue)).getResultantText());
            }
            return map;
        }

        @Override // com.itextpdf.kernel.pdf.canvas.parser.listener.IEventListener
        public void eventOccurred(IEventData iEventData, EventType eventType) {
            int mcid;
            if (C34911.$SwitchMap$com$itextpdf$kernel$pdf$canvas$parser$EventType[eventType.ordinal()] == 1 && (mcid = ((TextRenderInfo) iEventData).getMcid()) != -1) {
                ITextExtractionStrategy locationTextExtractionStrategy = this.contentByMcid.get(Integer.valueOf(mcid));
                if (locationTextExtractionStrategy == null) {
                    locationTextExtractionStrategy = new LocationTextExtractionStrategy();
                    this.contentByMcid.put(Integer.valueOf(mcid), locationTextExtractionStrategy);
                }
                locationTextExtractionStrategy.eventOccurred(iEventData, eventType);
            }
        }
    }

    /* JADX INFO: renamed from: com.itextpdf.kernel.utils.TaggedPdfReaderTool$1 */
    static /* synthetic */ class C34911 {
        static final /* synthetic */ int[] $SwitchMap$com$itextpdf$kernel$pdf$canvas$parser$EventType;

        static {
            int[] iArr = new int[EventType.values().length];
            $SwitchMap$com$itextpdf$kernel$pdf$canvas$parser$EventType = iArr;
            try {
                iArr[EventType.RENDER_TEXT.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
        }
    }
}
