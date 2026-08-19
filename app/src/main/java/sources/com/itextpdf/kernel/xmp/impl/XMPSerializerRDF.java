package com.itextpdf.kernel.xmp.impl;

import com.itextpdf.kernel.xmp.PdfConst;
import com.itextpdf.kernel.xmp.XMPConst;
import com.itextpdf.kernel.xmp.XMPError;
import com.itextpdf.kernel.xmp.XMPException;
import com.itextpdf.kernel.xmp.XMPMeta;
import com.itextpdf.kernel.xmp.XMPMetaFactory;
import com.itextpdf.kernel.xmp.options.SerializeOptions;
import java.io.IOException;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;

/* JADX INFO: loaded from: classes6.dex */
public class XMPSerializerRDF {
    private static final int DEFAULT_PAD = 2048;
    private static final String PACKET_HEADER = "<?xpacket begin=\"\ufeff\" id=\"W5M0MpCehiHzreSzNTczkc9d\"?>";
    private static final String PACKET_TRAILER = "<?xpacket end=\"";
    private static final String PACKET_TRAILER2 = "\"?>";
    static final Set<String> RDF_ATTR_QUALIFIER = Collections.unmodifiableSet(new HashSet(Arrays.asList(XMPConst.XML_LANG, "rdf:resource", "rdf:ID", "rdf:bagID", "rdf:nodeID")));
    private static final String RDF_EMPTY_STRUCT = "<rdf:Description/>";
    private static final String RDF_RDF_END = "</rdf:RDF>";
    private static final String RDF_RDF_START = "<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">";
    private static final String RDF_SCHEMA_END = "</rdf:Description>";
    private static final String RDF_SCHEMA_START = "<rdf:Description rdf:about=";
    private static final String RDF_STRUCT_END = "</rdf:Description>";
    private static final String RDF_STRUCT_START = "<rdf:Description";
    private static final String RDF_XMPMETA_END = "</x:xmpmeta>";
    private static final String RDF_XMPMETA_START = "<x:xmpmeta xmlns:x=\"adobe:ns:meta/\" x:xmptk=\"";
    private SerializeOptions options;
    private CountOutputStream outputStream;
    private int padding;
    private int unicodeSize = 1;
    private OutputStreamWriter writer;
    private XMPMetaImpl xmp;

    public void serialize(XMPMeta xMPMeta, OutputStream outputStream, SerializeOptions serializeOptions) throws XMPException {
        try {
            this.outputStream = new CountOutputStream(outputStream);
            this.xmp = (XMPMetaImpl) xMPMeta;
            this.options = serializeOptions;
            this.padding = serializeOptions.getPadding();
            this.writer = new OutputStreamWriter(this.outputStream, serializeOptions.getEncoding());
            checkOptionsConsistence();
            String strSerializeAsRDF = serializeAsRDF();
            this.writer.flush();
            addPadding(strSerializeAsRDF.length());
            write(strSerializeAsRDF);
            this.writer.flush();
            this.outputStream.close();
        } catch (IOException unused) {
            throw new XMPException("Error writing to the OutputStream", 0);
        }
    }

    private void addPadding(int i) throws XMPException, IOException {
        if (this.options.getExactPacketLength()) {
            int bytesWritten = this.outputStream.getBytesWritten() + (i * this.unicodeSize);
            int i2 = this.padding;
            if (bytesWritten > i2) {
                throw new XMPException("Can't fit into specified packet size", 107);
            }
            this.padding = i2 - bytesWritten;
        }
        this.padding /= this.unicodeSize;
        int length = this.options.getNewline().length();
        int i3 = this.padding;
        if (i3 >= length) {
            this.padding = i3 - length;
            while (true) {
                int i4 = this.padding;
                int i5 = length + 100;
                if (i4 >= i5) {
                    writeChars(100, ' ');
                    writeNewline();
                    this.padding -= i5;
                } else {
                    writeChars(i4, ' ');
                    writeNewline();
                    return;
                }
            }
        } else {
            writeChars(i3, ' ');
        }
    }

    protected void checkOptionsConsistence() throws XMPException {
        if (this.options.getEncodeUTF16BE() | this.options.getEncodeUTF16LE()) {
            this.unicodeSize = 2;
        }
        if (this.options.getExactPacketLength()) {
            if (this.options.getOmitPacketWrapper() | this.options.getIncludeThumbnailPad()) {
                throw new XMPException("Inconsistent options for exact size serialize", 103);
            }
            if ((this.options.getPadding() & (this.unicodeSize - 1)) != 0) {
                throw new XMPException("Exact size must be a multiple of the Unicode element", 103);
            }
            return;
        }
        if (this.options.getReadOnlyPacket()) {
            if (this.options.getOmitPacketWrapper() | this.options.getIncludeThumbnailPad()) {
                throw new XMPException("Inconsistent options for read-only packet", 103);
            }
            this.padding = 0;
        } else if (this.options.getOmitPacketWrapper()) {
            if (this.options.getIncludeThumbnailPad()) {
                throw new XMPException("Inconsistent options for non-packet serialize", 103);
            }
            this.padding = 0;
        } else {
            if (this.padding == 0) {
                this.padding = this.unicodeSize * 2048;
            }
            if (!this.options.getIncludeThumbnailPad() || this.xmp.doesPropertyExist(XMPConst.NS_XMP, PdfConst.Thumbnails)) {
                return;
            }
            this.padding += this.unicodeSize * 10000;
        }
    }

    private String serializeAsRDF() throws XMPException, IOException {
        int i = 0;
        if (!this.options.getOmitPacketWrapper()) {
            writeIndent(0);
            write(PACKET_HEADER);
            writeNewline();
        }
        if (!this.options.getOmitXmpMetaElement()) {
            writeIndent(0);
            write(RDF_XMPMETA_START);
            if (!this.options.getOmitVersionAttribute()) {
                write(XMPMetaFactory.getVersionInfo().getMessage());
            }
            write("\">");
            writeNewline();
            i = 1;
        }
        writeIndent(i);
        write(RDF_RDF_START);
        writeNewline();
        if (this.options.getUseCanonicalFormat()) {
            serializeCanonicalRDFSchemas(i);
        } else {
            serializeCompactRDFSchemas(i);
        }
        writeIndent(i);
        write(RDF_RDF_END);
        writeNewline();
        if (!this.options.getOmitXmpMetaElement()) {
            writeIndent(i - 1);
            write(RDF_XMPMETA_END);
            writeNewline();
        }
        String str = "";
        if (this.options.getOmitPacketWrapper()) {
            return "";
        }
        for (int baseIndent = this.options.getBaseIndent(); baseIndent > 0; baseIndent--) {
            str = str + this.options.getIndent();
        }
        return ((str + PACKET_TRAILER) + (this.options.getReadOnlyPacket() ? 'r' : 'w')) + PACKET_TRAILER2;
    }

    private void serializeCanonicalRDFSchemas(int i) throws XMPException, IOException {
        if (this.xmp.getRoot().getChildrenLength() > 0) {
            startOuterRDFDescription(this.xmp.getRoot(), i);
            Iterator itIterateChildren = this.xmp.getRoot().iterateChildren();
            while (itIterateChildren.hasNext()) {
                serializeCanonicalRDFSchema((XMPNode) itIterateChildren.next(), i);
            }
            endOuterRDFDescription(i);
            return;
        }
        writeIndent(i + 1);
        write(RDF_SCHEMA_START);
        writeTreeName();
        write("/>");
        writeNewline();
    }

    private void writeTreeName() throws IOException {
        write(34);
        String name = this.xmp.getRoot().getName();
        if (name != null) {
            appendNodeValue(name, true);
        }
        write(34);
    }

    private void serializeCompactRDFSchemas(int i) throws XMPException, IOException {
        int i2 = i + 1;
        writeIndent(i2);
        write(RDF_SCHEMA_START);
        writeTreeName();
        HashSet hashSet = new HashSet();
        hashSet.add("xml");
        hashSet.add("rdf");
        Iterator itIterateChildren = this.xmp.getRoot().iterateChildren();
        while (itIterateChildren.hasNext()) {
            declareUsedNamespaces((XMPNode) itIterateChildren.next(), hashSet, i + 3);
        }
        Iterator itIterateChildren2 = this.xmp.getRoot().iterateChildren();
        boolean zSerializeCompactRDFAttrProps = true;
        while (itIterateChildren2.hasNext()) {
            zSerializeCompactRDFAttrProps &= serializeCompactRDFAttrProps((XMPNode) itIterateChildren2.next(), i + 2);
        }
        if (!zSerializeCompactRDFAttrProps) {
            write(62);
            writeNewline();
            Iterator itIterateChildren3 = this.xmp.getRoot().iterateChildren();
            while (itIterateChildren3.hasNext()) {
                serializeCompactRDFElementProps((XMPNode) itIterateChildren3.next(), i + 2);
            }
            writeIndent(i2);
            write("</rdf:Description>");
            writeNewline();
            return;
        }
        write("/>");
        writeNewline();
    }

    private boolean serializeCompactRDFAttrProps(XMPNode xMPNode, int i) throws IOException {
        Iterator itIterateChildren = xMPNode.iterateChildren();
        boolean z = true;
        while (itIterateChildren.hasNext()) {
            XMPNode xMPNode2 = (XMPNode) itIterateChildren.next();
            if (canBeRDFAttrProp(xMPNode2)) {
                writeNewline();
                writeIndent(i);
                write(xMPNode2.getName());
                write("=\"");
                appendNodeValue(xMPNode2.getValue(), true);
                write(34);
            } else {
                z = false;
            }
        }
        return z;
    }

    /* JADX WARN: Removed duplicated region for block: B:35:0x00ad A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:38:0x0004 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void serializeCompactRDFElementProps(com.itextpdf.kernel.xmp.impl.XMPNode r12, int r13) throws com.itextpdf.kernel.xmp.XMPException, java.io.IOException {
        /*
            r11 = this;
            java.util.Iterator r12 = r12.iterateChildren()
        L4:
            boolean r0 = r12.hasNext()
            if (r0 == 0) goto Lc4
            java.lang.Object r0 = r12.next()
            com.itextpdf.kernel.xmp.impl.XMPNode r0 = (com.itextpdf.kernel.xmp.impl.XMPNode) r0
            boolean r1 = r11.canBeRDFAttrProp(r0)
            if (r1 == 0) goto L17
            goto L4
        L17:
            java.lang.String r1 = r0.getName()
            java.lang.String r2 = "[]"
            boolean r2 = r2.equals(r1)
            if (r2 == 0) goto L25
            java.lang.String r1 = "rdf:li"
        L25:
            r11.writeIndent(r13)
            r2 = 60
            r11.write(r2)
            r11.write(r1)
            java.util.Iterator r2 = r0.iterateQualifier()
            r3 = 0
            r4 = r3
            r5 = r4
        L37:
            boolean r6 = r2.hasNext()
            r7 = 1
            if (r6 == 0) goto L7a
            java.lang.Object r6 = r2.next()
            com.itextpdf.kernel.xmp.impl.XMPNode r6 = (com.itextpdf.kernel.xmp.impl.XMPNode) r6
            java.util.Set<java.lang.String> r8 = com.itextpdf.kernel.xmp.impl.XMPSerializerRDF.RDF_ATTR_QUALIFIER
            java.lang.String r9 = r6.getName()
            boolean r8 = r8.contains(r9)
            if (r8 != 0) goto L52
            r4 = r7
            goto L37
        L52:
            java.lang.String r5 = "rdf:resource"
            java.lang.String r8 = r6.getName()
            boolean r5 = r5.equals(r8)
            r8 = 32
            r11.write(r8)
            java.lang.String r8 = r6.getName()
            r11.write(r8)
            java.lang.String r8 = "=\""
            r11.write(r8)
            java.lang.String r6 = r6.getValue()
            r11.appendNodeValue(r6, r7)
            r6 = 34
            r11.write(r6)
            goto L37
        L7a:
            if (r4 == 0) goto L80
            r11.serializeCompactRDFGeneralQualifier(r13, r0)
            goto La2
        L80:
            com.itextpdf.kernel.xmp.options.PropertyOptions r2 = r0.getOptions()
            boolean r2 = r2.isCompositeProperty()
            if (r2 != 0) goto L95
            boolean[] r0 = r11.serializeCompactRDFSimpleProp(r0)
            boolean r2 = r0[r3]
            boolean r7 = r0[r7]
            r0 = r7
            r7 = r2
            goto Lab
        L95:
            com.itextpdf.kernel.xmp.options.PropertyOptions r2 = r0.getOptions()
            boolean r2 = r2.isArray()
            if (r2 == 0) goto La4
            r11.serializeCompactRDFArrayProp(r0, r13)
        La2:
            r0 = r7
            goto Lab
        La4:
            boolean r0 = r11.serializeCompactRDFStructProp(r0, r13, r5)
            r10 = r7
            r7 = r0
            r0 = r10
        Lab:
            if (r7 == 0) goto L4
            if (r0 == 0) goto Lb2
            r11.writeIndent(r13)
        Lb2:
            java.lang.String r0 = "</"
            r11.write(r0)
            r11.write(r1)
            r0 = 62
            r11.write(r0)
            r11.writeNewline()
            goto L4
        Lc4:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.itextpdf.kernel.xmp.impl.XMPSerializerRDF.serializeCompactRDFElementProps(com.itextpdf.kernel.xmp.impl.XMPNode, int):void");
    }

    private boolean[] serializeCompactRDFSimpleProp(XMPNode xMPNode) throws IOException {
        boolean z;
        boolean z2;
        if (xMPNode.getOptions().isURI()) {
            write(" rdf:resource=\"");
            appendNodeValue(xMPNode.getValue(), true);
            write("\"/>");
            writeNewline();
        } else if (xMPNode.getValue() == null || xMPNode.getValue().length() == 0) {
            write("/>");
            writeNewline();
        } else {
            write(62);
            appendNodeValue(xMPNode.getValue(), false);
            z = false;
            z2 = true;
            return new boolean[]{z2, z};
        }
        z2 = false;
        z = true;
        return new boolean[]{z2, z};
    }

    private void serializeCompactRDFArrayProp(XMPNode xMPNode, int i) throws XMPException, IOException {
        write(62);
        writeNewline();
        int i2 = i + 1;
        emitRDFArrayTag(xMPNode, true, i2);
        if (xMPNode.getOptions().isArrayAltText()) {
            XMPNodeUtils.normalizeLangArray(xMPNode);
        }
        serializeCompactRDFElementProps(xMPNode, i + 2);
        emitRDFArrayTag(xMPNode, false, i2);
    }

    private boolean serializeCompactRDFStructProp(XMPNode xMPNode, int i, boolean z) throws XMPException, IOException {
        Iterator itIterateChildren = xMPNode.iterateChildren();
        boolean z2 = false;
        boolean z3 = false;
        while (itIterateChildren.hasNext()) {
            if (canBeRDFAttrProp((XMPNode) itIterateChildren.next())) {
                z2 = true;
            } else {
                z3 = true;
            }
            if (z2 && z3) {
                break;
            }
        }
        if (z && z3) {
            throw new XMPException("Can't mix rdf:resource qualifier and element fields", XMPError.BADRDF);
        }
        if (!xMPNode.hasChildren()) {
            write(" rdf:parseType=\"Resource\"/>");
            writeNewline();
            return false;
        }
        if (!z3) {
            serializeCompactRDFAttrProps(xMPNode, i + 1);
            write("/>");
            writeNewline();
            return false;
        }
        if (!z2) {
            write(" rdf:parseType=\"Resource\">");
            writeNewline();
            serializeCompactRDFElementProps(xMPNode, i + 1);
        } else {
            write(62);
            writeNewline();
            int i2 = i + 1;
            writeIndent(i2);
            write(RDF_STRUCT_START);
            serializeCompactRDFAttrProps(xMPNode, i + 2);
            write(">");
            writeNewline();
            serializeCompactRDFElementProps(xMPNode, i2);
            writeIndent(i2);
            write("</rdf:Description>");
            writeNewline();
        }
        return true;
    }

    private void serializeCompactRDFGeneralQualifier(int i, XMPNode xMPNode) throws XMPException, IOException {
        write(" rdf:parseType=\"Resource\">");
        writeNewline();
        int i2 = i + 1;
        serializeCanonicalRDFProperty(xMPNode, false, true, i2);
        Iterator itIterateQualifier = xMPNode.iterateQualifier();
        while (itIterateQualifier.hasNext()) {
            serializeCanonicalRDFProperty((XMPNode) itIterateQualifier.next(), false, false, i2);
        }
    }

    private void serializeCanonicalRDFSchema(XMPNode xMPNode, int i) throws XMPException, IOException {
        Iterator itIterateChildren = xMPNode.iterateChildren();
        while (itIterateChildren.hasNext()) {
            serializeCanonicalRDFProperty((XMPNode) itIterateChildren.next(), this.options.getUseCanonicalFormat(), false, i + 2);
        }
    }

    private void declareUsedNamespaces(XMPNode xMPNode, Set<String> set, int i) throws IOException {
        if (xMPNode.getOptions().isSchemaNode()) {
            declareNamespace(xMPNode.getValue().substring(0, xMPNode.getValue().length() - 1), xMPNode.getName(), set, i);
        } else if (xMPNode.getOptions().isStruct()) {
            Iterator itIterateChildren = xMPNode.iterateChildren();
            while (itIterateChildren.hasNext()) {
                declareNamespace(((XMPNode) itIterateChildren.next()).getName(), null, set, i);
            }
        }
        Iterator itIterateChildren2 = xMPNode.iterateChildren();
        while (itIterateChildren2.hasNext()) {
            declareUsedNamespaces((XMPNode) itIterateChildren2.next(), set, i);
        }
        Iterator itIterateQualifier = xMPNode.iterateQualifier();
        while (itIterateQualifier.hasNext()) {
            XMPNode xMPNode2 = (XMPNode) itIterateQualifier.next();
            declareNamespace(xMPNode2.getName(), null, set, i);
            declareUsedNamespaces(xMPNode2, set, i);
        }
    }

    private void declareNamespace(String str, String str2, Set<String> set, int i) throws IOException {
        if (str2 == null) {
            QName qName = new QName(str);
            if (!qName.hasPrefix()) {
                return;
            }
            str = qName.getPrefix();
            str2 = XMPMetaFactory.getSchemaRegistry().getNamespaceURI(str + ":");
            declareNamespace(str, str2, set, i);
        }
        if (str.isEmpty() || set.contains(str)) {
            return;
        }
        writeNewline();
        writeIndent(i);
        write("xmlns:");
        write(str);
        write("=\"");
        write(str2);
        write(34);
        set.add(str);
    }

    private void startOuterRDFDescription(XMPNode xMPNode, int i) throws IOException {
        writeIndent(i + 1);
        write(RDF_SCHEMA_START);
        writeTreeName();
        HashSet hashSet = new HashSet();
        hashSet.add("xml");
        hashSet.add("rdf");
        declareUsedNamespaces(xMPNode, hashSet, i + 3);
        write(62);
        writeNewline();
    }

    private void endOuterRDFDescription(int i) throws IOException {
        writeIndent(i + 1);
        write("</rdf:Description>");
        writeNewline();
    }

    private void serializeCanonicalRDFProperty(XMPNode xMPNode, boolean z, boolean z2, int i) throws XMPException, IOException {
        boolean z3;
        int i2 = i;
        String name = xMPNode.getName();
        if (z2) {
            name = "rdf:value";
        } else if ("[]".equals(name)) {
            name = "rdf:li";
        }
        writeIndent(i2);
        write(60);
        write(name);
        Iterator itIterateQualifier = xMPNode.iterateQualifier();
        boolean z4 = false;
        boolean z5 = false;
        boolean zEquals = false;
        while (true) {
            z3 = true;
            if (!itIterateQualifier.hasNext()) {
                break;
            }
            XMPNode xMPNode2 = (XMPNode) itIterateQualifier.next();
            if (RDF_ATTR_QUALIFIER.contains(xMPNode2.getName())) {
                zEquals = "rdf:resource".equals(xMPNode2.getName());
                if (!z2) {
                    write(32);
                    write(xMPNode2.getName());
                    write("=\"");
                    appendNodeValue(xMPNode2.getValue(), true);
                    write(34);
                }
            } else {
                z5 = true;
            }
        }
        if (!z5 || z2) {
            if (!xMPNode.getOptions().isCompositeProperty()) {
                if (xMPNode.getOptions().isURI()) {
                    write(" rdf:resource=\"");
                    appendNodeValue(xMPNode.getValue(), true);
                    write("\"/>");
                    writeNewline();
                } else if (xMPNode.getValue() == null || "".equals(xMPNode.getValue())) {
                    write("/>");
                    writeNewline();
                } else {
                    write(62);
                    appendNodeValue(xMPNode.getValue(), false);
                    z3 = false;
                    z4 = true;
                }
            } else {
                if (xMPNode.getOptions().isArray()) {
                    write(62);
                    writeNewline();
                    int i3 = i2 + 1;
                    emitRDFArrayTag(xMPNode, true, i3);
                    if (xMPNode.getOptions().isArrayAltText()) {
                        XMPNodeUtils.normalizeLangArray(xMPNode);
                    }
                    Iterator itIterateChildren = xMPNode.iterateChildren();
                    while (itIterateChildren.hasNext()) {
                        serializeCanonicalRDFProperty((XMPNode) itIterateChildren.next(), z, false, i2 + 2);
                    }
                    emitRDFArrayTag(xMPNode, false, i3);
                } else if (!zEquals) {
                    if (!xMPNode.hasChildren()) {
                        if (z) {
                            write(">");
                            writeNewline();
                            writeIndent(i2 + 1);
                            write(RDF_EMPTY_STRUCT);
                            z4 = true;
                        } else {
                            write(" rdf:parseType=\"Resource\"/>");
                        }
                        writeNewline();
                    } else {
                        if (z) {
                            write(">");
                            writeNewline();
                            i2++;
                            writeIndent(i2);
                            write(RDF_STRUCT_START);
                            write(">");
                        } else {
                            write(" rdf:parseType=\"Resource\">");
                        }
                        writeNewline();
                        Iterator itIterateChildren2 = xMPNode.iterateChildren();
                        while (itIterateChildren2.hasNext()) {
                            serializeCanonicalRDFProperty((XMPNode) itIterateChildren2.next(), z, false, i2 + 1);
                        }
                        if (z) {
                            writeIndent(i2);
                            write("</rdf:Description>");
                            writeNewline();
                            i2--;
                        }
                    }
                } else {
                    Iterator itIterateChildren3 = xMPNode.iterateChildren();
                    while (itIterateChildren3.hasNext()) {
                        XMPNode xMPNode3 = (XMPNode) itIterateChildren3.next();
                        if (!canBeRDFAttrProp(xMPNode3)) {
                            throw new XMPException("Can't mix rdf:resource and complex fields", XMPError.BADRDF);
                        }
                        writeNewline();
                        writeIndent(i2 + 1);
                        write(32);
                        write(xMPNode3.getName());
                        write("=\"");
                        appendNodeValue(xMPNode3.getValue(), true);
                        write(34);
                    }
                    write("/>");
                    writeNewline();
                }
                z4 = true;
            }
        } else {
            if (zEquals) {
                throw new XMPException("Can't mix rdf:resource and general qualifiers", XMPError.BADRDF);
            }
            if (z) {
                write(">");
                writeNewline();
                i2++;
                writeIndent(i2);
                write(RDF_STRUCT_START);
                write(">");
            } else {
                write(" rdf:parseType=\"Resource\">");
            }
            writeNewline();
            int i4 = i2 + 1;
            serializeCanonicalRDFProperty(xMPNode, z, true, i4);
            Iterator itIterateQualifier2 = xMPNode.iterateQualifier();
            while (itIterateQualifier2.hasNext()) {
                XMPNode xMPNode4 = (XMPNode) itIterateQualifier2.next();
                if (!RDF_ATTR_QUALIFIER.contains(xMPNode4.getName())) {
                    serializeCanonicalRDFProperty(xMPNode4, z, false, i4);
                }
            }
            if (z) {
                writeIndent(i2);
                write("</rdf:Description>");
                writeNewline();
                i2--;
            }
            z4 = true;
        }
        if (z4) {
            if (z3) {
                writeIndent(i2);
            }
            write("</");
            write(name);
            write(62);
            writeNewline();
        }
    }

    private void emitRDFArrayTag(XMPNode xMPNode, boolean z, int i) throws IOException {
        if (z || xMPNode.hasChildren()) {
            writeIndent(i);
            write(z ? "<rdf:" : "</rdf:");
            if (xMPNode.getOptions().isArrayAlternate()) {
                write("Alt");
            } else if (xMPNode.getOptions().isArrayOrdered()) {
                write("Seq");
            } else {
                write("Bag");
            }
            if (z && !xMPNode.hasChildren()) {
                write("/>");
            } else {
                write(">");
            }
            writeNewline();
        }
    }

    private void appendNodeValue(String str, boolean z) throws IOException {
        if (str == null) {
            str = "";
        }
        write(Utils.escapeXML(str, z, true));
    }

    private boolean canBeRDFAttrProp(XMPNode xMPNode) {
        return (xMPNode.hasQualifier() || xMPNode.getOptions().isURI() || xMPNode.getOptions().isCompositeProperty() || xMPNode.getOptions().containsOneOf(1073741824) || "[]".equals(xMPNode.getName())) ? false : true;
    }

    private void writeIndent(int i) throws IOException {
        for (int baseIndent = this.options.getBaseIndent() + i; baseIndent > 0; baseIndent--) {
            this.writer.write(this.options.getIndent());
        }
    }

    private void write(int i) throws IOException {
        this.writer.write(i);
    }

    private void write(String str) throws IOException {
        this.writer.write(str);
    }

    private void writeChars(int i, char c) throws IOException {
        while (i > 0) {
            this.writer.write(c);
            i--;
        }
    }

    private void writeNewline() throws IOException {
        this.writer.write(this.options.getNewline());
    }
}
