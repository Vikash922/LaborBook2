package com.itextpdf.styledxmlparser.css.resolve.shorthand;

import com.itextpdf.styledxmlparser.css.CommonCssConstants;
import com.itextpdf.styledxmlparser.css.resolve.shorthand.impl.BackgroundPositionShorthandResolver;
import com.itextpdf.styledxmlparser.css.resolve.shorthand.impl.BackgroundShorthandResolver;
import com.itextpdf.styledxmlparser.css.resolve.shorthand.impl.BorderBottomShorthandResolver;
import com.itextpdf.styledxmlparser.css.resolve.shorthand.impl.BorderColorShorthandResolver;
import com.itextpdf.styledxmlparser.css.resolve.shorthand.impl.BorderLeftShorthandResolver;
import com.itextpdf.styledxmlparser.css.resolve.shorthand.impl.BorderRadiusShorthandResolver;
import com.itextpdf.styledxmlparser.css.resolve.shorthand.impl.BorderRightShorthandResolver;
import com.itextpdf.styledxmlparser.css.resolve.shorthand.impl.BorderShorthandResolver;
import com.itextpdf.styledxmlparser.css.resolve.shorthand.impl.BorderStyleShorthandResolver;
import com.itextpdf.styledxmlparser.css.resolve.shorthand.impl.BorderTopShorthandResolver;
import com.itextpdf.styledxmlparser.css.resolve.shorthand.impl.BorderWidthShorthandResolver;
import com.itextpdf.styledxmlparser.css.resolve.shorthand.impl.FlexFlowShorthandResolver;
import com.itextpdf.styledxmlparser.css.resolve.shorthand.impl.FlexShorthandResolver;
import com.itextpdf.styledxmlparser.css.resolve.shorthand.impl.FontShorthandResolver;
import com.itextpdf.styledxmlparser.css.resolve.shorthand.impl.GapShorthandResolver;
import com.itextpdf.styledxmlparser.css.resolve.shorthand.impl.ListStyleShorthandResolver;
import com.itextpdf.styledxmlparser.css.resolve.shorthand.impl.MarginShorthandResolver;
import com.itextpdf.styledxmlparser.css.resolve.shorthand.impl.OutlineShorthandResolver;
import com.itextpdf.styledxmlparser.css.resolve.shorthand.impl.PaddingShorthandResolver;
import com.itextpdf.styledxmlparser.css.resolve.shorthand.impl.PlaceItemsShorthandResolver;
import com.itextpdf.styledxmlparser.css.resolve.shorthand.impl.TextDecorationShorthandResolver;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes6.dex */
public class ShorthandResolverFactory {
    private static final Map<String, IShorthandResolver> shorthandResolvers;

    static {
        HashMap map = new HashMap();
        shorthandResolvers = map;
        map.put(CommonCssConstants.BACKGROUND, new BackgroundShorthandResolver());
        map.put(CommonCssConstants.BACKGROUND_POSITION, new BackgroundPositionShorthandResolver());
        map.put(CommonCssConstants.BORDER, new BorderShorthandResolver());
        map.put(CommonCssConstants.BORDER_BOTTOM, new BorderBottomShorthandResolver());
        map.put(CommonCssConstants.BORDER_COLOR, new BorderColorShorthandResolver());
        map.put(CommonCssConstants.BORDER_LEFT, new BorderLeftShorthandResolver());
        map.put(CommonCssConstants.BORDER_RADIUS, new BorderRadiusShorthandResolver());
        map.put(CommonCssConstants.BORDER_RIGHT, new BorderRightShorthandResolver());
        map.put(CommonCssConstants.BORDER_STYLE, new BorderStyleShorthandResolver());
        map.put(CommonCssConstants.BORDER_TOP, new BorderTopShorthandResolver());
        map.put(CommonCssConstants.BORDER_WIDTH, new BorderWidthShorthandResolver());
        map.put("font", new FontShorthandResolver());
        map.put(CommonCssConstants.LIST_STYLE, new ListStyleShorthandResolver());
        map.put(CommonCssConstants.MARGIN, new MarginShorthandResolver());
        map.put(CommonCssConstants.OUTLINE, new OutlineShorthandResolver());
        map.put(CommonCssConstants.PADDING, new PaddingShorthandResolver());
        map.put(CommonCssConstants.TEXT_DECORATION, new TextDecorationShorthandResolver());
        map.put(CommonCssConstants.FLEX, new FlexShorthandResolver());
        map.put(CommonCssConstants.FLEX_FLOW, new FlexFlowShorthandResolver());
        map.put(CommonCssConstants.GAP, new GapShorthandResolver());
        map.put(CommonCssConstants.PLACE_ITEMS, new PlaceItemsShorthandResolver());
    }

    public static IShorthandResolver getShorthandResolver(String str) {
        return shorthandResolvers.get(str);
    }
}
