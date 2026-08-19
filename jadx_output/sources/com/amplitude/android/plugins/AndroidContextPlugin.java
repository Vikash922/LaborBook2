package com.amplitude.android.plugins;

import android.location.Location;
import com.amplitude.android.Configuration;
import com.amplitude.android.TrackingOptions;
import com.amplitude.common.android.AndroidContextProvider;
import com.amplitude.core.Amplitude;
import com.amplitude.core.events.BaseEvent;
import com.amplitude.core.events.IngestionMetadata;
import com.amplitude.core.events.Plan;
import com.amplitude.core.platform.Plugin;
import com.itextpdf.svg.SvgConstants;
import java.util.Set;
import java.util.UUID;
import kotlin.Metadata;
import kotlin.collections.SetsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;

/* JADX INFO: compiled from: AndroidContextPlugin.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(m2721d1 = {"\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\b\u0016\u0018\u0000 \u001b2\u00020\u0001:\u0001\u001bB\u0005¢\u0006\u0002\u0010\u0002J\u0010\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u0012H\u0002J\u0012\u0010\u0013\u001a\u0004\u0018\u00010\u00122\u0006\u0010\u0011\u001a\u00020\u0012H\u0016J\u000e\u0010\u0014\u001a\u00020\u00102\u0006\u0010\u0015\u001a\u00020\u0016J\u0010\u0010\u0017\u001a\u00020\u00102\u0006\u0010\u0018\u001a\u00020\u0019H\u0014J\u0010\u0010\u001a\u001a\u00020\u00102\u0006\u0010\u0003\u001a\u00020\u0004H\u0016R\u001a\u0010\u0003\u001a\u00020\u0004X\u0096.¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR\u000e\u0010\t\u001a\u00020\nX\u0082.¢\u0006\u0002\n\u0000R\u0014\u0010\u000b\u001a\u00020\fX\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000e¨\u0006\u001c"}, m2722d2 = {"Lcom/amplitude/android/plugins/AndroidContextPlugin;", "Lcom/amplitude/core/platform/Plugin;", "()V", "amplitude", "Lcom/amplitude/core/Amplitude;", "getAmplitude", "()Lcom/amplitude/core/Amplitude;", "setAmplitude", "(Lcom/amplitude/core/Amplitude;)V", "contextProvider", "Lcom/amplitude/common/android/AndroidContextProvider;", "type", "Lcom/amplitude/core/platform/Plugin$Type;", "getType", "()Lcom/amplitude/core/platform/Plugin$Type;", "applyContextData", "", "event", "Lcom/amplitude/core/events/BaseEvent;", "execute", "initializeDeviceId", "configuration", "Lcom/amplitude/android/Configuration;", "setDeviceId", "deviceId", "", "setup", "Companion", "android_release"}, m2723k = 1, m2724mv = {1, 5, 1}, m2726xi = 48)
public class AndroidContextPlugin implements Plugin {
    public static final String SDK_LIBRARY = "amplitude-analytics-android";
    public static final String SDK_VERSION = "1.16.8";
    public Amplitude amplitude;
    private AndroidContextProvider contextProvider;
    private final Plugin.Type type = Plugin.Type.Before;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    public static final String PLATFORM = "Android";
    private static final Set<String> INVALID_DEVICE_IDS = SetsKt.setOf((Object[]) new String[]{"", "9774d56d682e549c", "unknown", "000000000000000", PLATFORM, "DEFACE", "00000000-0000-0000-0000-000000000000"});

    @Override // com.amplitude.core.platform.Plugin
    public Plugin.Type getType() {
        return this.type;
    }

    @Override // com.amplitude.core.platform.Plugin
    public Amplitude getAmplitude() {
        Amplitude amplitude = this.amplitude;
        if (amplitude != null) {
            return amplitude;
        }
        Intrinsics.throwUninitializedPropertyAccessException("amplitude");
        return null;
    }

    @Override // com.amplitude.core.platform.Plugin
    public void setAmplitude(Amplitude amplitude) {
        Intrinsics.checkNotNullParameter(amplitude, "<set-?>");
        this.amplitude = amplitude;
    }

    @Override // com.amplitude.core.platform.Plugin
    public void setup(Amplitude amplitude) {
        Intrinsics.checkNotNullParameter(amplitude, "amplitude");
        super.setup(amplitude);
        Configuration configuration = (Configuration) amplitude.getConfiguration();
        this.contextProvider = new AndroidContextProvider(configuration.getContext(), configuration.getLocationListening(), configuration.getTrackingOptions().shouldTrackAdid());
        initializeDeviceId(configuration);
    }

    @Override // com.amplitude.core.platform.Plugin
    public BaseEvent execute(BaseEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        applyContextData(event);
        return event;
    }

    public final void initializeDeviceId(Configuration configuration) {
        Intrinsics.checkNotNullParameter(configuration, "configuration");
        String deviceId = configuration.getDeviceId();
        if (deviceId != null) {
            setDeviceId(deviceId);
            return;
        }
        String deviceId2 = getAmplitude().getStore().getDeviceId();
        AndroidContextProvider androidContextProvider = null;
        if (deviceId2 == null || !INSTANCE.validDeviceId(deviceId2) || StringsKt.endsWith$default(deviceId2, "S", false, 2, (Object) null)) {
            if (!configuration.getNewDeviceIdPerInstall() && configuration.getUseAdvertisingIdForDeviceId()) {
                AndroidContextProvider androidContextProvider2 = this.contextProvider;
                if (androidContextProvider2 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("contextProvider");
                    androidContextProvider2 = null;
                }
                if (!androidContextProvider2.isLimitAdTrackingEnabled()) {
                    AndroidContextProvider androidContextProvider3 = this.contextProvider;
                    if (androidContextProvider3 == null) {
                        Intrinsics.throwUninitializedPropertyAccessException("contextProvider");
                        androidContextProvider3 = null;
                    }
                    String advertisingId = androidContextProvider3.getAdvertisingId();
                    if (advertisingId != null && INSTANCE.validDeviceId(advertisingId)) {
                        setDeviceId(advertisingId);
                        return;
                    }
                }
            }
            if (configuration.getUseAppSetIdForDeviceId()) {
                AndroidContextProvider androidContextProvider4 = this.contextProvider;
                if (androidContextProvider4 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("contextProvider");
                } else {
                    androidContextProvider = androidContextProvider4;
                }
                String appSetId = androidContextProvider.getAppSetId();
                if (appSetId != null && INSTANCE.validDeviceId(appSetId)) {
                    setDeviceId(Intrinsics.stringPlus(appSetId, "S"));
                    return;
                }
            }
            setDeviceId(Intrinsics.stringPlus(AndroidContextProvider.INSTANCE.generateUUID(), SvgConstants.Attributes.PATH_DATA_CATMULL_CURVE));
        }
    }

    private final void applyContextData(BaseEvent event) {
        IngestionMetadata ingestionMetadata;
        Plan plan;
        String partnerId;
        Configuration configuration = (Configuration) getAmplitude().getConfiguration();
        if (event.getTimestamp() == null) {
            event.setTimestamp(Long.valueOf(System.currentTimeMillis()));
        }
        if (event.getInsertId() == null) {
            event.setInsertId(UUID.randomUUID().toString());
        }
        if (event.getLibrary() == null) {
            event.setLibrary("amplitude-analytics-android/1.16.8");
        }
        if (event.getUserId() == null) {
            event.setUserId(getAmplitude().getStore().getUserId());
        }
        if (event.getDeviceId() == null) {
            event.setDeviceId(getAmplitude().getStore().getDeviceId());
        }
        TrackingOptions trackingOptions = configuration.getTrackingOptions();
        if (configuration.getEnableCoppaControl()) {
            trackingOptions.mergeIn(TrackingOptions.INSTANCE.forCoppaControl());
        }
        AndroidContextProvider androidContextProvider = null;
        if (trackingOptions.shouldTrackVersionName()) {
            AndroidContextProvider androidContextProvider2 = this.contextProvider;
            if (androidContextProvider2 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("contextProvider");
                androidContextProvider2 = null;
            }
            event.setVersionName(androidContextProvider2.getVersionName());
        }
        if (trackingOptions.shouldTrackOsName()) {
            AndroidContextProvider androidContextProvider3 = this.contextProvider;
            if (androidContextProvider3 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("contextProvider");
                androidContextProvider3 = null;
            }
            event.setOsName(androidContextProvider3.getOsName());
        }
        if (trackingOptions.shouldTrackOsVersion()) {
            AndroidContextProvider androidContextProvider4 = this.contextProvider;
            if (androidContextProvider4 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("contextProvider");
                androidContextProvider4 = null;
            }
            event.setOsVersion(androidContextProvider4.getOsVersion());
        }
        if (trackingOptions.shouldTrackDeviceBrand()) {
            AndroidContextProvider androidContextProvider5 = this.contextProvider;
            if (androidContextProvider5 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("contextProvider");
                androidContextProvider5 = null;
            }
            event.setDeviceBrand(androidContextProvider5.getBrand());
        }
        if (trackingOptions.shouldTrackDeviceManufacturer()) {
            AndroidContextProvider androidContextProvider6 = this.contextProvider;
            if (androidContextProvider6 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("contextProvider");
                androidContextProvider6 = null;
            }
            event.setDeviceManufacturer(androidContextProvider6.getManufacturer());
        }
        if (trackingOptions.shouldTrackDeviceModel()) {
            AndroidContextProvider androidContextProvider7 = this.contextProvider;
            if (androidContextProvider7 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("contextProvider");
                androidContextProvider7 = null;
            }
            event.setDeviceModel(androidContextProvider7.getModel());
        }
        if (trackingOptions.shouldTrackCarrier()) {
            AndroidContextProvider androidContextProvider8 = this.contextProvider;
            if (androidContextProvider8 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("contextProvider");
                androidContextProvider8 = null;
            }
            event.setCarrier(androidContextProvider8.getCarrier());
        }
        if (trackingOptions.shouldTrackIpAddress() && event.getIp() == null) {
            event.setIp("$remote");
        }
        if (trackingOptions.shouldTrackCountry() && event.getIp() != "$remote") {
            AndroidContextProvider androidContextProvider9 = this.contextProvider;
            if (androidContextProvider9 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("contextProvider");
                androidContextProvider9 = null;
            }
            event.setCountry(androidContextProvider9.getCountry());
        }
        if (trackingOptions.shouldTrackLanguage()) {
            AndroidContextProvider androidContextProvider10 = this.contextProvider;
            if (androidContextProvider10 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("contextProvider");
                androidContextProvider10 = null;
            }
            event.setLanguage(androidContextProvider10.getLanguage());
        }
        if (trackingOptions.shouldTrackPlatform()) {
            event.setPlatform(PLATFORM);
        }
        if (trackingOptions.shouldTrackLatLng()) {
            AndroidContextProvider androidContextProvider11 = this.contextProvider;
            if (androidContextProvider11 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("contextProvider");
                androidContextProvider11 = null;
            }
            Location mostRecentLocation = androidContextProvider11.getMostRecentLocation();
            if (mostRecentLocation != null) {
                event.setLocationLat(Double.valueOf(mostRecentLocation.getLatitude()));
                event.setLocationLng(Double.valueOf(mostRecentLocation.getLongitude()));
            }
        }
        if (trackingOptions.shouldTrackAdid()) {
            AndroidContextProvider androidContextProvider12 = this.contextProvider;
            if (androidContextProvider12 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("contextProvider");
                androidContextProvider12 = null;
            }
            String advertisingId = androidContextProvider12.getAdvertisingId();
            if (advertisingId != null) {
                event.setAdid(advertisingId);
            }
        }
        if (trackingOptions.shouldTrackAppSetId()) {
            AndroidContextProvider androidContextProvider13 = this.contextProvider;
            if (androidContextProvider13 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("contextProvider");
            } else {
                androidContextProvider = androidContextProvider13;
            }
            String appSetId = androidContextProvider.getAppSetId();
            if (appSetId != null) {
                event.setAppSetId(appSetId);
            }
        }
        if (event.getPartnerId() == null && (partnerId = getAmplitude().getConfiguration().getPartnerId()) != null) {
            event.setPartnerId(partnerId);
        }
        if (event.getPlan() == null && (plan = getAmplitude().getConfiguration().getPlan()) != null) {
            event.setPlan(plan.clone());
        }
        if (event.getIngestionMetadata() != null || (ingestionMetadata = getAmplitude().getConfiguration().getIngestionMetadata()) == null) {
            return;
        }
        event.setIngestionMetadata(ingestionMetadata.clone());
    }

    protected void setDeviceId(String deviceId) {
        Intrinsics.checkNotNullParameter(deviceId, "deviceId");
        getAmplitude().setDeviceId(deviceId);
    }

    /* JADX INFO: compiled from: AndroidContextPlugin.kt */
    @Metadata(m2721d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\"\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u0002\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u000e\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u0005R\u0014\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0005X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0005X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\u0005X\u0086T¢\u0006\u0002\n\u0000¨\u0006\f"}, m2722d2 = {"Lcom/amplitude/android/plugins/AndroidContextPlugin$Companion;", "", "()V", "INVALID_DEVICE_IDS", "", "", "PLATFORM", "SDK_LIBRARY", "SDK_VERSION", "validDeviceId", "", "deviceId", "android_release"}, m2723k = 1, m2724mv = {1, 5, 1}, m2726xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final boolean validDeviceId(String deviceId) {
            Intrinsics.checkNotNullParameter(deviceId, "deviceId");
            return (deviceId.length() == 0 || AndroidContextPlugin.INVALID_DEVICE_IDS.contains(deviceId)) ? false : true;
        }
    }
}
