package com.itextpdf.forms.xfdf;

import com.facebook.appevents.AppEventsConstants;
import com.google.common.base.Ascii;
import com.itextpdf.forms.PdfAcroForm;
import com.itextpdf.kernel.pdf.PdfArray;
import com.itextpdf.kernel.pdf.PdfDictionary;
import com.itextpdf.kernel.pdf.PdfDocument;
import com.itextpdf.kernel.pdf.PdfIndirectReference;
import com.itextpdf.kernel.pdf.PdfName;
import com.itextpdf.kernel.pdf.PdfNumber;
import com.itextpdf.kernel.pdf.PdfString;
import com.itextpdf.kernel.pdf.annot.PdfAnnotation;
import com.itextpdf.kernel.pdf.annot.PdfCircleAnnotation;
import com.itextpdf.kernel.pdf.annot.PdfFreeTextAnnotation;
import com.itextpdf.kernel.pdf.annot.PdfLineAnnotation;
import com.itextpdf.kernel.pdf.annot.PdfLinkAnnotation;
import com.itextpdf.kernel.pdf.annot.PdfMarkupAnnotation;
import com.itextpdf.kernel.pdf.annot.PdfPolyGeomAnnotation;
import com.itextpdf.kernel.pdf.annot.PdfPopupAnnotation;
import com.itextpdf.kernel.pdf.annot.PdfSquareAnnotation;
import com.itextpdf.kernel.pdf.annot.PdfStampAnnotation;
import com.itextpdf.kernel.pdf.annot.PdfTextAnnotation;
import com.itextpdf.kernel.pdf.annot.PdfTextMarkupAnnotation;
import com.itextpdf.p017io.logs.IoLogMessageConstant;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.List;
import java.util.StringTokenizer;
import javax.xml.parsers.ParserConfigurationException;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.w3c.dom.Element;
import org.w3c.dom.NamedNodeMap;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;
import org.xml.sax.SAXException;

/* JADX INFO: loaded from: classes6.dex */
public class XfdfObjectFactory {
    private static Logger logger = LoggerFactory.getLogger((Class<?>) XfdfObjectFactory.class);

    private static void updateXfdfAnnotation(AnnotObject annotObject, PdfAnnotation pdfAnnotation, int i) {
    }

    public XfdfObject createXfdfObject(PdfDocument pdfDocument, String str) {
        PdfAcroForm acroForm = PdfAcroForm.getAcroForm(pdfDocument, false);
        XfdfObject xfdfObject = new XfdfObject();
        FieldsObject fieldsObject = new FieldsObject();
        if (acroForm != null && acroForm.getFormFields() != null && !acroForm.getFormFields().isEmpty()) {
            for (String str2 : acroForm.getFormFields().keySet()) {
                StringTokenizer stringTokenizer = new StringTokenizer(str2, ".");
                ArrayList arrayList = new ArrayList();
                while (stringTokenizer.hasMoreTokens()) {
                    arrayList.add(stringTokenizer.nextToken());
                }
                FieldObject fieldObject = new FieldObject((String) arrayList.get(arrayList.size() - 1), acroForm.getField(str2).getValueAsString(), false);
                if (arrayList.size() > 1) {
                    FieldObject fieldObject2 = new FieldObject();
                    fieldObject2.setName((String) arrayList.get(arrayList.size() - 2));
                    fieldObject.setParent(fieldObject2);
                }
                fieldsObject.addField(fieldObject);
            }
        }
        xfdfObject.setFields(fieldsObject);
        xfdfObject.setIds(new IdsObject().setOriginal(XfdfObjectUtils.convertIdToHexString(pdfDocument.getOriginalDocumentId().getValue())).setModified(XfdfObjectUtils.convertIdToHexString(pdfDocument.getModifiedDocumentId().getValue())));
        xfdfObject.setF(new FObject(str));
        addAnnotations(pdfDocument, xfdfObject);
        return xfdfObject;
    }

    public XfdfObject createXfdfObject(InputStream inputStream) throws ParserConfigurationException, SAXException, IOException {
        XfdfObject xfdfObject = new XfdfObject();
        Element documentElement = XfdfFileUtils.createXfdfDocumentFromStream(inputStream).getDocumentElement();
        xfdfObject.setAttributes(readXfdfRootAttributes(documentElement));
        visitChildNodes(documentElement.getChildNodes(), xfdfObject);
        return xfdfObject;
    }

    private void visitFNode(Node node, XfdfObject xfdfObject) {
        if (node.getAttributes() != null) {
            Node namedItem = node.getAttributes().getNamedItem("href");
            if (namedItem != null) {
                xfdfObject.setF(new FObject(namedItem.getNodeValue()));
            } else {
                logger.info(XfdfConstants.EMPTY_F_LEMENT);
            }
        }
    }

    private void visitIdsNode(Node node, XfdfObject xfdfObject) {
        IdsObject idsObject = new IdsObject();
        if (node.getAttributes() != null) {
            Node namedItem = node.getAttributes().getNamedItem(XfdfConstants.ORIGINAL);
            if (namedItem != null) {
                idsObject.setOriginal(namedItem.getNodeValue());
            }
            Node namedItem2 = node.getAttributes().getNamedItem(XfdfConstants.MODIFIED);
            if (namedItem2 != null) {
                idsObject.setModified(namedItem2.getNodeValue());
            }
            xfdfObject.setIds(idsObject);
            return;
        }
        logger.info(XfdfConstants.EMPTY_IDS_ELEMENT);
    }

    private void visitElementNode(Node node, XfdfObject xfdfObject) {
        if ("fields".equalsIgnoreCase(node.getNodeName())) {
            FieldsObject fieldsObject = new FieldsObject();
            readFieldList(node, fieldsObject);
            xfdfObject.setFields(fieldsObject);
        }
        if (XfdfConstants.f2852F.equalsIgnoreCase(node.getNodeName())) {
            visitFNode(node, xfdfObject);
        }
        if (XfdfConstants.IDS.equalsIgnoreCase(node.getNodeName())) {
            visitIdsNode(node, xfdfObject);
        }
        if (XfdfConstants.ANNOTS.equalsIgnoreCase(node.getNodeName())) {
            AnnotsObject annotsObject = new AnnotsObject();
            readAnnotsList(node, annotsObject);
            xfdfObject.setAnnots(annotsObject);
        }
    }

    private void visitChildNodes(NodeList nodeList, XfdfObject xfdfObject) {
        for (int i = 0; i < nodeList.getLength(); i++) {
            Node nodeItem = nodeList.item(i);
            if (nodeItem.getNodeType() == 1) {
                visitElementNode(nodeItem, xfdfObject);
            }
        }
    }

    private static boolean isAnnotSupported(String str) {
        return "text".equalsIgnoreCase(str) || XfdfConstants.HIGHLIGHT.equalsIgnoreCase(str) || "underline".equalsIgnoreCase(str) || XfdfConstants.STRIKEOUT.equalsIgnoreCase(str) || XfdfConstants.SQUIGGLY.equalsIgnoreCase(str) || "circle".equalsIgnoreCase(str) || "square".equalsIgnoreCase(str) || "polyline".equalsIgnoreCase(str) || "polygon".equalsIgnoreCase(str) || "line".equalsIgnoreCase(str);
    }

    private void readAnnotsList(Node node, AnnotsObject annotsObject) {
        NodeList childNodes = node.getChildNodes();
        for (int i = 0; i < childNodes.getLength(); i++) {
            Node nodeItem = childNodes.item(i);
            if (nodeItem.getNodeType() == 1 && isAnnotationSubtype(nodeItem.getNodeName()) && isAnnotSupported(nodeItem.getNodeName())) {
                visitAnnotationNode(nodeItem, annotsObject);
            }
        }
    }

    private void visitAnnotationNode(Node node, AnnotsObject annotsObject) {
        AnnotObject annotObject = new AnnotObject();
        annotObject.setName(node.getNodeName());
        if (node.getAttributes() != null) {
            NamedNodeMap attributes = node.getAttributes();
            for (int i = 0; i < attributes.getLength(); i++) {
                addAnnotObjectAttribute(annotObject, attributes.item(i));
            }
            visitAnnotationInnerNodes(annotObject, node);
            annotsObject.addAnnot(annotObject);
        }
    }

    private void visitAnnotationInnerNodes(AnnotObject annotObject, Node node) {
        NodeList childNodes = node.getChildNodes();
        for (int i = 0; i < childNodes.getLength(); i++) {
            Node nodeItem = childNodes.item(i);
            if (nodeItem.getNodeType() == 1) {
                if (XfdfConstants.CONTENTS.equalsIgnoreCase(nodeItem.getNodeName())) {
                    visitContentsSubelement(nodeItem, annotObject);
                }
                if (XfdfConstants.CONTENTS_RICHTEXT.equalsIgnoreCase(nodeItem.getNodeName())) {
                    visitContentsRichTextSubelement(nodeItem, annotObject);
                }
                if (XfdfConstants.POPUP.equalsIgnoreCase(nodeItem.getNodeName())) {
                    visitPopupSubelement(nodeItem, annotObject);
                }
                if (XfdfConstants.VERTICES.equalsIgnoreCase(nodeItem.getNodeName())) {
                    visitVerticesSubelement(nodeItem, annotObject);
                }
            }
        }
    }

    private void visitPopupSubelement(Node node, AnnotObject annotObject) {
        AnnotObject annotObject2 = new AnnotObject();
        NamedNodeMap attributes = node.getAttributes();
        for (int i = 0; i < attributes.getLength(); i++) {
            addAnnotObjectAttribute(annotObject2, attributes.item(i));
        }
        annotObject.setPopup(annotObject2);
    }

    private void visitContentsSubelement(Node node, AnnotObject annotObject) {
        NodeList childNodes = node.getChildNodes();
        for (int i = 0; i < childNodes.getLength(); i++) {
            Node nodeItem = childNodes.item(i);
            if (nodeItem.getNodeType() == 3) {
                annotObject.setContents(new PdfString(nodeItem.getNodeValue()));
            }
        }
    }

    private void visitContentsRichTextSubelement(Node node, AnnotObject annotObject) {
        NodeList childNodes = node.getChildNodes();
        for (int i = 0; i < childNodes.getLength(); i++) {
            Node nodeItem = childNodes.item(i);
            if (nodeItem.getNodeType() == 3) {
                annotObject.setContentsRichText(new PdfString(nodeItem.getNodeValue()));
            }
        }
    }

    private void visitVerticesSubelement(Node node, AnnotObject annotObject) {
        NodeList childNodes = node.getChildNodes();
        for (int i = 0; i < childNodes.getLength(); i++) {
            Node nodeItem = childNodes.item(i);
            if (nodeItem.getNodeType() == 3) {
                annotObject.setVertices(nodeItem.getNodeValue());
            }
        }
    }

    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    private void addAnnotObjectAttribute(AnnotObject annotObject, Node node) {
        if (node != null) {
            String nodeName = node.getNodeName();
            nodeName.hashCode();
            byte b = -1;
            switch (nodeName.hashCode()) {
                case -1867885268:
                    if (nodeName.equals("subject")) {
                        b = 0;
                    }
                    break;
                case -1354750946:
                    if (nodeName.equals(XfdfConstants.COORDS)) {
                        b = 1;
                    }
                    break;
                case -1274028512:
                    if (nodeName.equals(XfdfConstants.IN_REPLY_TO)) {
                        b = 2;
                    }
                    break;
                case -1267206133:
                    if (nodeName.equals("opacity")) {
                        b = 3;
                    }
                    break;
                case -1266275441:
                    if (nodeName.equals(XfdfConstants.FRINGE)) {
                        b = 4;
                    }
                    break;
                case -433680060:
                    if (nodeName.equals(XfdfConstants.REPLY_TYPE)) {
                        b = 5;
                    }
                    break;
                case -214800072:
                    if (nodeName.equals(XfdfConstants.STATE_MODEL)) {
                        b = 6;
                    }
                    break;
                case 3076014:
                    if (nodeName.equals("date")) {
                        b = 7;
                    }
                    break;
                case 3226745:
                    if (nodeName.equals("icon")) {
                        b = 8;
                    }
                    break;
                case 3373707:
                    if (nodeName.equals("name")) {
                        b = 9;
                    }
                    break;
                case 3417674:
                    if (nodeName.equals(XfdfConstants.OPEN)) {
                        b = 10;
                    }
                    break;
                case 3433103:
                    if (nodeName.equals("page")) {
                        b = Ascii.f397VT;
                    }
                    break;
                case 3496420:
                    if (nodeName.equals("rect")) {
                        b = Ascii.f386FF;
                    }
                    break;
                case 94842723:
                    if (nodeName.equals("color")) {
                        b = Ascii.f384CR;
                    }
                    break;
                case 97513095:
                    if (nodeName.equals(XfdfConstants.FLAGS)) {
                        b = Ascii.f394SO;
                    }
                    break;
                case 109757585:
                    if (nodeName.equals("state")) {
                        b = Ascii.f393SI;
                    }
                    break;
                case 110371416:
                    if (nodeName.equals("title")) {
                        b = 16;
                    }
                    break;
                case 1586485005:
                    if (nodeName.equals(XfdfConstants.CREATION_DATE)) {
                        b = 17;
                    }
                    break;
            }
            switch (b) {
                case 0:
                case 1:
                case 2:
                case 3:
                case 4:
                case 5:
                case 6:
                case 7:
                case 8:
                case 9:
                case 10:
                case 12:
                case 13:
                case 14:
                case 15:
                case 16:
                case 17:
                    annotObject.addAttribute(new AttributeObject(nodeName, node.getNodeValue()));
                    break;
                case 11:
                    annotObject.addFdfAttributes(Integer.parseInt(node.getNodeValue()));
                    break;
                default:
                    logger.warn(IoLogMessageConstant.XFDF_UNSUPPORTED_ANNOTATION_ATTRIBUTE);
                    break;
            }
        }
    }

    private boolean isAnnotationSubtype(String str) {
        return "text".equalsIgnoreCase(str) || XfdfConstants.HIGHLIGHT.equalsIgnoreCase(str) || "underline".equalsIgnoreCase(str) || XfdfConstants.STRIKEOUT.equalsIgnoreCase(str) || XfdfConstants.SQUIGGLY.equalsIgnoreCase(str) || "line".equalsIgnoreCase(str) || "circle".equalsIgnoreCase(str) || "square".equalsIgnoreCase(str) || XfdfConstants.CARET.equalsIgnoreCase(str) || "polygon".equalsIgnoreCase(str) || "polyline".equalsIgnoreCase(str) || XfdfConstants.STAMP.equalsIgnoreCase(str) || XfdfConstants.INK.equalsIgnoreCase(str) || XfdfConstants.FREETEXT.equalsIgnoreCase(str) || XfdfConstants.FILEATTACHMENT.equalsIgnoreCase(str) || XfdfConstants.SOUND.equalsIgnoreCase(str) || "link".equalsIgnoreCase(str) || XfdfConstants.REDACT.equalsIgnoreCase(str) || XfdfConstants.PROJECTION.equalsIgnoreCase(str);
    }

    private void readFieldList(Node node, FieldsObject fieldsObject) {
        NodeList childNodes = node.getChildNodes();
        for (int i = 0; i < childNodes.getLength(); i++) {
            Node nodeItem = childNodes.item(i);
            if (nodeItem.getNodeType() == 1 && XfdfConstants.FIELD.equalsIgnoreCase(nodeItem.getNodeName())) {
                visitInnerFields(new FieldObject(), nodeItem, fieldsObject);
            }
        }
    }

    private void visitFieldElementNode(Node node, FieldObject fieldObject, FieldsObject fieldsObject) {
        if ("value".equalsIgnoreCase(node.getNodeName())) {
            Node firstChild = node.getFirstChild();
            if (firstChild != null) {
                fieldObject.setValue(firstChild.getTextContent());
                return;
            } else {
                logger.info(XfdfConstants.EMPTY_FIELD_VALUE_ELEMENT);
                return;
            }
        }
        if (XfdfConstants.FIELD.equalsIgnoreCase(node.getNodeName())) {
            FieldObject fieldObject2 = new FieldObject();
            fieldObject2.setParent(fieldObject);
            fieldObject2.setName(fieldObject.getName() + "." + node.getAttributes().item(0).getNodeValue());
            if (node.getChildNodes() != null) {
                visitInnerFields(fieldObject2, node, fieldsObject);
            }
            fieldsObject.addField(fieldObject2);
        }
    }

    private void visitInnerFields(FieldObject fieldObject, Node node, FieldsObject fieldsObject) {
        if (node.getAttributes().getLength() != 0) {
            if (fieldObject.getName() == null) {
                fieldObject.setName(node.getAttributes().item(0).getNodeValue());
            }
        } else {
            logger.info(XfdfConstants.EMPTY_FIELD_NAME_ELEMENT);
        }
        NodeList childNodes = node.getChildNodes();
        for (int i = 0; i < childNodes.getLength(); i++) {
            Node nodeItem = childNodes.item(i);
            if (nodeItem.getNodeType() == 1) {
                visitFieldElementNode(nodeItem, fieldObject, fieldsObject);
            }
        }
        fieldsObject.addField(fieldObject);
    }

    private List<AttributeObject> readXfdfRootAttributes(Element element) {
        NamedNodeMap attributes = element.getAttributes();
        int length = attributes.getLength();
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < length; i++) {
            Node nodeItem = attributes.item(i);
            arrayList.add(new AttributeObject(nodeItem.getNodeName(), nodeItem.getNodeValue()));
        }
        return arrayList;
    }

    private static void addPopup(PdfAnnotation pdfAnnotation, AnnotsObject annotsObject, int i) {
        PdfPopupAnnotation pdfPopupAnnotation = (PdfPopupAnnotation) pdfAnnotation;
        if (pdfPopupAnnotation.getParentObject() != null) {
            PdfIndirectReference indirectReference = pdfPopupAnnotation.getParent().getPdfObject().getIndirectReference();
            boolean z = false;
            for (AnnotObject annotObject : annotsObject.getAnnotsList()) {
                if (indirectReference.equals(annotObject.getRef())) {
                    annotObject.setHasPopup(true);
                    annotObject.setPopup(createXfdfAnnotation(pdfAnnotation, i));
                    z = true;
                }
            }
            if (z) {
                return;
            }
            AnnotObject annotObject2 = new AnnotObject();
            annotObject2.setRef(indirectReference);
            annotObject2.addFdfAttributes(i);
            annotObject2.setHasPopup(true);
            annotObject2.setPopup(createXfdfAnnotation(pdfAnnotation, i));
            annotsObject.addAnnot(annotObject2);
            return;
        }
        annotsObject.addAnnot(createXfdfAnnotation(pdfAnnotation, i));
    }

    private static void addAnnotation(PdfAnnotation pdfAnnotation, AnnotsObject annotsObject, int i) {
        boolean z = false;
        for (AnnotObject annotObject : annotsObject.getAnnotsList()) {
            if (pdfAnnotation.getPdfObject().getIndirectReference().equals(annotObject.getRef())) {
                updateXfdfAnnotation(annotObject, pdfAnnotation, i);
                z = true;
            }
        }
        if (z) {
            return;
        }
        annotsObject.addAnnot(createXfdfAnnotation(pdfAnnotation, i));
    }

    private static void addAnnotations(PdfDocument pdfDocument, XfdfObject xfdfObject) {
        AnnotsObject annotsObject = new AnnotsObject();
        int numberOfPages = pdfDocument.getNumberOfPages();
        for (int i = 1; i <= numberOfPages; i++) {
            for (PdfAnnotation pdfAnnotation : pdfDocument.getPage(i).getAnnotations()) {
                if (pdfAnnotation.getSubtype() == PdfName.Popup) {
                    addPopup(pdfAnnotation, annotsObject, i);
                } else {
                    addAnnotation(pdfAnnotation, annotsObject, i);
                }
            }
        }
        xfdfObject.setAnnots(annotsObject);
    }

    private static void addCommonAnnotationAttributes(AnnotObject annotObject, PdfAnnotation pdfAnnotation) {
        annotObject.setName(pdfAnnotation.getSubtype().getValue().toLowerCase());
        if (pdfAnnotation.getColorObject() != null) {
            annotObject.addAttribute(new AttributeObject("color", XfdfObjectUtils.convertColorToString(pdfAnnotation.getColorObject().toFloatArray())));
        }
        annotObject.addAttribute("date", pdfAnnotation.getDate());
        String strConvertFlagsToString = XfdfObjectUtils.convertFlagsToString(pdfAnnotation);
        if (strConvertFlagsToString != null) {
            annotObject.addAttribute(new AttributeObject(XfdfConstants.FLAGS, strConvertFlagsToString));
        }
        annotObject.addAttribute("name", pdfAnnotation.getName());
        annotObject.addAttribute("rect", pdfAnnotation.getRectangle().toRectangle());
        annotObject.addAttribute("title", pdfAnnotation.getTitle());
    }

    private static void addMarkupAnnotationAttributes(AnnotObject annotObject, PdfMarkupAnnotation pdfMarkupAnnotation) {
        annotObject.addAttribute(XfdfConstants.CREATION_DATE, pdfMarkupAnnotation.getCreationDate());
        annotObject.addAttribute("opacity", pdfMarkupAnnotation.getOpacity());
        annotObject.addAttribute("subject", pdfMarkupAnnotation.getSubject());
    }

    private static void addBorderStyleAttributes(AnnotObject annotObject, PdfNumber pdfNumber, PdfString pdfString, PdfString pdfString2) {
        annotObject.addAttribute("width", pdfNumber);
        annotObject.addAttribute(XfdfConstants.DASHES, pdfString);
        annotObject.addAttribute("style", pdfString2);
    }

    private static void createTextMarkupAnnotation(PdfAnnotation pdfAnnotation, AnnotObject annotObject, int i) {
        PdfTextMarkupAnnotation pdfTextMarkupAnnotation = (PdfTextMarkupAnnotation) pdfAnnotation;
        annotObject.addAttribute(new AttributeObject(XfdfConstants.COORDS, XfdfObjectUtils.convertQuadPointsToCoordsString(pdfTextMarkupAnnotation.getQuadPoints().toFloatArray())));
        if (pdfTextMarkupAnnotation.getContents() != null) {
            annotObject.setContents(pdfTextMarkupAnnotation.getContents());
        }
        if (pdfTextMarkupAnnotation.getPopup() != null) {
            annotObject.setPopup(convertPdfPopupToAnnotObject(pdfTextMarkupAnnotation.getPopup(), i));
        }
    }

    private static void createTextAnnotation(PdfAnnotation pdfAnnotation, AnnotObject annotObject, int i) {
        PdfTextAnnotation pdfTextAnnotation = (PdfTextAnnotation) pdfAnnotation;
        annotObject.addAttribute("icon", pdfTextAnnotation.getIconName());
        annotObject.addAttribute("state", pdfTextAnnotation.getState());
        annotObject.addAttribute(XfdfConstants.STATE_MODEL, pdfTextAnnotation.getStateModel());
        if (pdfTextAnnotation.getReplyType() != null) {
            annotObject.addAttribute(new AttributeObject(XfdfConstants.IN_REPLY_TO, pdfTextAnnotation.getInReplyTo().getName().getValue()));
            annotObject.addAttribute(new AttributeObject(XfdfConstants.REPLY_TYPE, pdfTextAnnotation.getReplyType().getValue()));
        }
        if (pdfTextAnnotation.getContents() != null) {
            annotObject.setContents(pdfTextAnnotation.getContents());
        }
        if (pdfTextAnnotation.getPopup() != null) {
            annotObject.setPopup(convertPdfPopupToAnnotObject(pdfTextAnnotation.getPopup(), i));
        }
    }

    private static void createCircleAnnotation(PdfAnnotation pdfAnnotation, AnnotObject annotObject, int i) {
        PdfCircleAnnotation pdfCircleAnnotation = (PdfCircleAnnotation) pdfAnnotation;
        PdfDictionary borderStyle = pdfCircleAnnotation.getBorderStyle();
        if (borderStyle != null) {
            addBorderStyleAttributes(annotObject, borderStyle.getAsNumber(PdfName.f3089W), borderStyle.getAsString(PdfName.Dashed), borderStyle.getAsString(PdfName.Style));
        }
        if (pdfCircleAnnotation.getBorderEffect() != null) {
            annotObject.addAttribute("style", pdfCircleAnnotation.getBorderEffect().getAsString(PdfName.Style));
        }
        if (pdfCircleAnnotation.getInteriorColor() != null && pdfCircleAnnotation.getInteriorColor().getColorValue() != null) {
            annotObject.addAttribute(new AttributeObject(XfdfConstants.INTERIOR_COLOR, XfdfObjectUtils.convertColorToString(pdfCircleAnnotation.getInteriorColor().getColorValue())));
        }
        if (pdfCircleAnnotation.getRectangleDifferences() != null) {
            annotObject.addAttribute(new AttributeObject(XfdfConstants.FRINGE, XfdfObjectUtils.convertFringeToString(pdfCircleAnnotation.getRectangleDifferences().toFloatArray())));
        }
        annotObject.setContents(pdfAnnotation.getContents());
        if (pdfCircleAnnotation.getPopup() != null) {
            annotObject.setPopup(convertPdfPopupToAnnotObject(pdfCircleAnnotation.getPopup(), i));
        }
    }

    private static void createSquareAnnotation(PdfAnnotation pdfAnnotation, AnnotObject annotObject, int i) {
        PdfSquareAnnotation pdfSquareAnnotation = (PdfSquareAnnotation) pdfAnnotation;
        PdfDictionary borderStyle = pdfSquareAnnotation.getBorderStyle();
        if (borderStyle != null) {
            addBorderStyleAttributes(annotObject, borderStyle.getAsNumber(PdfName.f3089W), borderStyle.getAsString(PdfName.Dashed), borderStyle.getAsString(PdfName.Style));
        }
        if (pdfSquareAnnotation.getBorderEffect() != null) {
            annotObject.addAttribute("style", pdfSquareAnnotation.getBorderEffect().getAsString(PdfName.Style));
        }
        if (pdfSquareAnnotation.getInteriorColor() != null && pdfSquareAnnotation.getInteriorColor().getColorValue() != null) {
            annotObject.addAttribute(new AttributeObject(XfdfConstants.INTERIOR_COLOR, XfdfObjectUtils.convertColorToString(pdfSquareAnnotation.getInteriorColor().getColorValue())));
        }
        if (pdfSquareAnnotation.getRectangleDifferences() != null) {
            annotObject.addAttribute(new AttributeObject(XfdfConstants.FRINGE, XfdfObjectUtils.convertFringeToString(pdfSquareAnnotation.getRectangleDifferences().toFloatArray())));
        }
        annotObject.setContents(pdfAnnotation.getContents());
        if (pdfSquareAnnotation.getPopup() != null) {
            annotObject.setPopup(convertPdfPopupToAnnotObject(pdfSquareAnnotation.getPopup(), i));
        }
    }

    private static void createStampAnnotation(PdfAnnotation pdfAnnotation, AnnotObject annotObject, int i) {
        PdfStampAnnotation pdfStampAnnotation = (PdfStampAnnotation) pdfAnnotation;
        annotObject.addAttribute("icon", pdfStampAnnotation.getIconName());
        if (pdfStampAnnotation.getContents() != null) {
            annotObject.setContents(pdfStampAnnotation.getContents());
        }
        if (pdfStampAnnotation.getPopup() != null) {
            annotObject.setPopup(convertPdfPopupToAnnotObject(pdfStampAnnotation.getPopup(), i));
        }
        if (pdfStampAnnotation.getAppearanceDictionary() != null) {
            if (pdfAnnotation.getAppearanceObject(PdfName.f3037N) != null) {
                annotObject.setAppearance(pdfStampAnnotation.getAppearanceDictionary().get(PdfName.f3037N).toString());
            } else if (pdfAnnotation.getAppearanceObject(PdfName.f3056R) != null) {
                annotObject.setAppearance(pdfStampAnnotation.getAppearanceDictionary().get(PdfName.f3056R).toString());
            } else if (pdfAnnotation.getAppearanceObject(PdfName.f2992D) != null) {
                annotObject.setAppearance(pdfStampAnnotation.getAppearanceDictionary().get(PdfName.f2992D).toString());
            }
        }
    }

    private static void createFreeTextAnnotation(PdfAnnotation pdfAnnotation, AnnotObject annotObject) {
        PdfFreeTextAnnotation pdfFreeTextAnnotation = (PdfFreeTextAnnotation) pdfAnnotation;
        PdfDictionary borderStyle = pdfFreeTextAnnotation.getBorderStyle();
        if (borderStyle != null) {
            addBorderStyleAttributes(annotObject, borderStyle.getAsNumber(PdfName.f3089W), borderStyle.getAsString(PdfName.Dashed), borderStyle.getAsString(PdfName.Style));
        }
        annotObject.addAttribute(new AttributeObject(XfdfConstants.JUSTIFICATION, String.valueOf(pdfFreeTextAnnotation.getJustification())));
        if (pdfFreeTextAnnotation.getIntent() != null) {
            annotObject.addAttribute(new AttributeObject("intent", pdfFreeTextAnnotation.getIntent().getValue()));
        }
        if (pdfFreeTextAnnotation.getContents() != null) {
            annotObject.setContents(pdfFreeTextAnnotation.getContents());
        }
        if (pdfFreeTextAnnotation.getDefaultAppearance() != null) {
            annotObject.setDefaultAppearance(pdfFreeTextAnnotation.getDefaultAppearance().getValue());
        }
        if (pdfFreeTextAnnotation.getDefaultStyleString() != null) {
            annotObject.setDefaultStyle(pdfFreeTextAnnotation.getDefaultStyleString().getValue());
        }
    }

    private static void createLineAnnotation(PdfAnnotation pdfAnnotation, AnnotObject annotObject, int i) {
        PdfLineAnnotation pdfLineAnnotation = (PdfLineAnnotation) pdfAnnotation;
        PdfArray line = pdfLineAnnotation.getLine();
        if (line != null) {
            annotObject.addAttribute(new AttributeObject("start", XfdfObjectUtils.convertLineStartToString(line.toFloatArray())));
            annotObject.addAttribute(new AttributeObject("end", XfdfObjectUtils.convertLineEndToString(line.toFloatArray())));
        }
        if (pdfLineAnnotation.getLineEndingStyles() != null) {
            if (pdfLineAnnotation.getLineEndingStyles().get(0) != null) {
                annotObject.addAttribute(new AttributeObject(XfdfConstants.HEAD, pdfLineAnnotation.getLineEndingStyles().get(0).toString().substring(1)));
            }
            if (pdfLineAnnotation.getLineEndingStyles().get(1) != null) {
                annotObject.addAttribute(new AttributeObject(XfdfConstants.TAIL, pdfLineAnnotation.getLineEndingStyles().get(1).toString().substring(1)));
            }
        }
        if (pdfLineAnnotation.getInteriorColor() != null) {
            annotObject.addAttribute(new AttributeObject(XfdfConstants.INTERIOR_COLOR, XfdfObjectUtils.convertColorToString(pdfLineAnnotation.getInteriorColor())));
        }
        annotObject.addAttribute(XfdfConstants.LEADER_EXTENDED, pdfLineAnnotation.getLeaderLineExtension());
        annotObject.addAttribute(XfdfConstants.LEADER_LENGTH, pdfLineAnnotation.getLeaderLineLength());
        annotObject.addAttribute("caption", pdfLineAnnotation.getContentsAsCaption());
        annotObject.addAttribute("intent", pdfLineAnnotation.getIntent());
        annotObject.addAttribute(XfdfConstants.LEADER_OFFSET, pdfLineAnnotation.getLeaderLineOffset());
        annotObject.addAttribute(XfdfConstants.CAPTION_STYLE, pdfLineAnnotation.getCaptionPosition());
        if (pdfLineAnnotation.getCaptionOffset() != null) {
            annotObject.addAttribute(XfdfConstants.CAPTION_OFFSET_H, pdfLineAnnotation.getCaptionOffset().get(0));
            annotObject.addAttribute(XfdfConstants.CAPTION_OFFSET_V, pdfLineAnnotation.getCaptionOffset().get(1));
        } else {
            annotObject.addAttribute(new AttributeObject(XfdfConstants.CAPTION_OFFSET_H, AppEventsConstants.EVENT_PARAM_VALUE_NO));
            annotObject.addAttribute(new AttributeObject(XfdfConstants.CAPTION_OFFSET_V, AppEventsConstants.EVENT_PARAM_VALUE_NO));
        }
        PdfDictionary borderStyle = pdfLineAnnotation.getBorderStyle();
        if (borderStyle != null) {
            addBorderStyleAttributes(annotObject, borderStyle.getAsNumber(PdfName.f3089W), borderStyle.getAsString(PdfName.Dashed), borderStyle.getAsString(PdfName.Style));
        }
        annotObject.setContents(pdfAnnotation.getContents());
        if (pdfLineAnnotation.getPopup() != null) {
            annotObject.setPopup(convertPdfPopupToAnnotObject(pdfLineAnnotation.getPopup(), i));
        }
    }

    private static void createLinkAnnotation(PdfAnnotation pdfAnnotation, AnnotObject annotObject) {
        PdfLinkAnnotation pdfLinkAnnotation = (PdfLinkAnnotation) pdfAnnotation;
        if (pdfLinkAnnotation.getContents() != null) {
            annotObject.setContents(pdfLinkAnnotation.getContents());
        }
        PdfDictionary action = pdfLinkAnnotation.getAction();
        if (pdfLinkAnnotation.getAction() != null) {
            PdfName asName = action.getAsName(PdfName.f3065S);
            ActionObject actionObject = new ActionObject(asName);
            if (PdfName.URI.equals(asName)) {
                actionObject.setUri(action.getAsString(PdfName.URI));
                if (action.get(PdfName.IsMap) != null) {
                    actionObject.setMap(action.getAsBool(PdfName.IsMap).booleanValue());
                }
            }
            annotObject.setAction(actionObject);
        }
        PdfArray pdfArray = (PdfArray) pdfLinkAnnotation.getDestinationObject();
        if (pdfArray != null) {
            createDestElement(pdfArray, annotObject);
        }
        PdfArray border = pdfLinkAnnotation.getBorder();
        if (border != null) {
            annotObject.setBorderStyleAlt(new BorderStyleAltObject(border.getAsNumber(0).floatValue(), border.getAsNumber(1).floatValue(), border.getAsNumber(2).floatValue()));
        }
    }

    private static void createDestElement(PdfArray pdfArray, AnnotObject annotObject) {
        DestObject destObject = new DestObject();
        PdfName asName = pdfArray.getAsName(1);
        if (PdfName.XYZ.equals(asName)) {
            FitObject fitObject = new FitObject(pdfArray.get(0));
            fitObject.setLeft(pdfArray.getAsNumber(2).floatValue()).setTop(pdfArray.getAsNumber(3).floatValue()).setZoom(pdfArray.getAsNumber(4).floatValue());
            destObject.setXyz(fitObject);
        } else if (PdfName.Fit.equals(asName)) {
            destObject.setFit(new FitObject(pdfArray.get(0)));
        } else if (PdfName.FitB.equals(asName)) {
            destObject.setFitB(new FitObject(pdfArray.get(0)));
        } else if (PdfName.FitR.equals(asName)) {
            FitObject fitObject2 = new FitObject(pdfArray.get(0));
            fitObject2.setLeft(pdfArray.getAsNumber(2).floatValue());
            fitObject2.setBottom(pdfArray.getAsNumber(3).floatValue());
            fitObject2.setRight(pdfArray.getAsNumber(4).floatValue());
            fitObject2.setTop(pdfArray.getAsNumber(5).floatValue());
            destObject.setFitR(fitObject2);
        } else if (PdfName.FitH.equals(asName)) {
            FitObject fitObject3 = new FitObject(pdfArray.get(0));
            fitObject3.setTop(pdfArray.getAsNumber(2).floatValue());
            destObject.setFitH(fitObject3);
        } else if (PdfName.FitBH.equals(asName)) {
            FitObject fitObject4 = new FitObject(pdfArray.get(0));
            fitObject4.setTop(pdfArray.getAsNumber(2).floatValue());
            destObject.setFitBH(fitObject4);
        } else if (PdfName.FitBV.equals(asName)) {
            FitObject fitObject5 = new FitObject(pdfArray.get(0));
            fitObject5.setLeft(pdfArray.getAsNumber(2).floatValue());
            destObject.setFitBV(fitObject5);
        } else if (PdfName.FitV.equals(asName)) {
            FitObject fitObject6 = new FitObject(pdfArray.get(0));
            fitObject6.setLeft(pdfArray.getAsNumber(2).floatValue());
            destObject.setFitV(fitObject6);
        }
        annotObject.setDestination(destObject);
    }

    private static void createPolyGeomAnnotation(PdfAnnotation pdfAnnotation, AnnotObject annotObject, int i) {
        PdfPolyGeomAnnotation pdfPolyGeomAnnotation = (PdfPolyGeomAnnotation) pdfAnnotation;
        PdfDictionary borderStyle = pdfPolyGeomAnnotation.getBorderStyle();
        if (borderStyle != null) {
            addBorderStyleAttributes(annotObject, borderStyle.getAsNumber(PdfName.f3089W), borderStyle.getAsString(PdfName.Dashed), borderStyle.getAsString(PdfName.Style));
        }
        if (pdfPolyGeomAnnotation.getBorderEffect() != null) {
            annotObject.addAttribute("style", pdfPolyGeomAnnotation.getBorderEffect().getAsString(PdfName.Style));
        }
        if (pdfPolyGeomAnnotation.getInteriorColor() != null) {
            annotObject.addAttribute(new AttributeObject(XfdfConstants.INTERIOR_COLOR, XfdfObjectUtils.convertColorToString(pdfPolyGeomAnnotation.getInteriorColor())));
        }
        if (pdfPolyGeomAnnotation.getIntent() != null) {
            annotObject.addAttribute(new AttributeObject("intent", pdfPolyGeomAnnotation.getIntent().getValue()));
        }
        if (pdfPolyGeomAnnotation.getLineEndingStyles() != null) {
            if (pdfPolyGeomAnnotation.getLineEndingStyles().get(0) != null) {
                annotObject.addAttribute(new AttributeObject(XfdfConstants.HEAD, pdfPolyGeomAnnotation.getLineEndingStyles().get(0).toString().substring(1)));
            }
            if (pdfPolyGeomAnnotation.getLineEndingStyles().get(1) != null) {
                annotObject.addAttribute(new AttributeObject(XfdfConstants.TAIL, pdfPolyGeomAnnotation.getLineEndingStyles().get(1).toString().substring(1)));
            }
        }
        annotObject.setVertices(XfdfObjectUtils.convertVerticesToString(pdfPolyGeomAnnotation.getVertices().toFloatArray()));
        annotObject.setContents(pdfAnnotation.getContents());
        if (pdfPolyGeomAnnotation.getPopup() != null) {
            annotObject.setPopup(convertPdfPopupToAnnotObject(pdfPolyGeomAnnotation.getPopup(), i));
        }
    }

    private static AnnotObject createXfdfAnnotation(PdfAnnotation pdfAnnotation, int i) {
        AnnotObject annotObject = new AnnotObject();
        annotObject.setRef(pdfAnnotation.getPdfObject().getIndirectReference());
        annotObject.addFdfAttributes(i);
        if (pdfAnnotation instanceof PdfTextMarkupAnnotation) {
            createTextMarkupAnnotation(pdfAnnotation, annotObject, i);
        }
        if (pdfAnnotation instanceof PdfTextAnnotation) {
            createTextAnnotation(pdfAnnotation, annotObject, i);
        }
        if (pdfAnnotation instanceof PdfPopupAnnotation) {
            annotObject = convertPdfPopupToAnnotObject((PdfPopupAnnotation) pdfAnnotation, i);
        }
        if (pdfAnnotation instanceof PdfCircleAnnotation) {
            createCircleAnnotation(pdfAnnotation, annotObject, i);
        }
        if (pdfAnnotation instanceof PdfSquareAnnotation) {
            createSquareAnnotation(pdfAnnotation, annotObject, i);
        }
        if (pdfAnnotation instanceof PdfStampAnnotation) {
            createStampAnnotation(pdfAnnotation, annotObject, i);
        }
        if (pdfAnnotation instanceof PdfFreeTextAnnotation) {
            createFreeTextAnnotation(pdfAnnotation, annotObject);
        }
        if (pdfAnnotation instanceof PdfLineAnnotation) {
            createLineAnnotation(pdfAnnotation, annotObject, i);
        }
        if (pdfAnnotation instanceof PdfPolyGeomAnnotation) {
            createPolyGeomAnnotation(pdfAnnotation, annotObject, i);
        }
        if (pdfAnnotation instanceof PdfLinkAnnotation) {
            createLinkAnnotation(pdfAnnotation, annotObject);
        }
        if (isSupportedAnnotation(pdfAnnotation)) {
            addCommonAnnotationAttributes(annotObject, pdfAnnotation);
            if (pdfAnnotation instanceof PdfMarkupAnnotation) {
                addMarkupAnnotationAttributes(annotObject, (PdfMarkupAnnotation) pdfAnnotation);
            }
        }
        return annotObject;
    }

    private static AnnotObject convertPdfPopupToAnnotObject(PdfPopupAnnotation pdfPopupAnnotation, int i) {
        AnnotObject annotObject = new AnnotObject();
        annotObject.addFdfAttributes(i);
        annotObject.setName(XfdfConstants.POPUP);
        annotObject.setRef(pdfPopupAnnotation.getPdfObject().getIndirectReference());
        annotObject.addAttribute(XfdfConstants.OPEN, pdfPopupAnnotation.getOpen());
        return annotObject;
    }

    private static boolean isSupportedAnnotation(PdfAnnotation pdfAnnotation) {
        return (pdfAnnotation instanceof PdfTextMarkupAnnotation) || (pdfAnnotation instanceof PdfTextAnnotation) || (pdfAnnotation instanceof PdfCircleAnnotation) || (pdfAnnotation instanceof PdfSquareAnnotation) || (pdfAnnotation instanceof PdfStampAnnotation) || (pdfAnnotation instanceof PdfFreeTextAnnotation) || (pdfAnnotation instanceof PdfLineAnnotation) || (pdfAnnotation instanceof PdfPolyGeomAnnotation) || (pdfAnnotation instanceof PdfLinkAnnotation) || (pdfAnnotation instanceof PdfPopupAnnotation);
    }
}
