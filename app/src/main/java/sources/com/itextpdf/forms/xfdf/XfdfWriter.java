package com.itextpdf.forms.xfdf;

import com.facebook.internal.ServerProtocol;
import com.itextpdf.kernel.pdf.PdfName;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import javax.xml.parsers.ParserConfigurationException;
import javax.xml.transform.TransformerException;
import org.shadow.apache.commons.lang3.CharUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.w3c.dom.Document;
import org.w3c.dom.Element;

/* JADX INFO: loaded from: classes6.dex */
class XfdfWriter {
    private static Logger logger = LoggerFactory.getLogger((Class<?>) XfdfWriter.class);
    private OutputStream outputStream;

    XfdfWriter(OutputStream outputStream) {
        this.outputStream = outputStream;
    }

    void write(XfdfObject xfdfObject) throws TransformerException, ParserConfigurationException {
        writeDom(xfdfObject);
    }

    static void addField(FieldObject fieldObject, Element element, Document document, List<FieldObject> list) {
        List<FieldObject> listFindChildrenFields = findChildrenFields(fieldObject, list);
        Element elementCreateElement = document.createElement(XfdfConstants.FIELD);
        elementCreateElement.setAttribute("name", fieldObject.getName());
        if (!listFindChildrenFields.isEmpty()) {
            Iterator<FieldObject> it = listFindChildrenFields.iterator();
            while (it.hasNext()) {
                addField(it.next(), elementCreateElement, document, list);
            }
        } else if (fieldObject.getValue() != null && !fieldObject.getValue().isEmpty()) {
            Element elementCreateElement2 = document.createElement("value");
            elementCreateElement2.setTextContent(fieldObject.getValue());
            elementCreateElement.appendChild(elementCreateElement2);
        } else {
            logger.info(XfdfConstants.EMPTY_FIELD_VALUE_ELEMENT);
        }
        element.appendChild(elementCreateElement);
    }

    private void writeDom(XfdfObject xfdfObject) throws TransformerException, ParserConfigurationException {
        Document documentCreateNewXfdfDocument = XfdfFileUtils.createNewXfdfDocument();
        Element elementCreateElement = documentCreateNewXfdfDocument.createElement("xfdf");
        documentCreateNewXfdfDocument.appendChild(elementCreateElement);
        if (xfdfObject.getFields() != null && xfdfObject.getFields().getFieldList() != null && !xfdfObject.getFields().getFieldList().isEmpty()) {
            Element elementCreateElement2 = documentCreateNewXfdfDocument.createElement("fields");
            elementCreateElement.appendChild(elementCreateElement2);
            List<FieldObject> fieldList = xfdfObject.getFields().getFieldList();
            for (FieldObject fieldObject : fieldList) {
                if (fieldObject.getParent() == null) {
                    addField(fieldObject, elementCreateElement2, documentCreateNewXfdfDocument, fieldList);
                }
            }
        }
        if (xfdfObject.getAnnots() != null && xfdfObject.getAnnots().getAnnotsList() != null && !xfdfObject.getAnnots().getAnnotsList().isEmpty()) {
            Element elementCreateElement3 = documentCreateNewXfdfDocument.createElement(XfdfConstants.ANNOTS);
            elementCreateElement.appendChild(elementCreateElement3);
            Iterator<AnnotObject> it = xfdfObject.getAnnots().getAnnotsList().iterator();
            while (it.hasNext()) {
                addAnnot(it.next(), elementCreateElement3, documentCreateNewXfdfDocument);
            }
        }
        if (xfdfObject.getF() != null) {
            Element elementCreateElement4 = documentCreateNewXfdfDocument.createElement(XfdfConstants.f2852F);
            addFAttributes(xfdfObject.getF(), elementCreateElement4);
            elementCreateElement.appendChild(elementCreateElement4);
        }
        if (xfdfObject.getIds() != null) {
            Element elementCreateElement5 = documentCreateNewXfdfDocument.createElement(XfdfConstants.IDS);
            addIdsAttributes(xfdfObject.getIds(), elementCreateElement5);
            elementCreateElement.appendChild(elementCreateElement5);
        }
        XfdfFileUtils.saveXfdfDocumentToFile(documentCreateNewXfdfDocument, this.outputStream);
    }

    private static void addIdsAttributes(IdsObject idsObject, Element element) {
        if (idsObject.getOriginal() != null) {
            element.setAttribute(XfdfConstants.ORIGINAL, idsObject.getOriginal());
        }
        if (idsObject.getModified() != null) {
            element.setAttribute(XfdfConstants.MODIFIED, idsObject.getModified());
        }
    }

    private static void addFAttributes(FObject fObject, Element element) {
        if (fObject.getHref() != null) {
            element.setAttribute("href", fObject.getHref());
        }
    }

    private static List<FieldObject> findChildrenFields(FieldObject fieldObject, List<FieldObject> list) {
        ArrayList arrayList = new ArrayList();
        for (FieldObject fieldObject2 : list) {
            if (fieldObject2.getParent() != null && fieldObject2.getParent().getName().equalsIgnoreCase(fieldObject.getName())) {
                arrayList.add(fieldObject2);
            }
        }
        return arrayList;
    }

    private static void addAnnot(AnnotObject annotObject, Element element, Document document) {
        if (annotObject.getName() == null) {
            return;
        }
        Element elementCreateElement = document.createElement(annotObject.getName());
        for (AttributeObject attributeObject : annotObject.getAttributes()) {
            elementCreateElement.setAttribute(attributeObject.getName(), attributeObject.getValue());
        }
        if (annotObject.getPopup() != null) {
            addPopup(annotObject.getPopup(), document.createElement(XfdfConstants.POPUP), elementCreateElement);
        }
        if (annotObject.getContents() != null) {
            Element elementCreateElement2 = document.createElement(XfdfConstants.CONTENTS);
            elementCreateElement2.setTextContent(annotObject.getContents().toString().replace(CharUtils.f4765CR, '\n'));
            elementCreateElement.appendChild(elementCreateElement2);
        }
        if (annotObject.getAppearance() != null) {
            Element elementCreateElement3 = document.createElement(XfdfConstants.APPEARANCE);
            elementCreateElement3.setTextContent(annotObject.getAppearance());
            elementCreateElement.appendChild(elementCreateElement3);
        }
        if ("link".equalsIgnoreCase(annotObject.getName())) {
            if (annotObject.getDestination() != null) {
                addDest(annotObject.getDestination(), elementCreateElement, document);
            } else if (annotObject.getAction() != null) {
                Element elementCreateElement4 = document.createElement(XfdfConstants.ON_ACTIVATION);
                addActionObject(annotObject.getAction(), elementCreateElement4, document);
                elementCreateElement.appendChild(elementCreateElement4);
            } else {
                logger.error("Dest and OnActivation elements are both missing");
            }
            if (annotObject.getBorderStyleAlt() != null) {
                addBorderStyleAlt(annotObject.getBorderStyleAlt(), elementCreateElement, document);
            }
        }
        if (XfdfConstants.FREETEXT.equalsIgnoreCase(annotObject.getName())) {
            String defaultAppearance = annotObject.getDefaultAppearance();
            if (defaultAppearance != null) {
                Element elementCreateElement5 = document.createElement(XfdfConstants.DEFAULT_APPEARANCE);
                elementCreateElement5.setTextContent(defaultAppearance);
                elementCreateElement.appendChild(elementCreateElement5);
            }
            String defaultStyle = annotObject.getDefaultStyle();
            if (defaultStyle != null) {
                Element elementCreateElement6 = document.createElement(XfdfConstants.DEFAULT_STYLE);
                elementCreateElement6.setTextContent(defaultStyle);
                elementCreateElement.appendChild(elementCreateElement6);
            }
        }
        element.appendChild(elementCreateElement);
    }

    private static void addBorderStyleAlt(BorderStyleAltObject borderStyleAltObject, Element element, Document document) {
        Element elementCreateElement = document.createElement(XfdfConstants.BORDER_STYLE_ALT);
        elementCreateElement.setAttribute(XfdfConstants.H_CORNER_RADIUS, XfdfObjectUtils.convertFloatToString(borderStyleAltObject.getHCornerRadius()));
        elementCreateElement.setAttribute(XfdfConstants.V_CORNER_RADIUS, XfdfObjectUtils.convertFloatToString(borderStyleAltObject.getVCornerRadius()));
        elementCreateElement.setAttribute("Width", XfdfObjectUtils.convertFloatToString(borderStyleAltObject.getWidth()));
        if (borderStyleAltObject.getDashPattern() != null) {
            elementCreateElement.setAttribute(XfdfConstants.DASH_PATTERN, Arrays.toString(borderStyleAltObject.getDashPattern()));
        }
        if (borderStyleAltObject.getContent() != null) {
            elementCreateElement.setTextContent(borderStyleAltObject.getContent());
        }
        element.appendChild(elementCreateElement);
    }

    private static void addXYZ(FitObject fitObject, Element element, Document document) {
        Element elementCreateElement = document.createElement(XfdfConstants.XYZ_CAPITAL);
        elementCreateElement.setAttribute(XfdfConstants.PAGE_CAPITAL, String.valueOf(fitObject.getPage()));
        elementCreateElement.setAttribute(XfdfConstants.LEFT, XfdfObjectUtils.convertFloatToString(fitObject.getLeft()));
        elementCreateElement.setAttribute(XfdfConstants.BOTTOM, XfdfObjectUtils.convertFloatToString(fitObject.getBottom()));
        elementCreateElement.setAttribute(XfdfConstants.RIGHT, XfdfObjectUtils.convertFloatToString(fitObject.getRight()));
        elementCreateElement.setAttribute(XfdfConstants.TOP, XfdfObjectUtils.convertFloatToString(fitObject.getTop()));
        element.appendChild(elementCreateElement);
    }

    private static void addFit(FitObject fitObject, Element element, Document document) {
        Element elementCreateElement = document.createElement(XfdfConstants.FIT);
        elementCreateElement.setAttribute(XfdfConstants.PAGE_CAPITAL, String.valueOf(fitObject.getPage()));
        element.appendChild(elementCreateElement);
    }

    private static void addFitB(FitObject fitObject, Element element, Document document) {
        Element elementCreateElement = document.createElement(XfdfConstants.FIT_B);
        elementCreateElement.setAttribute(XfdfConstants.PAGE_CAPITAL, String.valueOf(fitObject.getPage()));
        element.appendChild(elementCreateElement);
    }

    private static void addFitBH(FitObject fitObject, Element element, Document document) {
        Element elementCreateElement = document.createElement(XfdfConstants.FIT_BH);
        elementCreateElement.setAttribute(XfdfConstants.PAGE_CAPITAL, String.valueOf(fitObject.getPage()));
        elementCreateElement.setAttribute(XfdfConstants.TOP, XfdfObjectUtils.convertFloatToString(fitObject.getTop()));
        element.appendChild(elementCreateElement);
    }

    private static void addFitBV(FitObject fitObject, Element element, Document document) {
        Element elementCreateElement = document.createElement(XfdfConstants.FIT_BV);
        elementCreateElement.setAttribute(XfdfConstants.PAGE_CAPITAL, String.valueOf(fitObject.getPage()));
        elementCreateElement.setAttribute(XfdfConstants.LEFT, XfdfObjectUtils.convertFloatToString(fitObject.getLeft()));
        element.appendChild(elementCreateElement);
    }

    private static void addFitH(FitObject fitObject, Element element, Document document) {
        Element elementCreateElement = document.createElement(XfdfConstants.FIT_H);
        elementCreateElement.setAttribute(XfdfConstants.PAGE_CAPITAL, String.valueOf(fitObject.getPage()));
        elementCreateElement.setAttribute(XfdfConstants.TOP, XfdfObjectUtils.convertFloatToString(fitObject.getTop()));
        element.appendChild(elementCreateElement);
    }

    private static void addFitR(FitObject fitObject, Element element, Document document) {
        Element elementCreateElement = document.createElement(XfdfConstants.FIT_R);
        elementCreateElement.setAttribute(XfdfConstants.PAGE_CAPITAL, String.valueOf(fitObject.getPage()));
        elementCreateElement.setAttribute(XfdfConstants.LEFT, XfdfObjectUtils.convertFloatToString(fitObject.getLeft()));
        elementCreateElement.setAttribute(XfdfConstants.BOTTOM, XfdfObjectUtils.convertFloatToString(fitObject.getBottom()));
        elementCreateElement.setAttribute(XfdfConstants.RIGHT, XfdfObjectUtils.convertFloatToString(fitObject.getRight()));
        elementCreateElement.setAttribute(XfdfConstants.TOP, XfdfObjectUtils.convertFloatToString(fitObject.getTop()));
        element.appendChild(elementCreateElement);
    }

    private static void addFitV(FitObject fitObject, Element element, Document document) {
        Element elementCreateElement = document.createElement(XfdfConstants.FIT_V);
        elementCreateElement.setAttribute(XfdfConstants.PAGE_CAPITAL, String.valueOf(fitObject.getPage()));
        elementCreateElement.setAttribute(XfdfConstants.LEFT, XfdfObjectUtils.convertFloatToString(fitObject.getLeft()));
        element.appendChild(elementCreateElement);
    }

    private static void addDest(DestObject destObject, Element element, Document document) {
        Element elementCreateElement = document.createElement(XfdfConstants.DEST);
        if (destObject.getName() != null) {
            Element elementCreateElement2 = document.createElement(XfdfConstants.NAMED);
            elementCreateElement2.setAttribute("name", destObject.getName());
            elementCreateElement.appendChild(elementCreateElement2);
        } else if (destObject.getXyz() != null) {
            addXYZ(destObject.getXyz(), elementCreateElement, document);
        } else if (destObject.getFit() != null) {
            addFit(destObject.getFit(), elementCreateElement, document);
        } else if (destObject.getFitB() != null) {
            addFitB(destObject.getFitB(), elementCreateElement, document);
        } else if (destObject.getFitBH() != null) {
            addFitBH(destObject.getFitBH(), elementCreateElement, document);
        } else if (destObject.getFitBV() != null) {
            addFitBV(destObject.getFitBV(), elementCreateElement, document);
        } else if (destObject.getFitH() != null) {
            addFitH(destObject.getFitH(), elementCreateElement, document);
        } else if (destObject.getFitR() != null) {
            addFitR(destObject.getFitR(), elementCreateElement, document);
        } else if (destObject.getFitV() != null) {
            addFitV(destObject.getFitV(), elementCreateElement, document);
        }
        element.appendChild(elementCreateElement);
    }

    private static void addActionObject(ActionObject actionObject, Element element, Document document) {
        Element elementCreateElement = document.createElement(XfdfConstants.ACTION);
        if (actionObject.getUri() != null) {
            Element elementCreateElement2 = document.createElement(XfdfConstants.URI);
            elementCreateElement2.setAttribute(XfdfConstants.NAME_CAPITAL, actionObject.getUri().getValue());
            if (actionObject.isMap()) {
                elementCreateElement2.setAttribute(XfdfConstants.IS_MAP, ServerProtocol.DIALOG_RETURN_SCOPES_TRUE);
            } else {
                elementCreateElement2.setAttribute(XfdfConstants.IS_MAP, "false");
            }
            elementCreateElement.appendChild(elementCreateElement2);
        } else if (PdfName.GoTo.equals(actionObject.getType())) {
            Element elementCreateElement3 = document.createElement(XfdfConstants.GO_TO);
            addDest(actionObject.getDestination(), elementCreateElement3, document);
            elementCreateElement.appendChild(elementCreateElement3);
        } else if (PdfName.GoToR.equals(actionObject.getType())) {
            Element elementCreateElement4 = document.createElement(XfdfConstants.GO_TO_R);
            if (actionObject.getDestination() != null) {
                addDest(actionObject.getDestination(), elementCreateElement4, document);
            } else if (actionObject.getFileOriginalName() != null) {
                Element elementCreateElement5 = document.createElement(XfdfConstants.FILE);
                elementCreateElement5.setAttribute(XfdfConstants.ORIGINAL_NAME, actionObject.getFileOriginalName());
                elementCreateElement4.appendChild(elementCreateElement5);
            } else {
                logger.error("Dest or File elements are missing.");
            }
            elementCreateElement.appendChild(elementCreateElement4);
        } else if (PdfName.Named.equals(actionObject.getType())) {
            Element elementCreateElement6 = document.createElement(XfdfConstants.NAMED);
            elementCreateElement6.setAttribute(XfdfConstants.NAME_CAPITAL, actionObject.getNameAction().getValue());
            elementCreateElement.appendChild(elementCreateElement6);
        } else if (PdfName.Launch.equals(actionObject.getType())) {
            Element elementCreateElement7 = document.createElement(XfdfConstants.LAUNCH);
            if (actionObject.getFileOriginalName() != null) {
                Element elementCreateElement8 = document.createElement(XfdfConstants.FILE);
                elementCreateElement8.setAttribute(XfdfConstants.ORIGINAL_NAME, actionObject.getFileOriginalName());
                elementCreateElement7.appendChild(elementCreateElement8);
            } else {
                logger.error("File element is missing");
            }
            if (actionObject.isNewWindow()) {
                elementCreateElement7.setAttribute(XfdfConstants.NEW_WINDOW, ServerProtocol.DIALOG_RETURN_SCOPES_TRUE);
            }
            elementCreateElement.appendChild(elementCreateElement7);
        }
        element.appendChild(elementCreateElement);
    }

    private static void addPopup(AnnotObject annotObject, Element element, Element element2) {
        for (AttributeObject attributeObject : annotObject.getAttributes()) {
            element.setAttribute(attributeObject.getName(), attributeObject.getValue());
        }
        element2.appendChild(element);
    }
}
