package com.amplitude.core.events;

import com.facebook.gamingservices.cloudgaming.internal.SDKConstants;
import java.util.Map;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: BaseEvent.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(m2721d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010%\n\u0002\u0010\u000e\n\u0002\u0010\u0000\n\u0002\b\u0013\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\b\u0016\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\b\u0010\u0019\u001a\u00020\u001aH\u0016J\u000e\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u001d\u001a\u00020\u0001R*\u0010\u0003\u001a\u0012\u0012\u0004\u0012\u00020\u0005\u0012\u0006\u0012\u0004\u0018\u00010\u0006\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0007\u0010\b\"\u0004\b\t\u0010\nR\u001a\u0010\u000b\u001a\u00020\u0005X\u0096.¢\u0006\u000e\n\u0000\u001a\u0004\b\f\u0010\r\"\u0004\b\u000e\u0010\u000fR*\u0010\u0010\u001a\u0012\u0012\u0004\u0012\u00020\u0005\u0012\u0006\u0012\u0004\u0018\u00010\u0006\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0011\u0010\b\"\u0004\b\u0012\u0010\nR*\u0010\u0013\u001a\u0012\u0012\u0004\u0012\u00020\u0005\u0012\u0006\u0012\u0004\u0018\u00010\u0006\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0014\u0010\b\"\u0004\b\u0015\u0010\nR*\u0010\u0016\u001a\u0012\u0012\u0004\u0012\u00020\u0005\u0012\u0006\u0012\u0004\u0018\u00010\u0006\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0017\u0010\b\"\u0004\b\u0018\u0010\n¨\u0006\u001e"}, m2722d2 = {"Lcom/amplitude/core/events/BaseEvent;", "Lcom/amplitude/core/events/EventOptions;", "()V", "eventProperties", "", "", "", "getEventProperties", "()Ljava/util/Map;", "setEventProperties", "(Ljava/util/Map;)V", "eventType", "getEventType", "()Ljava/lang/String;", "setEventType", "(Ljava/lang/String;)V", "groupProperties", "getGroupProperties", "setGroupProperties", "groups", "getGroups", "setGroups", "userProperties", "getUserProperties", "setUserProperties", "isValid", "", "mergeEventOptions", "", SDKConstants.PARAM_GAME_REQUESTS_OPTIONS, "core"}, m2723k = 1, m2724mv = {1, 5, 1}, m2726xi = 48)
public class BaseEvent extends EventOptions {
    private Map<String, Object> eventProperties;
    public String eventType;
    private Map<String, Object> groupProperties;
    private Map<String, Object> groups;
    private Map<String, Object> userProperties;

    public String getEventType() {
        String str = this.eventType;
        if (str != null) {
            return str;
        }
        Intrinsics.throwUninitializedPropertyAccessException("eventType");
        return null;
    }

    public void setEventType(String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.eventType = str;
    }

    public final Map<String, Object> getEventProperties() {
        return this.eventProperties;
    }

    public final void setEventProperties(Map<String, Object> map) {
        this.eventProperties = map;
    }

    public final Map<String, Object> getUserProperties() {
        return this.userProperties;
    }

    public final void setUserProperties(Map<String, Object> map) {
        this.userProperties = map;
    }

    public final Map<String, Object> getGroups() {
        return this.groups;
    }

    public final void setGroups(Map<String, Object> map) {
        this.groups = map;
    }

    public final Map<String, Object> getGroupProperties() {
        return this.groupProperties;
    }

    public final void setGroupProperties(Map<String, Object> map) {
        this.groupProperties = map;
    }

    public final void mergeEventOptions(EventOptions options) {
        Intrinsics.checkNotNullParameter(options, "options");
        String userId = options.getUserId();
        if (userId != null) {
            setUserId(userId);
        }
        String deviceId = options.getDeviceId();
        if (deviceId != null) {
            setDeviceId(deviceId);
        }
        Long timestamp = options.getTimestamp();
        if (timestamp != null) {
            setTimestamp(Long.valueOf(timestamp.longValue()));
        }
        Long eventId = options.getEventId();
        if (eventId != null) {
            setEventId(Long.valueOf(eventId.longValue()));
        }
        String insertId = options.getInsertId();
        if (insertId != null) {
            setInsertId(insertId);
        }
        Double locationLat = options.getLocationLat();
        if (locationLat != null) {
            setLocationLat(Double.valueOf(locationLat.doubleValue()));
        }
        Double locationLng = options.getLocationLng();
        if (locationLng != null) {
            setLocationLng(Double.valueOf(locationLng.doubleValue()));
        }
        String appVersion = options.getAppVersion();
        if (appVersion != null) {
            setAppVersion(appVersion);
        }
        String versionName = options.getVersionName();
        if (versionName != null) {
            setVersionName(versionName);
        }
        String platform = options.getPlatform();
        if (platform != null) {
            setPlatform(platform);
        }
        String osName = options.getOsName();
        if (osName != null) {
            setOsName(osName);
        }
        String osVersion = options.getOsVersion();
        if (osVersion != null) {
            setOsVersion(osVersion);
        }
        String deviceBrand = options.getDeviceBrand();
        if (deviceBrand != null) {
            setDeviceBrand(deviceBrand);
        }
        String deviceManufacturer = options.getDeviceManufacturer();
        if (deviceManufacturer != null) {
            setDeviceManufacturer(deviceManufacturer);
        }
        String deviceModel = options.getDeviceModel();
        if (deviceModel != null) {
            setDeviceModel(deviceModel);
        }
        String carrier = options.getCarrier();
        if (carrier != null) {
            setCarrier(carrier);
        }
        String country = options.getCountry();
        if (country != null) {
            setCountry(country);
        }
        String region = options.getRegion();
        if (region != null) {
            setRegion(region);
        }
        String city = options.getCity();
        if (city != null) {
            setCity(city);
        }
        String dma = options.getDma();
        if (dma != null) {
            setDma(dma);
        }
        String idfa = options.getIdfa();
        if (idfa != null) {
            setIdfa(idfa);
        }
        String idfv = options.getIdfv();
        if (idfv != null) {
            setIdfv(idfv);
        }
        String adid = options.getAdid();
        if (adid != null) {
            setAdid(adid);
        }
        String appSetId = options.getAppSetId();
        if (appSetId != null) {
            setAppSetId(appSetId);
        }
        String androidId = options.getAndroidId();
        if (androidId != null) {
            setAndroidId(androidId);
        }
        String language = options.getLanguage();
        if (language != null) {
            setLanguage(language);
        }
        String library = options.getLibrary();
        if (library != null) {
            setLibrary(library);
        }
        String ip = options.getIp();
        if (ip != null) {
            setIp(ip);
        }
        Plan plan = options.getPlan();
        if (plan != null) {
            setPlan(plan);
        }
        IngestionMetadata ingestionMetadata = options.getIngestionMetadata();
        if (ingestionMetadata != null) {
            setIngestionMetadata(ingestionMetadata);
        }
        Double revenue = options.getRevenue();
        if (revenue != null) {
            setRevenue(Double.valueOf(revenue.doubleValue()));
        }
        Double price = options.getPrice();
        if (price != null) {
            setPrice(Double.valueOf(price.doubleValue()));
        }
        Integer quantity = options.getQuantity();
        if (quantity != null) {
            setQuantity(Integer.valueOf(quantity.intValue()));
        }
        String productId = options.getProductId();
        if (productId != null) {
            setProductId(productId);
        }
        String revenueType = options.getRevenueType();
        if (revenueType != null) {
            setRevenueType(revenueType);
        }
        Map<String, Object> extra = options.getExtra();
        if (extra != null) {
            setExtra(extra);
        }
        Function3<BaseEvent, Integer, String, Unit> callback = options.getCallback();
        if (callback != null) {
            setCallback(callback);
        }
        String partnerId = options.getPartnerId();
        if (partnerId != null) {
            setPartnerId(partnerId);
        }
        Long sessionId = options.getSessionId();
        if (sessionId == null) {
            return;
        }
        setSessionId(Long.valueOf(sessionId.longValue()));
    }

    public boolean isValid() {
        return (getUserId() == null && getDeviceId() == null) ? false : true;
    }
}
