package com.itextpdf.layout.hyphenation;

import org.objectweb.asm.signature.SignatureVisitor;

/* JADX INFO: loaded from: classes6.dex */
public class HyphenationConfig {
    protected char hyphenSymbol = SignatureVisitor.SUPER;
    protected Hyphenator hyphenator;

    public HyphenationConfig(int i, int i2) {
        this.hyphenator = new Hyphenator(null, null, i, i2);
    }

    public HyphenationConfig(Hyphenator hyphenator) {
        this.hyphenator = hyphenator;
    }

    public HyphenationConfig(String str, String str2, int i, int i2) {
        this.hyphenator = new Hyphenator(str, str2, i, i2);
    }

    public Hyphenation hyphenate(String str) {
        Hyphenator hyphenator = this.hyphenator;
        if (hyphenator != null) {
            return hyphenator.hyphenate(str);
        }
        return null;
    }

    public char getHyphenSymbol() {
        return this.hyphenSymbol;
    }

    public void setHyphenSymbol(char c) {
        this.hyphenSymbol = c;
    }
}
