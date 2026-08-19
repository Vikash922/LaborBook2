package com.itextpdf.kernel.utils;

import javax.xml.parsers.DocumentBuilder;
import org.xml.sax.XMLReader;

/* JADX INFO: loaded from: classes6.dex */
public interface IXmlParserFactory {
    DocumentBuilder createDocumentBuilderInstance(boolean z, boolean z2);

    XMLReader createXMLReaderInstance(boolean z, boolean z2);
}
