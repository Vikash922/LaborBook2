package com.itextpdf.styledxmlparser.css.parse;

/* JADX INFO: loaded from: classes6.dex */
public class CssDeclarationValueTokenizer {
    private boolean inString;
    private String src;
    private char stringQuote;
    private int index = -1;
    private int functionDepth = 0;

    public enum TokenType {
        STRING,
        FUNCTION,
        COMMA,
        UNKNOWN
    }

    private boolean isHexDigit(char c) {
        return ('/' < c && c < ':') || ('@' < c && c < 'G') || ('`' < c && c < 'g');
    }

    public CssDeclarationValueTokenizer(String str) {
        this.src = str;
    }

    public Token getNextValidToken() {
        Token nextToken = getNextToken();
        while (nextToken != null && !nextToken.isString() && nextToken.getValue().trim().isEmpty()) {
            nextToken = getNextToken();
        }
        if (nextToken == null || this.functionDepth <= 0) {
            return nextToken;
        }
        StringBuilder sb = new StringBuilder();
        while (nextToken != null && this.functionDepth > 0) {
            processFunctionToken(nextToken, sb);
            nextToken = getNextToken();
        }
        this.functionDepth = 0;
        if (sb.length() == 0) {
            return nextToken;
        }
        if (nextToken != null) {
            processFunctionToken(nextToken, sb);
        }
        return new Token(sb.toString(), TokenType.FUNCTION);
    }

    /* JADX WARN: Code restructure failed: missing block: B:81:0x013f, code lost:
    
        r8.stringQuote = r1;
        r8.inString = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:82:0x014e, code lost:
    
        return new com.itextpdf.styledxmlparser.css.parse.CssDeclarationValueTokenizer.Token(r0.toString(), com.itextpdf.styledxmlparser.css.parse.CssDeclarationValueTokenizer.TokenType.FUNCTION);
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private com.itextpdf.styledxmlparser.css.parse.CssDeclarationValueTokenizer.Token getNextToken() {
        /*
            Method dump skipped, instruction units count: 347
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.itextpdf.styledxmlparser.css.parse.CssDeclarationValueTokenizer.getNextToken():com.itextpdf.styledxmlparser.css.parse.CssDeclarationValueTokenizer$Token");
    }

    private void processFunctionToken(Token token, StringBuilder sb) {
        if (token.isString()) {
            sb.append(this.stringQuote);
            sb.append(token.getValue());
            sb.append(this.stringQuote);
            return;
        }
        sb.append(token.getValue());
    }

    public static class Token {
        private TokenType type;
        private String value;

        public Token(String str, TokenType tokenType) {
            this.value = str;
            this.type = tokenType;
        }

        public String getValue() {
            return this.value;
        }

        public TokenType getType() {
            return this.type;
        }

        public boolean isString() {
            return this.type == TokenType.STRING;
        }

        public String toString() {
            return this.value;
        }
    }
}
