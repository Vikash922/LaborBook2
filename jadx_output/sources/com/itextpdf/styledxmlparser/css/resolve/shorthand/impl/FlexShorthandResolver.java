package com.itextpdf.styledxmlparser.css.resolve.shorthand.impl;

import com.facebook.appevents.AppEventsConstants;
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
public class FlexShorthandResolver implements IShorthandResolver {
    private static final Logger LOGGER = LoggerFactory.getLogger((Class<?>) FlexShorthandResolver.class);

    @Override // com.itextpdf.styledxmlparser.css.resolve.shorthand.IShorthandResolver
    public List<CssDeclaration> resolveShorthand(String str) {
        List<CssDeclaration> listResolveShorthandWithOneValue;
        String strTrim = str.trim();
        if (CssTypesValidationUtils.isInitialOrInheritOrUnset(strTrim)) {
            return Arrays.asList(new CssDeclaration(CommonCssConstants.FLEX_GROW, strTrim), new CssDeclaration(CommonCssConstants.FLEX_SHRINK, strTrim), new CssDeclaration(CommonCssConstants.FLEX_BASIS, strTrim));
        }
        if ("auto".equals(strTrim)) {
            return Arrays.asList(new CssDeclaration(CommonCssConstants.FLEX_GROW, AppEventsConstants.EVENT_PARAM_VALUE_YES), new CssDeclaration(CommonCssConstants.FLEX_SHRINK, AppEventsConstants.EVENT_PARAM_VALUE_YES), new CssDeclaration(CommonCssConstants.FLEX_BASIS, "auto"));
        }
        if ("none".equals(strTrim)) {
            return Arrays.asList(new CssDeclaration(CommonCssConstants.FLEX_GROW, AppEventsConstants.EVENT_PARAM_VALUE_NO), new CssDeclaration(CommonCssConstants.FLEX_SHRINK, AppEventsConstants.EVENT_PARAM_VALUE_NO), new CssDeclaration(CommonCssConstants.FLEX_BASIS, "auto"));
        }
        if (CssTypesValidationUtils.containsInitialOrInheritOrUnset(strTrim)) {
            return handleExpressionError(StyledXmlParserLogMessageConstant.INVALID_CSS_PROPERTY_DECLARATION, CommonCssConstants.FLEX, strTrim);
        }
        if (strTrim.isEmpty()) {
            return handleExpressionError(StyledXmlParserLogMessageConstant.SHORTHAND_PROPERTY_CANNOT_BE_EMPTY, CommonCssConstants.FLEX, strTrim);
        }
        String[] strArrSplit = strTrim.split(StringUtils.SPACE);
        int length = strArrSplit.length;
        if (length == 1) {
            listResolveShorthandWithOneValue = resolveShorthandWithOneValue(strArrSplit[0]);
        } else if (length == 2) {
            listResolveShorthandWithOneValue = resolveShorthandWithTwoValues(strArrSplit[0], strArrSplit[1]);
        } else if (length == 3) {
            listResolveShorthandWithOneValue = resolveShorthandWithThreeValues(strArrSplit[0], strArrSplit[1], strArrSplit[2]);
        } else {
            return handleExpressionError(StyledXmlParserLogMessageConstant.INVALID_CSS_PROPERTY_DECLARATION, CommonCssConstants.FLEX, strTrim);
        }
        if (!listResolveShorthandWithOneValue.isEmpty()) {
            fillUnresolvedPropertiesWithDefaultValues(listResolveShorthandWithOneValue);
        }
        return listResolveShorthandWithOneValue;
    }

    private List<CssDeclaration> resolveShorthandWithOneValue(String str) {
        ArrayList arrayList = new ArrayList();
        CssDeclaration cssDeclaration = new CssDeclaration(CommonCssConstants.FLEX_GROW, str);
        if (CssDeclarationValidationMaster.checkDeclaration(cssDeclaration)) {
            arrayList.add(cssDeclaration);
            return arrayList;
        }
        CssDeclaration cssDeclaration2 = new CssDeclaration(CommonCssConstants.FLEX_BASIS, str);
        if (CssDeclarationValidationMaster.checkDeclaration(cssDeclaration2)) {
            arrayList.add(cssDeclaration2);
            return arrayList;
        }
        return handleExpressionError(StyledXmlParserLogMessageConstant.INVALID_CSS_PROPERTY_DECLARATION, CommonCssConstants.FLEX_GROW, str);
    }

    private List<CssDeclaration> resolveShorthandWithTwoValues(String str, String str2) {
        ArrayList arrayList = new ArrayList();
        CssDeclaration cssDeclaration = new CssDeclaration(CommonCssConstants.FLEX_GROW, str);
        if (CssDeclarationValidationMaster.checkDeclaration(cssDeclaration)) {
            arrayList.add(cssDeclaration);
            CssDeclaration cssDeclaration2 = new CssDeclaration(CommonCssConstants.FLEX_SHRINK, str2);
            if (CssDeclarationValidationMaster.checkDeclaration(cssDeclaration2)) {
                arrayList.add(cssDeclaration2);
                return arrayList;
            }
            CssDeclaration cssDeclaration3 = new CssDeclaration(CommonCssConstants.FLEX_BASIS, str2);
            if (CssDeclarationValidationMaster.checkDeclaration(cssDeclaration3)) {
                arrayList.add(cssDeclaration3);
                return arrayList;
            }
            return handleExpressionError(StyledXmlParserLogMessageConstant.INVALID_CSS_PROPERTY_DECLARATION, CommonCssConstants.FLEX_BASIS, str2);
        }
        CssDeclaration cssDeclaration4 = new CssDeclaration(CommonCssConstants.FLEX_BASIS, str);
        if (CssDeclarationValidationMaster.checkDeclaration(cssDeclaration4)) {
            arrayList.add(cssDeclaration4);
            cssDeclaration.setExpression(str2);
            if (CssDeclarationValidationMaster.checkDeclaration(cssDeclaration)) {
                arrayList.add(cssDeclaration);
                return arrayList;
            }
            return handleExpressionError(StyledXmlParserLogMessageConstant.INVALID_CSS_PROPERTY_DECLARATION, CommonCssConstants.FLEX_GROW, str2);
        }
        return handleExpressionError(StyledXmlParserLogMessageConstant.INVALID_CSS_PROPERTY_DECLARATION, CommonCssConstants.FLEX_SHRINK, str2);
    }

    private List<CssDeclaration> resolveShorthandWithThreeValues(String str, String str2, String str3) {
        ArrayList arrayList = new ArrayList();
        CssDeclaration cssDeclaration = new CssDeclaration(CommonCssConstants.FLEX_GROW, str);
        if (CssDeclarationValidationMaster.checkDeclaration(cssDeclaration)) {
            arrayList.add(cssDeclaration);
            CssDeclaration cssDeclaration2 = new CssDeclaration(CommonCssConstants.FLEX_SHRINK, str2);
            if (!CssDeclarationValidationMaster.checkDeclaration(cssDeclaration2)) {
                return handleExpressionError(StyledXmlParserLogMessageConstant.INVALID_CSS_PROPERTY_DECLARATION, CommonCssConstants.FLEX_SHRINK, str2);
            }
            arrayList.add(cssDeclaration2);
            CssDeclaration cssDeclaration3 = new CssDeclaration(CommonCssConstants.FLEX_BASIS, str3);
            if (!CssDeclarationValidationMaster.checkDeclaration(cssDeclaration3)) {
                return handleExpressionError(StyledXmlParserLogMessageConstant.INVALID_CSS_PROPERTY_DECLARATION, CommonCssConstants.FLEX_BASIS, str3);
            }
            arrayList.add(cssDeclaration3);
            return arrayList;
        }
        CssDeclaration cssDeclaration4 = new CssDeclaration(CommonCssConstants.FLEX_GROW, str2);
        if (CssDeclarationValidationMaster.checkDeclaration(cssDeclaration4)) {
            arrayList.add(cssDeclaration4);
            CssDeclaration cssDeclaration5 = new CssDeclaration(CommonCssConstants.FLEX_SHRINK, str3);
            if (!CssDeclarationValidationMaster.checkDeclaration(cssDeclaration5)) {
                return handleExpressionError(StyledXmlParserLogMessageConstant.INVALID_CSS_PROPERTY_DECLARATION, CommonCssConstants.FLEX_SHRINK, str3);
            }
            arrayList.add(cssDeclaration5);
            CssDeclaration cssDeclaration6 = new CssDeclaration(CommonCssConstants.FLEX_BASIS, str);
            if (!CssDeclarationValidationMaster.checkDeclaration(cssDeclaration6)) {
                return handleExpressionError(StyledXmlParserLogMessageConstant.INVALID_CSS_PROPERTY_DECLARATION, CommonCssConstants.FLEX_BASIS, str);
            }
            arrayList.add(cssDeclaration6);
            return arrayList;
        }
        return handleExpressionError(StyledXmlParserLogMessageConstant.INVALID_CSS_PROPERTY_DECLARATION, CommonCssConstants.FLEX_GROW, str2);
    }

    private void fillUnresolvedPropertiesWithDefaultValues(List<CssDeclaration> list) {
        if (!list.stream().anyMatch(new Predicate() { // from class: com.itextpdf.styledxmlparser.css.resolve.shorthand.impl.FlexShorthandResolver$$ExternalSyntheticLambda0
            @Override // java.util.function.Predicate
            public final boolean test(Object obj) {
                return ((CssDeclaration) obj).getProperty().equals(CommonCssConstants.FLEX_GROW);
            }
        })) {
            list.add(new CssDeclaration(CommonCssConstants.FLEX_GROW, CssDefaults.getDefaultValue(CommonCssConstants.FLEX_GROW)));
        }
        if (!list.stream().anyMatch(new Predicate() { // from class: com.itextpdf.styledxmlparser.css.resolve.shorthand.impl.FlexShorthandResolver$$ExternalSyntheticLambda1
            @Override // java.util.function.Predicate
            public final boolean test(Object obj) {
                return ((CssDeclaration) obj).getProperty().equals(CommonCssConstants.FLEX_SHRINK);
            }
        })) {
            list.add(new CssDeclaration(CommonCssConstants.FLEX_SHRINK, CssDefaults.getDefaultValue(CommonCssConstants.FLEX_SHRINK)));
        }
        if (list.stream().anyMatch(new Predicate() { // from class: com.itextpdf.styledxmlparser.css.resolve.shorthand.impl.FlexShorthandResolver$$ExternalSyntheticLambda2
            @Override // java.util.function.Predicate
            public final boolean test(Object obj) {
                return ((CssDeclaration) obj).getProperty().equals(CommonCssConstants.FLEX_BASIS);
            }
        })) {
            return;
        }
        list.add(new CssDeclaration(CommonCssConstants.FLEX_BASIS, AppEventsConstants.EVENT_PARAM_VALUE_NO));
    }

    private static List<CssDeclaration> handleExpressionError(String str, String str2, String str3) {
        LOGGER.warn(MessageFormatUtil.format(str, str2, str3));
        return Collections.emptyList();
    }
}
