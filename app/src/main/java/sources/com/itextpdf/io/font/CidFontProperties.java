package com.itextpdf.io.font;

import androidx.exifinterface.media.ExifInterface;
import com.itextpdf.io.font.constants.FontResources;
import com.itextpdf.io.util.IntHashtable;
import com.itextpdf.io.util.ResourceUtil;
import java.io.IOException;
import java.io.InputStream;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Properties;
import java.util.Set;
import java.util.StringTokenizer;
import org.shadow.apache.commons.lang3.StringUtils;

/* JADX INFO: loaded from: classes6.dex */
public class CidFontProperties {
    private static final Map<String, Map<String, Object>> allFonts = new HashMap();
    private static final Map<String, Set<String>> registryNames;

    static {
        HashMap map = new HashMap();
        registryNames = map;
        try {
            loadRegistry();
            for (String str : (Set) map.get("fonts")) {
                allFonts.put(str, readFontProperties(str));
            }
        } catch (Exception unused) {
        }
    }

    public static boolean isCidFont(String str, String str2) {
        Map<String, Set<String>> map = registryNames;
        if (!map.containsKey("fonts") || !map.get("fonts").contains(str)) {
            return false;
        }
        if (str2.equals(PdfEncodings.IDENTITY_H) || str2.equals(PdfEncodings.IDENTITY_V)) {
            return true;
        }
        Set<String> set = map.get((String) allFonts.get(str).get("Registry"));
        return set != null && set.contains(str2);
    }

    public static String getCompatibleFont(String str) {
        for (Map.Entry<String, Set<String>> entry : registryNames.entrySet()) {
            if (entry.getValue().contains(str)) {
                String key = entry.getKey();
                for (Map.Entry<String, Map<String, Object>> entry2 : allFonts.entrySet()) {
                    if (key.equals(entry2.getValue().get("Registry"))) {
                        return entry2.getKey();
                    }
                }
            }
        }
        return null;
    }

    public static Map<String, Map<String, Object>> getAllFonts() {
        return allFonts;
    }

    public static Map<String, Set<String>> getRegistryNames() {
        return registryNames;
    }

    private static void loadRegistry() throws IOException {
        InputStream resourceStream = ResourceUtil.getResourceStream("com/itextpdf/io/font/cmap/cjk_registry.properties");
        Properties properties = new Properties();
        properties.load(resourceStream);
        resourceStream.close();
        for (String str : properties.keySet()) {
            String[] strArrSplit = properties.getProperty(str).split(StringUtils.SPACE);
            HashSet hashSet = new HashSet();
            for (String str2 : strArrSplit) {
                if (str2.length() > 0) {
                    hashSet.add(str2);
                }
            }
            registryNames.put(str, hashSet);
        }
    }

    private static Map<String, Object> readFontProperties(String str) throws IOException {
        InputStream resourceStream = ResourceUtil.getResourceStream(FontResources.CMAPS + (str + ".properties"));
        Properties properties = new Properties();
        properties.load(resourceStream);
        resourceStream.close();
        IntHashtable intHashtableCreateMetric = createMetric(properties.getProperty(ExifInterface.LONGITUDE_WEST));
        properties.remove(ExifInterface.LONGITUDE_WEST);
        IntHashtable intHashtableCreateMetric2 = createMetric(properties.getProperty("W2"));
        properties.remove("W2");
        HashMap map = new HashMap();
        for (String str2 : properties.keySet()) {
            map.put(str2, properties.getProperty(str2));
        }
        map.put(ExifInterface.LONGITUDE_WEST, intHashtableCreateMetric);
        map.put("W2", intHashtableCreateMetric2);
        return map;
    }

    private static IntHashtable createMetric(String str) {
        IntHashtable intHashtable = new IntHashtable();
        StringTokenizer stringTokenizer = new StringTokenizer(str);
        while (stringTokenizer.hasMoreTokens()) {
            intHashtable.put(Integer.parseInt(stringTokenizer.nextToken()), Integer.parseInt(stringTokenizer.nextToken()));
        }
        return intHashtable;
    }
}
