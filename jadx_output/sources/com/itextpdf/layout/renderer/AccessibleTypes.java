package com.itextpdf.layout.renderer;

import com.itextpdf.kernel.pdf.tagging.StandardNamespaces;
import com.itextpdf.kernel.pdf.tagging.StandardRoles;
import java.util.HashSet;
import java.util.Set;

/* JADX INFO: loaded from: classes6.dex */
class AccessibleTypes {
    static int BlockLevel = 2;
    static int Grouping = 1;
    static int Illustration = 4;
    static int InlineLevel = 3;
    static int Unknown;
    static Set<String> groupingRoles = new HashSet();
    static Set<String> blockLevelRoles = new HashSet();
    static Set<String> inlineLevelRoles = new HashSet();
    static Set<String> illustrationRoles = new HashSet();

    AccessibleTypes() {
    }

    static {
        groupingRoles.add(StandardRoles.PART);
        groupingRoles.add(StandardRoles.ART);
        groupingRoles.add(StandardRoles.SECT);
        groupingRoles.add(StandardRoles.DIV);
        groupingRoles.add(StandardRoles.BLOCKQUOTE);
        groupingRoles.add(StandardRoles.CAPTION);
        groupingRoles.add(StandardRoles.TOC);
        groupingRoles.add(StandardRoles.TOCI);
        groupingRoles.add(StandardRoles.INDEX);
        groupingRoles.add(StandardRoles.NONSTRUCT);
        groupingRoles.add(StandardRoles.PRIVATE);
        groupingRoles.add(StandardRoles.ASIDE);
        blockLevelRoles.add("P");
        blockLevelRoles.add("H");
        blockLevelRoles.add(StandardRoles.f3186H1);
        blockLevelRoles.add(StandardRoles.f3187H2);
        blockLevelRoles.add(StandardRoles.f3188H3);
        blockLevelRoles.add(StandardRoles.f3189H4);
        blockLevelRoles.add(StandardRoles.f3190H5);
        blockLevelRoles.add(StandardRoles.f3191H6);
        blockLevelRoles.add("L");
        blockLevelRoles.add(StandardRoles.LBL);
        blockLevelRoles.add(StandardRoles.f3193LI);
        blockLevelRoles.add(StandardRoles.LBODY);
        blockLevelRoles.add(StandardRoles.TABLE);
        blockLevelRoles.add(StandardRoles.f3200TR);
        blockLevelRoles.add(StandardRoles.f3199TH);
        blockLevelRoles.add(StandardRoles.f3198TD);
        blockLevelRoles.add(StandardRoles.TITLE);
        blockLevelRoles.add(StandardRoles.FENOTE);
        blockLevelRoles.add(StandardRoles.SUB);
        blockLevelRoles.add(StandardRoles.CAPTION);
        inlineLevelRoles.add(StandardRoles.SPAN);
        inlineLevelRoles.add(StandardRoles.QUOTE);
        inlineLevelRoles.add(StandardRoles.NOTE);
        inlineLevelRoles.add(StandardRoles.REFERENCE);
        inlineLevelRoles.add(StandardRoles.BIBENTRY);
        inlineLevelRoles.add(StandardRoles.CODE);
        inlineLevelRoles.add("Link");
        inlineLevelRoles.add(StandardRoles.ANNOT);
        inlineLevelRoles.add(StandardRoles.RUBY);
        inlineLevelRoles.add(StandardRoles.WARICHU);
        inlineLevelRoles.add(StandardRoles.f3195RB);
        inlineLevelRoles.add(StandardRoles.f3197RT);
        inlineLevelRoles.add(StandardRoles.f3196RP);
        inlineLevelRoles.add(StandardRoles.f3202WT);
        inlineLevelRoles.add(StandardRoles.f3201WP);
        inlineLevelRoles.add(StandardRoles.f3184EM);
        inlineLevelRoles.add(StandardRoles.STRONG);
        illustrationRoles.add(StandardRoles.FIGURE);
        illustrationRoles.add(StandardRoles.FORMULA);
        illustrationRoles.add(StandardRoles.FORM);
    }

    static int identifyType(String str) {
        if (groupingRoles.contains(str)) {
            return Grouping;
        }
        if (blockLevelRoles.contains(str) || StandardNamespaces.isHnRole(str)) {
            return BlockLevel;
        }
        if (inlineLevelRoles.contains(str)) {
            return InlineLevel;
        }
        if (illustrationRoles.contains(str)) {
            return Illustration;
        }
        return Unknown;
    }
}
