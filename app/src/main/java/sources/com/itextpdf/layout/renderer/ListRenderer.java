package com.itextpdf.layout.renderer;

import com.facebook.appevents.AppEventsConstants;
import com.itextpdf.commons.utils.MessageFormatUtil;
import com.itextpdf.kernel.font.PdfFontFactory;
import com.itextpdf.kernel.geom.Rectangle;
import com.itextpdf.kernel.numbering.EnglishAlphabetNumbering;
import com.itextpdf.kernel.numbering.GreekAlphabetNumbering;
import com.itextpdf.kernel.numbering.RomanNumbering;
import com.itextpdf.kernel.pdf.tagging.StandardRoles;
import com.itextpdf.kernel.xmp.XMPError;
import com.itextpdf.layout.element.Image;
import com.itextpdf.layout.element.List;
import com.itextpdf.layout.element.Text;
import com.itextpdf.layout.layout.LayoutArea;
import com.itextpdf.layout.layout.LayoutContext;
import com.itextpdf.layout.layout.LayoutResult;
import com.itextpdf.layout.minmaxwidth.MinMaxWidth;
import com.itextpdf.layout.minmaxwidth.MinMaxWidthUtils;
import com.itextpdf.layout.properties.BaseDirection;
import com.itextpdf.layout.properties.IListSymbolFactory;
import com.itextpdf.layout.properties.ListNumberingType;
import com.itextpdf.layout.properties.ListSymbolPosition;
import com.itextpdf.layout.properties.UnitValue;
import com.itextpdf.layout.tagging.LayoutTaggingHelper;
import com.itextpdf.p017io.logs.IoLogMessageConstant;
import com.itextpdf.p017io.util.TextUtil;
import java.io.IOException;
import java.util.ArrayList;
import org.objectweb.asm.Opcodes;
import org.slf4j.LoggerFactory;

/* JADX INFO: loaded from: classes6.dex */
public class ListRenderer extends BlockRenderer {
    public ListRenderer(List list) {
        super(list);
    }

    @Override // com.itextpdf.layout.renderer.BlockRenderer, com.itextpdf.layout.renderer.IRenderer
    public LayoutResult layout(LayoutContext layoutContext) {
        LayoutResult layoutResultInitializeListSymbols = initializeListSymbols(layoutContext);
        if (layoutResultInitializeListSymbols != null) {
            return layoutResultInitializeListSymbols;
        }
        LayoutResult layoutResultLayout = super.layout(layoutContext);
        if (!Boolean.TRUE.equals(getPropertyAsBoolean(26)) || layoutResultLayout.getCauseOfNothing() == null) {
            return layoutResultLayout;
        }
        if (1 == layoutResultLayout.getStatus()) {
            return correctListSplitting(this, null, layoutResultLayout.getCauseOfNothing(), layoutResultLayout.getOccupiedArea());
        }
        return 2 == layoutResultLayout.getStatus() ? correctListSplitting(layoutResultLayout.getSplitRenderer(), layoutResultLayout.getOverflowRenderer(), layoutResultLayout.getCauseOfNothing(), layoutResultLayout.getOccupiedArea()) : layoutResultLayout;
    }

    @Override // com.itextpdf.layout.renderer.IRenderer
    public IRenderer getNextRenderer() {
        logWarningIfGetNextRendererNotOverridden(ListRenderer.class, getClass());
        return new ListRenderer((List) this.modelElement);
    }

    @Override // com.itextpdf.layout.renderer.BlockRenderer
    protected AbstractRenderer createSplitRenderer(int i) {
        AbstractRenderer abstractRendererCreateSplitRenderer = super.createSplitRenderer(i);
        abstractRendererCreateSplitRenderer.addAllProperties(getOwnProperties());
        abstractRendererCreateSplitRenderer.setProperty(40, Boolean.TRUE);
        return abstractRendererCreateSplitRenderer;
    }

    @Override // com.itextpdf.layout.renderer.BlockRenderer
    protected AbstractRenderer createOverflowRenderer(int i) {
        AbstractRenderer abstractRendererCreateOverflowRenderer = super.createOverflowRenderer(i);
        abstractRendererCreateOverflowRenderer.addAllProperties(getOwnProperties());
        abstractRendererCreateOverflowRenderer.setProperty(40, Boolean.TRUE);
        return abstractRendererCreateOverflowRenderer;
    }

    @Override // com.itextpdf.layout.renderer.BlockRenderer, com.itextpdf.layout.renderer.AbstractRenderer
    public MinMaxWidth getMinMaxWidth() {
        if (initializeListSymbols(new LayoutContext(new LayoutArea(1, new Rectangle(MinMaxWidthUtils.getInfWidth(), 1000000.0f)))) != null) {
            return MinMaxWidthUtils.countDefaultMinMaxWidth(this);
        }
        return super.getMinMaxWidth();
    }

    protected IRenderer makeListSymbolRenderer(int i, IRenderer iRenderer) {
        IRenderer iRendererCreateListSymbolRenderer = createListSymbolRenderer(i, iRenderer);
        if (iRendererCreateListSymbolRenderer != null) {
            iRendererCreateListSymbolRenderer.setProperty(74, false);
        }
        return iRendererCreateListSymbolRenderer;
    }

    static Object getListItemOrListProperty(IRenderer iRenderer, IRenderer iRenderer2, int i) {
        return iRenderer.hasProperty(i) ? iRenderer.getProperty(i) : iRenderer2.getProperty(i);
    }

    private IRenderer createListSymbolRenderer(int i, IRenderer iRenderer) {
        String strValueOf;
        TextRenderer textRenderer;
        Object listItemOrListProperty = getListItemOrListProperty(iRenderer, this, 37);
        if (listItemOrListProperty instanceof Text) {
            return surroundTextBullet(new TextRenderer((Text) listItemOrListProperty));
        }
        if (listItemOrListProperty instanceof Image) {
            return new ImageRenderer((Image) listItemOrListProperty);
        }
        if (listItemOrListProperty instanceof ListNumberingType) {
            ListNumberingType listNumberingType = (ListNumberingType) listItemOrListProperty;
            switch (C35171.$SwitchMap$com$itextpdf$layout$properties$ListNumberingType[listNumberingType.ordinal()]) {
                case 1:
                    strValueOf = String.valueOf(i);
                    break;
                case 2:
                    strValueOf = (i < 10 ? AppEventsConstants.EVENT_PARAM_VALUE_NO : "") + String.valueOf(i);
                    break;
                case 3:
                    strValueOf = RomanNumbering.toRomanLowerCase(i);
                    break;
                case 4:
                    strValueOf = RomanNumbering.toRomanUpperCase(i);
                    break;
                case 5:
                    strValueOf = EnglishAlphabetNumbering.toLatinAlphabetNumberLowerCase(i);
                    break;
                case 6:
                    strValueOf = EnglishAlphabetNumbering.toLatinAlphabetNumberUpperCase(i);
                    break;
                case 7:
                    strValueOf = GreekAlphabetNumbering.toGreekAlphabetNumber(i, false, true);
                    break;
                case 8:
                    strValueOf = GreekAlphabetNumbering.toGreekAlphabetNumber(i, true, true);
                    break;
                case 9:
                    strValueOf = TextUtil.charToString((char) (i + Opcodes.LOOKUPSWITCH));
                    break;
                case 10:
                    strValueOf = TextUtil.charToString((char) (i + Opcodes.PUTFIELD));
                    break;
                case 11:
                    strValueOf = TextUtil.charToString((char) (i + Opcodes.ATHROW));
                    break;
                case 12:
                    strValueOf = TextUtil.charToString((char) (i + XMPError.BADXML));
                    break;
                default:
                    throw new IllegalStateException();
            }
            Text text = new Text(getListItemOrListProperty(iRenderer, this, 41) + strValueOf + getListItemOrListProperty(iRenderer, this, 42));
            if (listNumberingType == ListNumberingType.GREEK_LOWER || listNumberingType == ListNumberingType.GREEK_UPPER || listNumberingType == ListNumberingType.ZAPF_DINGBATS_1 || listNumberingType == ListNumberingType.ZAPF_DINGBATS_2 || listNumberingType == ListNumberingType.ZAPF_DINGBATS_3 || listNumberingType == ListNumberingType.ZAPF_DINGBATS_4) {
                String str = (listNumberingType == ListNumberingType.GREEK_LOWER || listNumberingType == ListNumberingType.GREEK_UPPER) ? "Symbol" : "ZapfDingbats";
                ConstantFontTextRenderer constantFontTextRenderer = new ConstantFontTextRenderer(text, str);
                try {
                    constantFontTextRenderer.setProperty(20, PdfFontFactory.createFont(str));
                } catch (IOException unused) {
                }
                textRenderer = constantFontTextRenderer;
            } else {
                textRenderer = new TextRenderer(text);
            }
            return surroundTextBullet(textRenderer);
        }
        if (listItemOrListProperty instanceof IListSymbolFactory) {
            return surroundTextBullet(((IListSymbolFactory) listItemOrListProperty).createSymbol(i, this, iRenderer).createRendererSubTree());
        }
        if (listItemOrListProperty == null) {
            return null;
        }
        throw new IllegalStateException();
    }

    /* JADX INFO: renamed from: com.itextpdf.layout.renderer.ListRenderer$1 */
    static /* synthetic */ class C35171 {
        static final /* synthetic */ int[] $SwitchMap$com$itextpdf$layout$properties$ListNumberingType;

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
                $SwitchMap$com$itextpdf$layout$properties$ListNumberingType[ListNumberingType.ROMAN_LOWER.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$com$itextpdf$layout$properties$ListNumberingType[ListNumberingType.ROMAN_UPPER.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$com$itextpdf$layout$properties$ListNumberingType[ListNumberingType.ENGLISH_LOWER.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                $SwitchMap$com$itextpdf$layout$properties$ListNumberingType[ListNumberingType.ENGLISH_UPPER.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                $SwitchMap$com$itextpdf$layout$properties$ListNumberingType[ListNumberingType.GREEK_LOWER.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                $SwitchMap$com$itextpdf$layout$properties$ListNumberingType[ListNumberingType.GREEK_UPPER.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                $SwitchMap$com$itextpdf$layout$properties$ListNumberingType[ListNumberingType.ZAPF_DINGBATS_1.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                $SwitchMap$com$itextpdf$layout$properties$ListNumberingType[ListNumberingType.ZAPF_DINGBATS_2.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                $SwitchMap$com$itextpdf$layout$properties$ListNumberingType[ListNumberingType.ZAPF_DINGBATS_3.ordinal()] = 11;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                $SwitchMap$com$itextpdf$layout$properties$ListNumberingType[ListNumberingType.ZAPF_DINGBATS_4.ordinal()] = 12;
            } catch (NoSuchFieldError unused12) {
            }
        }
    }

    private LineRenderer surroundTextBullet(IRenderer iRenderer) {
        LineRenderer lineRenderer = new LineRenderer();
        Text text = new Text("\u200d");
        text.getAccessibilityProperties().setRole(StandardRoles.ARTIFACT);
        TextRenderer textRenderer = new TextRenderer(text);
        lineRenderer.addChild(textRenderer);
        lineRenderer.addChild(iRenderer);
        lineRenderer.addChild(textRenderer);
        return lineRenderer;
    }

    private LayoutResult correctListSplitting(IRenderer iRenderer, IRenderer iRenderer2, IRenderer iRenderer3, LayoutArea layoutArea) {
        int iIndexOf = iRenderer.getChildRenderers().get(0).getChildRenderers().indexOf(iRenderer3);
        if (-1 == iIndexOf) {
            return new LayoutResult(iRenderer2 == null ? 1 : 2, layoutArea, iRenderer, iRenderer2, this);
        }
        IRenderer iRenderer4 = iRenderer.getChildRenderers().get(0);
        ListRenderer listRenderer = (ListRenderer) createOverflowRenderer(2);
        listRenderer.deleteOwnProperty(26);
        listRenderer.childRenderers.add(((ListItemRenderer) iRenderer4).createOverflowRenderer(2));
        listRenderer.childRenderers.addAll(iRenderer.getChildRenderers().subList(1, iRenderer.getChildRenderers().size()));
        ArrayList arrayList = new ArrayList(iRenderer4.getChildRenderers().subList(iIndexOf + 1, iRenderer4.getChildRenderers().size()));
        iRenderer.getChildRenderers().removeAll(iRenderer.getChildRenderers().subList(1, iRenderer.getChildRenderers().size()));
        if (arrayList.size() != 0) {
            listRenderer.getChildRenderers().get(0).getChildRenderers().addAll(arrayList);
            iRenderer.getChildRenderers().get(0).getChildRenderers().removeAll(arrayList);
            listRenderer.getChildRenderers().get(0).setProperty(44, iRenderer.getChildRenderers().get(0).getProperty(44));
        } else {
            listRenderer.childRenderers.remove(0);
        }
        if (iRenderer2 != null) {
            listRenderer.childRenderers.addAll(iRenderer2.getChildRenderers());
        }
        if (listRenderer.childRenderers.size() != 0) {
            return new LayoutResult(2, layoutArea, iRenderer, listRenderer, this);
        }
        return new LayoutResult(1, layoutArea, null, null, this);
    }

    private LayoutResult initializeListSymbols(LayoutContext layoutContext) {
        LayoutTaggingHelper layoutTaggingHelper;
        LayoutResult layoutResultLayout;
        if (!hasOwnProperty(40)) {
            ArrayList arrayList = new ArrayList();
            int iIntValue = ((Integer) getProperty(36, 1)).intValue();
            int i = 0;
            for (int i2 = 0; i2 < this.childRenderers.size(); i2++) {
                this.childRenderers.get(i2).setParent(this);
                if (this.childRenderers.get(i2).getProperty(120) != null) {
                    iIntValue = ((Integer) this.childRenderers.get(i2).getProperty(120)).intValue();
                }
                IRenderer iRendererMakeListSymbolRenderer = makeListSymbolRenderer(iIntValue, this.childRenderers.get(i2));
                if (iRendererMakeListSymbolRenderer != null && BaseDirection.RIGHT_TO_LEFT == getProperty(7)) {
                    iRendererMakeListSymbolRenderer.setProperty(7, BaseDirection.RIGHT_TO_LEFT);
                }
                if (iRendererMakeListSymbolRenderer != null) {
                    iIntValue++;
                    iRendererMakeListSymbolRenderer.setParent(this.childRenderers.get(i2));
                    layoutResultLayout = iRendererMakeListSymbolRenderer.layout(layoutContext);
                    iRendererMakeListSymbolRenderer.setParent(null);
                } else {
                    layoutResultLayout = null;
                }
                this.childRenderers.get(i2).setParent(null);
                boolean zEquals = Boolean.TRUE.equals(getPropertyAsBoolean(26));
                boolean z = (layoutResultLayout == null || layoutResultLayout.getStatus() == 1) ? false : true;
                if (z && zEquals) {
                    iRendererMakeListSymbolRenderer = null;
                }
                arrayList.add(iRendererMakeListSymbolRenderer);
                if (z && !zEquals) {
                    return new LayoutResult(3, null, null, this, layoutResultLayout.getCauseOfNothing());
                }
            }
            float f = 0.0f;
            float fMax = 0.0f;
            for (int i3 = 0; i3 < this.childRenderers.size(); i3++) {
                IRenderer iRenderer = (IRenderer) arrayList.get(i3);
                if (iRenderer != null && ((ListSymbolPosition) getListItemOrListProperty(this.childRenderers.get(i3), this, 83)) != ListSymbolPosition.INSIDE) {
                    fMax = Math.max(fMax, iRenderer.getOccupiedArea().getBBox().getWidth());
                }
            }
            Float propertyAsFloat = getPropertyAsFloat(39);
            for (IRenderer iRenderer2 : this.childRenderers) {
                iRenderer2.setParent(this);
                int i4 = BaseDirection.RIGHT_TO_LEFT == iRenderer2.getProperty(7) ? 45 : 44;
                iRenderer2.deleteOwnProperty(i4);
                UnitValue unitValue = (UnitValue) iRenderer2.getProperty(i4, UnitValue.createPointValue(f));
                if (!unitValue.isPointValue()) {
                    LoggerFactory.getLogger((Class<?>) ListRenderer.class).error(MessageFormatUtil.format(IoLogMessageConstant.PROPERTY_IN_PERCENTS_NOT_SUPPORTED, Integer.valueOf(i4)));
                }
                float value = unitValue.getValue();
                if (((ListSymbolPosition) getListItemOrListProperty(iRenderer2, this, 83)) == ListSymbolPosition.DEFAULT) {
                    value += (propertyAsFloat != null ? propertyAsFloat.floatValue() : 0.0f) + fMax;
                }
                iRenderer2.setProperty(i4, UnitValue.createPointValue(value));
                int i5 = i + 1;
                IRenderer iRenderer3 = (IRenderer) arrayList.get(i);
                ((ListItemRenderer) iRenderer2).addSymbolRenderer(iRenderer3, fMax);
                if (iRenderer3 != null && (layoutTaggingHelper = (LayoutTaggingHelper) getProperty(108)) != null) {
                    if (iRenderer3 instanceof LineRenderer) {
                        layoutTaggingHelper.setRoleHint(iRenderer3.getChildRenderers().get(1), StandardRoles.LBL);
                    } else {
                        layoutTaggingHelper.setRoleHint(iRenderer3, StandardRoles.LBL);
                    }
                }
                i = i5;
                f = 0.0f;
            }
        }
        return null;
    }

    private static final class ConstantFontTextRenderer extends TextRenderer {
        private String constantFontName;

        public ConstantFontTextRenderer(Text text, String str) {
            super(text);
            this.constantFontName = str;
        }

        @Override // com.itextpdf.layout.renderer.TextRenderer, com.itextpdf.layout.renderer.AbstractRenderer, com.itextpdf.layout.renderer.IRenderer
        public void draw(DrawContext drawContext) {
            try {
                setProperty(20, PdfFontFactory.createFont(this.constantFontName));
            } catch (IOException unused) {
            }
            super.draw(drawContext);
        }
    }
}
