package com.truecaller.android.sdk.oAuth;

import android.content.Context;
import android.content.Intent;
import android.content.pm.ResolveInfo;
import android.content.pm.Signature;
import android.database.Cursor;
import android.net.Uri;
import com.truecaller.android.sdk.oAuth.clients.PartnerInformationV2;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Objects;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
public class ShareProfileHelperV2 {
    private static final int HAS_OAUTH = 1;
    private static final String INTENT_ACTION_BOTTOMSHEET_OAUTH = "com.truecaller.android.sdk.intent.action.v1.oAuth";
    public static final String INTENT_EXTRA_PARTNER_INFO = "truesdk_partner_info";
    public static final String INTENT_EXTRA_SDK_FLAGS = "truesdk_flags";
    public static final String INTENT_EXTRA_SIGN_IN_OPTIONS = "truesdk_options_info";
    private static final int IS_NOT_BLACKLISTED = 1;
    private static final int VALID_TC_ACCOUNT_STATE = 1;
    public static final List<TrueAppInfo> sTrueAppInfoList;

    /* JADX WARN: Multi-variable type inference failed */
    static {
        ArrayList arrayList = new ArrayList();
        sTrueAppInfoList = arrayList;
        arrayList.add(new TruecallerAppInfo());
        arrayList.add(new TruecallerDappInfo());
    }

    static boolean isValidOAuthTcClientAvailable(Context context) {
        Intent resolvedIntentForAction = getResolvedIntentForAction(context);
        return resolvedIntentForAction != null && hasValidAccountState(context, (String) Objects.requireNonNull(resolvedIntentForAction.getPackage())) && hasOAuthEnabled(context, (String) Objects.requireNonNull(resolvedIntentForAction.getPackage())) && isNotBlacklisted(context, (String) Objects.requireNonNull(resolvedIntentForAction.getPackage()));
    }

    private static boolean hasValidAccountState(Context context, String str) {
        try {
            Cursor cursorQuery = context.getContentResolver().query(Uri.parse("content://" + str + ".TcInfoContentProvider/tcAccountState"), null, null, null, null);
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
            return true;
        } catch (Exception unused) {
            return false;
        }
    }

    private static boolean hasOAuthEnabled(Context context, String str) {
        try {
            Cursor cursorQuery = context.getContentResolver().query(Uri.parse("content://" + str + ".TcInfoContentProvider/tcOAuth"), null, null, null, null);
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
            return true;
        } catch (Exception unused) {
            return false;
        }
    }

    private static boolean isNotBlacklisted(Context context, String str) {
        try {
            Cursor cursorQuery = context.getContentResolver().query(Uri.parse("content://" + str + ".TcInfoContentProvider/tcOAuthBlacklistedDevice"), null, null, null, null);
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
            return true;
        } catch (Exception unused) {
            return false;
        }
    }

    public static Intent getShareProfileIntent(Context context, PartnerInformationV2 partnerInformationV2, SdkOptionsEvaluator sdkOptionsEvaluator) {
        Intent resolvedIntentForAction = getResolvedIntentForAction(context);
        if (resolvedIntentForAction == null) {
            return null;
        }
        resolvedIntentForAction.putExtra(INTENT_EXTRA_PARTNER_INFO, partnerInformationV2);
        resolvedIntentForAction.putExtra(INTENT_EXTRA_SDK_FLAGS, sdkOptionsEvaluator.getSdkFlag());
        if (sdkOptionsEvaluator.getSdkOptionsDataBundle() != null) {
            resolvedIntentForAction.putExtra(INTENT_EXTRA_SIGN_IN_OPTIONS, sdkOptionsEvaluator.getSdkOptionsDataBundle());
        }
        return resolvedIntentForAction;
    }

    private static Intent getResolvedIntentForAction(Context context) {
        for (TrueAppInfo trueAppInfo : sTrueAppInfoList) {
            Intent intentAddCategory = new Intent(INTENT_ACTION_BOTTOMSHEET_OAUTH).setPackage(trueAppInfo.getPackage()).addCategory("android.intent.category.DEFAULT");
            if (isTrueAppIntentResolved(context, intentAddCategory, trueAppInfo)) {
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
            Signature[] packageSignatures = UtilsV2.getPackageSignatures(context, str);
            if (packageSignatures == null) {
                return false;
            }
            for (Signature signature : packageSignatures) {
                String sha1hash = UtilsV2.getSha1hash(signature.toByteArray());
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

        @Override // com.truecaller.android.sdk.oAuth.ShareProfileHelperV2.TrueAppInfo
        protected String getPackage() {
            return TRUECALLER_APP_PACKAGE;
        }
    }

    private static class TruecallerDappInfo extends TrueAppInfo {
        private static final String TRUECALLER_DAPP_PACKAGE = "com.truecaller.debug";

        private TruecallerDappInfo() {
        }

        @Override // com.truecaller.android.sdk.oAuth.ShareProfileHelperV2.TrueAppInfo
        protected String getPackage() {
            return TRUECALLER_DAPP_PACKAGE;
        }
    }
}
