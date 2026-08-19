package com.itextpdf.styledxmlparser.css.resolve.shorthand.impl;

import com.itextpdf.commons.utils.MessageFormatUtil;
import com.itextpdf.styledxmlparser.css.CommonCssConstants;
import com.itextpdf.styledxmlparser.css.CssDeclaration;
import com.itextpdf.styledxmlparser.css.resolve.shorthand.IShorthandResolver;
import com.itextpdf.styledxmlparser.css.util.CssTypesValidationUtils;
import com.itextpdf.styledxmlparser.css.util.CssUtils;
import com.itextpdf.styledxmlparser.css.validate.CssDeclarationValidationMaster;
import com.itextpdf.styledxmlparser.logs.StyledXmlParserLogMessageConstant;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.shadow.apache.commons.lang3.StringUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

/* JADX INFO: loaded from: classes6.dex */
public class BackgroundPositionShorthandResolver implements IShorthandResolver {
    private static final Logger LOGGER = LoggerFactory.getLogger((Class<?>) BackgroundPositionShorthandResolver.class);
    private static final int POSITION_VALUES_MAX_COUNT = 2;

    private enum BackgroundPositionType {
        NUMERIC,
        HORIZONTAL_POSITION,
        VERTICAL_POSITION,
        CENTER
    }

    @Override // com.itextpdf.styledxmlparser.css.resolve.shorthand.IShorthandResolver
    public List<CssDeclaration> resolveShorthand(String str) {
        if (CssTypesValidationUtils.isInitialOrInheritOrUnset(str)) {
            return Arrays.asList(new CssDeclaration(CommonCssConstants.BACKGROUND_POSITION_X, str), new CssDeclaration(CommonCssConstants.BACKGROUND_POSITION_Y, str));
        }
        if (str.trim().isEmpty()) {
            LOGGER.warn(MessageFormatUtil.format(StyledXmlParserLogMessageConstant.SHORTHAND_PROPERTY_CANNOT_BE_EMPTY, CommonCssConstants.BACKGROUND_POSITION));
            return new ArrayList();
        }
        List<List<String>> listExtractShorthandProperties = CssUtils.extractShorthandProperties(str);
        HashMap map = new HashMap();
        HashMap map2 = new HashMap();
        for (List<String> list : listExtractShorthandProperties) {
            if (list.isEmpty()) {
                LOGGER.warn(MessageFormatUtil.format(StyledXmlParserLogMessageConstant.SHORTHAND_PROPERTY_CANNOT_BE_EMPTY, CommonCssConstants.BACKGROUND_POSITION));
                return new ArrayList();
            }
            if (!parsePositionShorthand(list, map2)) {
                LOGGER.warn(MessageFormatUtil.format(StyledXmlParserLogMessageConstant.INVALID_CSS_PROPERTY_DECLARATION, str));
                return new ArrayList();
            }
            updateValue(map, map2, CommonCssConstants.BACKGROUND_POSITION_X);
            updateValue(map, map2, CommonCssConstants.BACKGROUND_POSITION_Y);
            map2.clear();
        }
        if (!checkProperty(map, CommonCssConstants.BACKGROUND_POSITION_X) || !checkProperty(map, CommonCssConstants.BACKGROUND_POSITION_Y)) {
            return new ArrayList();
        }
        return Arrays.asList(new CssDeclaration(CommonCssConstants.BACKGROUND_POSITION_X, (String) map.get(CommonCssConstants.BACKGROUND_POSITION_X)), new CssDeclaration(CommonCssConstants.BACKGROUND_POSITION_Y, (String) map.get(CommonCssConstants.BACKGROUND_POSITION_Y)));
    }

    private static boolean checkProperty(Map<String, String> map, String str) {
        if (CssDeclarationValidationMaster.checkDeclaration(new CssDeclaration(str, map.get(str)))) {
            return true;
        }
        LOGGER.warn(MessageFormatUtil.format(StyledXmlParserLogMessageConstant.INVALID_CSS_PROPERTY_DECLARATION, map.get(str)));
        return false;
    }

    private static void updateValue(Map<String, String> map, Map<String, String> map2, String str) {
        if (map2.get(str) == null) {
            if (map.get(str) == null) {
                map.put(str, CommonCssConstants.CENTER);
                return;
            } else {
                map.put(str, map.get(str) + ",center");
                return;
            }
        }
        if (map.get(str) == null) {
            map.put(str, map2.get(str));
        } else {
            map.put(str, map.get(str) + "," + map2.get(str));
        }
    }

    private static boolean parsePositionShorthand(List<String> list, Map<String, String> map) {
        Iterator<String> it = list.iterator();
        while (it.hasNext()) {
            if (!parseNonNumericValue(it.next(), map)) {
                return false;
            }
        }
        for (int i = 0; i < list.size(); i++) {
            if (typeOfValue(list.get(i)) == BackgroundPositionType.NUMERIC && !parseNumericValue(i, list, map)) {
                return false;
            }
        }
        return true;
    }

    private static boolean parseNumericValue(int i, List<String> list, Map<String, String> map) {
        if (map.get(CommonCssConstants.BACKGROUND_POSITION_X) == null || map.get(CommonCssConstants.BACKGROUND_POSITION_Y) == null) {
            return parseShortNumericValue(i, list, map, list.get(i));
        }
        if (i == 0) {
            return false;
        }
        return parseLargeNumericValue(list.get(i - 1), map, list.get(i));
    }

    private static boolean parseShortNumericValue(int i, List<String> list, Map<String, String> map, String str) {
        if (list.size() > 2) {
            return false;
        }
        if (map.get(CommonCssConstants.BACKGROUND_POSITION_X) == null) {
            if (i != 0) {
                return false;
            }
            map.put(CommonCssConstants.BACKGROUND_POSITION_X, str);
            return true;
        }
        if (i == 0) {
            if (typeOfValue(list.get(i + 1)) != BackgroundPositionType.CENTER) {
                return false;
            }
            map.put(CommonCssConstants.BACKGROUND_POSITION_X, str);
            map.put(CommonCssConstants.BACKGROUND_POSITION_Y, CommonCssConstants.CENTER);
            return true;
        }
        map.put(CommonCssConstants.BACKGROUND_POSITION_Y, str);
        return true;
    }

    private static boolean parseLargeNumericValue(String str, Map<String, String> map, String str2) {
        if (typeOfValue(str) == BackgroundPositionType.HORIZONTAL_POSITION) {
            map.put(CommonCssConstants.BACKGROUND_POSITION_X, map.get(CommonCssConstants.BACKGROUND_POSITION_X) + StringUtils.SPACE + str2);
            return true;
        }
        if (typeOfValue(str) != BackgroundPositionType.VERTICAL_POSITION) {
            return false;
        }
        map.put(CommonCssConstants.BACKGROUND_POSITION_Y, map.get(CommonCssConstants.BACKGROUND_POSITION_Y) + StringUtils.SPACE + str2);
        return true;
    }

    /* JADX INFO: renamed from: com.itextpdf.styledxmlparser.css.resolve.shorthand.impl.BackgroundPositionShorthandResolver$1 */
    static /* synthetic */ class C35301 {

        /* JADX INFO: renamed from: $SwitchMap$com$itextpdf$styledxmlparser$css$resolve$shorthand$impl$BackgroundPositionShorthandResolver$BackgroundPositionType */
        static final /* synthetic */ int[] f3308x55e445c7;

        static {
            int[] iArr = new int[BackgroundPositionType.values().length];
            f3308x55e445c7 = iArr;
            try {
                iArr[BackgroundPositionType.HORIZONTAL_POSITION.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f3308x55e445c7[BackgroundPositionType.VERTICAL_POSITION.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f3308x55e445c7[BackgroundPositionType.CENTER.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    private static boolean parseNonNumericValue(String str, Map<String, String> map) {
        int i = C35301.f3308x55e445c7[typeOfValue(str).ordinal()];
        if (i == 1) {
            return parseHorizontal(str, map);
        }
        if (i == 2) {
            return parseVertical(str, map);
        }
        if (i != 3) {
            return true;
        }
        return parseCenter(str, map);
    }

    private static boolean parseHorizontal(String str, Map<String, String> map) {
        if (map.get(CommonCssConstants.BACKGROUND_POSITION_X) == null) {
            map.put(CommonCssConstants.BACKGROUND_POSITION_X, str);
            return true;
        }
        if (!CommonCssConstants.CENTER.equals(map.get(CommonCssConstants.BACKGROUND_POSITION_X)) || map.get(CommonCssConstants.BACKGROUND_POSITION_Y) != null) {
            return false;
        }
        map.put(CommonCssConstants.BACKGROUND_POSITION_X, str);
        map.put(CommonCssConstants.BACKGROUND_POSITION_Y, CommonCssConstants.CENTER);
        return true;
    }

    private static boolean parseVertical(String str, Map<String, String> map) {
        if (map.get(CommonCssConstants.BACKGROUND_POSITION_Y) != null) {
            return false;
        }
        map.put(CommonCssConstants.BACKGROUND_POSITION_Y, str);
        return true;
    }

    private static boolean parseCenter(String str, Map<String, String> map) {
        if (map.get(CommonCssConstants.BACKGROUND_POSITION_X) == null) {
            map.put(CommonCssConstants.BACKGROUND_POSITION_X, str);
            return true;
        }
        if (map.get(CommonCssConstants.BACKGROUND_POSITION_Y) != null) {
            return false;
        }
        map.put(CommonCssConstants.BACKGROUND_POSITION_Y, str);
        return true;
    }

    private static BackgroundPositionType typeOfValue(String str) {
        if ("left".equals(str) || "right".equals(str)) {
            return BackgroundPositionType.HORIZONTAL_POSITION;
        }
        if ("top".equals(str) || CommonCssConstants.BOTTOM.equals(str)) {
            return BackgroundPositionType.VERTICAL_POSITION;
        }
        if (CommonCssConstants.CENTER.equals(str)) {
            return BackgroundPositionType.CENTER;
        }
        return BackgroundPositionType.NUMERIC;
    }
}
