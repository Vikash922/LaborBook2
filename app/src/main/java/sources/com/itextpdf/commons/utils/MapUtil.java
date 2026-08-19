package com.itextpdf.commons.utils;

import java.util.Map;
import java.util.Objects;
import java.util.function.BiFunction;

/* JADX INFO: loaded from: classes6.dex */
public final class MapUtil {
    private static final int HASH_MULTIPLIER = 31;

    private MapUtil() {
    }

    public static <K, V> boolean equals(Map<K, V> map, Map<K, V> map2) {
        if (map == map2) {
            return true;
        }
        if (map == null || map2 == null || !map.getClass().equals(map2.getClass()) || map.size() != map2.size()) {
            return false;
        }
        for (Map.Entry<K, V> entry : map.entrySet()) {
            V value = entry.getValue();
            V v = map2.get(entry.getKey());
            if (!map2.containsKey(entry.getKey()) || !Objects.equals(value, v)) {
                return false;
            }
        }
        return true;
    }

    public static <K, V> void merge(Map<K, V> map, Map<K, V> map2, BiFunction<V, V, V> biFunction) {
        if (map == map2) {
            return;
        }
        for (Map.Entry<K, V> entry : map2.entrySet()) {
            V v = map.get(entry.getKey());
            if (v == null) {
                map.put(entry.getKey(), entry.getValue());
            } else {
                map.put(entry.getKey(), biFunction.apply(v, entry.getValue()));
            }
        }
    }

    public static <K, V> int getHashCode(Map<K, V> map) {
        if (map == null) {
            return 0;
        }
        int iHashCode = 0;
        for (Map.Entry<K, V> entry : map.entrySet()) {
            K key = entry.getKey();
            V value = entry.getValue();
            iHashCode = (((iHashCode * 31) + (key == null ? 0 : key.hashCode())) * 31) + (value == null ? 0 : value.hashCode());
        }
        return iHashCode;
    }

    public static <K, V> void putIfNotNull(Map<K, V> map, K k, V v) {
        if (v != null) {
            map.put(k, v);
        }
    }
}
