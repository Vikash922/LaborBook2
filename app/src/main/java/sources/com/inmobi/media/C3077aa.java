package com.inmobi.media;

import android.content.Context;
import com.inmobi.commons.core.configs.SignalsConfig;
import com.itextpdf.styledxmlparser.css.CommonCssConstants;
import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.PropertyReference1Impl;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KProperty;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import org.objectweb.asm.signature.SignatureVisitor;

/* JADX INFO: renamed from: com.inmobi.media.aa */
/* JADX INFO: loaded from: classes6.dex */
public final class C3077aa {

    /* JADX INFO: renamed from: c */
    public static C2992U9 f1852c;

    /* JADX INFO: renamed from: b */
    public static final /* synthetic */ KProperty[] f1851b = {Reflection.property1(new PropertyReference1Impl(C3077aa.class, "cachedJson", "getCachedJson()Lorg/json/JSONObject;", 0))};

    /* JADX INFO: renamed from: a */
    public static final C3077aa f1850a = new C3077aa();

    /* JADX INFO: renamed from: d */
    public static final C3383v1 f1853d = new C3383v1((Object) new JSONObject(), (Function0) C3062Z9.f1821a, true, true);

    /* JADX INFO: renamed from: b */
    public static void m2025b() {
        final Context contextM1254d = C2849Kb.m1254d();
        if (contextM1254d != null) {
            C2849Kb.m1246a(new Runnable() { // from class: com.inmobi.media.aa$$ExternalSyntheticLambda1
                @Override // java.lang.Runnable
                public final void run() {
                    C3077aa.m2023a(contextM1254d);
                }
            });
        }
    }

    /* JADX INFO: renamed from: a */
    public final LinkedHashMap m2027a() {
        String str;
        JSONObject jSONObject;
        JSONObject jSONObject2 = (JSONObject) f1853d.getValue(this, f1851b[0]);
        LinkedHashMap linkedHashMap = C2840K2.f1150a;
        SignalsConfig.PublisherConfig publisher = ((SignalsConfig) AbstractC3001V4.m1873a("signals", "null cannot be cast to non-null type com.inmobi.commons.core.configs.SignalsConfig", null)).getPublisher();
        LinkedHashMap linkedHashMap2 = new LinkedHashMap();
        for (Map.Entry<String, String> entry : publisher.getGeneralKeys().entrySet()) {
            String key = entry.getKey();
            String value = entry.getValue();
            if (jSONObject2.has(key)) {
                int iHashCode = value.hashCode();
                if (iHashCode != -1325958191) {
                    if (iHashCode != -891985903) {
                        if (iHashCode != 104431) {
                            if (iHashCode == 3029738 && value.equals("bool")) {
                                linkedHashMap2.put(key, Boolean.valueOf(jSONObject2.optBoolean(key)));
                            }
                        } else if (value.equals("int")) {
                            linkedHashMap2.put(key, Integer.valueOf(jSONObject2.optInt(key)));
                        }
                    } else if (value.equals("string")) {
                        String strOptString = jSONObject2.optString(key);
                        Intrinsics.checkNotNullExpressionValue(strOptString, "optString(...)");
                        linkedHashMap2.put(key, strOptString);
                    }
                } else if (value.equals(CommonCssConstants.DOUBLE)) {
                    linkedHashMap2.put(key, Double.valueOf(jSONObject2.optDouble(key)));
                }
            }
        }
        for (Map.Entry<String, String> entry2 : publisher.getAdSpecificKeys().entrySet()) {
            String key2 = entry2.getKey();
            String value2 = entry2.getValue();
            JSONArray jSONArrayOptJSONArray = jSONObject2.optJSONArray(key2);
            if (jSONArrayOptJSONArray != null) {
                int length = jSONArrayOptJSONArray.length();
                int i = 0;
                while (i < length) {
                    StringBuilder sbAppend = new StringBuilder().append(key2).append('_');
                    if (i == 0) {
                        str = "ban";
                    } else if (i == 1) {
                        str = "int";
                    } else if (i == 2) {
                        str = "rew";
                    } else if (i != 3) {
                        jSONObject = jSONObject2;
                        i++;
                        jSONObject2 = jSONObject;
                    } else {
                        str = "nat";
                    }
                    String string = sbAppend.append(str).toString();
                    int iHashCode2 = value2.hashCode();
                    jSONObject = jSONObject2;
                    if (iHashCode2 != -1325958191) {
                        if (iHashCode2 != -891985903) {
                            if (iHashCode2 != 104431) {
                                if (iHashCode2 == 3029738 && value2.equals("bool")) {
                                    linkedHashMap2.put(string, Boolean.valueOf(jSONArrayOptJSONArray.optBoolean(i)));
                                }
                            } else if (value2.equals("int")) {
                                linkedHashMap2.put(string, Integer.valueOf(jSONArrayOptJSONArray.optInt(i)));
                            }
                        } else if (value2.equals("string")) {
                            String strOptString2 = jSONArrayOptJSONArray.optString(i);
                            Intrinsics.checkNotNullExpressionValue(strOptString2, "optString(...)");
                            linkedHashMap2.put(string, strOptString2);
                        }
                    } else if (value2.equals(CommonCssConstants.DOUBLE)) {
                        linkedHashMap2.put(string, Double.valueOf(jSONArrayOptJSONArray.optDouble(i)));
                    }
                    i++;
                    jSONObject2 = jSONObject;
                }
            }
        }
        return linkedHashMap2;
    }

    /* JADX INFO: renamed from: b */
    public static final void m2026b(JSONObject this_saveSignalsToPersistentCache) {
        Intrinsics.checkNotNullParameter(this_saveSignalsToPersistentCache, "$this_saveSignalsToPersistentCache");
        Context contextM1254d = C2849Kb.m1254d();
        if (contextM1254d != null) {
            f1850a.getClass();
            if (f1852c == null) {
                f1852c = new C2992U9(contextM1254d, "pub_signals_store");
            }
            C2992U9 c2992u9 = f1852c;
            if (c2992u9 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("prefDao");
                c2992u9 = null;
            }
            String string = this_saveSignalsToPersistentCache.toString();
            Intrinsics.checkNotNullExpressionValue(string, "toString(...)");
            c2992u9.m1850a("saved_signals", string);
            f1853d.m2497a();
            AbstractC2814I6.m1170a((byte) 2, "PubSignalsStore", "Publisher Signals saved successfully.");
        }
    }

    /* JADX INFO: renamed from: a */
    public static final void m2023a(Context context) {
        Intrinsics.checkNotNullParameter(context, "$context");
        try {
            f1850a.getClass();
            if (f1852c == null) {
                f1852c = new C2992U9(context, "pub_signals_store");
            }
            C2992U9 c2992u9 = f1852c;
            if (c2992u9 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("prefDao");
                c2992u9 = null;
            }
            c2992u9.m1855c("saved_signals");
            f1853d.m2497a();
        } catch (Exception e) {
            AbstractC2814I6.m1170a((byte) 1, "PubSignalsStore", "Publisher signals could not be reset.");
            C3402w5 c3402w5 = C3402w5.f2709a;
            C3402w5.f2712d.m2158a(AbstractC3102c5.m2045a(e, "event"));
        }
    }

    /* JADX INFO: renamed from: a */
    public static LinkedHashMap m2020a(LinkedHashMap linkedHashMap, SignalsConfig.PublisherConfig publisherConfig) {
        Object objM2018a;
        LinkedHashMap linkedHashMap2 = new LinkedHashMap();
        LinkedHashMap linkedHashMap3 = new LinkedHashMap();
        linkedHashMap3.putAll(linkedHashMap);
        for (Map.Entry<String, String> entry : publisherConfig.getGeneralKeys().entrySet()) {
            String key = entry.getKey();
            String value = entry.getValue();
            Object obj = linkedHashMap.get(key);
            if (obj != null && (objM2018a = m2018a(obj, value)) != null) {
                linkedHashMap3.remove(key);
                linkedHashMap2.put(key, objM2018a);
            }
        }
        for (Map.Entry<String, String> entry2 : publisherConfig.getAdSpecificKeys().entrySet()) {
            String key2 = entry2.getKey();
            String value2 = entry2.getValue();
            String str = key2 + "_ban";
            String str2 = key2 + "_int";
            String str3 = key2 + "_rew";
            String str4 = key2 + "_nat";
            Object obj2 = linkedHashMap.get(str);
            Object objM2018a2 = obj2 != null ? m2018a(obj2, value2) : null;
            Object obj3 = linkedHashMap.get(str2);
            Object objM2018a3 = obj3 != null ? m2018a(obj3, value2) : null;
            Object obj4 = linkedHashMap.get(str3);
            Object objM2018a4 = obj4 != null ? m2018a(obj4, value2) : null;
            Object obj5 = linkedHashMap.get(str4);
            Object objM2018a5 = obj5 != null ? m2018a(obj5, value2) : null;
            if (objM2018a2 != null || objM2018a3 != null || objM2018a4 != null || objM2018a5 != null) {
                if (objM2018a2 != null) {
                    linkedHashMap3.remove(str);
                }
                if (objM2018a3 != null) {
                    linkedHashMap3.remove(str2);
                }
                if (objM2018a4 != null) {
                    linkedHashMap3.remove(str3);
                }
                if (objM2018a5 != null) {
                    linkedHashMap3.remove(str4);
                }
                JSONArray jSONArray = new JSONArray();
                if (objM2018a2 == null) {
                    objM2018a2 = m2019a(value2);
                }
                JSONArray jSONArrayPut = jSONArray.put(objM2018a2);
                if (objM2018a3 == null) {
                    objM2018a3 = m2019a(value2);
                }
                JSONArray jSONArrayPut2 = jSONArrayPut.put(objM2018a3);
                if (objM2018a4 == null) {
                    objM2018a4 = m2019a(value2);
                }
                JSONArray jSONArrayPut3 = jSONArrayPut2.put(objM2018a4);
                if (objM2018a5 == null) {
                    objM2018a5 = m2019a(value2);
                }
                JSONArray jSONArrayPut4 = jSONArrayPut3.put(objM2018a5);
                Intrinsics.checkNotNullExpressionValue(jSONArrayPut4, "put(...)");
                linkedHashMap2.put(key2, jSONArrayPut4);
            }
        }
        for (Map.Entry entry3 : linkedHashMap3.entrySet()) {
            AbstractC2814I6.m1170a((byte) 1, "PubSignalsStore", "Publisher Signal, " + ((String) entry3.getKey()) + SignatureVisitor.INSTANCEOF + entry3.getValue() + " Not supported");
        }
        return linkedHashMap2;
    }

    /* JADX INFO: renamed from: a */
    public static Object m2018a(Object obj, String str) {
        int iHashCode = str.hashCode();
        if (iHashCode != -1325958191) {
            if (iHashCode != -891985903) {
                if (iHashCode != 104431) {
                    if (iHashCode == 3029738 && str.equals("bool") && (obj instanceof Boolean)) {
                        return (Boolean) obj;
                    }
                } else if (str.equals("int") && (obj instanceof Integer)) {
                    return (Integer) obj;
                }
            } else if (str.equals("string") && (obj instanceof String)) {
                return (String) obj;
            }
        } else if (str.equals(CommonCssConstants.DOUBLE)) {
            if (obj instanceof Double) {
                return (Double) obj;
            }
            if (obj instanceof Integer) {
                return Double.valueOf(((Number) obj).intValue());
            }
            if (obj instanceof Float) {
                return Double.valueOf(((Number) obj).floatValue());
            }
        }
        return null;
    }

    /* JADX INFO: renamed from: a */
    public static Object m2019a(String str) {
        int iHashCode = str.hashCode();
        if (iHashCode == -1325958191) {
            return !str.equals(CommonCssConstants.DOUBLE) ? "-1" : Double.valueOf(Double.parseDouble("-1"));
        }
        if (iHashCode == -891985903) {
            str.equals("string");
            return "-1";
        }
        if (iHashCode == 104431) {
            return !str.equals("int") ? "-1" : Integer.valueOf(Integer.parseInt("-1"));
        }
        if (iHashCode != 3029738) {
            return "-1";
        }
        str.equals("bool");
        return "-1";
    }

    /* JADX INFO: renamed from: a */
    public static JSONObject m2021a(LinkedHashMap linkedHashMap) throws JSONException {
        JSONObject jSONObject = new JSONObject();
        for (Map.Entry entry : linkedHashMap.entrySet()) {
            String str = (String) entry.getKey();
            Object value = entry.getValue();
            if (value instanceof String) {
                jSONObject.put(str, value);
            } else if (value instanceof Integer) {
                jSONObject.put(str, ((Number) value).intValue());
            } else if (value instanceof Boolean) {
                jSONObject.put(str, ((Boolean) value).booleanValue());
            } else if (value instanceof Double) {
                jSONObject.put(str, ((Number) value).doubleValue());
            } else if (value instanceof JSONArray) {
                jSONObject.put(str, value);
            }
        }
        return jSONObject;
    }

    /* JADX INFO: renamed from: a */
    public static void m2024a(final JSONObject jSONObject) {
        C2849Kb.m1246a(new Runnable() { // from class: com.inmobi.media.aa$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                C3077aa.m2026b(jSONObject);
            }
        });
    }

    /* JADX INFO: renamed from: a */
    public static JSONObject m2022a(JSONObject jSONObject, SignalsConfig.PublisherConfig publisherConfig) {
        if (jSONObject.toString().length() <= publisherConfig.getPayloadSize()) {
            return jSONObject;
        }
        AbstractC2814I6.m1170a((byte) 1, "PubSignalsStore", "Publisher Signal payload size exceeded.");
        C3402w5 c3402w5 = C3402w5.f2709a;
        C3114d2 event = new C3114d2(new IllegalStateException("Publisher signals size exceeds the limit"));
        Intrinsics.checkNotNullParameter(event, "event");
        C3402w5.f2712d.m2158a(event);
        return null;
    }
}
