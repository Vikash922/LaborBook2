package com.itextpdf.forms.fields.borders;

import com.itextpdf.kernel.colors.Color;
import com.itextpdf.layout.borders.Border;

/* JADX INFO: loaded from: classes6.dex */
abstract class AbstractFormBorder extends Border {
    static final int FORM_BEVELED = 1002;
    static final int FORM_INSET = 1003;
    static final int FORM_UNDERLINE = 1001;

    protected AbstractFormBorder(Color color, float f) {
        super(color, f);
    }
}
