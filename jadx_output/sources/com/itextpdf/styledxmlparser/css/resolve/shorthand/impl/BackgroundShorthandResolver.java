package com.itextpdf.styledxmlparser.css.resolve.shorthand.impl;

import com.google.firebase.sessions.settings.RemoteSettings;
import com.itextpdf.commons.utils.MessageFormatUtil;
import com.itextpdf.styledxmlparser.css.CommonCssConstants;
import com.itextpdf.styledxmlparser.css.CssDeclaration;
import com.itextpdf.styledxmlparser.css.resolve.CssDefaults;
import com.itextpdf.styledxmlparser.css.resolve.shorthand.IShorthandResolver;
import com.itextpdf.styledxmlparser.css.resolve.shorthand.ShorthandResolverFactory;
import com.itextpdf.styledxmlparser.css.util.CssBackgroundUtils;
import com.itextpdf.styledxmlparser.css.util.CssTypesValidationUtils;
import com.itextpdf.styledxmlparser.css.util.CssUtils;
import com.itextpdf.styledxmlparser.css.validate.CssDeclarationValidationMaster;
import com.itextpdf.styledxmlparser.logs.StyledXmlParserLogMessageConstant;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import org.shadow.apache.commons.lang3.StringUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

/* JADX INFO: loaded from: classes6.dex */
public class BackgroundShorthandResolver implements IShorthandResolver {
    private static final Logger LOGGER = LoggerFactory.getLogger((Class<?>) BackgroundShorthandResolver.class);

    @Override // com.itextpdf.styledxmlparser.css.resolve.shorthand.IShorthandResolver
    public List<CssDeclaration> resolveShorthand(String str) {
        if (CssTypesValidationUtils.isInitialOrInheritOrUnset(str)) {
            return Arrays.asList(new CssDeclaration(CommonCssConstants.BACKGROUND_COLOR, str), new CssDeclaration(CommonCssConstants.BACKGROUND_IMAGE, str), new CssDeclaration(CommonCssConstants.BACKGROUND_POSITION, str), new CssDeclaration(CommonCssConstants.BACKGROUND_SIZE, str), new CssDeclaration(CommonCssConstants.BACKGROUND_REPEAT, str), new CssDeclaration(CommonCssConstants.BACKGROUND_ORIGIN, str), new CssDeclaration(CommonCssConstants.BACKGROUND_CLIP, str), new CssDeclaration(CommonCssConstants.BACKGROUND_ATTACHMENT, str));
        }
        if (str.trim().isEmpty()) {
            LOGGER.warn(MessageFormatUtil.format(StyledXmlParserLogMessageConstant.SHORTHAND_PROPERTY_CANNOT_BE_EMPTY, CommonCssConstants.BACKGROUND));
            return new ArrayList();
        }
        List<List<String>> listExtractShorthandProperties = CssUtils.extractShorthandProperties(str);
        HashMap map = new HashMap();
        fillMapWithPropertiesTypes(map);
        Iterator<List<String>> it = listExtractShorthandProperties.iterator();
        while (it.hasNext()) {
            if (!processProperties(it.next(), map)) {
                return new ArrayList();
            }
        }
        if (map.get(CssBackgroundUtils.BackgroundPropertyType.BACKGROUND_COLOR) == null) {
            map.put(CssBackgroundUtils.BackgroundPropertyType.BACKGROUND_COLOR, CommonCssConstants.TRANSPARENT);
        }
        if (!checkProperties(map)) {
            return new ArrayList();
        }
        return Arrays.asList(new CssDeclaration(CssBackgroundUtils.getBackgroundPropertyNameFromType(CssBackgroundUtils.BackgroundPropertyType.BACKGROUND_COLOR), (String) map.get(CssBackgroundUtils.BackgroundPropertyType.BACKGROUND_COLOR)), new CssDeclaration(CssBackgroundUtils.getBackgroundPropertyNameFromType(CssBackgroundUtils.BackgroundPropertyType.BACKGROUND_IMAGE), (String) map.get(CssBackgroundUtils.BackgroundPropertyType.BACKGROUND_IMAGE)), new CssDeclaration(CssBackgroundUtils.getBackgroundPropertyNameFromType(CssBackgroundUtils.BackgroundPropertyType.BACKGROUND_POSITION), (String) map.get(CssBackgroundUtils.BackgroundPropertyType.BACKGROUND_POSITION)), new CssDeclaration(CssBackgroundUtils.getBackgroundPropertyNameFromType(CssBackgroundUtils.BackgroundPropertyType.BACKGROUND_SIZE), (String) map.get(CssBackgroundUtils.BackgroundPropertyType.BACKGROUND_SIZE)), new CssDeclaration(CssBackgroundUtils.getBackgroundPropertyNameFromType(CssBackgroundUtils.BackgroundPropertyType.BACKGROUND_REPEAT), (String) map.get(CssBackgroundUtils.BackgroundPropertyType.BACKGROUND_REPEAT)), new CssDeclaration(CssBackgroundUtils.getBackgroundPropertyNameFromType(CssBackgroundUtils.BackgroundPropertyType.BACKGROUND_ORIGIN), (String) map.get(CssBackgroundUtils.BackgroundPropertyType.BACKGROUND_ORIGIN)), new CssDeclaration(CssBackgroundUtils.getBackgroundPropertyNameFromType(CssBackgroundUtils.BackgroundPropertyType.BACKGROUND_CLIP), (String) map.get(CssBackgroundUtils.BackgroundPropertyType.BACKGROUND_CLIP)), new CssDeclaration(CssBackgroundUtils.getBackgroundPropertyNameFromType(CssBackgroundUtils.BackgroundPropertyType.BACKGROUND_ATTACHMENT), (String) map.get(CssBackgroundUtils.BackgroundPropertyType.BACKGROUND_ATTACHMENT)));
    }

    private static boolean checkProperties(Map<CssBackgroundUtils.BackgroundPropertyType, String> map) {
        for (Map.Entry<CssBackgroundUtils.BackgroundPropertyType, String> entry : map.entrySet()) {
            if (!CssDeclarationValidationMaster.checkDeclaration(new CssDeclaration(CssBackgroundUtils.getBackgroundPropertyNameFromType(entry.getKey()), entry.getValue()))) {
                LOGGER.warn(MessageFormatUtil.format(StyledXmlParserLogMessageConstant.INVALID_CSS_PROPERTY_DECLARATION, entry.getValue()));
                return false;
            }
            IShorthandResolver shorthandResolver = ShorthandResolverFactory.getShorthandResolver(CssBackgroundUtils.getBackgroundPropertyNameFromType(entry.getKey()));
            if (shorthandResolver != null && shorthandResolver.resolveShorthand(entry.getValue()).isEmpty()) {
                return false;
            }
        }
        return true;
    }

    private static void removeSpacesAroundSlash(List<String> list) {
        for (int i = 0; i < list.size(); i++) {
            if (RemoteSettings.FORWARD_SLASH_STRING.equals(list.get(i))) {
                if (i == 0 || i == list.size() - 1) {
                    return;
                }
                int i2 = i - 1;
                int i3 = i + 1;
                list.set(i3, list.get(i2) + list.get(i) + list.get(i3));
                list.remove(i);
                list.remove(i2);
                return;
            }
            if (list.get(i).startsWith(RemoteSettings.FORWARD_SLASH_STRING)) {
                if (i != 0) {
                    int i4 = i - 1;
                    list.set(i, list.get(i4) + list.get(i));
                    list.remove(i4);
                    return;
                }
                return;
            }
            if (list.get(i).endsWith(RemoteSettings.FORWARD_SLASH_STRING)) {
                if (i != list.size() - 1) {
                    int i5 = i + 1;
                    list.set(i5, list.get(i) + list.get(i5));
                    list.remove(i);
                    return;
                }
                return;
            }
        }
    }

    private static void fillMapWithPropertiesTypes(Map<CssBackgroundUtils.BackgroundPropertyType, String> map) {
        map.put(CssBackgroundUtils.BackgroundPropertyType.BACKGROUND_COLOR, null);
        map.put(CssBackgroundUtils.BackgroundPropertyType.BACKGROUND_IMAGE, null);
        map.put(CssBackgroundUtils.BackgroundPropertyType.BACKGROUND_POSITION, null);
        map.put(CssBackgroundUtils.BackgroundPropertyType.BACKGROUND_SIZE, null);
        map.put(CssBackgroundUtils.BackgroundPropertyType.BACKGROUND_REPEAT, null);
        map.put(CssBackgroundUtils.BackgroundPropertyType.BACKGROUND_ORIGIN, null);
        map.put(CssBackgroundUtils.BackgroundPropertyType.BACKGROUND_CLIP, null);
        map.put(CssBackgroundUtils.BackgroundPropertyType.BACKGROUND_ATTACHMENT, null);
    }

    private static boolean processProperties(List<String> list, Map<CssBackgroundUtils.BackgroundPropertyType, String> map) {
        if (list.isEmpty()) {
            LOGGER.warn(MessageFormatUtil.format(StyledXmlParserLogMessageConstant.SHORTHAND_PROPERTY_CANNOT_BE_EMPTY, CommonCssConstants.BACKGROUND));
            return false;
        }
        if (map.get(CssBackgroundUtils.BackgroundPropertyType.BACKGROUND_COLOR) != null) {
            LOGGER.warn(StyledXmlParserLogMessageConstant.ONLY_THE_LAST_BACKGROUND_CAN_INCLUDE_BACKGROUND_COLOR);
            return false;
        }
        removeSpacesAroundSlash(list);
        HashSet hashSet = new HashSet();
        if (!processAllSpecifiedProperties(list, map, hashSet)) {
            return false;
        }
        fillNotProcessedProperties(map, hashSet);
        return true;
    }

    private static boolean processAllSpecifiedProperties(List<String> list, Map<CssBackgroundUtils.BackgroundPropertyType, String> map, Set<CssBackgroundUtils.BackgroundPropertyType> set) {
        ArrayList arrayList = new ArrayList();
        boolean z = false;
        boolean zPutPropertyBasedOnType = true;
        for (String str : list) {
            int iIndexOf = str.indexOf(47);
            if (iIndexOf > 0 && iIndexOf < str.length() - 1 && !z && !str.contains("url(") && !str.contains("device-cmyk(")) {
                zPutPropertyBasedOnType = processValueWithSlash(str, iIndexOf, map, set);
                z = true;
            } else {
                CssBackgroundUtils.BackgroundPropertyType backgroundPropertyTypeResolveBackgroundPropertyType = CssBackgroundUtils.resolveBackgroundPropertyType(str);
                if (CssBackgroundUtils.BackgroundPropertyType.BACKGROUND_ORIGIN_OR_CLIP == backgroundPropertyTypeResolveBackgroundPropertyType) {
                    arrayList.add(str);
                } else {
                    zPutPropertyBasedOnType = putPropertyBasedOnType(changePropertyType(backgroundPropertyTypeResolveBackgroundPropertyType, z), str, map, set);
                }
            }
            if (!zPutPropertyBasedOnType) {
                return false;
            }
        }
        return addBackgroundClipAndBackgroundOriginBoxValues(arrayList, map, set);
    }

    private static boolean addBackgroundClipAndBackgroundOriginBoxValues(List<String> list, Map<CssBackgroundUtils.BackgroundPropertyType, String> map, Set<CssBackgroundUtils.BackgroundPropertyType> set) {
        if (list.size() == 1) {
            return putPropertyBasedOnType(CssBackgroundUtils.BackgroundPropertyType.BACKGROUND_CLIP, list.get(0), map, set);
        }
        if (list.size() >= 2) {
            int i = 0;
            while (i < 2) {
                if (!putPropertyBasedOnType(i == 0 ? CssBackgroundUtils.BackgroundPropertyType.BACKGROUND_ORIGIN : CssBackgroundUtils.BackgroundPropertyType.BACKGROUND_CLIP, list.get(i), map, set)) {
                    return false;
                }
                i++;
            }
        }
        return true;
    }

    private static boolean processValueWithSlash(String str, int i, Map<CssBackgroundUtils.BackgroundPropertyType, String> map, Set<CssBackgroundUtils.BackgroundPropertyType> set) {
        String strSubstring = str.substring(0, i);
        CssBackgroundUtils.BackgroundPropertyType backgroundPropertyTypeChangePropertyType = changePropertyType(CssBackgroundUtils.resolveBackgroundPropertyType(strSubstring), false);
        if (backgroundPropertyTypeChangePropertyType != CssBackgroundUtils.BackgroundPropertyType.BACKGROUND_POSITION && backgroundPropertyTypeChangePropertyType != CssBackgroundUtils.BackgroundPropertyType.BACKGROUND_POSITION_OR_SIZE) {
            LOGGER.warn(MessageFormatUtil.format(StyledXmlParserLogMessageConstant.UNKNOWN_PROPERTY, CommonCssConstants.BACKGROUND_POSITION, strSubstring));
            return false;
        }
        String strSubstring2 = str.substring(i + 1);
        CssBackgroundUtils.BackgroundPropertyType backgroundPropertyTypeChangePropertyType2 = changePropertyType(CssBackgroundUtils.resolveBackgroundPropertyType(strSubstring2), true);
        if (backgroundPropertyTypeChangePropertyType2 == CssBackgroundUtils.BackgroundPropertyType.BACKGROUND_SIZE || backgroundPropertyTypeChangePropertyType2 == CssBackgroundUtils.BackgroundPropertyType.BACKGROUND_POSITION_OR_SIZE) {
            return putPropertyBasedOnType(backgroundPropertyTypeChangePropertyType, strSubstring, map, set) && putPropertyBasedOnType(backgroundPropertyTypeChangePropertyType2, strSubstring2, map, set);
        }
        LOGGER.warn(MessageFormatUtil.format(StyledXmlParserLogMessageConstant.UNKNOWN_PROPERTY, CommonCssConstants.BACKGROUND_SIZE, strSubstring2));
        return false;
    }

    private static void fillNotProcessedProperties(Map<CssBackgroundUtils.BackgroundPropertyType, String> map, Set<CssBackgroundUtils.BackgroundPropertyType> set) {
        for (CssBackgroundUtils.BackgroundPropertyType backgroundPropertyType : new ArrayList(map.keySet())) {
            if (!set.contains(backgroundPropertyType) && backgroundPropertyType != CssBackgroundUtils.BackgroundPropertyType.BACKGROUND_COLOR) {
                if (map.get(backgroundPropertyType) == null) {
                    map.put(backgroundPropertyType, CssDefaults.getDefaultValue(CssBackgroundUtils.getBackgroundPropertyNameFromType(backgroundPropertyType)));
                } else {
                    map.put(backgroundPropertyType, map.get(backgroundPropertyType) + "," + CssDefaults.getDefaultValue(CssBackgroundUtils.getBackgroundPropertyNameFromType(backgroundPropertyType)));
                }
            }
        }
    }

    private static CssBackgroundUtils.BackgroundPropertyType changePropertyType(CssBackgroundUtils.BackgroundPropertyType backgroundPropertyType, boolean z) {
        if (backgroundPropertyType == CssBackgroundUtils.BackgroundPropertyType.BACKGROUND_POSITION_X || backgroundPropertyType == CssBackgroundUtils.BackgroundPropertyType.BACKGROUND_POSITION_Y) {
            backgroundPropertyType = CssBackgroundUtils.BackgroundPropertyType.BACKGROUND_POSITION;
        }
        if (backgroundPropertyType == CssBackgroundUtils.BackgroundPropertyType.BACKGROUND_POSITION_OR_SIZE) {
            return z ? CssBackgroundUtils.BackgroundPropertyType.BACKGROUND_SIZE : CssBackgroundUtils.BackgroundPropertyType.BACKGROUND_POSITION;
        }
        if (backgroundPropertyType != CssBackgroundUtils.BackgroundPropertyType.BACKGROUND_SIZE || z) {
            return (backgroundPropertyType == CssBackgroundUtils.BackgroundPropertyType.BACKGROUND_POSITION && z) ? CssBackgroundUtils.BackgroundPropertyType.UNDEFINED : backgroundPropertyType;
        }
        return CssBackgroundUtils.BackgroundPropertyType.UNDEFINED;
    }

    private static boolean putPropertyBasedOnType(CssBackgroundUtils.BackgroundPropertyType backgroundPropertyType, String str, Map<CssBackgroundUtils.BackgroundPropertyType, String> map, Set<CssBackgroundUtils.BackgroundPropertyType> set) {
        if (backgroundPropertyType == CssBackgroundUtils.BackgroundPropertyType.UNDEFINED) {
            LOGGER.warn(MessageFormatUtil.format(StyledXmlParserLogMessageConstant.WAS_NOT_ABLE_TO_DEFINE_BACKGROUND_CSS_SHORTHAND_PROPERTIES, str));
            return false;
        }
        if (map.get(backgroundPropertyType) == null) {
            map.put(backgroundPropertyType, str);
        } else if (set.contains(backgroundPropertyType)) {
            map.put(backgroundPropertyType, map.get(backgroundPropertyType) + StringUtils.SPACE + str);
        } else {
            map.put(backgroundPropertyType, map.get(backgroundPropertyType) + "," + str);
        }
        set.add(backgroundPropertyType);
        return true;
    }
}
