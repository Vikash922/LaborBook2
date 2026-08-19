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

/* JADX INFO: renamed from: com.inmobi.media.aa, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes6.dex */
public final class C0226aa {
    public static U9 c;
    public static final /* synthetic */ KProperty[] b = {Reflection.property1(new PropertyReference1Impl(C0226aa.class, "cachedJson", "getCachedJson()Lorg/json/JSONObject;", 0))};

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final C0226aa f307a = new C0226aa();
    public static final C0533v1 d = new C0533v1((Object) new JSONObject(), (Function0) Z9.f298a, true, true);

    public static void b() {
        final Context contextD = Kb.d();
        if (contextD != null) {
            Kb.a(new Runnable() { // from class: com.inmobi.media.aa$$ExternalSyntheticLambda1
                @Override // java.lang.Runnable
                public final void run() {
                    C0226aa.a(contextD);
                }
            });
        }
    }

    public final LinkedHashMap a() {
        String str;
        JSONObject jSONObject;
        JSONObject jSONObject2 = (JSONObject) d.getValue(this, b[0]);
        LinkedHashMap linkedHashMap = K2.f154a;
        SignalsConfig.PublisherConfig publisher = ((SignalsConfig) V4.a("signals", "null cannot be cast to non-null type com.inmobi.commons.core.configs.SignalsConfig", null)).getPublisher();
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

    public static final void b(JSONObject this_saveSignalsToPersistentCache) {
        Intrinsics.checkNotNullParameter(this_saveSignalsToPersistentCache, "$this_saveSignalsToPersistentCache");
        Context contextD = Kb.d();
        if (contextD != null) {
            f307a.getClass();
            if (c == null) {
                c = new U9(contextD, "pub_signals_store");
            }
            U9 u9 = c;
            if (u9 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("prefDao");
                u9 = null;
            }
            String string = this_saveSignalsToPersistentCache.toString();
            Intrinsics.checkNotNullExpressionValue(string, "toString(...)");
            u9.a("saved_signals", string);
            d.a();
            I6.a((byte) 2, "PubSignalsStore", "Publisher Signals saved successfully.");
        }
    }

    public static final void a(Context context) {
        Intrinsics.checkNotNullParameter(context, "$context");
        try {
            f307a.getClass();
            if (c == null) {
                c = new U9(context, "pub_signals_store");
            }
            U9 u9 = c;
            if (u9 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("prefDao");
                u9 = null;
            }
            u9.c("saved_signals");
            d.a();
        } catch (Exception e) {
            I6.a((byte) 1, "PubSignalsStore", "Publisher signals could not be reset.");
            C0551w5 c0551w5 = C0551w5.f513a;
            C0551w5.d.a(AbstractC0251c5.a(e, "event"));
        }
    }

    public static LinkedHashMap a(LinkedHashMap linkedHashMap, SignalsConfig.PublisherConfig publisherConfig) {
        Object objA;
        LinkedHashMap linkedHashMap2 = new LinkedHashMap();
        LinkedHashMap linkedHashMap3 = new LinkedHashMap();
        linkedHashMap3.putAll(linkedHashMap);
        for (Map.Entry<String, String> entry : publisherConfig.getGeneralKeys().entrySet()) {
            String key = entry.getKey();
            String value = entry.getValue();
            Object obj = linkedHashMap.get(key);
            if (obj != null && (objA = a(obj, value)) != null) {
                linkedHashMap3.remove(key);
                linkedHashMap2.put(key, objA);
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
            Object objA2 = obj2 != null ? a(obj2, value2) : null;
            Object obj3 = linkedHashMap.get(str2);
            Object objA3 = obj3 != null ? a(obj3, value2) : null;
            Object obj4 = linkedHashMap.get(str3);
            Object objA4 = obj4 != null ? a(obj4, value2) : null;
            Object obj5 = linkedHashMap.get(str4);
            Object objA5 = obj5 != null ? a(obj5, value2) : null;
            if (objA2 != null || objA3 != null || objA4 != null || objA5 != null) {
                if (objA2 != null) {
                    linkedHashMap3.remove(str);
                }
                if (objA3 != null) {
                    linkedHashMap3.remove(str2);
                }
                if (objA4 != null) {
                    linkedHashMap3.remove(str3);
                }
                if (objA5 != null) {
                    linkedHashMap3.remove(str4);
                }
                JSONArray jSONArray = new JSONArray();
                if (objA2 == null) {
                    objA2 = a(value2);
                }
                JSONArray jSONArrayPut = jSONArray.put(objA2);
                if (objA3 == null) {
                    objA3 = a(value2);
                }
                JSONArray jSONArrayPut2 = jSONArrayPut.put(objA3);
                if (objA4 == null) {
                    objA4 = a(value2);
                }
                JSONArray jSONArrayPut3 = jSONArrayPut2.put(objA4);
                if (objA5 == null) {
                    objA5 = a(value2);
                }
                JSONArray jSONArrayPut4 = jSONArrayPut3.put(objA5);
                Intrinsics.checkNotNullExpressionValue(jSONArrayPut4, "put(...)");
                linkedHashMap2.put(key2, jSONArrayPut4);
            }
        }
        for (Map.Entry entry3 : linkedHashMap3.entrySet()) {
            I6.a((byte) 1, "PubSignalsStore", "Publisher Signal, " + ((String) entry3.getKey()) + SignatureVisitor.INSTANCEOF + entry3.getValue() + " Not supported");
        }
        return linkedHashMap2;
    }

    public static Object a(Object obj, String str) {
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

    public static Object a(String str) {
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

    public static JSONObject a(LinkedHashMap linkedHashMap) throws JSONException {
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

    public static void a(final JSONObject jSONObject) {
        Kb.a(new Runnable() { // from class: com.inmobi.media.aa$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                C0226aa.b(jSONObject);
            }
        });
    }

    public static JSONObject a(JSONObject jSONObject, SignalsConfig.PublisherConfig publisherConfig) {
        if (jSONObject.toString().length() <= publisherConfig.getPayloadSize()) {
            return jSONObject;
        }
        I6.a((byte) 1, "PubSignalsStore", "Publisher Signal payload size exceeded.");
        C0551w5 c0551w5 = C0551w5.f513a;
        C0264d2 event = new C0264d2(new IllegalStateException("Publisher signals size exceeds the limit"));
        Intrinsics.checkNotNullParameter(event, "event");
        C0551w5.d.a(event);
        return null;
    }
}
