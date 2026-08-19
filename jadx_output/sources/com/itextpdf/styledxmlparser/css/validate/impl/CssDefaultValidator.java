package com.itextpdf.styledxmlparser.css.validate.impl;

import com.itextpdf.styledxmlparser.css.CommonCssConstants;
import com.itextpdf.styledxmlparser.css.CssDeclaration;
import com.itextpdf.styledxmlparser.css.validate.ICssDeclarationValidator;
import com.itextpdf.styledxmlparser.css.validate.impl.datatype.ArrayDataTypeValidator;
import com.itextpdf.styledxmlparser.css.validate.impl.datatype.CssBackgroundValidator;
import com.itextpdf.styledxmlparser.css.validate.impl.datatype.CssBlendModeValidator;
import com.itextpdf.styledxmlparser.css.validate.impl.datatype.CssColorValidator;
import com.itextpdf.styledxmlparser.css.validate.impl.datatype.CssEnumValidator;
import com.itextpdf.styledxmlparser.css.validate.impl.datatype.CssLengthValueValidator;
import com.itextpdf.styledxmlparser.css.validate.impl.datatype.CssNumberValueValidator;
import com.itextpdf.styledxmlparser.css.validate.impl.datatype.CssPercentageValueValidator;
import com.itextpdf.styledxmlparser.css.validate.impl.datatype.CssQuotesValidator;
import com.itextpdf.styledxmlparser.css.validate.impl.datatype.CssTransformValidator;
import com.itextpdf.styledxmlparser.css.validate.impl.declaration.MultiTypeDeclarationValidator;
import com.itextpdf.styledxmlparser.css.validate.impl.declaration.SingleTypeDeclarationValidator;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes6.dex */
public class CssDefaultValidator implements ICssDeclarationValidator {
    protected final Map<String, ICssDeclarationValidator> defaultValidators;

    public CssDefaultValidator() {
        MultiTypeDeclarationValidator multiTypeDeclarationValidator = new MultiTypeDeclarationValidator(new CssEnumValidator(CommonCssConstants.TRANSPARENT, CommonCssConstants.INITIAL, CommonCssConstants.INHERIT, CommonCssConstants.CURRENTCOLOR), new CssColorValidator());
        CssEnumValidator cssEnumValidator = new CssEnumValidator(CommonCssConstants.NORMAL);
        CssEnumValidator cssEnumValidator2 = new CssEnumValidator(CommonCssConstants.LARGER, CommonCssConstants.SMALLER);
        CssEnumValidator cssEnumValidator3 = new CssEnumValidator(new String[0]);
        cssEnumValidator3.addAllowedValues(CommonCssConstants.FONT_ABSOLUTE_SIZE_KEYWORDS_VALUES.keySet());
        CssEnumValidator cssEnumValidator4 = new CssEnumValidator(CommonCssConstants.INHERIT, CommonCssConstants.INITIAL, CommonCssConstants.UNSET);
        HashMap map = new HashMap();
        this.defaultValidators = map;
        map.put(CommonCssConstants.BACKGROUND_COLOR, multiTypeDeclarationValidator);
        map.put("color", multiTypeDeclarationValidator);
        map.put(CommonCssConstants.BORDER_COLOR, multiTypeDeclarationValidator);
        map.put(CommonCssConstants.BORDER_BOTTOM_COLOR, multiTypeDeclarationValidator);
        map.put(CommonCssConstants.BORDER_TOP_COLOR, multiTypeDeclarationValidator);
        map.put(CommonCssConstants.BORDER_LEFT_COLOR, multiTypeDeclarationValidator);
        map.put(CommonCssConstants.BORDER_RIGHT_COLOR, multiTypeDeclarationValidator);
        map.put("float", new SingleTypeDeclarationValidator(new CssEnumValidator("left", "right", "none", CommonCssConstants.INHERIT, CommonCssConstants.CENTER)));
        map.put(CommonCssConstants.PAGE_BREAK_BEFORE, new SingleTypeDeclarationValidator(new CssEnumValidator("auto", CommonCssConstants.ALWAYS, CommonCssConstants.AVOID, "left", "right")));
        map.put(CommonCssConstants.PAGE_BREAK_AFTER, new SingleTypeDeclarationValidator(new CssEnumValidator("auto", CommonCssConstants.ALWAYS, CommonCssConstants.AVOID, "left", "right")));
        map.put(CommonCssConstants.QUOTES, new MultiTypeDeclarationValidator(new CssEnumValidator(CommonCssConstants.INITIAL, CommonCssConstants.INHERIT, "none"), new CssQuotesValidator()));
        map.put("transform", new SingleTypeDeclarationValidator(new CssTransformValidator()));
        map.put("font-size", new MultiTypeDeclarationValidator(new CssLengthValueValidator(false), new CssPercentageValueValidator(false), cssEnumValidator2, cssEnumValidator3));
        map.put(CommonCssConstants.WORD_SPACING, new MultiTypeDeclarationValidator(new CssLengthValueValidator(true), cssEnumValidator));
        map.put(CommonCssConstants.LETTER_SPACING, new MultiTypeDeclarationValidator(new CssLengthValueValidator(true), cssEnumValidator));
        map.put(CommonCssConstants.TEXT_INDENT, new MultiTypeDeclarationValidator(new CssLengthValueValidator(true), new CssPercentageValueValidator(true), new CssEnumValidator(CommonCssConstants.EACH_LINE, CommonCssConstants.HANGING, "hanging each-line")));
        map.put(CommonCssConstants.LINE_HEIGHT, new MultiTypeDeclarationValidator(new CssNumberValueValidator(false), new CssLengthValueValidator(false), new CssPercentageValueValidator(false), cssEnumValidator, cssEnumValidator4));
        map.put(CommonCssConstants.COLUMN_GAP, new MultiTypeDeclarationValidator(new CssLengthValueValidator(false), new CssPercentageValueValidator(false), cssEnumValidator, cssEnumValidator4));
        map.put(CommonCssConstants.ROW_GAP, new MultiTypeDeclarationValidator(new CssLengthValueValidator(false), new CssPercentageValueValidator(false), cssEnumValidator, cssEnumValidator4));
        map.put(CommonCssConstants.FLEX_GROW, new MultiTypeDeclarationValidator(new CssNumberValueValidator(false), cssEnumValidator4));
        map.put(CommonCssConstants.FLEX_SHRINK, new MultiTypeDeclarationValidator(new CssNumberValueValidator(false), cssEnumValidator4));
        map.put(CommonCssConstants.FLEX_BASIS, new MultiTypeDeclarationValidator(new CssLengthValueValidator(false), new CssPercentageValueValidator(false), new CssEnumValidator("auto", "content", CommonCssConstants.MIN_CONTENT, CommonCssConstants.MAX_CONTENT, CommonCssConstants.FIT_CONTENT)));
        map.put(CommonCssConstants.BACKGROUND_REPEAT, new SingleTypeDeclarationValidator(new CssBackgroundValidator(CommonCssConstants.BACKGROUND_REPEAT)));
        map.put(CommonCssConstants.BACKGROUND_IMAGE, new SingleTypeDeclarationValidator(new CssBackgroundValidator(CommonCssConstants.BACKGROUND_IMAGE)));
        map.put(CommonCssConstants.BACKGROUND_POSITION_X, new SingleTypeDeclarationValidator(new CssBackgroundValidator(CommonCssConstants.BACKGROUND_POSITION_X)));
        map.put(CommonCssConstants.BACKGROUND_POSITION_Y, new SingleTypeDeclarationValidator(new CssBackgroundValidator(CommonCssConstants.BACKGROUND_POSITION_Y)));
        map.put(CommonCssConstants.BACKGROUND_SIZE, new SingleTypeDeclarationValidator(new CssBackgroundValidator(CommonCssConstants.BACKGROUND_SIZE)));
        map.put(CommonCssConstants.BACKGROUND_CLIP, new SingleTypeDeclarationValidator(new CssBackgroundValidator(CommonCssConstants.BACKGROUND_CLIP)));
        map.put(CommonCssConstants.BACKGROUND_ORIGIN, new SingleTypeDeclarationValidator(new CssBackgroundValidator(CommonCssConstants.BACKGROUND_ORIGIN)));
        map.put(CommonCssConstants.BACKGROUND_BLEND_MODE, new SingleTypeDeclarationValidator(new ArrayDataTypeValidator(new CssBlendModeValidator())));
        map.put(CommonCssConstants.OVERFLOW_WRAP, new MultiTypeDeclarationValidator(new CssEnumValidator(CommonCssConstants.ANYWHERE, CommonCssConstants.BREAK_WORD), cssEnumValidator, cssEnumValidator4));
        map.put(CommonCssConstants.WORD_BREAK, new MultiTypeDeclarationValidator(new CssEnumValidator(CommonCssConstants.BREAK_ALL, CommonCssConstants.KEEP_ALL, CommonCssConstants.BREAK_WORD), cssEnumValidator, cssEnumValidator4));
        map.put(CommonCssConstants.FLEX_DIRECTION, new MultiTypeDeclarationValidator(new CssEnumValidator(CommonCssConstants.ROW, CommonCssConstants.ROW_REVERSE, CommonCssConstants.COLUMN, CommonCssConstants.COLUMN_REVERSE), cssEnumValidator4));
        map.put(CommonCssConstants.FLEX_WRAP, new MultiTypeDeclarationValidator(new CssEnumValidator(CommonCssConstants.NOWRAP, CommonCssConstants.WRAP, CommonCssConstants.WRAP_REVERSE), cssEnumValidator4));
        map.put(CommonCssConstants.ALIGN_ITEMS, new MultiTypeDeclarationValidator(cssEnumValidator, new CssEnumValidator(Arrays.asList(CommonCssConstants.BASELINE), Arrays.asList("first", CommonCssConstants.LAST)), new CssEnumValidator(Arrays.asList(CommonCssConstants.STRETCH, CommonCssConstants.CENTER, "start", "end", CommonCssConstants.FLEX_START, CommonCssConstants.FLEX_END, CommonCssConstants.SELF_START, CommonCssConstants.SELF_END), Arrays.asList(CommonCssConstants.SAFE, CommonCssConstants.UNSAFE)), cssEnumValidator4));
        map.put(CommonCssConstants.JUSTIFY_CONTENT, new MultiTypeDeclarationValidator(new CssEnumValidator(Arrays.asList(CommonCssConstants.SPACE_AROUND, CommonCssConstants.SPACE_BETWEEN, CommonCssConstants.SPACE_EVENLY, CommonCssConstants.STRETCH, CommonCssConstants.NORMAL, "left", "right")), new CssEnumValidator(Arrays.asList(CommonCssConstants.CENTER, "start", CommonCssConstants.FLEX_START, CommonCssConstants.SELF_START, "end", CommonCssConstants.FLEX_END, CommonCssConstants.SELF_END), Arrays.asList(CommonCssConstants.SAFE, CommonCssConstants.UNSAFE)), cssEnumValidator4));
        map.put(CommonCssConstants.JUSTIFY_ITEMS, new MultiTypeDeclarationValidator(cssEnumValidator, new CssEnumValidator(Arrays.asList(CommonCssConstants.BASELINE), Arrays.asList("first", CommonCssConstants.LAST)), new CssEnumValidator(Arrays.asList(CommonCssConstants.STRETCH, CommonCssConstants.CENTER, "start", "end", CommonCssConstants.FLEX_START, CommonCssConstants.FLEX_END, CommonCssConstants.SELF_START, CommonCssConstants.SELF_END, "left", "right"), Arrays.asList(CommonCssConstants.SAFE, CommonCssConstants.UNSAFE)), new CssEnumValidator(CommonCssConstants.LEGACY, "legacy left", "legacy right", "legacy center"), cssEnumValidator4));
    }

    @Override // com.itextpdf.styledxmlparser.css.validate.ICssDeclarationValidator
    public boolean isValid(CssDeclaration cssDeclaration) {
        ICssDeclarationValidator iCssDeclarationValidator = this.defaultValidators.get(cssDeclaration.getProperty());
        return iCssDeclarationValidator == null || iCssDeclarationValidator.isValid(cssDeclaration);
    }
}
