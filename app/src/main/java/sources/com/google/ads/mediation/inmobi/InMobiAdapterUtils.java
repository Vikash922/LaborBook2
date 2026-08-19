package com.google.ads.mediation.inmobi;

import android.content.Context;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Log;
import androidx.recyclerview.widget.ItemTouchHelper;
import com.google.android.gms.ads.AdError;
import com.google.android.gms.ads.AdSize;
import com.google.android.gms.ads.MediationUtils;
import com.google.android.gms.ads.MobileAds;
import com.inmobi.ads.InMobiAdRequestStatus;
import com.inmobi.sdk.InMobiSdk;
import com.itextpdf.p017io.codec.TIFFConstants;
import java.util.ArrayList;
import java.util.Objects;

/* JADX INFO: loaded from: classes3.dex */
public class InMobiAdapterUtils {
    public static final String COPPA = "coppa";
    public static final String KEY_ACCOUNT_ID = "accountid";
    public static final String KEY_PLACEMENT_ID = "placementid";
    public static final String PROTOCOL_RTB = "c_google";
    public static final String PROTOCOL_WATERFALL = "c_admob";
    public static final String THIRD_PARTY_KEY = "tp";
    public static final String THIRD_PARTY_VERSION = "tp-ver";

    public static long getPlacementId(Bundle bundle) {
        String string = bundle.getString(KEY_PLACEMENT_ID);
        if (TextUtils.isEmpty(string)) {
            Log.e(InMobiMediationAdapter.TAG, "Missing or invalid Placement ID.");
            return 0L;
        }
        try {
            return Long.parseLong(string);
        } catch (NumberFormatException e) {
            Log.e(InMobiMediationAdapter.TAG, "Invalid Placement ID.", e);
            return 0L;
        }
    }

    public static void configureGlobalTargeting(Bundle bundle) {
        InMobiSdk.AgeGroup ageGroup;
        InMobiSdk.Education education;
        if (bundle == null) {
            Log.d(InMobiMediationAdapter.TAG, "Bundle extras are null");
            bundle = new Bundle();
        }
        String str = "";
        String str2 = str;
        String str3 = str2;
        for (String str4 : bundle.keySet()) {
            String string = bundle.getString(str4);
            if (str4.equals(InMobiNetworkKeys.AREA_CODE)) {
                if (!"".equals(string)) {
                    InMobiSdk.setAreaCode(string);
                }
            } else if (str4.equals(InMobiNetworkKeys.AGE)) {
                try {
                    if (!"".equals(string)) {
                        InMobiSdk.setAge(Integer.parseInt(string));
                    }
                } catch (NumberFormatException e) {
                    Log.d(InMobiMediationAdapter.TAG, "Please Set age properly", e);
                }
            } else if (str4.equals(InMobiNetworkKeys.POSTAL_CODE)) {
                if (!"".equals(string)) {
                    InMobiSdk.setPostalCode(string);
                }
            } else if (str4.equals(InMobiNetworkKeys.LANGUAGE)) {
                if (!"".equals(string)) {
                    InMobiSdk.setLanguage(string);
                }
            } else if (str4.equals(InMobiNetworkKeys.CITY)) {
                str = string;
            } else if (str4.equals(InMobiNetworkKeys.STATE)) {
                str2 = string;
            } else if (str4.equals(InMobiNetworkKeys.COUNTRY)) {
                str3 = string;
            } else if (str4.equals(InMobiNetworkKeys.AGE_GROUP)) {
                if (string != null && (ageGroup = getAgeGroup(string)) != null) {
                    InMobiSdk.setAgeGroup(ageGroup);
                }
            } else if (str4.equals(InMobiNetworkKeys.EDUCATION)) {
                if (string != null && (education = getEducation(string)) != null) {
                    InMobiSdk.setEducation(education);
                }
            } else if (str4.equals(InMobiNetworkKeys.LOGLEVEL)) {
                if (string != null) {
                    InMobiSdk.setLogLevel(getLogLevel(string));
                } else {
                    InMobiSdk.setLogLevel(InMobiSdk.LogLevel.NONE);
                }
            } else if (str4.equals(InMobiNetworkKeys.INTERESTS)) {
                InMobiSdk.setInterests(string);
            }
        }
        if (Objects.equals(str, "") || Objects.equals(str2, "") || Objects.equals(str3, "")) {
            return;
        }
        InMobiSdk.setLocationWithCityStateCountry(str, str2, str3);
    }

    static void setIsAgeRestricted(InMobiSdkWrapper inMobiSdkWrapper) {
        if (MobileAds.getRequestConfiguration().getTagForChildDirectedTreatment() == 1) {
            inMobiSdkWrapper.setIsAgeRestricted(true);
        } else {
            inMobiSdkWrapper.setIsAgeRestricted(false);
        }
    }

    public static void setIsAgeRestricted() {
        setIsAgeRestricted(new InMobiSdkWrapper());
    }

    static InMobiSdk.AgeGroup getAgeGroup(String str) {
        str.hashCode();
        switch (str) {
            case "BETWEEN_55_AND_65":
                return InMobiSdk.AgeGroup.BETWEEN_55_AND_65;
            case "ABOVE_65":
                return InMobiSdk.AgeGroup.ABOVE_65;
            case "BELOW_18":
                return InMobiSdk.AgeGroup.BELOW_18;
            case "BETWEEN_25_AND_29":
                return InMobiSdk.AgeGroup.BETWEEN_25_AND_29;
            case "BETWEEN_45_AND_54":
                return InMobiSdk.AgeGroup.BETWEEN_45_AND_54;
            case "BETWEEN_30_AND_34":
                return InMobiSdk.AgeGroup.BETWEEN_30_AND_34;
            case "BETWEEN_35_AND_44":
                return InMobiSdk.AgeGroup.BETWEEN_35_AND_44;
            case "BETWEEN_18_AND_24":
                return InMobiSdk.AgeGroup.BETWEEN_18_AND_24;
            default:
                return null;
        }
    }

    static InMobiSdk.Education getEducation(String str) {
        str.hashCode();
        switch (str) {
            case "EDUCATION_COLLEGEORGRADUATE":
                return InMobiSdk.Education.COLLEGE_OR_GRADUATE;
            case "EDUCATION_POSTGRADUATEORABOVE":
                return InMobiSdk.Education.POST_GRADUATE_OR_ABOVE;
            case "EDUCATION_HIGHSCHOOLORLESS":
                return InMobiSdk.Education.HIGH_SCHOOL_OR_LESS;
            default:
                return null;
        }
    }

    static InMobiSdk.LogLevel getLogLevel(String str) {
        if (str.equals(InMobiNetworkValues.LOGLEVEL_DEBUG)) {
            return InMobiSdk.LogLevel.DEBUG;
        }
        if (str.equals(InMobiNetworkValues.LOGLEVEL_ERROR)) {
            return InMobiSdk.LogLevel.ERROR;
        }
        return InMobiSdk.LogLevel.NONE;
    }

    public static boolean isValidNativeAd(InMobiNativeWrapper inMobiNativeWrapper) {
        return (inMobiNativeWrapper.getAdCtaText() == null || inMobiNativeWrapper.getAdDescription() == null || inMobiNativeWrapper.getAdIconUrl() == null || inMobiNativeWrapper.getAdLandingPageUrl() == null || inMobiNativeWrapper.getAdTitle() == null) ? false : true;
    }

    /* JADX INFO: renamed from: com.google.ads.mediation.inmobi.InMobiAdapterUtils$1 */
    static /* synthetic */ class C12771 {
        static final /* synthetic */ int[] $SwitchMap$com$inmobi$ads$InMobiAdRequestStatus$StatusCode;

        static {
            int[] iArr = new int[InMobiAdRequestStatus.StatusCode.values().length];
            $SwitchMap$com$inmobi$ads$InMobiAdRequestStatus$StatusCode = iArr;
            try {
                iArr[InMobiAdRequestStatus.StatusCode.NO_ERROR.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$inmobi$ads$InMobiAdRequestStatus$StatusCode[InMobiAdRequestStatus.StatusCode.NETWORK_UNREACHABLE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$inmobi$ads$InMobiAdRequestStatus$StatusCode[InMobiAdRequestStatus.StatusCode.NO_FILL.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$com$inmobi$ads$InMobiAdRequestStatus$StatusCode[InMobiAdRequestStatus.StatusCode.REQUEST_INVALID.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$com$inmobi$ads$InMobiAdRequestStatus$StatusCode[InMobiAdRequestStatus.StatusCode.REQUEST_PENDING.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                $SwitchMap$com$inmobi$ads$InMobiAdRequestStatus$StatusCode[InMobiAdRequestStatus.StatusCode.REQUEST_TIMED_OUT.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                $SwitchMap$com$inmobi$ads$InMobiAdRequestStatus$StatusCode[InMobiAdRequestStatus.StatusCode.INTERNAL_ERROR.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                $SwitchMap$com$inmobi$ads$InMobiAdRequestStatus$StatusCode[InMobiAdRequestStatus.StatusCode.SERVER_ERROR.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                $SwitchMap$com$inmobi$ads$InMobiAdRequestStatus$StatusCode[InMobiAdRequestStatus.StatusCode.AD_ACTIVE.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                $SwitchMap$com$inmobi$ads$InMobiAdRequestStatus$StatusCode[InMobiAdRequestStatus.StatusCode.EARLY_REFRESH_REQUEST.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                $SwitchMap$com$inmobi$ads$InMobiAdRequestStatus$StatusCode[InMobiAdRequestStatus.StatusCode.AD_NO_LONGER_AVAILABLE.ordinal()] = 11;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                $SwitchMap$com$inmobi$ads$InMobiAdRequestStatus$StatusCode[InMobiAdRequestStatus.StatusCode.MISSING_REQUIRED_DEPENDENCIES.ordinal()] = 12;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                $SwitchMap$com$inmobi$ads$InMobiAdRequestStatus$StatusCode[InMobiAdRequestStatus.StatusCode.REPETITIVE_LOAD.ordinal()] = 13;
            } catch (NoSuchFieldError unused13) {
            }
            try {
                $SwitchMap$com$inmobi$ads$InMobiAdRequestStatus$StatusCode[InMobiAdRequestStatus.StatusCode.GDPR_COMPLIANCE_ENFORCED.ordinal()] = 14;
            } catch (NoSuchFieldError unused14) {
            }
            try {
                $SwitchMap$com$inmobi$ads$InMobiAdRequestStatus$StatusCode[InMobiAdRequestStatus.StatusCode.GET_SIGNALS_CALLED_WHILE_LOADING.ordinal()] = 15;
            } catch (NoSuchFieldError unused15) {
            }
            try {
                $SwitchMap$com$inmobi$ads$InMobiAdRequestStatus$StatusCode[InMobiAdRequestStatus.StatusCode.LOAD_WITH_RESPONSE_CALLED_WHILE_LOADING.ordinal()] = 16;
            } catch (NoSuchFieldError unused16) {
            }
            try {
                $SwitchMap$com$inmobi$ads$InMobiAdRequestStatus$StatusCode[InMobiAdRequestStatus.StatusCode.INVALID_RESPONSE_IN_LOAD.ordinal()] = 17;
            } catch (NoSuchFieldError unused17) {
            }
            try {
                $SwitchMap$com$inmobi$ads$InMobiAdRequestStatus$StatusCode[InMobiAdRequestStatus.StatusCode.MONETIZATION_DISABLED.ordinal()] = 18;
            } catch (NoSuchFieldError unused18) {
            }
            try {
                $SwitchMap$com$inmobi$ads$InMobiAdRequestStatus$StatusCode[InMobiAdRequestStatus.StatusCode.CALLED_FROM_WRONG_THREAD.ordinal()] = 19;
            } catch (NoSuchFieldError unused19) {
            }
            try {
                $SwitchMap$com$inmobi$ads$InMobiAdRequestStatus$StatusCode[InMobiAdRequestStatus.StatusCode.CONFIGURATION_ERROR.ordinal()] = 20;
            } catch (NoSuchFieldError unused20) {
            }
            try {
                $SwitchMap$com$inmobi$ads$InMobiAdRequestStatus$StatusCode[InMobiAdRequestStatus.StatusCode.LOW_MEMORY.ordinal()] = 21;
            } catch (NoSuchFieldError unused21) {
            }
        }
    }

    public static int getMediationErrorCode(InMobiAdRequestStatus inMobiAdRequestStatus) {
        switch (C12771.$SwitchMap$com$inmobi$ads$InMobiAdRequestStatus$StatusCode[inMobiAdRequestStatus.getStatusCode().ordinal()]) {
            case 1:
                return 0;
            case 2:
                return 1;
            case 3:
                return 2;
            case 4:
                return 3;
            case 5:
                return 4;
            case 6:
                return 5;
            case 7:
                return 6;
            case 8:
                return 7;
            case 9:
                return 8;
            case 10:
                return 9;
            case 11:
                return 10;
            case 12:
                return 11;
            case 13:
                return 12;
            case 14:
                return 13;
            case 15:
                return 14;
            case 16:
                return 15;
            case 17:
                return 16;
            case 18:
                return 17;
            case 19:
                return 18;
            case 20:
                return 19;
            case 21:
                return 20;
            default:
                return 99;
        }
    }

    public static AdSize findClosestBannerSize(Context context, AdSize adSize) {
        ArrayList arrayList = new ArrayList();
        arrayList.add(new AdSize(TIFFConstants.TIFFTAG_COLORMAP, 50));
        arrayList.add(new AdSize(300, ItemTouchHelper.Callback.DEFAULT_SWIPE_ANIMATION_DURATION));
        arrayList.add(new AdSize(728, 90));
        return MediationUtils.findClosestSize(context, adSize, arrayList);
    }

    public static AdError validateInMobiAdLoadParams(String str, long j) {
        if (!TextUtils.isEmpty(str) && j > 0) {
            return null;
        }
        AdError adErrorCreateAdapterError = InMobiConstants.createAdapterError(100, "Missing or invalid Account ID or Placement ID for this ad source instance in the AdMob or Ad Manager UI.");
        Log.e(InMobiMediationAdapter.TAG, adErrorCreateAdapterError.toString());
        return adErrorCreateAdapterError;
    }

    private InMobiAdapterUtils() {
    }
}
