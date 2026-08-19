package com.itextpdf.layout.renderer;

import com.itextpdf.commons.actions.contexts.IMetaInfo;
import com.itextpdf.commons.actions.sequence.SequenceId;
import com.itextpdf.layout.properties.BaseDirection;
import com.itextpdf.layout.renderer.LineRenderer;
import com.itextpdf.layout.renderer.typography.AbstractTypographyApplier;
import com.itextpdf.layout.renderer.typography.DefaultTypographyApplier;
import com.itextpdf.p017io.font.FontProgram;
import com.itextpdf.p017io.font.TrueTypeFont;
import com.itextpdf.p017io.font.otf.GlyphLine;
import java.io.IOException;
import java.lang.Character;
import java.lang.reflect.Method;
import java.util.Collection;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes6.dex */
public final class TypographyUtils {
    private static final String TYPOGRAPHY_APPLIER = "shaping.TypographyApplier";
    private static final String TYPOGRAPHY_APPLIER_INITIALIZE = "registerForLayout";
    private static final String TYPOGRAPHY_PACKAGE = "com.itextpdf.typography.";
    private static AbstractTypographyApplier applierInstance;

    static {
        Method method;
        try {
            Class<?> typographyClass = getTypographyClass("com.itextpdf.typography.shaping.TypographyApplier");
            if (typographyClass != null && (method = typographyClass.getMethod(TYPOGRAPHY_APPLIER_INITIALIZE, new Class[0])) != null) {
                method.invoke(null, new Object[0]);
            }
        } catch (Exception unused) {
        }
        if (applierInstance == null) {
            setTypographyApplierInstance(new DefaultTypographyApplier());
        }
    }

    private TypographyUtils() {
    }

    public static void setTypographyApplierInstance(AbstractTypographyApplier abstractTypographyApplier) {
        applierInstance = abstractTypographyApplier;
    }

    public static boolean isPdfCalligraphAvailable() {
        return applierInstance.isPdfCalligraphInstance();
    }

    public static Collection<Character.UnicodeScript> getSupportedScripts() {
        return applierInstance.getSupportedScripts();
    }

    public static Collection<Character.UnicodeScript> getSupportedScripts(Object obj) {
        return applierInstance.getSupportedScripts(obj);
    }

    public static Map<String, byte[]> loadShippedFonts() throws IOException {
        return applierInstance.loadShippedFonts();
    }

    static void applyOtfScript(FontProgram fontProgram, GlyphLine glyphLine, Character.UnicodeScript unicodeScript, Object obj, SequenceId sequenceId, IMetaInfo iMetaInfo) {
        applierInstance.applyOtfScript((TrueTypeFont) fontProgram, glyphLine, unicodeScript, obj, sequenceId, iMetaInfo);
    }

    static void applyKerning(FontProgram fontProgram, GlyphLine glyphLine, SequenceId sequenceId, IMetaInfo iMetaInfo) {
        applierInstance.applyKerning(fontProgram, glyphLine, sequenceId, iMetaInfo);
    }

    static byte[] getBidiLevels(BaseDirection baseDirection, int[] iArr, SequenceId sequenceId, IMetaInfo iMetaInfo) {
        return applierInstance.getBidiLevels(baseDirection, iArr, sequenceId, iMetaInfo);
    }

    static int[] reorderLine(List<LineRenderer.RendererGlyph> list, byte[] bArr, byte[] bArr2) {
        return applierInstance.reorderLine(list, bArr, bArr2);
    }

    static List<Integer> getPossibleBreaks(String str) {
        return applierInstance.getPossibleBreaks(str);
    }

    private static Class<?> getTypographyClass(String str) throws ClassNotFoundException {
        return Class.forName(str);
    }
}
