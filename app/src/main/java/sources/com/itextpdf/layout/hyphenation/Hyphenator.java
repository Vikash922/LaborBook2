package com.itextpdf.layout.hyphenation;

import com.itextpdf.p017io.util.ResourceUtil;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.objectweb.asm.Opcodes;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

/* JADX INFO: loaded from: classes6.dex */
public final class Hyphenator {
    private static final char SOFT_HYPHEN = 173;
    private static List<String> additionalHyphenationFileDirectories;
    private static HyphenationTreeCache hTreeCache;
    protected String country;
    Map<String, String> hyphPathNames;
    protected String lang;
    int leftMin;
    int rightMin;
    private static final Object staticLock = new Object();
    private static Logger log = LoggerFactory.getLogger((Class<?>) Hyphenator.class);

    public Hyphenator(String str, String str2, int i, int i2) {
        this.lang = str;
        this.country = str2;
        this.leftMin = i;
        this.rightMin = i2;
    }

    public Hyphenator(String str, String str2, int i, int i2, Map<String, String> map) {
        this(str, str2, i, i2);
        this.hyphPathNames = map;
    }

    public static void registerAdditionalHyphenationFileDirectory(String str) {
        synchronized (staticLock) {
            if (additionalHyphenationFileDirectories == null) {
                additionalHyphenationFileDirectories = new ArrayList();
            }
            additionalHyphenationFileDirectories.add(str);
        }
    }

    public static HyphenationTreeCache getHyphenationTreeCache() {
        synchronized (staticLock) {
            if (hTreeCache == null) {
                hTreeCache = new HyphenationTreeCache();
            }
        }
        return hTreeCache;
    }

    public static void clearHyphenationTreeCache() {
        synchronized (staticLock) {
            hTreeCache = new HyphenationTreeCache();
        }
    }

    public static HyphenationTree getHyphenationTree(String str, String str2, Map<String, String> map) {
        String strConstructLlccKey = HyphenationTreeCache.constructLlccKey(str, str2);
        HyphenationTreeCache hyphenationTreeCache = getHyphenationTreeCache();
        if (hyphenationTreeCache.isMissing(strConstructLlccKey)) {
            return null;
        }
        HyphenationTree hyphenationTree2 = getHyphenationTree2(str, str2, map);
        if (hyphenationTree2 == null && str2 != null && !str2.equals("none")) {
            String strConstructLlccKey2 = HyphenationTreeCache.constructLlccKey(str, null);
            if (!hyphenationTreeCache.isMissing(strConstructLlccKey2)) {
                hyphenationTree2 = getHyphenationTree2(str, null, map);
                if (hyphenationTree2 != null && log.isDebugEnabled()) {
                    log.debug("Couldn't find hyphenation pattern for lang=\"" + str + "\",country=\"" + str2 + "\". Using general language pattern for lang=\"" + str + "\" instead.");
                }
                if (hyphenationTree2 == null) {
                    hyphenationTreeCache.noteMissing(strConstructLlccKey2);
                } else {
                    hyphenationTreeCache.cache(strConstructLlccKey, hyphenationTree2);
                }
            }
        }
        if (hyphenationTree2 == null) {
            hyphenationTreeCache.noteMissing(strConstructLlccKey);
            log.error("Couldn't find hyphenation pattern for lang=\"" + str + "\"" + ((str2 == null || str2.equals("none")) ? "" : ",country=\"" + str2 + "\"") + ".");
        }
        return hyphenationTree2;
    }

    public static HyphenationTree getHyphenationTree2(String str, String str2, Map<String, String> map) {
        InputStream resourceStream;
        String strConstructLlccKey = HyphenationTreeCache.constructLlccKey(str, str2);
        HyphenationTreeCache hyphenationTreeCache = getHyphenationTreeCache();
        HyphenationTree hyphenationTree = getHyphenationTreeCache().getHyphenationTree(str, str2);
        if (hyphenationTree != null) {
            return hyphenationTree;
        }
        String strConstructUserKey = HyphenationTreeCache.constructUserKey(str, str2, map);
        if (strConstructUserKey == null) {
            strConstructUserKey = strConstructLlccKey;
        }
        List<String> list = additionalHyphenationFileDirectories;
        if (list != null) {
            Iterator<String> it = list.iterator();
            while (it.hasNext() && (hyphenationTree = getHyphenationTree(it.next(), strConstructUserKey)) == null) {
            }
        }
        if (hyphenationTree == null && (resourceStream = ResourceUtil.getResourceStream(HyphenationConstants.HYPHENATION_DEFAULT_RESOURCE + strConstructUserKey + ".xml")) != null) {
            hyphenationTree = getHyphenationTree(resourceStream, strConstructUserKey);
        }
        if (hyphenationTree != null) {
            hyphenationTreeCache.cache(strConstructLlccKey, hyphenationTree);
        }
        return hyphenationTree;
    }

    public static HyphenationTree getHyphenationTree(String str, String str2) {
        String str3 = str2 + ".xml";
        try {
            return getHyphenationTree(new FileInputStream(str + File.separator + str3), str3);
        } catch (IOException e) {
            if (!log.isDebugEnabled()) {
                return null;
            }
            log.debug("I/O problem while trying to load " + str3 + ": " + e.getMessage());
            return null;
        }
    }

    public static HyphenationTree getHyphenationTree(InputStream inputStream, String str) {
        try {
            if (inputStream == null) {
                return null;
            }
            try {
                HyphenationTree hyphenationTree = new HyphenationTree();
                hyphenationTree.loadPatterns(inputStream, str);
                return hyphenationTree;
            } catch (HyphenationException e) {
                log.error("Can't load user patterns from XML file " + str + ": " + e.getMessage());
                try {
                    inputStream.close();
                } catch (Exception unused) {
                }
                return null;
            }
        } finally {
            try {
                inputStream.close();
            } catch (Exception unused2) {
            }
        }
    }

    public static Hyphenation hyphenate(String str, String str2, Map<String, String> map, String str3, int i, int i2) {
        if (wordContainsSoftHyphens(str3)) {
            return hyphenateBasedOnSoftHyphens(str3, i, i2);
        }
        HyphenationTree hyphenationTree = str != null ? getHyphenationTree(str, str2, map) : null;
        if (hyphenationTree != null) {
            return hyphenationTree.hyphenate(str3, i, i2);
        }
        return null;
    }

    public static Hyphenation hyphenate(String str, String str2, String str3, int i, int i2) {
        return hyphenate(str, str2, null, str3, i, i2);
    }

    public Hyphenation hyphenate(String str) {
        return hyphenate(this.lang, this.country, this.hyphPathNames, str, this.leftMin, this.rightMin);
    }

    private static boolean wordContainsSoftHyphens(String str) {
        return str.indexOf(Opcodes.LRETURN) >= 0;
    }

    private static Hyphenation hyphenateBasedOnSoftHyphens(String str, int i, int i2) {
        ArrayList arrayList = new ArrayList();
        int iIndexOf = -1;
        while (true) {
            iIndexOf = str.indexOf(Opcodes.LRETURN, iIndexOf + 1);
            if (iIndexOf <= 0) {
                break;
            }
            arrayList.add(Integer.valueOf(iIndexOf));
        }
        int size = arrayList.size() - 1;
        int i3 = 0;
        while (i3 < arrayList.size() && str.substring(0, ((Integer) arrayList.get(i3)).intValue()).replace(String.valueOf(SOFT_HYPHEN), "").length() < i) {
            i3++;
        }
        while (size >= 0 && str.substring(((Integer) arrayList.get(size)).intValue() + 1).replace(String.valueOf(SOFT_HYPHEN), "").length() < i2) {
            size--;
        }
        if (i3 > size) {
            return null;
        }
        int[] iArr = new int[(size - i3) + 1];
        for (int i4 = i3; i4 <= size; i4++) {
            iArr[i4 - i3] = ((Integer) arrayList.get(i4)).intValue();
        }
        return new Hyphenation(str, iArr);
    }
}
