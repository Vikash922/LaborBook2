package com.itextpdf.styledxmlparser.css.resolve;

import androidx.exifinterface.media.ExifInterface;
import com.facebook.appevents.AppEventsConstants;
import com.itextpdf.commons.utils.MessageFormatUtil;
import com.itextpdf.styledxmlparser.css.CommonCssConstants;
import com.itextpdf.styledxmlparser.logs.StyledXmlParserLogMessageConstant;
import java.util.HashMap;
import java.util.Map;
import org.slf4j.LoggerFactory;

/* JADX INFO: loaded from: classes6.dex */
public class CssDefaults {
    private static final Map<String, String> defaultValues;

    static {
        HashMap map = new HashMap();
        defaultValues = map;
        map.put("color", "black");
        map.put("opacity", AppEventsConstants.EVENT_PARAM_VALUE_YES);
        map.put(CommonCssConstants.BACKGROUND_ATTACHMENT, CommonCssConstants.SCROLL);
        map.put(CommonCssConstants.BACKGROUND_BLEND_MODE, CommonCssConstants.NORMAL);
        map.put(CommonCssConstants.BACKGROUND_COLOR, CommonCssConstants.TRANSPARENT);
        map.put(CommonCssConstants.BACKGROUND_IMAGE, "none");
        map.put(CommonCssConstants.BACKGROUND_POSITION, "0% 0%");
        map.put(CommonCssConstants.BACKGROUND_POSITION_X, "0%");
        map.put(CommonCssConstants.BACKGROUND_POSITION_Y, "0%");
        map.put(CommonCssConstants.BACKGROUND_REPEAT, "repeat");
        map.put(CommonCssConstants.BACKGROUND_CLIP, CommonCssConstants.BORDER_BOX);
        map.put(CommonCssConstants.BACKGROUND_ORIGIN, CommonCssConstants.PADDING_BOX);
        map.put(CommonCssConstants.BACKGROUND_SIZE, "auto");
        map.put(CommonCssConstants.BORDER_BOTTOM_COLOR, CommonCssConstants.CURRENTCOLOR);
        map.put(CommonCssConstants.BORDER_LEFT_COLOR, CommonCssConstants.CURRENTCOLOR);
        map.put(CommonCssConstants.BORDER_RIGHT_COLOR, CommonCssConstants.CURRENTCOLOR);
        map.put(CommonCssConstants.BORDER_TOP_COLOR, CommonCssConstants.CURRENTCOLOR);
        map.put(CommonCssConstants.BORDER_BOTTOM_STYLE, "none");
        map.put(CommonCssConstants.BORDER_LEFT_STYLE, "none");
        map.put(CommonCssConstants.BORDER_RIGHT_STYLE, "none");
        map.put(CommonCssConstants.BORDER_TOP_STYLE, "none");
        map.put(CommonCssConstants.BORDER_BOTTOM_WIDTH, "medium");
        map.put(CommonCssConstants.BORDER_LEFT_WIDTH, "medium");
        map.put(CommonCssConstants.BORDER_RIGHT_WIDTH, "medium");
        map.put(CommonCssConstants.BORDER_TOP_WIDTH, "medium");
        map.put(CommonCssConstants.BORDER_WIDTH, "medium");
        map.put(CommonCssConstants.BORDER_IMAGE, "none");
        map.put(CommonCssConstants.BORDER_RADIUS, AppEventsConstants.EVENT_PARAM_VALUE_NO);
        map.put(CommonCssConstants.BORDER_BOTTOM_LEFT_RADIUS, AppEventsConstants.EVENT_PARAM_VALUE_NO);
        map.put(CommonCssConstants.BORDER_BOTTOM_RIGHT_RADIUS, AppEventsConstants.EVENT_PARAM_VALUE_NO);
        map.put(CommonCssConstants.BORDER_TOP_LEFT_RADIUS, AppEventsConstants.EVENT_PARAM_VALUE_NO);
        map.put(CommonCssConstants.BORDER_TOP_RIGHT_RADIUS, AppEventsConstants.EVENT_PARAM_VALUE_NO);
        map.put(CommonCssConstants.BOX_SHADOW, "none");
        map.put(CommonCssConstants.FLEX_BASIS, "auto");
        map.put(CommonCssConstants.FLEX_DIRECTION, CommonCssConstants.ROW);
        map.put(CommonCssConstants.FLEX_GROW, AppEventsConstants.EVENT_PARAM_VALUE_NO);
        map.put(CommonCssConstants.FLEX_SHRINK, AppEventsConstants.EVENT_PARAM_VALUE_YES);
        map.put(CommonCssConstants.FLEX_WRAP, CommonCssConstants.NOWRAP);
        map.put("float", "none");
        map.put("font-family", "times");
        map.put("font-size", "medium");
        map.put("font-style", CommonCssConstants.NORMAL);
        map.put(CommonCssConstants.FONT_VARIANT, CommonCssConstants.NORMAL);
        map.put("font-weight", CommonCssConstants.NORMAL);
        map.put("height", "auto");
        map.put(CommonCssConstants.HYPHENS, CommonCssConstants.MANUAL);
        map.put(CommonCssConstants.LINE_HEIGHT, CommonCssConstants.NORMAL);
        map.put(CommonCssConstants.LIST_STYLE_TYPE, CommonCssConstants.DISC);
        map.put(CommonCssConstants.LIST_STYLE_IMAGE, "none");
        map.put(CommonCssConstants.LIST_STYLE_POSITION, CommonCssConstants.OUTSIDE);
        map.put(CommonCssConstants.MARGIN_BOTTOM, AppEventsConstants.EVENT_PARAM_VALUE_NO);
        map.put(CommonCssConstants.MARGIN_LEFT, AppEventsConstants.EVENT_PARAM_VALUE_NO);
        map.put(CommonCssConstants.MARGIN_RIGHT, AppEventsConstants.EVENT_PARAM_VALUE_NO);
        map.put(CommonCssConstants.MARGIN_TOP, AppEventsConstants.EVENT_PARAM_VALUE_NO);
        map.put(CommonCssConstants.MIN_HEIGHT, AppEventsConstants.EVENT_PARAM_VALUE_NO);
        map.put(CommonCssConstants.OUTLINE_COLOR, CommonCssConstants.CURRENTCOLOR);
        map.put(CommonCssConstants.OUTLINE_STYLE, "none");
        map.put(CommonCssConstants.OUTLINE_WIDTH, "medium");
        map.put(CommonCssConstants.PADDING_BOTTOM, AppEventsConstants.EVENT_PARAM_VALUE_NO);
        map.put(CommonCssConstants.PADDING_LEFT, AppEventsConstants.EVENT_PARAM_VALUE_NO);
        map.put(CommonCssConstants.PADDING_RIGHT, AppEventsConstants.EVENT_PARAM_VALUE_NO);
        map.put(CommonCssConstants.PADDING_TOP, AppEventsConstants.EVENT_PARAM_VALUE_NO);
        map.put(CommonCssConstants.PAGE_BREAK_AFTER, "auto");
        map.put(CommonCssConstants.PAGE_BREAK_BEFORE, "auto");
        map.put(CommonCssConstants.PAGE_BREAK_INSIDE, "auto");
        map.put(CommonCssConstants.POSITION, CommonCssConstants.STATIC);
        map.put(CommonCssConstants.QUOTES, "\"\\00ab\" \"\\00bb\"");
        map.put(CommonCssConstants.TEXT_ALIGN, "start");
        map.put(CommonCssConstants.TEXT_DECORATION, "none");
        map.put(CommonCssConstants.TEXT_DECORATION_LINE, "none");
        map.put(CommonCssConstants.TEXT_DECORATION_STYLE, CommonCssConstants.SOLID);
        map.put(CommonCssConstants.TEXT_DECORATION_COLOR, CommonCssConstants.CURRENTCOLOR);
        map.put(CommonCssConstants.TEXT_TRANSFORM, "none");
        map.put(CommonCssConstants.WHITE_SPACE, CommonCssConstants.NORMAL);
        map.put("width", "auto");
        map.put(CommonCssConstants.ORPHANS, ExifInterface.GPS_MEASUREMENT_2D);
        map.put(CommonCssConstants.WIDOWS, ExifInterface.GPS_MEASUREMENT_2D);
        map.put(CommonCssConstants.JUSTIFY_CONTENT, CommonCssConstants.FLEX_START);
        map.put(CommonCssConstants.ALIGN_ITEMS, CommonCssConstants.STRETCH);
    }

    public static String getDefaultValue(String str) {
        String str2 = defaultValues.get(str);
        if (str2 == null) {
            LoggerFactory.getLogger((Class<?>) CssDefaults.class).error(MessageFormatUtil.format(StyledXmlParserLogMessageConstant.DEFAULT_VALUE_OF_CSS_PROPERTY_UNKNOWN, str));
        }
        return str2;
    }
}
