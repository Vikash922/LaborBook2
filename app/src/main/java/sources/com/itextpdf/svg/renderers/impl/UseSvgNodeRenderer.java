package com.itextpdf.svg.renderers.impl;

import com.itextpdf.kernel.geom.Rectangle;
import com.itextpdf.svg.renderers.ISvgNodeRenderer;
import com.itextpdf.svg.renderers.SvgDrawContext;

/* JADX INFO: loaded from: classes6.dex */
public class UseSvgNodeRenderer extends AbstractSvgNodeRenderer {
    @Override // com.itextpdf.svg.renderers.ISvgNodeRenderer
    public Rectangle getObjectBoundingBox(SvgDrawContext svgDrawContext) {
        return null;
    }

    @Override // com.itextpdf.svg.renderers.impl.AbstractSvgNodeRenderer
    void postDraw(SvgDrawContext svgDrawContext) {
    }

    /* JADX WARN: Removed duplicated region for block: B:41:0x00b3  */
    @Override // com.itextpdf.svg.renderers.impl.AbstractSvgNodeRenderer
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    protected void doDraw(com.itextpdf.svg.renderers.SvgDrawContext r8) {
        /*
            r7 = this;
            java.util.Map<java.lang.String, java.lang.String> r0 = r7.attributesAndStyles
            if (r0 == 0) goto Lc2
            java.util.Map<java.lang.String, java.lang.String> r0 = r7.attributesAndStyles
            java.lang.String r1 = "xlink:href"
            java.lang.Object r0 = r0.get(r1)
            java.lang.String r0 = (java.lang.String) r0
            if (r0 != 0) goto L1a
            java.util.Map<java.lang.String, java.lang.String> r0 = r7.attributesAndStyles
            java.lang.String r1 = "href"
            java.lang.Object r0 = r0.get(r1)
            java.lang.String r0 = (java.lang.String) r0
        L1a:
            if (r0 == 0) goto Lc2
            boolean r1 = r0.isEmpty()
            if (r1 != 0) goto Lc2
            boolean r1 = r7.isValidHref(r0)
            if (r1 == 0) goto Lc2
            java.lang.String r0 = com.itextpdf.svg.utils.SvgTextUtil.filterReferenceValue(r0)
            boolean r1 = r8.isIdUsedByUseTagBefore(r0)
            if (r1 != 0) goto Lc2
            com.itextpdf.svg.renderers.ISvgNodeRenderer r0 = r8.getNamedObject(r0)
            r1 = 0
            if (r0 != 0) goto L3b
            r0 = r1
            goto L3f
        L3b:
            com.itextpdf.svg.renderers.ISvgNodeRenderer r0 = r0.createDeepCopy()
        L3f:
            com.itextpdf.svg.css.SvgCssContext r2 = r8.getCssContext()
            com.itextpdf.svg.css.impl.SvgNodeRendererInheritanceResolver.applyInheritanceToSubTree(r7, r0, r2)
            if (r0 == 0) goto Lc2
            boolean r2 = r0 instanceof com.itextpdf.svg.renderers.impl.AbstractSvgNodeRenderer
            if (r2 == 0) goto L54
            r2 = r0
            com.itextpdf.svg.renderers.impl.AbstractSvgNodeRenderer r2 = (com.itextpdf.svg.renderers.impl.AbstractSvgNodeRenderer) r2
            boolean r3 = r7.partOfClipPath
            r2.setPartOfClipPath(r3)
        L54:
            com.itextpdf.kernel.pdf.canvas.PdfCanvas r2 = r8.getCurrentCanvas()
            java.util.Map<java.lang.String, java.lang.String> r3 = r7.attributesAndStyles
            java.lang.String r4 = "x"
            boolean r3 = r3.containsKey(r4)
            r5 = 0
            if (r3 == 0) goto L70
            java.util.Map<java.lang.String, java.lang.String> r3 = r7.attributesAndStyles
            java.lang.Object r3 = r3.get(r4)
            java.lang.String r3 = (java.lang.String) r3
            float r3 = com.itextpdf.styledxmlparser.css.util.CssDimensionParsingUtils.parseAbsoluteLength(r3)
            goto L71
        L70:
            r3 = r5
        L71:
            java.util.Map<java.lang.String, java.lang.String> r4 = r7.attributesAndStyles
            java.lang.String r6 = "y"
            boolean r4 = r4.containsKey(r6)
            if (r4 == 0) goto L88
            java.util.Map<java.lang.String, java.lang.String> r4 = r7.attributesAndStyles
            java.lang.Object r4 = r4.get(r6)
            java.lang.String r4 = (java.lang.String) r4
            float r4 = com.itextpdf.styledxmlparser.css.util.CssDimensionParsingUtils.parseAbsoluteLength(r4)
            goto L89
        L88:
            r4 = r5
        L89:
            boolean r6 = com.itextpdf.styledxmlparser.css.util.CssUtils.compareFloats(r3, r5)
            if (r6 == 0) goto L95
            boolean r5 = com.itextpdf.styledxmlparser.css.util.CssUtils.compareFloats(r4, r5)
            if (r5 != 0) goto Lb3
        L95:
            double r5 = (double) r3
            double r3 = (double) r4
            com.itextpdf.kernel.geom.AffineTransform r3 = com.itextpdf.kernel.geom.AffineTransform.getTranslateInstance(r5, r3)
            r2.concatMatrix(r3)
            boolean r4 = r7.partOfClipPath
            if (r4 == 0) goto Lb3
            com.itextpdf.kernel.geom.AffineTransform r3 = r3.createInverse()     // Catch: com.itextpdf.kernel.geom.NoninvertibleTransformException -> La7
            goto Lb4
        La7:
            r3 = move-exception
            java.lang.Class<com.itextpdf.svg.renderers.impl.UseSvgNodeRenderer> r4 = com.itextpdf.svg.renderers.impl.UseSvgNodeRenderer.class
            org.slf4j.Logger r4 = org.slf4j.LoggerFactory.getLogger(r4)
            java.lang.String r5 = "Non-invertible transformation matrix was used in a clipping path context. Clipped elements may show undefined behavior."
            r4.warn(r5, r3)
        Lb3:
            r3 = r1
        Lb4:
            r0.setParent(r7)
            r0.draw(r8)
            r0.setParent(r1)
            if (r3 == 0) goto Lc2
            r2.concatMatrix(r3)
        Lc2:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.itextpdf.svg.renderers.impl.UseSvgNodeRenderer.doDraw(com.itextpdf.svg.renderers.SvgDrawContext):void");
    }

    private boolean isValidHref(String str) {
        return str.startsWith("#");
    }

    @Override // com.itextpdf.svg.renderers.ISvgNodeRenderer
    public ISvgNodeRenderer createDeepCopy() {
        UseSvgNodeRenderer useSvgNodeRenderer = new UseSvgNodeRenderer();
        deepCopyAttributesAndStyles(useSvgNodeRenderer);
        return useSvgNodeRenderer;
    }
}
