package com.itextpdf.layout.hyphenation;

import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;
import org.objectweb.asm.signature.SignatureVisitor;

/* JADX INFO: loaded from: classes6.dex */
public class HyphenationTreeCache {
    private Map<String, HyphenationTree> hyphenTrees = new HashMap();
    private Set<String> missingHyphenationTrees;

    public HyphenationTree getHyphenationTree(String str, String str2) {
        String strConstructLlccKey = constructLlccKey(str, str2);
        if (strConstructLlccKey == null) {
            return null;
        }
        if (this.hyphenTrees.containsKey(strConstructLlccKey)) {
            return this.hyphenTrees.get(strConstructLlccKey);
        }
        if (this.hyphenTrees.containsKey(str)) {
            return this.hyphenTrees.get(str);
        }
        return null;
    }

    public static String constructLlccKey(String str, String str2) {
        return (str2 == null || str2.equals("none")) ? str : str + "_" + str2;
    }

    public static String constructUserKey(String str, String str2, Map<String, String> map) {
        if (map != null) {
            return map.get(constructLlccKey(str, str2).replace('_', SignatureVisitor.SUPER));
        }
        return null;
    }

    public void cache(String str, HyphenationTree hyphenationTree) {
        this.hyphenTrees.put(str, hyphenationTree);
    }

    public void noteMissing(String str) {
        if (this.missingHyphenationTrees == null) {
            this.missingHyphenationTrees = new HashSet();
        }
        this.missingHyphenationTrees.add(str);
    }

    public boolean isMissing(String str) {
        Set<String> set = this.missingHyphenationTrees;
        return set != null && set.contains(str);
    }
}
