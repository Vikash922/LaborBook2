package com.itextpdf.layout.font;

import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes6.dex */
class FontSelectorCache {
    static final /* synthetic */ boolean $assertionsDisabled = false;
    private final Map<Long, FontSetSelectors> caches = new HashMap();
    private final FontSet defaultFontSet;
    private final FontSetSelectors defaultSelectors;

    FontSelectorCache(FontSet fontSet) {
        FontSetSelectors fontSetSelectors = new FontSetSelectors();
        this.defaultSelectors = fontSetSelectors;
        fontSetSelectors.update(fontSet);
        this.defaultFontSet = fontSet;
    }

    FontSelector get(FontSelectorKey fontSelectorKey) {
        if (update(null, null)) {
            return null;
        }
        return this.defaultSelectors.map.get(fontSelectorKey);
    }

    FontSelector get(FontSelectorKey fontSelectorKey, FontSet fontSet) {
        if (fontSet == null) {
            return get(fontSelectorKey);
        }
        FontSetSelectors fontSetSelectors = this.caches.get(Long.valueOf(fontSet.getId()));
        if (fontSetSelectors == null) {
            Map<Long, FontSetSelectors> map = this.caches;
            Long lValueOf = Long.valueOf(fontSet.getId());
            FontSetSelectors fontSetSelectors2 = new FontSetSelectors();
            map.put(lValueOf, fontSetSelectors2);
            fontSetSelectors = fontSetSelectors2;
        }
        if (update(fontSetSelectors, fontSet)) {
            return null;
        }
        return fontSetSelectors.map.get(fontSelectorKey);
    }

    void put(FontSelectorKey fontSelectorKey, FontSelector fontSelector) {
        update(null, null);
        this.defaultSelectors.map.put(fontSelectorKey, fontSelector);
    }

    void put(FontSelectorKey fontSelectorKey, FontSelector fontSelector, FontSet fontSet) {
        if (fontSet == null) {
            put(fontSelectorKey, fontSelector);
            return;
        }
        FontSetSelectors fontSetSelectors = this.caches.get(Long.valueOf(fontSet.getId()));
        if (fontSetSelectors == null) {
            Map<Long, FontSetSelectors> map = this.caches;
            Long lValueOf = Long.valueOf(fontSet.getId());
            FontSetSelectors fontSetSelectors2 = new FontSetSelectors();
            map.put(lValueOf, fontSetSelectors2);
            fontSetSelectors = fontSetSelectors2;
        }
        update(fontSetSelectors, fontSet);
        fontSetSelectors.map.put(fontSelectorKey, fontSelector);
    }

    private boolean update(FontSetSelectors fontSetSelectors, FontSet fontSet) {
        boolean zUpdate = this.defaultSelectors.update(this.defaultFontSet);
        if (fontSetSelectors == null || !fontSetSelectors.update(fontSet)) {
            return zUpdate;
        }
        return true;
    }

    private static class FontSetSelectors {
        static final /* synthetic */ boolean $assertionsDisabled = false;
        private int fontSetSize;
        final Map<FontSelectorKey, FontSelector> map;

        private FontSetSelectors() {
            this.map = new HashMap();
            this.fontSetSize = -1;
        }

        boolean update(FontSet fontSet) {
            if (this.fontSetSize == fontSet.size()) {
                return false;
            }
            this.map.clear();
            this.fontSetSize = fontSet.size();
            return true;
        }
    }
}
