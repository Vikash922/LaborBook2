package com.itextpdf.styledxmlparser.node.impl.jsoup;

import com.itextpdf.commons.utils.MessageFormatUtil;
import com.itextpdf.styledxmlparser.IXmlParser;
import com.itextpdf.styledxmlparser.jsoup.Jsoup;
import com.itextpdf.styledxmlparser.jsoup.nodes.Comment;
import com.itextpdf.styledxmlparser.jsoup.nodes.DataNode;
import com.itextpdf.styledxmlparser.jsoup.nodes.Document;
import com.itextpdf.styledxmlparser.jsoup.nodes.DocumentType;
import com.itextpdf.styledxmlparser.jsoup.nodes.Element;
import com.itextpdf.styledxmlparser.jsoup.nodes.Node;
import com.itextpdf.styledxmlparser.jsoup.nodes.TextNode;
import com.itextpdf.styledxmlparser.logs.StyledXmlParserLogMessageConstant;
import com.itextpdf.styledxmlparser.node.IDocumentNode;
import com.itextpdf.styledxmlparser.node.INode;
import com.itextpdf.styledxmlparser.node.impl.jsoup.node.JsoupDataNode;
import com.itextpdf.styledxmlparser.node.impl.jsoup.node.JsoupDocumentNode;
import com.itextpdf.styledxmlparser.node.impl.jsoup.node.JsoupDocumentTypeNode;
import com.itextpdf.styledxmlparser.node.impl.jsoup.node.JsoupElementNode;
import com.itextpdf.styledxmlparser.node.impl.jsoup.node.JsoupTextNode;
import java.io.IOException;
import java.io.InputStream;
import java.util.Iterator;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

/* JADX INFO: loaded from: classes6.dex */
public class JsoupHtmlParser implements IXmlParser {
    private static Logger logger = LoggerFactory.getLogger((Class<?>) JsoupHtmlParser.class);

    @Override // com.itextpdf.styledxmlparser.IXmlParser
    public IDocumentNode parse(InputStream inputStream, String str) throws IOException {
        INode iNodeWrapJsoupHierarchy = wrapJsoupHierarchy(Jsoup.parse(inputStream, str, ""));
        if (iNodeWrapJsoupHierarchy instanceof IDocumentNode) {
            return (IDocumentNode) iNodeWrapJsoupHierarchy;
        }
        throw new IllegalStateException();
    }

    @Override // com.itextpdf.styledxmlparser.IXmlParser
    public IDocumentNode parse(String str) {
        INode iNodeWrapJsoupHierarchy = wrapJsoupHierarchy(Jsoup.parse(str));
        if (iNodeWrapJsoupHierarchy instanceof IDocumentNode) {
            return (IDocumentNode) iNodeWrapJsoupHierarchy;
        }
        throw new IllegalStateException();
    }

    private INode wrapJsoupHierarchy(Node node) {
        INode jsoupDocumentTypeNode;
        if (node instanceof Document) {
            jsoupDocumentTypeNode = new JsoupDocumentNode((Document) node);
        } else if (node instanceof TextNode) {
            jsoupDocumentTypeNode = new JsoupTextNode((TextNode) node);
        } else if (node instanceof Element) {
            jsoupDocumentTypeNode = new JsoupElementNode((Element) node);
        } else if (node instanceof DataNode) {
            jsoupDocumentTypeNode = new JsoupDataNode((DataNode) node);
        } else if (node instanceof DocumentType) {
            jsoupDocumentTypeNode = new JsoupDocumentTypeNode((DocumentType) node);
        } else {
            if (!(node instanceof Comment)) {
                logger.error(MessageFormatUtil.format(StyledXmlParserLogMessageConstant.ERROR_PARSING_COULD_NOT_MAP_NODE, node.getClass()));
            }
            jsoupDocumentTypeNode = null;
        }
        Iterator<Node> it = node.childNodes().iterator();
        while (it.hasNext()) {
            INode iNodeWrapJsoupHierarchy = wrapJsoupHierarchy(it.next());
            if (iNodeWrapJsoupHierarchy != null) {
                jsoupDocumentTypeNode.addChild(iNodeWrapJsoupHierarchy);
            }
        }
        return jsoupDocumentTypeNode;
    }
}
