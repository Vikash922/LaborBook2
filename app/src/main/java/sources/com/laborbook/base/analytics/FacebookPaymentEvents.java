package com.laborbook.base.analytics;

import android.content.Context;
import android.os.Bundle;
import com.facebook.appevents.AppEventsConstants;
import com.facebook.appevents.AppEventsLogger;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.itextpdf.styledxmlparser.css.CommonCssConstants;
import com.laborbook.keep.screen.calendar.utils.Constants;
import java.math.BigDecimal;
import java.util.Currency;
import java.util.Locale;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.RangesKt;
import kotlin.text.StringsKt;

/* JADX INFO: compiled from: FacebookPaymentEvents.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(m2721d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u000e\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u0006\n\u0002\b\u000e\n\u0002\u0010\b\n\u0002\b\u0005\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0018\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u00162\b\b\u0002\u0010\u0017\u001a\u00020\u0005J\u0018\u0010\u0018\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u00162\b\b\u0002\u0010\u0019\u001a\u00020\u0005J2\u0010\u001a\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u00162\b\u0010\u001b\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u001c\u001a\u00020\u001d2\u0006\u0010\u001e\u001a\u00020\u00052\b\b\u0002\u0010\u0017\u001a\u00020\u0005J\u000e\u0010\u001f\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u0016J6\u0010 \u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u00162\b\b\u0002\u0010\u001c\u001a\u00020\u001d2\u0006\u0010\u001e\u001a\u00020\u00052\n\b\u0002\u0010\u001b\u001a\u0004\u0018\u00010\u00052\b\b\u0002\u0010\u0017\u001a\u00020\u0005J4\u0010!\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u001c\u001a\u00020\u001d2\u0006\u0010\u001e\u001a\u00020\u00052\n\b\u0002\u0010\u001b\u001a\u0004\u0018\u00010\u00052\b\b\u0002\u0010\u0017\u001a\u00020\u0005J\u0012\u0010\"\u001a\u00020\u00052\b\u0010\u001e\u001a\u0004\u0018\u00010\u0005H\u0002J(\u0010#\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u00162\u0006\u0010$\u001a\u00020\u001d2\u0006\u0010%\u001a\u00020\u00052\b\b\u0002\u0010\u0017\u001a\u00020\u0005J\u001a\u0010&\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u00162\n\b\u0002\u0010'\u001a\u0004\u0018\u00010\u0005J\"\u0010(\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u00162\b\b\u0002\u0010)\u001a\u00020\u00052\b\b\u0002\u0010\u0017\u001a\u00020\u0005J\"\u0010*\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u00162\b\b\u0002\u0010+\u001a\u00020,2\b\b\u0002\u0010\u0017\u001a\u00020\u0005J\u0018\u0010-\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u00162\b\b\u0002\u0010\u0017\u001a\u00020\u0005J*\u0010.\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u00162\u0006\u0010/\u001a\u00020\u001d2\b\b\u0002\u00100\u001a\u00020\u00052\b\b\u0002\u0010\u0017\u001a\u00020\u0005R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082D¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0005X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0005X\u0082D¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\u0005X\u0082D¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0005X\u0082D¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0005X\u0082D¢\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u0005X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\f\u001a\u00020\u0005X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u0005X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u0005X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0005X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u0005X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u0005X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\u0005X\u0082T¢\u0006\u0002\n\u0000¨\u00061"}, m2722d2 = {"Lcom/laborbook/base/analytics/FacebookPaymentEvents;", "", "<init>", "()V", "EVENT_VIEW_CONTENT", "", "EVENT_FIRST_TIME_HOME_SCREEN", "EVENT_INITIATE_CHECKOUT", "EVENT_ADD_PAYMENT_INFO", "EVENT_START_TRIAL", "EVENT_SUBSCRIBE", "PARAM_CONTENT_TYPE", "PARAM_CONTENT_NAME", "PARAM_CONTENT_ID", "PARAM_VALUE", "PARAM_CURRENCY", "PARAM_INSTALL_SOURCE", "CONTENT_TYPE_PRODUCT", "DEFAULT_CURRENCY", "logFirstTimeHomeScreen", "", "context", "Landroid/content/Context;", "installSource", "logViewContent", "contentName", "logInitiateCheckout", "planId", "value", "", "currency", "logAddPaymentInfo", "logStartTrial", "logSubscribe", "normalizeCurrency", "logPurchase", ConstantEventAttributes.AMOUNT, "currencyCode", "logSubscriptionCancelled", "planName", "logCompletedRegistration", FirebaseAnalytics.Param.METHOD, "logFirstStaffAdded", "staffCount", "", "logFirstAttendanceMarked", "logSalarySet", "salaryAmount", "salaryType", "base_release"}, m2723k = 1, m2724mv = {2, 0, 0}, m2726xi = 48)
public final class FacebookPaymentEvents {
    private static final String CONTENT_TYPE_PRODUCT = "product";
    private static final String DEFAULT_CURRENCY = "INR";
    private static final String EVENT_FIRST_TIME_HOME_SCREEN = "FirstTimeHomeScreen";
    private static final String PARAM_CONTENT_ID = "content_id";
    private static final String PARAM_CONTENT_NAME = "content_name";
    private static final String PARAM_CONTENT_TYPE = "content_type";
    private static final String PARAM_CURRENCY = "currency";
    private static final String PARAM_INSTALL_SOURCE = "install_source";
    private static final String PARAM_VALUE = "value";
    public static final FacebookPaymentEvents INSTANCE = new FacebookPaymentEvents();
    private static final String EVENT_VIEW_CONTENT = AppEventsConstants.EVENT_NAME_VIEWED_CONTENT;
    private static final String EVENT_INITIATE_CHECKOUT = AppEventsConstants.EVENT_NAME_INITIATED_CHECKOUT;
    private static final String EVENT_ADD_PAYMENT_INFO = AppEventsConstants.EVENT_NAME_ADDED_PAYMENT_INFO;
    private static final String EVENT_START_TRIAL = AppEventsConstants.EVENT_NAME_START_TRIAL;
    private static final String EVENT_SUBSCRIBE = AppEventsConstants.EVENT_NAME_SUBSCRIBE;

    private FacebookPaymentEvents() {
    }

    public static /* synthetic */ void logFirstTimeHomeScreen$default(FacebookPaymentEvents facebookPaymentEvents, Context context, String str, int i, Object obj) {
        if ((i & 2) != 0) {
            str = "organic";
        }
        facebookPaymentEvents.logFirstTimeHomeScreen(context, str);
    }

    public final void logFirstTimeHomeScreen(Context context, String installSource) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(installSource, "installSource");
        try {
            Bundle bundle = new Bundle();
            bundle.putString("content_type", CommonCssConstants.SCREEN);
            bundle.putString(PARAM_CONTENT_NAME, "Home");
            bundle.putString("install_source", installSource);
            AppEventsLogger.INSTANCE.newLogger(context).logEvent(EVENT_FIRST_TIME_HOME_SCREEN, bundle);
        } catch (Exception unused) {
        }
    }

    public static /* synthetic */ void logViewContent$default(FacebookPaymentEvents facebookPaymentEvents, Context context, String str, int i, Object obj) {
        if ((i & 2) != 0) {
            str = "Laborbook Pro";
        }
        facebookPaymentEvents.logViewContent(context, str);
    }

    public final void logViewContent(Context context, String contentName) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(contentName, "contentName");
        try {
            Bundle bundle = new Bundle();
            bundle.putString("content_type", CONTENT_TYPE_PRODUCT);
            bundle.putString(PARAM_CONTENT_NAME, contentName);
            AppEventsLogger.INSTANCE.newLogger(context).logEvent(EVENT_VIEW_CONTENT, bundle);
        } catch (Exception unused) {
        }
    }

    public static /* synthetic */ void logInitiateCheckout$default(FacebookPaymentEvents facebookPaymentEvents, Context context, String str, double d, String str2, String str3, int i, Object obj) {
        if ((i & 16) != 0) {
            str3 = "organic";
        }
        facebookPaymentEvents.logInitiateCheckout(context, str, d, str2, str3);
    }

    public final void logInitiateCheckout(Context context, String planId, double value, String currency, String installSource) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(currency, "currency");
        Intrinsics.checkNotNullParameter(installSource, "installSource");
        try {
            String strNormalizeCurrency = normalizeCurrency(currency);
            Bundle bundle = new Bundle();
            if (planId != null) {
                bundle.putString(AppEventsConstants.EVENT_PARAM_CONTENT_ID, planId);
            }
            bundle.putDouble("value", RangesKt.coerceAtLeast(value, 0.0d));
            bundle.putString(AppEventsConstants.EVENT_PARAM_CURRENCY, strNormalizeCurrency);
            bundle.putString(AppEventsConstants.EVENT_PARAM_CONTENT_TYPE, CONTENT_TYPE_PRODUCT);
            bundle.putString("install_source", installSource);
            AppEventsLogger.INSTANCE.newLogger(context).logEvent(EVENT_INITIATE_CHECKOUT, RangesKt.coerceAtLeast(value, 0.0d), bundle);
        } catch (Exception unused) {
        }
    }

    public final void logAddPaymentInfo(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        try {
            Bundle bundle = new Bundle();
            bundle.putString("content_type", CONTENT_TYPE_PRODUCT);
            AppEventsLogger.INSTANCE.newLogger(context).logEvent(EVENT_ADD_PAYMENT_INFO, bundle);
        } catch (Exception unused) {
        }
    }

    public static /* synthetic */ void logStartTrial$default(FacebookPaymentEvents facebookPaymentEvents, Context context, double d, String str, String str2, String str3, int i, Object obj) {
        if ((i & 2) != 0) {
            d = 0.0d;
        }
        double d2 = d;
        if ((i & 8) != 0) {
            str2 = null;
        }
        String str4 = str2;
        if ((i & 16) != 0) {
            str3 = "organic";
        }
        facebookPaymentEvents.logStartTrial(context, d2, str, str4, str3);
    }

    public final void logStartTrial(Context context, double value, String currency, String planId, String installSource) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(currency, "currency");
        Intrinsics.checkNotNullParameter(installSource, "installSource");
        try {
            String strNormalizeCurrency = normalizeCurrency(currency);
            Bundle bundle = new Bundle();
            bundle.putDouble("value", RangesKt.coerceAtLeast(value, 0.0d));
            bundle.putString(AppEventsConstants.EVENT_PARAM_CURRENCY, strNormalizeCurrency);
            if (planId != null) {
                bundle.putString(AppEventsConstants.EVENT_PARAM_CONTENT_ID, planId);
            }
            bundle.putString(AppEventsConstants.EVENT_PARAM_CONTENT_TYPE, CONTENT_TYPE_PRODUCT);
            bundle.putString("install_source", installSource);
            AppEventsLogger.INSTANCE.newLogger(context).logEvent(EVENT_START_TRIAL, RangesKt.coerceAtLeast(value, 0.0d), bundle);
        } catch (Exception unused) {
        }
    }

    public static /* synthetic */ void logSubscribe$default(FacebookPaymentEvents facebookPaymentEvents, Context context, double d, String str, String str2, String str3, int i, Object obj) {
        if ((i & 8) != 0) {
            str2 = null;
        }
        String str4 = str2;
        if ((i & 16) != 0) {
            str3 = "organic";
        }
        facebookPaymentEvents.logSubscribe(context, d, str, str4, str3);
    }

    public final void logSubscribe(Context context, double value, String currency, String planId, String installSource) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(currency, "currency");
        Intrinsics.checkNotNullParameter(installSource, "installSource");
        try {
            String strNormalizeCurrency = normalizeCurrency(currency);
            Bundle bundle = new Bundle();
            bundle.putString(AppEventsConstants.EVENT_PARAM_CURRENCY, strNormalizeCurrency);
            bundle.putDouble("value", RangesKt.coerceAtLeast(value, 0.0d));
            if (planId != null) {
                bundle.putString(AppEventsConstants.EVENT_PARAM_CONTENT_ID, planId);
            }
            bundle.putString(AppEventsConstants.EVENT_PARAM_CONTENT_TYPE, CONTENT_TYPE_PRODUCT);
            bundle.putString("install_source", installSource);
            AppEventsLogger.INSTANCE.newLogger(context).logEvent(EVENT_SUBSCRIBE, RangesKt.coerceAtLeast(value, 0.0d), bundle);
        } catch (Exception unused) {
        }
    }

    private final String normalizeCurrency(String currency) {
        String upperCase;
        String string;
        if (currency == null || (string = StringsKt.trim((CharSequence) currency).toString()) == null) {
            upperCase = null;
        } else {
            upperCase = string.toUpperCase(Locale.ROOT);
            Intrinsics.checkNotNullExpressionValue(upperCase, "toUpperCase(...)");
        }
        String str = upperCase;
        return (str == null || str.length() == 0 || upperCase.length() != 3) ? DEFAULT_CURRENCY : upperCase;
    }

    public static /* synthetic */ void logPurchase$default(FacebookPaymentEvents facebookPaymentEvents, Context context, double d, String str, String str2, int i, Object obj) {
        if ((i & 8) != 0) {
            str2 = "organic";
        }
        facebookPaymentEvents.logPurchase(context, d, str, str2);
    }

    public final void logPurchase(Context context, double amount, String currencyCode, String installSource) {
        Currency currency;
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(currencyCode, "currencyCode");
        Intrinsics.checkNotNullParameter(installSource, "installSource");
        try {
            try {
                currency = Currency.getInstance(normalizeCurrency(currencyCode));
            } catch (Exception unused) {
                currency = Currency.getInstance(DEFAULT_CURRENCY);
            }
            Bundle bundle = new Bundle();
            bundle.putString("install_source", installSource);
            AppEventsLogger.INSTANCE.newLogger(context).logPurchase(BigDecimal.valueOf(RangesKt.coerceAtLeast(amount, 0.0d)), currency, bundle);
        } catch (Exception unused2) {
        }
    }

    public static /* synthetic */ void logSubscriptionCancelled$default(FacebookPaymentEvents facebookPaymentEvents, Context context, String str, int i, Object obj) {
        if ((i & 2) != 0) {
            str = null;
        }
        facebookPaymentEvents.logSubscriptionCancelled(context, str);
    }

    public final void logSubscriptionCancelled(Context context, String planName) {
        Intrinsics.checkNotNullParameter(context, "context");
        try {
            Bundle bundle = new Bundle();
            if (planName != null) {
                bundle.putString(PARAM_CONTENT_NAME, planName);
            }
            AppEventsLogger.INSTANCE.newLogger(context).logEvent("SubscriptionCancelled", bundle);
        } catch (Exception unused) {
        }
    }

    public static /* synthetic */ void logCompletedRegistration$default(FacebookPaymentEvents facebookPaymentEvents, Context context, String str, String str2, int i, Object obj) {
        if ((i & 2) != 0) {
            str = "otp";
        }
        if ((i & 4) != 0) {
            str2 = "organic";
        }
        facebookPaymentEvents.logCompletedRegistration(context, str, str2);
    }

    public final void logCompletedRegistration(Context context, String method, String installSource) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(method, "method");
        Intrinsics.checkNotNullParameter(installSource, "installSource");
        try {
            Bundle bundle = new Bundle();
            bundle.putString(AppEventsConstants.EVENT_PARAM_REGISTRATION_METHOD, method);
            bundle.putString(AppEventsConstants.EVENT_PARAM_CURRENCY, DEFAULT_CURRENCY);
            bundle.putString("install_source", installSource);
            AppEventsLogger.INSTANCE.newLogger(context).logEvent(AppEventsConstants.EVENT_NAME_COMPLETED_REGISTRATION, 0.0d, bundle);
        } catch (Exception unused) {
        }
    }

    public static /* synthetic */ void logFirstStaffAdded$default(FacebookPaymentEvents facebookPaymentEvents, Context context, int i, String str, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            i = 1;
        }
        if ((i2 & 4) != 0) {
            str = "organic";
        }
        facebookPaymentEvents.logFirstStaffAdded(context, i, str);
    }

    public final void logFirstStaffAdded(Context context, int staffCount, String installSource) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(installSource, "installSource");
        try {
            Bundle bundle = new Bundle();
            bundle.putInt(AppEventsConstants.EVENT_PARAM_LEVEL, staffCount);
            bundle.putString(AppEventsConstants.EVENT_PARAM_CURRENCY, DEFAULT_CURRENCY);
            bundle.putString("install_source", installSource);
            AppEventsLogger.INSTANCE.newLogger(context).logEvent(AppEventsConstants.EVENT_NAME_ACHIEVED_LEVEL, 5.0d, bundle);
        } catch (Exception unused) {
        }
    }

    public static /* synthetic */ void logFirstAttendanceMarked$default(FacebookPaymentEvents facebookPaymentEvents, Context context, String str, int i, Object obj) {
        if ((i & 2) != 0) {
            str = "organic";
        }
        facebookPaymentEvents.logFirstAttendanceMarked(context, str);
    }

    public final void logFirstAttendanceMarked(Context context, String installSource) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(installSource, "installSource");
        try {
            Bundle bundle = new Bundle();
            bundle.putString("content_type", "attendance");
            bundle.putString(AppEventsConstants.EVENT_PARAM_CURRENCY, DEFAULT_CURRENCY);
            bundle.putString("install_source", installSource);
            AppEventsLogger.INSTANCE.newLogger(context).logEvent(AppEventsConstants.EVENT_NAME_RATED, 10.0d, bundle);
        } catch (Exception unused) {
        }
    }

    public static /* synthetic */ void logSalarySet$default(FacebookPaymentEvents facebookPaymentEvents, Context context, double d, String str, String str2, int i, Object obj) {
        if ((i & 4) != 0) {
            str = Constants.SALARY_TYPE_DAILY;
        }
        String str3 = str;
        if ((i & 8) != 0) {
            str2 = "organic";
        }
        facebookPaymentEvents.logSalarySet(context, d, str3, str2);
    }

    public final void logSalarySet(Context context, double salaryAmount, String salaryType, String installSource) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(salaryType, "salaryType");
        Intrinsics.checkNotNullParameter(installSource, "installSource");
        try {
            Bundle bundle = new Bundle();
            bundle.putString(AppEventsConstants.EVENT_PARAM_CURRENCY, DEFAULT_CURRENCY);
            bundle.putDouble("value", RangesKt.coerceAtLeast(salaryAmount, 0.0d));
            bundle.putString("content_type", salaryType);
            bundle.putString("install_source", installSource);
            AppEventsLogger.INSTANCE.newLogger(context).logEvent(AppEventsConstants.EVENT_NAME_SPENT_CREDITS, RangesKt.coerceAtLeast(salaryAmount, 0.0d), bundle);
        } catch (Exception unused) {
        }
    }
}
