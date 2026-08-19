package com.itextpdf.kernel.pdf;

import com.itextpdf.commons.actions.contexts.IMetaInfo;

/* JADX INFO: loaded from: classes6.dex */
public class DocumentProperties {
    protected IMetaInfo metaInfo;

    public DocumentProperties() {
        this.metaInfo = null;
    }

    public DocumentProperties(DocumentProperties documentProperties) {
        this.metaInfo = null;
        this.metaInfo = documentProperties.metaInfo;
    }

    public DocumentProperties setEventCountingMetaInfo(IMetaInfo iMetaInfo) {
        this.metaInfo = iMetaInfo;
        return this;
    }
}
