package com.itextpdf.commons.actions.sequence;

/* JADX INFO: loaded from: classes6.dex */
public abstract class AbstractIdentifiableElement {
    private SequenceId sequenceId;

    SequenceId getSequenceId() {
        return this.sequenceId;
    }

    void setSequenceId(SequenceId sequenceId) {
        this.sequenceId = sequenceId;
    }
}
