package com.itextpdf.styledxmlparser.css.resolve;

import com.itextpdf.styledxmlparser.css.CommonCssConstants;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;

/* JADX INFO: loaded from: classes6.dex */
public class CssInheritance implements IStyleInheritance {
    private static final Set<String> INHERITABLE_PROPERTIES = Collections.unmodifiableSet(new HashSet(Arrays.asList("color", "visibility", CommonCssConstants.HANGING_PUNCTUATION, CommonCssConstants.HYPHENS, CommonCssConstants.LETTER_SPACING, CommonCssConstants.LINE_HEIGHT, CommonCssConstants.OVERFLOW_WRAP, CommonCssConstants.TAB_SIZE, CommonCssConstants.TEXT_ALIGN, CommonCssConstants.TEXT_ALIGN_LAST, CommonCssConstants.TEXT_INDENT, CommonCssConstants.TEXT_JUSTIFY, CommonCssConstants.TEXT_TRANSFORM, CommonCssConstants.WHITE_SPACE, CommonCssConstants.WORD_BREAK, CommonCssConstants.WORD_SPACING, CommonCssConstants.WORDWRAP, CommonCssConstants.TEXT_SHADOW, CommonCssConstants.TEXT_UNDERLINE_POSITION, "font", "font-family", CommonCssConstants.FONT_FEATURE_SETTINGS, CommonCssConstants.FONT_KERNING, CommonCssConstants.FONT_LANGUAGE_OVERRIDE, "font-size", CommonCssConstants.FONT_SIZE_ADJUST, CommonCssConstants.FONT_STRETCH, "font-style", CommonCssConstants.FONT_SYNTHESIS, CommonCssConstants.FONT_VARIANT, CommonCssConstants.FONT_VARIANT_ALTERNATES, CommonCssConstants.FONT_VARIANT_CAPS, CommonCssConstants.FONT_VARIANT_EAST_ASIAN, CommonCssConstants.FONT_VARIANT_LIGATURES, CommonCssConstants.FONT_VARIANT_NUMERIC, CommonCssConstants.FONT_VARIANT_POSITION, "font-weight", CommonCssConstants.DIRECTION, CommonCssConstants.TEXT_ORIENTATION, CommonCssConstants.TEXT_COMBINE_UPRIGHT, CommonCssConstants.UNICODE_BIDI, CommonCssConstants.WRITING_MODE, CommonCssConstants.BORDER_COLLAPSE, CommonCssConstants.BORDER_SPACING, CommonCssConstants.CAPTION_SIDE, CommonCssConstants.EMPTY_CELLS, CommonCssConstants.LIST_STYLE, CommonCssConstants.LIST_STYLE_IMAGE, CommonCssConstants.LIST_STYLE_POSITION, CommonCssConstants.LIST_STYLE_TYPE, CommonCssConstants.QUOTES, CommonCssConstants.ORPHANS, CommonCssConstants.WIDOWS)));

    @Override // com.itextpdf.styledxmlparser.css.resolve.IStyleInheritance
    public boolean isInheritable(String str) {
        return INHERITABLE_PROPERTIES.contains(str);
    }
}
