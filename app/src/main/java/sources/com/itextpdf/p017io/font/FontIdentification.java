package com.itextpdf.p017io.font;

/* JADX INFO: loaded from: classes6.dex */
public class FontIdentification {
    private String panose;
    private String ttfUniqueId;
    private String ttfVersion;
    private Integer type1Xuid;

    public String getTtfVersion() {
        return this.ttfVersion;
    }

    public String getTtfUniqueId() {
        return this.ttfUniqueId;
    }

    public Integer getType1Xuid() {
        return this.type1Xuid;
    }

    public String getPanose() {
        return this.panose;
    }

    protected void setTtfVersion(String str) {
        this.ttfVersion = str;
    }

    protected void setTtfUniqueId(String str) {
        this.ttfUniqueId = str;
    }

    protected void setType1Xuid(Integer num) {
        this.type1Xuid = num;
    }

    protected void setPanose(byte[] bArr) {
        this.panose = new String(bArr);
    }

    protected void setPanose(String str) {
        this.panose = str;
    }
}
