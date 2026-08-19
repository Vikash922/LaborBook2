package com.itextpdf.io.util;

import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.parsers.ParserConfigurationException;
import javax.xml.parsers.SAXParserFactory;
import org.w3c.dom.Document;

/* JADX INFO: loaded from: classes6.dex */
public final class XmlUtil {
    private XmlUtil() {
    }

    public static DocumentBuilderFactory getDocumentBuilderFactory() {
        return DocumentBuilderFactory.newInstance();
    }

    public static SAXParserFactory createSAXParserFactory() {
        return SAXParserFactory.newInstance();
    }

    public static Document initNewXmlDocument() throws ParserConfigurationException {
        return DocumentBuilderFactory.newInstance().newDocumentBuilder().newDocument();
    }
}
