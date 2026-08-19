package com.itextpdf.styledxmlparser.jsoup.parser;

import com.itextpdf.commons.utils.MessageFormatUtil;

/* JADX INFO: loaded from: classes6.dex */
public class ParseError {
    private String errorMsg;
    private int pos;

    ParseError(int i, String str) {
        this.pos = i;
        this.errorMsg = str;
    }

    ParseError(int i, String str, Object... objArr) {
        this.errorMsg = MessageFormatUtil.format(str, objArr);
        this.pos = i;
    }

    public String getErrorMessage() {
        return this.errorMsg;
    }

    public int getPosition() {
        return this.pos;
    }

    public String toString() {
        return this.pos + ": " + this.errorMsg;
    }
}
