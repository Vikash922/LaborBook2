package com.itextpdf.svg.processors.impl;

import com.itextpdf.layout.font.FontProvider;
import com.itextpdf.styledxmlparser.css.media.MediaDeviceDescription;
import com.itextpdf.styledxmlparser.resolver.resource.DefaultResourceRetriever;
import com.itextpdf.styledxmlparser.resolver.resource.IResourceRetriever;
import com.itextpdf.svg.processors.ISvgConverterProperties;
import com.itextpdf.svg.renderers.factories.DefaultSvgNodeRendererFactory;
import com.itextpdf.svg.renderers.factories.ISvgNodeRendererFactory;
import java.nio.charset.StandardCharsets;

/* JADX INFO: loaded from: classes6.dex */
public class SvgConverterProperties implements ISvgConverterProperties {
    private FontProvider fontProvider;
    private MediaDeviceDescription mediaDeviceDescription;
    private String baseUri = "";
    private String charset = StandardCharsets.UTF_8.name();
    private IResourceRetriever resourceRetriever = new DefaultResourceRetriever();
    private ISvgNodeRendererFactory rendererFactory = new DefaultSvgNodeRendererFactory();

    public SvgConverterProperties setRendererFactory(ISvgNodeRendererFactory iSvgNodeRendererFactory) {
        this.rendererFactory = iSvgNodeRendererFactory;
        return this;
    }

    public SvgConverterProperties setFontProvider(FontProvider fontProvider) {
        this.fontProvider = fontProvider;
        return this;
    }

    @Override // com.itextpdf.svg.processors.ISvgConverterProperties
    public ISvgNodeRendererFactory getRendererFactory() {
        return this.rendererFactory;
    }

    @Override // com.itextpdf.svg.processors.ISvgConverterProperties
    public String getCharset() {
        return this.charset;
    }

    public SvgConverterProperties setCharset(String str) {
        this.charset = str;
        return this;
    }

    @Override // com.itextpdf.svg.processors.ISvgConverterProperties
    public String getBaseUri() {
        return this.baseUri;
    }

    @Override // com.itextpdf.svg.processors.ISvgConverterProperties
    public FontProvider getFontProvider() {
        return this.fontProvider;
    }

    @Override // com.itextpdf.svg.processors.ISvgConverterProperties
    public MediaDeviceDescription getMediaDeviceDescription() {
        return this.mediaDeviceDescription;
    }

    public SvgConverterProperties setMediaDeviceDescription(MediaDeviceDescription mediaDeviceDescription) {
        this.mediaDeviceDescription = mediaDeviceDescription;
        return this;
    }

    public SvgConverterProperties setBaseUri(String str) {
        this.baseUri = str;
        return this;
    }

    @Override // com.itextpdf.svg.processors.ISvgConverterProperties
    public IResourceRetriever getResourceRetriever() {
        return this.resourceRetriever;
    }

    public SvgConverterProperties setResourceRetriever(IResourceRetriever iResourceRetriever) {
        this.resourceRetriever = iResourceRetriever;
        return this;
    }
}
