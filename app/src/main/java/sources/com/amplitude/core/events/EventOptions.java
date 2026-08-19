package com.amplitude.core.events;

import com.amplitude.android.TrackingOptions;
import com.facebook.appevents.iap.InAppPurchaseConstants;
import com.facebook.gamingservices.cloudgaming.internal.SDKConstants;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.google.firebase.remoteconfig.RemoteConfigConstants;
import java.util.Map;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function3;

/* JADX INFO: compiled from: EventOptions.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(m2721d1 = {"\u0000`\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u000e\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\b\u001d\n\u0002\u0010\t\n\u0002\b\u0006\n\u0002\u0010$\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\u0011\n\u0002\u0010\u0006\n\u0002\b\u0012\n\u0002\u0018\u0002\n\u0002\b)\b\u0016\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002R\u001c\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR\u001c\u0010\t\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\n\u0010\u0006\"\u0004\b\u000b\u0010\bR\u001c\u0010\f\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\r\u0010\u0006\"\u0004\b\u000e\u0010\bR\u001c\u0010\u000f\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0010\u0010\u0006\"\u0004\b\u0011\u0010\bR\u001a\u0010\u0012\u001a\u00020\u0013X\u0080\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0014\u0010\u0015\"\u0004\b\u0016\u0010\u0017RX\u0010\u0018\u001a@\u0012\u0004\u0012\u00020\u001a\u0012\u0013\u0012\u00110\u0013¢\u0006\f\b\u001b\u0012\b\b\u001c\u0012\u0004\b\b(\u001d\u0012\u0013\u0012\u00110\u0004¢\u0006\f\b\u001b\u0012\b\b\u001c\u0012\u0004\b\b(\u001e\u0012\u0004\u0012\u00020\u001f\u0018\u00010\u0019j\u0004\u0018\u0001` X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b!\u0010\"\"\u0004\b#\u0010$R\u001c\u0010%\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b&\u0010\u0006\"\u0004\b'\u0010\bR\u001c\u0010(\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b)\u0010\u0006\"\u0004\b*\u0010\bR\u001c\u0010+\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b,\u0010\u0006\"\u0004\b-\u0010\bR\u001c\u0010.\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b/\u0010\u0006\"\u0004\b0\u0010\bR\u001c\u00101\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b2\u0010\u0006\"\u0004\b3\u0010\bR\u001c\u00104\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b5\u0010\u0006\"\u0004\b6\u0010\bR\u001c\u00107\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b8\u0010\u0006\"\u0004\b9\u0010\bR\u001c\u0010:\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b;\u0010\u0006\"\u0004\b<\u0010\bR\u001e\u0010=\u001a\u0004\u0018\u00010>X\u0086\u000e¢\u0006\u0010\n\u0002\u0010C\u001a\u0004\b?\u0010@\"\u0004\bA\u0010BR(\u0010D\u001a\u0010\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0001\u0018\u00010EX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bF\u0010G\"\u0004\bH\u0010IR\u001c\u0010J\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bK\u0010\u0006\"\u0004\bL\u0010\bR\u001c\u0010M\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bN\u0010\u0006\"\u0004\bO\u0010\bR\u001c\u0010P\u001a\u0004\u0018\u00010QX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bR\u0010S\"\u0004\bT\u0010UR\u001c\u0010V\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bW\u0010\u0006\"\u0004\bX\u0010\bR\u001c\u0010Y\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bZ\u0010\u0006\"\u0004\b[\u0010\bR\u001c\u0010\\\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b]\u0010\u0006\"\u0004\b^\u0010\bR\u001c\u0010_\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b`\u0010\u0006\"\u0004\ba\u0010\bR\u001e\u0010b\u001a\u0004\u0018\u00010cX\u0086\u000e¢\u0006\u0010\n\u0002\u0010h\u001a\u0004\bd\u0010e\"\u0004\bf\u0010gR\u001e\u0010i\u001a\u0004\u0018\u00010cX\u0086\u000e¢\u0006\u0010\n\u0002\u0010h\u001a\u0004\bj\u0010e\"\u0004\bk\u0010gR\u001c\u0010l\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bm\u0010\u0006\"\u0004\bn\u0010\bR\u001c\u0010o\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bp\u0010\u0006\"\u0004\bq\u0010\bR\u001c\u0010r\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bs\u0010\u0006\"\u0004\bt\u0010\bR\u001c\u0010u\u001a\u0004\u0018\u00010vX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bw\u0010x\"\u0004\by\u0010zR\u001c\u0010{\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b|\u0010\u0006\"\u0004\b}\u0010\bR\u001f\u0010~\u001a\u0004\u0018\u00010cX\u0086\u000e¢\u0006\u0011\n\u0002\u0010h\u001a\u0004\b\u007f\u0010e\"\u0005\b\u0080\u0001\u0010gR\u001f\u0010\u0081\u0001\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u0010\n\u0000\u001a\u0005\b\u0082\u0001\u0010\u0006\"\u0005\b\u0083\u0001\u0010\bR$\u0010\u0084\u0001\u001a\u0004\u0018\u00010\u0013X\u0086\u000e¢\u0006\u0015\n\u0003\u0010\u0089\u0001\u001a\u0006\b\u0085\u0001\u0010\u0086\u0001\"\u0006\b\u0087\u0001\u0010\u0088\u0001R\u001f\u0010\u008a\u0001\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u0010\n\u0000\u001a\u0005\b\u008b\u0001\u0010\u0006\"\u0005\b\u008c\u0001\u0010\bR!\u0010\u008d\u0001\u001a\u0004\u0018\u00010cX\u0086\u000e¢\u0006\u0012\n\u0002\u0010h\u001a\u0005\b\u008e\u0001\u0010e\"\u0005\b\u008f\u0001\u0010gR\u001f\u0010\u0090\u0001\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u0010\n\u0000\u001a\u0005\b\u0091\u0001\u0010\u0006\"\u0005\b\u0092\u0001\u0010\bR!\u0010\u0093\u0001\u001a\u0004\u0018\u00010>X\u0086\u000e¢\u0006\u0012\n\u0002\u0010C\u001a\u0005\b\u0094\u0001\u0010@\"\u0005\b\u0095\u0001\u0010BR!\u0010\u0096\u0001\u001a\u0004\u0018\u00010>X\u0086\u000e¢\u0006\u0012\n\u0002\u0010C\u001a\u0005\b\u0097\u0001\u0010@\"\u0005\b\u0098\u0001\u0010BR\u001f\u0010\u0099\u0001\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u0010\n\u0000\u001a\u0005\b\u009a\u0001\u0010\u0006\"\u0005\b\u009b\u0001\u0010\bR\u001f\u0010\u009c\u0001\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u0010\n\u0000\u001a\u0005\b\u009d\u0001\u0010\u0006\"\u0005\b\u009e\u0001\u0010\b¨\u0006\u009f\u0001"}, m2722d2 = {"Lcom/amplitude/core/events/EventOptions;", "", "()V", TrackingOptions.AMP_TRACKING_OPTION_ADID, "", "getAdid", "()Ljava/lang/String;", "setAdid", "(Ljava/lang/String;)V", "androidId", "getAndroidId", "setAndroidId", "appSetId", "getAppSetId", "setAppSetId", RemoteConfigConstants.RequestFieldKey.APP_VERSION, "getAppVersion", "setAppVersion", "attempts", "", "getAttempts$core", "()I", "setAttempts$core", "(I)V", "callback", "Lkotlin/Function3;", "Lcom/amplitude/core/events/BaseEvent;", "Lkotlin/ParameterName;", "name", "status", "message", "", "Lcom/amplitude/core/EventCallBack;", "getCallback", "()Lkotlin/jvm/functions/Function3;", "setCallback", "(Lkotlin/jvm/functions/Function3;)V", TrackingOptions.AMP_TRACKING_OPTION_CARRIER, "getCarrier", "setCarrier", TrackingOptions.AMP_TRACKING_OPTION_CITY, "getCity", "setCity", "country", "getCountry", "setCountry", "deviceBrand", "getDeviceBrand", "setDeviceBrand", "deviceId", "getDeviceId", "setDeviceId", "deviceManufacturer", "getDeviceManufacturer", "setDeviceManufacturer", "deviceModel", "getDeviceModel", "setDeviceModel", TrackingOptions.AMP_TRACKING_OPTION_DMA, "getDma", "setDma", "eventId", "", "getEventId", "()Ljava/lang/Long;", "setEventId", "(Ljava/lang/Long;)V", "Ljava/lang/Long;", "extra", "", "getExtra", "()Ljava/util/Map;", "setExtra", "(Ljava/util/Map;)V", "idfa", "getIdfa", "setIdfa", "idfv", "getIdfv", "setIdfv", "ingestionMetadata", "Lcom/amplitude/core/events/IngestionMetadata;", "getIngestionMetadata", "()Lcom/amplitude/core/events/IngestionMetadata;", "setIngestionMetadata", "(Lcom/amplitude/core/events/IngestionMetadata;)V", "insertId", "getInsertId", "setInsertId", "ip", "getIp", "setIp", "language", "getLanguage", "setLanguage", "library", "getLibrary", "setLibrary", "locationLat", "", "getLocationLat", "()Ljava/lang/Double;", "setLocationLat", "(Ljava/lang/Double;)V", "Ljava/lang/Double;", "locationLng", "getLocationLng", "setLocationLng", "osName", "getOsName", "setOsName", "osVersion", "getOsVersion", "setOsVersion", "partnerId", "getPartnerId", "setPartnerId", "plan", "Lcom/amplitude/core/events/Plan;", "getPlan", "()Lcom/amplitude/core/events/Plan;", "setPlan", "(Lcom/amplitude/core/events/Plan;)V", TrackingOptions.AMP_TRACKING_OPTION_PLATFORM, "getPlatform", "setPlatform", "price", "getPrice", "setPrice", "productId", "getProductId", InAppPurchaseConstants.METHOD_SET_PRODUCT_ID, FirebaseAnalytics.Param.QUANTITY, "getQuantity", "()Ljava/lang/Integer;", "setQuantity", "(Ljava/lang/Integer;)V", "Ljava/lang/Integer;", TrackingOptions.AMP_TRACKING_OPTION_REGION, "getRegion", "setRegion", "revenue", "getRevenue", "setRevenue", "revenueType", "getRevenueType", "setRevenueType", "sessionId", "getSessionId", "setSessionId", SDKConstants.PARAM_DEBUG_MESSAGE_TIMESTAMP, "getTimestamp", "setTimestamp", "userId", "getUserId", "setUserId", "versionName", "getVersionName", "setVersionName", "core"}, m2723k = 1, m2724mv = {1, 5, 1}, m2726xi = 48)
public class EventOptions {
    private String adid;
    private String androidId;
    private String appSetId;
    private String appVersion;
    private int attempts;
    private Function3<? super BaseEvent, ? super Integer, ? super String, Unit> callback;
    private String carrier;
    private String city;
    private String country;
    private String deviceBrand;
    private String deviceId;
    private String deviceManufacturer;
    private String deviceModel;
    private String dma;
    private Long eventId;
    private Map<String, ? extends Object> extra;
    private String idfa;
    private String idfv;
    private IngestionMetadata ingestionMetadata;
    private String insertId;
    private String ip;
    private String language;
    private String library;
    private Double locationLat;
    private Double locationLng;
    private String osName;
    private String osVersion;
    private String partnerId;
    private Plan plan;
    private String platform;
    private Double price;
    private String productId;
    private Integer quantity;
    private String region;
    private Double revenue;
    private String revenueType;
    private Long sessionId;
    private Long timestamp;
    private String userId;
    private String versionName;

    public final String getUserId() {
        return this.userId;
    }

    public final void setUserId(String str) {
        this.userId = str;
    }

    public final String getDeviceId() {
        return this.deviceId;
    }

    public final void setDeviceId(String str) {
        this.deviceId = str;
    }

    public final Long getTimestamp() {
        return this.timestamp;
    }

    public final void setTimestamp(Long l) {
        this.timestamp = l;
    }

    public final Long getEventId() {
        return this.eventId;
    }

    public final void setEventId(Long l) {
        this.eventId = l;
    }

    public final Long getSessionId() {
        return this.sessionId;
    }

    public final void setSessionId(Long l) {
        this.sessionId = l;
    }

    public final String getInsertId() {
        return this.insertId;
    }

    public final void setInsertId(String str) {
        this.insertId = str;
    }

    public final Double getLocationLat() {
        return this.locationLat;
    }

    public final void setLocationLat(Double d) {
        this.locationLat = d;
    }

    public final Double getLocationLng() {
        return this.locationLng;
    }

    public final void setLocationLng(Double d) {
        this.locationLng = d;
    }

    public final String getAppVersion() {
        return this.appVersion;
    }

    public final void setAppVersion(String str) {
        this.appVersion = str;
    }

    public final String getVersionName() {
        return this.versionName;
    }

    public final void setVersionName(String str) {
        this.versionName = str;
    }

    public final String getPlatform() {
        return this.platform;
    }

    public final void setPlatform(String str) {
        this.platform = str;
    }

    public final String getOsName() {
        return this.osName;
    }

    public final void setOsName(String str) {
        this.osName = str;
    }

    public final String getOsVersion() {
        return this.osVersion;
    }

    public final void setOsVersion(String str) {
        this.osVersion = str;
    }

    public final String getDeviceBrand() {
        return this.deviceBrand;
    }

    public final void setDeviceBrand(String str) {
        this.deviceBrand = str;
    }

    public final String getDeviceManufacturer() {
        return this.deviceManufacturer;
    }

    public final void setDeviceManufacturer(String str) {
        this.deviceManufacturer = str;
    }

    public final String getDeviceModel() {
        return this.deviceModel;
    }

    public final void setDeviceModel(String str) {
        this.deviceModel = str;
    }

    public final String getCarrier() {
        return this.carrier;
    }

    public final void setCarrier(String str) {
        this.carrier = str;
    }

    public final String getCountry() {
        return this.country;
    }

    public final void setCountry(String str) {
        this.country = str;
    }

    public final String getRegion() {
        return this.region;
    }

    public final void setRegion(String str) {
        this.region = str;
    }

    public final String getCity() {
        return this.city;
    }

    public final void setCity(String str) {
        this.city = str;
    }

    public final String getDma() {
        return this.dma;
    }

    public final void setDma(String str) {
        this.dma = str;
    }

    public final String getIdfa() {
        return this.idfa;
    }

    public final void setIdfa(String str) {
        this.idfa = str;
    }

    public final String getIdfv() {
        return this.idfv;
    }

    public final void setIdfv(String str) {
        this.idfv = str;
    }

    public final String getAdid() {
        return this.adid;
    }

    public final void setAdid(String str) {
        this.adid = str;
    }

    public final String getAppSetId() {
        return this.appSetId;
    }

    public final void setAppSetId(String str) {
        this.appSetId = str;
    }

    public final String getAndroidId() {
        return this.androidId;
    }

    public final void setAndroidId(String str) {
        this.androidId = str;
    }

    public final String getLanguage() {
        return this.language;
    }

    public final void setLanguage(String str) {
        this.language = str;
    }

    public final String getLibrary() {
        return this.library;
    }

    public final void setLibrary(String str) {
        this.library = str;
    }

    public final String getIp() {
        return this.ip;
    }

    public final void setIp(String str) {
        this.ip = str;
    }

    public final Plan getPlan() {
        return this.plan;
    }

    public final void setPlan(Plan plan) {
        this.plan = plan;
    }

    public final IngestionMetadata getIngestionMetadata() {
        return this.ingestionMetadata;
    }

    public final void setIngestionMetadata(IngestionMetadata ingestionMetadata) {
        this.ingestionMetadata = ingestionMetadata;
    }

    public final Double getRevenue() {
        return this.revenue;
    }

    public final void setRevenue(Double d) {
        this.revenue = d;
    }

    public final Double getPrice() {
        return this.price;
    }

    public final void setPrice(Double d) {
        this.price = d;
    }

    public final Integer getQuantity() {
        return this.quantity;
    }

    public final void setQuantity(Integer num) {
        this.quantity = num;
    }

    public final String getProductId() {
        return this.productId;
    }

    public final void setProductId(String str) {
        this.productId = str;
    }

    public final String getRevenueType() {
        return this.revenueType;
    }

    public final void setRevenueType(String str) {
        this.revenueType = str;
    }

    public final Map<String, Object> getExtra() {
        return this.extra;
    }

    public final void setExtra(Map<String, ? extends Object> map) {
        this.extra = map;
    }

    public final Function3<BaseEvent, Integer, String, Unit> getCallback() {
        return this.callback;
    }

    public final void setCallback(Function3<? super BaseEvent, ? super Integer, ? super String, Unit> function3) {
        this.callback = function3;
    }

    public final String getPartnerId() {
        return this.partnerId;
    }

    public final void setPartnerId(String str) {
        this.partnerId = str;
    }

    /* JADX INFO: renamed from: getAttempts$core, reason: from getter */
    public final int getAttempts() {
        return this.attempts;
    }

    public final void setAttempts$core(int i) {
        this.attempts = i;
    }
}
