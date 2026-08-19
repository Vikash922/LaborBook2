package com.itextpdf.forms.xfa;

import com.facebook.gamingservices.cloudgaming.internal.SDKConstants;
import com.itextpdf.forms.PdfAcroForm;
import com.itextpdf.forms.xfdf.XfdfConstants;
import com.itextpdf.kernel.exceptions.PdfException;
import com.itextpdf.kernel.pdf.PdfArray;
import com.itextpdf.kernel.pdf.PdfDictionary;
import com.itextpdf.kernel.pdf.PdfDocument;
import com.itextpdf.kernel.pdf.PdfName;
import com.itextpdf.kernel.pdf.PdfObject;
import com.itextpdf.kernel.pdf.PdfStream;
import com.itextpdf.kernel.pdf.PdfString;
import com.itextpdf.kernel.pdf.PdfVersion;
import com.itextpdf.kernel.pdf.VersionConforming;
import com.itextpdf.kernel.utils.XmlProcessorCreator;
import com.itextpdf.kernel.xmp.XmlDomWriter;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.nio.charset.StandardCharsets;
import java.util.HashMap;
import java.util.Map;
import javax.xml.parsers.ParserConfigurationException;
import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;
import org.xml.sax.InputSource;
import org.xml.sax.SAXException;

/* JADX INFO: loaded from: classes6.dex */
public class XfaForm {
    private static final int INIT_SERIALIZER_BUFFER_SIZE = 16384;
    public static final String XFA_DATA_SCHEMA = "http://www.xfa.org/schema/xfa-data/1.0/";
    private AcroFieldsSearch acroFieldsSom;
    private Node datasetsNode;
    private Xml2SomDatasets datasetsSom;
    private Document domDocument;
    private Node templateNode;
    private boolean xfaPresent;

    public XfaForm() {
        this(new ByteArrayInputStream("<?xml version=\"1.0\" encoding=\"UTF-8\"?><xdp:xdp xmlns:xdp=\"http://ns.adobe.com/xdp/\"><template xmlns=\"http://www.xfa.org/schema/xfa-template/3.3/\"></template><xfa:datasets xmlns:xfa=\"http://www.xfa.org/schema/xfa-data/1.0/\"><xfa:data></xfa:data></xfa:datasets></xdp:xdp>".getBytes(StandardCharsets.UTF_8)));
    }

    public XfaForm(InputStream inputStream) {
        this.xfaPresent = false;
        try {
            initXfaForm(inputStream);
        } catch (Exception e) {
            throw new PdfException(e.getMessage(), (Throwable) e);
        }
    }

    public XfaForm(Document document) {
        this.xfaPresent = false;
        setDomDocument(document);
    }

    public XfaForm(PdfDictionary pdfDictionary) {
        this.xfaPresent = false;
        PdfObject pdfObject = pdfDictionary.get(PdfName.XFA);
        if (pdfObject != null) {
            try {
                initXfaForm(pdfObject);
            } catch (Exception e) {
                throw new PdfException(e.getMessage(), (Throwable) e);
            }
        }
    }

    public XfaForm(PdfDocument pdfDocument) {
        this.xfaPresent = false;
        PdfObject xfaObject = getXfaObject(pdfDocument);
        if (xfaObject != null) {
            try {
                initXfaForm(xfaObject);
            } catch (Exception e) {
                throw new PdfException(e.getMessage(), (Throwable) e);
            }
        }
    }

    public static void setXfaForm(XfaForm xfaForm, PdfDocument pdfDocument) throws IOException {
        setXfaForm(xfaForm, PdfAcroForm.getAcroForm(pdfDocument, true));
    }

    public static void setXfaForm(XfaForm xfaForm, PdfAcroForm pdfAcroForm) throws IOException {
        if (xfaForm == null || pdfAcroForm == null || pdfAcroForm.getPdfDocument() == null) {
            throw new IllegalArgumentException("XfaForm, PdfAcroForm and PdfAcroForm's document shall not be null");
        }
        PdfDocument pdfDocument = pdfAcroForm.getPdfDocument();
        if (VersionConforming.validatePdfVersionForDeprecatedFeatureLogError(pdfDocument, PdfVersion.PDF_2_0, VersionConforming.DEPRECATED_XFA_FORMS)) {
            return;
        }
        PdfObject xfaObject = getXfaObject(pdfAcroForm);
        if (xfaObject != null && xfaObject.isArray()) {
            PdfArray pdfArray = (PdfArray) xfaObject;
            int i = -1;
            int i2 = -1;
            for (int i3 = 0; i3 < pdfArray.size(); i3 += 2) {
                PdfString asString = pdfArray.getAsString(i3);
                if (SDKConstants.PARAM_UPDATE_TEMPLATE.equals(asString.toString())) {
                    i = i3 + 1;
                }
                if ("datasets".equals(asString.toString())) {
                    i2 = i3 + 1;
                }
            }
            if (i > -1 && i2 > -1) {
                PdfStream pdfStream = new PdfStream(serializeDocument(xfaForm.templateNode));
                pdfStream.setCompressionLevel(pdfDocument.getWriter().getCompressionLevel());
                pdfArray.set(i, pdfStream);
                PdfStream pdfStream2 = new PdfStream(serializeDocument(xfaForm.datasetsNode));
                pdfStream2.setCompressionLevel(pdfDocument.getWriter().getCompressionLevel());
                pdfArray.set(i2, pdfStream2);
                pdfArray.setModified();
                pdfArray.flush();
                pdfAcroForm.put(PdfName.XFA, new PdfArray(pdfArray));
                pdfAcroForm.setModified();
                if (((PdfDictionary) pdfAcroForm.getPdfObject()).isIndirect()) {
                    return;
                }
                pdfDocument.getCatalog().setModified();
                return;
            }
        }
        PdfStream pdfStream3 = new PdfStream(serializeDocument(xfaForm.domDocument));
        pdfStream3.setCompressionLevel(pdfDocument.getWriter().getCompressionLevel());
        pdfStream3.flush();
        pdfAcroForm.put(PdfName.XFA, pdfStream3);
        pdfAcroForm.setModified();
        if (((PdfDictionary) pdfAcroForm.getPdfObject()).isIndirect()) {
            return;
        }
        pdfDocument.getCatalog().setModified();
    }

    public static Map<String, Node> extractXFANodes(Document document) {
        HashMap map = new HashMap();
        Node firstChild = document.getFirstChild();
        while (firstChild.getChildNodes().getLength() == 0) {
            firstChild = firstChild.getNextSibling();
        }
        for (Node firstChild2 = firstChild.getFirstChild(); firstChild2 != null; firstChild2 = firstChild2.getNextSibling()) {
            if (firstChild2.getNodeType() == 1) {
                map.put(firstChild2.getLocalName(), firstChild2);
            }
        }
        return map;
    }

    public void write(PdfDocument pdfDocument) throws IOException {
        setXfaForm(this, pdfDocument);
    }

    public void write(PdfAcroForm pdfAcroForm) throws IOException {
        setXfaForm(this, pdfAcroForm);
    }

    public void setXfaFieldValue(String str, String str2) {
        String strFindFieldName;
        if (!isXfaPresent() || (strFindFieldName = findFieldName(str)) == null) {
            return;
        }
        String shortName = Xml2Som.getShortName(strFindFieldName);
        Node nodeFindDatasetsNode = findDatasetsNode(shortName);
        if (nodeFindDatasetsNode == null) {
            nodeFindDatasetsNode = this.datasetsSom.insertNode(getDatasetsNode(), shortName);
        }
        setNodeText(nodeFindDatasetsNode, str2);
    }

    public String getXfaFieldValue(String str) {
        String strFindFieldName;
        if (!isXfaPresent() || (strFindFieldName = findFieldName(str)) == null) {
            return null;
        }
        return getNodeText(findDatasetsNode(Xml2Som.getShortName(strFindFieldName)));
    }

    public boolean isXfaPresent() {
        return this.xfaPresent;
    }

    public String findFieldName(String str) {
        if (this.acroFieldsSom == null && this.xfaPresent && this.datasetsSom != null) {
            this.acroFieldsSom = new AcroFieldsSearch(this.datasetsSom.getName2Node().keySet());
        }
        AcroFieldsSearch acroFieldsSearch = this.acroFieldsSom;
        if (acroFieldsSearch == null || !this.xfaPresent) {
            return null;
        }
        return acroFieldsSearch.getAcroShort2LongName().containsKey(str) ? this.acroFieldsSom.getAcroShort2LongName().get(str) : this.acroFieldsSom.inverseSearchGlobal(Xml2Som.splitParts(str));
    }

    public String findDatasetsName(String str) {
        return this.datasetsSom.getName2Node().containsKey(str) ? str : this.datasetsSom.inverseSearchGlobal(Xml2Som.splitParts(str));
    }

    public Node findDatasetsNode(String str) {
        String strFindDatasetsName;
        if (str == null || (strFindDatasetsName = findDatasetsName(str)) == null) {
            return null;
        }
        return this.datasetsSom.getName2Node().get(strFindDatasetsName);
    }

    public static String getNodeText(Node node) {
        return node == null ? "" : getNodeText(node, "");
    }

    public void setNodeText(Node node, String str) {
        if (node == null) {
            return;
        }
        while (true) {
            Node firstChild = node.getFirstChild();
            if (firstChild == null) {
                break;
            } else {
                node.removeChild(firstChild);
            }
        }
        if (node.getAttributes().getNamedItemNS(XFA_DATA_SCHEMA, "dataNode") != null) {
            node.getAttributes().removeNamedItemNS(XFA_DATA_SCHEMA, "dataNode");
        }
        node.appendChild(this.domDocument.createTextNode(str));
    }

    public Document getDomDocument() {
        return this.domDocument;
    }

    public void setDomDocument(Document document) {
        this.domDocument = document;
        extractNodes();
    }

    public Node getDatasetsNode() {
        return this.datasetsNode;
    }

    public void fillXfaForm(File file) throws IOException {
        fillXfaForm(file, false);
    }

    public void fillXfaForm(File file, boolean z) throws IOException {
        fillXfaForm(new FileInputStream(file), z);
    }

    public void fillXfaForm(InputStream inputStream) throws IOException {
        fillXfaForm(inputStream, false);
    }

    public void fillXfaForm(InputStream inputStream, boolean z) throws IOException {
        fillXfaForm(new InputSource(inputStream), z);
    }

    public void fillXfaForm(InputSource inputSource) throws IOException {
        fillXfaForm(inputSource, false);
    }

    public void fillXfaForm(InputSource inputSource, boolean z) throws IOException {
        try {
            fillXfaForm(XmlProcessorCreator.createSafeDocumentBuilder(false, false).parse(inputSource).getDocumentElement(), z);
        } catch (SAXException e) {
            throw new PdfException(e.getMessage(), (Throwable) e);
        }
    }

    public void fillXfaForm(Node node) {
        fillXfaForm(node, false);
    }

    public void fillXfaForm(Node node, boolean z) {
        Node nodeCreateElementNS;
        int i = 0;
        if (z) {
            NodeList elementsByTagName = this.domDocument.getElementsByTagName(XfdfConstants.FIELD);
            for (int i2 = 0; i2 < elementsByTagName.getLength(); i2++) {
                ((Element) elementsByTagName.item(i2)).setAttribute("access", "readOnly");
            }
        }
        NodeList childNodes = this.datasetsNode.getChildNodes();
        int length = childNodes.getLength();
        while (true) {
            if (i >= length) {
                nodeCreateElementNS = null;
                break;
            }
            nodeCreateElementNS = childNodes.item(i);
            if (nodeCreateElementNS.getNodeType() == 1 && nodeCreateElementNS.getLocalName().equals("data") && XFA_DATA_SCHEMA.equals(nodeCreateElementNS.getNamespaceURI())) {
                break;
            } else {
                i++;
            }
        }
        if (nodeCreateElementNS == null) {
            nodeCreateElementNS = this.datasetsNode.getOwnerDocument().createElementNS(XFA_DATA_SCHEMA, "xfa:data");
            this.datasetsNode.appendChild(nodeCreateElementNS);
        }
        if (nodeCreateElementNS.getChildNodes().getLength() == 0) {
            nodeCreateElementNS.appendChild(this.domDocument.importNode(node, true));
        } else {
            Node firstElementNode = getFirstElementNode(nodeCreateElementNS);
            if (firstElementNode != null) {
                nodeCreateElementNS.replaceChild(this.domDocument.importNode(node, true), firstElementNode);
            }
        }
        extractNodes();
    }

    private static String getNodeText(Node node, String str) {
        for (Node firstChild = node.getFirstChild(); firstChild != null; firstChild = firstChild.getNextSibling()) {
            if (firstChild.getNodeType() == 1) {
                str = getNodeText(firstChild, str);
            } else if (firstChild.getNodeType() == 3) {
                str = str + firstChild.getNodeValue();
            }
        }
        return str;
    }

    private static PdfObject getXfaObject(PdfDocument pdfDocument) {
        PdfDictionary asDictionary = pdfDocument.getCatalog().getPdfObject().getAsDictionary(PdfName.AcroForm);
        if (asDictionary == null) {
            return null;
        }
        return asDictionary.get(PdfName.XFA);
    }

    private static PdfObject getXfaObject(PdfAcroForm pdfAcroForm) {
        if (pdfAcroForm == null || pdfAcroForm.getPdfObject() == null) {
            return null;
        }
        return pdfAcroForm.getPdfObject().get(PdfName.XFA);
    }

    private static byte[] serializeDocument(Node node) throws IOException {
        XmlDomWriter xmlDomWriter = new XmlDomWriter(false);
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream(16384);
        xmlDomWriter.setOutput(byteArrayOutputStream, null);
        xmlDomWriter.write(node);
        byteArrayOutputStream.close();
        return byteArrayOutputStream.toByteArray();
    }

    private void initXfaForm(PdfObject pdfObject) throws ParserConfigurationException, SAXException, IOException {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        if (pdfObject.isArray()) {
            PdfArray pdfArray = (PdfArray) pdfObject;
            for (int i = 1; i < pdfArray.size(); i += 2) {
                PdfObject pdfObject2 = pdfArray.get(i);
                if (pdfObject2 instanceof PdfStream) {
                    byteArrayOutputStream.write(((PdfStream) pdfObject2).getBytes());
                }
            }
        } else if (pdfObject instanceof PdfStream) {
            byteArrayOutputStream.write(((PdfStream) pdfObject).getBytes());
        }
        byteArrayOutputStream.close();
        initXfaForm(new ByteArrayInputStream(byteArrayOutputStream.toByteArray()));
    }

    private void initXfaForm(InputStream inputStream) throws SAXException, IOException {
        setDomDocument(XmlProcessorCreator.createSafeDocumentBuilder(true, false).parse(inputStream));
        this.xfaPresent = true;
    }

    private void extractNodes() {
        Map<String, Node> mapExtractXFANodes = extractXFANodes(this.domDocument);
        if (mapExtractXFANodes.containsKey(SDKConstants.PARAM_UPDATE_TEMPLATE)) {
            this.templateNode = mapExtractXFANodes.get(SDKConstants.PARAM_UPDATE_TEMPLATE);
        }
        if (mapExtractXFANodes.containsKey("datasets")) {
            Node node = mapExtractXFANodes.get("datasets");
            this.datasetsNode = node;
            Node nodeFindDataNode = findDataNode(node);
            if (nodeFindDataNode == null) {
                nodeFindDataNode = this.datasetsNode.getFirstChild();
            }
            this.datasetsSom = new Xml2SomDatasets(nodeFindDataNode);
        }
        if (this.datasetsNode == null) {
            createDatasetsNode(this.domDocument.getFirstChild());
        }
    }

    private void createDatasetsNode(Node node) {
        while (node != null && node.getChildNodes().getLength() == 0) {
            node = node.getNextSibling();
        }
        if (node != null) {
            Element elementCreateElement = node.getOwnerDocument().createElement("xfa:datasets");
            elementCreateElement.setAttribute("xmlns:xfa", XFA_DATA_SCHEMA);
            this.datasetsNode = elementCreateElement;
            node.appendChild(elementCreateElement);
        }
    }

    private Node getFirstElementNode(Node node) {
        NodeList childNodes = node.getChildNodes();
        for (int i = 0; i < childNodes.getLength(); i++) {
            if (childNodes.item(i).getNodeType() == 1) {
                return childNodes.item(i);
            }
        }
        return null;
    }

    private Node findDataNode(Node node) {
        NodeList childNodes = node.getChildNodes();
        for (int i = 0; i < childNodes.getLength(); i++) {
            if (childNodes.item(i).getNodeName().equals("xfa:data")) {
                return childNodes.item(i);
            }
        }
        return null;
    }
}
