package com.itextpdf.forms.xfdf;

import com.itextpdf.commons.utils.MessageFormatUtil;
import com.itextpdf.forms.PdfAcroForm;
import com.itextpdf.forms.fields.PdfFormField;
import com.itextpdf.kernel.pdf.PdfDocument;
import com.itextpdf.kernel.pdf.PdfName;
import com.itextpdf.kernel.pdf.PdfString;
import com.itextpdf.kernel.pdf.annot.PdfAnnotation;
import com.itextpdf.kernel.pdf.annot.PdfCircleAnnotation;
import com.itextpdf.kernel.pdf.annot.PdfFreeTextAnnotation;
import com.itextpdf.kernel.pdf.annot.PdfMarkupAnnotation;
import com.itextpdf.kernel.pdf.annot.PdfPolyGeomAnnotation;
import com.itextpdf.kernel.pdf.annot.PdfSquareAnnotation;
import com.itextpdf.kernel.pdf.annot.PdfStampAnnotation;
import com.itextpdf.kernel.pdf.annot.PdfTextAnnotation;
import com.itextpdf.kernel.pdf.annot.PdfTextMarkupAnnotation;
import com.itextpdf.p017io.logs.IoLogMessageConstant;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

/* JADX INFO: loaded from: classes6.dex */
class XfdfReader {
    private static Logger logger = LoggerFactory.getLogger((Class<?>) XfdfReader.class);

    XfdfReader() {
    }

    void mergeXfdfIntoPdf(XfdfObject xfdfObject, PdfDocument pdfDocument, String str) {
        if (xfdfObject.getF() != null && xfdfObject.getF().getHref() != null) {
            if (str.equalsIgnoreCase(xfdfObject.getF().getHref())) {
                logger.info("Xfdf href and pdf name are equal. Continue merge");
            } else {
                logger.warn(IoLogMessageConstant.XFDF_HREF_ATTRIBUTE_AND_PDF_DOCUMENT_NAME_ARE_DIFFERENT);
            }
        } else {
            logger.warn(IoLogMessageConstant.XFDF_NO_F_OBJECT_TO_COMPARE);
        }
        PdfAcroForm acroForm = PdfAcroForm.getAcroForm(pdfDocument, false);
        if (acroForm != null) {
            mergeFields(xfdfObject.getFields(), acroForm);
            mergeAnnotations(xfdfObject.getAnnots(), pdfDocument);
        }
    }

    private void mergeFields(FieldsObject fieldsObject, PdfAcroForm pdfAcroForm) {
        if (fieldsObject == null || fieldsObject.getFieldList() == null || fieldsObject.getFieldList().isEmpty()) {
            return;
        }
        Map<String, PdfFormField> formFields = pdfAcroForm.getFormFields();
        for (FieldObject fieldObject : fieldsObject.getFieldList()) {
            String name = fieldObject.getName();
            if (formFields.get(name) != null && fieldObject.getValue() != null) {
                formFields.get(name).setValue(fieldObject.getValue());
            } else {
                logger.error(IoLogMessageConstant.XFDF_NO_SUCH_FIELD_IN_PDF_DOCUMENT);
            }
        }
    }

    private void mergeAnnotations(AnnotsObject annotsObject, PdfDocument pdfDocument) {
        List<AnnotObject> annotsList = annotsObject != null ? annotsObject.getAnnotsList() : null;
        if (annotsList == null || annotsList.isEmpty()) {
            return;
        }
        Iterator<AnnotObject> it = annotsList.iterator();
        while (it.hasNext()) {
            addAnnotationToPdf(it.next(), pdfDocument);
        }
    }

    private void addCommonAnnotationAttributes(PdfAnnotation pdfAnnotation, AnnotObject annotObject) {
        pdfAnnotation.setFlags(XfdfObjectUtils.convertFlagsFromString(annotObject.getAttributeValue(XfdfConstants.FLAGS)));
        pdfAnnotation.setColor(XfdfObjectUtils.convertColorFloatsFromString(annotObject.getAttributeValue("color")));
        pdfAnnotation.setDate(new PdfString(annotObject.getAttributeValue("date")));
        pdfAnnotation.setName(new PdfString(annotObject.getAttributeValue("name")));
        pdfAnnotation.setTitle(new PdfString(annotObject.getAttributeValue("title")));
    }

    private void addMarkupAnnotationAttributes(PdfMarkupAnnotation pdfMarkupAnnotation, AnnotObject annotObject) {
        pdfMarkupAnnotation.setCreationDate(new PdfString(annotObject.getAttributeValue(XfdfConstants.CREATION_DATE)));
        pdfMarkupAnnotation.setSubject(new PdfString(annotObject.getAttributeValue("subject")));
    }

    private void addAnnotationToPdf(AnnotObject annotObject, PdfDocument pdfDocument) {
        String name = annotObject.getName();
        if (name != null) {
            name.hashCode();
            switch (name) {
                case "freetext":
                    pdfDocument.getPage(Integer.parseInt(annotObject.getAttribute("page").getValue())).addAnnotation(new PdfFreeTextAnnotation(XfdfObjectUtils.convertRectFromString(annotObject.getAttributeValue("rect")), annotObject.getContents()));
                    break;
                case "circle":
                    PdfCircleAnnotation pdfCircleAnnotation = new PdfCircleAnnotation(XfdfObjectUtils.convertRectFromString(annotObject.getAttributeValue("rect")));
                    addCommonAnnotationAttributes(pdfCircleAnnotation, annotObject);
                    addMarkupAnnotationAttributes(pdfCircleAnnotation, annotObject);
                    if (annotObject.getAttributeValue(XfdfConstants.FRINGE) != null) {
                        pdfCircleAnnotation.setRectangleDifferences(XfdfObjectUtils.convertFringeFromString(annotObject.getAttributeValue(XfdfConstants.FRINGE)));
                    }
                    pdfDocument.getPage(Integer.parseInt(annotObject.getAttribute("page").getValue())).addAnnotation(pdfCircleAnnotation);
                    break;
                case "underline":
                    PdfMarkupAnnotation pdfTextMarkupAnnotation = new PdfTextMarkupAnnotation(XfdfObjectUtils.convertRectFromString(annotObject.getAttributeValue("rect")), PdfName.Underline, XfdfObjectUtils.convertQuadPointsFromCoordsString(annotObject.getAttributeValue(XfdfConstants.COORDS)));
                    addCommonAnnotationAttributes(pdfTextMarkupAnnotation, annotObject);
                    addMarkupAnnotationAttributes(pdfTextMarkupAnnotation, annotObject);
                    pdfDocument.getPage(Integer.parseInt(annotObject.getAttribute("page").getValue())).addAnnotation(pdfTextMarkupAnnotation);
                    break;
                case "square":
                    PdfSquareAnnotation pdfSquareAnnotation = new PdfSquareAnnotation(XfdfObjectUtils.convertRectFromString(annotObject.getAttributeValue("rect")));
                    addCommonAnnotationAttributes(pdfSquareAnnotation, annotObject);
                    addMarkupAnnotationAttributes(pdfSquareAnnotation, annotObject);
                    if (annotObject.getAttributeValue(XfdfConstants.FRINGE) != null) {
                        pdfSquareAnnotation.setRectangleDifferences(XfdfObjectUtils.convertFringeFromString(annotObject.getAttributeValue(XfdfConstants.FRINGE)));
                    }
                    pdfDocument.getPage(Integer.parseInt(annotObject.getAttribute("page").getValue())).addAnnotation(pdfSquareAnnotation);
                    break;
                case "squiggly":
                    PdfMarkupAnnotation pdfTextMarkupAnnotation2 = new PdfTextMarkupAnnotation(XfdfObjectUtils.convertRectFromString(annotObject.getAttributeValue("rect")), PdfName.Squiggly, XfdfObjectUtils.convertQuadPointsFromCoordsString(annotObject.getAttributeValue(XfdfConstants.COORDS)));
                    addCommonAnnotationAttributes(pdfTextMarkupAnnotation2, annotObject);
                    addMarkupAnnotationAttributes(pdfTextMarkupAnnotation2, annotObject);
                    pdfDocument.getPage(Integer.parseInt(annotObject.getAttribute("page").getValue())).addAnnotation(pdfTextMarkupAnnotation2);
                    break;
                case "highlight":
                    PdfMarkupAnnotation pdfTextMarkupAnnotation3 = new PdfTextMarkupAnnotation(XfdfObjectUtils.convertRectFromString(annotObject.getAttributeValue("rect")), PdfName.Highlight, XfdfObjectUtils.convertQuadPointsFromCoordsString(annotObject.getAttributeValue(XfdfConstants.COORDS)));
                    addCommonAnnotationAttributes(pdfTextMarkupAnnotation3, annotObject);
                    addMarkupAnnotationAttributes(pdfTextMarkupAnnotation3, annotObject);
                    pdfDocument.getPage(Integer.parseInt(annotObject.getAttribute("page").getValue())).addAnnotation(pdfTextMarkupAnnotation3);
                    break;
                case "polygon":
                    PdfMarkupAnnotation pdfMarkupAnnotationCreatePolygon = PdfPolyGeomAnnotation.createPolygon(XfdfObjectUtils.convertRectFromString(annotObject.getAttributeValue("rect")), XfdfObjectUtils.convertVerticesFromString(annotObject.getVertices()));
                    addCommonAnnotationAttributes(pdfMarkupAnnotationCreatePolygon, annotObject);
                    addMarkupAnnotationAttributes(pdfMarkupAnnotationCreatePolygon, annotObject);
                    pdfDocument.getPage(Integer.parseInt(annotObject.getAttribute("page").getValue())).addAnnotation(pdfMarkupAnnotationCreatePolygon);
                    break;
                case "strikeout":
                    PdfMarkupAnnotation pdfTextMarkupAnnotation4 = new PdfTextMarkupAnnotation(XfdfObjectUtils.convertRectFromString(annotObject.getAttributeValue("rect")), PdfName.StrikeOut, XfdfObjectUtils.convertQuadPointsFromCoordsString(annotObject.getAttributeValue(XfdfConstants.COORDS)));
                    addCommonAnnotationAttributes(pdfTextMarkupAnnotation4, annotObject);
                    addMarkupAnnotationAttributes(pdfTextMarkupAnnotation4, annotObject);
                    pdfDocument.getPage(Integer.parseInt(annotObject.getAttribute("page").getValue())).addAnnotation(pdfTextMarkupAnnotation4);
                    break;
                case "text":
                    PdfTextAnnotation pdfTextAnnotation = new PdfTextAnnotation(XfdfObjectUtils.convertRectFromString(annotObject.getAttributeValue("rect")));
                    addCommonAnnotationAttributes(pdfTextAnnotation, annotObject);
                    addMarkupAnnotationAttributes(pdfTextAnnotation, annotObject);
                    pdfTextAnnotation.setIconName(new PdfName(annotObject.getAttributeValue("icon")));
                    if (annotObject.getAttributeValue("state") != null) {
                        pdfTextAnnotation.setState(new PdfString(annotObject.getAttributeValue("state")));
                    }
                    if (annotObject.getAttributeValue(XfdfConstants.STATE_MODEL) != null) {
                        pdfTextAnnotation.setStateModel(new PdfString(annotObject.getAttributeValue(XfdfConstants.STATE_MODEL)));
                    }
                    pdfDocument.getPage(Integer.parseInt(annotObject.getAttributeValue("page"))).addAnnotation(pdfTextAnnotation);
                    break;
                case "stamp":
                    pdfDocument.getPage(Integer.parseInt(annotObject.getAttribute("page").getValue())).addAnnotation(new PdfStampAnnotation(XfdfObjectUtils.convertRectFromString(annotObject.getAttributeValue("rect"))));
                    break;
                case "polyline":
                    PdfMarkupAnnotation pdfMarkupAnnotationCreatePolyLine = PdfPolyGeomAnnotation.createPolyLine(XfdfObjectUtils.convertRectFromString(annotObject.getAttributeValue("rect")), XfdfObjectUtils.convertVerticesFromString(annotObject.getVertices()));
                    addCommonAnnotationAttributes(pdfMarkupAnnotationCreatePolyLine, annotObject);
                    addMarkupAnnotationAttributes(pdfMarkupAnnotationCreatePolyLine, annotObject);
                    pdfDocument.getPage(Integer.parseInt(annotObject.getAttribute("page").getValue())).addAnnotation(pdfMarkupAnnotationCreatePolyLine);
                    break;
                default:
                    logger.warn(MessageFormatUtil.format(IoLogMessageConstant.XFDF_ANNOTATION_IS_NOT_SUPPORTED, name));
                    break;
            }
        }
    }
}
