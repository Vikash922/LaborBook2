package com.itextpdf.layout.hyphenation;

import com.amplitude.core.events.Identify;

/* JADX INFO: loaded from: classes6.dex */
public class Hyphen {
    public String noBreak;
    public String postBreak;
    public String preBreak;

    Hyphen(String str, String str2, String str3) {
        this.preBreak = str;
        this.noBreak = str2;
        this.postBreak = str3;
    }

    Hyphen(String str) {
        this.preBreak = str;
        this.noBreak = null;
        this.postBreak = null;
    }

    public String toString() {
        String str;
        if (this.noBreak == null && this.postBreak == null && (str = this.preBreak) != null && str.equals(Identify.UNSET_VALUE)) {
            return Identify.UNSET_VALUE;
        }
        StringBuffer stringBuffer = new StringBuffer("{");
        stringBuffer.append(this.preBreak);
        stringBuffer.append("}{");
        stringBuffer.append(this.postBreak);
        stringBuffer.append("}{");
        stringBuffer.append(this.noBreak);
        stringBuffer.append('}');
        return stringBuffer.toString();
    }
}
