package com.itextpdf.kernel.pdf;

/* JADX INFO: loaded from: classes6.dex */
public class StampingProperties extends DocumentProperties {
    protected boolean appendMode;
    protected boolean preserveEncryption;

    public StampingProperties() {
        this.appendMode = false;
        this.preserveEncryption = false;
    }

    public StampingProperties(StampingProperties stampingProperties) {
        super(stampingProperties);
        this.appendMode = false;
        this.preserveEncryption = false;
        this.appendMode = stampingProperties.appendMode;
        this.preserveEncryption = stampingProperties.preserveEncryption;
    }

    public StampingProperties useAppendMode() {
        this.appendMode = true;
        return this;
    }

    public StampingProperties preserveEncryption() {
        this.preserveEncryption = true;
        return this;
    }
}
