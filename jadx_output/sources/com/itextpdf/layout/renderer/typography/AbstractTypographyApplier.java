package com.itextpdf.layout.renderer.typography;

import com.itextpdf.commons.actions.AbstractITextEvent;
import com.itextpdf.commons.actions.contexts.IMetaInfo;
import com.itextpdf.commons.actions.sequence.SequenceId;
import com.itextpdf.layout.properties.BaseDirection;
import com.itextpdf.layout.renderer.LineRenderer;
import com.itextpdf.p017io.font.FontProgram;
import com.itextpdf.p017io.font.TrueTypeFont;
import com.itextpdf.p017io.font.otf.GlyphLine;
import java.io.IOException;
import java.lang.Character;
import java.util.Collection;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes6.dex */
public abstract class AbstractTypographyApplier extends AbstractITextEvent {
    public boolean applyKerning(FontProgram fontProgram, GlyphLine glyphLine, SequenceId sequenceId, IMetaInfo iMetaInfo) {
        return false;
    }

    public boolean applyOtfScript(TrueTypeFont trueTypeFont, GlyphLine glyphLine, Character.UnicodeScript unicodeScript, Object obj, SequenceId sequenceId, IMetaInfo iMetaInfo) {
        return false;
    }

    public byte[] getBidiLevels(BaseDirection baseDirection, int[] iArr, SequenceId sequenceId, IMetaInfo iMetaInfo) {
        return null;
    }

    public List<Integer> getPossibleBreaks(String str) {
        return null;
    }

    public Collection<Character.UnicodeScript> getSupportedScripts() {
        return null;
    }

    public Collection<Character.UnicodeScript> getSupportedScripts(Object obj) {
        return null;
    }

    public abstract boolean isPdfCalligraphInstance();

    public Map<String, byte[]> loadShippedFonts() throws IOException {
        return null;
    }

    public int[] reorderLine(List<LineRenderer.RendererGlyph> list, byte[] bArr, byte[] bArr2) {
        return null;
    }

    protected AbstractTypographyApplier() {
    }
}
