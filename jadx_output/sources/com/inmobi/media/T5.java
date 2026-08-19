package com.inmobi.media;

import java.lang.reflect.Field;
import java.util.Iterator;
import kotlin.jvm.internal.Intrinsics;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public final class T5 {
    /* JADX WARN: Removed duplicated region for block: B:62:0x0192 A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:63:0x0194 A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean a(java.lang.Object r5, java.lang.Object r6) {
        /*
            Method dump skipped, instruction units count: 411
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.inmobi.media.T5.a(java.lang.Object, java.lang.Object):boolean");
    }

    public static final boolean b(Class cls) {
        Class cls2 = Integer.TYPE;
        if (!Intrinsics.areEqual(cls2, cls) && !Intrinsics.areEqual(cls2, cls)) {
            Class cls3 = Boolean.TYPE;
            if (!Intrinsics.areEqual(cls3, cls) && !Intrinsics.areEqual(cls3, cls)) {
                Class cls4 = Double.TYPE;
                if (!Intrinsics.areEqual(cls4, cls) && !Intrinsics.areEqual(cls4, cls)) {
                    Class cls5 = Float.TYPE;
                    if (!Intrinsics.areEqual(cls5, cls) && !Intrinsics.areEqual(cls5, cls)) {
                        Class cls6 = Long.TYPE;
                        if (!Intrinsics.areEqual(cls6, cls) && !Intrinsics.areEqual(cls6, cls) && !Intrinsics.areEqual(String.class, cls)) {
                            Class cls7 = Byte.TYPE;
                            if (!Intrinsics.areEqual(cls7, cls) && !Intrinsics.areEqual(cls7, cls)) {
                                Class cls8 = Short.TYPE;
                                if (!Intrinsics.areEqual(cls8, cls) && !Intrinsics.areEqual(cls8, cls)) {
                                    return false;
                                }
                            }
                        }
                    }
                }
            }
        }
        return true;
    }

    public static boolean a(JSONArray jSONArray, JSONArray jSONArray2) {
        if (jSONArray.length() != jSONArray2.length()) {
            return false;
        }
        int length = jSONArray.length();
        for (int i = 0; i < length; i++) {
            try {
                Object obj = jSONArray.get(i);
                Object obj2 = jSONArray2.get(i);
                if ((obj instanceof JSONObject) && (obj2 instanceof JSONObject)) {
                    if (!a((JSONObject) obj, (JSONObject) obj2)) {
                        return false;
                    }
                } else if ((obj instanceof JSONArray) && (obj2 instanceof JSONArray)) {
                    if (!a((JSONArray) obj, (JSONArray) obj2)) {
                        return false;
                    }
                } else {
                    Intrinsics.checkNotNull(obj);
                    Intrinsics.checkNotNull(obj2);
                    if (!a(obj, obj2)) {
                        return false;
                    }
                }
            } catch (JSONException unused) {
                return false;
            }
        }
        return true;
    }

    public static boolean a(JSONObject json1, JSONObject json2) {
        Object obj;
        Object obj2;
        Intrinsics.checkNotNullParameter(json1, "json1");
        Intrinsics.checkNotNullParameter(json2, "json2");
        if (json1.length() != json2.length()) {
            return false;
        }
        Iterator<String> itKeys = json1.keys();
        while (itKeys.hasNext()) {
            String next = itKeys.next();
            try {
                obj = json1.get(next);
                obj2 = json2.get(next);
            } catch (JSONException unused) {
            }
            if ((obj instanceof JSONObject) && (obj2 instanceof JSONObject)) {
                if (!a((JSONObject) obj, (JSONObject) obj2)) {
                    return false;
                }
            } else if ((obj instanceof JSONArray) && (obj2 instanceof JSONArray)) {
                if (!a((JSONArray) obj, (JSONArray) obj2)) {
                    return false;
                }
            } else {
                Intrinsics.checkNotNull(obj);
                Intrinsics.checkNotNull(obj2);
                if (!a(obj, obj2)) {
                    return false;
                }
            }
        }
        return true;
    }

    public static final boolean a(Class cls) {
        return Intrinsics.areEqual(Integer.class, cls) || Intrinsics.areEqual(Boolean.class, cls) || Intrinsics.areEqual(Double.class, cls) || Intrinsics.areEqual(Float.class, cls) || Intrinsics.areEqual(Long.class, cls) || Intrinsics.areEqual(String.class, cls) || Intrinsics.areEqual(Byte.class, cls) || Intrinsics.areEqual(Short.class, cls);
    }

    public static final Object a(JSONArray jSONArray, int i, Class cls) throws JSONException {
        Object objValueOf;
        if (Intrinsics.areEqual(Integer.TYPE, cls)) {
            objValueOf = Integer.valueOf(jSONArray.getInt(i));
        } else if (Intrinsics.areEqual(Double.TYPE, cls)) {
            objValueOf = Double.valueOf(jSONArray.getDouble(i));
        } else if (Intrinsics.areEqual(Float.TYPE, cls)) {
            objValueOf = Float.valueOf((float) jSONArray.getDouble(i));
        } else if (Intrinsics.areEqual(Long.TYPE, cls)) {
            objValueOf = Long.valueOf(jSONArray.getLong(i));
        } else if (Intrinsics.areEqual(Byte.TYPE, cls)) {
            objValueOf = Byte.valueOf((byte) jSONArray.getInt(i));
        } else if (Intrinsics.areEqual(Short.TYPE, cls)) {
            objValueOf = Short.valueOf((short) jSONArray.getInt(i));
        } else {
            objValueOf = jSONArray.get(i);
        }
        Intrinsics.checkNotNull(objValueOf);
        return objValueOf;
    }

    public static final Object a(JSONObject jSONObject, String str, Class cls) throws JSONException {
        Object objValueOf;
        if (Intrinsics.areEqual(Integer.TYPE, cls)) {
            objValueOf = Integer.valueOf(jSONObject.getInt(str));
        } else if (Intrinsics.areEqual(Double.TYPE, cls)) {
            objValueOf = Double.valueOf(jSONObject.getDouble(str));
        } else if (Intrinsics.areEqual(Float.TYPE, cls)) {
            objValueOf = Float.valueOf((float) jSONObject.getDouble(str));
        } else if (Intrinsics.areEqual(Long.TYPE, cls)) {
            objValueOf = Long.valueOf(jSONObject.getLong(str));
        } else if (Intrinsics.areEqual(Byte.TYPE, cls)) {
            objValueOf = Byte.valueOf((byte) jSONObject.getInt(str));
        } else if (Intrinsics.areEqual(Short.TYPE, cls)) {
            objValueOf = Short.valueOf((short) jSONObject.getInt(str));
        } else {
            objValueOf = jSONObject.get(str);
        }
        Intrinsics.checkNotNull(objValueOf);
        return objValueOf;
    }

    public static void b(Object copyFrom, Object copyTo) {
        Intrinsics.checkNotNullParameter(copyFrom, "copyFrom");
        Intrinsics.checkNotNullParameter(copyTo, "copyTo");
        Class<?> cls = copyFrom.getClass();
        if (cls.isAssignableFrom(copyTo.getClass())) {
            Object objCast = cls.cast(copyTo);
            Intrinsics.checkNotNullExpressionValue(objCast, "cast(...)");
            Field[] declaredFields = cls.getDeclaredFields();
            Intrinsics.checkNotNullExpressionValue(declaredFields, "getDeclaredFields(...)");
            for (Field field : declaredFields) {
                try {
                    field.setAccessible(true);
                    field.set(objCast, field.get(copyFrom));
                } catch (IllegalAccessException unused) {
                }
            }
        }
    }
}
