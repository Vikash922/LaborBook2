package com.truecaller.android.sdk;

import android.app.Activity;
import android.content.Intent;
import android.content.SharedPreferences;
import android.net.Uri;
import android.text.SpannableString;
import android.text.style.StyleSpan;
import android.util.Base64;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import java.lang.ref.WeakReference;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.UUID;
import java.util.regex.Pattern;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.Charsets;
import kotlin.text.StringsKt;

/* JADX INFO: compiled from: SdkUtils.kt */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(m2721d1 = {"\u0000@\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0012\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0003\u001a\u0010\u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\rH\u0000\u001a\u0016\u0010\u000e\u001a\u00020\u00012\u0006\u0010\u000f\u001a\u00020\u00012\u0006\u0010\u0010\u001a\u00020\u0001\u001a\u0010\u0010\u0011\u001a\u00020\u00012\u0006\u0010\f\u001a\u00020\rH\u0000\u001a\u0018\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u0013H\u0002\u001a\u0012\u0010\u0017\u001a\u0004\u0018\u00010\u00132\u0006\u0010\u0016\u001a\u00020\u0013H\u0002\u001a\u0010\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020\u0001H\u0000\u001a\u0012\u0010\u001b\u001a\u00020\u000b2\b\u0010\f\u001a\u0004\u0018\u00010\rH\u0001\"\u000e\u0010\u0000\u001a\u00020\u0001X\u0082T¢\u0006\u0002\n\u0000\"\u000e\u0010\u0002\u001a\u00020\u0001X\u0082T¢\u0006\u0002\n\u0000\"\u000e\u0010\u0003\u001a\u00020\u0001X\u0082T¢\u0006\u0002\n\u0000\"\u0016\u0010\u0004\u001a\n \u0006*\u0004\u0018\u00010\u00050\u0005X\u0082\u0004¢\u0006\u0002\n\u0000\"\u0016\u0010\u0007\u001a\n\u0012\u0004\u0012\u00020\t\u0018\u00010\bX\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\u001c"}, m2722d2 = {"NUMBER_REGEX_PATTERN", "", "SHARED_PREFERENCE_FILE_KEY", "VERIFICATION_GUID", "pattern", "Ljava/util/regex/Pattern;", "kotlin.jvm.PlatformType", "viewGroup", "Ljava/lang/ref/WeakReference;", "Landroid/view/ViewGroup;", "dismissDisclaimerMaybe", "", "activity", "Landroid/app/Activity;", "getAction", "clientIdentifier", "requestNonce", "getDeviceId", "hashBytes", "", "hash", "Ljava/security/MessageDigest;", "bytes", "hashWithAlgorithm", "isValidNumber", "", "phoneNumber", "showDisclaimer", "sdk-external_googlePlayOAuthReleasePartner"}, m2723k = 2, m2724mv = {1, 9, 0}, m2726xi = 48)
public final class SdkUtils {
    private static final String SHARED_PREFERENCE_FILE_KEY = "com.truecaller.sdk.sharedPreference.VerificationClient";
    private static final String VERIFICATION_GUID = "verification_guid";
    private static WeakReference<ViewGroup> viewGroup;
    private static final String NUMBER_REGEX_PATTERN = "^[0-9]+$";
    private static final Pattern pattern = Pattern.compile(NUMBER_REGEX_PATTERN);

    public static final void showDisclaimer(final Activity activity) {
        ViewGroup viewGroup2;
        Window window = activity != null ? activity.getWindow() : null;
        if (window == null) {
            return;
        }
        WeakReference<ViewGroup> weakReference = new WeakReference<>(window.getDecorView().findViewById(android.R.id.content));
        viewGroup = weakReference;
        ViewGroup viewGroup3 = weakReference.get();
        if ((viewGroup3 != null ? viewGroup3.findViewById(C3956R.id.textDisclaimerContainer) : null) == null) {
            LayoutInflater layoutInflater = activity.getLayoutInflater();
            Intrinsics.checkNotNullExpressionValue(layoutInflater, "getLayoutInflater(...)");
            View viewInflate = layoutInflater.inflate(C3956R.layout.truesdk_privacy_policy_dialog, (ViewGroup) null);
            TextView textView = (TextView) viewInflate.findViewById(C3956R.id.textDisclaimer);
            ImageView imageView = (ImageView) viewInflate.findViewById(C3956R.id.buttonDismiss);
            String string = activity.getString(C3956R.string.sdk_disclaimer_text);
            Intrinsics.checkNotNullExpressionValue(string, "getString(...)");
            String str = string;
            int iIndexOf$default = StringsKt.indexOf$default((CharSequence) str, "*", 0, false, 6, (Object) null);
            int iLastIndexOf$default = StringsKt.lastIndexOf$default((CharSequence) str, "*", 0, false, 6, (Object) null);
            SpannableString spannableString = new SpannableString(StringsKt.replace$default(string, "*", "", false, 4, (Object) null));
            spannableString.setSpan(new StyleSpan(1), iIndexOf$default, iLastIndexOf$default - 1, 0);
            textView.setText(spannableString);
            imageView.setOnClickListener(new View.OnClickListener() { // from class: com.truecaller.android.sdk.SdkUtils$$ExternalSyntheticLambda0
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    SdkUtils.dismissDisclaimerMaybe(activity);
                }
            });
            textView.setOnClickListener(new View.OnClickListener() { // from class: com.truecaller.android.sdk.SdkUtils$$ExternalSyntheticLambda1
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    SdkUtils.showDisclaimer$lambda$1(activity, view);
                }
            });
            FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, -2);
            layoutParams.gravity = 80;
            viewInflate.setLayoutParams(layoutParams);
            WeakReference<ViewGroup> weakReference2 = viewGroup;
            if (weakReference2 == null || (viewGroup2 = weakReference2.get()) == null) {
                return;
            }
            viewGroup2.addView(viewInflate);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void showDisclaimer$lambda$1(Activity activity, View view) {
        activity.startActivity(new Intent("android.intent.action.VIEW", Uri.parse(activity.getString(C3956R.string.sdk_disclaimer_url))));
    }

    public static final void dismissDisclaimerMaybe(Activity activity) {
        WeakReference<ViewGroup> weakReference;
        ViewGroup viewGroup2;
        Intrinsics.checkNotNullParameter(activity, "activity");
        View viewFindViewById = activity.findViewById(C3956R.id.textDisclaimerContainer);
        if (viewFindViewById == null || (weakReference = viewGroup) == null || (viewGroup2 = weakReference.get()) == null) {
            return;
        }
        viewGroup2.removeView(viewFindViewById);
    }

    public static final String getDeviceId(Activity activity) {
        Intrinsics.checkNotNullParameter(activity, "activity");
        SharedPreferences sharedPreferences = activity.getSharedPreferences(SHARED_PREFERENCE_FILE_KEY, 0);
        String string = sharedPreferences.getString(VERIFICATION_GUID, null);
        String str = string;
        if (str != null && str.length() != 0) {
            return string;
        }
        String string2 = UUID.randomUUID().toString();
        sharedPreferences.edit().putString(VERIFICATION_GUID, string2).apply();
        return string2;
    }

    public static final boolean isValidNumber(String phoneNumber) {
        Intrinsics.checkNotNullParameter(phoneNumber, "phoneNumber");
        return pattern.matcher(phoneNumber).matches();
    }

    public static final String getAction(String clientIdentifier, String requestNonce) {
        Intrinsics.checkNotNullParameter(clientIdentifier, "clientIdentifier");
        Intrinsics.checkNotNullParameter(requestNonce, "requestNonce");
        byte[] bytes = (clientIdentifier + "&" + requestNonce).getBytes(Charsets.UTF_8);
        Intrinsics.checkNotNullExpressionValue(bytes, "getBytes(...)");
        String strEncodeToString = Base64.encodeToString(hashWithAlgorithm(bytes), 9);
        Intrinsics.checkNotNullExpressionValue(strEncodeToString, "encodeToString(...)");
        return StringsKt.take(strEncodeToString, 10);
    }

    private static final byte[] hashWithAlgorithm(byte[] bArr) {
        try {
            MessageDigest messageDigest = MessageDigest.getInstance("SHA-1");
            Intrinsics.checkNotNull(messageDigest);
            return hashBytes(messageDigest, bArr);
        } catch (NoSuchAlgorithmException unused) {
            return null;
        }
    }

    private static final byte[] hashBytes(MessageDigest messageDigest, byte[] bArr) {
        messageDigest.update(bArr);
        byte[] bArrDigest = messageDigest.digest();
        Intrinsics.checkNotNullExpressionValue(bArrDigest, "digest(...)");
        return bArrDigest;
    }
}
