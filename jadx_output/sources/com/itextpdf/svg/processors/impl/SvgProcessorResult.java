package com.itextpdf.svg.processors.impl;

import com.itextpdf.layout.font.FontProvider;
import com.itextpdf.layout.font.FontSet;
import com.itextpdf.svg.exceptions.SvgExceptionMessageConstant;
import com.itextpdf.svg.processors.ISvgProcessorResult;
import com.itextpdf.svg.renderers.ISvgNodeRenderer;
import java.util.Map;

/* JADX INFO: loaded from: classes6.dex */
public class SvgProcessorResult implements ISvgProcessorResult {
    private final SvgProcessorContext context;
    private final Map<String, ISvgNodeRenderer> namedObjects;
    private final ISvgNodeRenderer root;

    public SvgProcessorResult(Map<String, ISvgNodeRenderer> map, ISvgNodeRenderer iSvgNodeRenderer, SvgProcessorContext svgProcessorContext) {
        this.namedObjects = map;
        this.root = iSvgNodeRenderer;
        if (svgProcessorContext == null) {
            throw new IllegalArgumentException(SvgExceptionMessageConstant.PARAMETER_CANNOT_BE_NULL);
        }
        this.context = svgProcessorContext;
    }

    @Override // com.itextpdf.svg.processors.ISvgProcessorResult
    public Map<String, ISvgNodeRenderer> getNamedObjects() {
        return this.namedObjects;
    }

    @Override // com.itextpdf.svg.processors.ISvgProcessorResult
    public ISvgNodeRenderer getRootRenderer() {
        return this.root;
    }

    @Override // com.itextpdf.svg.processors.ISvgProcessorResult
    public FontProvider getFontProvider() {
        return this.context.getFontProvider();
    }

    @Override // com.itextpdf.svg.processors.ISvgProcessorResult
    public FontSet getTempFonts() {
        return this.context.getTempFonts();
    }

    public SvgProcessorContext getContext() {
        return this.context;
    }

    public boolean equals(Object obj) {
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        SvgProcessorResult svgProcessorResult = (SvgProcessorResult) obj;
        return svgProcessorResult.getNamedObjects().equals(getNamedObjects()) && svgProcessorResult.getRootRenderer().equals(getRootRenderer());
    }

    public int hashCode() {
        return getNamedObjects().hashCode() + (getRootRenderer().hashCode() * 43);
    }
}
