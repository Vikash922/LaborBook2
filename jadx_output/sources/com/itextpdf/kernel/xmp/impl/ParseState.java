package com.itextpdf.kernel.xmp.impl;

import com.itextpdf.kernel.xmp.XMPException;

/* JADX INFO: compiled from: ISO8601Converter.java */
/* JADX INFO: loaded from: classes6.dex */
class ParseState {
    private int pos = 0;
    private String str;

    public ParseState(String str) {
        this.str = str;
    }

    public int length() {
        return this.str.length();
    }

    public boolean hasNext() {
        return this.pos < this.str.length();
    }

    /* JADX INFO: renamed from: ch */
    public char m2665ch(int i) {
        if (i < this.str.length()) {
            return this.str.charAt(i);
        }
        return (char) 0;
    }

    /* JADX INFO: renamed from: ch */
    public char m2664ch() {
        if (this.pos < this.str.length()) {
            return this.str.charAt(this.pos);
        }
        return (char) 0;
    }

    public void skip() {
        this.pos++;
    }

    public int pos() {
        return this.pos;
    }

    public int gatherInt(String str, int i) throws XMPException {
        char cM2665ch = m2665ch(this.pos);
        int i2 = 0;
        boolean z = false;
        while ('0' <= cM2665ch && cM2665ch <= '9') {
            i2 = (i2 * 10) + (cM2665ch - '0');
            z = true;
            int i3 = this.pos + 1;
            this.pos = i3;
            cM2665ch = m2665ch(i3);
        }
        if (!z) {
            throw new XMPException(str, 5);
        }
        if (i2 > i) {
            return i;
        }
        if (i2 < 0) {
            return 0;
        }
        return i2;
    }
}
