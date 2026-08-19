package com.amplitude.core.utilities;

import com.amplitude.android.TrackingOptions;
import com.amplitude.core.events.BaseEvent;
import com.amplitude.core.events.IngestionMetadata;
import com.amplitude.core.events.Plan;
import com.facebook.gamingservices.cloudgaming.internal.SDKAnalyticsEvents;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.laborbook.base.analytics.ConstantEventAttributes;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.collections.CollectionsKt;
import kotlin.collections.IntIterator;
import kotlin.collections.MapsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.RangesKt;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: compiled from: JSONUtil.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(m2721d1 = {"\u0000B\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\"\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0015\n\u0002\b\u0002\u001a\u001e\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u00042\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006H\u0000\u001a\u0012\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\t0\b*\u00020\u0002H\u0000\u001a\u001c\u0010\n\u001a\u00020\u0004*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u000b\u001a\u00020\u0004H\u0000\u001a\u001e\u0010\f\u001a\u0004\u0018\u00010\u0002*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u00042\b\u0010\u000b\u001a\u0004\u0018\u00010\u0002\u001a\u001e\u0010\r\u001a\u0004\u0018\u00010\u0004*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u00042\b\u0010\u000b\u001a\u0004\u0018\u00010\u0004\u001a$\u0010\u000e\u001a\u001a\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00020\u0010\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00020\u00100\u000f*\u00020\u0011H\u0000\u001a\n\u0010\u0012\u001a\u00020\u0013*\u00020\u0002\u001a\u0010\u0010\u0014\u001a\b\u0012\u0004\u0012\u00020\u00130\u0010*\u00020\u0011\u001a\f\u0010\u0015\u001a\u00020\u0016*\u00020\u0011H\u0000\u001a\u0012\u0010\u0017\u001a\b\u0012\u0004\u0012\u00020\u00020\u0010*\u00020\u0011H\u0000¨\u0006\u0018"}, m2722d2 = {"addValue", "", "Lorg/json/JSONObject;", "key", "", "value", "", "collectIndices", "", "", "getStringWithDefault", "defaultValue", "optionalJSONObject", "optionalString", "split", "Lkotlin/Pair;", "", "Lorg/json/JSONArray;", "toBaseEvent", "Lcom/amplitude/core/events/BaseEvent;", "toEvents", "toIntArray", "", "toJSONObjectList", "core"}, m2723k = 2, m2724mv = {1, 5, 1}, m2726xi = 48)
public final class JSONUtilKt {
    public static final String getStringWithDefault(JSONObject jSONObject, String key, String defaultValue) throws JSONException {
        Intrinsics.checkNotNullParameter(jSONObject, "<this>");
        Intrinsics.checkNotNullParameter(key, "key");
        Intrinsics.checkNotNullParameter(defaultValue, "defaultValue");
        if (!jSONObject.has(key)) {
            return defaultValue;
        }
        String string = jSONObject.getString(key);
        Intrinsics.checkNotNullExpressionValue(string, "this.getString(key)");
        return string;
    }

    public static final Set<Integer> collectIndices(JSONObject jSONObject) throws JSONException {
        Intrinsics.checkNotNullParameter(jSONObject, "<this>");
        ArrayList arrayList = new ArrayList();
        Iterator<String> itKeys = jSONObject.keys();
        Intrinsics.checkNotNullExpressionValue(itKeys, "this.keys()");
        while (itKeys.hasNext()) {
            JSONArray jSONArray = jSONObject.getJSONArray(itKeys.next());
            Intrinsics.checkNotNullExpressionValue(jSONArray, "this.getJSONArray(fieldKey)");
            int[] intArray = toIntArray(jSONArray);
            int length = intArray.length;
            int i = 0;
            while (i < length) {
                int i2 = intArray[i];
                i++;
                arrayList.add(Integer.valueOf(i2));
            }
        }
        return CollectionsKt.toSet(arrayList);
    }

    public static final int[] toIntArray(JSONArray jSONArray) {
        Intrinsics.checkNotNullParameter(jSONArray, "<this>");
        int length = jSONArray.length();
        int[] iArr = new int[length];
        int i = length - 1;
        if (i >= 0) {
            int i2 = 0;
            while (true) {
                int i3 = i2 + 1;
                iArr[i2] = jSONArray.optInt(i2);
                if (i3 > i) {
                    break;
                }
                i2 = i3;
            }
        }
        return iArr;
    }

    public static final BaseEvent toBaseEvent(JSONObject jSONObject) throws JSONException {
        Map<String, Object> mapObj;
        Map<String, Object> mapObj2;
        Map<String, Object> mapObj3;
        Map<String, Object> mapObj4;
        Plan planFromJSONObject;
        Intrinsics.checkNotNullParameter(jSONObject, "<this>");
        BaseEvent baseEvent = new BaseEvent();
        String string = jSONObject.getString(ConstantEventAttributes.EVENT_TYPE);
        Intrinsics.checkNotNullExpressionValue(string, "this.getString(\"event_type\")");
        baseEvent.setEventType(string);
        IngestionMetadata ingestionMetadataFromJSONObject$core = null;
        baseEvent.setUserId(optionalString(jSONObject, "user_id", null));
        baseEvent.setDeviceId(optionalString(jSONObject, "device_id", null));
        baseEvent.setTimestamp(jSONObject.has("time") ? Long.valueOf(jSONObject.getLong("time")) : null);
        JSONObject jSONObjectOptionalJSONObject = optionalJSONObject(jSONObject, "event_properties", null);
        baseEvent.setEventProperties((jSONObjectOptionalJSONObject == null || (mapObj = JSONKt.toMapObj(jSONObjectOptionalJSONObject)) == null) ? null : MapsKt.toMutableMap(mapObj));
        JSONObject jSONObjectOptionalJSONObject2 = optionalJSONObject(jSONObject, "user_properties", null);
        baseEvent.setUserProperties((jSONObjectOptionalJSONObject2 == null || (mapObj2 = JSONKt.toMapObj(jSONObjectOptionalJSONObject2)) == null) ? null : MapsKt.toMutableMap(mapObj2));
        JSONObject jSONObjectOptionalJSONObject3 = optionalJSONObject(jSONObject, "groups", null);
        baseEvent.setGroups((jSONObjectOptionalJSONObject3 == null || (mapObj3 = JSONKt.toMapObj(jSONObjectOptionalJSONObject3)) == null) ? null : MapsKt.toMutableMap(mapObj3));
        JSONObject jSONObjectOptionalJSONObject4 = optionalJSONObject(jSONObject, "group_properties", null);
        baseEvent.setGroupProperties((jSONObjectOptionalJSONObject4 == null || (mapObj4 = JSONKt.toMapObj(jSONObjectOptionalJSONObject4)) == null) ? null : MapsKt.toMutableMap(mapObj4));
        baseEvent.setAppVersion(optionalString(jSONObject, ConstantEventAttributes.APP_VERSION, null));
        baseEvent.setPlatform(optionalString(jSONObject, TrackingOptions.AMP_TRACKING_OPTION_PLATFORM, null));
        baseEvent.setOsName(optionalString(jSONObject, TrackingOptions.AMP_TRACKING_OPTION_OS_NAME, null));
        baseEvent.setOsVersion(optionalString(jSONObject, TrackingOptions.AMP_TRACKING_OPTION_OS_VERSION, null));
        baseEvent.setDeviceBrand(optionalString(jSONObject, TrackingOptions.AMP_TRACKING_OPTION_DEVICE_BRAND, null));
        baseEvent.setDeviceManufacturer(optionalString(jSONObject, TrackingOptions.AMP_TRACKING_OPTION_DEVICE_MANUFACTURER, null));
        baseEvent.setDeviceModel(optionalString(jSONObject, TrackingOptions.AMP_TRACKING_OPTION_DEVICE_MODEL, null));
        baseEvent.setCarrier(optionalString(jSONObject, TrackingOptions.AMP_TRACKING_OPTION_CARRIER, null));
        baseEvent.setCountry(optionalString(jSONObject, "country", null));
        baseEvent.setRegion(optionalString(jSONObject, TrackingOptions.AMP_TRACKING_OPTION_REGION, null));
        baseEvent.setCity(optionalString(jSONObject, TrackingOptions.AMP_TRACKING_OPTION_CITY, null));
        baseEvent.setDma(optionalString(jSONObject, TrackingOptions.AMP_TRACKING_OPTION_DMA, null));
        baseEvent.setLanguage(optionalString(jSONObject, "language", null));
        baseEvent.setPrice(jSONObject.has("price") ? Double.valueOf(jSONObject.getDouble("price")) : null);
        baseEvent.setQuantity(jSONObject.has(FirebaseAnalytics.Param.QUANTITY) ? Integer.valueOf(jSONObject.getInt(FirebaseAnalytics.Param.QUANTITY)) : null);
        baseEvent.setRevenue(jSONObject.has("revenue") ? Double.valueOf(jSONObject.getDouble("revenue")) : null);
        baseEvent.setProductId(optionalString(jSONObject, "productId", null));
        baseEvent.setRevenueType(optionalString(jSONObject, "revenueType", null));
        baseEvent.setLocationLat(jSONObject.has("location_lat") ? Double.valueOf(jSONObject.getDouble("location_lat")) : null);
        baseEvent.setLocationLng(jSONObject.has("location_lng") ? Double.valueOf(jSONObject.getDouble("location_lng")) : null);
        baseEvent.setIp(optionalString(jSONObject, "ip", null));
        baseEvent.setIdfa(optionalString(jSONObject, "idfa", null));
        baseEvent.setIdfv(optionalString(jSONObject, "idfv", null));
        baseEvent.setAdid(optionalString(jSONObject, TrackingOptions.AMP_TRACKING_OPTION_ADID, null));
        baseEvent.setAndroidId(optionalString(jSONObject, "android_id", null));
        baseEvent.setAppSetId(jSONObject.optString("android_app_set_id", null));
        baseEvent.setEventId(jSONObject.has("event_id") ? Long.valueOf(jSONObject.getLong("event_id")) : null);
        baseEvent.setSessionId(jSONObject.has(SDKAnalyticsEvents.PARAMETER_SESSION_ID) ? Long.valueOf(jSONObject.getLong(SDKAnalyticsEvents.PARAMETER_SESSION_ID)) : null);
        baseEvent.setInsertId(optionalString(jSONObject, "insert_id", null));
        baseEvent.setLibrary(jSONObject.has("library") ? jSONObject.getString("library") : null);
        baseEvent.setPartnerId(optionalString(jSONObject, "partner_id", null));
        if (jSONObject.has("plan")) {
            Plan.Companion companion = Plan.INSTANCE;
            JSONObject jSONObject2 = jSONObject.getJSONObject("plan");
            Intrinsics.checkNotNullExpressionValue(jSONObject2, "this.getJSONObject(\"plan\")");
            planFromJSONObject = companion.fromJSONObject(jSONObject2);
        } else {
            planFromJSONObject = null;
        }
        baseEvent.setPlan(planFromJSONObject);
        if (jSONObject.has("ingestion_metadata")) {
            IngestionMetadata.Companion companion2 = IngestionMetadata.INSTANCE;
            JSONObject jSONObject3 = jSONObject.getJSONObject("ingestion_metadata");
            Intrinsics.checkNotNullExpressionValue(jSONObject3, "this.getJSONObject(\"ingestion_metadata\")");
            ingestionMetadataFromJSONObject$core = companion2.fromJSONObject$core(jSONObject3);
        }
        baseEvent.setIngestionMetadata(ingestionMetadataFromJSONObject$core);
        return baseEvent;
    }

    public static final List<BaseEvent> toEvents(JSONArray jSONArray) throws JSONException {
        Intrinsics.checkNotNullParameter(jSONArray, "<this>");
        ArrayList arrayList = new ArrayList();
        Iterator<Integer> it = RangesKt.until(0, jSONArray.length()).iterator();
        while (it.hasNext()) {
            JSONObject jSONObject = jSONArray.getJSONObject(((IntIterator) it).nextInt());
            Intrinsics.checkNotNullExpressionValue(jSONObject, "this.getJSONObject(it)");
            arrayList.add(toBaseEvent(jSONObject));
        }
        return arrayList;
    }

    public static final Pair<List<JSONObject>, List<JSONObject>> split(JSONArray jSONArray) throws JSONException {
        Intrinsics.checkNotNullParameter(jSONArray, "<this>");
        int length = jSONArray.length() / 2;
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        Iterator<Integer> it = RangesKt.until(0, jSONArray.length()).iterator();
        while (it.hasNext()) {
            int iNextInt = ((IntIterator) it).nextInt();
            if (iNextInt < length) {
                JSONObject jSONObject = jSONArray.getJSONObject(iNextInt);
                Intrinsics.checkNotNullExpressionValue(jSONObject, "this.getJSONObject(index)");
                arrayList.add(jSONObject);
            } else {
                JSONObject jSONObject2 = jSONArray.getJSONObject(iNextInt);
                Intrinsics.checkNotNullExpressionValue(jSONObject2, "this.getJSONObject(index)");
                arrayList2.add(jSONObject2);
            }
        }
        return new Pair<>(arrayList, arrayList2);
    }

    public static final List<JSONObject> toJSONObjectList(JSONArray jSONArray) throws JSONException {
        Intrinsics.checkNotNullParameter(jSONArray, "<this>");
        ArrayList arrayList = new ArrayList();
        Iterator<Integer> it = RangesKt.until(0, jSONArray.length()).iterator();
        while (it.hasNext()) {
            JSONObject jSONObject = jSONArray.getJSONObject(((IntIterator) it).nextInt());
            Intrinsics.checkNotNullExpressionValue(jSONObject, "this.getJSONObject(it)");
            arrayList.add(jSONObject);
        }
        return arrayList;
    }

    public static final void addValue(JSONObject jSONObject, String key, Object obj) throws JSONException {
        Intrinsics.checkNotNullParameter(jSONObject, "<this>");
        Intrinsics.checkNotNullParameter(key, "key");
        if (obj == null) {
            return;
        }
        jSONObject.put(key, obj);
    }

    public static final JSONObject optionalJSONObject(JSONObject jSONObject, String key, JSONObject jSONObject2) {
        Intrinsics.checkNotNullParameter(jSONObject, "<this>");
        Intrinsics.checkNotNullParameter(key, "key");
        return jSONObject.has(key) ? jSONObject.getJSONObject(key) : jSONObject2;
    }

    public static final String optionalString(JSONObject jSONObject, String key, String str) {
        Intrinsics.checkNotNullParameter(jSONObject, "<this>");
        Intrinsics.checkNotNullParameter(key, "key");
        return jSONObject.has(key) ? jSONObject.getString(key) : str;
    }
}
