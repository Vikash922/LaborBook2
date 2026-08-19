package com.itextpdf.styledxmlparser.jsoup.parser;

import com.itextpdf.styledxmlparser.jsoup.nodes.DocumentType;
import com.itextpdf.styledxmlparser.jsoup.parser.Token;
import com.itextpdf.svg.SvgConstants;
import kotlin.text.Typography;
import org.objectweb.asm.signature.SignatureVisitor;
import org.shadow.apache.commons.lang3.CharUtils;

/* JADX INFO: loaded from: classes6.dex */
abstract class TokeniserState {
    static TokeniserState AfterAttributeName = null;
    static TokeniserState AfterAttributeValue_quoted = null;
    static TokeniserState AfterDoctypeName = null;
    static TokeniserState AfterDoctypePublicIdentifier = null;
    static TokeniserState AfterDoctypePublicKeyword = null;
    static TokeniserState AfterDoctypeSystemIdentifier = null;
    static TokeniserState AfterDoctypeSystemKeyword = null;
    static TokeniserState AttributeName = null;
    static TokeniserState AttributeValue_doubleQuoted = null;
    static TokeniserState AttributeValue_singleQuoted = null;
    static TokeniserState AttributeValue_unquoted = null;
    static TokeniserState BeforeAttributeName = null;
    static TokeniserState BeforeAttributeValue = null;
    static TokeniserState BeforeDoctypeName = null;
    static TokeniserState BeforeDoctypePublicIdentifier = null;
    static TokeniserState BeforeDoctypeSystemIdentifier = null;
    static TokeniserState BetweenDoctypePublicAndSystemIdentifiers = null;
    static TokeniserState BogusComment = null;
    static TokeniserState BogusDoctype = null;
    static TokeniserState CdataSection = null;
    static TokeniserState CharacterReferenceInData = null;
    static TokeniserState CharacterReferenceInRcdata = null;
    static TokeniserState Comment = null;
    static TokeniserState CommentEnd = null;
    static TokeniserState CommentEndBang = null;
    static TokeniserState CommentEndDash = null;
    static TokeniserState CommentStart = null;
    static TokeniserState CommentStartDash = null;
    static TokeniserState Data = null;
    static TokeniserState Doctype = null;
    static TokeniserState DoctypeName = null;
    static TokeniserState DoctypePublicIdentifier_doubleQuoted = null;
    static TokeniserState DoctypePublicIdentifier_singleQuoted = null;
    static TokeniserState DoctypeSystemIdentifier_doubleQuoted = null;
    static TokeniserState DoctypeSystemIdentifier_singleQuoted = null;
    static TokeniserState EndTagOpen = null;
    static TokeniserState MarkupDeclarationOpen = null;
    static TokeniserState PLAINTEXT = null;
    static TokeniserState RCDATAEndTagName = null;
    static TokeniserState RCDATAEndTagOpen = null;
    static TokeniserState Rawtext = null;
    static TokeniserState RawtextEndTagName = null;
    static TokeniserState RawtextEndTagOpen = null;
    static TokeniserState RawtextLessthanSign = null;
    static TokeniserState Rcdata = null;
    static TokeniserState RcdataLessthanSign = null;
    static TokeniserState ScriptData = null;
    static TokeniserState ScriptDataDoubleEscapeEnd = null;
    static TokeniserState ScriptDataDoubleEscapeStart = null;
    static TokeniserState ScriptDataDoubleEscaped = null;
    static TokeniserState ScriptDataDoubleEscapedDash = null;
    static TokeniserState ScriptDataDoubleEscapedDashDash = null;
    static TokeniserState ScriptDataDoubleEscapedLessthanSign = null;
    static TokeniserState ScriptDataEndTagName = null;
    static TokeniserState ScriptDataEndTagOpen = null;
    static TokeniserState ScriptDataEscapeStart = null;
    static TokeniserState ScriptDataEscapeStartDash = null;
    static TokeniserState ScriptDataEscaped = null;
    static TokeniserState ScriptDataEscapedDash = null;
    static TokeniserState ScriptDataEscapedDashDash = null;
    static TokeniserState ScriptDataEscapedEndTagName = null;
    static TokeniserState ScriptDataEscapedEndTagOpen = null;
    static TokeniserState ScriptDataEscapedLessthanSign = null;
    static TokeniserState ScriptDataLessthanSign = null;
    static TokeniserState SelfClosingStartTag = null;
    static TokeniserState TagName = null;
    static TokeniserState TagOpen = null;
    private static final char eof = 65535;
    static final char nullChar = 0;
    private static final char replacementChar = 65533;
    static final char[] attributeNameCharsSorted = {0, '\t', '\n', '\f', CharUtils.f4765CR, ' ', Typography.quote, '\'', '/', Typography.less, SignatureVisitor.INSTANCEOF, Typography.greater};
    static final char[] attributeValueUnquoted = {0, '\t', '\n', '\f', CharUtils.f4765CR, ' ', Typography.quote, Typography.amp, '\'', Typography.less, SignatureVisitor.INSTANCEOF, Typography.greater, '`'};
    private static final String replacementStr = String.valueOf((char) 65533);

    abstract void read(Tokeniser tokeniser, CharacterReader characterReader);

    TokeniserState() {
    }

    static {
        Data = new DataTS();
        CharacterReferenceInData = new CharacterReferenceInDataTS();
        Rcdata = new RcDataTS();
        CharacterReferenceInRcdata = new CharacterReferenceInRcdataTS();
        Rawtext = new RawTextTS();
        ScriptData = new ScriptDataTS();
        PLAINTEXT = new PlainTextTS();
        TagOpen = new TagOpenTS();
        EndTagOpen = new EndTagOpenTS();
        TagName = new TagNameTS();
        RcdataLessthanSign = new RcDataLessThanSignTS();
        RCDATAEndTagOpen = new RcDataEndTagOpenTS();
        RCDATAEndTagName = new RcDataEndTagNameTS();
        RawtextLessthanSign = new RawTextLessThanSignTS();
        RawtextEndTagOpen = new RawTextEndTagOpenTS();
        RawtextEndTagName = new RawTextEndTagNameTS();
        ScriptDataLessthanSign = new ScriptDataLessThanSignTS();
        ScriptDataEndTagOpen = new ScriptDataEndTagOpenTS();
        ScriptDataEndTagName = new ScriptDataEndTagNameTS();
        ScriptDataEscapeStart = new ScriptDataEscapeStartTS();
        ScriptDataEscapeStartDash = new ScriptDataEscapeStartDashTS();
        ScriptDataEscaped = new ScriptDataEscapedTS();
        ScriptDataEscapedDash = new ScriptDataEscapedDashTS();
        ScriptDataEscapedDashDash = new ScriptDataEscapedDashDashTS();
        ScriptDataEscapedLessthanSign = new ScriptDataEscapedLessThanSignTS();
        ScriptDataEscapedEndTagOpen = new ScriptDataEscapedEndTagOpenTS();
        ScriptDataEscapedEndTagName = new ScriptDataEscapedEndTagNameTS();
        ScriptDataDoubleEscapeStart = new ScriptDataDoubleEscapeStartTS();
        ScriptDataDoubleEscaped = new ScriptDataDoubleEscapedTS();
        ScriptDataDoubleEscapedDash = new ScriptDataDoubleEscapedDashTS();
        ScriptDataDoubleEscapedDashDash = new ScriptDataDoubleEscapedDashDashTS();
        ScriptDataDoubleEscapedLessthanSign = new ScriptDataDoubleEscapedLessThanSignTS();
        ScriptDataDoubleEscapeEnd = new ScriptDataDoubleEscapeEndTS();
        BeforeAttributeName = new BeforeAttributeNameTS();
        AttributeName = new AttributeNameTS();
        AfterAttributeName = new AfterAttributeNameTS();
        BeforeAttributeValue = new BeforeAttributeValueTS();
        AttributeValue_doubleQuoted = new AttributeValueDoubleQuotedTS();
        AttributeValue_singleQuoted = new AttributeValueSingleQuotedTS();
        AttributeValue_unquoted = new AttributeValueUnquotedTS();
        AfterAttributeValue_quoted = new AfterAttributeValueQuotedTS();
        SelfClosingStartTag = new SelfClosingStartTagTS();
        BogusComment = new BogusCommentTS();
        MarkupDeclarationOpen = new MarkupDeclarationOpenTS();
        CommentStart = new CommentStartTS();
        CommentStartDash = new CommentStartDashTS();
        Comment = new CommentTS();
        CommentEndDash = new CommentEndDashTS();
        CommentEnd = new CommentEndTS();
        CommentEndBang = new CommentEndBangTS();
        Doctype = new DocTypeTS();
        BeforeDoctypeName = new BeforeDocTypeNameTS();
        DoctypeName = new DocTypeNameTS();
        AfterDoctypeName = new AfterDocTypeNameTS();
        AfterDoctypePublicKeyword = new AfterDocTypePublicKeywordTS();
        BeforeDoctypePublicIdentifier = new BeforeDocTypePublicIdentifierTS();
        DoctypePublicIdentifier_doubleQuoted = new DocTypePublicIdentifierDoubleQuotedTS();
        DoctypePublicIdentifier_singleQuoted = new DocTypePublicIdentifierSingleQuotedTS();
        AfterDoctypePublicIdentifier = new AfterDocTypePublicIdentifierTS();
        BetweenDoctypePublicAndSystemIdentifiers = new BetweenDocTypePublicAndSystemIdentifiersTS();
        AfterDoctypeSystemKeyword = new AfterDocTypeSystemKeywordTS();
        BeforeDoctypeSystemIdentifier = new BeforeDocTypeSystemIdentifierTS();
        DoctypeSystemIdentifier_doubleQuoted = new DocTypeSystemIdentifierDoubleQuotedTS();
        DoctypeSystemIdentifier_singleQuoted = new DocTypeSystemIdentifierSingleQuotedTS();
        AfterDoctypeSystemIdentifier = new AfterDocTypeSystemIdentifierTS();
        BogusDoctype = new BogusDocTypeTS();
        CdataSection = new CDataSectionTS();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void handleDataEndTag(Tokeniser tokeniser, CharacterReader characterReader, TokeniserState tokeniserState) {
        if (characterReader.matchesLetter()) {
            String strConsumeLetterSequence = characterReader.consumeLetterSequence();
            tokeniser.tagPending.appendTagName(strConsumeLetterSequence);
            tokeniser.dataBuffer.append(strConsumeLetterSequence);
            return;
        }
        if (tokeniser.isAppropriateEndTagToken() && !characterReader.isEmpty()) {
            char cConsume = characterReader.consume();
            if (cConsume == '\t' || cConsume == '\n' || cConsume == '\f' || cConsume == '\r' || cConsume == ' ') {
                tokeniser.transition(BeforeAttributeName);
                return;
            }
            if (cConsume == '/') {
                tokeniser.transition(SelfClosingStartTag);
                return;
            } else {
                if (cConsume == '>') {
                    tokeniser.emitTagPending();
                    tokeniser.transition(Data);
                    return;
                }
                tokeniser.dataBuffer.append(cConsume);
            }
        }
        tokeniser.emit("</");
        tokeniser.emit(tokeniser.dataBuffer);
        tokeniser.transition(tokeniserState);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void readRawData(Tokeniser tokeniser, CharacterReader characterReader, TokeniserState tokeniserState, TokeniserState tokeniserState2) {
        char cCurrent = characterReader.current();
        if (cCurrent == 0) {
            tokeniser.error(tokeniserState);
            characterReader.advance();
            tokeniser.emit((char) 65533);
        } else if (cCurrent == '<') {
            tokeniser.advanceTransition(tokeniserState2);
        } else if (cCurrent == 65535) {
            tokeniser.emit(new Token.EOF());
        } else {
            tokeniser.emit(characterReader.consumeRawData());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void readCharRef(Tokeniser tokeniser, TokeniserState tokeniserState) {
        int[] iArrConsumeCharacterReference = tokeniser.consumeCharacterReference(null, false);
        if (iArrConsumeCharacterReference == null) {
            tokeniser.emit(Typography.amp);
        } else {
            tokeniser.emit(iArrConsumeCharacterReference);
        }
        tokeniser.transition(tokeniserState);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void readEndTag(Tokeniser tokeniser, CharacterReader characterReader, TokeniserState tokeniserState, TokeniserState tokeniserState2) {
        if (characterReader.matchesLetter()) {
            tokeniser.createTagPending(false);
            tokeniser.transition(tokeniserState);
        } else {
            tokeniser.emit("</");
            tokeniser.transition(tokeniserState2);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void handleDataDoubleEscapeTag(Tokeniser tokeniser, CharacterReader characterReader, TokeniserState tokeniserState, TokeniserState tokeniserState2) {
        if (characterReader.matchesLetter()) {
            String strConsumeLetterSequence = characterReader.consumeLetterSequence();
            tokeniser.dataBuffer.append(strConsumeLetterSequence);
            tokeniser.emit(strConsumeLetterSequence);
            return;
        }
        char cConsume = characterReader.consume();
        if (cConsume == '\t' || cConsume == '\n' || cConsume == '\f' || cConsume == '\r' || cConsume == ' ' || cConsume == '/' || cConsume == '>') {
            if (tokeniser.dataBuffer.toString().equals(SvgConstants.Tags.SCRIPT)) {
                tokeniser.transition(tokeniserState);
            } else {
                tokeniser.transition(tokeniserState2);
            }
            tokeniser.emit(cConsume);
            return;
        }
        characterReader.unconsume();
        tokeniser.transition(tokeniserState2);
    }

    private static final class DataTS extends TokeniserState {
        private DataTS() {
        }

        public String toString() {
            return "Data";
        }

        @Override // com.itextpdf.styledxmlparser.jsoup.parser.TokeniserState
        void read(Tokeniser tokeniser, CharacterReader characterReader) {
            char cCurrent = characterReader.current();
            if (cCurrent == 0) {
                tokeniser.error(this);
                tokeniser.emit(characterReader.consume());
            } else {
                if (cCurrent == '&') {
                    tokeniser.advanceTransition(CharacterReferenceInData);
                    return;
                }
                if (cCurrent == '<') {
                    tokeniser.advanceTransition(TagOpen);
                } else if (cCurrent == 65535) {
                    tokeniser.emit(new Token.EOF());
                } else {
                    tokeniser.emit(characterReader.consumeData());
                }
            }
        }
    }

    private static final class CharacterReferenceInDataTS extends TokeniserState {
        private CharacterReferenceInDataTS() {
        }

        public String toString() {
            return "CharacterReferenceInData";
        }

        @Override // com.itextpdf.styledxmlparser.jsoup.parser.TokeniserState
        void read(Tokeniser tokeniser, CharacterReader characterReader) {
            TokeniserState.readCharRef(tokeniser, Data);
        }
    }

    private static final class RcDataTS extends TokeniserState {
        private RcDataTS() {
        }

        public String toString() {
            return "Rcdata";
        }

        @Override // com.itextpdf.styledxmlparser.jsoup.parser.TokeniserState
        void read(Tokeniser tokeniser, CharacterReader characterReader) {
            char cCurrent = characterReader.current();
            if (cCurrent == 0) {
                tokeniser.error(this);
                characterReader.advance();
                tokeniser.emit((char) 65533);
            } else {
                if (cCurrent == '&') {
                    tokeniser.advanceTransition(CharacterReferenceInRcdata);
                    return;
                }
                if (cCurrent == '<') {
                    tokeniser.advanceTransition(RcdataLessthanSign);
                } else if (cCurrent == 65535) {
                    tokeniser.emit(new Token.EOF());
                } else {
                    tokeniser.emit(characterReader.consumeData());
                }
            }
        }
    }

    private static final class CharacterReferenceInRcdataTS extends TokeniserState {
        private CharacterReferenceInRcdataTS() {
        }

        public String toString() {
            return "CharacterReferenceInRcdata";
        }

        @Override // com.itextpdf.styledxmlparser.jsoup.parser.TokeniserState
        void read(Tokeniser tokeniser, CharacterReader characterReader) {
            TokeniserState.readCharRef(tokeniser, Rcdata);
        }
    }

    private static final class RawTextTS extends TokeniserState {
        private RawTextTS() {
        }

        public String toString() {
            return "Rawtext";
        }

        @Override // com.itextpdf.styledxmlparser.jsoup.parser.TokeniserState
        void read(Tokeniser tokeniser, CharacterReader characterReader) {
            TokeniserState.readRawData(tokeniser, characterReader, this, RawtextLessthanSign);
        }
    }

    private static final class ScriptDataTS extends TokeniserState {
        private ScriptDataTS() {
        }

        public String toString() {
            return "ScriptData";
        }

        @Override // com.itextpdf.styledxmlparser.jsoup.parser.TokeniserState
        void read(Tokeniser tokeniser, CharacterReader characterReader) {
            TokeniserState.readRawData(tokeniser, characterReader, this, ScriptDataLessthanSign);
        }
    }

    private static final class PlainTextTS extends TokeniserState {
        private PlainTextTS() {
        }

        public String toString() {
            return "PLAINTEXT";
        }

        @Override // com.itextpdf.styledxmlparser.jsoup.parser.TokeniserState
        void read(Tokeniser tokeniser, CharacterReader characterReader) {
            char cCurrent = characterReader.current();
            if (cCurrent == 0) {
                tokeniser.error(this);
                characterReader.advance();
                tokeniser.emit((char) 65533);
            } else if (cCurrent == 65535) {
                tokeniser.emit(new Token.EOF());
            } else {
                tokeniser.emit(characterReader.consumeTo((char) 0));
            }
        }
    }

    private static final class TagOpenTS extends TokeniserState {
        private TagOpenTS() {
        }

        public String toString() {
            return "TagOpen";
        }

        @Override // com.itextpdf.styledxmlparser.jsoup.parser.TokeniserState
        void read(Tokeniser tokeniser, CharacterReader characterReader) {
            char cCurrent = characterReader.current();
            if (cCurrent == '!') {
                tokeniser.advanceTransition(MarkupDeclarationOpen);
                return;
            }
            if (cCurrent == '/') {
                tokeniser.advanceTransition(EndTagOpen);
                return;
            }
            if (cCurrent == '?') {
                tokeniser.createBogusCommentPending();
                tokeniser.advanceTransition(BogusComment);
            } else if (characterReader.matchesLetter()) {
                tokeniser.createTagPending(true);
                tokeniser.transition(TagName);
            } else {
                tokeniser.error(this);
                tokeniser.emit(Typography.less);
                tokeniser.transition(Data);
            }
        }
    }

    private static final class EndTagOpenTS extends TokeniserState {
        private EndTagOpenTS() {
        }

        public String toString() {
            return "EndTagOpen";
        }

        @Override // com.itextpdf.styledxmlparser.jsoup.parser.TokeniserState
        void read(Tokeniser tokeniser, CharacterReader characterReader) {
            if (characterReader.isEmpty()) {
                tokeniser.eofError(this);
                tokeniser.emit("</");
                tokeniser.transition(Data);
            } else if (characterReader.matchesLetter()) {
                tokeniser.createTagPending(false);
                tokeniser.transition(TagName);
            } else if (characterReader.matches(Typography.greater)) {
                tokeniser.error(this);
                tokeniser.advanceTransition(Data);
            } else {
                tokeniser.error(this);
                tokeniser.createBogusCommentPending();
                tokeniser.advanceTransition(BogusComment);
            }
        }
    }

    private static final class TagNameTS extends TokeniserState {
        private TagNameTS() {
        }

        public String toString() {
            return "TagName";
        }

        @Override // com.itextpdf.styledxmlparser.jsoup.parser.TokeniserState
        void read(Tokeniser tokeniser, CharacterReader characterReader) {
            tokeniser.tagPending.appendTagName(characterReader.consumeTagName());
            char cConsume = characterReader.consume();
            if (cConsume == 0) {
                tokeniser.tagPending.appendTagName(TokeniserState.replacementStr);
                return;
            }
            if (cConsume != ' ') {
                if (cConsume == '/') {
                    tokeniser.transition(SelfClosingStartTag);
                    return;
                }
                if (cConsume == '<') {
                    characterReader.unconsume();
                    tokeniser.error(this);
                } else if (cConsume != '>') {
                    if (cConsume == 65535) {
                        tokeniser.eofError(this);
                        tokeniser.transition(Data);
                        return;
                    } else if (cConsume != '\t' && cConsume != '\n' && cConsume != '\f' && cConsume != '\r') {
                        tokeniser.tagPending.appendTagName(cConsume);
                        return;
                    }
                }
                tokeniser.emitTagPending();
                tokeniser.transition(Data);
                return;
            }
            tokeniser.transition(BeforeAttributeName);
        }
    }

    private static final class RcDataLessThanSignTS extends TokeniserState {
        private RcDataLessThanSignTS() {
        }

        public String toString() {
            return "RcdataLessthanSign";
        }

        @Override // com.itextpdf.styledxmlparser.jsoup.parser.TokeniserState
        void read(Tokeniser tokeniser, CharacterReader characterReader) {
            if (characterReader.matches('/')) {
                tokeniser.createTempBuffer();
                tokeniser.advanceTransition(RCDATAEndTagOpen);
            } else if (characterReader.matchesLetter() && tokeniser.appropriateEndTagName() != null && !characterReader.containsIgnoreCase("</" + tokeniser.appropriateEndTagName())) {
                tokeniser.tagPending = tokeniser.createTagPending(false).name(tokeniser.appropriateEndTagName());
                tokeniser.emitTagPending();
                tokeniser.transition(TagOpen);
            } else {
                tokeniser.emit("<");
                tokeniser.transition(Rcdata);
            }
        }
    }

    private static final class RcDataEndTagOpenTS extends TokeniserState {
        private RcDataEndTagOpenTS() {
        }

        public String toString() {
            return "RCDATAEndTagOpen";
        }

        @Override // com.itextpdf.styledxmlparser.jsoup.parser.TokeniserState
        void read(Tokeniser tokeniser, CharacterReader characterReader) {
            if (characterReader.matchesLetter()) {
                tokeniser.createTagPending(false);
                tokeniser.tagPending.appendTagName(characterReader.current());
                tokeniser.dataBuffer.append(characterReader.current());
                tokeniser.advanceTransition(RCDATAEndTagName);
                return;
            }
            tokeniser.emit("</");
            tokeniser.transition(Rcdata);
        }
    }

    private static final class RcDataEndTagNameTS extends TokeniserState {
        private RcDataEndTagNameTS() {
        }

        public String toString() {
            return "RCDATAEndTagName";
        }

        @Override // com.itextpdf.styledxmlparser.jsoup.parser.TokeniserState
        void read(Tokeniser tokeniser, CharacterReader characterReader) {
            if (characterReader.matchesLetter()) {
                String strConsumeLetterSequence = characterReader.consumeLetterSequence();
                tokeniser.tagPending.appendTagName(strConsumeLetterSequence);
                tokeniser.dataBuffer.append(strConsumeLetterSequence);
                return;
            }
            char cConsume = characterReader.consume();
            if (cConsume == '\t' || cConsume == '\n' || cConsume == '\f' || cConsume == '\r' || cConsume == ' ') {
                if (tokeniser.isAppropriateEndTagToken()) {
                    tokeniser.transition(BeforeAttributeName);
                    return;
                } else {
                    anythingElse(tokeniser, characterReader);
                    return;
                }
            }
            if (cConsume == '/') {
                if (tokeniser.isAppropriateEndTagToken()) {
                    tokeniser.transition(SelfClosingStartTag);
                    return;
                } else {
                    anythingElse(tokeniser, characterReader);
                    return;
                }
            }
            if (cConsume == '>') {
                if (tokeniser.isAppropriateEndTagToken()) {
                    tokeniser.emitTagPending();
                    tokeniser.transition(Data);
                    return;
                } else {
                    anythingElse(tokeniser, characterReader);
                    return;
                }
            }
            anythingElse(tokeniser, characterReader);
        }

        private void anythingElse(Tokeniser tokeniser, CharacterReader characterReader) {
            tokeniser.emit("</");
            tokeniser.emit(tokeniser.dataBuffer);
            characterReader.unconsume();
            tokeniser.transition(Rcdata);
        }
    }

    private static final class RawTextLessThanSignTS extends TokeniserState {
        private RawTextLessThanSignTS() {
        }

        public String toString() {
            return "RawtextLessthanSign";
        }

        @Override // com.itextpdf.styledxmlparser.jsoup.parser.TokeniserState
        void read(Tokeniser tokeniser, CharacterReader characterReader) {
            if (characterReader.matches('/')) {
                tokeniser.createTempBuffer();
                tokeniser.advanceTransition(RawtextEndTagOpen);
            } else {
                tokeniser.emit(Typography.less);
                tokeniser.transition(Rawtext);
            }
        }
    }

    private static final class RawTextEndTagOpenTS extends TokeniserState {
        private RawTextEndTagOpenTS() {
        }

        public String toString() {
            return "RawtextEndTagOpen";
        }

        @Override // com.itextpdf.styledxmlparser.jsoup.parser.TokeniserState
        void read(Tokeniser tokeniser, CharacterReader characterReader) {
            TokeniserState.readEndTag(tokeniser, characterReader, RawtextEndTagName, Rawtext);
        }
    }

    private static final class RawTextEndTagNameTS extends TokeniserState {
        private RawTextEndTagNameTS() {
        }

        public String toString() {
            return "RawtextEndTagName";
        }

        @Override // com.itextpdf.styledxmlparser.jsoup.parser.TokeniserState
        void read(Tokeniser tokeniser, CharacterReader characterReader) {
            TokeniserState.handleDataEndTag(tokeniser, characterReader, Rawtext);
        }
    }

    private static final class ScriptDataLessThanSignTS extends TokeniserState {
        private ScriptDataLessThanSignTS() {
        }

        public String toString() {
            return "ScriptDataLessthanSign";
        }

        @Override // com.itextpdf.styledxmlparser.jsoup.parser.TokeniserState
        void read(Tokeniser tokeniser, CharacterReader characterReader) {
            char cConsume = characterReader.consume();
            if (cConsume == '!') {
                tokeniser.emit("<!");
                tokeniser.transition(ScriptDataEscapeStart);
                return;
            }
            if (cConsume == '/') {
                tokeniser.createTempBuffer();
                tokeniser.transition(ScriptDataEndTagOpen);
            } else if (cConsume == 65535) {
                tokeniser.emit("<");
                tokeniser.eofError(this);
                tokeniser.transition(Data);
            } else {
                tokeniser.emit("<");
                characterReader.unconsume();
                tokeniser.transition(ScriptData);
            }
        }
    }

    private static final class ScriptDataEndTagOpenTS extends TokeniserState {
        private ScriptDataEndTagOpenTS() {
        }

        public String toString() {
            return "ScriptDataEndTagOpen";
        }

        @Override // com.itextpdf.styledxmlparser.jsoup.parser.TokeniserState
        void read(Tokeniser tokeniser, CharacterReader characterReader) {
            TokeniserState.readEndTag(tokeniser, characterReader, ScriptDataEndTagName, ScriptData);
        }
    }

    private static final class ScriptDataEndTagNameTS extends TokeniserState {
        private ScriptDataEndTagNameTS() {
        }

        public String toString() {
            return "ScriptDataEndTagName";
        }

        @Override // com.itextpdf.styledxmlparser.jsoup.parser.TokeniserState
        void read(Tokeniser tokeniser, CharacterReader characterReader) {
            TokeniserState.handleDataEndTag(tokeniser, characterReader, ScriptData);
        }
    }

    private static final class ScriptDataEscapeStartTS extends TokeniserState {
        private ScriptDataEscapeStartTS() {
        }

        public String toString() {
            return "ScriptDataEscapeStart";
        }

        @Override // com.itextpdf.styledxmlparser.jsoup.parser.TokeniserState
        void read(Tokeniser tokeniser, CharacterReader characterReader) {
            if (characterReader.matches(SignatureVisitor.SUPER)) {
                tokeniser.emit(SignatureVisitor.SUPER);
                tokeniser.advanceTransition(ScriptDataEscapeStartDash);
            } else {
                tokeniser.transition(ScriptData);
            }
        }
    }

    private static final class ScriptDataEscapeStartDashTS extends TokeniserState {
        private ScriptDataEscapeStartDashTS() {
        }

        public String toString() {
            return "ScriptDataEscapeStartDash";
        }

        @Override // com.itextpdf.styledxmlparser.jsoup.parser.TokeniserState
        void read(Tokeniser tokeniser, CharacterReader characterReader) {
            if (characterReader.matches(SignatureVisitor.SUPER)) {
                tokeniser.emit(SignatureVisitor.SUPER);
                tokeniser.advanceTransition(ScriptDataEscapedDashDash);
            } else {
                tokeniser.transition(ScriptData);
            }
        }
    }

    private static final class ScriptDataEscapedTS extends TokeniserState {
        private ScriptDataEscapedTS() {
        }

        public String toString() {
            return "ScriptDataEscaped";
        }

        @Override // com.itextpdf.styledxmlparser.jsoup.parser.TokeniserState
        void read(Tokeniser tokeniser, CharacterReader characterReader) {
            if (characterReader.isEmpty()) {
                tokeniser.eofError(this);
                tokeniser.transition(Data);
                return;
            }
            char cCurrent = characterReader.current();
            if (cCurrent == 0) {
                tokeniser.error(this);
                characterReader.advance();
                tokeniser.emit((char) 65533);
            } else if (cCurrent == '-') {
                tokeniser.emit(SignatureVisitor.SUPER);
                tokeniser.advanceTransition(ScriptDataEscapedDash);
            } else if (cCurrent == '<') {
                tokeniser.advanceTransition(ScriptDataEscapedLessthanSign);
            } else {
                tokeniser.emit(characterReader.consumeToAny(SignatureVisitor.SUPER, Typography.less, 0));
            }
        }
    }

    private static final class ScriptDataEscapedDashTS extends TokeniserState {
        private ScriptDataEscapedDashTS() {
        }

        public String toString() {
            return "ScriptDataEscapedDash";
        }

        @Override // com.itextpdf.styledxmlparser.jsoup.parser.TokeniserState
        void read(Tokeniser tokeniser, CharacterReader characterReader) {
            if (characterReader.isEmpty()) {
                tokeniser.eofError(this);
                tokeniser.transition(Data);
                return;
            }
            char cConsume = characterReader.consume();
            if (cConsume == 0) {
                tokeniser.error(this);
                tokeniser.emit((char) 65533);
                tokeniser.transition(ScriptDataEscaped);
            } else if (cConsume == '-') {
                tokeniser.emit(cConsume);
                tokeniser.transition(ScriptDataEscapedDashDash);
            } else if (cConsume == '<') {
                tokeniser.transition(ScriptDataEscapedLessthanSign);
            } else {
                tokeniser.emit(cConsume);
                tokeniser.transition(ScriptDataEscaped);
            }
        }
    }

    private static final class ScriptDataEscapedDashDashTS extends TokeniserState {
        private ScriptDataEscapedDashDashTS() {
        }

        public String toString() {
            return "ScriptDataEscapedDashDash";
        }

        @Override // com.itextpdf.styledxmlparser.jsoup.parser.TokeniserState
        void read(Tokeniser tokeniser, CharacterReader characterReader) {
            if (characterReader.isEmpty()) {
                tokeniser.eofError(this);
                tokeniser.transition(Data);
                return;
            }
            char cConsume = characterReader.consume();
            if (cConsume == 0) {
                tokeniser.error(this);
                tokeniser.emit((char) 65533);
                tokeniser.transition(ScriptDataEscaped);
            } else {
                if (cConsume == '-') {
                    tokeniser.emit(cConsume);
                    return;
                }
                if (cConsume == '<') {
                    tokeniser.transition(ScriptDataEscapedLessthanSign);
                } else if (cConsume == '>') {
                    tokeniser.emit(cConsume);
                    tokeniser.transition(ScriptData);
                } else {
                    tokeniser.emit(cConsume);
                    tokeniser.transition(ScriptDataEscaped);
                }
            }
        }
    }

    private static final class ScriptDataEscapedLessThanSignTS extends TokeniserState {
        private ScriptDataEscapedLessThanSignTS() {
        }

        public String toString() {
            return "ScriptDataEscapedLessthanSign";
        }

        @Override // com.itextpdf.styledxmlparser.jsoup.parser.TokeniserState
        void read(Tokeniser tokeniser, CharacterReader characterReader) {
            if (characterReader.matchesLetter()) {
                tokeniser.createTempBuffer();
                tokeniser.dataBuffer.append(characterReader.current());
                tokeniser.emit("<");
                tokeniser.emit(characterReader.current());
                tokeniser.advanceTransition(ScriptDataDoubleEscapeStart);
                return;
            }
            if (characterReader.matches('/')) {
                tokeniser.createTempBuffer();
                tokeniser.advanceTransition(ScriptDataEscapedEndTagOpen);
            } else {
                tokeniser.emit(Typography.less);
                tokeniser.transition(ScriptDataEscaped);
            }
        }
    }

    private static final class ScriptDataEscapedEndTagOpenTS extends TokeniserState {
        private ScriptDataEscapedEndTagOpenTS() {
        }

        public String toString() {
            return "ScriptDataEscapedEndTagOpen";
        }

        @Override // com.itextpdf.styledxmlparser.jsoup.parser.TokeniserState
        void read(Tokeniser tokeniser, CharacterReader characterReader) {
            if (characterReader.matchesLetter()) {
                tokeniser.createTagPending(false);
                tokeniser.tagPending.appendTagName(characterReader.current());
                tokeniser.dataBuffer.append(characterReader.current());
                tokeniser.advanceTransition(ScriptDataEscapedEndTagName);
                return;
            }
            tokeniser.emit("</");
            tokeniser.transition(ScriptDataEscaped);
        }
    }

    private static final class ScriptDataEscapedEndTagNameTS extends TokeniserState {
        private ScriptDataEscapedEndTagNameTS() {
        }

        public String toString() {
            return "ScriptDataEscapedEndTagName";
        }

        @Override // com.itextpdf.styledxmlparser.jsoup.parser.TokeniserState
        void read(Tokeniser tokeniser, CharacterReader characterReader) {
            TokeniserState.handleDataEndTag(tokeniser, characterReader, ScriptDataEscaped);
        }
    }

    private static final class ScriptDataDoubleEscapeStartTS extends TokeniserState {
        private ScriptDataDoubleEscapeStartTS() {
        }

        public String toString() {
            return "ScriptDataDoubleEscapeStart";
        }

        @Override // com.itextpdf.styledxmlparser.jsoup.parser.TokeniserState
        void read(Tokeniser tokeniser, CharacterReader characterReader) {
            TokeniserState.handleDataDoubleEscapeTag(tokeniser, characterReader, ScriptDataDoubleEscaped, ScriptDataEscaped);
        }
    }

    private static final class ScriptDataDoubleEscapedTS extends TokeniserState {
        private ScriptDataDoubleEscapedTS() {
        }

        public String toString() {
            return "ScriptDataDoubleEscaped";
        }

        @Override // com.itextpdf.styledxmlparser.jsoup.parser.TokeniserState
        void read(Tokeniser tokeniser, CharacterReader characterReader) {
            char cCurrent = characterReader.current();
            if (cCurrent == 0) {
                tokeniser.error(this);
                characterReader.advance();
                tokeniser.emit((char) 65533);
            } else if (cCurrent == '-') {
                tokeniser.emit(cCurrent);
                tokeniser.advanceTransition(ScriptDataDoubleEscapedDash);
            } else if (cCurrent == '<') {
                tokeniser.emit(cCurrent);
                tokeniser.advanceTransition(ScriptDataDoubleEscapedLessthanSign);
            } else if (cCurrent == 65535) {
                tokeniser.eofError(this);
                tokeniser.transition(Data);
            } else {
                tokeniser.emit(characterReader.consumeToAny(SignatureVisitor.SUPER, Typography.less, 0));
            }
        }
    }

    private static final class ScriptDataDoubleEscapedDashTS extends TokeniserState {
        private ScriptDataDoubleEscapedDashTS() {
        }

        public String toString() {
            return "ScriptDataDoubleEscapedDash";
        }

        @Override // com.itextpdf.styledxmlparser.jsoup.parser.TokeniserState
        void read(Tokeniser tokeniser, CharacterReader characterReader) {
            char cConsume = characterReader.consume();
            if (cConsume == 0) {
                tokeniser.error(this);
                tokeniser.emit((char) 65533);
                tokeniser.transition(ScriptDataDoubleEscaped);
            } else if (cConsume == '-') {
                tokeniser.emit(cConsume);
                tokeniser.transition(ScriptDataDoubleEscapedDashDash);
            } else if (cConsume == '<') {
                tokeniser.emit(cConsume);
                tokeniser.transition(ScriptDataDoubleEscapedLessthanSign);
            } else if (cConsume == 65535) {
                tokeniser.eofError(this);
                tokeniser.transition(Data);
            } else {
                tokeniser.emit(cConsume);
                tokeniser.transition(ScriptDataDoubleEscaped);
            }
        }
    }

    private static final class ScriptDataDoubleEscapedDashDashTS extends TokeniserState {
        private ScriptDataDoubleEscapedDashDashTS() {
        }

        public String toString() {
            return "ScriptDataDoubleEscapedDashDash";
        }

        @Override // com.itextpdf.styledxmlparser.jsoup.parser.TokeniserState
        void read(Tokeniser tokeniser, CharacterReader characterReader) {
            char cConsume = characterReader.consume();
            if (cConsume == 0) {
                tokeniser.error(this);
                tokeniser.emit((char) 65533);
                tokeniser.transition(ScriptDataDoubleEscaped);
                return;
            }
            if (cConsume == '-') {
                tokeniser.emit(cConsume);
                return;
            }
            if (cConsume == '<') {
                tokeniser.emit(cConsume);
                tokeniser.transition(ScriptDataDoubleEscapedLessthanSign);
            } else if (cConsume == '>') {
                tokeniser.emit(cConsume);
                tokeniser.transition(ScriptData);
            } else if (cConsume == 65535) {
                tokeniser.eofError(this);
                tokeniser.transition(Data);
            } else {
                tokeniser.emit(cConsume);
                tokeniser.transition(ScriptDataDoubleEscaped);
            }
        }
    }

    private static final class ScriptDataDoubleEscapedLessThanSignTS extends TokeniserState {
        private ScriptDataDoubleEscapedLessThanSignTS() {
        }

        public String toString() {
            return "ScriptDataDoubleEscapedLessthanSign";
        }

        @Override // com.itextpdf.styledxmlparser.jsoup.parser.TokeniserState
        void read(Tokeniser tokeniser, CharacterReader characterReader) {
            if (characterReader.matches('/')) {
                tokeniser.emit('/');
                tokeniser.createTempBuffer();
                tokeniser.advanceTransition(ScriptDataDoubleEscapeEnd);
                return;
            }
            tokeniser.transition(ScriptDataDoubleEscaped);
        }
    }

    private static final class ScriptDataDoubleEscapeEndTS extends TokeniserState {
        private ScriptDataDoubleEscapeEndTS() {
        }

        public String toString() {
            return "ScriptDataDoubleEscapeEnd";
        }

        @Override // com.itextpdf.styledxmlparser.jsoup.parser.TokeniserState
        void read(Tokeniser tokeniser, CharacterReader characterReader) {
            TokeniserState.handleDataDoubleEscapeTag(tokeniser, characterReader, ScriptDataEscaped, ScriptDataDoubleEscaped);
        }
    }

    private static final class BeforeAttributeNameTS extends TokeniserState {
        private BeforeAttributeNameTS() {
        }

        public String toString() {
            return "BeforeAttributeName";
        }

        @Override // com.itextpdf.styledxmlparser.jsoup.parser.TokeniserState
        void read(Tokeniser tokeniser, CharacterReader characterReader) {
            char cConsume = characterReader.consume();
            if (cConsume == 0) {
                characterReader.unconsume();
                tokeniser.error(this);
                tokeniser.tagPending.newAttribute();
                tokeniser.transition(AttributeName);
                return;
            }
            if (cConsume != ' ') {
                if (cConsume != '\"' && cConsume != '\'') {
                    if (cConsume == '/') {
                        tokeniser.transition(SelfClosingStartTag);
                        return;
                    }
                    if (cConsume == 65535) {
                        tokeniser.eofError(this);
                        tokeniser.transition(Data);
                        return;
                    }
                    if (cConsume == '\t' || cConsume == '\n' || cConsume == '\f' || cConsume == '\r') {
                        return;
                    }
                    switch (cConsume) {
                        case '<':
                            characterReader.unconsume();
                            tokeniser.error(this);
                            break;
                        case '=':
                            break;
                        case '>':
                            break;
                        default:
                            tokeniser.tagPending.newAttribute();
                            characterReader.unconsume();
                            tokeniser.transition(AttributeName);
                            return;
                    }
                    tokeniser.emitTagPending();
                    tokeniser.transition(Data);
                    return;
                }
                tokeniser.error(this);
                tokeniser.tagPending.newAttribute();
                tokeniser.tagPending.appendAttributeName(cConsume);
                tokeniser.transition(AttributeName);
            }
        }
    }

    private static final class AttributeNameTS extends TokeniserState {
        private AttributeNameTS() {
        }

        public String toString() {
            return "AttributeName";
        }

        @Override // com.itextpdf.styledxmlparser.jsoup.parser.TokeniserState
        void read(Tokeniser tokeniser, CharacterReader characterReader) {
            tokeniser.tagPending.appendAttributeName(characterReader.consumeToAnySorted(attributeNameCharsSorted));
            char cConsume = characterReader.consume();
            if (cConsume != 0) {
                if (cConsume != ' ') {
                    if (cConsume != '\"' && cConsume != '\'') {
                        if (cConsume == '/') {
                            tokeniser.transition(SelfClosingStartTag);
                            return;
                        }
                        if (cConsume == 65535) {
                            tokeniser.eofError(this);
                            tokeniser.transition(Data);
                            return;
                        }
                        if (cConsume != '\t' && cConsume != '\n' && cConsume != '\f' && cConsume != '\r') {
                            switch (cConsume) {
                                case '<':
                                    break;
                                case '=':
                                    tokeniser.transition(BeforeAttributeValue);
                                    break;
                                case '>':
                                    tokeniser.emitTagPending();
                                    tokeniser.transition(Data);
                                    break;
                                default:
                                    tokeniser.tagPending.appendAttributeName(cConsume);
                                    break;
                            }
                        }
                    }
                    tokeniser.error(this);
                    tokeniser.tagPending.appendAttributeName(cConsume);
                    return;
                }
                tokeniser.transition(AfterAttributeName);
                return;
            }
            tokeniser.error(this);
            tokeniser.tagPending.appendAttributeName((char) 65533);
        }
    }

    private static final class AfterAttributeNameTS extends TokeniserState {
        private AfterAttributeNameTS() {
        }

        public String toString() {
            return "AfterAttributeName";
        }

        @Override // com.itextpdf.styledxmlparser.jsoup.parser.TokeniserState
        void read(Tokeniser tokeniser, CharacterReader characterReader) {
            char cConsume = characterReader.consume();
            if (cConsume == 0) {
                tokeniser.error(this);
                tokeniser.tagPending.appendAttributeName((char) 65533);
                tokeniser.transition(AttributeName);
                return;
            }
            if (cConsume != ' ') {
                if (cConsume != '\"' && cConsume != '\'') {
                    if (cConsume == '/') {
                        tokeniser.transition(SelfClosingStartTag);
                        return;
                    }
                    if (cConsume == 65535) {
                        tokeniser.eofError(this);
                        tokeniser.transition(Data);
                        return;
                    }
                    if (cConsume == '\t' || cConsume == '\n' || cConsume == '\f' || cConsume == '\r') {
                        return;
                    }
                    switch (cConsume) {
                        case '<':
                            break;
                        case '=':
                            tokeniser.transition(BeforeAttributeValue);
                            break;
                        case '>':
                            tokeniser.emitTagPending();
                            tokeniser.transition(Data);
                            break;
                        default:
                            tokeniser.tagPending.newAttribute();
                            characterReader.unconsume();
                            tokeniser.transition(AttributeName);
                            break;
                    }
                    return;
                }
                tokeniser.error(this);
                tokeniser.tagPending.newAttribute();
                tokeniser.tagPending.appendAttributeName(cConsume);
                tokeniser.transition(AttributeName);
            }
        }
    }

    private static final class BeforeAttributeValueTS extends TokeniserState {
        private BeforeAttributeValueTS() {
        }

        public String toString() {
            return "BeforeAttributeValue";
        }

        @Override // com.itextpdf.styledxmlparser.jsoup.parser.TokeniserState
        void read(Tokeniser tokeniser, CharacterReader characterReader) {
            char cConsume = characterReader.consume();
            if (cConsume == 0) {
                tokeniser.error(this);
                tokeniser.tagPending.appendAttributeValue((char) 65533);
                tokeniser.transition(AttributeValue_unquoted);
                return;
            }
            if (cConsume != ' ') {
                if (cConsume == '\"') {
                    tokeniser.transition(AttributeValue_doubleQuoted);
                    return;
                }
                if (cConsume != '`') {
                    if (cConsume == 65535) {
                        tokeniser.eofError(this);
                        tokeniser.emitTagPending();
                        tokeniser.transition(Data);
                        return;
                    }
                    if (cConsume == '\t' || cConsume == '\n' || cConsume == '\f' || cConsume == '\r') {
                        return;
                    }
                    if (cConsume == '&') {
                        characterReader.unconsume();
                        tokeniser.transition(AttributeValue_unquoted);
                        return;
                    }
                    if (cConsume == '\'') {
                        tokeniser.transition(AttributeValue_singleQuoted);
                        return;
                    }
                    switch (cConsume) {
                        case '<':
                        case '=':
                            break;
                        case '>':
                            tokeniser.error(this);
                            tokeniser.emitTagPending();
                            tokeniser.transition(Data);
                            break;
                        default:
                            characterReader.unconsume();
                            tokeniser.transition(AttributeValue_unquoted);
                            break;
                    }
                    return;
                }
                tokeniser.error(this);
                tokeniser.tagPending.appendAttributeValue(cConsume);
                tokeniser.transition(AttributeValue_unquoted);
            }
        }
    }

    private static final class AttributeValueDoubleQuotedTS extends TokeniserState {
        private AttributeValueDoubleQuotedTS() {
        }

        public String toString() {
            return "AttributeValue_doubleQuoted";
        }

        @Override // com.itextpdf.styledxmlparser.jsoup.parser.TokeniserState
        void read(Tokeniser tokeniser, CharacterReader characterReader) {
            String strConsumeAttributeQuoted = characterReader.consumeAttributeQuoted(false);
            if (strConsumeAttributeQuoted.length() > 0) {
                tokeniser.tagPending.appendAttributeValue(strConsumeAttributeQuoted);
            } else {
                tokeniser.tagPending.setEmptyAttributeValue();
            }
            char cConsume = characterReader.consume();
            if (cConsume == 0) {
                tokeniser.error(this);
                tokeniser.tagPending.appendAttributeValue((char) 65533);
                return;
            }
            if (cConsume == '\"') {
                tokeniser.transition(AfterAttributeValue_quoted);
                return;
            }
            if (cConsume != '&') {
                if (cConsume == 65535) {
                    tokeniser.eofError(this);
                    tokeniser.transition(Data);
                    return;
                } else {
                    tokeniser.tagPending.appendAttributeValue(cConsume);
                    return;
                }
            }
            int[] iArrConsumeCharacterReference = tokeniser.consumeCharacterReference(Character.valueOf(Typography.quote), true);
            if (iArrConsumeCharacterReference != null) {
                tokeniser.tagPending.appendAttributeValue(iArrConsumeCharacterReference);
            } else {
                tokeniser.tagPending.appendAttributeValue(Typography.amp);
            }
        }
    }

    private static final class AttributeValueSingleQuotedTS extends TokeniserState {
        private AttributeValueSingleQuotedTS() {
        }

        public String toString() {
            return "AttributeValue_singleQuoted";
        }

        @Override // com.itextpdf.styledxmlparser.jsoup.parser.TokeniserState
        void read(Tokeniser tokeniser, CharacterReader characterReader) {
            String strConsumeAttributeQuoted = characterReader.consumeAttributeQuoted(true);
            if (strConsumeAttributeQuoted.length() > 0) {
                tokeniser.tagPending.appendAttributeValue(strConsumeAttributeQuoted);
            } else {
                tokeniser.tagPending.setEmptyAttributeValue();
            }
            char cConsume = characterReader.consume();
            if (cConsume == 0) {
                tokeniser.error(this);
                tokeniser.tagPending.appendAttributeValue((char) 65533);
                return;
            }
            if (cConsume == 65535) {
                tokeniser.eofError(this);
                tokeniser.transition(Data);
                return;
            }
            if (cConsume != '&') {
                if (cConsume == '\'') {
                    tokeniser.transition(AfterAttributeValue_quoted);
                    return;
                } else {
                    tokeniser.tagPending.appendAttributeValue(cConsume);
                    return;
                }
            }
            int[] iArrConsumeCharacterReference = tokeniser.consumeCharacterReference('\'', true);
            if (iArrConsumeCharacterReference != null) {
                tokeniser.tagPending.appendAttributeValue(iArrConsumeCharacterReference);
            } else {
                tokeniser.tagPending.appendAttributeValue(Typography.amp);
            }
        }
    }

    private static final class AttributeValueUnquotedTS extends TokeniserState {
        private AttributeValueUnquotedTS() {
        }

        public String toString() {
            return "AttributeValue_unquoted";
        }

        @Override // com.itextpdf.styledxmlparser.jsoup.parser.TokeniserState
        void read(Tokeniser tokeniser, CharacterReader characterReader) {
            String strConsumeToAnySorted = characterReader.consumeToAnySorted(attributeValueUnquoted);
            if (strConsumeToAnySorted.length() > 0) {
                tokeniser.tagPending.appendAttributeValue(strConsumeToAnySorted);
            }
            char cConsume = characterReader.consume();
            if (cConsume != 0) {
                if (cConsume != ' ') {
                    if (cConsume != '\"' && cConsume != '`') {
                        if (cConsume == 65535) {
                            tokeniser.eofError(this);
                            tokeniser.transition(Data);
                            return;
                        }
                        if (cConsume != '\t' && cConsume != '\n' && cConsume != '\f' && cConsume != '\r') {
                            if (cConsume == '&') {
                                int[] iArrConsumeCharacterReference = tokeniser.consumeCharacterReference(Character.valueOf(Typography.greater), true);
                                if (iArrConsumeCharacterReference != null) {
                                    tokeniser.tagPending.appendAttributeValue(iArrConsumeCharacterReference);
                                    return;
                                } else {
                                    tokeniser.tagPending.appendAttributeValue(Typography.amp);
                                    return;
                                }
                            }
                            if (cConsume != '\'') {
                                switch (cConsume) {
                                    case '<':
                                    case '=':
                                        break;
                                    case '>':
                                        tokeniser.emitTagPending();
                                        tokeniser.transition(Data);
                                        break;
                                    default:
                                        tokeniser.tagPending.appendAttributeValue(cConsume);
                                        break;
                                }
                            }
                        }
                    }
                    tokeniser.error(this);
                    tokeniser.tagPending.appendAttributeValue(cConsume);
                    return;
                }
                tokeniser.transition(BeforeAttributeName);
                return;
            }
            tokeniser.error(this);
            tokeniser.tagPending.appendAttributeValue((char) 65533);
        }
    }

    private static final class AfterAttributeValueQuotedTS extends TokeniserState {
        private AfterAttributeValueQuotedTS() {
        }

        public String toString() {
            return "AfterAttributeValue_quoted";
        }

        @Override // com.itextpdf.styledxmlparser.jsoup.parser.TokeniserState
        void read(Tokeniser tokeniser, CharacterReader characterReader) {
            char cConsume = characterReader.consume();
            if (cConsume == '\t' || cConsume == '\n' || cConsume == '\f' || cConsume == '\r' || cConsume == ' ') {
                tokeniser.transition(BeforeAttributeName);
                return;
            }
            if (cConsume == '/') {
                tokeniser.transition(SelfClosingStartTag);
                return;
            }
            if (cConsume == '>') {
                tokeniser.emitTagPending();
                tokeniser.transition(Data);
            } else if (cConsume == 65535) {
                tokeniser.eofError(this);
                tokeniser.transition(Data);
            } else {
                characterReader.unconsume();
                tokeniser.error(this);
                tokeniser.transition(BeforeAttributeName);
            }
        }
    }

    private static final class SelfClosingStartTagTS extends TokeniserState {
        private SelfClosingStartTagTS() {
        }

        public String toString() {
            return "SelfClosingStartTag";
        }

        @Override // com.itextpdf.styledxmlparser.jsoup.parser.TokeniserState
        void read(Tokeniser tokeniser, CharacterReader characterReader) {
            char cConsume = characterReader.consume();
            if (cConsume == '>') {
                tokeniser.tagPending.selfClosing = true;
                tokeniser.emitTagPending();
                tokeniser.transition(Data);
            } else if (cConsume == 65535) {
                tokeniser.eofError(this);
                tokeniser.transition(Data);
            } else {
                characterReader.unconsume();
                tokeniser.error(this);
                tokeniser.transition(BeforeAttributeName);
            }
        }
    }

    private static final class BogusCommentTS extends TokeniserState {
        private BogusCommentTS() {
        }

        public String toString() {
            return "BogusComment";
        }

        @Override // com.itextpdf.styledxmlparser.jsoup.parser.TokeniserState
        void read(Tokeniser tokeniser, CharacterReader characterReader) {
            characterReader.unconsume();
            tokeniser.commentPending.append(characterReader.consumeTo(Typography.greater));
            char cConsume = characterReader.consume();
            if (cConsume == '>' || cConsume == 65535) {
                tokeniser.emitCommentPending();
                tokeniser.transition(Data);
            }
        }
    }

    private static final class MarkupDeclarationOpenTS extends TokeniserState {
        private MarkupDeclarationOpenTS() {
        }

        public String toString() {
            return "MarkupDeclarationOpen";
        }

        @Override // com.itextpdf.styledxmlparser.jsoup.parser.TokeniserState
        void read(Tokeniser tokeniser, CharacterReader characterReader) {
            if (characterReader.matchConsume("--")) {
                tokeniser.createCommentPending();
                tokeniser.transition(CommentStart);
            } else {
                if (characterReader.matchConsumeIgnoreCase("DOCTYPE")) {
                    tokeniser.transition(Doctype);
                    return;
                }
                if (characterReader.matchConsume("[CDATA[")) {
                    tokeniser.createTempBuffer();
                    tokeniser.transition(CdataSection);
                } else {
                    tokeniser.error(this);
                    tokeniser.createBogusCommentPending();
                    tokeniser.advanceTransition(BogusComment);
                }
            }
        }
    }

    private static final class CommentStartTS extends TokeniserState {
        private CommentStartTS() {
        }

        public String toString() {
            return "CommentStart";
        }

        @Override // com.itextpdf.styledxmlparser.jsoup.parser.TokeniserState
        void read(Tokeniser tokeniser, CharacterReader characterReader) {
            char cConsume = characterReader.consume();
            if (cConsume == 0) {
                tokeniser.error(this);
                tokeniser.commentPending.append((char) 65533);
                tokeniser.transition(Comment);
                return;
            }
            if (cConsume == '-') {
                tokeniser.transition(CommentStartDash);
                return;
            }
            if (cConsume == '>') {
                tokeniser.error(this);
                tokeniser.emitCommentPending();
                tokeniser.transition(Data);
            } else if (cConsume == 65535) {
                tokeniser.eofError(this);
                tokeniser.emitCommentPending();
                tokeniser.transition(Data);
            } else {
                characterReader.unconsume();
                tokeniser.transition(Comment);
            }
        }
    }

    private static final class CommentStartDashTS extends TokeniserState {
        private CommentStartDashTS() {
        }

        public String toString() {
            return "CommentStartDash";
        }

        @Override // com.itextpdf.styledxmlparser.jsoup.parser.TokeniserState
        void read(Tokeniser tokeniser, CharacterReader characterReader) {
            char cConsume = characterReader.consume();
            if (cConsume == 0) {
                tokeniser.error(this);
                tokeniser.commentPending.append((char) 65533);
                tokeniser.transition(Comment);
                return;
            }
            if (cConsume == '-') {
                tokeniser.transition(CommentStartDash);
                return;
            }
            if (cConsume == '>') {
                tokeniser.error(this);
                tokeniser.emitCommentPending();
                tokeniser.transition(Data);
            } else if (cConsume == 65535) {
                tokeniser.eofError(this);
                tokeniser.emitCommentPending();
                tokeniser.transition(Data);
            } else {
                tokeniser.commentPending.append(cConsume);
                tokeniser.transition(Comment);
            }
        }
    }

    private static final class CommentTS extends TokeniserState {
        private CommentTS() {
        }

        public String toString() {
            return "Comment";
        }

        @Override // com.itextpdf.styledxmlparser.jsoup.parser.TokeniserState
        void read(Tokeniser tokeniser, CharacterReader characterReader) {
            char cCurrent = characterReader.current();
            if (cCurrent == 0) {
                tokeniser.error(this);
                characterReader.advance();
                tokeniser.commentPending.append((char) 65533);
            } else if (cCurrent == '-') {
                tokeniser.advanceTransition(CommentEndDash);
            } else {
                if (cCurrent == 65535) {
                    tokeniser.eofError(this);
                    tokeniser.emitCommentPending();
                    tokeniser.transition(Data);
                    return;
                }
                tokeniser.commentPending.append(characterReader.consumeToAny(SignatureVisitor.SUPER, 0));
            }
        }
    }

    private static final class CommentEndDashTS extends TokeniserState {
        private CommentEndDashTS() {
        }

        public String toString() {
            return "CommentEndDash";
        }

        @Override // com.itextpdf.styledxmlparser.jsoup.parser.TokeniserState
        void read(Tokeniser tokeniser, CharacterReader characterReader) {
            char cConsume = characterReader.consume();
            if (cConsume == 0) {
                tokeniser.error(this);
                tokeniser.commentPending.append(SignatureVisitor.SUPER).append((char) 65533);
                tokeniser.transition(Comment);
            } else {
                if (cConsume == '-') {
                    tokeniser.transition(CommentEnd);
                    return;
                }
                if (cConsume == 65535) {
                    tokeniser.eofError(this);
                    tokeniser.emitCommentPending();
                    tokeniser.transition(Data);
                } else {
                    tokeniser.commentPending.append(SignatureVisitor.SUPER).append(cConsume);
                    tokeniser.transition(Comment);
                }
            }
        }
    }

    private static final class CommentEndTS extends TokeniserState {
        private CommentEndTS() {
        }

        public String toString() {
            return "CommentEnd";
        }

        @Override // com.itextpdf.styledxmlparser.jsoup.parser.TokeniserState
        void read(Tokeniser tokeniser, CharacterReader characterReader) {
            char cConsume = characterReader.consume();
            if (cConsume == 0) {
                tokeniser.error(this);
                tokeniser.commentPending.append("--").append((char) 65533);
                tokeniser.transition(Comment);
                return;
            }
            if (cConsume == '!') {
                tokeniser.error(this);
                tokeniser.transition(CommentEndBang);
                return;
            }
            if (cConsume == '-') {
                tokeniser.error(this);
                tokeniser.commentPending.append(SignatureVisitor.SUPER);
                return;
            }
            if (cConsume == '>') {
                tokeniser.emitCommentPending();
                tokeniser.transition(Data);
            } else if (cConsume == 65535) {
                tokeniser.eofError(this);
                tokeniser.emitCommentPending();
                tokeniser.transition(Data);
            } else {
                tokeniser.error(this);
                tokeniser.commentPending.append("--").append(cConsume);
                tokeniser.transition(Comment);
            }
        }
    }

    private static final class CommentEndBangTS extends TokeniserState {
        private CommentEndBangTS() {
        }

        public String toString() {
            return "CommentEndBang";
        }

        @Override // com.itextpdf.styledxmlparser.jsoup.parser.TokeniserState
        void read(Tokeniser tokeniser, CharacterReader characterReader) {
            char cConsume = characterReader.consume();
            if (cConsume == 0) {
                tokeniser.error(this);
                tokeniser.commentPending.append("--!").append((char) 65533);
                tokeniser.transition(Comment);
                return;
            }
            if (cConsume == '-') {
                tokeniser.commentPending.append("--!");
                tokeniser.transition(CommentEndDash);
                return;
            }
            if (cConsume == '>') {
                tokeniser.emitCommentPending();
                tokeniser.transition(Data);
            } else if (cConsume != 65535) {
                tokeniser.commentPending.append("--!").append(cConsume);
                tokeniser.transition(Comment);
            } else {
                tokeniser.eofError(this);
                tokeniser.emitCommentPending();
                tokeniser.transition(Data);
            }
        }
    }

    private static final class DocTypeTS extends TokeniserState {
        private DocTypeTS() {
        }

        public String toString() {
            return "Doctype";
        }

        @Override // com.itextpdf.styledxmlparser.jsoup.parser.TokeniserState
        void read(Tokeniser tokeniser, CharacterReader characterReader) {
            char cConsume = characterReader.consume();
            if (cConsume == '\t' || cConsume == '\n' || cConsume == '\f' || cConsume == '\r' || cConsume == ' ') {
                tokeniser.transition(BeforeDoctypeName);
                return;
            }
            if (cConsume != '>') {
                if (cConsume == 65535) {
                    tokeniser.eofError(this);
                } else {
                    tokeniser.error(this);
                    tokeniser.transition(BeforeDoctypeName);
                    return;
                }
            }
            tokeniser.error(this);
            tokeniser.createDoctypePending();
            tokeniser.doctypePending.forceQuirks = true;
            tokeniser.emitDoctypePending();
            tokeniser.transition(Data);
        }
    }

    private static final class BeforeDocTypeNameTS extends TokeniserState {
        private BeforeDocTypeNameTS() {
        }

        public String toString() {
            return "BeforeDoctypeName";
        }

        @Override // com.itextpdf.styledxmlparser.jsoup.parser.TokeniserState
        void read(Tokeniser tokeniser, CharacterReader characterReader) {
            if (characterReader.matchesLetter()) {
                tokeniser.createDoctypePending();
                tokeniser.transition(DoctypeName);
                return;
            }
            char cConsume = characterReader.consume();
            if (cConsume == 0) {
                tokeniser.error(this);
                tokeniser.createDoctypePending();
                tokeniser.doctypePending.name.append((char) 65533);
                tokeniser.transition(DoctypeName);
                return;
            }
            if (cConsume != ' ') {
                if (cConsume == 65535) {
                    tokeniser.eofError(this);
                    tokeniser.createDoctypePending();
                    tokeniser.doctypePending.forceQuirks = true;
                    tokeniser.emitDoctypePending();
                    tokeniser.transition(Data);
                    return;
                }
                if (cConsume == '\t' || cConsume == '\n' || cConsume == '\f' || cConsume == '\r') {
                    return;
                }
                tokeniser.createDoctypePending();
                tokeniser.doctypePending.name.append(cConsume);
                tokeniser.transition(DoctypeName);
            }
        }
    }

    private static final class DocTypeNameTS extends TokeniserState {
        private DocTypeNameTS() {
        }

        public String toString() {
            return "DoctypeName";
        }

        @Override // com.itextpdf.styledxmlparser.jsoup.parser.TokeniserState
        void read(Tokeniser tokeniser, CharacterReader characterReader) {
            if (characterReader.matchesLetter()) {
                tokeniser.doctypePending.name.append(characterReader.consumeLetterSequence());
                return;
            }
            char cConsume = characterReader.consume();
            if (cConsume != 0) {
                if (cConsume != ' ') {
                    if (cConsume == '>') {
                        tokeniser.emitDoctypePending();
                        tokeniser.transition(Data);
                        return;
                    }
                    if (cConsume == 65535) {
                        tokeniser.eofError(this);
                        tokeniser.doctypePending.forceQuirks = true;
                        tokeniser.emitDoctypePending();
                        tokeniser.transition(Data);
                        return;
                    }
                    if (cConsume != '\t' && cConsume != '\n' && cConsume != '\f' && cConsume != '\r') {
                        tokeniser.doctypePending.name.append(cConsume);
                        return;
                    }
                }
                tokeniser.transition(AfterDoctypeName);
                return;
            }
            tokeniser.error(this);
            tokeniser.doctypePending.name.append((char) 65533);
        }
    }

    private static final class AfterDocTypeNameTS extends TokeniserState {
        private AfterDocTypeNameTS() {
        }

        public String toString() {
            return "AfterDoctypeName";
        }

        @Override // com.itextpdf.styledxmlparser.jsoup.parser.TokeniserState
        void read(Tokeniser tokeniser, CharacterReader characterReader) {
            if (characterReader.isEmpty()) {
                tokeniser.eofError(this);
                tokeniser.doctypePending.forceQuirks = true;
                tokeniser.emitDoctypePending();
                tokeniser.transition(Data);
                return;
            }
            if (characterReader.matchesAny('\t', '\n', CharUtils.f4765CR, '\f', ' ')) {
                characterReader.advance();
                return;
            }
            if (characterReader.matches(Typography.greater)) {
                tokeniser.emitDoctypePending();
                tokeniser.advanceTransition(Data);
                return;
            }
            if (characterReader.matchConsumeIgnoreCase(DocumentType.PUBLIC_KEY)) {
                tokeniser.doctypePending.pubSysKey = DocumentType.PUBLIC_KEY;
                tokeniser.transition(AfterDoctypePublicKeyword);
            } else if (characterReader.matchConsumeIgnoreCase(DocumentType.SYSTEM_KEY)) {
                tokeniser.doctypePending.pubSysKey = DocumentType.SYSTEM_KEY;
                tokeniser.transition(AfterDoctypeSystemKeyword);
            } else {
                tokeniser.error(this);
                tokeniser.doctypePending.forceQuirks = true;
                tokeniser.advanceTransition(BogusDoctype);
            }
        }
    }

    private static final class AfterDocTypePublicKeywordTS extends TokeniserState {
        private AfterDocTypePublicKeywordTS() {
        }

        public String toString() {
            return "AfterDoctypePublicKeyword";
        }

        @Override // com.itextpdf.styledxmlparser.jsoup.parser.TokeniserState
        void read(Tokeniser tokeniser, CharacterReader characterReader) {
            char cConsume = characterReader.consume();
            if (cConsume == '\t' || cConsume == '\n' || cConsume == '\f' || cConsume == '\r' || cConsume == ' ') {
                tokeniser.transition(BeforeDoctypePublicIdentifier);
                return;
            }
            if (cConsume == '\"') {
                tokeniser.error(this);
                tokeniser.transition(DoctypePublicIdentifier_doubleQuoted);
                return;
            }
            if (cConsume == '\'') {
                tokeniser.error(this);
                tokeniser.transition(DoctypePublicIdentifier_singleQuoted);
                return;
            }
            if (cConsume == '>') {
                tokeniser.error(this);
                tokeniser.doctypePending.forceQuirks = true;
                tokeniser.emitDoctypePending();
                tokeniser.transition(Data);
                return;
            }
            if (cConsume == 65535) {
                tokeniser.eofError(this);
                tokeniser.doctypePending.forceQuirks = true;
                tokeniser.emitDoctypePending();
                tokeniser.transition(Data);
                return;
            }
            tokeniser.error(this);
            tokeniser.doctypePending.forceQuirks = true;
            tokeniser.transition(BogusDoctype);
        }
    }

    private static final class BeforeDocTypePublicIdentifierTS extends TokeniserState {
        private BeforeDocTypePublicIdentifierTS() {
        }

        public String toString() {
            return "BeforeDoctypePublicIdentifier";
        }

        @Override // com.itextpdf.styledxmlparser.jsoup.parser.TokeniserState
        void read(Tokeniser tokeniser, CharacterReader characterReader) {
            char cConsume = characterReader.consume();
            if (cConsume == '\t' || cConsume == '\n' || cConsume == '\f' || cConsume == '\r' || cConsume == ' ') {
                return;
            }
            if (cConsume == '\"') {
                tokeniser.transition(DoctypePublicIdentifier_doubleQuoted);
                return;
            }
            if (cConsume == '\'') {
                tokeniser.transition(DoctypePublicIdentifier_singleQuoted);
                return;
            }
            if (cConsume == '>') {
                tokeniser.error(this);
                tokeniser.doctypePending.forceQuirks = true;
                tokeniser.emitDoctypePending();
                tokeniser.transition(Data);
                return;
            }
            if (cConsume == 65535) {
                tokeniser.eofError(this);
                tokeniser.doctypePending.forceQuirks = true;
                tokeniser.emitDoctypePending();
                tokeniser.transition(Data);
                return;
            }
            tokeniser.error(this);
            tokeniser.doctypePending.forceQuirks = true;
            tokeniser.transition(BogusDoctype);
        }
    }

    private static final class DocTypePublicIdentifierDoubleQuotedTS extends TokeniserState {
        private DocTypePublicIdentifierDoubleQuotedTS() {
        }

        public String toString() {
            return "DoctypePublicIdentifier_doubleQuoted";
        }

        @Override // com.itextpdf.styledxmlparser.jsoup.parser.TokeniserState
        void read(Tokeniser tokeniser, CharacterReader characterReader) {
            char cConsume = characterReader.consume();
            if (cConsume == 0) {
                tokeniser.error(this);
                tokeniser.doctypePending.publicIdentifier.append((char) 65533);
                return;
            }
            if (cConsume == '\"') {
                tokeniser.transition(AfterDoctypePublicIdentifier);
                return;
            }
            if (cConsume == '>') {
                tokeniser.error(this);
                tokeniser.doctypePending.forceQuirks = true;
                tokeniser.emitDoctypePending();
                tokeniser.transition(Data);
                return;
            }
            if (cConsume == 65535) {
                tokeniser.eofError(this);
                tokeniser.doctypePending.forceQuirks = true;
                tokeniser.emitDoctypePending();
                tokeniser.transition(Data);
                return;
            }
            tokeniser.doctypePending.publicIdentifier.append(cConsume);
        }
    }

    private static final class DocTypePublicIdentifierSingleQuotedTS extends TokeniserState {
        private DocTypePublicIdentifierSingleQuotedTS() {
        }

        public String toString() {
            return "DoctypePublicIdentifier_singleQuoted";
        }

        @Override // com.itextpdf.styledxmlparser.jsoup.parser.TokeniserState
        void read(Tokeniser tokeniser, CharacterReader characterReader) {
            char cConsume = characterReader.consume();
            if (cConsume == 0) {
                tokeniser.error(this);
                tokeniser.doctypePending.publicIdentifier.append((char) 65533);
                return;
            }
            if (cConsume == '\'') {
                tokeniser.transition(AfterDoctypePublicIdentifier);
                return;
            }
            if (cConsume == '>') {
                tokeniser.error(this);
                tokeniser.doctypePending.forceQuirks = true;
                tokeniser.emitDoctypePending();
                tokeniser.transition(Data);
                return;
            }
            if (cConsume == 65535) {
                tokeniser.eofError(this);
                tokeniser.doctypePending.forceQuirks = true;
                tokeniser.emitDoctypePending();
                tokeniser.transition(Data);
                return;
            }
            tokeniser.doctypePending.publicIdentifier.append(cConsume);
        }
    }

    private static final class AfterDocTypePublicIdentifierTS extends TokeniserState {
        private AfterDocTypePublicIdentifierTS() {
        }

        public String toString() {
            return "AfterDoctypePublicIdentifier";
        }

        @Override // com.itextpdf.styledxmlparser.jsoup.parser.TokeniserState
        void read(Tokeniser tokeniser, CharacterReader characterReader) {
            char cConsume = characterReader.consume();
            if (cConsume == '\t' || cConsume == '\n' || cConsume == '\f' || cConsume == '\r' || cConsume == ' ') {
                tokeniser.transition(BetweenDoctypePublicAndSystemIdentifiers);
                return;
            }
            if (cConsume == '\"') {
                tokeniser.error(this);
                tokeniser.transition(DoctypeSystemIdentifier_doubleQuoted);
                return;
            }
            if (cConsume == '\'') {
                tokeniser.error(this);
                tokeniser.transition(DoctypeSystemIdentifier_singleQuoted);
                return;
            }
            if (cConsume == '>') {
                tokeniser.emitDoctypePending();
                tokeniser.transition(Data);
            } else {
                if (cConsume == 65535) {
                    tokeniser.eofError(this);
                    tokeniser.doctypePending.forceQuirks = true;
                    tokeniser.emitDoctypePending();
                    tokeniser.transition(Data);
                    return;
                }
                tokeniser.error(this);
                tokeniser.doctypePending.forceQuirks = true;
                tokeniser.transition(BogusDoctype);
            }
        }
    }

    private static final class BetweenDocTypePublicAndSystemIdentifiersTS extends TokeniserState {
        private BetweenDocTypePublicAndSystemIdentifiersTS() {
        }

        public String toString() {
            return "BetweenDoctypePublicAndSystemIdentifiers";
        }

        @Override // com.itextpdf.styledxmlparser.jsoup.parser.TokeniserState
        void read(Tokeniser tokeniser, CharacterReader characterReader) {
            char cConsume = characterReader.consume();
            if (cConsume == '\t' || cConsume == '\n' || cConsume == '\f' || cConsume == '\r' || cConsume == ' ') {
                return;
            }
            if (cConsume == '\"') {
                tokeniser.error(this);
                tokeniser.transition(DoctypeSystemIdentifier_doubleQuoted);
                return;
            }
            if (cConsume == '\'') {
                tokeniser.error(this);
                tokeniser.transition(DoctypeSystemIdentifier_singleQuoted);
                return;
            }
            if (cConsume == '>') {
                tokeniser.emitDoctypePending();
                tokeniser.transition(Data);
            } else {
                if (cConsume == 65535) {
                    tokeniser.eofError(this);
                    tokeniser.doctypePending.forceQuirks = true;
                    tokeniser.emitDoctypePending();
                    tokeniser.transition(Data);
                    return;
                }
                tokeniser.error(this);
                tokeniser.doctypePending.forceQuirks = true;
                tokeniser.transition(BogusDoctype);
            }
        }
    }

    private static final class AfterDocTypeSystemKeywordTS extends TokeniserState {
        private AfterDocTypeSystemKeywordTS() {
        }

        public String toString() {
            return "AfterDoctypeSystemKeyword";
        }

        @Override // com.itextpdf.styledxmlparser.jsoup.parser.TokeniserState
        void read(Tokeniser tokeniser, CharacterReader characterReader) {
            char cConsume = characterReader.consume();
            if (cConsume == '\t' || cConsume == '\n' || cConsume == '\f' || cConsume == '\r' || cConsume == ' ') {
                tokeniser.transition(BeforeDoctypeSystemIdentifier);
                return;
            }
            if (cConsume == '\"') {
                tokeniser.error(this);
                tokeniser.transition(DoctypeSystemIdentifier_doubleQuoted);
                return;
            }
            if (cConsume == '\'') {
                tokeniser.error(this);
                tokeniser.transition(DoctypeSystemIdentifier_singleQuoted);
                return;
            }
            if (cConsume == '>') {
                tokeniser.error(this);
                tokeniser.doctypePending.forceQuirks = true;
                tokeniser.emitDoctypePending();
                tokeniser.transition(Data);
                return;
            }
            if (cConsume == 65535) {
                tokeniser.eofError(this);
                tokeniser.doctypePending.forceQuirks = true;
                tokeniser.emitDoctypePending();
                tokeniser.transition(Data);
                return;
            }
            tokeniser.error(this);
            tokeniser.doctypePending.forceQuirks = true;
            tokeniser.emitDoctypePending();
        }
    }

    private static final class BeforeDocTypeSystemIdentifierTS extends TokeniserState {
        private BeforeDocTypeSystemIdentifierTS() {
        }

        public String toString() {
            return "BeforeDoctypeSystemIdentifier";
        }

        @Override // com.itextpdf.styledxmlparser.jsoup.parser.TokeniserState
        void read(Tokeniser tokeniser, CharacterReader characterReader) {
            char cConsume = characterReader.consume();
            if (cConsume == '\t' || cConsume == '\n' || cConsume == '\f' || cConsume == '\r' || cConsume == ' ') {
                return;
            }
            if (cConsume == '\"') {
                tokeniser.transition(DoctypeSystemIdentifier_doubleQuoted);
                return;
            }
            if (cConsume == '\'') {
                tokeniser.transition(DoctypeSystemIdentifier_singleQuoted);
                return;
            }
            if (cConsume == '>') {
                tokeniser.error(this);
                tokeniser.doctypePending.forceQuirks = true;
                tokeniser.emitDoctypePending();
                tokeniser.transition(Data);
                return;
            }
            if (cConsume == 65535) {
                tokeniser.eofError(this);
                tokeniser.doctypePending.forceQuirks = true;
                tokeniser.emitDoctypePending();
                tokeniser.transition(Data);
                return;
            }
            tokeniser.error(this);
            tokeniser.doctypePending.forceQuirks = true;
            tokeniser.transition(BogusDoctype);
        }
    }

    private static final class DocTypeSystemIdentifierDoubleQuotedTS extends TokeniserState {
        private DocTypeSystemIdentifierDoubleQuotedTS() {
        }

        public String toString() {
            return "DoctypeSystemIdentifier_doubleQuoted";
        }

        @Override // com.itextpdf.styledxmlparser.jsoup.parser.TokeniserState
        void read(Tokeniser tokeniser, CharacterReader characterReader) {
            char cConsume = characterReader.consume();
            if (cConsume == 0) {
                tokeniser.error(this);
                tokeniser.doctypePending.systemIdentifier.append((char) 65533);
                return;
            }
            if (cConsume == '\"') {
                tokeniser.transition(AfterDoctypeSystemIdentifier);
                return;
            }
            if (cConsume == '>') {
                tokeniser.error(this);
                tokeniser.doctypePending.forceQuirks = true;
                tokeniser.emitDoctypePending();
                tokeniser.transition(Data);
                return;
            }
            if (cConsume == 65535) {
                tokeniser.eofError(this);
                tokeniser.doctypePending.forceQuirks = true;
                tokeniser.emitDoctypePending();
                tokeniser.transition(Data);
                return;
            }
            tokeniser.doctypePending.systemIdentifier.append(cConsume);
        }
    }

    private static final class DocTypeSystemIdentifierSingleQuotedTS extends TokeniserState {
        private DocTypeSystemIdentifierSingleQuotedTS() {
        }

        public String toString() {
            return "DoctypeSystemIdentifier_singleQuoted";
        }

        @Override // com.itextpdf.styledxmlparser.jsoup.parser.TokeniserState
        void read(Tokeniser tokeniser, CharacterReader characterReader) {
            char cConsume = characterReader.consume();
            if (cConsume == 0) {
                tokeniser.error(this);
                tokeniser.doctypePending.systemIdentifier.append((char) 65533);
                return;
            }
            if (cConsume == '\'') {
                tokeniser.transition(AfterDoctypeSystemIdentifier);
                return;
            }
            if (cConsume == '>') {
                tokeniser.error(this);
                tokeniser.doctypePending.forceQuirks = true;
                tokeniser.emitDoctypePending();
                tokeniser.transition(Data);
                return;
            }
            if (cConsume == 65535) {
                tokeniser.eofError(this);
                tokeniser.doctypePending.forceQuirks = true;
                tokeniser.emitDoctypePending();
                tokeniser.transition(Data);
                return;
            }
            tokeniser.doctypePending.systemIdentifier.append(cConsume);
        }
    }

    private static final class AfterDocTypeSystemIdentifierTS extends TokeniserState {
        private AfterDocTypeSystemIdentifierTS() {
        }

        public String toString() {
            return "AfterDoctypeSystemIdentifier";
        }

        @Override // com.itextpdf.styledxmlparser.jsoup.parser.TokeniserState
        void read(Tokeniser tokeniser, CharacterReader characterReader) {
            char cConsume = characterReader.consume();
            if (cConsume == '\t' || cConsume == '\n' || cConsume == '\f' || cConsume == '\r' || cConsume == ' ') {
                return;
            }
            if (cConsume == '>') {
                tokeniser.emitDoctypePending();
                tokeniser.transition(Data);
            } else {
                if (cConsume == 65535) {
                    tokeniser.eofError(this);
                    tokeniser.doctypePending.forceQuirks = true;
                    tokeniser.emitDoctypePending();
                    tokeniser.transition(Data);
                    return;
                }
                tokeniser.error(this);
                tokeniser.transition(BogusDoctype);
            }
        }
    }

    private static final class BogusDocTypeTS extends TokeniserState {
        private BogusDocTypeTS() {
        }

        public String toString() {
            return "BogusDoctype";
        }

        @Override // com.itextpdf.styledxmlparser.jsoup.parser.TokeniserState
        void read(Tokeniser tokeniser, CharacterReader characterReader) {
            char cConsume = characterReader.consume();
            if (cConsume == '>') {
                tokeniser.emitDoctypePending();
                tokeniser.transition(Data);
            } else {
                if (cConsume != 65535) {
                    return;
                }
                tokeniser.emitDoctypePending();
                tokeniser.transition(Data);
            }
        }
    }

    private static final class CDataSectionTS extends TokeniserState {
        private CDataSectionTS() {
        }

        public String toString() {
            return "CdataSection";
        }

        @Override // com.itextpdf.styledxmlparser.jsoup.parser.TokeniserState
        void read(Tokeniser tokeniser, CharacterReader characterReader) {
            tokeniser.dataBuffer.append(characterReader.consumeTo("]]>"));
            if (characterReader.matchConsume("]]>") || characterReader.isEmpty()) {
                tokeniser.emit(new Token.CData(tokeniser.dataBuffer.toString()));
                tokeniser.transition(Data);
            }
        }
    }
}
