package com.inmobi.media;

import android.util.Log;
import java.lang.reflect.Constructor;
import java.lang.reflect.Field;
import java.lang.reflect.Modifier;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.TypeIntrinsics;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: renamed from: com.inmobi.media.U5 */
/* JADX INFO: loaded from: classes6.dex */
public final class C2988U5 {

    /* JADX INFO: renamed from: b */
    public static boolean f1566b;

    /* JADX INFO: renamed from: a */
    public final HashMap f1567a = new HashMap();

    @JvmStatic
    /* JADX INFO: renamed from: a */
    public static final boolean m1839a(JSONObject jSONObject, JSONObject jSONObject2) {
        return C2974T5.m1818a(jSONObject, jSONObject2);
    }

    /* JADX INFO: renamed from: b */
    public static final /* synthetic */ String m1840b() {
        return "U5";
    }

    @JvmStatic
    /* JADX INFO: renamed from: a */
    public static final void m1836a(Object obj, Object obj2) {
        C2974T5.m1819b(obj, obj2);
    }

    @JvmStatic
    /* JADX INFO: renamed from: b */
    public static final void m1841b(boolean z) {
        f1566b = z;
    }

    /* JADX INFO: renamed from: a */
    public final C2988U5 m1842a(C3378ub key, AbstractC3363tb types) {
        Intrinsics.checkNotNullParameter(key, "key");
        Intrinsics.checkNotNullParameter(types, "types");
        this.f1567a.put(key, types);
        return this;
    }

    /* JADX INFO: renamed from: a */
    public final JSONObject m1846a(Object obj, Class cls) {
        JSONObject jSONObject;
        try {
            Class superclass = cls.getSuperclass();
            if (superclass == null || Intrinsics.areEqual(Object.class, superclass)) {
                jSONObject = null;
            } else {
                Class superclass2 = cls.getSuperclass();
                superclass2.getClass();
                Intrinsics.checkNotNull(superclass2);
                jSONObject = m1846a(obj, superclass2);
            }
            if (jSONObject == null) {
                jSONObject = new JSONObject();
            }
            Field[] declaredFields = cls.getDeclaredFields();
            Intrinsics.checkNotNullExpressionValue(declaredFields, "getDeclaredFields(...)");
            for (Field field : declaredFields) {
                field.setAccessible(true);
                if (field.get(obj) == null) {
                    field.getName();
                } else {
                    Class<?> type = field.getType();
                    if (!Modifier.isStatic(field.getModifiers()) && !field.isAnnotationPresent(InterfaceC2797H4.class)) {
                        Intrinsics.checkNotNull(type);
                        if (Modifier.isStatic(cls.getModifiers()) || !Intrinsics.areEqual(cls.getEnclosingClass(), type)) {
                            String name = field.getName();
                            Class cls2 = Integer.TYPE;
                            if (!Intrinsics.areEqual(cls2, type) && !Intrinsics.areEqual(cls2, type) && !Intrinsics.areEqual(Integer.class, type)) {
                                Class cls3 = Boolean.TYPE;
                                if (!Intrinsics.areEqual(cls3, type) && !Intrinsics.areEqual(cls3, type) && !Intrinsics.areEqual(Boolean.class, type)) {
                                    Class cls4 = Double.TYPE;
                                    if (!Intrinsics.areEqual(cls4, type) && !Intrinsics.areEqual(cls4, type) && !Intrinsics.areEqual(Double.class, type)) {
                                        Class cls5 = Float.TYPE;
                                        if (!Intrinsics.areEqual(cls5, type) && !Intrinsics.areEqual(cls5, type) && !Intrinsics.areEqual(Float.class, type)) {
                                            Class cls6 = Long.TYPE;
                                            if (!Intrinsics.areEqual(cls6, type) && !Intrinsics.areEqual(cls6, type) && !Intrinsics.areEqual(Long.class, type)) {
                                                Class cls7 = Byte.TYPE;
                                                if (!Intrinsics.areEqual(cls7, type) && !Intrinsics.areEqual(cls7, type) && !Intrinsics.areEqual(Byte.class, type)) {
                                                    if (!Intrinsics.areEqual(String.class, type) && !Intrinsics.areEqual(JSONObject.class, type) && !Intrinsics.areEqual(JSONArray.class, type)) {
                                                        Class cls8 = Short.TYPE;
                                                        if (!Intrinsics.areEqual(cls8, type) && !Intrinsics.areEqual(cls8, type) && !Intrinsics.areEqual(Short.class, type)) {
                                                            if (Map.class.isAssignableFrom(type)) {
                                                                HashMap map = this.f1567a;
                                                                Intrinsics.checkNotNull(name);
                                                                AbstractC3363tb abstractC3363tb = (AbstractC3363tb) map.get(new C3378ub(name, cls));
                                                                if (abstractC3363tb instanceof C2934Q6) {
                                                                    JSONObject jSONObject2 = new JSONObject();
                                                                    Object obj2 = field.get(obj);
                                                                    if (obj2 != null) {
                                                                        Map map2 = (Map) obj2;
                                                                        C2934Q6 c2934q6 = (C2934Q6) abstractC3363tb;
                                                                        for (Object obj3 : map2.keySet()) {
                                                                            c2934q6.getClass();
                                                                            Intrinsics.checkNotNullParameter(map2, "map");
                                                                            Object objM1846a = map2.get(obj3);
                                                                            if (objM1846a != null) {
                                                                                if (!C2974T5.m1820b(objM1846a.getClass()) && !C2974T5.m1815a(objM1846a.getClass())) {
                                                                                    objM1846a = m1846a(objM1846a, (Class) objM1846a.getClass());
                                                                                }
                                                                                jSONObject2.put(obj3.toString(), objM1846a);
                                                                            }
                                                                        }
                                                                    }
                                                                    jSONObject.put(name, jSONObject2);
                                                                } else {
                                                                    type.getClass();
                                                                }
                                                            } else if (List.class.isAssignableFrom(type)) {
                                                                HashMap map3 = this.f1567a;
                                                                Intrinsics.checkNotNull(name);
                                                                Object obj4 = map3.get(new C3378ub(name, cls));
                                                                Intrinsics.checkNotNull(obj4);
                                                                if (((AbstractC3363tb) obj4) instanceof C3388v6) {
                                                                    JSONArray jSONArray = new JSONArray();
                                                                    Object obj5 = field.get(obj);
                                                                    if (obj5 != null) {
                                                                        for (Object obj6 : (List) obj5) {
                                                                            if (obj6 != null) {
                                                                                Object objM1846a2 = (C2974T5.m1820b(obj6.getClass()) || C2974T5.m1815a(obj6.getClass())) ? obj6 : m1846a(obj6, (Class) obj6.getClass());
                                                                                if (objM1846a2 == null) {
                                                                                    obj6.getClass().toString();
                                                                                } else {
                                                                                    jSONArray.put(objM1846a2);
                                                                                }
                                                                            }
                                                                        }
                                                                    }
                                                                    jSONObject.put(name, jSONArray);
                                                                } else {
                                                                    type.getClass();
                                                                }
                                                            } else {
                                                                Object obj7 = field.get(obj);
                                                                if (obj7 != null) {
                                                                    jSONObject.put(name, m1846a(obj7, (Class) obj7.getClass()));
                                                                } else {
                                                                    type.getClass();
                                                                }
                                                            }
                                                        } else {
                                                            Object obj8 = field.get(obj);
                                                            Intrinsics.checkNotNull(obj8, "null cannot be cast to non-null type kotlin.Short");
                                                            jSONObject.put(name, (Short) obj8);
                                                        }
                                                    } else {
                                                        jSONObject.put(name, field.get(obj));
                                                    }
                                                } else {
                                                    Object obj9 = field.get(obj);
                                                    Intrinsics.checkNotNull(obj9, "null cannot be cast to non-null type kotlin.Byte");
                                                    jSONObject.put(name, (Byte) obj9);
                                                }
                                            } else {
                                                Object obj10 = field.get(obj);
                                                Intrinsics.checkNotNull(obj10, "null cannot be cast to non-null type kotlin.Long");
                                                jSONObject.put(name, ((Long) obj10).longValue());
                                            }
                                        } else {
                                            Object obj11 = field.get(obj);
                                            Intrinsics.checkNotNull(obj11, "null cannot be cast to non-null type kotlin.Float");
                                            jSONObject.put(name, (Float) obj11);
                                        }
                                    } else {
                                        Object obj12 = field.get(obj);
                                        Intrinsics.checkNotNull(obj12, "null cannot be cast to non-null type kotlin.Double");
                                        jSONObject.put(name, ((Double) obj12).doubleValue());
                                    }
                                } else {
                                    Object obj13 = field.get(obj);
                                    Intrinsics.checkNotNull(obj13, "null cannot be cast to non-null type kotlin.Boolean");
                                    jSONObject.put(name, ((Boolean) obj13).booleanValue());
                                }
                            } else {
                                Object obj14 = field.get(obj);
                                Intrinsics.checkNotNull(obj14, "null cannot be cast to non-null type kotlin.Int");
                                jSONObject.put(name, ((Integer) obj14).intValue());
                            }
                        }
                    }
                }
            }
            return jSONObject;
        } catch (Exception unused) {
            return null;
        }
    }

    /* JADX INFO: renamed from: a */
    public final JSONObject m1845a(Object obj) {
        Intrinsics.checkNotNullParameter(obj, "obj");
        return m1846a(obj, (Class) obj.getClass());
    }

    /* JADX INFO: renamed from: a */
    public final Object m1843a(JSONObject jsonObject, Class<Object> type) {
        Intrinsics.checkNotNullParameter(jsonObject, "jsonObject");
        Intrinsics.checkNotNullParameter(type, "type");
        return type.cast(m1844a(jsonObject, type, null, null));
    }

    /* JADX INFO: renamed from: a */
    public final Object m1844a(JSONObject jSONObject, Class cls, Object obj, Object obj2) {
        Object obj3;
        Object objNewInstance;
        Object objValueOf;
        Field[] fieldArr;
        int i;
        boolean z;
        JSONArray jSONArrayOptJSONArray;
        Object obj4 = null;
        try {
            cls.getClass();
            cls.toString();
            Objects.toString(obj);
            boolean z2 = true;
            if (obj2 == null) {
                try {
                    Constructor<?>[] declaredConstructors = cls.getDeclaredConstructors();
                    Intrinsics.checkNotNull(declaredConstructors);
                    if (declaredConstructors.length == 0) {
                        objNewInstance = cls.newInstance();
                    } else {
                        Constructor<?> constructor = declaredConstructors[0];
                        constructor.setAccessible(true);
                        int length = constructor.getParameterTypes().length;
                        if (length == 0) {
                            objNewInstance = constructor.newInstance(null);
                        } else {
                            Object[] objArr = new Object[length];
                            Class<?>[] parameterTypes = constructor.getParameterTypes();
                            Intrinsics.checkNotNullExpressionValue(parameterTypes, "getParameterTypes(...)");
                            int length2 = parameterTypes.length;
                            int i2 = 0;
                            int i3 = 0;
                            while (i2 < length2) {
                                Class<?> cls2 = parameterTypes[i2];
                                int i4 = i3 + 1;
                                Intrinsics.checkNotNull(cls2);
                                if (!Intrinsics.areEqual(Integer.TYPE, cls2) && !Intrinsics.areEqual(Long.TYPE, cls2)) {
                                    if (Intrinsics.areEqual(Boolean.TYPE, cls2)) {
                                        objValueOf = Boolean.FALSE;
                                    } else {
                                        objValueOf = (Intrinsics.areEqual(Double.TYPE, cls2) || Intrinsics.areEqual(Float.TYPE, cls2)) ? Double.valueOf(0.0d) : null;
                                    }
                                } else {
                                    objValueOf = 0;
                                }
                                objArr[i3] = objValueOf;
                                i2++;
                                i3 = i4;
                            }
                            objNewInstance = constructor.newInstance(Arrays.copyOf(objArr, length));
                        }
                    }
                } catch (Exception unused) {
                    cls.toString();
                    return null;
                }
            } else {
                objNewInstance = obj2;
            }
            if (cls.getSuperclass() != null) {
                Class superclass = cls.getSuperclass();
                superclass.getClass();
                Intrinsics.checkNotNull(superclass);
                objNewInstance = m1844a(jSONObject, superclass, obj, objNewInstance);
            }
            Field[] declaredFields = cls.getDeclaredFields();
            Intrinsics.checkNotNullExpressionValue(declaredFields, "getDeclaredFields(...)");
            int length3 = declaredFields.length;
            int i5 = 0;
            while (i5 < length3) {
                Field field = declaredFields[i5];
                field.setAccessible(z2);
                String name = field.getName();
                if (Intrinsics.areEqual(name, "shadow$_klass_") || Modifier.isStatic(field.getModifiers()) || field.isAnnotationPresent(InterfaceC2797H4.class)) {
                    obj3 = obj4;
                    fieldArr = declaredFields;
                    i = length3;
                } else if (jSONObject.has(name) && !jSONObject.isNull(name)) {
                    Class<?> type = field.getType();
                    Class<?> cls3 = Integer.TYPE;
                    if (!Intrinsics.areEqual(cls3, type) && !Intrinsics.areEqual(cls3, type) && !Intrinsics.areEqual(Integer.class, type)) {
                        Class cls4 = Boolean.TYPE;
                        if (!Intrinsics.areEqual(cls4, type) && !Intrinsics.areEqual(cls4, type) && !Intrinsics.areEqual(Boolean.class, type)) {
                            Class<?> cls5 = Double.TYPE;
                            if (!Intrinsics.areEqual(cls5, type) && !Intrinsics.areEqual(cls5, type) && !Intrinsics.areEqual(Double.class, type)) {
                                Class<?> cls6 = Float.TYPE;
                                if (!Intrinsics.areEqual(cls6, type) && !Intrinsics.areEqual(cls6, type) && !Intrinsics.areEqual(Float.class, type)) {
                                    Class<?> cls7 = Long.TYPE;
                                    if (!Intrinsics.areEqual(cls7, type) && !Intrinsics.areEqual(cls7, type) && !Intrinsics.areEqual(Long.class, type)) {
                                        Class<?> cls8 = Byte.TYPE;
                                        if (!Intrinsics.areEqual(cls8, type) && !Intrinsics.areEqual(cls8, type) && !Intrinsics.areEqual(Byte.class, type)) {
                                            if (Intrinsics.areEqual(String.class, type)) {
                                                field.set(objNewInstance, jSONObject.getString(name));
                                            } else {
                                                Class<?> cls9 = Short.TYPE;
                                                if (!Intrinsics.areEqual(cls9, type) && !Intrinsics.areEqual(cls9, type) && !Intrinsics.areEqual(Short.class, type)) {
                                                    if (Intrinsics.areEqual(JSONObject.class, type)) {
                                                        Intrinsics.checkNotNull(field);
                                                        JSONObject jSONObject2 = jSONObject.getJSONObject(field.getName());
                                                        JSONObject jSONObject3 = new JSONObject();
                                                        Intrinsics.checkNotNullParameter(field, "<this>");
                                                        if (jSONObject2 == null) {
                                                            jSONObject2 = jSONObject3;
                                                        }
                                                        field.set(objNewInstance, jSONObject2);
                                                    } else if (Intrinsics.areEqual(JSONArray.class, type)) {
                                                        field.set(objNewInstance, jSONObject.getJSONArray(name));
                                                    } else if (Map.class.isAssignableFrom(type)) {
                                                        try {
                                                            HashMap map = this.f1567a;
                                                            Intrinsics.checkNotNull(name);
                                                            AbstractC3363tb abstractC3363tb = (AbstractC3363tb) map.get(new C3378ub(name, cls));
                                                            if (abstractC3363tb instanceof C2934Q6) {
                                                                JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject(name);
                                                                C2934Q6 c2934q6 = (C2934Q6) abstractC3363tb;
                                                                if (jSONObjectOptJSONObject != null) {
                                                                    jSONObjectOptJSONObject.toString();
                                                                    Map map2 = (Map) ((C2934Q6) abstractC3363tb).m2457a().construct();
                                                                    Intrinsics.checkNotNull(map2, "null cannot be cast to non-null type kotlin.collections.MutableMap<kotlin.Any, kotlin.Any?>");
                                                                    Map map3 = TypeIntrinsics.asMutableMap(map2);
                                                                    Iterator<String> itKeys = jSONObjectOptJSONObject.keys();
                                                                    while (itKeys.hasNext()) {
                                                                        String next = itKeys.next();
                                                                        Intrinsics.checkNotNull(next);
                                                                        Field[] fieldArr2 = declaredFields;
                                                                        Object objM1814a = C2974T5.m1814a(jSONObjectOptJSONObject, next, ((C2934Q6) abstractC3363tb).f1473b);
                                                                        int i6 = length3;
                                                                        if (C2974T5.m1820b(((C2934Q6) abstractC3363tb).f1473b)) {
                                                                            objM1814a = ((C2934Q6) abstractC3363tb).f1473b.cast(objM1814a);
                                                                        } else if (!C2974T5.m1815a(((C2934Q6) abstractC3363tb).f1473b)) {
                                                                            JSONObject jSONObject4 = jSONObjectOptJSONObject.getJSONObject(next);
                                                                            Intrinsics.checkNotNullExpressionValue(jSONObject4, "getJSONObject(...)");
                                                                            Class<Object> cls10 = c2934q6.f1473b;
                                                                            Intrinsics.checkNotNull(cls10, "null cannot be cast to non-null type java.lang.Class<T of com.inmobi.commons.utils.json.JSONConverter>");
                                                                            objM1814a = m1843a(jSONObject4, cls10);
                                                                        }
                                                                        c2934q6.getClass();
                                                                        Intrinsics.checkNotNullParameter(map3, "map");
                                                                        map3.put(next, objM1814a);
                                                                        declaredFields = fieldArr2;
                                                                        length3 = i6;
                                                                    }
                                                                    fieldArr = declaredFields;
                                                                    i = length3;
                                                                    field.set(objNewInstance, map3);
                                                                } else {
                                                                    fieldArr = declaredFields;
                                                                    i = length3;
                                                                    obj3 = obj4;
                                                                }
                                                            } else {
                                                                fieldArr = declaredFields;
                                                                i = length3;
                                                                type.getClass();
                                                            }
                                                            obj3 = null;
                                                        } catch (Exception e) {
                                                            e = e;
                                                            obj3 = null;
                                                            Log.getStackTraceString(e);
                                                            return obj3;
                                                        }
                                                    } else {
                                                        fieldArr = declaredFields;
                                                        i = length3;
                                                        if (List.class.isAssignableFrom(type)) {
                                                            HashMap map4 = this.f1567a;
                                                            Intrinsics.checkNotNull(name);
                                                            AbstractC3363tb abstractC3363tb2 = (AbstractC3363tb) map4.get(new C3378ub(name, cls));
                                                            if ((abstractC3363tb2 instanceof C3388v6) && (jSONArrayOptJSONArray = jSONObject.optJSONArray(name)) != null) {
                                                                List<Object> listM2507b = ((C3388v6) abstractC3363tb2).m2507b();
                                                                Intrinsics.checkNotNull(listM2507b, "null cannot be cast to non-null type kotlin.collections.MutableList<kotlin.Any?>");
                                                                List listAsMutableList = TypeIntrinsics.asMutableList(listM2507b);
                                                                int length4 = jSONArrayOptJSONArray.length();
                                                                for (int i7 = 0; i7 < length4; i7++) {
                                                                    Object objM1813a = C2974T5.m1813a(jSONArrayOptJSONArray, i7, ((C3388v6) abstractC3363tb2).m2508c());
                                                                    if (C2974T5.m1820b(objM1813a.getClass())) {
                                                                        objM1813a = ((C3388v6) abstractC3363tb2).m2508c().cast(objM1813a);
                                                                    } else if (!C2974T5.m1815a(objM1813a.getClass())) {
                                                                        JSONObject jSONObject5 = jSONArrayOptJSONArray.getJSONObject(i7);
                                                                        Intrinsics.checkNotNullExpressionValue(jSONObject5, "getJSONObject(...)");
                                                                        Class<Object> clsM2508c = ((C3388v6) abstractC3363tb2).m2508c();
                                                                        Intrinsics.checkNotNull(clsM2508c, "null cannot be cast to non-null type java.lang.Class<T of com.inmobi.commons.utils.json.JSONConverter>");
                                                                        objM1813a = m1843a(jSONObject5, clsM2508c);
                                                                    }
                                                                    if (objM1813a != null) {
                                                                        listAsMutableList.add(objM1813a);
                                                                    }
                                                                }
                                                                field.set(objNewInstance, listAsMutableList);
                                                            }
                                                        } else {
                                                            JSONObject jSONObjectOptJSONObject2 = jSONObject.optJSONObject(name);
                                                            if (jSONObjectOptJSONObject2 != null) {
                                                                Objects.toString(objNewInstance);
                                                                Intrinsics.checkNotNull(type);
                                                                obj3 = null;
                                                                try {
                                                                    field.set(objNewInstance, m1844a(jSONObjectOptJSONObject2, type, objNewInstance, null));
                                                                } catch (Exception e2) {
                                                                    e = e2;
                                                                    Log.getStackTraceString(e);
                                                                    return obj3;
                                                                }
                                                            }
                                                        }
                                                        obj3 = null;
                                                    }
                                                } else {
                                                    obj3 = obj4;
                                                    fieldArr = declaredFields;
                                                    i = length3;
                                                    Intrinsics.checkNotNull(field);
                                                    short s = (short) jSONObject.getInt(field.getName());
                                                    try {
                                                        if (field.getType() == cls9) {
                                                            field.getName();
                                                            field.setShort(objNewInstance, s);
                                                        } else {
                                                            field.getName();
                                                            field.set(objNewInstance, Short.valueOf(s));
                                                        }
                                                    } catch (Exception unused2) {
                                                        field.getName();
                                                    }
                                                }
                                            }
                                            obj3 = obj4;
                                            fieldArr = declaredFields;
                                            i = length3;
                                        } else {
                                            obj3 = obj4;
                                            fieldArr = declaredFields;
                                            i = length3;
                                            Intrinsics.checkNotNull(field);
                                            byte b = (byte) jSONObject.getInt(field.getName());
                                            try {
                                                if (field.getType() == cls8) {
                                                    field.getName();
                                                    field.setByte(objNewInstance, b);
                                                } else {
                                                    field.getName();
                                                    field.set(objNewInstance, Byte.valueOf(b));
                                                }
                                            } catch (Exception unused3) {
                                                field.getName();
                                            }
                                        }
                                    } else {
                                        obj3 = obj4;
                                        fieldArr = declaredFields;
                                        i = length3;
                                        Intrinsics.checkNotNull(field);
                                        long j = jSONObject.getLong(field.getName());
                                        try {
                                            if (field.getType() == cls7) {
                                                field.getName();
                                                field.setLong(objNewInstance, j);
                                            } else {
                                                field.getName();
                                                field.set(objNewInstance, Long.valueOf(j));
                                            }
                                        } catch (Exception unused4) {
                                            field.getName();
                                        }
                                    }
                                } else {
                                    obj3 = obj4;
                                    fieldArr = declaredFields;
                                    i = length3;
                                    Intrinsics.checkNotNull(field);
                                    float f = (float) jSONObject.getDouble(field.getName());
                                    try {
                                        if (field.getType() == cls6) {
                                            field.getName();
                                            field.setFloat(objNewInstance, f);
                                        } else {
                                            field.getName();
                                            field.set(objNewInstance, Float.valueOf(f));
                                        }
                                    } catch (Exception unused5) {
                                        field.getName();
                                    }
                                }
                            } else {
                                obj3 = obj4;
                                fieldArr = declaredFields;
                                i = length3;
                                Intrinsics.checkNotNull(field);
                                double d = jSONObject.getDouble(field.getName());
                                try {
                                    if (field.getType() == cls5) {
                                        field.getName();
                                        field.setDouble(objNewInstance, d);
                                    } else {
                                        field.getName();
                                        field.set(objNewInstance, Double.valueOf(d));
                                    }
                                } catch (Exception unused6) {
                                    field.getName();
                                }
                            }
                        } else {
                            obj3 = obj4;
                            fieldArr = declaredFields;
                            i = length3;
                            Intrinsics.checkNotNull(field);
                            String name2 = field.getName();
                            try {
                                z = jSONObject.getBoolean(name2);
                            } catch (JSONException unused7) {
                                z = jSONObject.getInt(name2) != 0;
                            }
                            Boolean boolValueOf = Boolean.valueOf(z);
                            try {
                                if (field.getType() == Boolean.TYPE) {
                                    field.setBoolean(objNewInstance, z);
                                } else {
                                    field.set(objNewInstance, boolValueOf);
                                }
                            } catch (Exception unused8) {
                                field.getName();
                            }
                        }
                    } else {
                        obj3 = obj4;
                        fieldArr = declaredFields;
                        i = length3;
                        Intrinsics.checkNotNull(field);
                        int i8 = jSONObject.getInt(field.getName());
                        try {
                            if (field.getType() == cls3) {
                                field.getName();
                                field.setInt(objNewInstance, i8);
                            } else {
                                field.getName();
                                field.set(objNewInstance, Integer.valueOf(i8));
                            }
                        } catch (Exception unused9) {
                            field.getName();
                        }
                    }
                } else {
                    obj3 = obj4;
                    fieldArr = declaredFields;
                    i = length3;
                    if (field.isAnnotationPresent(InterfaceC3316q9.class)) {
                        throw new JSONException("NonNullable field " + name + " is not present or null in the JSONObject");
                    }
                }
                i5++;
                declaredFields = fieldArr;
                obj4 = obj3;
                length3 = i;
                z2 = true;
            }
            return objNewInstance;
        } catch (Exception e3) {
            e = e3;
            obj3 = null;
        }
    }
}
