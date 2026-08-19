package com.itextpdf.styledxmlparser.jsoup.parser;

import com.itextpdf.styledxmlparser.jsoup.helper.Validate;
import com.itextpdf.styledxmlparser.jsoup.nodes.Attributes;
import com.itextpdf.styledxmlparser.jsoup.nodes.Document;
import com.itextpdf.styledxmlparser.jsoup.nodes.Element;
import com.itextpdf.styledxmlparser.jsoup.nodes.Node;
import com.itextpdf.styledxmlparser.jsoup.parser.Token;
import java.io.Reader;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public abstract class TreeBuilder {
    protected String baseUri;
    protected Token currentToken;
    protected Document doc;
    protected Parser parser;
    CharacterReader reader;
    protected ParseSettings settings;
    protected ArrayList<Element> stack;
    Tokeniser tokeniser;
    private Token.StartTag start = new Token.StartTag();
    private Token.EndTag end = new Token.EndTag();

    abstract ParseSettings defaultSettings();

    protected boolean isContentForTagData(String str) {
        return false;
    }

    abstract TreeBuilder newInstance();

    abstract List<Node> parseFragment(String str, Element element, String str2, Parser parser);

    protected abstract boolean process(Token token);

    protected void initialiseParse(Reader reader, String str, Parser parser) {
        Validate.notNull(reader, "String input must not be null");
        Validate.notNull(str, "BaseURI must not be null");
        Validate.notNull(parser);
        Document document = new Document(str);
        this.doc = document;
        document.parser(parser);
        this.parser = parser;
        this.settings = parser.settings();
        this.reader = new CharacterReader(reader);
        this.currentToken = null;
        this.tokeniser = new Tokeniser(this.reader, parser.getErrors());
        this.stack = new ArrayList<>(32);
        this.baseUri = str;
    }

    Document parse(Reader reader, String str, Parser parser) {
        initialiseParse(reader, str, parser);
        runParser();
        this.reader.close();
        this.reader = null;
        this.tokeniser = null;
        this.stack = null;
        return this.doc;
    }

    protected void runParser() {
        Token token;
        Tokeniser tokeniser = this.tokeniser;
        Token.TokenType tokenType = Token.TokenType.EOF;
        do {
            token = tokeniser.read();
            process(token);
            token.reset();
        } while (token.type != tokenType);
    }

    protected boolean processStartTag(String str) {
        Token.StartTag startTag = this.start;
        if (this.currentToken == startTag) {
            return process(new Token.StartTag().name(str));
        }
        return process(((Token.Tag) startTag.reset()).name(str));
    }

    public boolean processStartTag(String str, Attributes attributes) {
        Token.StartTag startTag = this.start;
        if (this.currentToken == startTag) {
            return process(new Token.StartTag().nameAttr(str, attributes));
        }
        startTag.reset();
        startTag.nameAttr(str, attributes);
        return process(startTag);
    }

    protected boolean processEndTag(String str) {
        Token token = this.currentToken;
        Token.EndTag endTag = this.end;
        if (token == endTag) {
            return process(new Token.EndTag().name(str));
        }
        return process(((Token.Tag) endTag.reset()).name(str));
    }

    protected Element currentElement() {
        int size = this.stack.size();
        if (size > 0) {
            return this.stack.get(size - 1);
        }
        return null;
    }

    protected void error(String str) {
        ParseErrorList errors = this.parser.getErrors();
        if (errors.canAddError()) {
            errors.add(new ParseError(this.reader.pos(), str));
        }
    }
}
