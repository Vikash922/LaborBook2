package com.itextpdf.styledxmlparser.css.parse;

import com.itextpdf.styledxmlparser.PortUtil;
import com.itextpdf.styledxmlparser.css.CssStyleSheet;
import com.itextpdf.styledxmlparser.css.parse.syntax.CssParserStateController;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.Reader;
import java.nio.charset.StandardCharsets;

/* JADX INFO: loaded from: classes6.dex */
public final class CssStyleSheetParser {
    private CssStyleSheetParser() {
    }

    public static CssStyleSheet parse(InputStream inputStream, String str) throws IOException {
        CssParserStateController cssParserStateController = new CssParserStateController(str);
        Reader readerWrapInBufferedReader = PortUtil.wrapInBufferedReader(new InputStreamReader(inputStream, StandardCharsets.UTF_8));
        char[] cArr = new char[8192];
        while (true) {
            int i = readerWrapInBufferedReader.read(cArr, 0, 8192);
            if (i <= 0) {
                return cssParserStateController.getParsingResult();
            }
            for (int i2 = 0; i2 < i; i2++) {
                cssParserStateController.process(cArr[i2]);
            }
        }
    }

    public static CssStyleSheet parse(InputStream inputStream) throws IOException {
        return parse(inputStream, (String) null);
    }

    public static CssStyleSheet parse(String str, String str2) {
        try {
            return parse(new ByteArrayInputStream(str.getBytes(StandardCharsets.UTF_8)), str2);
        } catch (IOException unused) {
            return null;
        }
    }

    public static CssStyleSheet parse(String str) {
        return parse(str, (String) null);
    }
}
