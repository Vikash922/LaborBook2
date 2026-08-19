package com.itextpdf.styledxmlparser.css.resolve.shorthand.impl;

import com.itextpdf.commons.utils.MessageFormatUtil;
import com.itextpdf.styledxmlparser.css.CommonCssConstants;
import com.itextpdf.styledxmlparser.css.CssDeclaration;
import com.itextpdf.styledxmlparser.css.resolve.CssDefaults;
import com.itextpdf.styledxmlparser.css.resolve.shorthand.IShorthandResolver;
import com.itextpdf.styledxmlparser.css.util.CssTypesValidationUtils;
import com.itextpdf.styledxmlparser.css.validate.CssDeclarationValidationMaster;
import com.itextpdf.styledxmlparser.logs.StyledXmlParserLogMessageConstant;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import java.util.function.Predicate;
import org.shadow.apache.commons.lang3.StringUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

/* JADX INFO: loaded from: classes6.dex */
public class FlexFlowShorthandResolver implements IShorthandResolver {
    private static final Logger LOGGER = LoggerFactory.getLogger((Class<?>) FlexFlowShorthandResolver.class);

    @Override // com.itextpdf.styledxmlparser.css.resolve.shorthand.IShorthandResolver
    public List<CssDeclaration> resolveShorthand(String str) {
        String strTrim = str.trim();
        if (CssTypesValidationUtils.isInitialOrInheritOrUnset(strTrim)) {
            return Arrays.asList(new CssDeclaration(CommonCssConstants.FLEX_DIRECTION, strTrim), new CssDeclaration(CommonCssConstants.FLEX_WRAP, strTrim));
        }
        if (CssTypesValidationUtils.containsInitialOrInheritOrUnset(strTrim)) {
            return handleExpressionError(StyledXmlParserLogMessageConstant.INVALID_CSS_PROPERTY_DECLARATION, CommonCssConstants.FLEX_FLOW, strTrim);
        }
        if (strTrim.isEmpty()) {
            return handleExpressionError(StyledXmlParserLogMessageConstant.SHORTHAND_PROPERTY_CANNOT_BE_EMPTY, CommonCssConstants.FLEX_FLOW, strTrim);
        }
        String[] strArrSplit = strTrim.split(StringUtils.SPACE);
        ArrayList arrayList = new ArrayList();
        if (1 == strArrSplit.length) {
            CssDeclaration cssDeclaration = new CssDeclaration(CommonCssConstants.FLEX_DIRECTION, strArrSplit[0]);
            if (CssDeclarationValidationMaster.checkDeclaration(cssDeclaration)) {
                arrayList.add(cssDeclaration);
            } else {
                CssDeclaration cssDeclaration2 = new CssDeclaration(CommonCssConstants.FLEX_WRAP, strArrSplit[0]);
                if (CssDeclarationValidationMaster.checkDeclaration(cssDeclaration2)) {
                    arrayList.add(cssDeclaration2);
                } else {
                    return handleExpressionError(StyledXmlParserLogMessageConstant.INVALID_CSS_PROPERTY_DECLARATION, CommonCssConstants.FLEX_FLOW, strTrim);
                }
            }
        } else if (2 == strArrSplit.length) {
            CssDeclaration cssDeclaration3 = new CssDeclaration(CommonCssConstants.FLEX_DIRECTION, strArrSplit[0]);
            CssDeclaration cssDeclaration4 = new CssDeclaration(CommonCssConstants.FLEX_WRAP, strArrSplit[1]);
            if (CssDeclarationValidationMaster.checkDeclaration(cssDeclaration3)) {
                arrayList.add(cssDeclaration3);
            } else {
                CssDeclaration cssDeclaration5 = new CssDeclaration(CommonCssConstants.FLEX_DIRECTION, strArrSplit[1]);
                cssDeclaration4 = new CssDeclaration(CommonCssConstants.FLEX_WRAP, strArrSplit[0]);
                if (CssDeclarationValidationMaster.checkDeclaration(cssDeclaration5)) {
                    arrayList.add(cssDeclaration5);
                } else {
                    return handleExpressionError(StyledXmlParserLogMessageConstant.INVALID_CSS_PROPERTY_DECLARATION, CommonCssConstants.FLEX_DIRECTION, strTrim);
                }
            }
            if (CssDeclarationValidationMaster.checkDeclaration(cssDeclaration4)) {
                arrayList.add(cssDeclaration4);
            } else {
                return handleExpressionError(StyledXmlParserLogMessageConstant.INVALID_CSS_PROPERTY_DECLARATION, CommonCssConstants.FLEX_WRAP, strTrim);
            }
        } else {
            return handleExpressionError(StyledXmlParserLogMessageConstant.INVALID_CSS_PROPERTY_DECLARATION, CommonCssConstants.FLEX_FLOW, strTrim);
        }
        fillUnresolvedPropertiesWithDefaultValues(arrayList);
        return arrayList;
    }

    private static List<CssDeclaration> handleExpressionError(String str, String str2, String str3) {
        LOGGER.warn(MessageFormatUtil.format(str, str2, str3));
        return Collections.emptyList();
    }

    private void fillUnresolvedPropertiesWithDefaultValues(List<CssDeclaration> list) {
        if (!list.stream().anyMatch(new Predicate() { // from class: com.itextpdf.styledxmlparser.css.resolve.shorthand.impl.FlexFlowShorthandResolver$$ExternalSyntheticLambda0
            @Override // java.util.function.Predicate
            public final boolean test(Object obj) {
                return ((CssDeclaration) obj).getProperty().equals(CommonCssConstants.FLEX_DIRECTION);
            }
        })) {
            list.add(new CssDeclaration(CommonCssConstants.FLEX_DIRECTION, CssDefaults.getDefaultValue(CommonCssConstants.FLEX_DIRECTION)));
        }
        if (list.stream().anyMatch(new Predicate() { // from class: com.itextpdf.styledxmlparser.css.resolve.shorthand.impl.FlexFlowShorthandResolver$$ExternalSyntheticLambda1
            @Override // java.util.function.Predicate
            public final boolean test(Object obj) {
                return ((CssDeclaration) obj).getProperty().equals(CommonCssConstants.FLEX_WRAP);
            }
        })) {
            return;
        }
        list.add(new CssDeclaration(CommonCssConstants.FLEX_WRAP, CssDefaults.getDefaultValue(CommonCssConstants.FLEX_WRAP)));
    }
}
