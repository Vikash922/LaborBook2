package com.itextpdf.kernel.utils;

import javax.xml.parsers.DocumentBuilder;
import org.xml.sax.XMLReader;

/* JADX INFO: loaded from: classes6.dex */
public final class XmlProcessorCreator {
    private static IXmlParserFactory xmlParserFactory = new DefaultSafeXmlParserFactory();

    private XmlProcessorCreator() {
    }

    public static void setXmlParserFactory(IXmlParserFactory iXmlParserFactory) {
        if (iXmlParserFactory == null) {
            xmlParserFactory = new DefaultSafeXmlParserFactory();
        } else {
            xmlParserFactory = iXmlParserFactory;
        }
    }

    public static DocumentBuilder createSafeDocumentBuilder(boolean z, boolean z2) {
        return xmlParserFactory.createDocumentBuilderInstance(z, z2);
    }

    public static XMLReader createSafeXMLReader(boolean z, boolean z2) {
        return xmlParserFactory.createXMLReaderInstance(z, z2);
    }
}
