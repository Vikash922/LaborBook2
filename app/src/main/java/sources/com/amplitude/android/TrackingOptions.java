package com.amplitude.android;

import com.itextpdf.forms.xfdf.XfdfConstants;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: TrackingOptions.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(m2721d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010#\n\u0002\u0010\u000e\n\u0002\b\u0016\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0017\u0018\u0000 62\u00020\u0001:\u00016B\u0005¢\u0006\u0002\u0010\u0002J\u0006\u0010\n\u001a\u00020\u0000J\u0006\u0010\u000b\u001a\u00020\u0000J\u0006\u0010\f\u001a\u00020\u0000J\u0006\u0010\r\u001a\u00020\u0000J\u0006\u0010\u000e\u001a\u00020\u0000J\u0006\u0010\u000f\u001a\u00020\u0000J\u0006\u0010\u0010\u001a\u00020\u0000J\u0006\u0010\u0011\u001a\u00020\u0000J\u0006\u0010\u0012\u001a\u00020\u0000J\u0006\u0010\u0013\u001a\u00020\u0000J\u0006\u0010\u0014\u001a\u00020\u0000J\u0006\u0010\u0015\u001a\u00020\u0000J\u0006\u0010\u0016\u001a\u00020\u0000J\u0006\u0010\u0017\u001a\u00020\u0000J\u0006\u0010\u0018\u001a\u00020\u0000J\u0006\u0010\u0019\u001a\u00020\u0000J\u0006\u0010\u001a\u001a\u00020\u0000J\u0010\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u001d\u001a\u00020\u0005H\u0002J\u0006\u0010\u001e\u001a\u00020\u0000J\u0013\u0010\u001f\u001a\u00020 2\b\u0010!\u001a\u0004\u0018\u00010\u0001H\u0096\u0002J\u000e\u0010\"\u001a\u00020\u00002\u0006\u0010!\u001a\u00020\u0000J\u0006\u0010#\u001a\u00020 J\u0006\u0010$\u001a\u00020 J\u0006\u0010%\u001a\u00020 J\u0006\u0010&\u001a\u00020 J\u0006\u0010'\u001a\u00020 J\u0006\u0010(\u001a\u00020 J\u0006\u0010)\u001a\u00020 J\u0006\u0010*\u001a\u00020 J\u0006\u0010+\u001a\u00020 J\u0006\u0010,\u001a\u00020 J\u0010\u0010-\u001a\u00020 2\u0006\u0010\u001d\u001a\u00020\u0005H\u0002J\u0006\u0010.\u001a\u00020 J\u0006\u0010/\u001a\u00020 J\u0006\u00100\u001a\u00020 J\u0006\u00101\u001a\u00020 J\u0006\u00102\u001a\u00020 J\u0006\u00103\u001a\u00020 J\u0006\u00104\u001a\u00020 J\u0006\u00105\u001a\u00020 R \u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0006\u0010\u0007\"\u0004\b\b\u0010\t¨\u00067"}, m2722d2 = {"Lcom/amplitude/android/TrackingOptions;", "", "()V", "disabledFields", "", "", "getDisabledFields", "()Ljava/util/Set;", "setDisabledFields", "(Ljava/util/Set;)V", "disableAdid", "disableApiLevel", "disableAppSetId", "disableCarrier", "disableCity", "disableCountry", "disableDeviceBrand", "disableDeviceManufacturer", "disableDeviceModel", "disableDma", "disableIpAddress", "disableLanguage", "disableLatLng", "disableOsName", "disableOsVersion", "disablePlatform", "disableRegion", "disableTrackingField", "", XfdfConstants.FIELD, "disableVersionName", "equals", "", "other", "mergeIn", "shouldTrackAdid", "shouldTrackApiLevel", "shouldTrackAppSetId", "shouldTrackCarrier", "shouldTrackCity", "shouldTrackCountry", "shouldTrackDeviceBrand", "shouldTrackDeviceManufacturer", "shouldTrackDeviceModel", "shouldTrackDma", "shouldTrackField", "shouldTrackIpAddress", "shouldTrackLanguage", "shouldTrackLatLng", "shouldTrackOsName", "shouldTrackOsVersion", "shouldTrackPlatform", "shouldTrackRegion", "shouldTrackVersionName", "Companion", "android_release"}, m2723k = 1, m2724mv = {1, 5, 1}, m2726xi = 48)
public final class TrackingOptions {
    public static final String AMP_TRACKING_OPTION_API_LEVEL = "api_level";
    public static final String AMP_TRACKING_OPTION_APP_SET_ID = "app_set_id";
    public static final String AMP_TRACKING_OPTION_CARRIER = "carrier";
    public static final String AMP_TRACKING_OPTION_COUNTRY = "country";
    public static final String AMP_TRACKING_OPTION_DEVICE_BRAND = "device_brand";
    public static final String AMP_TRACKING_OPTION_DEVICE_MANUFACTURER = "device_manufacturer";
    public static final String AMP_TRACKING_OPTION_DEVICE_MODEL = "device_model";
    public static final String AMP_TRACKING_OPTION_LANGUAGE = "language";
    public static final String AMP_TRACKING_OPTION_OS_NAME = "os_name";
    public static final String AMP_TRACKING_OPTION_OS_VERSION = "os_version";
    public static final String AMP_TRACKING_OPTION_PLATFORM = "platform";
    public static final String AMP_TRACKING_OPTION_VERSION_NAME = "version_name";
    private Set<String> disabledFields = new HashSet();

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final String TAG = TrackingOptions.class.getName();
    public static final String AMP_TRACKING_OPTION_CITY = "city";
    public static final String AMP_TRACKING_OPTION_DMA = "dma";
    public static final String AMP_TRACKING_OPTION_IP_ADDRESS = "ip_address";
    public static final String AMP_TRACKING_OPTION_LAT_LNG = "lat_lng";
    public static final String AMP_TRACKING_OPTION_REGION = "region";
    private static final String[] SERVER_SIDE_PROPERTIES = {AMP_TRACKING_OPTION_CITY, "country", AMP_TRACKING_OPTION_DMA, AMP_TRACKING_OPTION_IP_ADDRESS, AMP_TRACKING_OPTION_LAT_LNG, AMP_TRACKING_OPTION_REGION};
    public static final String AMP_TRACKING_OPTION_ADID = "adid";
    private static final String[] COPPA_CONTROL_PROPERTIES = {AMP_TRACKING_OPTION_ADID, AMP_TRACKING_OPTION_CITY, AMP_TRACKING_OPTION_IP_ADDRESS, AMP_TRACKING_OPTION_LAT_LNG};

    public final Set<String> getDisabledFields() {
        return this.disabledFields;
    }

    public final void setDisabledFields(Set<String> set) {
        Intrinsics.checkNotNullParameter(set, "<set-?>");
        this.disabledFields = set;
    }

    public final TrackingOptions disableAdid() {
        disableTrackingField(AMP_TRACKING_OPTION_ADID);
        return this;
    }

    public final boolean shouldTrackAdid() {
        return shouldTrackField(AMP_TRACKING_OPTION_ADID);
    }

    public final TrackingOptions disableAppSetId() {
        disableTrackingField(AMP_TRACKING_OPTION_APP_SET_ID);
        return this;
    }

    public final boolean shouldTrackAppSetId() {
        return shouldTrackField(AMP_TRACKING_OPTION_APP_SET_ID);
    }

    public final TrackingOptions disableCarrier() {
        disableTrackingField(AMP_TRACKING_OPTION_CARRIER);
        return this;
    }

    public final boolean shouldTrackCarrier() {
        return shouldTrackField(AMP_TRACKING_OPTION_CARRIER);
    }

    public final TrackingOptions disableCity() {
        disableTrackingField(AMP_TRACKING_OPTION_CITY);
        return this;
    }

    public final boolean shouldTrackCity() {
        return shouldTrackField(AMP_TRACKING_OPTION_CITY);
    }

    public final TrackingOptions disableCountry() {
        disableTrackingField("country");
        return this;
    }

    public final boolean shouldTrackCountry() {
        return shouldTrackField("country");
    }

    public final TrackingOptions disableDeviceBrand() {
        disableTrackingField(AMP_TRACKING_OPTION_DEVICE_BRAND);
        return this;
    }

    public final boolean shouldTrackDeviceBrand() {
        return shouldTrackField(AMP_TRACKING_OPTION_DEVICE_BRAND);
    }

    public final TrackingOptions disableDeviceManufacturer() {
        disableTrackingField(AMP_TRACKING_OPTION_DEVICE_MANUFACTURER);
        return this;
    }

    public final boolean shouldTrackDeviceManufacturer() {
        return shouldTrackField(AMP_TRACKING_OPTION_DEVICE_MANUFACTURER);
    }

    public final TrackingOptions disableDeviceModel() {
        disableTrackingField(AMP_TRACKING_OPTION_DEVICE_MODEL);
        return this;
    }

    public final boolean shouldTrackDeviceModel() {
        return shouldTrackField(AMP_TRACKING_OPTION_DEVICE_MODEL);
    }

    public final TrackingOptions disableDma() {
        disableTrackingField(AMP_TRACKING_OPTION_DMA);
        return this;
    }

    public final boolean shouldTrackDma() {
        return shouldTrackField(AMP_TRACKING_OPTION_DMA);
    }

    public final TrackingOptions disableIpAddress() {
        disableTrackingField(AMP_TRACKING_OPTION_IP_ADDRESS);
        return this;
    }

    public final boolean shouldTrackIpAddress() {
        return shouldTrackField(AMP_TRACKING_OPTION_IP_ADDRESS);
    }

    public final TrackingOptions disableLanguage() {
        disableTrackingField("language");
        return this;
    }

    public final boolean shouldTrackLanguage() {
        return shouldTrackField("language");
    }

    public final TrackingOptions disableLatLng() {
        disableTrackingField(AMP_TRACKING_OPTION_LAT_LNG);
        return this;
    }

    public final boolean shouldTrackLatLng() {
        return shouldTrackField(AMP_TRACKING_OPTION_LAT_LNG);
    }

    public final TrackingOptions disableOsName() {
        disableTrackingField(AMP_TRACKING_OPTION_OS_NAME);
        return this;
    }

    public final boolean shouldTrackOsName() {
        return shouldTrackField(AMP_TRACKING_OPTION_OS_NAME);
    }

    public final TrackingOptions disableOsVersion() {
        disableTrackingField(AMP_TRACKING_OPTION_OS_VERSION);
        return this;
    }

    public final boolean shouldTrackOsVersion() {
        return shouldTrackField(AMP_TRACKING_OPTION_OS_VERSION);
    }

    public final TrackingOptions disableApiLevel() {
        disableTrackingField(AMP_TRACKING_OPTION_API_LEVEL);
        return this;
    }

    public final boolean shouldTrackApiLevel() {
        return shouldTrackField(AMP_TRACKING_OPTION_API_LEVEL);
    }

    public final TrackingOptions disablePlatform() {
        disableTrackingField(AMP_TRACKING_OPTION_PLATFORM);
        return this;
    }

    public final boolean shouldTrackPlatform() {
        return shouldTrackField(AMP_TRACKING_OPTION_PLATFORM);
    }

    public final TrackingOptions disableRegion() {
        disableTrackingField(AMP_TRACKING_OPTION_REGION);
        return this;
    }

    public final boolean shouldTrackRegion() {
        return shouldTrackField(AMP_TRACKING_OPTION_REGION);
    }

    public final TrackingOptions disableVersionName() {
        disableTrackingField(AMP_TRACKING_OPTION_VERSION_NAME);
        return this;
    }

    public final boolean shouldTrackVersionName() {
        return shouldTrackField(AMP_TRACKING_OPTION_VERSION_NAME);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void disableTrackingField(String field) {
        this.disabledFields.add(field);
    }

    private final boolean shouldTrackField(String field) {
        return !this.disabledFields.contains(field);
    }

    public final TrackingOptions mergeIn(TrackingOptions other) {
        Intrinsics.checkNotNullParameter(other, "other");
        Iterator<String> it = other.disabledFields.iterator();
        while (it.hasNext()) {
            disableTrackingField(it.next());
        }
        return this;
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (other != null && Intrinsics.areEqual(getClass(), other.getClass())) {
            return Intrinsics.areEqual(((TrackingOptions) other).disabledFields, this.disabledFields);
        }
        return false;
    }

    /* JADX INFO: compiled from: TrackingOptions.kt */
    @Metadata(m2721d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0012\n\u0002\u0010\u0011\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u000e\u0010\u001c\u001a\u00020\u001d2\u0006\u0010\u001e\u001a\u00020\u001dJ\u0006\u0010\u001f\u001a\u00020\u001dR\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\f\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0013\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0014\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0015\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u0016\u0010\u0016\u001a\b\u0012\u0004\u0012\u00020\u00040\u0017X\u0082\u0004¢\u0006\u0004\n\u0002\u0010\u0018R\u0016\u0010\u0019\u001a\b\u0012\u0004\u0012\u00020\u00040\u0017X\u0082\u0004¢\u0006\u0004\n\u0002\u0010\u0018R\u0016\u0010\u001a\u001a\n \u001b*\u0004\u0018\u00010\u00040\u0004X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006 "}, m2722d2 = {"Lcom/amplitude/android/TrackingOptions$Companion;", "", "()V", "AMP_TRACKING_OPTION_ADID", "", "AMP_TRACKING_OPTION_API_LEVEL", "AMP_TRACKING_OPTION_APP_SET_ID", "AMP_TRACKING_OPTION_CARRIER", "AMP_TRACKING_OPTION_CITY", "AMP_TRACKING_OPTION_COUNTRY", "AMP_TRACKING_OPTION_DEVICE_BRAND", "AMP_TRACKING_OPTION_DEVICE_MANUFACTURER", "AMP_TRACKING_OPTION_DEVICE_MODEL", "AMP_TRACKING_OPTION_DMA", "AMP_TRACKING_OPTION_IP_ADDRESS", "AMP_TRACKING_OPTION_LANGUAGE", "AMP_TRACKING_OPTION_LAT_LNG", "AMP_TRACKING_OPTION_OS_NAME", "AMP_TRACKING_OPTION_OS_VERSION", "AMP_TRACKING_OPTION_PLATFORM", "AMP_TRACKING_OPTION_REGION", "AMP_TRACKING_OPTION_VERSION_NAME", "COPPA_CONTROL_PROPERTIES", "", "[Ljava/lang/String;", "SERVER_SIDE_PROPERTIES", "TAG", "kotlin.jvm.PlatformType", "copyOf", "Lcom/amplitude/android/TrackingOptions;", "other", "forCoppaControl", "android_release"}, m2723k = 1, m2724mv = {1, 5, 1}, m2726xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final TrackingOptions copyOf(TrackingOptions other) {
            Intrinsics.checkNotNullParameter(other, "other");
            TrackingOptions trackingOptions = new TrackingOptions();
            Iterator<String> it = other.getDisabledFields().iterator();
            while (it.hasNext()) {
                trackingOptions.disableTrackingField(it.next());
            }
            return trackingOptions;
        }

        public final TrackingOptions forCoppaControl() {
            TrackingOptions trackingOptions = new TrackingOptions();
            String[] strArr = TrackingOptions.COPPA_CONTROL_PROPERTIES;
            int length = strArr.length;
            int i = 0;
            while (i < length) {
                String str = strArr[i];
                i++;
                trackingOptions.disableTrackingField(str);
            }
            return trackingOptions;
        }
    }
}
