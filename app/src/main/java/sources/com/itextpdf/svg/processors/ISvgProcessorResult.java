package com.itextpdf.svg.processors;

import com.itextpdf.layout.font.FontProvider;
import com.itextpdf.layout.font.FontSet;
import com.itextpdf.svg.renderers.ISvgNodeRenderer;
import java.util.Map;

/* JADX INFO: loaded from: classes6.dex */
public interface ISvgProcessorResult {
    FontProvider getFontProvider();

    Map<String, ISvgNodeRenderer> getNamedObjects();

    ISvgNodeRenderer getRootRenderer();

    FontSet getTempFonts();
}
