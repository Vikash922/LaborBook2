package com.itextpdf.layout.font;

import com.itextpdf.p017io.font.FontProgramDescriptor;
import com.itextpdf.styledxmlparser.css.CommonCssConstants;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public class FontSelector {
    private static final int EXPECTED_FONT_IS_BOLD_AWARD = 5;
    private static final int EXPECTED_FONT_IS_ITALIC_AWARD = 5;
    private static final int EXPECTED_FONT_IS_MONOSPACED_AWARD = 5;
    private static final int EXPECTED_FONT_IS_NOT_BOLD_AWARD = 3;
    private static final int EXPECTED_FONT_IS_NOT_ITALIC_AWARD = 3;
    private static final int EXPECTED_FONT_IS_NOT_MONOSPACED_AWARD = 1;
    private static final int EXPECTED_FONT_WEIGHT_IS_EQUALS_AWARD = 1;
    private static final int EXPECTED_FONT_WEIGHT_IS_FAR_AWARD = 1;
    private static final int FONT_FAMILY_EQUALS_AWARD = 13;
    protected List<FontInfo> fonts;

    public FontSelector(Collection<FontInfo> collection, List<String> list, FontCharacteristics fontCharacteristics) {
        ArrayList arrayList = new ArrayList(collection);
        this.fonts = arrayList;
        Collections.sort(arrayList, getComparator(list, fontCharacteristics));
    }

    public final FontInfo bestMatch() {
        return this.fonts.get(0);
    }

    public final Iterable<FontInfo> getFonts() {
        return this.fonts;
    }

    protected Comparator<FontInfo> getComparator(List<String> list, FontCharacteristics fontCharacteristics) {
        return new PdfFontComparator(list, fontCharacteristics);
    }

    private static class PdfFontComparator implements Comparator<FontInfo> {
        List<String> fontFamilies = new ArrayList();
        List<FontCharacteristics> fontStyles = new ArrayList();

        PdfFontComparator(List<String> list, FontCharacteristics fontCharacteristics) {
            if (list != null && list.size() > 0) {
                Iterator<String> it = list.iterator();
                while (it.hasNext()) {
                    String lowerCase = it.next().toLowerCase();
                    this.fontFamilies.add(lowerCase);
                    this.fontStyles.add(parseFontStyle(lowerCase, fontCharacteristics));
                }
                return;
            }
            this.fontStyles.add(fontCharacteristics);
        }

        @Override // java.util.Comparator
        public int compare(FontInfo fontInfo, FontInfo fontInfo2) {
            int iCharacteristicsSimilarity = 0;
            for (int i = 0; i < this.fontFamilies.size() && iCharacteristicsSimilarity == 0; i++) {
                FontCharacteristics fontCharacteristics = this.fontStyles.get(i);
                String str = this.fontFamilies.get(i);
                boolean z = true;
                if ("monospace".equalsIgnoreCase(str)) {
                    fontCharacteristics.setMonospaceFlag(true);
                }
                if (i != this.fontFamilies.size() - 1) {
                    z = false;
                }
                iCharacteristicsSimilarity = characteristicsSimilarity(str, fontCharacteristics, fontInfo2, z) - characteristicsSimilarity(str, fontCharacteristics, fontInfo, z);
            }
            return iCharacteristicsSimilarity;
        }

        private static FontCharacteristics parseFontStyle(String str, FontCharacteristics fontCharacteristics) {
            if (fontCharacteristics == null) {
                fontCharacteristics = new FontCharacteristics();
            }
            if (fontCharacteristics.isUndefined()) {
                if (str.contains("bold")) {
                    fontCharacteristics.setBoldFlag(true);
                }
                if (str.contains("italic") || str.contains(CommonCssConstants.OBLIQUE)) {
                    fontCharacteristics.setItalicFlag(true);
                }
            }
            return fontCharacteristics;
        }

        private static int characteristicsSimilarity(String str, FontCharacteristics fontCharacteristics, FontInfo fontInfo, boolean z) {
            int i;
            FontProgramDescriptor descriptor = fontInfo.getDescriptor();
            boolean z2 = false;
            boolean z3 = descriptor.isBold() || descriptor.getFontWeight() > 500;
            boolean z4 = descriptor.isItalic() || descriptor.getItalicAngle() < 0.0f;
            boolean zIsMonospace = descriptor.isMonospace();
            if (fontCharacteristics.isMonospace()) {
                i = zIsMonospace ? 5 : -5;
                z2 = true;
            } else {
                i = zIsMonospace ? -1 : 0;
            }
            if (!z2) {
                if (!"".equals(str) && ((fontInfo.getAlias() == null && descriptor.getFamilyNameLowerCase() != null && descriptor.getFamilyNameLowerCase().equals(str)) || (fontInfo.getAlias() != null && fontInfo.getAlias().toLowerCase().equals(str)))) {
                    i += 13;
                } else if (!z) {
                    return i;
                }
            }
            int iMax = Math.max(descriptor.getFontWeight(), (int) fontCharacteristics.getFontWeight());
            int iMin = Math.min(descriptor.getFontWeight(), (int) fontCharacteristics.getFontWeight());
            if (iMax == iMin) {
                i++;
            } else if (iMax - iMin >= 300) {
                i--;
            }
            if (fontCharacteristics.isBold()) {
                i = z3 ? i + 5 : i - 5;
            } else if (z3) {
                i -= 3;
            }
            return fontCharacteristics.isItalic() ? z4 ? i + 5 : i - 5 : z4 ? i - 3 : i;
        }
    }
}
