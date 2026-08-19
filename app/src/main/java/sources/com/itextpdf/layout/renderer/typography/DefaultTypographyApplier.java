package com.itextpdf.layout.renderer.typography;

import com.itextpdf.commons.actions.contexts.IMetaInfo;
import com.itextpdf.commons.actions.sequence.SequenceId;
import com.itextpdf.layout.properties.BaseDirection;
import com.itextpdf.layout.renderer.LineRenderer;
import com.itextpdf.p017io.font.FontProgram;
import com.itextpdf.p017io.font.TrueTypeFont;
import com.itextpdf.p017io.font.otf.GlyphLine;
import com.itextpdf.p017io.logs.IoLogMessageConstant;
import java.io.IOException;
import java.lang.Character;
import java.util.Collection;
import java.util.List;
import java.util.Map;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

/* JADX INFO: loaded from: classes6.dex */
public final class DefaultTypographyApplier extends AbstractTypographyApplier {
    private static final Logger LOGGER = LoggerFactory.getLogger((Class<?>) DefaultTypographyApplier.class);

    @Override // com.itextpdf.layout.renderer.typography.AbstractTypographyApplier
    public boolean isPdfCalligraphInstance() {
        return false;
    }

    @Override // com.itextpdf.layout.renderer.typography.AbstractTypographyApplier
    public boolean applyOtfScript(TrueTypeFont trueTypeFont, GlyphLine glyphLine, Character.UnicodeScript unicodeScript, Object obj, SequenceId sequenceId, IMetaInfo iMetaInfo) {
        LOGGER.warn(IoLogMessageConstant.TYPOGRAPHY_NOT_FOUND);
        return super.applyOtfScript(trueTypeFont, glyphLine, unicodeScript, obj, sequenceId, iMetaInfo);
    }

    @Override // com.itextpdf.layout.renderer.typography.AbstractTypographyApplier
    public Collection<Character.UnicodeScript> getSupportedScripts() {
        LOGGER.warn(IoLogMessageConstant.TYPOGRAPHY_NOT_FOUND);
        return super.getSupportedScripts();
    }

    @Override // com.itextpdf.layout.renderer.typography.AbstractTypographyApplier
    public Collection<Character.UnicodeScript> getSupportedScripts(Object obj) {
        LOGGER.warn(IoLogMessageConstant.TYPOGRAPHY_NOT_FOUND);
        return super.getSupportedScripts(obj);
    }

    @Override // com.itextpdf.layout.renderer.typography.AbstractTypographyApplier
    public boolean applyKerning(FontProgram fontProgram, GlyphLine glyphLine, SequenceId sequenceId, IMetaInfo iMetaInfo) {
        LOGGER.warn(IoLogMessageConstant.TYPOGRAPHY_NOT_FOUND);
        return super.applyKerning(fontProgram, glyphLine, sequenceId, iMetaInfo);
    }

    @Override // com.itextpdf.layout.renderer.typography.AbstractTypographyApplier
    public byte[] getBidiLevels(BaseDirection baseDirection, int[] iArr, SequenceId sequenceId, IMetaInfo iMetaInfo) {
        LOGGER.warn(IoLogMessageConstant.TYPOGRAPHY_NOT_FOUND);
        return super.getBidiLevels(baseDirection, iArr, sequenceId, iMetaInfo);
    }

    @Override // com.itextpdf.layout.renderer.typography.AbstractTypographyApplier
    public int[] reorderLine(List<LineRenderer.RendererGlyph> list, byte[] bArr, byte[] bArr2) {
        LOGGER.warn(IoLogMessageConstant.TYPOGRAPHY_NOT_FOUND);
        return super.reorderLine(list, bArr, bArr2);
    }

    @Override // com.itextpdf.layout.renderer.typography.AbstractTypographyApplier
    public List<Integer> getPossibleBreaks(String str) {
        LOGGER.warn(IoLogMessageConstant.TYPOGRAPHY_NOT_FOUND);
        return super.getPossibleBreaks(str);
    }

    @Override // com.itextpdf.layout.renderer.typography.AbstractTypographyApplier
    public Map<String, byte[]> loadShippedFonts() throws IOException {
        LOGGER.warn(IoLogMessageConstant.TYPOGRAPHY_NOT_FOUND);
        return super.loadShippedFonts();
    }
}
