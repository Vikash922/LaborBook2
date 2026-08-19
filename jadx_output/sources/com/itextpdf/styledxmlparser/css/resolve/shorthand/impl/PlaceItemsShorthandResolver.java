package com.itextpdf.styledxmlparser.css.resolve.shorthand.impl;

import com.itextpdf.commons.utils.MessageFormatUtil;
import com.itextpdf.styledxmlparser.css.CommonCssConstants;
import com.itextpdf.styledxmlparser.css.CssDeclaration;
import com.itextpdf.styledxmlparser.css.resolve.shorthand.IShorthandResolver;
import com.itextpdf.styledxmlparser.css.util.CssTypesValidationUtils;
import com.itextpdf.styledxmlparser.css.validate.CssDeclarationValidationMaster;
import com.itextpdf.styledxmlparser.logs.StyledXmlParserLogMessageConstant;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import org.shadow.apache.commons.lang3.StringUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

/* JADX INFO: loaded from: classes6.dex */
public class PlaceItemsShorthandResolver implements IShorthandResolver {
    private static final Logger LOGGER = LoggerFactory.getLogger((Class<?>) PlaceItemsShorthandResolver.class);

    @Override // com.itextpdf.styledxmlparser.css.resolve.shorthand.IShorthandResolver
    public List<CssDeclaration> resolveShorthand(String str) {
        String strTrim = str.trim();
        if (CssTypesValidationUtils.isInitialOrInheritOrUnset(strTrim)) {
            return Arrays.asList(new CssDeclaration(CommonCssConstants.ALIGN_ITEMS, strTrim), new CssDeclaration(CommonCssConstants.JUSTIFY_ITEMS, strTrim));
        }
        if (CssTypesValidationUtils.containsInitialOrInheritOrUnset(strTrim)) {
            return handleExpressionError(StyledXmlParserLogMessageConstant.INVALID_CSS_PROPERTY_DECLARATION, CommonCssConstants.PLACE_ITEMS, strTrim);
        }
        if (strTrim.isEmpty()) {
            return handleExpressionError(StyledXmlParserLogMessageConstant.SHORTHAND_PROPERTY_CANNOT_BE_EMPTY, CommonCssConstants.PLACE_ITEMS, strTrim);
        }
        String[] strArrSplit = strTrim.split(StringUtils.SPACE);
        int length = strArrSplit.length;
        if (length == 1) {
            return resolveShorthandWithOneWord(strArrSplit[0]);
        }
        if (length == 2) {
            return resolveShorthandWithTwoWords(strArrSplit[0], strArrSplit[1]);
        }
        if (length == 3) {
            return resolveShorthandWithThreeWords(strArrSplit[0], strArrSplit[1], strArrSplit[2]);
        }
        if (length == 4) {
            return resolveShorthandWithFourWords(strArrSplit[0], strArrSplit[1], strArrSplit[2], strArrSplit[3]);
        }
        return handleExpressionError(StyledXmlParserLogMessageConstant.INVALID_CSS_PROPERTY_DECLARATION, CommonCssConstants.PLACE_ITEMS, strTrim);
    }

    private List<CssDeclaration> resolveShorthandWithOneWord(String str) {
        List<CssDeclaration> listResolveAlignItemsAndJustifyItems = resolveAlignItemsAndJustifyItems(str, str);
        return listResolveAlignItemsAndJustifyItems.isEmpty() ? handleExpressionError(StyledXmlParserLogMessageConstant.INVALID_CSS_PROPERTY_DECLARATION, CommonCssConstants.PLACE_ITEMS, str) : listResolveAlignItemsAndJustifyItems;
    }

    private List<CssDeclaration> resolveShorthandWithTwoWords(String str, String str2) {
        List<CssDeclaration> listResolveAlignItemsAndJustifyItems = resolveAlignItemsAndJustifyItems(str, str2);
        if (listResolveAlignItemsAndJustifyItems.isEmpty()) {
            listResolveAlignItemsAndJustifyItems = resolveAlignItemsAndJustifyItems(str + StringUtils.SPACE + str2, str + StringUtils.SPACE + str2);
            if (listResolveAlignItemsAndJustifyItems.isEmpty()) {
                return handleExpressionError(StyledXmlParserLogMessageConstant.INVALID_CSS_PROPERTY_DECLARATION, CommonCssConstants.PLACE_ITEMS, str + StringUtils.SPACE + str2);
            }
        }
        return listResolveAlignItemsAndJustifyItems;
    }

    private List<CssDeclaration> resolveShorthandWithThreeWords(String str, String str2, String str3) {
        List<CssDeclaration> listResolveAlignItemsAndJustifyItems = resolveAlignItemsAndJustifyItems(str, str2 + StringUtils.SPACE + str3);
        if (listResolveAlignItemsAndJustifyItems.isEmpty()) {
            listResolveAlignItemsAndJustifyItems = resolveAlignItemsAndJustifyItems(str + StringUtils.SPACE + str2, str3);
            if (listResolveAlignItemsAndJustifyItems.isEmpty()) {
                return handleExpressionError(StyledXmlParserLogMessageConstant.INVALID_CSS_PROPERTY_DECLARATION, CommonCssConstants.PLACE_ITEMS, str + StringUtils.SPACE + str2 + StringUtils.SPACE + str3);
            }
        }
        return listResolveAlignItemsAndJustifyItems;
    }

    private List<CssDeclaration> resolveShorthandWithFourWords(String str, String str2, String str3, String str4) {
        List<CssDeclaration> listResolveAlignItemsAndJustifyItems = resolveAlignItemsAndJustifyItems(str + StringUtils.SPACE + str2, str3 + StringUtils.SPACE + str4);
        return listResolveAlignItemsAndJustifyItems.isEmpty() ? handleExpressionError(StyledXmlParserLogMessageConstant.INVALID_CSS_PROPERTY_DECLARATION, CommonCssConstants.PLACE_ITEMS, str + StringUtils.SPACE + str2 + StringUtils.SPACE + str3 + StringUtils.SPACE + str4) : listResolveAlignItemsAndJustifyItems;
    }

    private List<CssDeclaration> resolveAlignItemsAndJustifyItems(String str, String str2) {
        CssDeclaration cssDeclaration = new CssDeclaration(CommonCssConstants.ALIGN_ITEMS, str);
        if (CssDeclarationValidationMaster.checkDeclaration(cssDeclaration)) {
            CssDeclaration cssDeclaration2 = new CssDeclaration(CommonCssConstants.JUSTIFY_ITEMS, str2);
            return CssDeclarationValidationMaster.checkDeclaration(cssDeclaration2) ? Arrays.asList(cssDeclaration, cssDeclaration2) : Collections.emptyList();
        }
        return Collections.emptyList();
    }

    private static List<CssDeclaration> handleExpressionError(String str, String str2, String str3) {
        LOGGER.warn(MessageFormatUtil.format(str, str2, str3));
        return Collections.emptyList();
    }
}
