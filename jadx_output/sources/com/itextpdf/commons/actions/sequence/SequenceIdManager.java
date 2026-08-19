package com.itextpdf.commons.actions.sequence;

import com.itextpdf.commons.exceptions.CommonsExceptionMessageConstant;
import com.itextpdf.commons.utils.MessageFormatUtil;

/* JADX INFO: loaded from: classes6.dex */
public final class SequenceIdManager {
    private SequenceIdManager() {
    }

    public static void setSequenceId(AbstractIdentifiableElement abstractIdentifiableElement, SequenceId sequenceId) {
        synchronized (abstractIdentifiableElement) {
            if (abstractIdentifiableElement.getSequenceId() == null) {
                abstractIdentifiableElement.setSequenceId(sequenceId);
            } else {
                throw new IllegalStateException(MessageFormatUtil.format(CommonsExceptionMessageConstant.ELEMENT_ALREADY_HAS_IDENTIFIER, Long.valueOf(abstractIdentifiableElement.getSequenceId().getId()), Long.valueOf(sequenceId.getId())));
            }
        }
    }

    public static SequenceId getSequenceId(AbstractIdentifiableElement abstractIdentifiableElement) {
        return abstractIdentifiableElement.getSequenceId();
    }
}
