package com.itextpdf.styledxmlparser.css.validate.impl.datatype;

import com.itextpdf.styledxmlparser.css.CommonCssConstants;
import com.itextpdf.styledxmlparser.css.util.CssBackgroundUtils;
import com.itextpdf.styledxmlparser.css.util.CssTypesValidationUtils;
import com.itextpdf.styledxmlparser.css.util.CssUtils;
import com.itextpdf.styledxmlparser.css.validate.ICssDataTypeValidator;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public class CssBackgroundValidator implements ICssDataTypeValidator {
    private static final int MAX_AMOUNT_OF_VALUES = 2;
    private final String backgroundProperty;

    public CssBackgroundValidator(String str) {
        this.backgroundProperty = str;
    }

    @Override // com.itextpdf.styledxmlparser.css.validate.ICssDataTypeValidator
    public boolean isValid(String str) {
        if (str == null) {
            return false;
        }
        if (CssTypesValidationUtils.isInitialOrInheritOrUnset(str)) {
            return true;
        }
        for (List<String> list : CssUtils.extractShorthandProperties(str)) {
            if (list.isEmpty() || list.size() > 2) {
                return false;
            }
            for (int i = 0; i < list.size(); i++) {
                if (!isValidProperty(list, i)) {
                    return false;
                }
            }
        }
        return true;
    }

    private boolean isValidProperty(List<String> list, int i) {
        if (!isPropertyValueCorrespondsPropertyType(list.get(i))) {
            return false;
        }
        if (list.size() != 2) {
            return true;
        }
        if (isMultiValueAllowedForThisType() && isMultiValueAllowedForThisValue(list.get(i))) {
            return checkMultiValuePositionXY(list, i);
        }
        return false;
    }

    private boolean checkMultiValuePositionXY(List<String> list, int i) {
        if (!CommonCssConstants.BACKGROUND_POSITION_X.equals(this.backgroundProperty) && !CommonCssConstants.BACKGROUND_POSITION_Y.equals(this.backgroundProperty)) {
            return true;
        }
        if (CommonCssConstants.BACKGROUND_POSITION_VALUES.contains(list.get(i)) && i == 1) {
            return false;
        }
        return CommonCssConstants.BACKGROUND_POSITION_VALUES.contains(list.get(i)) || i == 1;
    }

    private boolean isMultiValueAllowedForThisType() {
        return (CommonCssConstants.BACKGROUND_ORIGIN.equals(this.backgroundProperty) || CommonCssConstants.BACKGROUND_CLIP.equals(this.backgroundProperty) || CommonCssConstants.BACKGROUND_IMAGE.equals(this.backgroundProperty) || CommonCssConstants.BACKGROUND_ATTACHMENT.equals(this.backgroundProperty)) ? false : true;
    }

    private static boolean isMultiValueAllowedForThisValue(String str) {
        return (CommonCssConstants.REPEAT_X.equals(str) || CommonCssConstants.REPEAT_Y.equals(str) || CommonCssConstants.COVER.equals(str) || CommonCssConstants.CONTAIN.equals(str) || CommonCssConstants.CENTER.equals(str)) ? false : true;
    }

    private boolean isPropertyValueCorrespondsPropertyType(String str) {
        CssBackgroundUtils.BackgroundPropertyType backgroundPropertyTypeResolveBackgroundPropertyType = CssBackgroundUtils.resolveBackgroundPropertyType(str);
        if (backgroundPropertyTypeResolveBackgroundPropertyType == CssBackgroundUtils.BackgroundPropertyType.UNDEFINED) {
            return false;
        }
        if (CssBackgroundUtils.getBackgroundPropertyNameFromType(backgroundPropertyTypeResolveBackgroundPropertyType).equals(this.backgroundProperty)) {
            return true;
        }
        if (backgroundPropertyTypeResolveBackgroundPropertyType == CssBackgroundUtils.BackgroundPropertyType.BACKGROUND_POSITION && (CommonCssConstants.BACKGROUND_POSITION_X.equals(this.backgroundProperty) || CommonCssConstants.BACKGROUND_POSITION_Y.equals(this.backgroundProperty))) {
            return true;
        }
        if (backgroundPropertyTypeResolveBackgroundPropertyType == CssBackgroundUtils.BackgroundPropertyType.BACKGROUND_ORIGIN_OR_CLIP && (CommonCssConstants.BACKGROUND_CLIP.equals(this.backgroundProperty) || CommonCssConstants.BACKGROUND_ORIGIN.equals(this.backgroundProperty))) {
            return true;
        }
        if (backgroundPropertyTypeResolveBackgroundPropertyType == CssBackgroundUtils.BackgroundPropertyType.BACKGROUND_POSITION_OR_SIZE) {
            return CommonCssConstants.BACKGROUND_POSITION_X.equals(this.backgroundProperty) || CommonCssConstants.BACKGROUND_POSITION_Y.equals(this.backgroundProperty) || CommonCssConstants.BACKGROUND_SIZE.equals(this.backgroundProperty);
        }
        return false;
    }
}
