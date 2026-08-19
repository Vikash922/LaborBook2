package com.amplitude.common.android;

import android.content.ContentResolver;
import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.res.Resources;
import android.location.Address;
import android.location.Geocoder;
import android.location.Location;
import android.location.LocationManager;
import android.os.Build;
import android.os.LocaleList;
import android.provider.Settings;
import android.telephony.TelephonyManager;
import androidx.core.content.ContextCompat;
import com.amplitude.android.TrackingOptions;
import com.amplitude.common.ContextProvider;
import com.facebook.devicerequests.internal.DeviceRequestsHelper;
import com.google.firebase.analytics.FirebaseAnalytics;
import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;
import java.util.UUID;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: AndroidContextProvider.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(m2721d1 = {"\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\r\n\u0002\u0018\u0002\n\u0002\b\r\n\u0002\u0010\u0002\n\u0002\b\u0003\u0018\u0000 72\u00020\u0001:\u000267B\u001d\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0005¢\u0006\u0002\u0010\u0007J\u0006\u00102\u001a\u00020\u0005J\u0006\u00103\u001a\u00020\u0005J\u0006\u00104\u001a\u000205R\u0013\u0010\b\u001a\u0004\u0018\u00010\t8F¢\u0006\u0006\u001a\u0004\b\n\u0010\u000bR\u0013\u0010\f\u001a\u0004\u0018\u00010\t8F¢\u0006\u0006\u001a\u0004\b\r\u0010\u000bR\u0011\u0010\u000e\u001a\u00020\t8F¢\u0006\u0006\u001a\u0004\b\u000f\u0010\u000bR\u001c\u0010\u0010\u001a\b\u0018\u00010\u0011R\u00020\u00008BX\u0082\u000e¢\u0006\b\n\u0000\u001a\u0004\b\u0012\u0010\u0013R\u0013\u0010\u0014\u001a\u0004\u0018\u00010\t8F¢\u0006\u0006\u001a\u0004\b\u0015\u0010\u000bR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u0013\u0010\u0016\u001a\u0004\u0018\u00010\t8F¢\u0006\u0006\u001a\u0004\b\u0017\u0010\u000bR\u0014\u0010\u0018\u001a\u00020\u00198BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b\u001a\u0010\u001bR\u001a\u0010\u001c\u001a\u00020\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001c\u0010\u001d\"\u0004\b\u001e\u0010\u001fR\u0011\u0010 \u001a\u00020\t8F¢\u0006\u0006\u001a\u0004\b!\u0010\u000bR\u0011\u0010\"\u001a\u00020\t8F¢\u0006\u0006\u001a\u0004\b#\u0010\u000bR\u0011\u0010$\u001a\u00020\t8F¢\u0006\u0006\u001a\u0004\b%\u0010\u000bR\u0013\u0010&\u001a\u0004\u0018\u00010'8F¢\u0006\u0006\u001a\u0004\b(\u0010)R\u0011\u0010*\u001a\u00020\t8F¢\u0006\u0006\u001a\u0004\b+\u0010\u000bR\u0011\u0010,\u001a\u00020\t8F¢\u0006\u0006\u001a\u0004\b-\u0010\u000bR\u001a\u0010\u0006\u001a\u00020\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b.\u0010\u001d\"\u0004\b/\u0010\u001fR\u0013\u00100\u001a\u0004\u0018\u00010\t8F¢\u0006\u0006\u001a\u0004\b1\u0010\u000b¨\u00068"}, m2722d2 = {"Lcom/amplitude/common/android/AndroidContextProvider;", "Lcom/amplitude/common/ContextProvider;", "context", "Landroid/content/Context;", "locationListening", "", "shouldTrackAdid", "(Landroid/content/Context;ZZ)V", "advertisingId", "", "getAdvertisingId", "()Ljava/lang/String;", "appSetId", "getAppSetId", "brand", "getBrand", "cachedInfo", "Lcom/amplitude/common/android/AndroidContextProvider$CachedInfo;", "getCachedInfo", "()Lcom/amplitude/common/android/AndroidContextProvider$CachedInfo;", TrackingOptions.AMP_TRACKING_OPTION_CARRIER, "getCarrier", "country", "getCountry", "geocoder", "Landroid/location/Geocoder;", "getGeocoder", "()Landroid/location/Geocoder;", "isLocationListening", "()Z", "setLocationListening", "(Z)V", "language", "getLanguage", "manufacturer", "getManufacturer", DeviceRequestsHelper.DEVICE_INFO_MODEL, "getModel", "mostRecentLocation", "Landroid/location/Location;", "getMostRecentLocation", "()Landroid/location/Location;", "osName", "getOsName", "osVersion", "getOsVersion", "getShouldTrackAdid", "setShouldTrackAdid", "versionName", "getVersionName", "isGooglePlayServicesEnabled", "isLimitAdTrackingEnabled", "prefetch", "", "CachedInfo", "Companion", "common-android_release"}, m2723k = 1, m2724mv = {1, 5, 1}, m2726xi = 48)
public final class AndroidContextProvider implements ContextProvider {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    public static final String OS_NAME = "android";
    public static final String SETTING_ADVERTISING_ID = "advertising_id";
    public static final String SETTING_LIMIT_AD_TRACKING = "limit_ad_tracking";
    private CachedInfo cachedInfo;
    private final Context context;
    private boolean isLocationListening;
    private boolean shouldTrackAdid;

    public AndroidContextProvider(Context context, boolean z, boolean z2) {
        Intrinsics.checkNotNullParameter(context, "context");
        this.context = context;
        this.isLocationListening = z;
        this.shouldTrackAdid = z2;
    }

    /* JADX INFO: renamed from: isLocationListening, reason: from getter */
    public final boolean getIsLocationListening() {
        return this.isLocationListening;
    }

    public final void setLocationListening(boolean z) {
        this.isLocationListening = z;
    }

    public final boolean getShouldTrackAdid() {
        return this.shouldTrackAdid;
    }

    public final void setShouldTrackAdid(boolean z) {
        this.shouldTrackAdid = z;
    }

    private final CachedInfo getCachedInfo() {
        if (this.cachedInfo == null) {
            this.cachedInfo = new CachedInfo(this);
        }
        return this.cachedInfo;
    }

    /* JADX INFO: compiled from: AndroidContextProvider.kt */
    @Metadata(m2721d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0018\n\u0002\u0010\u000b\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0018\b\u0086\u0004\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\b\u00104\u001a\u00020\u001dH\u0002J\n\u00105\u001a\u0004\u0018\u00010\u0004H\u0002J\n\u00106\u001a\u0004\u0018\u00010\u0004H\u0002J\b\u00107\u001a\u00020\u0004H\u0002J\n\u00108\u001a\u0004\u0018\u00010\u0004H\u0002J\n\u00109\u001a\u0004\u0018\u00010\u0004H\u0002J\b\u0010:\u001a\u00020\u0004H\u0002J\b\u0010;\u001a\u00020\u0004H\u0002J\b\u0010<\u001a\u00020\u0004H\u0002J\b\u0010=\u001a\u00020\u0004H\u0002J\n\u0010>\u001a\u0004\u0018\u00010\u0004H\u0002R\u001c\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR\u001c\u0010\t\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\n\u0010\u0006\"\u0004\b\u000b\u0010\bR\u0011\u0010\f\u001a\u00020\u0004¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u0006R\u0013\u0010\u000e\u001a\u0004\u0018\u00010\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u0006R\u0013\u0010\u0010\u001a\u0004\u0018\u00010\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\u0006R\u0014\u0010\u0012\u001a\u00020\u00048BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b\u0013\u0010\u0006R\u0016\u0010\u0014\u001a\u0004\u0018\u00010\u00048BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b\u0015\u0010\u0006R\u0016\u0010\u0016\u001a\u0004\u0018\u00010\u00048BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b\u0017\u0010\u0006R\u0016\u0010\u0018\u001a\u0004\u0018\u00010\u00048BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b\u0019\u0010\u0006R\u0016\u0010\u001a\u001a\u0004\u0018\u00010\u00048BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b\u001b\u0010\u0006R\u0011\u0010\u001c\u001a\u00020\u001d¢\u0006\b\n\u0000\u001a\u0004\b\u001e\u0010\u001fR\u0011\u0010 \u001a\u00020\u0004¢\u0006\b\n\u0000\u001a\u0004\b!\u0010\u0006R\u001a\u0010\"\u001a\u00020\u001dX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b#\u0010\u001f\"\u0004\b$\u0010%R\u0014\u0010&\u001a\u00020'8BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b(\u0010)R\u0011\u0010*\u001a\u00020\u0004¢\u0006\b\n\u0000\u001a\u0004\b+\u0010\u0006R\u0011\u0010,\u001a\u00020\u0004¢\u0006\b\n\u0000\u001a\u0004\b-\u0010\u0006R\u0011\u0010.\u001a\u00020\u0004¢\u0006\b\n\u0000\u001a\u0004\b/\u0010\u0006R\u0011\u00100\u001a\u00020\u0004¢\u0006\b\n\u0000\u001a\u0004\b1\u0010\u0006R\u0013\u00102\u001a\u0004\u0018\u00010\u0004¢\u0006\b\n\u0000\u001a\u0004\b3\u0010\u0006¨\u0006?"}, m2722d2 = {"Lcom/amplitude/common/android/AndroidContextProvider$CachedInfo;", "", "(Lcom/amplitude/common/android/AndroidContextProvider;)V", "advertisingId", "", "getAdvertisingId", "()Ljava/lang/String;", "setAdvertisingId", "(Ljava/lang/String;)V", "appSetId", "getAppSetId", "setAppSetId", "brand", "getBrand", TrackingOptions.AMP_TRACKING_OPTION_CARRIER, "getCarrier", "country", "getCountry", "countryFromLocale", "getCountryFromLocale", "countryFromLocation", "getCountryFromLocation", "countryFromNetwork", "getCountryFromNetwork", "fetchAndCacheAmazonAdvertisingId", "getFetchAndCacheAmazonAdvertisingId", "fetchAndCacheGoogleAdvertisingId", "getFetchAndCacheGoogleAdvertisingId", "gpsEnabled", "", "getGpsEnabled", "()Z", "language", "getLanguage", "limitAdTrackingEnabled", "getLimitAdTrackingEnabled", "setLimitAdTrackingEnabled", "(Z)V", "locale", "Ljava/util/Locale;", "getLocale", "()Ljava/util/Locale;", "manufacturer", "getManufacturer", DeviceRequestsHelper.DEVICE_INFO_MODEL, "getModel", "osName", "getOsName", "osVersion", "getOsVersion", "versionName", "getVersionName", "checkGPSEnabled", "fetchAdvertisingId", "fetchAppSetId", "fetchBrand", "fetchCarrier", "fetchCountry", "fetchLanguage", "fetchManufacturer", "fetchModel", "fetchOsVersion", "fetchVersionName", "common-android_release"}, m2723k = 1, m2724mv = {1, 5, 1}, m2726xi = 48)
    public final class CachedInfo {
        private String advertisingId;
        private String appSetId;
        private final String brand;
        private final String carrier;
        private final String country;
        private final boolean gpsEnabled;
        private final String language;
        private boolean limitAdTrackingEnabled;
        private final String manufacturer;
        private final String model;
        private final String osName;
        private final String osVersion;
        final /* synthetic */ AndroidContextProvider this$0;
        private final String versionName;

        public CachedInfo(AndroidContextProvider this$0) {
            Intrinsics.checkNotNullParameter(this$0, "this$0");
            this.this$0 = this$0;
            this.limitAdTrackingEnabled = true;
            this.advertisingId = fetchAdvertisingId();
            this.versionName = fetchVersionName();
            this.osName = "android";
            this.osVersion = fetchOsVersion();
            this.brand = fetchBrand();
            this.manufacturer = fetchManufacturer();
            this.model = fetchModel();
            this.carrier = fetchCarrier();
            this.country = fetchCountry();
            this.language = fetchLanguage();
            this.gpsEnabled = checkGPSEnabled();
            this.appSetId = fetchAppSetId();
        }

        public final String getAdvertisingId() {
            return this.advertisingId;
        }

        public final void setAdvertisingId(String str) {
            this.advertisingId = str;
        }

        public final String getCountry() {
            return this.country;
        }

        public final String getVersionName() {
            return this.versionName;
        }

        public final String getOsName() {
            return this.osName;
        }

        public final String getOsVersion() {
            return this.osVersion;
        }

        public final String getBrand() {
            return this.brand;
        }

        public final String getManufacturer() {
            return this.manufacturer;
        }

        public final String getModel() {
            return this.model;
        }

        public final String getCarrier() {
            return this.carrier;
        }

        public final String getLanguage() {
            return this.language;
        }

        public final boolean getLimitAdTrackingEnabled() {
            return this.limitAdTrackingEnabled;
        }

        public final void setLimitAdTrackingEnabled(boolean z) {
            this.limitAdTrackingEnabled = z;
        }

        public final boolean getGpsEnabled() {
            return this.gpsEnabled;
        }

        public final String getAppSetId() {
            return this.appSetId;
        }

        public final void setAppSetId(String str) {
            this.appSetId = str;
        }

        private final String fetchVersionName() {
            try {
                PackageInfo packageInfo = this.this$0.context.getPackageManager().getPackageInfo(this.this$0.context.getPackageName(), 0);
                Intrinsics.checkNotNullExpressionValue(packageInfo, "context.packageManager.g…o(context.packageName, 0)");
                return packageInfo.versionName;
            } catch (PackageManager.NameNotFoundException | Exception unused) {
                return null;
            }
        }

        private final String fetchOsVersion() {
            String RELEASE = Build.VERSION.RELEASE;
            Intrinsics.checkNotNullExpressionValue(RELEASE, "RELEASE");
            return RELEASE;
        }

        private final String fetchBrand() {
            String BRAND = Build.BRAND;
            Intrinsics.checkNotNullExpressionValue(BRAND, "BRAND");
            return BRAND;
        }

        private final String fetchManufacturer() {
            String MANUFACTURER = Build.MANUFACTURER;
            Intrinsics.checkNotNullExpressionValue(MANUFACTURER, "MANUFACTURER");
            return MANUFACTURER;
        }

        private final String fetchModel() {
            String MODEL = Build.MODEL;
            Intrinsics.checkNotNullExpressionValue(MODEL, "MODEL");
            return MODEL;
        }

        private final String fetchCarrier() {
            try {
                Object systemService = this.this$0.context.getSystemService("phone");
                if (systemService == null) {
                    throw new NullPointerException("null cannot be cast to non-null type android.telephony.TelephonyManager");
                }
                return ((TelephonyManager) systemService).getNetworkOperatorName();
            } catch (Exception unused) {
                return null;
            }
        }

        private final String fetchCountry() {
            String countryFromLocation = getCountryFromLocation();
            String str = countryFromLocation;
            if (str != null && str.length() != 0) {
                return countryFromLocation;
            }
            String countryFromNetwork = getCountryFromNetwork();
            String str2 = countryFromNetwork;
            return (str2 == null || str2.length() == 0) ? getCountryFromLocale() : countryFromNetwork;
        }

        private final String getCountryFromLocation() {
            Location mostRecentLocation;
            List<Address> fromLocation;
            if (this.this$0.getIsLocationListening() && (mostRecentLocation = this.this$0.getMostRecentLocation()) != null) {
                try {
                    if (Geocoder.isPresent() && (fromLocation = this.this$0.getGeocoder().getFromLocation(mostRecentLocation.getLatitude(), mostRecentLocation.getLongitude(), 1)) != null) {
                        for (Address address : fromLocation) {
                            if (address != null) {
                                return address.getCountryCode();
                            }
                        }
                    }
                } catch (IOException | IllegalArgumentException | IllegalStateException | NoSuchMethodError | NullPointerException | SecurityException unused) {
                }
            }
            return null;
        }

        private final String getCountryFromNetwork() {
            String networkCountryIso;
            try {
                Object systemService = this.this$0.context.getSystemService("phone");
                if (systemService != null) {
                    TelephonyManager telephonyManager = (TelephonyManager) systemService;
                    if (telephonyManager.getPhoneType() == 2 || (networkCountryIso = telephonyManager.getNetworkCountryIso()) == null) {
                        return null;
                    }
                    Locale US = Locale.US;
                    Intrinsics.checkNotNullExpressionValue(US, "US");
                    String upperCase = networkCountryIso.toUpperCase(US);
                    Intrinsics.checkNotNullExpressionValue(upperCase, "(this as java.lang.String).toUpperCase(locale)");
                    return upperCase;
                }
                throw new NullPointerException("null cannot be cast to non-null type android.telephony.TelephonyManager");
            } catch (Exception unused) {
                return null;
            }
        }

        private final Locale getLocale() {
            LocaleList locales = Resources.getSystem().getConfiguration().getLocales();
            Intrinsics.checkNotNullExpressionValue(locales, "configuration.locales");
            if (locales.isEmpty()) {
                Locale locale = Locale.getDefault();
                Intrinsics.checkNotNullExpressionValue(locale, "getDefault()");
                return locale;
            }
            Locale locale2 = locales.get(0);
            Intrinsics.checkNotNullExpressionValue(locale2, "localeList.get(0)");
            return locale2;
        }

        private final String getCountryFromLocale() {
            String country = getLocale().getCountry();
            Intrinsics.checkNotNullExpressionValue(country, "locale.country");
            return country;
        }

        private final String fetchLanguage() {
            String language = getLocale().getLanguage();
            Intrinsics.checkNotNullExpressionValue(language, "locale.language");
            return language;
        }

        private final String fetchAdvertisingId() {
            if (!this.this$0.getShouldTrackAdid()) {
                return null;
            }
            if (Intrinsics.areEqual("Amazon", fetchManufacturer())) {
                return getFetchAndCacheAmazonAdvertisingId();
            }
            return getFetchAndCacheGoogleAdvertisingId();
        }

        private final String fetchAppSetId() {
            Object objInvoke;
            try {
                Object objInvoke2 = Class.forName("com.google.android.gms.appset.AppSet").getMethod("getClient", Context.class).invoke(null, this.this$0.context);
                Object objInvoke3 = Class.forName("com.google.android.gms.tasks.Tasks").getMethod("await", Class.forName("com.google.android.gms.tasks.Task")).invoke(null, objInvoke2.getClass().getMethod("getAppSetIdInfo", new Class[0]).invoke(objInvoke2, new Object[0]));
                objInvoke = objInvoke3.getClass().getMethod("getId", new Class[0]).invoke(objInvoke3, new Object[0]);
            } catch (ClassNotFoundException unused) {
                LogcatLogger.INSTANCE.getLogger().warn("Google Play Services SDK not found for app set id!");
            } catch (InvocationTargetException unused2) {
                LogcatLogger.INSTANCE.getLogger().warn("Google Play Services not available for app set id");
            } catch (Exception unused3) {
                LogcatLogger.INSTANCE.getLogger().error("Encountered an error connecting to Google Play Services for app set id");
            }
            if (objInvoke == null) {
                throw new NullPointerException("null cannot be cast to non-null type kotlin.String");
            }
            this.appSetId = (String) objInvoke;
            return this.appSetId;
        }

        private final String getFetchAndCacheAmazonAdvertisingId() {
            ContentResolver contentResolver = this.this$0.context.getContentResolver();
            this.limitAdTrackingEnabled = Settings.Secure.getInt(contentResolver, AndroidContextProvider.SETTING_LIMIT_AD_TRACKING, 0) == 1;
            String string = Settings.Secure.getString(contentResolver, AndroidContextProvider.SETTING_ADVERTISING_ID);
            this.advertisingId = string;
            return string;
        }

        private final String getFetchAndCacheGoogleAdvertisingId() {
            Object objInvoke;
            try {
                boolean z = true;
                Object objInvoke2 = Class.forName("com.google.android.gms.ads.identifier.AdvertisingIdClient").getMethod("getAdvertisingIdInfo", Context.class).invoke(null, this.this$0.context);
                Object objInvoke3 = objInvoke2.getClass().getMethod("isLimitAdTrackingEnabled", new Class[0]).invoke(objInvoke2, new Object[0]);
                Boolean bool = objInvoke3 instanceof Boolean ? (Boolean) objInvoke3 : null;
                if (bool == null || !bool.booleanValue()) {
                    z = false;
                }
                this.limitAdTrackingEnabled = z;
                objInvoke = objInvoke2.getClass().getMethod("getId", new Class[0]).invoke(objInvoke2, new Object[0]);
            } catch (ClassNotFoundException unused) {
                LogcatLogger.INSTANCE.getLogger().warn("Google Play Services SDK not found for advertising id!");
            } catch (InvocationTargetException unused2) {
                LogcatLogger.INSTANCE.getLogger().warn("Google Play Services not available for advertising id");
            } catch (Exception unused3) {
                LogcatLogger.INSTANCE.getLogger().error("Encountered an error connecting to Google Play Services for advertising id");
            }
            if (objInvoke == null) {
                throw new NullPointerException("null cannot be cast to non-null type kotlin.String");
            }
            this.advertisingId = (String) objInvoke;
            return this.advertisingId;
        }

        private final boolean checkGPSEnabled() {
            try {
                Object objInvoke = Class.forName("com.google.android.gms.common.GooglePlayServicesUtil").getMethod("isGooglePlayServicesAvailable", Context.class).invoke(null, this.this$0.context);
                Integer num = objInvoke instanceof Integer ? (Integer) objInvoke : null;
                if (num != null) {
                    return num.intValue() == 0;
                }
                return false;
            } catch (ClassNotFoundException unused) {
                LogcatLogger.INSTANCE.getLogger().warn("Google Play Services Util not found!");
                return false;
            } catch (IllegalAccessException unused2) {
                LogcatLogger.INSTANCE.getLogger().warn("Google Play Services not available");
                return false;
            } catch (NoClassDefFoundError unused3) {
                LogcatLogger.INSTANCE.getLogger().warn("Google Play Services Util not found!");
                return false;
            } catch (NoSuchMethodException unused4) {
                LogcatLogger.INSTANCE.getLogger().warn("Google Play Services not available");
                return false;
            } catch (InvocationTargetException unused5) {
                LogcatLogger.INSTANCE.getLogger().warn("Google Play Services not available");
                return false;
            } catch (Exception e) {
                LogcatLogger.INSTANCE.getLogger().warn(Intrinsics.stringPlus("Error when checking for Google Play Services: ", e));
                return false;
            }
        }
    }

    public final void prefetch() {
        getCachedInfo();
    }

    public final boolean isGooglePlayServicesEnabled() {
        CachedInfo cachedInfo = getCachedInfo();
        Intrinsics.checkNotNull(cachedInfo);
        return cachedInfo.getGpsEnabled();
    }

    public final boolean isLimitAdTrackingEnabled() {
        CachedInfo cachedInfo = getCachedInfo();
        Intrinsics.checkNotNull(cachedInfo);
        return cachedInfo.getLimitAdTrackingEnabled();
    }

    public final String getVersionName() {
        CachedInfo cachedInfo = getCachedInfo();
        Intrinsics.checkNotNull(cachedInfo);
        return cachedInfo.getVersionName();
    }

    public final String getOsName() {
        CachedInfo cachedInfo = getCachedInfo();
        Intrinsics.checkNotNull(cachedInfo);
        return cachedInfo.getOsName();
    }

    public final String getOsVersion() {
        CachedInfo cachedInfo = getCachedInfo();
        Intrinsics.checkNotNull(cachedInfo);
        return cachedInfo.getOsVersion();
    }

    public final String getBrand() {
        CachedInfo cachedInfo = getCachedInfo();
        Intrinsics.checkNotNull(cachedInfo);
        return cachedInfo.getBrand();
    }

    public final String getManufacturer() {
        CachedInfo cachedInfo = getCachedInfo();
        Intrinsics.checkNotNull(cachedInfo);
        return cachedInfo.getManufacturer();
    }

    public final String getModel() {
        CachedInfo cachedInfo = getCachedInfo();
        Intrinsics.checkNotNull(cachedInfo);
        return cachedInfo.getModel();
    }

    public final String getCarrier() {
        CachedInfo cachedInfo = getCachedInfo();
        Intrinsics.checkNotNull(cachedInfo);
        return cachedInfo.getCarrier();
    }

    public final String getCountry() {
        CachedInfo cachedInfo = getCachedInfo();
        Intrinsics.checkNotNull(cachedInfo);
        return cachedInfo.getCountry();
    }

    public final String getLanguage() {
        CachedInfo cachedInfo = getCachedInfo();
        Intrinsics.checkNotNull(cachedInfo);
        return cachedInfo.getLanguage();
    }

    public final String getAdvertisingId() {
        CachedInfo cachedInfo = getCachedInfo();
        Intrinsics.checkNotNull(cachedInfo);
        return cachedInfo.getAdvertisingId();
    }

    public final String getAppSetId() {
        CachedInfo cachedInfo = getCachedInfo();
        Intrinsics.checkNotNull(cachedInfo);
        return cachedInfo.getAppSetId();
    }

    public final Location getMostRecentLocation() {
        List<String> providers;
        Location lastKnownLocation;
        Location location = null;
        if (!this.isLocationListening) {
            return null;
        }
        if (ContextCompat.checkSelfPermission(this.context, "android.permission.ACCESS_COARSE_LOCATION") != 0 && ContextCompat.checkSelfPermission(this.context, "android.permission.ACCESS_FINE_LOCATION") != 0) {
            return null;
        }
        Object systemService = this.context.getSystemService(FirebaseAnalytics.Param.LOCATION);
        LocationManager locationManager = systemService instanceof LocationManager ? (LocationManager) systemService : null;
        if (locationManager == null) {
            return null;
        }
        try {
            providers = locationManager.getProviders(true);
        } catch (SecurityException | Exception unused) {
            providers = null;
        }
        if (providers == null) {
            return null;
        }
        ArrayList<Location> arrayList = new ArrayList();
        for (String str : providers) {
            try {
                Intrinsics.checkNotNull(str);
                lastKnownLocation = locationManager.getLastKnownLocation(str);
            } catch (SecurityException unused2) {
                LogcatLogger.INSTANCE.getLogger().warn("Failed to get most recent location");
                lastKnownLocation = null;
            } catch (Exception unused3) {
                LogcatLogger.INSTANCE.getLogger().warn("Failed to get most recent location");
                lastKnownLocation = null;
            }
            if (lastKnownLocation != null) {
                arrayList.add(lastKnownLocation);
            }
        }
        long time = -1;
        for (Location location2 : arrayList) {
            if (location2.getTime() > time) {
                time = location2.getTime();
                location = location2;
            }
        }
        return location;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Geocoder getGeocoder() {
        return new Geocoder(this.context, Locale.ENGLISH);
    }

    /* JADX INFO: compiled from: AndroidContextProvider.kt */
    @Metadata(m2721d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0006\u0010\u0007\u001a\u00020\u0004R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000¨\u0006\b"}, m2722d2 = {"Lcom/amplitude/common/android/AndroidContextProvider$Companion;", "", "()V", "OS_NAME", "", "SETTING_ADVERTISING_ID", "SETTING_LIMIT_AD_TRACKING", "generateUUID", "common-android_release"}, m2723k = 1, m2724mv = {1, 5, 1}, m2726xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final String generateUUID() {
            String string = UUID.randomUUID().toString();
            Intrinsics.checkNotNullExpressionValue(string, "randomUUID().toString()");
            return string;
        }
    }
}
