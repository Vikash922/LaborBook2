package com.itextpdf.svg.processors.impl;

import com.itextpdf.layout.font.FontInfo;
import com.itextpdf.layout.font.FontProvider;
import com.itextpdf.layout.font.FontSet;
import com.itextpdf.layout.font.Range;
import com.itextpdf.p017io.font.FontProgram;
import com.itextpdf.styledxmlparser.css.media.MediaDeviceDescription;
import com.itextpdf.styledxmlparser.resolver.font.BasicFontProvider;
import com.itextpdf.styledxmlparser.resolver.resource.ResourceResolver;
import com.itextpdf.svg.css.SvgCssContext;
import com.itextpdf.svg.processors.ISvgConverterProperties;

/* JADX INFO: loaded from: classes6.dex */
public class SvgProcessorContext {
    private final SvgCssContext cssContext;
    private MediaDeviceDescription deviceDescription;
    private FontProvider fontProvider;
    private final ResourceResolver resourceResolver;
    private FontSet tempFonts;

    public SvgProcessorContext(ISvgConverterProperties iSvgConverterProperties) {
        MediaDeviceDescription mediaDeviceDescription = iSvgConverterProperties.getMediaDeviceDescription();
        this.deviceDescription = mediaDeviceDescription;
        if (mediaDeviceDescription == null) {
            this.deviceDescription = MediaDeviceDescription.getDefault();
        }
        FontProvider fontProvider = iSvgConverterProperties.getFontProvider();
        this.fontProvider = fontProvider;
        if (fontProvider == null) {
            this.fontProvider = new BasicFontProvider();
        }
        this.resourceResolver = new ResourceResolver(iSvgConverterProperties.getBaseUri(), iSvgConverterProperties.getResourceRetriever());
        this.cssContext = new SvgCssContext();
    }

    public FontProvider getFontProvider() {
        return this.fontProvider;
    }

    public ResourceResolver getResourceResolver() {
        return this.resourceResolver;
    }

    public MediaDeviceDescription getDeviceDescription() {
        return this.deviceDescription;
    }

    public FontSet getTempFonts() {
        return this.tempFonts;
    }

    public SvgCssContext getCssContext() {
        return this.cssContext;
    }

    public void addTemporaryFont(FontProgram fontProgram, String str, String str2, Range range) {
        if (this.tempFonts == null) {
            this.tempFonts = new FontSet();
        }
        this.tempFonts.addFont(fontProgram, str, str2, range);
    }

    public void addTemporaryFont(FontProgram fontProgram, String str, String str2) {
        if (this.tempFonts == null) {
            this.tempFonts = new FontSet();
        }
        this.tempFonts.addFont(fontProgram, str, str2);
    }

    public void addTemporaryFont(FontInfo fontInfo, String str) {
        if (this.tempFonts == null) {
            this.tempFonts = new FontSet();
        }
        this.tempFonts.addFont(fontInfo, str);
    }
}
