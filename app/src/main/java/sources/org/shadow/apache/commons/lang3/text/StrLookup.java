package org.shadow.apache.commons.lang3.text;

import java.util.Enumeration;
import java.util.Map;
import java.util.Properties;

/* JADX INFO: loaded from: classes4.dex */
public abstract class StrLookup<V> {
    private static final StrLookup<String> NONE_LOOKUP = new MapStrLookup(null);

    public abstract String lookup(String str);

    public static StrLookup<?> noneLookup() {
        return NONE_LOOKUP;
    }

    private static Properties copyProperties(Properties properties) {
        if (properties == null) {
            return null;
        }
        Properties properties2 = new Properties();
        Enumeration<?> enumerationPropertyNames = properties.propertyNames();
        while (enumerationPropertyNames.hasMoreElements()) {
            String str = (String) enumerationPropertyNames.nextElement();
            properties2.setProperty(str, properties.getProperty(str));
        }
        return properties2;
    }

    public static StrLookup<String> systemPropertiesLookup() {
        Properties properties;
        try {
            properties = System.getProperties();
        } catch (SecurityException unused) {
            properties = null;
        }
        return new MapStrLookup(copyProperties(properties));
    }

    public static <V> StrLookup<V> mapLookup(Map<String, V> map) {
        return new MapStrLookup(map);
    }

    protected StrLookup() {
    }

    static class MapStrLookup<V> extends StrLookup<V> {
        private final Map<String, V> map;

        MapStrLookup(Map<String, V> map) {
            this.map = map;
        }

        @Override // org.shadow.apache.commons.lang3.text.StrLookup
        public String lookup(String str) {
            V v;
            Map<String, V> map = this.map;
            if (map == null || (v = map.get(str)) == null) {
                return null;
            }
            return v.toString();
        }
    }
}
