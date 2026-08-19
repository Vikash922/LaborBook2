package com.itextpdf.layout.properties;

import com.itextpdf.kernel.exceptions.PdfException;
import com.itextpdf.layout.exceptions.LayoutExceptionMessageConstant;

/* JADX INFO: loaded from: classes6.dex */
public class InlineVerticalAlignment {
    private InlineVerticalAlignmentType type;
    private float value;

    public InlineVerticalAlignment() {
        this.type = InlineVerticalAlignmentType.BASELINE;
    }

    public InlineVerticalAlignment(InlineVerticalAlignmentType inlineVerticalAlignmentType) {
        this.type = inlineVerticalAlignmentType;
    }

    public InlineVerticalAlignment(InlineVerticalAlignmentType inlineVerticalAlignmentType, float f) {
        if (inlineVerticalAlignmentType != InlineVerticalAlignmentType.FRACTION && inlineVerticalAlignmentType != InlineVerticalAlignmentType.FIXED) {
            throw new PdfException(LayoutExceptionMessageConstant.INLINE_VERTICAL_ALIGNMENT_DOESN_T_NEED_A_VALUE).setMessageParams(inlineVerticalAlignmentType);
        }
        this.type = inlineVerticalAlignmentType;
        this.value = f;
    }

    public InlineVerticalAlignmentType getType() {
        return this.type;
    }

    public void setType(InlineVerticalAlignmentType inlineVerticalAlignmentType) {
        this.type = inlineVerticalAlignmentType;
    }

    public float getValue() {
        return this.value;
    }

    public void setValue(float f) {
        this.value = f;
    }
}
