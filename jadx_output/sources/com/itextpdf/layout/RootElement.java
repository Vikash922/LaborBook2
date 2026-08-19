package com.itextpdf.layout;

import com.itextpdf.kernel.font.PdfFont;
import com.itextpdf.kernel.font.PdfFontFactory;
import com.itextpdf.kernel.pdf.PdfDocument;
import com.itextpdf.kernel.pdf.tagging.StandardRoles;
import com.itextpdf.layout.IPropertyContainer;
import com.itextpdf.layout.element.Div;
import com.itextpdf.layout.element.IBlockElement;
import com.itextpdf.layout.element.IElement;
import com.itextpdf.layout.element.Image;
import com.itextpdf.layout.element.Paragraph;
import com.itextpdf.layout.font.FontProvider;
import com.itextpdf.layout.properties.FontKerning;
import com.itextpdf.layout.properties.HorizontalAlignment;
import com.itextpdf.layout.properties.TextAlignment;
import com.itextpdf.layout.properties.UnitValue;
import com.itextpdf.layout.properties.VerticalAlignment;
import com.itextpdf.layout.renderer.IRenderer;
import com.itextpdf.layout.renderer.RootRenderer;
import com.itextpdf.layout.splitting.DefaultSplitCharacters;
import com.itextpdf.layout.splitting.ISplitCharacters;
import com.itextpdf.layout.tagging.LayoutTaggingHelper;
import java.io.Closeable;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public abstract class RootElement<T extends IPropertyContainer> extends ElementPropertyContainer<T> implements Closeable {
    protected PdfFont defaultFont;
    protected FontProvider defaultFontProvider;
    private LayoutTaggingHelper defaultLayoutTaggingHelper;
    protected ISplitCharacters defaultSplitCharacters;
    protected PdfDocument pdfDocument;
    protected RootRenderer rootRenderer;
    protected boolean immediateFlush = true;
    protected List<IElement> childElements = new ArrayList();

    protected abstract RootRenderer ensureRootRendererNotNull();

    public T add(IBlockElement iBlockElement) {
        return (T) addElement(iBlockElement);
    }

    public T add(Image image) {
        return (T) addElement(image);
    }

    public FontProvider getFontProvider() {
        Object property = getProperty(91);
        if (property instanceof FontProvider) {
            return (FontProvider) property;
        }
        return null;
    }

    public void setFontProvider(FontProvider fontProvider) {
        setProperty(91, fontProvider);
    }

    @Override // com.itextpdf.layout.ElementPropertyContainer, com.itextpdf.layout.IPropertyContainer
    public boolean hasProperty(int i) {
        return hasOwnProperty(i);
    }

    @Override // com.itextpdf.layout.ElementPropertyContainer, com.itextpdf.layout.IPropertyContainer
    public boolean hasOwnProperty(int i) {
        return this.properties.containsKey(Integer.valueOf(i));
    }

    @Override // com.itextpdf.layout.ElementPropertyContainer, com.itextpdf.layout.IPropertyContainer
    public <T1> T1 getProperty(int i) {
        return (T1) getOwnProperty(i);
    }

    @Override // com.itextpdf.layout.ElementPropertyContainer, com.itextpdf.layout.IPropertyContainer
    public <T1> T1 getOwnProperty(int i) {
        return (T1) this.properties.get(Integer.valueOf(i));
    }

    @Override // com.itextpdf.layout.ElementPropertyContainer, com.itextpdf.layout.IPropertyContainer
    public <T1> T1 getDefaultProperty(int i) {
        try {
            if (i == 20) {
                if (this.defaultFont == null) {
                    this.defaultFont = PdfFontFactory.createFont();
                }
                return (T1) this.defaultFont;
            }
            if (i == 24) {
                return (T1) UnitValue.createPointValue(12.0f);
            }
            if (i == 91) {
                if (this.defaultFontProvider == null) {
                    this.defaultFontProvider = new FontProvider();
                }
                return (T1) this.defaultFontProvider;
            }
            if (i == 108) {
                return (T1) initTaggingHelperIfNeeded();
            }
            if (i == 61) {
                return (T1) Float.valueOf(0.75f);
            }
            if (i == 62) {
                if (this.defaultSplitCharacters == null) {
                    this.defaultSplitCharacters = new DefaultSplitCharacters();
                }
                return (T1) this.defaultSplitCharacters;
            }
            if (i == 71) {
                return (T1) 0;
            }
            if (i != 72) {
                return null;
            }
            return (T1) Float.valueOf(0.0f);
        } catch (IOException e) {
            throw new RuntimeException(e.toString(), e);
        }
    }

    @Override // com.itextpdf.layout.ElementPropertyContainer, com.itextpdf.layout.IPropertyContainer
    public void deleteOwnProperty(int i) {
        this.properties.remove(Integer.valueOf(i));
    }

    @Override // com.itextpdf.layout.ElementPropertyContainer, com.itextpdf.layout.IPropertyContainer
    public void setProperty(int i, Object obj) {
        this.properties.put(Integer.valueOf(i), obj);
    }

    public RootRenderer getRenderer() {
        return ensureRootRendererNotNull();
    }

    public T showTextAligned(String str, float f, float f2, TextAlignment textAlignment) {
        return (T) showTextAligned(str, f, f2, textAlignment, 0.0f);
    }

    public T showTextAligned(String str, float f, float f2, TextAlignment textAlignment, float f3) {
        return (T) showTextAligned(str, f, f2, textAlignment, VerticalAlignment.BOTTOM, f3);
    }

    public T showTextAligned(String str, float f, float f2, TextAlignment textAlignment, VerticalAlignment verticalAlignment, float f3) {
        return (T) showTextAligned(new Paragraph(str).setMultipliedLeading(1.0f).setMargin(0.0f), f, f2, this.pdfDocument.getNumberOfPages(), textAlignment, verticalAlignment, f3);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public T showTextAlignedKerned(String str, float f, float f2, TextAlignment textAlignment, VerticalAlignment verticalAlignment, float f3) {
        return (T) showTextAligned((Paragraph) new Paragraph(str).setMultipliedLeading(1.0f).setMargin(0.0f).setFontKerning(FontKerning.YES), f, f2, this.pdfDocument.getNumberOfPages(), textAlignment, verticalAlignment, f3);
    }

    public T showTextAligned(Paragraph paragraph, float f, float f2, TextAlignment textAlignment) {
        return (T) showTextAligned(paragraph, f, f2, this.pdfDocument.getNumberOfPages(), textAlignment, VerticalAlignment.BOTTOM, 0.0f);
    }

    public T showTextAligned(Paragraph paragraph, float f, float f2, TextAlignment textAlignment, VerticalAlignment verticalAlignment) {
        return (T) showTextAligned(paragraph, f, f2, this.pdfDocument.getNumberOfPages(), textAlignment, verticalAlignment, 0.0f);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public T showTextAligned(Paragraph paragraph, float f, float f2, int i, TextAlignment textAlignment, VerticalAlignment verticalAlignment, float f3) {
        Div div = new Div();
        ((Div) div.setTextAlignment(textAlignment)).setVerticalAlignment(verticalAlignment);
        if (f3 != 0.0f) {
            div.setRotationAngle(f3);
        }
        div.setProperty(58, Float.valueOf(f));
        div.setProperty(59, Float.valueOf(f2));
        if (textAlignment == TextAlignment.CENTER) {
            f -= 2500.0f;
            paragraph.setHorizontalAlignment(HorizontalAlignment.CENTER);
        } else if (textAlignment == TextAlignment.RIGHT) {
            f -= 5000.0f;
            paragraph.setHorizontalAlignment(HorizontalAlignment.RIGHT);
        }
        if (verticalAlignment == VerticalAlignment.MIDDLE) {
            f2 -= 2500.0f;
        } else if (verticalAlignment == VerticalAlignment.TOP) {
            f2 -= 5000.0f;
        }
        if (i == 0) {
            i = 1;
        }
        ((Div) div.setFixedPosition(i, f, f2, 5000.0f)).setMinHeight(5000.0f);
        if (paragraph.getProperty(33) == null) {
            paragraph.setMultipliedLeading(1.0f);
        }
        div.add(paragraph.setMargins(0.0f, 0.0f, 0.0f, 0.0f));
        div.getAccessibilityProperties().setRole(StandardRoles.ARTIFACT);
        add(div);
        return this;
    }

    protected void createAndAddRendererSubTree(IElement iElement) {
        IRenderer iRendererCreateRendererSubTree = iElement.createRendererSubTree();
        LayoutTaggingHelper layoutTaggingHelperInitTaggingHelperIfNeeded = initTaggingHelperIfNeeded();
        if (layoutTaggingHelperInitTaggingHelperIfNeeded != null) {
            layoutTaggingHelperInitTaggingHelperIfNeeded.addKidsHint(this.pdfDocument.getTagStructureContext().getAutoTaggingPointer(), Collections.singletonList(iRendererCreateRendererSubTree));
        }
        ensureRootRendererNotNull().addChild(iRendererCreateRendererSubTree);
    }

    private LayoutTaggingHelper initTaggingHelperIfNeeded() {
        if (this.defaultLayoutTaggingHelper != null || !this.pdfDocument.isTagged()) {
            return this.defaultLayoutTaggingHelper;
        }
        LayoutTaggingHelper layoutTaggingHelper = new LayoutTaggingHelper(this.pdfDocument, this.immediateFlush);
        this.defaultLayoutTaggingHelper = layoutTaggingHelper;
        return layoutTaggingHelper;
    }

    private T addElement(IElement iElement) {
        this.childElements.add(iElement);
        createAndAddRendererSubTree(iElement);
        if (this.immediateFlush) {
            this.childElements.remove(r2.size() - 1);
        }
        return this;
    }
}
