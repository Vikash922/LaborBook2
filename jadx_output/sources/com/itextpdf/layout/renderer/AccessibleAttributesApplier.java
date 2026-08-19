package com.itextpdf.layout.renderer;

import com.itextpdf.commons.utils.MessageFormatUtil;
import com.itextpdf.kernel.colors.Color;
import com.itextpdf.kernel.colors.DeviceRgb;
import com.itextpdf.kernel.pdf.PdfArray;
import com.itextpdf.kernel.pdf.PdfDictionary;
import com.itextpdf.kernel.pdf.PdfName;
import com.itextpdf.kernel.pdf.PdfNull;
import com.itextpdf.kernel.pdf.PdfNumber;
import com.itextpdf.kernel.pdf.tagging.PdfNamespace;
import com.itextpdf.kernel.pdf.tagging.PdfStructureAttributes;
import com.itextpdf.kernel.pdf.tagging.StandardNamespaces;
import com.itextpdf.kernel.pdf.tagging.StandardRoles;
import com.itextpdf.kernel.pdf.tagutils.IRoleMappingResolver;
import com.itextpdf.kernel.pdf.tagutils.TagTreePointer;
import com.itextpdf.layout.borders.Border;
import com.itextpdf.layout.element.Cell;
import com.itextpdf.layout.properties.Background;
import com.itextpdf.layout.properties.HorizontalAlignment;
import com.itextpdf.layout.properties.IListSymbolFactory;
import com.itextpdf.layout.properties.ListNumberingType;
import com.itextpdf.layout.properties.TextAlignment;
import com.itextpdf.layout.properties.TransparentColor;
import com.itextpdf.layout.properties.UnitValue;
import com.itextpdf.p017io.logs.IoLogMessageConstant;
import org.slf4j.LoggerFactory;

/* JADX INFO: loaded from: classes6.dex */
public class AccessibleAttributesApplier {
    public static PdfStructureAttributes getLayoutAttributes(AbstractRenderer abstractRenderer, TagTreePointer tagTreePointer) {
        IRoleMappingResolver iRoleMappingResolverResolveMappingToStandard = resolveMappingToStandard(tagTreePointer);
        if (iRoleMappingResolverResolveMappingToStandard == null) {
            return null;
        }
        String role = iRoleMappingResolverResolveMappingToStandard.getRole();
        int iIdentifyType = AccessibleTypes.identifyType(role);
        PdfDictionary pdfDictionary = new PdfDictionary();
        pdfDictionary.put(PdfName.f3041O, PdfName.Layout);
        applyCommonLayoutAttributes(abstractRenderer, pdfDictionary);
        if (iIdentifyType == AccessibleTypes.BlockLevel) {
            applyBlockLevelLayoutAttributes(role, abstractRenderer, pdfDictionary);
        }
        if (iIdentifyType == AccessibleTypes.InlineLevel) {
            applyInlineLevelLayoutAttributes(abstractRenderer, pdfDictionary);
        }
        if (iIdentifyType == AccessibleTypes.Illustration) {
            applyIllustrationLayoutAttributes(abstractRenderer, pdfDictionary);
        }
        if (pdfDictionary.size() > 1) {
            return new PdfStructureAttributes(pdfDictionary);
        }
        return null;
    }

    public static PdfStructureAttributes getListAttributes(AbstractRenderer abstractRenderer, TagTreePointer tagTreePointer) {
        IRoleMappingResolver iRoleMappingResolverResolveMappingToStandard = resolveMappingToStandard(tagTreePointer);
        if (iRoleMappingResolverResolveMappingToStandard == null || !"L".equals(iRoleMappingResolverResolveMappingToStandard.getRole())) {
            return null;
        }
        PdfDictionary pdfDictionary = new PdfDictionary();
        pdfDictionary.put(PdfName.f3041O, PdfName.List);
        Object property = abstractRenderer.getProperty(37);
        boolean zIsTagStructurePdf2 = isTagStructurePdf2(iRoleMappingResolverResolveMappingToStandard.getNamespace());
        if (property instanceof ListNumberingType) {
            pdfDictionary.put(PdfName.ListNumbering, transformNumberingTypeToName((ListNumberingType) property, zIsTagStructurePdf2));
        } else if (zIsTagStructurePdf2) {
            if (property instanceof IListSymbolFactory) {
                pdfDictionary.put(PdfName.ListNumbering, PdfName.Ordered);
            } else {
                pdfDictionary.put(PdfName.ListNumbering, PdfName.Unordered);
            }
        }
        if (pdfDictionary.size() > 1) {
            return new PdfStructureAttributes(pdfDictionary);
        }
        return null;
    }

    public static PdfStructureAttributes getTableAttributes(AbstractRenderer abstractRenderer, TagTreePointer tagTreePointer) {
        IRoleMappingResolver iRoleMappingResolverResolveMappingToStandard = resolveMappingToStandard(tagTreePointer);
        if (iRoleMappingResolverResolveMappingToStandard == null) {
            return null;
        }
        if (!StandardRoles.f3198TD.equals(iRoleMappingResolverResolveMappingToStandard.getRole()) && !StandardRoles.f3199TH.equals(iRoleMappingResolverResolveMappingToStandard.getRole())) {
            return null;
        }
        PdfDictionary pdfDictionary = new PdfDictionary();
        pdfDictionary.put(PdfName.f3041O, PdfName.Table);
        if (abstractRenderer.getModelElement() instanceof Cell) {
            Cell cell = (Cell) abstractRenderer.getModelElement();
            if (cell.getRowspan() != 1) {
                pdfDictionary.put(PdfName.RowSpan, new PdfNumber(cell.getRowspan()));
            }
            if (cell.getColspan() != 1) {
                pdfDictionary.put(PdfName.ColSpan, new PdfNumber(cell.getColspan()));
            }
        }
        if (pdfDictionary.size() > 1) {
            return new PdfStructureAttributes(pdfDictionary);
        }
        return null;
    }

    private static void applyCommonLayoutAttributes(AbstractRenderer abstractRenderer, PdfDictionary pdfDictionary) {
        Background background = (Background) abstractRenderer.getProperty(6);
        if (background != null && (background.getColor() instanceof DeviceRgb)) {
            pdfDictionary.put(PdfName.BackgroundColor, new PdfArray(background.getColor().getColorValue()));
        }
        if (!(abstractRenderer.getModelElement() instanceof Cell)) {
            applyBorderAttributes(abstractRenderer, pdfDictionary);
        }
        applyPaddingAttribute(abstractRenderer, pdfDictionary);
        TransparentColor propertyAsTransparentColor = abstractRenderer.getPropertyAsTransparentColor(21);
        if (propertyAsTransparentColor == null || !(propertyAsTransparentColor.getColor() instanceof DeviceRgb)) {
            return;
        }
        pdfDictionary.put(PdfName.Color, new PdfArray(propertyAsTransparentColor.getColor().getColorValue()));
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x006f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static void applyBlockLevelLayoutAttributes(java.lang.String r18, com.itextpdf.layout.renderer.AbstractRenderer r19, com.itextpdf.kernel.pdf.PdfDictionary r20) {
        /*
            Method dump skipped, instruction units count: 523
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.itextpdf.layout.renderer.AccessibleAttributesApplier.applyBlockLevelLayoutAttributes(java.lang.String, com.itextpdf.layout.renderer.AbstractRenderer, com.itextpdf.kernel.pdf.PdfDictionary):void");
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x0068  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static void applyInlineLevelLayoutAttributes(com.itextpdf.layout.renderer.AbstractRenderer r6, com.itextpdf.kernel.pdf.PdfDictionary r7) {
        /*
            r0 = 72
            java.lang.Float r0 = r6.getPropertyAsFloat(r0)
            r1 = 0
            if (r0 == 0) goto L20
            float r2 = r0.floatValue()
            int r2 = (r2 > r1 ? 1 : (r2 == r1 ? 0 : -1))
            if (r2 == 0) goto L20
            com.itextpdf.kernel.pdf.PdfName r2 = com.itextpdf.kernel.pdf.PdfName.BaselineShift
            com.itextpdf.kernel.pdf.PdfNumber r3 = new com.itextpdf.kernel.pdf.PdfNumber
            float r0 = r0.floatValue()
            double r4 = (double) r0
            r3.<init>(r4)
            r7.put(r2, r3)
        L20:
            r0 = 74
            java.lang.Object r0 = r6.getProperty(r0)
            if (r0 == 0) goto Lb5
            r2 = 24
            com.itextpdf.layout.properties.UnitValue r6 = r6.getPropertyAsUnitValue(r2)
            boolean r3 = r6.isPointValue()
            if (r3 != 0) goto L4b
            java.lang.Class<com.itextpdf.layout.renderer.AccessibleAttributesApplier> r3 = com.itextpdf.layout.renderer.AccessibleAttributesApplier.class
            org.slf4j.Logger r3 = org.slf4j.LoggerFactory.getLogger(r3)
            java.lang.Integer r2 = java.lang.Integer.valueOf(r2)
            java.lang.Object[] r2 = new java.lang.Object[]{r2}
            java.lang.String r4 = "Property {0} in percents is not supported"
            java.lang.String r2 = com.itextpdf.commons.utils.MessageFormatUtil.format(r4, r2)
            r3.error(r2)
        L4b:
            boolean r2 = r0 instanceof java.util.List
            if (r2 == 0) goto L68
            r2 = r0
            java.util.List r2 = (java.util.List) r2
            int r3 = r2.size()
            if (r3 <= 0) goto L68
            r3 = 0
            java.lang.Object r4 = r2.get(r3)
            boolean r4 = r4 instanceof com.itextpdf.layout.properties.Underline
            if (r4 == 0) goto L68
            java.lang.Object r0 = r2.get(r3)
            com.itextpdf.layout.properties.Underline r0 = (com.itextpdf.layout.properties.Underline) r0
            goto L70
        L68:
            boolean r2 = r0 instanceof com.itextpdf.layout.properties.Underline
            if (r2 == 0) goto L6f
            com.itextpdf.layout.properties.Underline r0 = (com.itextpdf.layout.properties.Underline) r0
            goto L70
        L6f:
            r0 = 0
        L70:
            if (r0 == 0) goto Lb5
            com.itextpdf.kernel.pdf.PdfName r2 = com.itextpdf.kernel.pdf.PdfName.TextDecorationType
            float r3 = r6.getValue()
            float r3 = r0.getYPosition(r3)
            int r1 = (r3 > r1 ? 1 : (r3 == r1 ? 0 : -1))
            if (r1 <= 0) goto L83
            com.itextpdf.kernel.pdf.PdfName r1 = com.itextpdf.kernel.pdf.PdfName.LineThrough
            goto L85
        L83:
            com.itextpdf.kernel.pdf.PdfName r1 = com.itextpdf.kernel.pdf.PdfName.Underline
        L85:
            r7.put(r2, r1)
            com.itextpdf.kernel.colors.Color r1 = r0.getColor()
            boolean r1 = r1 instanceof com.itextpdf.kernel.colors.DeviceRgb
            if (r1 == 0) goto La2
            com.itextpdf.kernel.pdf.PdfName r1 = com.itextpdf.kernel.pdf.PdfName.TextDecorationColor
            com.itextpdf.kernel.pdf.PdfArray r2 = new com.itextpdf.kernel.pdf.PdfArray
            com.itextpdf.kernel.colors.Color r3 = r0.getColor()
            float[] r3 = r3.getColorValue()
            r2.<init>(r3)
            r7.put(r1, r2)
        La2:
            com.itextpdf.kernel.pdf.PdfName r1 = com.itextpdf.kernel.pdf.PdfName.TextDecorationThickness
            com.itextpdf.kernel.pdf.PdfNumber r2 = new com.itextpdf.kernel.pdf.PdfNumber
            float r6 = r6.getValue()
            float r6 = r0.getThickness(r6)
            double r3 = (double) r6
            r2.<init>(r3)
            r7.put(r1, r2)
        Lb5:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.itextpdf.layout.renderer.AccessibleAttributesApplier.applyInlineLevelLayoutAttributes(com.itextpdf.layout.renderer.AbstractRenderer, com.itextpdf.kernel.pdf.PdfDictionary):void");
    }

    private static void applyIllustrationLayoutAttributes(AbstractRenderer abstractRenderer, PdfDictionary pdfDictionary) {
        pdfDictionary.put(PdfName.BBox, new PdfArray(abstractRenderer.getOccupiedArea().getBBox()));
        UnitValue unitValue = (UnitValue) abstractRenderer.getProperty(77);
        if (unitValue != null && unitValue.isPointValue()) {
            pdfDictionary.put(PdfName.Width, new PdfNumber(unitValue.getValue()));
        } else {
            pdfDictionary.put(PdfName.Width, new PdfNumber(r0.getWidth()));
        }
        if (((UnitValue) abstractRenderer.getProperty(27)) != null) {
            pdfDictionary.put(PdfName.Height, new PdfNumber(r6.getValue()));
        } else {
            pdfDictionary.put(PdfName.Height, new PdfNumber(r0.getHeight()));
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r12v13, types: [com.itextpdf.kernel.pdf.PdfArray] */
    /* JADX WARN: Type inference failed for: r12v14, types: [com.itextpdf.kernel.pdf.PdfObject] */
    /* JADX WARN: Type inference failed for: r12v16 */
    /* JADX WARN: Type inference failed for: r12v17, types: [com.itextpdf.kernel.pdf.PdfNumber] */
    /* JADX WARN: Type inference failed for: r13v0, types: [com.itextpdf.kernel.pdf.PdfDictionary] */
    private static void applyPaddingAttribute(AbstractRenderer abstractRenderer, PdfDictionary pdfDictionary) {
        ?? pdfArray;
        UnitValue[] unitValueArr = {abstractRenderer.getPropertyAsUnitValue(50), abstractRenderer.getPropertyAsUnitValue(49), abstractRenderer.getPropertyAsUnitValue(47), abstractRenderer.getPropertyAsUnitValue(48)};
        if (!unitValueArr[0].isPointValue()) {
            LoggerFactory.getLogger((Class<?>) AccessibleAttributesApplier.class).error(MessageFormatUtil.format(IoLogMessageConstant.PROPERTY_IN_PERCENTS_NOT_SUPPORTED, 50));
        }
        if (!unitValueArr[1].isPointValue()) {
            LoggerFactory.getLogger((Class<?>) AccessibleAttributesApplier.class).error(MessageFormatUtil.format(IoLogMessageConstant.PROPERTY_IN_PERCENTS_NOT_SUPPORTED, 49));
        }
        if (!unitValueArr[2].isPointValue()) {
            LoggerFactory.getLogger((Class<?>) AccessibleAttributesApplier.class).error(MessageFormatUtil.format(IoLogMessageConstant.PROPERTY_IN_PERCENTS_NOT_SUPPORTED, 47));
        }
        if (!unitValueArr[3].isPointValue()) {
            LoggerFactory.getLogger((Class<?>) AccessibleAttributesApplier.class).error(MessageFormatUtil.format(IoLogMessageConstant.PROPERTY_IN_PERCENTS_NOT_SUPPORTED, 48));
        }
        float[] fArr = {unitValueArr[0].getValue(), unitValueArr[1].getValue(), unitValueArr[2].getValue(), unitValueArr[3].getValue()};
        float f = fArr[0];
        if (f == fArr[1] && f == fArr[2] && f == fArr[3]) {
            pdfArray = f != 0.0f ? new PdfNumber(fArr[0]) : 0;
        } else {
            pdfArray = new PdfArray();
            int[] iArr = {0, 1, 2, 3};
            for (int i = 0; i < 4; i++) {
                pdfArray.add(new PdfNumber(fArr[iArr[i]]));
            }
        }
        if (pdfArray != 0) {
            pdfDictionary.put(PdfName.Padding, pdfArray);
        }
    }

    private static void applyBorderAttributes(AbstractRenderer abstractRenderer, PdfDictionary pdfDictionary) {
        int i;
        boolean z = true;
        boolean z2 = (abstractRenderer.getProperty(13) == null && abstractRenderer.getProperty(12) == null && abstractRenderer.getProperty(10) == null && abstractRenderer.getProperty(11) == null) ? false : true;
        if (!z2 && abstractRenderer.getProperty(9) != null) {
            Border border = (Border) abstractRenderer.getProperty(9);
            Color color = border.getColor();
            int type = border.getType();
            float width = border.getWidth();
            if (color instanceof DeviceRgb) {
                pdfDictionary.put(PdfName.BorderColor, new PdfArray(color.getColorValue()));
                pdfDictionary.put(PdfName.BorderStyle, transformBorderTypeToName(type));
                pdfDictionary.put(PdfName.BorderThickness, new PdfNumber(width));
            }
        }
        if (z2) {
            PdfArray pdfArray = new PdfArray();
            PdfArray pdfArray2 = new PdfArray();
            PdfArray pdfArray3 = new PdfArray();
            Border[] borders = abstractRenderer.getBorders();
            boolean z3 = true;
            boolean z4 = true;
            boolean z5 = true;
            for (int i2 = 1; i2 < borders.length; i2++) {
                Border border2 = borders[i2];
                if (border2 != null) {
                    if (borders[0] == null || !border2.getColor().equals(borders[0].getColor())) {
                        z3 = false;
                    }
                    if (borders[0] == null || border2.getWidth() != borders[0].getWidth()) {
                        z5 = false;
                    }
                    if (borders[0] == null || border2.getType() != borders[0].getType()) {
                        z4 = false;
                    }
                }
            }
            int[] iArr = {0, 1, 2, 3};
            int i3 = 0;
            boolean z6 = false;
            while (i3 < 4) {
                int i4 = iArr[i3];
                Border border3 = borders[i4];
                if (border3 != null) {
                    if (border3.getColor() instanceof DeviceRgb) {
                        pdfArray.add(new PdfArray(borders[i4].getColor().getColorValue()));
                        z6 = z;
                    } else {
                        pdfArray.add(PdfNull.PDF_NULL);
                    }
                    pdfArray2.add(transformBorderTypeToName(borders[i4].getType()));
                    pdfArray3.add(new PdfNumber(borders[i4].getWidth()));
                } else {
                    pdfArray.add(PdfNull.PDF_NULL);
                    pdfArray2.add(PdfName.None);
                    pdfArray3.add(PdfNull.PDF_NULL);
                }
                i3++;
                z = true;
            }
            if (!z6) {
                i = 0;
            } else if (z3) {
                i = 0;
                pdfDictionary.put(PdfName.BorderColor, pdfArray.get(0));
            } else {
                i = 0;
                pdfDictionary.put(PdfName.BorderColor, pdfArray);
            }
            if (z4) {
                pdfDictionary.put(PdfName.BorderStyle, pdfArray2.get(i));
            } else {
                pdfDictionary.put(PdfName.BorderStyle, pdfArray2);
            }
            if (z5) {
                pdfDictionary.put(PdfName.BorderThickness, pdfArray3.get(i));
            } else {
                pdfDictionary.put(PdfName.BorderThickness, pdfArray3);
            }
        }
    }

    private static IRoleMappingResolver resolveMappingToStandard(TagTreePointer tagTreePointer) {
        return tagTreePointer.getDocument().getTagStructureContext().resolveMappingToStandardOrDomainSpecificRole(tagTreePointer.getRole(), tagTreePointer.getProperties().getNamespace());
    }

    private static boolean isTagStructurePdf2(PdfNamespace pdfNamespace) {
        return pdfNamespace != null && StandardNamespaces.PDF_2_0.equals(pdfNamespace.getNamespaceName());
    }

    private static PdfName transformTextAlignmentValueToName(TextAlignment textAlignment) {
        int i = C35111.$SwitchMap$com$itextpdf$layout$properties$TextAlignment[textAlignment.ordinal()];
        if (i == 1) {
            return PdfName.Start;
        }
        if (i == 2) {
            return PdfName.Center;
        }
        if (i == 3) {
            return PdfName.End;
        }
        if (i == 4 || i == 5) {
            return PdfName.Justify;
        }
        return PdfName.Start;
    }

    private static PdfName transformBlockAlignToName(HorizontalAlignment horizontalAlignment) {
        int i = C35111.$SwitchMap$com$itextpdf$layout$properties$HorizontalAlignment[horizontalAlignment.ordinal()];
        if (i == 1) {
            return PdfName.Before;
        }
        if (i == 2) {
            return PdfName.Middle;
        }
        if (i == 3) {
            return PdfName.After;
        }
        return PdfName.Before;
    }

    private static PdfName transformBorderTypeToName(int i) {
        switch (i) {
            case 0:
                return PdfName.Solid;
            case 1:
                return PdfName.Dashed;
            case 2:
                return PdfName.Dotted;
            case 3:
                return PdfName.Double;
            case 4:
                return PdfName.Dotted;
            case 5:
                return PdfName.Groove;
            case 6:
                return PdfName.Inset;
            case 7:
                return PdfName.Outset;
            case 8:
                return PdfName.Ridge;
            default:
                return PdfName.Solid;
        }
    }

    /* JADX INFO: renamed from: com.itextpdf.layout.renderer.AccessibleAttributesApplier$1 */
    static /* synthetic */ class C35111 {
        static final /* synthetic */ int[] $SwitchMap$com$itextpdf$layout$properties$HorizontalAlignment;
        static final /* synthetic */ int[] $SwitchMap$com$itextpdf$layout$properties$ListNumberingType;
        static final /* synthetic */ int[] $SwitchMap$com$itextpdf$layout$properties$TextAlignment;

        static {
            int[] iArr = new int[ListNumberingType.values().length];
            $SwitchMap$com$itextpdf$layout$properties$ListNumberingType = iArr;
            try {
                iArr[ListNumberingType.DECIMAL.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$itextpdf$layout$properties$ListNumberingType[ListNumberingType.DECIMAL_LEADING_ZERO.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$itextpdf$layout$properties$ListNumberingType[ListNumberingType.ROMAN_UPPER.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$com$itextpdf$layout$properties$ListNumberingType[ListNumberingType.ROMAN_LOWER.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$com$itextpdf$layout$properties$ListNumberingType[ListNumberingType.ENGLISH_UPPER.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                $SwitchMap$com$itextpdf$layout$properties$ListNumberingType[ListNumberingType.GREEK_UPPER.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                $SwitchMap$com$itextpdf$layout$properties$ListNumberingType[ListNumberingType.ENGLISH_LOWER.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                $SwitchMap$com$itextpdf$layout$properties$ListNumberingType[ListNumberingType.GREEK_LOWER.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            int[] iArr2 = new int[HorizontalAlignment.values().length];
            $SwitchMap$com$itextpdf$layout$properties$HorizontalAlignment = iArr2;
            try {
                iArr2[HorizontalAlignment.LEFT.ordinal()] = 1;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                $SwitchMap$com$itextpdf$layout$properties$HorizontalAlignment[HorizontalAlignment.CENTER.ordinal()] = 2;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                $SwitchMap$com$itextpdf$layout$properties$HorizontalAlignment[HorizontalAlignment.RIGHT.ordinal()] = 3;
            } catch (NoSuchFieldError unused11) {
            }
            int[] iArr3 = new int[TextAlignment.values().length];
            $SwitchMap$com$itextpdf$layout$properties$TextAlignment = iArr3;
            try {
                iArr3[TextAlignment.LEFT.ordinal()] = 1;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                $SwitchMap$com$itextpdf$layout$properties$TextAlignment[TextAlignment.CENTER.ordinal()] = 2;
            } catch (NoSuchFieldError unused13) {
            }
            try {
                $SwitchMap$com$itextpdf$layout$properties$TextAlignment[TextAlignment.RIGHT.ordinal()] = 3;
            } catch (NoSuchFieldError unused14) {
            }
            try {
                $SwitchMap$com$itextpdf$layout$properties$TextAlignment[TextAlignment.JUSTIFIED.ordinal()] = 4;
            } catch (NoSuchFieldError unused15) {
            }
            try {
                $SwitchMap$com$itextpdf$layout$properties$TextAlignment[TextAlignment.JUSTIFIED_ALL.ordinal()] = 5;
            } catch (NoSuchFieldError unused16) {
            }
        }
    }

    private static PdfName transformNumberingTypeToName(ListNumberingType listNumberingType, boolean z) {
        switch (C35111.$SwitchMap$com$itextpdf$layout$properties$ListNumberingType[listNumberingType.ordinal()]) {
            case 1:
            case 2:
                return PdfName.Decimal;
            case 3:
                return PdfName.UpperRoman;
            case 4:
                return PdfName.LowerRoman;
            case 5:
            case 6:
                return PdfName.UpperAlpha;
            case 7:
            case 8:
                return PdfName.LowerAlpha;
            default:
                if (z) {
                    return PdfName.Ordered;
                }
                return PdfName.None;
        }
    }
}
