package com.itextpdf.svg.css.impl;

import com.itextpdf.styledxmlparser.css.resolve.IStyleInheritance;
import com.itextpdf.svg.SvgConstants;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;

/* JADX INFO: loaded from: classes6.dex */
public class SvgAttributeInheritance implements IStyleInheritance {
    private static final Set<String> inheritableProperties = Collections.unmodifiableSet(new HashSet(Arrays.asList(SvgConstants.Attributes.CLIP_RULE, SvgConstants.Attributes.FILL, SvgConstants.Attributes.FILL_RULE, SvgConstants.Attributes.STROKE, SvgConstants.Attributes.STROKE_WIDTH, SvgConstants.Attributes.TEXT_ANCHOR)));

    @Override // com.itextpdf.styledxmlparser.css.resolve.IStyleInheritance
    public boolean isInheritable(String str) {
        return inheritableProperties.contains(str);
    }
}
