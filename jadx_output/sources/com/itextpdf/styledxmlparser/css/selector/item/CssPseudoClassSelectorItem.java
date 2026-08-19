package com.itextpdf.styledxmlparser.css.selector.item;

import com.google.common.base.Ascii;
import com.itextpdf.styledxmlparser.css.CommonCssConstants;
import com.itextpdf.styledxmlparser.css.selector.CssSelector;
import com.itextpdf.styledxmlparser.node.INode;

/* JADX INFO: loaded from: classes6.dex */
public abstract class CssPseudoClassSelectorItem implements ICssSelectorItem {
    protected String arguments;
    private String pseudoClass;

    @Override // com.itextpdf.styledxmlparser.css.selector.item.ICssSelectorItem
    public int getSpecificity() {
        return 1024;
    }

    @Override // com.itextpdf.styledxmlparser.css.selector.item.ICssSelectorItem
    public boolean matches(INode iNode) {
        return false;
    }

    protected CssPseudoClassSelectorItem(String str) {
        this(str, "");
    }

    protected CssPseudoClassSelectorItem(String str, String str2) {
        this.pseudoClass = str;
        this.arguments = str2;
    }

    public static CssPseudoClassSelectorItem create(String str) {
        String strTrim;
        int iIndexOf = str.indexOf(40);
        if (iIndexOf == -1) {
            strTrim = "";
        } else {
            String strSubstring = str.substring(0, iIndexOf);
            strTrim = str.substring(iIndexOf + 1, str.length() - 1).trim();
            str = strSubstring;
        }
        return create(str, strTrim);
    }

    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    public static CssPseudoClassSelectorItem create(String str, String str2) {
        str.hashCode();
        byte b = -1;
        switch (str.hashCode()) {
            case -2136991809:
                if (str.equals(CommonCssConstants.FIRST_CHILD)) {
                    b = 0;
                }
                break;
            case -1754914063:
                if (str.equals(CommonCssConstants.NTH_CHILD)) {
                    b = 1;
                }
                break;
            case -1422950650:
                if (str.equals("active")) {
                    b = 2;
                }
                break;
            case -897532411:
                if (str.equals(CommonCssConstants.NTH_OF_TYPE)) {
                    b = 3;
                }
                break;
            case -880905839:
                if (str.equals("target")) {
                    b = 4;
                }
                break;
            case 109267:
                if (str.equals("not")) {
                    b = 5;
                }
                break;
            case 3321850:
                if (str.equals("link")) {
                    b = 6;
                }
                break;
            case 3506402:
                if (str.equals(CommonCssConstants.ROOT)) {
                    b = 7;
                }
                break;
            case 96634189:
                if (str.equals(CommonCssConstants.EMPTY)) {
                    b = 8;
                }
                break;
            case 97604824:
                if (str.equals(CommonCssConstants.FOCUS)) {
                    b = 9;
                }
                break;
            case 99469628:
                if (str.equals(CommonCssConstants.HOVER)) {
                    b = 10;
                }
                break;
            case 270940796:
                if (str.equals("disabled")) {
                    b = Ascii.f397VT;
                }
                break;
            case 466760490:
                if (str.equals(CommonCssConstants.VISITED)) {
                    b = Ascii.f386FF;
                }
                break;
            case 835834661:
                if (str.equals(CommonCssConstants.LAST_CHILD)) {
                    b = Ascii.f384CR;
                }
                break;
            case 1292941139:
                if (str.equals(CommonCssConstants.FIRST_OF_TYPE)) {
                    b = Ascii.f394SO;
                }
                break;
            case 2025926969:
                if (str.equals(CommonCssConstants.LAST_OF_TYPE)) {
                    b = Ascii.f393SI;
                }
                break;
        }
        switch (b) {
            case 0:
                return CssPseudoClassFirstChildSelectorItem.getInstance();
            case 1:
                return new CssPseudoClassNthChildSelectorItem(str2);
            case 2:
            case 4:
            case 9:
            case 10:
            case 12:
                return new AlwaysNotApplySelectorItem(str, str2);
            case 3:
                return new CssPseudoClassNthOfTypeSelectorItem(str2);
            case 5:
                CssSelector cssSelector = new CssSelector(str2);
                for (ICssSelectorItem iCssSelectorItem : cssSelector.getSelectorItems()) {
                    if ((iCssSelectorItem instanceof CssPseudoClassNotSelectorItem) || (iCssSelectorItem instanceof CssPseudoElementSelectorItem)) {
                        return null;
                    }
                }
                return new CssPseudoClassNotSelectorItem(cssSelector);
            case 6:
                return new AlwaysApplySelectorItem(str, str2);
            case 7:
                return CssPseudoClassRootSelectorItem.getInstance();
            case 8:
                return CssPseudoClassEmptySelectorItem.getInstance();
            case 11:
                return CssPseudoClassDisabledSelectorItem.getInstance();
            case 13:
                return CssPseudoClassLastChildSelectorItem.getInstance();
            case 14:
                return CssPseudoClassFirstOfTypeSelectorItem.getInstance();
            case 15:
                return CssPseudoClassLastOfTypeSelectorItem.getInstance();
            default:
                return null;
        }
    }

    public String toString() {
        return ":" + this.pseudoClass + (!this.arguments.isEmpty() ? "(" + this.arguments + ")" : "");
    }

    public String getPseudoClass() {
        return this.pseudoClass;
    }

    private static class AlwaysApplySelectorItem extends CssPseudoClassSelectorItem {
        @Override // com.itextpdf.styledxmlparser.css.selector.item.CssPseudoClassSelectorItem, com.itextpdf.styledxmlparser.css.selector.item.ICssSelectorItem
        public boolean matches(INode iNode) {
            return true;
        }

        AlwaysApplySelectorItem(String str, String str2) {
            super(str, str2);
        }
    }

    private static class AlwaysNotApplySelectorItem extends CssPseudoClassSelectorItem {
        @Override // com.itextpdf.styledxmlparser.css.selector.item.CssPseudoClassSelectorItem, com.itextpdf.styledxmlparser.css.selector.item.ICssSelectorItem
        public boolean matches(INode iNode) {
            return false;
        }

        AlwaysNotApplySelectorItem(String str, String str2) {
            super(str, str2);
        }
    }
}
