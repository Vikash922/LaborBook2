package com.itextpdf.styledxmlparser.jsoup.safety;

import com.itextpdf.styledxmlparser.jsoup.nodes.Attribute;
import com.itextpdf.styledxmlparser.jsoup.nodes.Attributes;
import com.itextpdf.styledxmlparser.jsoup.nodes.Element;

/* JADX INFO: loaded from: classes6.dex */
@Deprecated
public class Whitelist extends Safelist {
    public Whitelist() {
    }

    public Whitelist(Safelist safelist) {
        super(safelist);
    }

    public static Whitelist basic() {
        return new Whitelist(Safelist.basic());
    }

    public static Whitelist basicWithImages() {
        return new Whitelist(Safelist.basicWithImages());
    }

    public static Whitelist none() {
        return new Whitelist(Safelist.none());
    }

    public static Whitelist relaxed() {
        return new Whitelist(Safelist.relaxed());
    }

    public static Whitelist simpleText() {
        return new Whitelist(Safelist.simpleText());
    }

    @Override // com.itextpdf.styledxmlparser.jsoup.safety.Safelist
    public Safelist addTags(String... strArr) {
        super.addTags(strArr);
        return this;
    }

    @Override // com.itextpdf.styledxmlparser.jsoup.safety.Safelist
    public Safelist removeTags(String... strArr) {
        super.removeTags(strArr);
        return this;
    }

    @Override // com.itextpdf.styledxmlparser.jsoup.safety.Safelist
    public Safelist addAttributes(String str, String... strArr) {
        super.addAttributes(str, strArr);
        return this;
    }

    @Override // com.itextpdf.styledxmlparser.jsoup.safety.Safelist
    public Safelist removeAttributes(String str, String... strArr) {
        super.removeAttributes(str, strArr);
        return this;
    }

    @Override // com.itextpdf.styledxmlparser.jsoup.safety.Safelist
    public Safelist addEnforcedAttribute(String str, String str2, String str3) {
        super.addEnforcedAttribute(str, str2, str3);
        return this;
    }

    @Override // com.itextpdf.styledxmlparser.jsoup.safety.Safelist
    public Safelist removeEnforcedAttribute(String str, String str2) {
        super.removeEnforcedAttribute(str, str2);
        return this;
    }

    @Override // com.itextpdf.styledxmlparser.jsoup.safety.Safelist
    public Safelist preserveRelativeLinks(boolean z) {
        super.preserveRelativeLinks(z);
        return this;
    }

    @Override // com.itextpdf.styledxmlparser.jsoup.safety.Safelist
    public Safelist addProtocols(String str, String str2, String... strArr) {
        super.addProtocols(str, str2, strArr);
        return this;
    }

    @Override // com.itextpdf.styledxmlparser.jsoup.safety.Safelist
    public Safelist removeProtocols(String str, String str2, String... strArr) {
        super.removeProtocols(str, str2, strArr);
        return this;
    }

    @Override // com.itextpdf.styledxmlparser.jsoup.safety.Safelist
    protected boolean isSafeTag(String str) {
        return super.isSafeTag(str);
    }

    @Override // com.itextpdf.styledxmlparser.jsoup.safety.Safelist
    protected boolean isSafeAttribute(String str, Element element, Attribute attribute) {
        return super.isSafeAttribute(str, element, attribute);
    }

    @Override // com.itextpdf.styledxmlparser.jsoup.safety.Safelist
    Attributes getEnforcedAttributes(String str) {
        return super.getEnforcedAttributes(str);
    }
}
