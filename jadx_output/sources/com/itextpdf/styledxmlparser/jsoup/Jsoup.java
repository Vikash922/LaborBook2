package com.itextpdf.styledxmlparser.jsoup;

import com.itextpdf.styledxmlparser.jsoup.helper.DataUtil;
import com.itextpdf.styledxmlparser.jsoup.nodes.Document;
import com.itextpdf.styledxmlparser.jsoup.parser.Parser;
import com.itextpdf.styledxmlparser.jsoup.safety.Cleaner;
import com.itextpdf.styledxmlparser.jsoup.safety.Safelist;
import com.itextpdf.styledxmlparser.jsoup.safety.Whitelist;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;

/* JADX INFO: loaded from: classes6.dex */
public class Jsoup {
    private Jsoup() {
    }

    public static Document parse(String str, String str2) {
        return Parser.parse(str, str2);
    }

    public static Document parse(String str, String str2, Parser parser) {
        return parser.parseInput(str, str2);
    }

    public static Document parse(String str) {
        return Parser.parse(str, "");
    }

    public static Document parse(File file, String str, String str2) throws IOException {
        return DataUtil.load(file, str, str2);
    }

    public static Document parse(File file, String str) throws IOException {
        return DataUtil.load(file, str, file.getAbsolutePath());
    }

    public static Document parse(InputStream inputStream, String str, String str2) throws IOException {
        return DataUtil.load(inputStream, str, str2);
    }

    public static Document parse(InputStream inputStream, String str, String str2, Parser parser) throws IOException {
        return DataUtil.load(inputStream, str, str2, parser);
    }

    public static Document parseBodyFragment(String str, String str2) {
        return Parser.parseBodyFragment(str, str2);
    }

    public static Document parseBodyFragment(String str) {
        return Parser.parseBodyFragment(str, "");
    }

    public static String clean(String str, String str2, Safelist safelist) {
        return new Cleaner(safelist).clean(parseBodyFragment(str, str2)).body().html();
    }

    @Deprecated
    public static String clean(String str, String str2, Whitelist whitelist) {
        return clean(str, str2, (Safelist) whitelist);
    }

    public static String clean(String str, Safelist safelist) {
        return clean(str, "", safelist);
    }

    @Deprecated
    public static String clean(String str, Whitelist whitelist) {
        return clean(str, (Safelist) whitelist);
    }

    public static String clean(String str, String str2, Safelist safelist, Document.OutputSettings outputSettings) {
        Document documentClean = new Cleaner(safelist).clean(parseBodyFragment(str, str2));
        documentClean.outputSettings(outputSettings);
        return documentClean.body().html();
    }

    @Deprecated
    public static String clean(String str, String str2, Whitelist whitelist, Document.OutputSettings outputSettings) {
        return clean(str, str2, (Safelist) whitelist, outputSettings);
    }

    public static boolean isValid(String str, Safelist safelist) {
        return new Cleaner(safelist).isValidBodyHtml(str);
    }

    @Deprecated
    public static boolean isValid(String str, Whitelist whitelist) {
        return isValid(str, (Safelist) whitelist);
    }
}
