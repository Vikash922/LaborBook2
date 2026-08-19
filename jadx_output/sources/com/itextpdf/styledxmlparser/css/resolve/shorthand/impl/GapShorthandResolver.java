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
public class GapShorthandResolver implements IShorthandResolver {
    private static final Logger LOGGER = LoggerFactory.getLogger((Class<?>) GapShorthandResolver.class);

    @Override // com.itextpdf.styledxmlparser.css.resolve.shorthand.IShorthandResolver
    public List<CssDeclaration> resolveShorthand(String str) {
        String strTrim = str.trim();
        if (CssTypesValidationUtils.isInitialOrInheritOrUnset(strTrim)) {
            return Arrays.asList(new CssDeclaration(CommonCssConstants.ROW_GAP, strTrim), new CssDeclaration(CommonCssConstants.COLUMN_GAP, strTrim));
        }
        if (CssTypesValidationUtils.containsInitialOrInheritOrUnset(strTrim)) {
            return handleExpressionError(StyledXmlParserLogMessageConstant.INVALID_CSS_PROPERTY_DECLARATION, CommonCssConstants.GAP, strTrim);
        }
        if (strTrim.isEmpty()) {
            return handleExpressionError(StyledXmlParserLogMessageConstant.SHORTHAND_PROPERTY_CANNOT_BE_EMPTY, CommonCssConstants.GAP, strTrim);
        }
        String[] strArrSplit = strTrim.split(StringUtils.SPACE);
        if (strArrSplit.length == 1) {
            String str2 = strArrSplit[0];
            return resolveGapWithTwoProperties(str2, str2);
        }
        if (strArrSplit.length == 2) {
            return resolveGapWithTwoProperties(strArrSplit[0], strArrSplit[1]);
        }
        return handleExpressionError(StyledXmlParserLogMessageConstant.INVALID_CSS_PROPERTY_DECLARATION, CommonCssConstants.GAP, strTrim);
    }

    private List<CssDeclaration> resolveGapWithTwoProperties(String str, String str2) {
        CssDeclaration cssDeclaration = new CssDeclaration(CommonCssConstants.ROW_GAP, str);
        if (!CssDeclarationValidationMaster.checkDeclaration(cssDeclaration)) {
            return handleExpressionError(StyledXmlParserLogMessageConstant.INVALID_CSS_PROPERTY_DECLARATION, CommonCssConstants.ROW_GAP, str);
        }
        CssDeclaration cssDeclaration2 = new CssDeclaration(CommonCssConstants.COLUMN_GAP, str2);
        return !CssDeclarationValidationMaster.checkDeclaration(cssDeclaration2) ? handleExpressionError(StyledXmlParserLogMessageConstant.INVALID_CSS_PROPERTY_DECLARATION, CommonCssConstants.COLUMN_GAP, str2) : Arrays.asList(cssDeclaration, cssDeclaration2);
    }

    private static List<CssDeclaration> handleExpressionError(String str, String str2, String str3) {
        LOGGER.warn(MessageFormatUtil.format(str, str2, str3));
        return Collections.emptyList();
    }
}
