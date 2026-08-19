package com.itextpdf.io.font;

import com.itextpdf.io.font.cmap.AbstractCMap;
import com.itextpdf.io.font.cmap.CMapByteCid;
import com.itextpdf.io.font.cmap.CMapCidByte;
import com.itextpdf.io.font.cmap.CMapCidUni;
import com.itextpdf.io.font.cmap.CMapLocationResource;
import com.itextpdf.io.font.cmap.CMapParser;
import com.itextpdf.io.font.cmap.CMapUniCid;
import com.itextpdf.io.font.constants.FontResources;
import com.itextpdf.io.util.IntHashtable;
import com.itextpdf.io.util.ResourceUtil;
import java.io.IOException;
import java.io.InputStream;
import java.util.HashMap;
import java.util.HashSet;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Properties;
import java.util.Set;
import java.util.StringTokenizer;
import java.util.concurrent.ConcurrentHashMap;
import org.shadow.apache.commons.lang3.StringUtils;

/* JADX INFO: loaded from: classes6.dex */
public class FontCache {
    private static final String CJK_REGISTRY_FILENAME = "cjk_registry.properties";
    private static final String FONTS_PROP = "fonts";
    private static final String REGISTRY_PROP = "Registry";
    private static final String W2_PROP = "W2";
    private static final String W_PROP = "W";
    private static final Map<String, Map<String, Object>> allCidFonts = new LinkedHashMap();
    private static Map<FontCacheKey, FontProgram> fontCache;
    private static final Map<String, Set<String>> registryNames;

    static {
        HashMap map = new HashMap();
        registryNames = map;
        fontCache = new ConcurrentHashMap();
        try {
            loadRegistry();
            for (String str : (Set) map.get(FONTS_PROP)) {
                allCidFonts.put(str, readFontProperties(str));
            }
        } catch (Exception unused) {
        }
    }

    protected static boolean isPredefinedCidFont(String str) {
        Map<String, Set<String>> map = registryNames;
        return map.containsKey(FONTS_PROP) && map.get(FONTS_PROP).contains(str);
    }

    public static String getCompatibleCidFont(String str) {
        for (Map.Entry<String, Set<String>> entry : registryNames.entrySet()) {
            if (entry.getValue().contains(str)) {
                String key = entry.getKey();
                for (Map.Entry<String, Map<String, Object>> entry2 : allCidFonts.entrySet()) {
                    if (key.equals(entry2.getValue().get(REGISTRY_PROP))) {
                        return entry2.getKey();
                    }
                }
            }
        }
        return null;
    }

    public static Set<String> getCompatibleCmaps(String str) {
        Map<String, Object> map = getAllPredefinedCidFonts().get(str);
        if (map == null) {
            return null;
        }
        return registryNames.get((String) map.get(REGISTRY_PROP));
    }

    public static Map<String, Map<String, Object>> getAllPredefinedCidFonts() {
        return allCidFonts;
    }

    public static Map<String, Set<String>> getRegistryNames() {
        return registryNames;
    }

    public static CMapCidUni getCid2UniCmap(String str) {
        return (CMapCidUni) parseCmap(str, new CMapCidUni());
    }

    public static CMapUniCid getUni2CidCmap(String str) {
        return (CMapUniCid) parseCmap(str, new CMapUniCid());
    }

    public static CMapByteCid getByte2CidCmap(String str) {
        return (CMapByteCid) parseCmap(str, new CMapByteCid());
    }

    public static CMapCidByte getCid2Byte(String str) {
        return (CMapCidByte) parseCmap(str, new CMapCidByte());
    }

    public static void clearSavedFonts() {
        fontCache.clear();
    }

    public static FontProgram getFont(String str) {
        return fontCache.get(FontCacheKey.create(str));
    }

    static FontProgram getFont(FontCacheKey fontCacheKey) {
        return fontCache.get(fontCacheKey);
    }

    public static FontProgram saveFont(FontProgram fontProgram, String str) {
        return saveFont(fontProgram, FontCacheKey.create(str));
    }

    static FontProgram saveFont(FontProgram fontProgram, FontCacheKey fontCacheKey) {
        FontProgram fontProgram2 = fontCache.get(fontCacheKey);
        if (fontProgram2 != null) {
            return fontProgram2;
        }
        fontCache.put(fontCacheKey, fontProgram);
        return fontProgram;
    }

    private static void loadRegistry() throws IOException {
        InputStream resourceStream = ResourceUtil.getResourceStream("com/itextpdf/io/font/cmap/cjk_registry.properties");
        try {
            Properties properties = new Properties();
            properties.load(resourceStream);
            for (Map.Entry entry : properties.entrySet()) {
                String[] strArrSplit = ((String) entry.getValue()).split(StringUtils.SPACE);
                HashSet hashSet = new HashSet();
                for (String str : strArrSplit) {
                    if (str.length() != 0) {
                        hashSet.add(str);
                    }
                }
                registryNames.put((String) entry.getKey(), hashSet);
            }
        } finally {
            if (resourceStream != null) {
                resourceStream.close();
            }
        }
    }

    private static Map<String, Object> readFontProperties(String str) throws IOException {
        InputStream resourceStream = ResourceUtil.getResourceStream(FontResources.CMAPS + str + ".properties");
        try {
            Properties properties = new Properties();
            properties.load(resourceStream);
            HashMap map = new HashMap();
            for (Map.Entry entry : properties.entrySet()) {
                map.put((String) entry.getKey(), entry.getValue());
            }
            map.put("W", createMetric((String) map.get("W")));
            map.put(W2_PROP, createMetric((String) map.get(W2_PROP)));
            return map;
        } finally {
            if (resourceStream != null) {
                resourceStream.close();
            }
        }
    }

    private static IntHashtable createMetric(String str) {
        IntHashtable intHashtable = new IntHashtable();
        StringTokenizer stringTokenizer = new StringTokenizer(str);
        while (stringTokenizer.hasMoreTokens()) {
            intHashtable.put(Integer.parseInt(stringTokenizer.nextToken()), Integer.parseInt(stringTokenizer.nextToken()));
        }
        return intHashtable;
    }

    private static <T extends AbstractCMap> T parseCmap(String str, T t) {
        try {
            CMapParser.parseCid(str, t, new CMapLocationResource());
            return t;
        } catch (IOException e) {
            throw new com.itextpdf.io.exceptions.IOException("I/O exception.", (Throwable) e);
        }
    }
}
