package com.itextpdf.styledxmlparser.jsoup.parser;

import com.itextpdf.p017io.codec.TIFFConstants;
import com.itextpdf.styledxmlparser.jsoup.helper.Validate;
import com.itextpdf.styledxmlparser.jsoup.internal.StringUtil;
import com.itextpdf.styledxmlparser.jsoup.nodes.Entities;
import com.itextpdf.styledxmlparser.jsoup.parser.Token;
import java.util.ArrayList;
import java.util.Arrays;
import kotlin.text.Typography;
import okio.Utf8;
import org.objectweb.asm.Opcodes;
import org.objectweb.asm.signature.SignatureVisitor;
import org.shadow.apache.commons.lang3.CharUtils;

/* JADX INFO: loaded from: classes6.dex */
final class Tokeniser {
    private static final char[] notCharRefCharsSorted;
    static final char replacementChar = 65533;
    static final int[] win1252Extensions;
    static final int win1252ExtensionsStart = 128;
    private Token emitPending;
    private final ParseErrorList errors;
    private String lastStartTag;
    private final CharacterReader reader;
    Token.Tag tagPending;
    private TokeniserState state = TokeniserState.Data;
    private boolean isEmitPending = false;
    private String charsString = null;
    private StringBuilder charsBuilder = new StringBuilder(1024);
    StringBuilder dataBuffer = new StringBuilder(1024);
    Token.StartTag startPending = new Token.StartTag();
    Token.EndTag endPending = new Token.EndTag();
    Token.Character charPending = new Token.Character();
    Token.Doctype doctypePending = new Token.Doctype();
    Token.Comment commentPending = new Token.Comment();
    private final int[] codepointHolder = new int[1];
    private final int[] multipointHolder = new int[2];

    boolean currentNodeInHtmlNS() {
        return true;
    }

    static {
        char[] cArr = {'\t', '\n', CharUtils.f4765CR, '\f', ' ', Typography.less, Typography.amp};
        notCharRefCharsSorted = cArr;
        win1252Extensions = new int[]{8364, 129, 8218, 402, 8222, 8230, 8224, 8225, 710, 8240, 352, 8249, TIFFConstants.TIFFTAG_EXTRASAMPLES, Opcodes.F2D, 381, Opcodes.D2L, Opcodes.D2F, 8216, 8217, 8220, 8221, 8226, 8211, 8212, 732, 8482, 353, 8250, TIFFConstants.TIFFTAG_SAMPLEFORMAT, 157, 382, 376};
        Arrays.sort(cArr);
    }

    Tokeniser(CharacterReader characterReader, ParseErrorList parseErrorList) {
        this.reader = characterReader;
        this.errors = parseErrorList;
    }

    Token read() {
        while (!this.isEmitPending) {
            this.state.read(this, this.reader);
        }
        StringBuilder sb = this.charsBuilder;
        if (sb.length() != 0) {
            String string = sb.toString();
            sb.delete(0, sb.length());
            this.charsString = null;
            return this.charPending.data(string);
        }
        String str = this.charsString;
        if (str != null) {
            Token.Character characterData = this.charPending.data(str);
            this.charsString = null;
            return characterData;
        }
        this.isEmitPending = false;
        return this.emitPending;
    }

    void emit(Token token) {
        Validate.isFalse(this.isEmitPending);
        this.emitPending = token;
        this.isEmitPending = true;
        if (token.type == Token.TokenType.StartTag) {
            this.lastStartTag = ((Token.StartTag) token).tagName;
        } else if (token.type == Token.TokenType.EndTag && ((Token.EndTag) token).hasAttributes()) {
            error("Attributes incorrectly present on end tag");
        }
    }

    void emit(String str) {
        if (this.charsString == null) {
            this.charsString = str;
            return;
        }
        if (this.charsBuilder.length() == 0) {
            this.charsBuilder.append(this.charsString);
        }
        this.charsBuilder.append(str);
    }

    void emit(StringBuilder sb) {
        if (this.charsString == null) {
            this.charsString = sb.toString();
            return;
        }
        if (this.charsBuilder.length() == 0) {
            this.charsBuilder.append(this.charsString);
        }
        this.charsBuilder.append((CharSequence) sb);
    }

    void emit(char c) {
        if (this.charsString == null) {
            this.charsString = String.valueOf(c);
            return;
        }
        if (this.charsBuilder.length() == 0) {
            this.charsBuilder.append(this.charsString);
        }
        this.charsBuilder.append(c);
    }

    void emit(char[] cArr) {
        emit(String.valueOf(cArr));
    }

    void emit(int[] iArr) {
        ArrayList arrayList = new ArrayList();
        for (int i : iArr) {
            if ((i >>> 16) == 0) {
                arrayList.add(Character.valueOf((char) i));
            } else {
                arrayList.add(Character.valueOf((char) ((i >>> 10) + Utf8.HIGH_SURROGATE_HEADER)));
                arrayList.add(Character.valueOf((char) ((i & 1023) + Utf8.LOG_SURROGATE_HEADER)));
            }
        }
        char[] cArr = new char[arrayList.size()];
        for (int i2 = 0; i2 < arrayList.size(); i2++) {
            cArr[i2] = ((Character) arrayList.get(i2)).charValue();
        }
        emit(cArr);
    }

    TokeniserState getState() {
        return this.state;
    }

    void transition(TokeniserState tokeniserState) {
        this.state = tokeniserState;
    }

    void advanceTransition(TokeniserState tokeniserState) {
        this.reader.advance();
        this.state = tokeniserState;
    }

    int[] consumeCharacterReference(Character ch, boolean z) {
        int iIntValue;
        if (this.reader.isEmpty()) {
            return null;
        }
        if ((ch != null && ch.charValue() == this.reader.current()) || this.reader.matchesAnySorted(notCharRefCharsSorted)) {
            return null;
        }
        int[] iArr = this.codepointHolder;
        this.reader.mark();
        if (this.reader.matchConsume("#")) {
            boolean zMatchConsumeIgnoreCase = this.reader.matchConsumeIgnoreCase("X");
            CharacterReader characterReader = this.reader;
            String strConsumeHexSequence = zMatchConsumeIgnoreCase ? characterReader.consumeHexSequence() : characterReader.consumeDigitSequence();
            if (strConsumeHexSequence.length() == 0) {
                characterReferenceError("numeric reference with no numerals");
                this.reader.rewindToMark();
                return null;
            }
            this.reader.unmark();
            if (!this.reader.matchConsume(";")) {
                characterReferenceError("missing semicolon");
            }
            try {
                iIntValue = Integer.valueOf(strConsumeHexSequence, zMatchConsumeIgnoreCase ? 16 : 10).intValue();
            } catch (NumberFormatException unused) {
                iIntValue = -1;
            }
            if (iIntValue == -1 || ((iIntValue >= 55296 && iIntValue <= 57343) || iIntValue > 1114111)) {
                characterReferenceError("character outside of valid range");
                iArr[0] = 65533;
            } else {
                if (iIntValue >= 128) {
                    int[] iArr2 = win1252Extensions;
                    if (iIntValue < iArr2.length + 128) {
                        characterReferenceError("character is not a valid unicode code point");
                        iIntValue = iArr2[iIntValue - 128];
                    }
                }
                iArr[0] = iIntValue;
            }
            return iArr;
        }
        String strConsumeLetterThenDigitSequence = this.reader.consumeLetterThenDigitSequence();
        boolean zMatches = this.reader.matches(';');
        if (!Entities.isBaseNamedEntity(strConsumeLetterThenDigitSequence) && (!Entities.isNamedEntity(strConsumeLetterThenDigitSequence) || !zMatches)) {
            this.reader.rewindToMark();
            if (zMatches) {
                characterReferenceError("invalid named reference");
            }
            return null;
        }
        if (z && (this.reader.matchesLetter() || this.reader.matchesDigit() || this.reader.matchesAny(SignatureVisitor.INSTANCEOF, SignatureVisitor.SUPER, '_'))) {
            this.reader.rewindToMark();
            return null;
        }
        this.reader.unmark();
        if (!this.reader.matchConsume(";")) {
            characterReferenceError("missing semicolon");
        }
        int iCodepointsForName = Entities.codepointsForName(strConsumeLetterThenDigitSequence, this.multipointHolder);
        if (iCodepointsForName == 1) {
            iArr[0] = this.multipointHolder[0];
            return iArr;
        }
        if (iCodepointsForName == 2) {
            return this.multipointHolder;
        }
        Validate.fail("Unexpected characters returned for " + strConsumeLetterThenDigitSequence);
        return this.multipointHolder;
    }

    Token.Tag createTagPending(boolean z) {
        Token.Tag tag = (Token.Tag) (z ? this.startPending.reset() : this.endPending.reset());
        this.tagPending = tag;
        return tag;
    }

    void emitTagPending() {
        this.tagPending.finaliseTag();
        emit(this.tagPending);
    }

    void createCommentPending() {
        this.commentPending.reset();
    }

    void emitCommentPending() {
        emit(this.commentPending);
    }

    void createBogusCommentPending() {
        this.commentPending.reset();
        this.commentPending.bogus = true;
    }

    void createDoctypePending() {
        this.doctypePending.reset();
    }

    void emitDoctypePending() {
        emit(this.doctypePending);
    }

    void createTempBuffer() {
        Token.reset(this.dataBuffer);
    }

    boolean isAppropriateEndTagToken() {
        return this.lastStartTag != null && this.tagPending.name().equalsIgnoreCase(this.lastStartTag);
    }

    String appropriateEndTagName() {
        return this.lastStartTag;
    }

    void error(TokeniserState tokeniserState) {
        if (this.errors.canAddError()) {
            this.errors.add(new ParseError(this.reader.pos(), "Unexpected character '{0}' in input state [{1}]", Character.valueOf(this.reader.current()), tokeniserState));
        }
    }

    void eofError(TokeniserState tokeniserState) {
        if (this.errors.canAddError()) {
            this.errors.add(new ParseError(this.reader.pos(), "Unexpectedly reached end of file (EOF) in input state [{0}]", tokeniserState));
        }
    }

    private void characterReferenceError(String str) {
        if (this.errors.canAddError()) {
            this.errors.add(new ParseError(this.reader.pos(), "Invalid character reference: {0}", str));
        }
    }

    void error(String str) {
        if (this.errors.canAddError()) {
            this.errors.add(new ParseError(this.reader.pos(), str));
        }
    }

    String unescapeEntities(boolean z) {
        StringBuilder sbBorrowBuilder = StringUtil.borrowBuilder();
        while (!this.reader.isEmpty()) {
            sbBorrowBuilder.append(this.reader.consumeTo(Typography.amp));
            if (this.reader.matches(Typography.amp)) {
                this.reader.consume();
                int[] iArrConsumeCharacterReference = consumeCharacterReference(null, z);
                if (iArrConsumeCharacterReference == null || iArrConsumeCharacterReference.length == 0) {
                    sbBorrowBuilder.append(Typography.amp);
                } else {
                    sbBorrowBuilder.appendCodePoint(iArrConsumeCharacterReference[0]);
                    if (iArrConsumeCharacterReference.length == 2) {
                        sbBorrowBuilder.appendCodePoint(iArrConsumeCharacterReference[1]);
                    }
                }
            }
        }
        return StringUtil.releaseBuilder(sbBorrowBuilder);
    }
}
