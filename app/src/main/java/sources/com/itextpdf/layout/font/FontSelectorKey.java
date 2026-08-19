package com.itextpdf.layout.font;

import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
final class FontSelectorKey {

    /* JADX INFO: renamed from: fc */
    private FontCharacteristics f3205fc;
    private List<String> fontFamilies;

    FontSelectorKey(List<String> list, FontCharacteristics fontCharacteristics) {
        this.fontFamilies = new ArrayList(list);
        this.f3205fc = fontCharacteristics;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        FontSelectorKey fontSelectorKey = (FontSelectorKey) obj;
        if (this.fontFamilies.equals(fontSelectorKey.fontFamilies)) {
            FontCharacteristics fontCharacteristics = this.f3205fc;
            if (fontCharacteristics != null) {
                if (fontCharacteristics.equals(fontSelectorKey.f3205fc)) {
                    return true;
                }
            } else if (fontSelectorKey.f3205fc == null) {
                return true;
            }
        }
        return false;
    }

    public int hashCode() {
        List<String> list = this.fontFamilies;
        int iHashCode = (list != null ? list.hashCode() : 0) * 31;
        FontCharacteristics fontCharacteristics = this.f3205fc;
        return iHashCode + (fontCharacteristics != null ? fontCharacteristics.hashCode() : 0);
    }
}
