package com.inmobi.sdk;

import android.content.Context;
import android.location.Location;
import android.os.SystemClock;
import com.amplitude.android.TrackingOptions;
import com.facebook.AuthenticationTokenClaims;
import com.facebook.appevents.iap.InAppPurchaseConstants;
import com.google.ads.mediation.inmobi.InMobiNetworkValues;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.inmobi.commons.core.configs.Config;
import com.inmobi.commons.core.configs.SignalsConfig;
import com.inmobi.media.AbstractC2775Fc;
import com.inmobi.media.AbstractC2814I6;
import com.inmobi.media.AbstractC2922P9;
import com.inmobi.media.AbstractC3102c5;
import com.inmobi.media.AbstractC3107ca;
import com.inmobi.media.AbstractC3118d6;
import com.inmobi.media.AbstractC3154fc;
import com.inmobi.media.AbstractC3194i7;
import com.inmobi.media.AbstractC3208j6;
import com.inmobi.media.AbstractC3267n5;
import com.inmobi.media.C2751E3;
import com.inmobi.media.C2810I2;
import com.inmobi.media.C2835Jc;
import com.inmobi.media.C2840K2;
import com.inmobi.media.C2849Kb;
import com.inmobi.media.C2981Tc;
import com.inmobi.media.C3064Zb;
import com.inmobi.media.C3077aa;
import com.inmobi.media.C3133e6;
import com.inmobi.media.C3199ic;
import com.inmobi.media.C3356t4;
import com.inmobi.media.C3402w5;
import com.inmobi.media.EnumC3259mc;
import com.inmobi.media.RunnableC3282o5;
import com.inmobi.unifiedId.InMobiUnifiedIdService;
import com.itextpdf.forms.xfdf.XfdfConstants;
import com.itextpdf.svg.SvgConstants;
import java.util.LinkedHashMap;
import java.util.Locale;
import java.util.Map;
import java.util.Objects;
import java.util.concurrent.ConcurrentHashMap;
import kotlin.Metadata;
import kotlin.collections.MapsKt;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.Intrinsics;
import org.json.JSONObject;
import org.shadow.apache.commons.lang3.StringUtils;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(m2721d1 = {"\u0000l\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u000f\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010$\n\u0002\b\u0011\bÆ\u0002\u0018\u00002\u00020\u0001:\u0005PQRSTJ!\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0002¢\u0006\u0004\b\u0007\u0010\bJ9\u0010\u000e\u001a\u00020\u00062\b\u0010\n\u001a\u0004\u0018\u00010\t2\n\b\u0001\u0010\u000b\u001a\u0004\u0018\u00010\u00042\b\u0010\r\u001a\u0004\u0018\u00010\f2\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0007¢\u0006\u0004\b\u000e\u0010\u000fJ\u0019\u0010\u0010\u001a\u00020\u00062\b\u0010\r\u001a\u0004\u0018\u00010\fH\u0007¢\u0006\u0004\b\u0010\u0010\u0011J\u0019\u0010\u0012\u001a\u00020\u00062\b\u0010\r\u001a\u0004\u0018\u00010\fH\u0007¢\u0006\u0004\b\u0012\u0010\u0011J\u0017\u0010\u0015\u001a\u00020\u00062\u0006\u0010\u0014\u001a\u00020\u0013H\u0007¢\u0006\u0004\b\u0015\u0010\u0016J\u000f\u0010\u0017\u001a\u00020\u0004H\u0007¢\u0006\u0004\b\u0017\u0010\u0018J\u0019\u0010\u001b\u001a\u00020\u00062\b\u0010\u001a\u001a\u0004\u0018\u00010\u0019H\u0007¢\u0006\u0004\b\u001b\u0010\u001cJ\u0017\u0010\u001f\u001a\u00020\u00062\u0006\u0010\u001e\u001a\u00020\u001dH\u0007¢\u0006\u0004\b\u001f\u0010 J\u0017\u0010\"\u001a\u00020\u00062\u0006\u0010!\u001a\u00020\u0013H\u0007¢\u0006\u0004\b\"\u0010\u0016J\u0017\u0010%\u001a\u00020\u00062\u0006\u0010$\u001a\u00020#H\u0007¢\u0006\u0004\b%\u0010&J\u0019\u0010(\u001a\u00020\u00062\b\u0010'\u001a\u0004\u0018\u00010\u0004H\u0007¢\u0006\u0004\b(\u0010)J\u0019\u0010+\u001a\u00020\u00062\b\u0010*\u001a\u0004\u0018\u00010\u0004H\u0007¢\u0006\u0004\b+\u0010)J-\u0010/\u001a\u00020\u00062\b\u0010,\u001a\u0004\u0018\u00010\u00042\b\u0010-\u001a\u0004\u0018\u00010\u00042\b\u0010.\u001a\u0004\u0018\u00010\u0004H\u0007¢\u0006\u0004\b/\u00100J\u0017\u00102\u001a\u00020\u00062\u0006\u00101\u001a\u00020\u001dH\u0007¢\u0006\u0004\b2\u0010 J\u0017\u00105\u001a\u00020\u00062\u0006\u00104\u001a\u000203H\u0007¢\u0006\u0004\b5\u00106J\u0017\u00109\u001a\u00020\u00062\u0006\u00108\u001a\u000207H\u0007¢\u0006\u0004\b9\u0010:J\u0019\u0010<\u001a\u00020\u00062\b\u0010;\u001a\u0004\u0018\u00010\u0004H\u0007¢\u0006\u0004\b<\u0010)J\u0019\u0010>\u001a\u00020\u00062\b\u0010=\u001a\u0004\u0018\u00010\u0004H\u0007¢\u0006\u0004\b>\u0010)J\u0019\u0010A\u001a\u00020\u00062\b\u0010@\u001a\u0004\u0018\u00010?H\u0007¢\u0006\u0004\bA\u0010BJ\u0011\u0010C\u001a\u0004\u0018\u00010\u0004H\u0007¢\u0006\u0004\bC\u0010\u0018J1\u0010C\u001a\u0004\u0018\u00010\u00042\u0014\u0010E\u001a\u0010\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0004\u0018\u00010D2\b\u0010F\u001a\u0004\u0018\u00010\u0004H\u0007¢\u0006\u0004\bC\u0010GJ\u0019\u0010I\u001a\u00020\u00062\b\u0010H\u001a\u0004\u0018\u00010\fH\u0007¢\u0006\u0004\bI\u0010\u0011J\u000f\u0010J\u001a\u00020\u0013H\u0007¢\u0006\u0004\bJ\u0010KR\u0014\u0010L\u001a\u00020\u00048\u0006X\u0087D¢\u0006\u0006\n\u0004\bL\u0010MR\u0014\u0010N\u001a\u00020\u00048\u0006X\u0087D¢\u0006\u0006\n\u0004\bN\u0010MR\u0014\u0010O\u001a\u00020\u00048\u0006X\u0087D¢\u0006\u0006\n\u0004\bO\u0010M¨\u0006U"}, m2722d2 = {"Lcom/inmobi/sdk/InMobiSdk;", "", "Lcom/inmobi/sdk/SdkInitializationListener;", "sdkInitializationListener", "", "message", "", "a", "(Lcom/inmobi/sdk/SdkInitializationListener;Ljava/lang/String;)V", "Landroid/content/Context;", "context", "accountId", "Lorg/json/JSONObject;", "consentObject", "init", "(Landroid/content/Context;Ljava/lang/String;Lorg/json/JSONObject;Lcom/inmobi/sdk/SdkInitializationListener;)V", "updateGDPRConsent", "(Lorg/json/JSONObject;)V", "setPartnerGDPRConsent", "", "muted", "setApplicationMuted", "(Z)V", "getVersion", "()Ljava/lang/String;", "Lcom/inmobi/sdk/InMobiSdk$LogLevel;", "logLevel", "setLogLevel", "(Lcom/inmobi/sdk/InMobiSdk$LogLevel;)V", "", "age", "setAge", "(I)V", "isAgeRestricted", "setIsAgeRestricted", "Lcom/inmobi/sdk/InMobiSdk$AgeGroup;", "group", "setAgeGroup", "(Lcom/inmobi/sdk/InMobiSdk$AgeGroup;)V", "areaCode", "setAreaCode", "(Ljava/lang/String;)V", "postalCode", "setPostalCode", TrackingOptions.AMP_TRACKING_OPTION_CITY, "state", "country", "setLocationWithCityStateCountry", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "yearOfBirth", "setYearOfBirth", "Lcom/inmobi/sdk/InMobiSdk$Gender;", "gender", "setGender", "(Lcom/inmobi/sdk/InMobiSdk$Gender;)V", "Lcom/inmobi/sdk/InMobiSdk$Education;", "education", "setEducation", "(Lcom/inmobi/sdk/InMobiSdk$Education;)V", "language", "setLanguage", "interests", "setInterests", "Landroid/location/Location;", FirebaseAnalytics.Param.LOCATION, "setLocation", "(Landroid/location/Location;)V", "getToken", "", "extras", "keywords", "(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;", "jsonObject", "setPublisherProvidedUnifiedId", "isSDKInitialized", "()Z", "IM_GDPR_CONSENT_AVAILABLE", "Ljava/lang/String;", "IM_GDPR_CONSENT_IAB", "IM_GDPR_CONSENT_GDPR_APPLIES", "AgeGroup", "Education", "Gender", "LogLevel", "PublisherSignals", "media_release"}, m2723k = 1, m2724mv = {1, 9, 0}, m2726xi = 48)
public final class InMobiSdk {
    public static final String IM_GDPR_CONSENT_AVAILABLE = "gdpr_consent_available";
    public static final String IM_GDPR_CONSENT_GDPR_APPLIES = "gdpr";
    public static final String IM_GDPR_CONSENT_IAB = "gdpr_consent";
    public static final InMobiSdk INSTANCE = new InMobiSdk();

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    @Metadata(m2721d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u000b\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u000f\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\b\u0010\u0005\u001a\u00020\u0003H\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000j\u0002\b\u0006j\u0002\b\u0007j\u0002\b\bj\u0002\b\tj\u0002\b\nj\u0002\b\u000bj\u0002\b\fj\u0002\b\r¨\u0006\u000e"}, m2722d2 = {"Lcom/inmobi/sdk/InMobiSdk$AgeGroup;", "", "value", "", "(Ljava/lang/String;ILjava/lang/String;)V", InAppPurchaseConstants.METHOD_TO_STRING, InMobiNetworkValues.BELOW_18, InMobiNetworkValues.BETWEEN_18_AND_24, InMobiNetworkValues.BETWEEN_25_AND_29, InMobiNetworkValues.BETWEEN_30_AND_34, InMobiNetworkValues.BETWEEN_35_AND_44, InMobiNetworkValues.BETWEEN_45_AND_54, InMobiNetworkValues.BETWEEN_55_AND_65, InMobiNetworkValues.ABOVE_65, "media_release"}, m2723k = 1, m2724mv = {1, 9, 0}, m2726xi = 48)
    public static final class AgeGroup {
        private static final /* synthetic */ EnumEntries $ENTRIES;
        private static final /* synthetic */ AgeGroup[] $VALUES;
        private final String value;
        public static final AgeGroup BELOW_18 = new AgeGroup(InMobiNetworkValues.BELOW_18, 0, "below18");
        public static final AgeGroup BETWEEN_18_AND_24 = new AgeGroup(InMobiNetworkValues.BETWEEN_18_AND_24, 1, "between18and24");
        public static final AgeGroup BETWEEN_25_AND_29 = new AgeGroup(InMobiNetworkValues.BETWEEN_25_AND_29, 2, "between25and29");
        public static final AgeGroup BETWEEN_30_AND_34 = new AgeGroup(InMobiNetworkValues.BETWEEN_30_AND_34, 3, "between30and34");
        public static final AgeGroup BETWEEN_35_AND_44 = new AgeGroup(InMobiNetworkValues.BETWEEN_35_AND_44, 4, "between35and44");
        public static final AgeGroup BETWEEN_45_AND_54 = new AgeGroup(InMobiNetworkValues.BETWEEN_45_AND_54, 5, "between45and54");
        public static final AgeGroup BETWEEN_55_AND_65 = new AgeGroup(InMobiNetworkValues.BETWEEN_55_AND_65, 6, "between55and65");
        public static final AgeGroup ABOVE_65 = new AgeGroup(InMobiNetworkValues.ABOVE_65, 7, "above65");

        private static final /* synthetic */ AgeGroup[] $values() {
            return new AgeGroup[]{BELOW_18, BETWEEN_18_AND_24, BETWEEN_25_AND_29, BETWEEN_30_AND_34, BETWEEN_35_AND_44, BETWEEN_45_AND_54, BETWEEN_55_AND_65, ABOVE_65};
        }

        static {
            AgeGroup[] ageGroupArr$values = $values();
            $VALUES = ageGroupArr$values;
            $ENTRIES = EnumEntriesKt.enumEntries(ageGroupArr$values);
        }

        private AgeGroup(String str, int i, String str2) {
            this.value = str2;
        }

        public static EnumEntries<AgeGroup> getEntries() {
            return $ENTRIES;
        }

        public static AgeGroup valueOf(String str) {
            return (AgeGroup) Enum.valueOf(AgeGroup.class, str);
        }

        public static AgeGroup[] values() {
            return (AgeGroup[]) $VALUES.clone();
        }

        @Override // java.lang.Enum
        public String toString() {
            return this.value;
        }
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    @Metadata(m2721d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0006\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u000f\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\b\u0010\u0005\u001a\u00020\u0003H\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000j\u0002\b\u0006j\u0002\b\u0007j\u0002\b\b¨\u0006\t"}, m2722d2 = {"Lcom/inmobi/sdk/InMobiSdk$Education;", "", "value", "", "(Ljava/lang/String;ILjava/lang/String;)V", InAppPurchaseConstants.METHOD_TO_STRING, "HIGH_SCHOOL_OR_LESS", "COLLEGE_OR_GRADUATE", "POST_GRADUATE_OR_ABOVE", "media_release"}, m2723k = 1, m2724mv = {1, 9, 0}, m2726xi = 48)
    public static final class Education {
        private static final /* synthetic */ EnumEntries $ENTRIES;
        private static final /* synthetic */ Education[] $VALUES;
        private final String value;
        public static final Education HIGH_SCHOOL_OR_LESS = new Education("HIGH_SCHOOL_OR_LESS", 0, "highschoolorless");
        public static final Education COLLEGE_OR_GRADUATE = new Education("COLLEGE_OR_GRADUATE", 1, "collegeorgraduate");
        public static final Education POST_GRADUATE_OR_ABOVE = new Education("POST_GRADUATE_OR_ABOVE", 2, "postgraduateorabove");

        private static final /* synthetic */ Education[] $values() {
            return new Education[]{HIGH_SCHOOL_OR_LESS, COLLEGE_OR_GRADUATE, POST_GRADUATE_OR_ABOVE};
        }

        static {
            Education[] educationArr$values = $values();
            $VALUES = educationArr$values;
            $ENTRIES = EnumEntriesKt.enumEntries(educationArr$values);
        }

        private Education(String str, int i, String str2) {
            this.value = str2;
        }

        public static EnumEntries<Education> getEntries() {
            return $ENTRIES;
        }

        public static Education valueOf(String str) {
            return (Education) Enum.valueOf(Education.class, str);
        }

        public static Education[] values() {
            return (Education[]) $VALUES.clone();
        }

        @Override // java.lang.Enum
        public String toString() {
            return this.value;
        }
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    @Metadata(m2721d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0005\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u000f\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\b\u0010\u0005\u001a\u00020\u0003H\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000j\u0002\b\u0006j\u0002\b\u0007¨\u0006\b"}, m2722d2 = {"Lcom/inmobi/sdk/InMobiSdk$Gender;", "", "value", "", "(Ljava/lang/String;ILjava/lang/String;)V", InAppPurchaseConstants.METHOD_TO_STRING, "FEMALE", "MALE", "media_release"}, m2723k = 1, m2724mv = {1, 9, 0}, m2726xi = 48)
    public static final class Gender {
        private static final /* synthetic */ EnumEntries $ENTRIES;
        private static final /* synthetic */ Gender[] $VALUES;
        public static final Gender FEMALE = new Gender("FEMALE", 0, XfdfConstants.f2852F);
        public static final Gender MALE = new Gender("MALE", 1, SvgConstants.Attributes.PATH_DATA_REL_MOVE_TO);
        private final String value;

        private static final /* synthetic */ Gender[] $values() {
            return new Gender[]{FEMALE, MALE};
        }

        static {
            Gender[] genderArr$values = $values();
            $VALUES = genderArr$values;
            $ENTRIES = EnumEntriesKt.enumEntries(genderArr$values);
        }

        private Gender(String str, int i, String str2) {
            this.value = str2;
        }

        public static EnumEntries<Gender> getEntries() {
            return $ENTRIES;
        }

        public static Gender valueOf(String str) {
            return (Gender) Enum.valueOf(Gender.class, str);
        }

        public static Gender[] values() {
            return (Gender[]) $VALUES.clone();
        }

        @Override // java.lang.Enum
        public String toString() {
            return this.value;
        }
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    @Metadata(m2721d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0005\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002j\u0002\b\u0003j\u0002\b\u0004j\u0002\b\u0005¨\u0006\u0006"}, m2722d2 = {"Lcom/inmobi/sdk/InMobiSdk$LogLevel;", "", "(Ljava/lang/String;I)V", "NONE", "ERROR", "DEBUG", "media_release"}, m2723k = 1, m2724mv = {1, 9, 0}, m2726xi = 48)
    public static final class LogLevel {
        private static final /* synthetic */ EnumEntries $ENTRIES;
        private static final /* synthetic */ LogLevel[] $VALUES;
        public static final LogLevel NONE = new LogLevel("NONE", 0);
        public static final LogLevel ERROR = new LogLevel("ERROR", 1);
        public static final LogLevel DEBUG = new LogLevel("DEBUG", 2);

        private static final /* synthetic */ LogLevel[] $values() {
            return new LogLevel[]{NONE, ERROR, DEBUG};
        }

        static {
            LogLevel[] logLevelArr$values = $values();
            $VALUES = logLevelArr$values;
            $ENTRIES = EnumEntriesKt.enumEntries(logLevelArr$values);
        }

        private LogLevel(String str, int i) {
        }

        public static EnumEntries<LogLevel> getEntries() {
            return $ENTRIES;
        }

        public static LogLevel valueOf(String str) {
            return (LogLevel) Enum.valueOf(LogLevel.class, str);
        }

        public static LogLevel[] values() {
            return (LogLevel[]) $VALUES.clone();
        }
    }

    @Metadata(m2721d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0007\bÆ\u0002\u0018\u00002\u00020\u0001J#\u0010\u0006\u001a\u00020\u00052\u0014\u0010\u0004\u001a\u0010\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u0001\u0018\u00010\u0002¢\u0006\u0004\b\u0006\u0010\u0007J\u001b\u0010\b\u001a\u0010\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u0001\u0018\u00010\u0002¢\u0006\u0004\b\b\u0010\tJ\r\u0010\n\u001a\u00020\u0005¢\u0006\u0004\b\n\u0010\u000b¨\u0006\f"}, m2722d2 = {"Lcom/inmobi/sdk/InMobiSdk$PublisherSignals;", "", "", "", "signals", "", "putPublisherSignals", "(Ljava/util/Map;)V", "getPublisherSignals", "()Ljava/util/Map;", "resetPublisherSignals", "()V", "media_release"}, m2723k = 1, m2724mv = {1, 9, 0}, m2726xi = 48)
    public static final class PublisherSignals {
        public static final PublisherSignals INSTANCE = new PublisherSignals();

        public final Map<String, Object> getPublisherSignals() {
            if (!InMobiSdk.isSDKInitialized()) {
                String strAccess$getTAG$p = InMobiSdk.access$getTAG$p();
                Intrinsics.checkNotNullExpressionValue(strAccess$getTAG$p, "access$getTAG$p(...)");
                AbstractC2814I6.m1170a((byte) 1, strAccess$getTAG$p, "SDK not initialized. Cannot get publisher signals.");
                return null;
            }
            C3077aa c3077aa = C3077aa.f1850a;
            c3077aa.getClass();
            try {
                LinkedHashMap linkedHashMap = C2840K2.f1150a;
                Config configM1161a = C2810I2.m1161a("signals", C2849Kb.m1248b(), null);
                Intrinsics.checkNotNull(configM1161a, "null cannot be cast to non-null type com.inmobi.commons.core.configs.SignalsConfig");
                SignalsConfig.PublisherConfig publisher = ((SignalsConfig) configM1161a).getPublisher();
                return (publisher.getEnableMCO() || publisher.getEnableAB()) ? c3077aa.m2027a() : MapsKt.emptyMap();
            } catch (Exception e) {
                C3402w5 c3402w5 = C3402w5.f2709a;
                C3402w5.f2712d.m2158a(AbstractC3102c5.m2045a(e, "event"));
                AbstractC2814I6.m1170a((byte) 1, "PubSignalsStore", "Publisher signals could not be retrieved.");
                return MapsKt.emptyMap();
            }
        }

        public final void putPublisherSignals(Map<String, ? extends Object> signals) {
            if (!InMobiSdk.isSDKInitialized()) {
                String strAccess$getTAG$p = InMobiSdk.access$getTAG$p();
                Intrinsics.checkNotNullExpressionValue(strAccess$getTAG$p, "access$getTAG$p(...)");
                AbstractC2814I6.m1170a((byte) 1, strAccess$getTAG$p, "SDK not initialized. Cannot set publisher signals.");
                return;
            }
            if (signals != null) {
                C3077aa c3077aa = C3077aa.f1850a;
                c3077aa.getClass();
                Intrinsics.checkNotNullParameter(signals, "signals");
                try {
                    LinkedHashMap linkedHashMap = C2840K2.f1150a;
                    Config configM1161a = C2810I2.m1161a("signals", C2849Kb.m1248b(), null);
                    Intrinsics.checkNotNull(configM1161a, "null cannot be cast to non-null type com.inmobi.commons.core.configs.SignalsConfig");
                    SignalsConfig.PublisherConfig publisher = ((SignalsConfig) configM1161a).getPublisher();
                    if (publisher.getEnableMCO() || publisher.getEnableAB()) {
                        LinkedHashMap linkedHashMapM2027a = c3077aa.m2027a();
                        Intrinsics.checkNotNullParameter(linkedHashMapM2027a, "<this>");
                        Intrinsics.checkNotNullParameter(signals, "map");
                        LinkedHashMap linkedHashMap2 = new LinkedHashMap();
                        linkedHashMap2.putAll(linkedHashMapM2027a);
                        linkedHashMap2.putAll(signals);
                        JSONObject jSONObjectM2022a = C3077aa.m2022a(C3077aa.m2021a(C3077aa.m2020a(linkedHashMap2, publisher)), publisher);
                        if (jSONObjectM2022a != null) {
                            C3077aa.m2024a(jSONObjectM2022a);
                        }
                    } else {
                        AbstractC2814I6.m1170a((byte) 1, "PubSignalsStore", "Publisher signals are disabled from InMobi");
                    }
                } catch (Exception e) {
                    C3402w5 c3402w5 = C3402w5.f2709a;
                    C3402w5.f2712d.m2158a(AbstractC3102c5.m2045a(e, "event"));
                    AbstractC2814I6.m1170a((byte) 1, "PubSignalsStore", "Publisher signals could not be saved.");
                }
            }
        }

        public final void resetPublisherSignals() {
            if (InMobiSdk.isSDKInitialized()) {
                C3077aa.f1850a.getClass();
                C3077aa.m2025b();
            } else {
                String strAccess$getTAG$p = InMobiSdk.access$getTAG$p();
                Intrinsics.checkNotNullExpressionValue(strAccess$getTAG$p, "access$getTAG$p(...)");
                AbstractC2814I6.m1170a((byte) 1, strAccess$getTAG$p, "SDK not initialized. Cannot reset publisher signals.");
            }
        }
    }

    /* JADX INFO: renamed from: a */
    public static void m2649a(final Context context, final String str, final JSONObject jSONObject, final SdkInitializationListener sdkInitializationListener) {
        AbstractC3154fc.m2140a(new Runnable() { // from class: com.inmobi.sdk.InMobiSdk$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                InMobiSdk.m2647a(context, sdkInitializationListener, str, jSONObject);
            }
        });
    }

    public static final /* synthetic */ String access$getTAG$p() {
        return "InMobiSdk";
    }

    /* JADX INFO: renamed from: b */
    public static void m2651b(final SdkInitializationListener sdkInitializationListener, final String str) {
        if (sdkInitializationListener != null) {
            AbstractC3154fc.m2140a(new Runnable() { // from class: com.inmobi.sdk.InMobiSdk$$ExternalSyntheticLambda1
                @Override // java.lang.Runnable
                public final void run() {
                    InMobiSdk.m2652c(sdkInitializationListener, str);
                }
            });
        }
        if (str == null) {
            AbstractC2814I6.m1170a((byte) 2, "InMobiSdk", AbstractC3208j6.m2261a("InMobiSdk", "TAG", "InMobi SDK initialized with account id: ").append(C2849Kb.m1248b()).toString());
        } else {
            Intrinsics.checkNotNullExpressionValue("InMobiSdk", "TAG");
            AbstractC2814I6.m1170a((byte) 1, "InMobiSdk", str);
        }
    }

    /* JADX INFO: renamed from: c */
    public static final void m2652c(SdkInitializationListener sdkInitializationListener, String str) {
        INSTANCE.m2653a(sdkInitializationListener, str);
    }

    @JvmStatic
    public static final String getToken() {
        return getToken(null, null);
    }

    @JvmStatic
    public static final String getVersion() {
        return "10.8.3";
    }

    @JvmStatic
    public static final void init(Context context, String accountId, JSONObject consentObject, SdkInitializationListener sdkInitializationListener) {
        InMobiSdk inMobiSdk = INSTANCE;
        Context applicationContext = context != null ? context.getApplicationContext() : null;
        inMobiSdk.getClass();
        m2649a(applicationContext, accountId, consentObject, sdkInitializationListener);
    }

    @JvmStatic
    public static final boolean isSDKInitialized() {
        return C2849Kb.m1265q();
    }

    @JvmStatic
    public static final void setAge(int age) {
        Context contextM1254d = C2849Kb.m1254d();
        if (age != Integer.MIN_VALUE) {
            AbstractC3107ca.f1950a = age;
            if (contextM1254d != null) {
                ConcurrentHashMap concurrentHashMap = C3133e6.f2044b;
                C3133e6.m2099a(AbstractC3118d6.m2058a(contextM1254d, "user_info_store"), "user_age", age, false, 4, (Object) null);
            }
        }
    }

    @JvmStatic
    public static final void setAgeGroup(AgeGroup group) {
        Intrinsics.checkNotNullParameter(group, "group");
        String string = group.toString();
        Locale ENGLISH = Locale.ENGLISH;
        Intrinsics.checkNotNullExpressionValue(ENGLISH, "ENGLISH");
        String lowerCase = string.toLowerCase(ENGLISH);
        Intrinsics.checkNotNullExpressionValue(lowerCase, "this as java.lang.String).toLowerCase(locale)");
        Context contextM1254d = C2849Kb.m1254d();
        if (lowerCase != null) {
            AbstractC3107ca.f1952c = lowerCase;
            if (contextM1254d != null) {
                ConcurrentHashMap concurrentHashMap = C3133e6.f2044b;
                C3133e6.m2101a(AbstractC3118d6.m2058a(contextM1254d, "user_info_store"), "user_age_group", lowerCase, false, 4, (Object) null);
            }
        }
    }

    @JvmStatic
    public static final void setApplicationMuted(boolean muted) {
        C2849Kb.m1249b(muted);
    }

    @JvmStatic
    public static final void setAreaCode(String areaCode) {
        Context contextM1254d = C2849Kb.m1254d();
        AbstractC3107ca.f1953d = areaCode;
        if (contextM1254d == null || areaCode == null) {
            return;
        }
        ConcurrentHashMap concurrentHashMap = C3133e6.f2044b;
        C3133e6.m2101a(AbstractC3118d6.m2058a(contextM1254d, "user_info_store"), "user_area_code", areaCode, false, 4, (Object) null);
    }

    @JvmStatic
    public static final void setEducation(Education education) {
        Intrinsics.checkNotNullParameter(education, "education");
        String string = education.toString();
        Locale ENGLISH = Locale.ENGLISH;
        Intrinsics.checkNotNullExpressionValue(ENGLISH, "ENGLISH");
        String lowerCase = string.toLowerCase(ENGLISH);
        Intrinsics.checkNotNullExpressionValue(lowerCase, "this as java.lang.String).toLowerCase(locale)");
        Context contextM1254d = C2849Kb.m1254d();
        if (lowerCase != null) {
            AbstractC3107ca.f1960k = lowerCase;
            if (contextM1254d != null) {
                ConcurrentHashMap concurrentHashMap = C3133e6.f2044b;
                C3133e6.m2101a(AbstractC3118d6.m2058a(contextM1254d, "user_info_store"), "user_education", lowerCase, false, 4, (Object) null);
            }
        }
    }

    @JvmStatic
    public static final void setGender(Gender gender) {
        Intrinsics.checkNotNullParameter(gender, "gender");
        String string = gender.toString();
        Locale ENGLISH = Locale.ENGLISH;
        Intrinsics.checkNotNullExpressionValue(ENGLISH, "ENGLISH");
        String lowerCase = string.toLowerCase(ENGLISH);
        Intrinsics.checkNotNullExpressionValue(lowerCase, "this as java.lang.String).toLowerCase(locale)");
        Context contextM1254d = C2849Kb.m1254d();
        if (lowerCase != null) {
            AbstractC3107ca.f1959j = lowerCase;
            if (contextM1254d != null) {
                ConcurrentHashMap concurrentHashMap = C3133e6.f2044b;
                C3133e6.m2101a(AbstractC3118d6.m2058a(contextM1254d, "user_info_store"), AuthenticationTokenClaims.JSON_KEY_USER_GENDER, lowerCase, false, 4, (Object) null);
            }
        }
    }

    @JvmStatic
    public static final void setInterests(String interests) {
        Context contextM1254d = C2849Kb.m1254d();
        if (interests != null) {
            AbstractC3107ca.f1962m = interests;
            if (contextM1254d != null) {
                ConcurrentHashMap concurrentHashMap = C3133e6.f2044b;
                C3133e6.m2101a(AbstractC3118d6.m2058a(contextM1254d, "user_info_store"), "user_interest", interests, false, 4, (Object) null);
            }
        }
    }

    @JvmStatic
    public static final void setIsAgeRestricted(boolean isAgeRestricted) {
        AbstractC3107ca.m2048a(isAgeRestricted);
        C2835Jc.f1140a.m1201a(isAgeRestricted);
        if (isAgeRestricted) {
            InMobiUnifiedIdService.reset();
            AbstractC3267n5.m2313a();
        }
    }

    @JvmStatic
    public static final void setLanguage(String language) {
        Context contextM1254d = C2849Kb.m1254d();
        if (language != null) {
            AbstractC3107ca.f1961l = language;
            if (contextM1254d != null) {
                ConcurrentHashMap concurrentHashMap = C3133e6.f2044b;
                C3133e6.m2101a(AbstractC3118d6.m2058a(contextM1254d, "user_info_store"), "user_language", language, false, 4, (Object) null);
            }
        }
    }

    @JvmStatic
    public static final void setLocation(Location location) {
        Context contextM1254d = C2849Kb.m1254d();
        if (location != null) {
            AbstractC3107ca.f1963n = location;
            if (contextM1254d != null) {
                String string = new StringBuilder().append(location.getLatitude()).append(',').append(location.getLongitude()).append(',').append((int) location.getAccuracy()).append(',').append(location.getTime()).toString();
                ConcurrentHashMap concurrentHashMap = C3133e6.f2044b;
                C3133e6.m2101a(AbstractC3118d6.m2058a(contextM1254d, "user_info_store"), AuthenticationTokenClaims.JSON_KEY_USER_LOCATION, string, false, 4, (Object) null);
            }
        }
    }

    @JvmStatic
    public static final void setLocationWithCityStateCountry(String city, String state, String country) {
        Context contextM1254d = C2849Kb.m1254d();
        if (city != null) {
            AbstractC3107ca.f1955f = city;
            if (contextM1254d != null) {
                ConcurrentHashMap concurrentHashMap = C3133e6.f2044b;
                C3133e6.m2101a(AbstractC3118d6.m2058a(contextM1254d, "user_info_store"), "user_city_code", city, false, 4, (Object) null);
            }
        }
        Context contextM1254d2 = C2849Kb.m1254d();
        if (state != null) {
            AbstractC3107ca.f1956g = state;
            if (contextM1254d2 != null) {
                ConcurrentHashMap concurrentHashMap2 = C3133e6.f2044b;
                C3133e6.m2101a(AbstractC3118d6.m2058a(contextM1254d2, "user_info_store"), "user_state_code", state, false, 4, (Object) null);
            }
        }
        Context contextM1254d3 = C2849Kb.m1254d();
        if (country != null) {
            AbstractC3107ca.f1957h = country;
            if (contextM1254d3 != null) {
                ConcurrentHashMap concurrentHashMap3 = C3133e6.f2044b;
                C3133e6.m2101a(AbstractC3118d6.m2058a(contextM1254d3, "user_info_store"), "user_country_code", country, false, 4, (Object) null);
            }
        }
    }

    @JvmStatic
    public static final void setLogLevel(LogLevel logLevel) {
        int i = logLevel == null ? -1 : AbstractC3456a.f2818a[logLevel.ordinal()];
        if (i == 1) {
            AbstractC2814I6.m1169a((byte) 0);
            return;
        }
        if (i == 2) {
            AbstractC2814I6.m1169a((byte) 1);
        } else if (i != 3) {
            AbstractC2814I6.m1169a((byte) 2);
        } else {
            AbstractC2814I6.m1169a((byte) 2);
        }
    }

    @JvmStatic
    public static final void setPartnerGDPRConsent(JSONObject consentObject) {
        C3356t4.m2414c(consentObject);
    }

    @JvmStatic
    public static final void setPostalCode(String postalCode) {
        Context contextM1254d = C2849Kb.m1254d();
        if (postalCode != null) {
            AbstractC3107ca.f1954e = postalCode;
            if (contextM1254d != null) {
                ConcurrentHashMap concurrentHashMap = C3133e6.f2044b;
                C3133e6.m2101a(AbstractC3118d6.m2058a(contextM1254d, "user_info_store"), "user_post_code", postalCode, false, 4, (Object) null);
            }
        }
    }

    @JvmStatic
    public static final void setPublisherProvidedUnifiedId(JSONObject jsonObject) {
        Intrinsics.checkNotNullExpressionValue("InMobiSdk", "TAG");
        Objects.toString(jsonObject);
        C2849Kb.m1246a(new RunnableC3282o5(jsonObject));
    }

    @JvmStatic
    public static final void setYearOfBirth(int yearOfBirth) {
        Context contextM1254d = C2849Kb.m1254d();
        if (yearOfBirth != Integer.MIN_VALUE) {
            AbstractC3107ca.f1958i = yearOfBirth;
            if (contextM1254d != null) {
                ConcurrentHashMap concurrentHashMap = C3133e6.f2044b;
                C3133e6.m2099a(AbstractC3118d6.m2058a(contextM1254d, "user_info_store"), "user_yob", yearOfBirth, false, 4, (Object) null);
            }
        }
    }

    @JvmStatic
    public static final void updateGDPRConsent(JSONObject consentObject) {
        C3356t4.m2412b(consentObject);
    }

    /* JADX INFO: renamed from: a */
    public static final void m2647a(final Context context, final SdkInitializationListener sdkInitializationListener, String str, JSONObject jSONObject) {
        if (context == null) {
            INSTANCE.getClass();
            m2651b(sdkInitializationListener, SdkInitializationListener.MISSING_CONTEXT);
            return;
        }
        if (str == null) {
            INSTANCE.getClass();
            m2651b(sdkInitializationListener, "Account id cannot be empty. Please provide a valid account id.");
            return;
        }
        final long jElapsedRealtime = SystemClock.elapsedRealtime();
        C3064Zb.f1826a.m2007a();
        if (C2981Tc.f1553a.m1831c()) {
            INSTANCE.getClass();
            m2651b(sdkInitializationListener, "SDK could not be initialized; Required dependency could not be found. Please check out documentation and include the required dependency.");
            return;
        }
        int length = str.length() - 1;
        int i = 0;
        boolean z = false;
        while (i <= length) {
            boolean z2 = Intrinsics.compare((int) str.charAt(!z ? i : length), 32) <= 0;
            if (z) {
                if (!z2) {
                    break;
                } else {
                    length--;
                }
            } else if (z2) {
                i++;
            } else {
                z = true;
            }
        }
        final String strM2246a = AbstractC3194i7.m2246a(length, 1, str, i);
        try {
            C3356t4.m2412b(jSONObject);
            if (strM2246a.length() == 0) {
                INSTANCE.getClass();
                m2651b(sdkInitializationListener, "Account id cannot be empty. Please provide a valid account id.");
                return;
            }
            if (!AbstractC2922P9.m1519a(context, "android.permission.ACCESS_COARSE_LOCATION") && !AbstractC2922P9.m1519a(context, "android.permission.ACCESS_FINE_LOCATION")) {
                Intrinsics.checkNotNullExpressionValue("InMobiSdk", "TAG");
                AbstractC2814I6.m1170a((byte) 1, "InMobiSdk", "Please grant the location permissions (ACCESS_COARSE_LOCATION or ACCESS_FINE_LOCATION, or both) for better ad targeting.");
            }
            if (C2849Kb.m1265q()) {
                Intrinsics.checkNotNullExpressionValue("InMobiSdk", "TAG");
                INSTANCE.getClass();
                m2651b(sdkInitializationListener, null);
                return;
            }
            C2849Kb c2849Kb = C2849Kb.f1171a;
            if (c2849Kb.m1277i() == 1) {
                Intrinsics.checkNotNullExpressionValue("InMobiSdk", "TAG");
                return;
            }
            if (C2849Kb.m1250b(context, strM2246a)) {
                C2981Tc.f1553a.m1832e(context);
                INSTANCE.getClass();
                m2646a();
                C2849Kb.m1246a(new Runnable() { // from class: com.inmobi.sdk.InMobiSdk$$ExternalSyntheticLambda3
                    @Override // java.lang.Runnable
                    public final void run() {
                        InMobiSdk.m2648a(context, strM2246a, sdkInitializationListener, jElapsedRealtime);
                    }
                });
                return;
            }
            Intrinsics.checkNotNullExpressionValue("InMobiSdk", "TAG");
            c2849Kb.m1278s();
            INSTANCE.getClass();
            m2651b(sdkInitializationListener, SdkInitializationListener.MISSING_WEBVIEW_DEPENDENCY);
        } catch (Exception unused) {
            Intrinsics.checkNotNullExpressionValue("InMobiSdk", "TAG");
            C2849Kb.f1171a.m1278s();
            INSTANCE.getClass();
            m2651b(sdkInitializationListener, "SDK could not be initialized; an unexpected error was encountered.");
        }
    }

    @JvmStatic
    public static final String getToken(Map<String, String> extras, String keywords) {
        return AbstractC2775Fc.m1123a(extras, keywords);
    }

    /* JADX INFO: renamed from: b */
    public static final void m2650b() {
        String[] strArr = {"android.permission.ACCESS_COARSE_LOCATION", "android.permission.ACCESS_FINE_LOCATION", "android.permission.ACCESS_WIFI_STATE", "android.permission.CHANGE_WIFI_STATE"};
        StringBuilder sb = new StringBuilder("Permissions granted to SDK are :\nandroid.permission.INTERNET\nandroid.permission.ACCESS_NETWORK_STATE");
        for (int i = 0; i < 4; i++) {
            String str = strArr[i];
            if (AbstractC2922P9.m1519a(C2849Kb.m1254d(), str)) {
                sb.append(StringUtils.f4768LF).append(str);
            }
        }
        Intrinsics.checkNotNullExpressionValue("InMobiSdk", "TAG");
        AbstractC2814I6.m1170a((byte) 2, "InMobiSdk", sb.toString());
    }

    /* JADX INFO: renamed from: a */
    public static final void m2648a(Context context, String str, SdkInitializationListener sdkInitializationListener, long j) {
        try {
            C2981Tc c2981Tc = C2981Tc.f1553a;
            c2981Tc.m1829a(context);
            C2849Kb c2849Kb = C2849Kb.f1171a;
            c2849Kb.m1269a();
            c2849Kb.m1275b(str);
            c2981Tc.m1830c(context);
            c2849Kb.m1279t();
            INSTANCE.getClass();
            m2651b(sdkInitializationListener, null);
            LinkedHashMap linkedHashMapM2645a = m2645a(j);
            C3199ic c3199ic = C3199ic.f2193a;
            C3199ic.m2248b("SdkInitialized", linkedHashMapM2645a, EnumC3259mc.f2349a);
            InMobiUnifiedIdService.push(null);
        } catch (Exception unused) {
            Intrinsics.checkNotNullExpressionValue("InMobiSdk", "TAG");
            C2849Kb.f1171a.m1278s();
            INSTANCE.getClass();
            m2651b(sdkInitializationListener, "SDK could not be initialized; an unexpected error was encountered.");
        }
    }

    /* JADX INFO: renamed from: a */
    public final void m2653a(SdkInitializationListener sdkInitializationListener, String message) {
        sdkInitializationListener.onInitializationComplete(message == null ? null : new Error(message));
    }

    /* JADX INFO: renamed from: a */
    public static LinkedHashMap m2645a(long j) {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        linkedHashMap.put("latency", Long.valueOf(SystemClock.elapsedRealtime() - j));
        Intrinsics.checkNotNullExpressionValue("InMobiSdk", "TAG");
        Objects.toString(linkedHashMap.get("latency"));
        linkedHashMap.put("networkType", C2751E3.m1005q());
        linkedHashMap.put("integrationType", "InMobi");
        return linkedHashMap;
    }

    /* JADX INFO: renamed from: a */
    public static void m2646a() {
        C2849Kb.m1246a(new Runnable() { // from class: com.inmobi.sdk.InMobiSdk$$ExternalSyntheticLambda2
            @Override // java.lang.Runnable
            public final void run() {
                InMobiSdk.m2650b();
            }
        });
    }
}
