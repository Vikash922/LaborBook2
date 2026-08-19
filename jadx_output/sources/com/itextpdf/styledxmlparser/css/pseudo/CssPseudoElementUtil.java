package com.itextpdf.styledxmlparser.css.pseudo;

import com.itextpdf.styledxmlparser.node.IElementNode;

/* JADX INFO: loaded from: classes6.dex */
public class CssPseudoElementUtil {
    private static final String TAG_NAME_PREFIX = "pseudo-element::";

    public static String createPseudoElementTagName(String str) {
        return TAG_NAME_PREFIX + str;
    }

    public static boolean hasBeforeAfterElements(IElementNode iElementNode) {
        return (iElementNode == null || (iElementNode instanceof CssPseudoElementNode) || iElementNode.name().startsWith(TAG_NAME_PREFIX)) ? false : true;
    }
}
