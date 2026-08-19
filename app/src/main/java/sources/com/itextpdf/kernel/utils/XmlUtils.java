package com.itextpdf.kernel.utils;

import com.facebook.appevents.AppEventsConstants;
import com.laborbook.base.analytics.ConstantEventSources;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.ParserConfigurationException;
import javax.xml.transform.Transformer;
import javax.xml.transform.TransformerException;
import javax.xml.transform.TransformerFactory;
import javax.xml.transform.dom.DOMSource;
import javax.xml.transform.stream.StreamResult;
import org.w3c.dom.Document;
import org.xml.sax.SAXException;

/* JADX INFO: loaded from: classes6.dex */
final class XmlUtils {
    XmlUtils() {
    }

    public static void writeXmlDocToStream(Document document, OutputStream outputStream) throws TransformerException {
        TransformerFactory transformerFactoryNewInstance = TransformerFactory.newInstance();
        try {
            transformerFactoryNewInstance.setAttribute("http://javax.xml.XMLConstants/property/accessExternalDTD", "");
            transformerFactoryNewInstance.setAttribute("http://javax.xml.XMLConstants/property/accessExternalStylesheet", "");
        } catch (Exception unused) {
        }
        Transformer transformerNewTransformer = transformerFactoryNewInstance.newTransformer();
        transformerNewTransformer.setOutputProperty("indent", ConstantEventSources.YES);
        transformerNewTransformer.setOutputProperty("{http://xml.apache.org/xslt}indent-amount", AppEventsConstants.EVENT_PARAM_VALUE_NO);
        transformerNewTransformer.transform(new DOMSource(document), new StreamResult(outputStream));
    }

    public static boolean compareXmls(InputStream inputStream, InputStream inputStream2) throws ParserConfigurationException, SAXException, IOException {
        DocumentBuilder documentBuilderCreateSafeDocumentBuilder = XmlProcessorCreator.createSafeDocumentBuilder(true, true);
        Document document = documentBuilderCreateSafeDocumentBuilder.parse(inputStream);
        document.normalizeDocument();
        Document document2 = documentBuilderCreateSafeDocumentBuilder.parse(inputStream2);
        document2.normalizeDocument();
        return document2.isEqualNode(document);
    }

    public static Document initNewXmlDocument() throws ParserConfigurationException {
        return XmlProcessorCreator.createSafeDocumentBuilder(false, false).newDocument();
    }
}
