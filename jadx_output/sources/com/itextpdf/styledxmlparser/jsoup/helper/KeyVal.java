package com.itextpdf.styledxmlparser.jsoup.helper;

import java.io.InputStream;

/* JADX INFO: loaded from: classes6.dex */
public class KeyVal {
    private String contentType;
    private String key;
    private InputStream stream;
    private String value;

    public static KeyVal create(String str, String str2) {
        return new KeyVal(str, str2);
    }

    public static KeyVal create(String str, String str2, InputStream inputStream) {
        return new KeyVal(str, str2).inputStream(inputStream);
    }

    private KeyVal(String str, String str2) {
        Validate.notEmpty(str, "Data key must not be empty");
        Validate.notNull(str2, "Data value must not be null");
        this.key = str;
        this.value = str2;
    }

    public KeyVal key(String str) {
        Validate.notEmpty(str, "Data key must not be empty");
        this.key = str;
        return this;
    }

    public String key() {
        return this.key;
    }

    public KeyVal value(String str) {
        Validate.notNull(str, "Data value must not be null");
        this.value = str;
        return this;
    }

    public String value() {
        return this.value;
    }

    public KeyVal inputStream(InputStream inputStream) {
        Validate.notNull(this.value, "Data input stream must not be null");
        this.stream = inputStream;
        return this;
    }

    public InputStream inputStream() {
        return this.stream;
    }

    public boolean hasInputStream() {
        return this.stream != null;
    }

    public KeyVal contentType(String str) {
        Validate.notEmpty(str);
        this.contentType = str;
        return this;
    }

    public String contentType() {
        return this.contentType;
    }

    public String toString() {
        return this.key + "=" + this.value;
    }
}
