package com.itextpdf.kernel.utils;

import com.itextpdf.commons.utils.MessageFormatUtil;
import com.itextpdf.kernel.exceptions.KernelExceptionMessageConstant;
import com.itextpdf.kernel.exceptions.PdfException;
import com.itextpdf.kernel.logs.KernelLogMessageConstant;
import com.itextpdf.p017io.util.XmlUtil;
import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.parsers.ParserConfigurationException;
import javax.xml.parsers.SAXParserFactory;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.xml.sax.EntityResolver;
import org.xml.sax.InputSource;
import org.xml.sax.SAXException;
import org.xml.sax.SAXNotRecognizedException;
import org.xml.sax.SAXNotSupportedException;
import org.xml.sax.XMLReader;

/* JADX INFO: loaded from: classes6.dex */
public class DefaultSafeXmlParserFactory implements IXmlParserFactory {
    private static final String DISALLOW_DOCTYPE_DECL = "http://apache.org/xml/features/disallow-doctype-decl";
    private static final String EXTERNAL_GENERAL_ENTITIES = "http://xml.org/sax/features/external-general-entities";
    private static final String EXTERNAL_PARAMETER_ENTITIES = "http://xml.org/sax/features/external-parameter-entities";
    private static final String LOAD_EXTERNAL_DTD = "http://apache.org/xml/features/nonvalidating/load-external-dtd";
    private static final Logger LOGGER = LoggerFactory.getLogger((Class<?>) DefaultSafeXmlParserFactory.class);

    @Override // com.itextpdf.kernel.utils.IXmlParserFactory
    public DocumentBuilder createDocumentBuilderInstance(boolean z, boolean z2) {
        DocumentBuilderFactory documentBuilderFactoryCreateDocumentBuilderFactory = createDocumentBuilderFactory();
        configureSafeDocumentBuilderFactory(documentBuilderFactoryCreateDocumentBuilderFactory);
        documentBuilderFactoryCreateDocumentBuilderFactory.setNamespaceAware(z);
        documentBuilderFactoryCreateDocumentBuilderFactory.setIgnoringComments(z2);
        try {
            DocumentBuilder documentBuilderNewDocumentBuilder = documentBuilderFactoryCreateDocumentBuilderFactory.newDocumentBuilder();
            documentBuilderNewDocumentBuilder.setEntityResolver(new SafeEmptyEntityResolver());
            return documentBuilderNewDocumentBuilder;
        } catch (ParserConfigurationException e) {
            throw new PdfException(e.getMessage(), (Throwable) e);
        }
    }

    @Override // com.itextpdf.kernel.utils.IXmlParserFactory
    public XMLReader createXMLReaderInstance(boolean z, boolean z2) {
        SAXParserFactory sAXParserFactoryCreateSAXParserFactory = createSAXParserFactory();
        sAXParserFactoryCreateSAXParserFactory.setNamespaceAware(z);
        sAXParserFactoryCreateSAXParserFactory.setValidating(z2);
        configureSafeSAXParserFactory(sAXParserFactoryCreateSAXParserFactory);
        try {
            XMLReader xMLReader = sAXParserFactoryCreateSAXParserFactory.newSAXParser().getXMLReader();
            xMLReader.setEntityResolver(new SafeEmptyEntityResolver());
            return xMLReader;
        } catch (ParserConfigurationException | SAXException e) {
            throw new PdfException(e.getMessage(), (Throwable) e);
        }
    }

    protected DocumentBuilderFactory createDocumentBuilderFactory() {
        return XmlUtil.getDocumentBuilderFactory();
    }

    protected SAXParserFactory createSAXParserFactory() {
        return XmlUtil.createSAXParserFactory();
    }

    protected void configureSafeDocumentBuilderFactory(DocumentBuilderFactory documentBuilderFactory) {
        tryToSetFeature(documentBuilderFactory, DISALLOW_DOCTYPE_DECL, true);
        tryToSetFeature(documentBuilderFactory, EXTERNAL_GENERAL_ENTITIES, false);
        tryToSetFeature(documentBuilderFactory, EXTERNAL_PARAMETER_ENTITIES, false);
        tryToSetFeature(documentBuilderFactory, LOAD_EXTERNAL_DTD, false);
        documentBuilderFactory.setXIncludeAware(false);
        documentBuilderFactory.setExpandEntityReferences(false);
    }

    protected void configureSafeSAXParserFactory(SAXParserFactory sAXParserFactory) {
        tryToSetFeature(sAXParserFactory, DISALLOW_DOCTYPE_DECL, true);
        tryToSetFeature(sAXParserFactory, EXTERNAL_GENERAL_ENTITIES, false);
        tryToSetFeature(sAXParserFactory, EXTERNAL_PARAMETER_ENTITIES, false);
        tryToSetFeature(sAXParserFactory, LOAD_EXTERNAL_DTD, false);
        sAXParserFactory.setXIncludeAware(false);
    }

    private void tryToSetFeature(DocumentBuilderFactory documentBuilderFactory, String str, boolean z) {
        try {
            documentBuilderFactory.setFeature(str, z);
        } catch (ParserConfigurationException e) {
            LOGGER.info(MessageFormatUtil.format(KernelLogMessageConstant.FEATURE_IS_NOT_SUPPORTED, e.getMessage(), str));
        }
    }

    private void tryToSetFeature(SAXParserFactory sAXParserFactory, String str, boolean z) {
        try {
            sAXParserFactory.setFeature(str, z);
        } catch (ParserConfigurationException | SAXNotRecognizedException | SAXNotSupportedException e) {
            LOGGER.info(MessageFormatUtil.format(KernelLogMessageConstant.FEATURE_IS_NOT_SUPPORTED, e.getMessage(), str));
        }
    }

    private static class SafeEmptyEntityResolver implements EntityResolver {
        @Override // org.xml.sax.EntityResolver
        public InputSource resolveEntity(String str, String str2) {
            throw new PdfException(KernelExceptionMessageConstant.EXTERNAL_ENTITY_ELEMENT_FOUND_IN_XML);
        }
    }
}
