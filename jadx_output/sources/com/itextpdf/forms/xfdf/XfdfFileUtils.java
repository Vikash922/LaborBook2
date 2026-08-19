package com.itextpdf.forms.xfdf;

import com.itextpdf.kernel.exceptions.PdfException;
import com.itextpdf.kernel.utils.XmlProcessorCreator;
import java.io.InputStream;
import java.io.OutputStream;
import javax.xml.transform.TransformerException;
import javax.xml.transform.TransformerFactory;
import javax.xml.transform.dom.DOMSource;
import javax.xml.transform.stream.StreamResult;
import org.w3c.dom.Document;

/* JADX INFO: loaded from: classes6.dex */
final class XfdfFileUtils {
    private XfdfFileUtils() {
    }

    static Document createNewXfdfDocument() {
        try {
            return XmlProcessorCreator.createSafeDocumentBuilder(false, false).newDocument();
        } catch (Exception e) {
            throw new PdfException(e.getMessage(), (Throwable) e);
        }
    }

    static Document createXfdfDocumentFromStream(InputStream inputStream) {
        try {
            return XmlProcessorCreator.createSafeDocumentBuilder(false, false).parse(inputStream);
        } catch (Exception e) {
            throw new PdfException(e.getMessage(), (Throwable) e);
        }
    }

    static void saveXfdfDocumentToFile(Document document, OutputStream outputStream) throws TransformerException {
        TransformerFactory transformerFactoryNewInstance = TransformerFactory.newInstance();
        transformerFactoryNewInstance.setFeature("http://javax.xml.XMLConstants/feature/secure-processing", true);
        transformerFactoryNewInstance.setAttribute("http://javax.xml.XMLConstants/property/accessExternalDTD", "");
        transformerFactoryNewInstance.setAttribute("http://javax.xml.XMLConstants/property/accessExternalStylesheet", "");
        transformerFactoryNewInstance.newTransformer().transform(new DOMSource(document), new StreamResult(outputStream));
    }
}
