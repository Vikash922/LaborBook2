package com.itextpdf.svg.css.impl;

import com.itextpdf.styledxmlparser.util.StyleUtil;
import com.itextpdf.svg.css.SvgCssContext;
import com.itextpdf.svg.renderers.ISvgNodeRenderer;
import com.itextpdf.svg.renderers.impl.AbstractBranchSvgNodeRenderer;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

/* JADX INFO: loaded from: classes6.dex */
public final class SvgNodeRendererInheritanceResolver {
    private SvgNodeRendererInheritanceResolver() {
    }

    public static void applyInheritanceToSubTree(ISvgNodeRenderer iSvgNodeRenderer, ISvgNodeRenderer iSvgNodeRenderer2, SvgCssContext svgCssContext) {
        applyStyles(iSvgNodeRenderer, iSvgNodeRenderer2, svgCssContext);
        if (iSvgNodeRenderer2 instanceof AbstractBranchSvgNodeRenderer) {
            AbstractBranchSvgNodeRenderer abstractBranchSvgNodeRenderer = (AbstractBranchSvgNodeRenderer) iSvgNodeRenderer2;
            Iterator<ISvgNodeRenderer> it = abstractBranchSvgNodeRenderer.getChildren().iterator();
            while (it.hasNext()) {
                applyInheritanceToSubTree(abstractBranchSvgNodeRenderer, it.next(), svgCssContext);
            }
        }
    }

    private static void applyStyles(ISvgNodeRenderer iSvgNodeRenderer, ISvgNodeRenderer iSvgNodeRenderer2, SvgCssContext svgCssContext) {
        if (iSvgNodeRenderer == null || iSvgNodeRenderer2 == null) {
            return;
        }
        Map<String, String> attributeMapCopy = iSvgNodeRenderer2.getAttributeMapCopy();
        if (attributeMapCopy == null) {
            attributeMapCopy = new HashMap<>();
        }
        Map<String, String> attributeMapCopy2 = iSvgNodeRenderer.getAttributeMapCopy();
        String attribute = iSvgNodeRenderer.getAttribute("font-size");
        for (Map.Entry<String, String> entry : attributeMapCopy2.entrySet()) {
            attributeMapCopy = StyleUtil.mergeParentStyleDeclaration(attributeMapCopy, entry.getKey(), entry.getValue(), attribute, SvgStyleResolver.INHERITANCE_RULES);
        }
        SvgStyleResolver.resolveFontSizeStyle(attributeMapCopy, svgCssContext, attribute);
        iSvgNodeRenderer2.setAttributesAndStyles(attributeMapCopy);
    }
}
