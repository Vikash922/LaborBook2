package com.amplitude.core.utilities;

import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.internal.ArrayIteratorKt;
import kotlin.jvm.internal.Intrinsics;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: compiled from: JSON.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(m2721d1 = {"\u00000\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0011\n\u0000\n\u0002\u0010\u001e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010$\n\u0000\n\u0002\u0010 \n\u0000\n\u0002\u0010\u000e\n\u0000\u001a\u0010\u0010\u0000\u001a\u0004\u0018\u00010\u0001*\u0004\u0018\u00010\u0001H\u0002\u001a\u0010\u0010\u0002\u001a\u0004\u0018\u00010\u0001*\u0004\u0018\u00010\u0001H\u0002\u001a\u0019\u0010\u0003\u001a\u0004\u0018\u00010\u0004*\b\u0012\u0002\b\u0003\u0018\u00010\u0005H\u0000¢\u0006\u0002\u0010\u0006\u001a\u0014\u0010\u0003\u001a\u0004\u0018\u00010\u0004*\b\u0012\u0002\b\u0003\u0018\u00010\u0007H\u0000\u001a\u0018\u0010\b\u001a\u0004\u0018\u00010\t*\f\u0012\u0002\b\u0003\u0012\u0002\b\u0003\u0018\u00010\nH\u0000\u001a\u0014\u0010\u000b\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00010\f*\u00020\u0004H\u0000\u001a\u001a\u0010\r\u001a\u0010\u0012\u0004\u0012\u00020\u000e\u0012\u0006\u0012\u0004\u0018\u00010\u00010\n*\u00020\tH\u0000¨\u0006\u000f"}, m2722d2 = {"fromJSON", "", "toJSON", "toJSONArray", "Lorg/json/JSONArray;", "", "([Ljava/lang/Object;)Lorg/json/JSONArray;", "", "toJSONObject", "Lorg/json/JSONObject;", "", "toListObj", "", "toMapObj", "", "core"}, m2723k = 2, m2724mv = {1, 5, 1}, m2726xi = 48)
public final class JSONKt {
    public static final JSONObject toJSONObject(Map<?, ?> map) throws JSONException {
        if (map == null) {
            return null;
        }
        JSONObject jSONObject = new JSONObject();
        for (Map.Entry<?, ?> entry : map.entrySet()) {
            Object key = entry.getKey();
            String str = key instanceof String ? (String) key : null;
            if (str != null) {
                jSONObject.put(str, toJSON(entry.getValue()));
            }
        }
        return jSONObject;
    }

    public static final Map<String, Object> toMapObj(JSONObject jSONObject) {
        Intrinsics.checkNotNullParameter(jSONObject, "<this>");
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        Iterator<String> itKeys = jSONObject.keys();
        Intrinsics.checkNotNullExpressionValue(itKeys, "this.keys()");
        while (itKeys.hasNext()) {
            String key = itKeys.next();
            Intrinsics.checkNotNullExpressionValue(key, "key");
            linkedHashMap.put(key, fromJSON(jSONObject.get(key)));
        }
        return linkedHashMap;
    }

    public static final List<Object> toListObj(JSONArray jSONArray) {
        Intrinsics.checkNotNullParameter(jSONArray, "<this>");
        ArrayList arrayList = new ArrayList();
        int length = jSONArray.length();
        if (length > 0) {
            int i = 0;
            while (true) {
                int i2 = i + 1;
                arrayList.add(fromJSON(jSONArray.get(i)));
                if (i2 >= length) {
                    break;
                }
                i = i2;
            }
        }
        return arrayList;
    }

    public static final JSONArray toJSONArray(Collection<?> collection) {
        if (collection == null) {
            return null;
        }
        JSONArray jSONArray = new JSONArray();
        Iterator<?> it = collection.iterator();
        while (it.hasNext()) {
            jSONArray.put(toJSON(it.next()));
        }
        return jSONArray;
    }

    public static final JSONArray toJSONArray(Object[] objArr) {
        if (objArr == null) {
            return null;
        }
        JSONArray jSONArray = new JSONArray();
        Iterator it = ArrayIteratorKt.iterator(objArr);
        while (it.hasNext()) {
            jSONArray.put(toJSON(it.next()));
        }
        return jSONArray;
    }

    private static final Object fromJSON(Object obj) {
        if (obj instanceof JSONObject) {
            return toMapObj((JSONObject) obj);
        }
        if (obj instanceof JSONArray) {
            return toListObj((JSONArray) obj);
        }
        if (obj instanceof BigDecimal) {
            return Double.valueOf(((BigDecimal) obj).doubleValue());
        }
        if (Intrinsics.areEqual(obj, JSONObject.NULL)) {
            return null;
        }
        return obj;
    }

    private static final Object toJSON(Object obj) {
        return obj instanceof Map ? toJSONObject((Map) obj) : obj instanceof Collection ? toJSONArray((Collection<?>) obj) : obj instanceof Object[] ? toJSONArray((Object[]) obj) : obj;
    }
}
