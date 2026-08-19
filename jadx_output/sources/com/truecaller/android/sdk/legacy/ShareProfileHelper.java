package com.truecaller.android.sdk.legacy;

import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageInfo;
import android.content.pm.ResolveInfo;
import android.content.pm.Signature;
import android.database.Cursor;
import android.net.Uri;
import android.os.Bundle;
import com.truecaller.android.sdk.PartnerInformation;
import com.truecaller.android.sdk.legacy.clients.SdkScopeEvaluator;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Objects;
import java.util.Set;

/* JADX INFO: loaded from: classes5.dex */
public class ShareProfileHelper {
    private static final int HAS_1TAP = 1;
    public static final String INTENT_ACTION_SHARE_PROFILE = "com.truecaller.android.sdk.intent.action.v1.SHARE_PROFILE";
    private static final String INTENT_ACTION_SHARE_PROFILE_BOTTOMSHEET = "com.truecaller.android.sdk.intent.action.v3.SHARE_PROFILE";
    private static final String INTENT_ACTION_SHARE_PROFILE_FULLSCREEN = "com.truecaller.android.sdk.intent.action.v2.SHARE_PROFILE";
    public static final String INTENT_EXTRA_CONSENT_TITLE_OPTION = "truesdk_consent_title";
    public static final String INTENT_EXTRA_OTHER_NUMBER_AVAILABLE = "PARTNERINFO_OTHER_NUMBER";
    public static final String INTENT_EXTRA_SDK_FLAGS = "truesdk flags";
    private static final int SHOW_BOTTOM_SHEET = 1;
    private static final int VALID_TC_ACCOUNT_STATE = 1;
    public static final List<TrueAppInfo> sTrueAppInfoList;

    /* JADX WARN: Multi-variable type inference failed */
    static {
        ArrayList arrayList = new ArrayList();
        sTrueAppInfoList = arrayList;
        arrayList.add(new TruecallerAppInfo());
        arrayList.add(new TruemessengerAppInfo());
        arrayList.add(new TruecallerDappInfo());
        arrayList.add(new TruemessengerDappInfo());
    }

    static boolean isValidTcClientAvailable(Context context) {
        Intent trueAppIntent = getTrueAppIntent(context, null);
        return trueAppIntent != null && hasValidAccountState(context, (String) Objects.requireNonNull(trueAppIntent.getPackage())) && has1TapEnabled(context, (String) Objects.requireNonNull(trueAppIntent.getPackage()));
    }

    private static boolean hasValidAccountState(Context context, String str) {
        try {
            Cursor cursorQuery = context.getContentResolver().query(Uri.parse("content://" + str + ".TcInfoContentProvider/tcAccountState"), null, null, null, null);
            if (cursorQuery == null) {
                cursorQuery = context.getContentResolver().query(Uri.parse("content://" + str + ".TcAccountStateProvider/tcAccountState"), null, null, null, null);
            }
            if (cursorQuery != null && cursorQuery.moveToFirst()) {
                boolean z = cursorQuery.getInt(0) == 1;
                cursorQuery.close();
                return z;
            }
        } catch (Exception unused) {
        }
        return true;
    }

    private static boolean hasBottomSheetEnabled(Context context, String str) {
        try {
            Cursor cursorQuery = context.getContentResolver().query(Uri.parse("content://" + str + ".TcInfoContentProvider/tcBottomSheet"), null, null, null, null);
            if (cursorQuery != null) {
                try {
                    if (cursorQuery.moveToFirst()) {
                        boolean z = cursorQuery.getInt(0) == 1;
                        if (cursorQuery != null) {
                            cursorQuery.close();
                        }
                        return z;
                    }
                } finally {
                }
            }
            if (cursorQuery != null) {
                cursorQuery.close();
            }
        } catch (Exception unused) {
        }
        return true;
    }

    private static boolean has1TapEnabled(Context context, String str) {
        try {
            Cursor cursorQuery = context.getContentResolver().query(Uri.parse("content://" + str + ".TcInfoContentProvider/tc1Tap"), null, null, null, null);
            if (cursorQuery != null) {
                try {
                    if (cursorQuery.moveToFirst()) {
                        boolean z = cursorQuery.getInt(0) == 1;
                        if (cursorQuery != null) {
                            cursorQuery.close();
                        }
                        return z;
                    }
                } finally {
                }
            }
            if (cursorQuery != null) {
                cursorQuery.close();
            }
        } catch (Exception unused) {
        }
        return true;
    }

    public static Intent getShareProfileIntent(Context context, PartnerInformation partnerInformation, SdkScopeEvaluator sdkScopeEvaluator) {
        Intent trueAppIntent = getTrueAppIntent(context, sdkScopeEvaluator);
        if (trueAppIntent == null) {
            return null;
        }
        Bundle bundle = new Bundle();
        partnerInformation.writeToBundle(bundle);
        bundle.putParcelable(PartnerInformation.PARTNER_INFO_EXTRA, partnerInformation);
        trueAppIntent.putExtra(INTENT_EXTRA_OTHER_NUMBER_AVAILABLE, true);
        trueAppIntent.putExtra(INTENT_EXTRA_SDK_FLAGS, sdkScopeEvaluator.getSdkFlag());
        trueAppIntent.putExtra(INTENT_EXTRA_CONSENT_TITLE_OPTION, sdkScopeEvaluator.getConsentTitleIndex());
        if (sdkScopeEvaluator.getCustomDataBundle() != null) {
            sdkScopeEvaluator.getCustomDataBundle().writeToBundle(bundle);
        }
        trueAppIntent.putExtras(bundle);
        return trueAppIntent;
    }

    private static Intent getTrueAppIntent(Context context, SdkScopeEvaluator sdkScopeEvaluator) {
        Intent resolvedIntentForAction;
        if (sdkScopeEvaluator != null) {
            if (sdkScopeEvaluator.isFullScreenConsentRequested()) {
                resolvedIntentForAction = getResolvedIntentForAction(context, INTENT_ACTION_SHARE_PROFILE_FULLSCREEN);
            } else {
                resolvedIntentForAction = sdkScopeEvaluator.isBottomSheetConsentRequested() ? getResolvedIntentForAction(context, INTENT_ACTION_SHARE_PROFILE_BOTTOMSHEET) : null;
            }
            if (resolvedIntentForAction != null) {
                return resolvedIntentForAction;
            }
        }
        return getResolvedIntentForAction(context, INTENT_ACTION_SHARE_PROFILE);
    }

    private static Intent getResolvedIntentForAction(Context context, String str) {
        for (TrueAppInfo trueAppInfo : sTrueAppInfoList) {
            Intent intentAddCategory = new Intent(str).setPackage(trueAppInfo.getPackage()).addCategory("android.intent.category.DEFAULT");
            if (isTrueAppIntentResolved(context, intentAddCategory, trueAppInfo)) {
                if (str.equals(INTENT_ACTION_SHARE_PROFILE_BOTTOMSHEET) && !hasBottomSheetEnabled(context, trueAppInfo.getPackage())) {
                    intentAddCategory.setAction(INTENT_ACTION_SHARE_PROFILE);
                }
                return intentAddCategory;
            }
        }
        return null;
    }

    private static boolean isTrueAppIntentResolved(Context context, Intent intent, TrueAppInfo trueAppInfo) {
        ResolveInfo resolveInfoResolveActivity = context.getPackageManager().resolveActivity(intent, 0);
        return resolveInfoResolveActivity != null && trueAppInfo.validateSignature(context, resolveInfoResolveActivity.activityInfo.packageName);
    }

    public static abstract class TrueAppInfo {
        private static final Set<String> SET = initSet();
        private static final String TCDASH = "8a03e08e354a73ac49509c8b708fbe15aee2fb2a";
        private static final String TCRASH = "0ac1169ae6cead75264c725febd8e8d941f25e31";

        protected abstract String getPackage();

        private static Set<String> initSet() {
            HashSet hashSet = new HashSet(2);
            hashSet.add(TCRASH);
            hashSet.add(TCDASH);
            return hashSet;
        }

        public boolean validateSignature(Context context, String str) {
            PackageInfo packageInfo = Utils.getPackageInfo(context, str, 64);
            if (packageInfo == null) {
                return false;
            }
            for (Signature signature : packageInfo.signatures) {
                String sha1hash = Utils.getSha1hash(signature.toByteArray());
                if (sha1hash != null && SET.contains(sha1hash)) {
                    return true;
                }
            }
            return false;
        }
    }

    private static class TruecallerAppInfo extends TrueAppInfo {
        private static final String TRUECALLER_APP_PACKAGE = "com.truecaller";

        private TruecallerAppInfo() {
        }

        @Override // com.truecaller.android.sdk.legacy.ShareProfileHelper.TrueAppInfo
        protected String getPackage() {
            return TRUECALLER_APP_PACKAGE;
        }
    }

    private static class TruemessengerAppInfo extends TrueAppInfo {
        private static final String TRUEMESSENGER_APP_PACKAGE = "com.truecaller.messenger";

        private TruemessengerAppInfo() {
        }

        @Override // com.truecaller.android.sdk.legacy.ShareProfileHelper.TrueAppInfo
        protected String getPackage() {
            return TRUEMESSENGER_APP_PACKAGE;
        }
    }

    private static class TruecallerDappInfo extends TrueAppInfo {
        private static final String TRUECALLER_DAPP_PACKAGE = "com.truecaller.debug";

        private TruecallerDappInfo() {
        }

        @Override // com.truecaller.android.sdk.legacy.ShareProfileHelper.TrueAppInfo
        protected String getPackage() {
            return TRUECALLER_DAPP_PACKAGE;
        }
    }

    private static class TruemessengerDappInfo extends TrueAppInfo {
        private static final String TRUEMESSENGER_DAPP_PACKAGE = "com.truecaller.messenger.debug";

        private TruemessengerDappInfo() {
        }

        @Override // com.truecaller.android.sdk.legacy.ShareProfileHelper.TrueAppInfo
        protected String getPackage() {
            return TRUEMESSENGER_DAPP_PACKAGE;
        }
    }
}
