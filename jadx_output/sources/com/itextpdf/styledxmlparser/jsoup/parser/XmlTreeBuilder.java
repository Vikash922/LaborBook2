package com.itextpdf.styledxmlparser.jsoup.parser;

import com.itextpdf.styledxmlparser.jsoup.helper.Validate;
import com.itextpdf.styledxmlparser.jsoup.nodes.CDataNode;
import com.itextpdf.styledxmlparser.jsoup.nodes.Comment;
import com.itextpdf.styledxmlparser.jsoup.nodes.Document;
import com.itextpdf.styledxmlparser.jsoup.nodes.DocumentType;
import com.itextpdf.styledxmlparser.jsoup.nodes.Element;
import com.itextpdf.styledxmlparser.jsoup.nodes.Entities;
import com.itextpdf.styledxmlparser.jsoup.nodes.Node;
import com.itextpdf.styledxmlparser.jsoup.nodes.TextNode;
import com.itextpdf.styledxmlparser.jsoup.nodes.XmlDeclaration;
import com.itextpdf.styledxmlparser.jsoup.parser.Token;
import java.io.Reader;
import java.io.StringReader;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public class XmlTreeBuilder extends TreeBuilder {
    @Override // com.itextpdf.styledxmlparser.jsoup.parser.TreeBuilder
    ParseSettings defaultSettings() {
        return ParseSettings.preserveCase;
    }

    @Override // com.itextpdf.styledxmlparser.jsoup.parser.TreeBuilder
    protected void initialiseParse(Reader reader, String str, Parser parser) {
        super.initialiseParse(reader, str, parser);
        this.stack.add(this.doc);
        this.doc.outputSettings().syntax(Document.OutputSettings.Syntax.xml).escapeMode(Entities.EscapeMode.xhtml).prettyPrint(false);
    }

    Document parse(Reader reader, String str) {
        return parse(reader, str, new Parser(this));
    }

    Document parse(String str, String str2) {
        return parse(new StringReader(str), str2, new Parser(this));
    }

    @Override // com.itextpdf.styledxmlparser.jsoup.parser.TreeBuilder
    TreeBuilder newInstance() {
        return new XmlTreeBuilder();
    }

    /* JADX INFO: renamed from: com.itextpdf.styledxmlparser.jsoup.parser.XmlTreeBuilder$1 */
    static /* synthetic */ class C35381 {

        /* JADX INFO: renamed from: $SwitchMap$com$itextpdf$styledxmlparser$jsoup$parser$Token$TokenType */
        static final /* synthetic */ int[] f3315xd695eb0c;

        static {
            int[] iArr = new int[Token.TokenType.values().length];
            f3315xd695eb0c = iArr;
            try {
                iArr[Token.TokenType.StartTag.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f3315xd695eb0c[Token.TokenType.EndTag.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f3315xd695eb0c[Token.TokenType.Comment.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f3315xd695eb0c[Token.TokenType.Character.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f3315xd695eb0c[Token.TokenType.Doctype.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f3315xd695eb0c[Token.TokenType.EOF.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
        }
    }

    @Override // com.itextpdf.styledxmlparser.jsoup.parser.TreeBuilder
    protected boolean process(Token token) {
        switch (C35381.f3315xd695eb0c[token.type.ordinal()]) {
            case 1:
                insert(token.asStartTag());
                break;
            case 2:
                popStackToClose(token.asEndTag());
                break;
            case 3:
                insert(token.asComment());
                break;
            case 4:
                insert(token.asCharacter());
                break;
            case 5:
                insert(token.asDoctype());
                break;
            case 6:
                break;
            default:
                Validate.fail("Unexpected token type: " + token.type);
                break;
        }
        return true;
    }

    private void insertNode(Node node) {
        currentElement().appendChild(node);
    }

    Element insert(Token.StartTag startTag) {
        Tag tagValueOf = Tag.valueOf(startTag.name(), this.settings);
        if (startTag.hasAttributes()) {
            startTag.attributes.deduplicate(this.settings);
        }
        Element element = new Element(tagValueOf, null, this.settings.normalizeAttributes(startTag.attributes));
        insertNode(element);
        if (startTag.isSelfClosing()) {
            if (!tagValueOf.isKnownTag()) {
                tagValueOf.setSelfClosing();
            }
        } else {
            this.stack.add(element);
        }
        return element;
    }

    void insert(Token.Comment comment) {
        XmlDeclaration xmlDeclarationAsXmlDeclaration;
        Comment comment2 = new Comment(comment.getData());
        if (comment.bogus && comment2.isXmlDeclaration() && (xmlDeclarationAsXmlDeclaration = comment2.asXmlDeclaration()) != null) {
            comment2 = xmlDeclarationAsXmlDeclaration;
        }
        insertNode(comment2);
    }

    void insert(Token.Character character) {
        String data = character.getData();
        insertNode(character.isCData() ? new CDataNode(data) : new TextNode(data));
    }

    void insert(Token.Doctype doctype) {
        DocumentType documentType = new DocumentType(this.settings.normalizeTag(doctype.getName()), doctype.getPublicIdentifier(), doctype.getSystemIdentifier());
        documentType.setPubSysKey(doctype.getPubSysKey());
        insertNode(documentType);
    }

    private void popStackToClose(Token.EndTag endTag) {
        Element element;
        String strNormalizeTag = this.settings.normalizeTag(endTag.tagName);
        int size = this.stack.size() - 1;
        while (true) {
            if (size < 0) {
                element = null;
                break;
            }
            element = this.stack.get(size);
            if (element.nodeName().equals(strNormalizeTag)) {
                break;
            } else {
                size--;
            }
        }
        if (element == null) {
            return;
        }
        for (int size2 = this.stack.size() - 1; size2 >= 0; size2--) {
            Element element2 = this.stack.get(size2);
            this.stack.remove(size2);
            if (element2 == element) {
                return;
            }
        }
    }

    List<Node> parseFragment(String str, String str2, Parser parser) {
        initialiseParse(new StringReader(str), str2, parser);
        runParser();
        return this.doc.childNodes();
    }

    @Override // com.itextpdf.styledxmlparser.jsoup.parser.TreeBuilder
    List<Node> parseFragment(String str, Element element, String str2, Parser parser) {
        return parseFragment(str, str2, parser);
    }
}
