package com.truecaller.android.sdk.common.callVerification;

import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.net.Uri;
import android.os.Build;
import androidx.core.app.ActivityCompat;
import androidx.fragment.app.FragmentActivity;
import androidx.fragment.app.FragmentManager;
import com.google.android.gms.common.internal.ServiceSpecificExtraArgs;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;
import kotlin.Metadata;
import kotlin.collections.ArraysKt;
import kotlin.collections.SetsKt;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: RequestPermissionHandler.kt */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(m2721d1 = {"\u0000j\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\"\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0011\n\u0000\n\u0002\u0010\u0015\n\u0002\b\t\u0018\u00002\u00020\u0001:\u000234B\u0019\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\u0002\u0010\u0006J\u0006\u0010\u0010\u001a\u00020\u0011J\u0016\u0010\u0012\u001a\u00020\u00112\f\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u000b0\nH\u0002J\u0012\u0010\u0013\u001a\u0004\u0018\u00010\u00142\u0006\u0010\u0015\u001a\u00020\u0016H\u0002J$\u0010\u0017\u001a\b\u0012\u0004\u0012\u00020\u000b0\n2\f\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u000b0\n2\u0006\u0010\u0018\u001a\u00020\u0019H\u0002J\b\u0010\u001a\u001a\u00020\u0014H\u0002J\u0010\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u001d\u001a\u00020\u001eH\u0002J\u0010\u0010\u001f\u001a\u00020\b2\u0006\u0010 \u001a\u00020\u000bH\u0002J\u0010\u0010!\u001a\u00020\b2\u0006\u0010 \u001a\u00020\u000bH\u0002J\b\u0010\"\u001a\u00020\bH\u0002J\u0018\u0010#\u001a\u00020\u00112\u0006\u0010 \u001a\u00020\u000b2\u0006\u0010$\u001a\u00020\bH\u0002J\b\u0010%\u001a\u00020\u0011H\u0002J\u000e\u0010&\u001a\u00020\u00112\u0006\u0010'\u001a\u00020(J)\u0010)\u001a\u00020\u00112\u0006\u0010'\u001a\u00020(2\f\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u000b0*2\u0006\u0010+\u001a\u00020,¢\u0006\u0002\u0010-J\u0006\u0010.\u001a\u00020\u0011J\u0006\u0010/\u001a\u00020\u0011J\u0006\u00100\u001a\u00020\u0011J\u0010\u00101\u001a\u00020\b2\u0006\u0010 \u001a\u00020\u000bH\u0002J\b\u00102\u001a\u00020\bH\u0002R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\bX\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R \u0010\t\u001a\b\u0012\u0004\u0012\u00020\u000b0\nX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\f\u0010\r\"\u0004\b\u000e\u0010\u000f¨\u00065"}, m2722d2 = {"Lcom/truecaller/android/sdk/common/callVerification/RequestPermissionHandler;", "", "activity", "Landroidx/fragment/app/FragmentActivity;", ServiceSpecificExtraArgs.CastExtraArgs.LISTENER, "Lcom/truecaller/android/sdk/common/callVerification/RequestPermissionHandler$Listener;", "(Landroidx/fragment/app/FragmentActivity;Lcom/truecaller/android/sdk/common/callVerification/RequestPermissionHandler$Listener;)V", "hadShownRationale", "", "permissions", "", "", "getPermissions", "()Ljava/util/Set;", "setPermissions", "(Ljava/util/Set;)V", "cancel", "", "doRequestPermission", "findPermissionsFragment", "Lcom/truecaller/android/sdk/common/callVerification/PermissionsFragment;", "fragmentManager", "Landroidx/fragment/app/FragmentManager;", "getPermission", "status", "Lcom/truecaller/android/sdk/common/callVerification/RequestPermissionHandler$Status;", "getPermissionsFragment", "getPrefs", "Landroid/content/SharedPreferences;", "context", "Landroid/content/Context;", "isNeverAskAgainPermission", "permission", "isPermissionGranted", "isPermissionRequestedInManifest", "markNeverAskAgainPermission", "value", "notifyComplete", "onActivityResult", "requestCode", "", "onRequestPermissionsResult", "", "grantResults", "", "(I[Ljava/lang/String;[I)V", "requestPermission", "requestPermissionInSetting", "retryRequestDeniedPermission", "shouldShowRequestPermissionRationale", "showRationaleIfNeeded", "Listener", "Status", "sdk-external_googlePlayOAuthReleasePartner"}, m2723k = 1, m2724mv = {1, 9, 0}, m2726xi = 48)
public final class RequestPermissionHandler {
    private final FragmentActivity activity;
    private boolean hadShownRationale;
    private final Listener listener;
    private Set<String> permissions;

    /* JADX INFO: compiled from: RequestPermissionHandler.kt */
    @Metadata(m2721d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\"\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0003\bf\u0018\u00002\u00020\u0001J$\u0010\u0002\u001a\u00020\u00032\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u00052\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005H&J\u0016\u0010\b\u001a\u00020\t2\f\u0010\n\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005H&J\u0016\u0010\u000b\u001a\u00020\t2\f\u0010\n\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005H&¨\u0006\f"}, m2722d2 = {"Lcom/truecaller/android/sdk/common/callVerification/RequestPermissionHandler$Listener;", "", "onComplete", "", "grantedPermissions", "", "", "deniedPermissions", "onShowPermissionRationale", "", "permissions", "onShowSettingRationale", "sdk-external_googlePlayOAuthReleasePartner"}, m2723k = 1, m2724mv = {1, 9, 0}, m2726xi = 48)
    public interface Listener {
        void onComplete(Set<String> grantedPermissions, Set<String> deniedPermissions);

        boolean onShowPermissionRationale(Set<String> permissions);

        boolean onShowSettingRationale(Set<String> permissions);
    }

    /* JADX INFO: compiled from: RequestPermissionHandler.kt */
    @Metadata(m2723k = 3, m2724mv = {1, 9, 0}, m2726xi = 48)
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[Status.values().length];
            try {
                iArr[Status.GRANTED.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[Status.TEMPORARY_DENIED.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[Status.PERMANENT_DENIED.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[Status.UN_GRANTED.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    public RequestPermissionHandler(FragmentActivity activity, Listener listener) {
        Set<String> of;
        Intrinsics.checkNotNullParameter(activity, "activity");
        this.activity = activity;
        this.listener = listener;
        this.permissions = new HashSet();
        if (Build.VERSION.SDK_INT >= 26) {
            of = SetsKt.setOf((Object[]) new String[]{"android.permission.ANSWER_PHONE_CALLS", "android.permission.READ_CALL_LOG", "android.permission.READ_PHONE_STATE"});
        } else {
            of = SetsKt.setOf((Object[]) new String[]{"android.permission.READ_CALL_LOG", "android.permission.READ_PHONE_STATE", "android.permission.CALL_PHONE"});
        }
        this.permissions = of;
    }

    public /* synthetic */ RequestPermissionHandler(FragmentActivity fragmentActivity, Listener listener, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(fragmentActivity, (i & 2) != 0 ? null : listener);
    }

    public final Set<String> getPermissions() {
        return this.permissions;
    }

    public final void setPermissions(Set<String> set) {
        Intrinsics.checkNotNullParameter(set, "<set-?>");
        this.permissions = set;
    }

    public final void requestPermission() {
        if (isPermissionRequestedInManifest()) {
            boolean zShowRationaleIfNeeded = showRationaleIfNeeded();
            this.hadShownRationale = zShowRationaleIfNeeded;
            if (zShowRationaleIfNeeded) {
                return;
            }
            doRequestPermission(this.permissions);
            return;
        }
        throw new IllegalStateException("Desired Permissions not requested in Android Manifest!");
    }

    public final void retryRequestDeniedPermission() {
        doRequestPermission(this.permissions);
    }

    private final boolean showRationaleIfNeeded() {
        Set<String> permission = getPermission(this.permissions, Status.UN_GRANTED);
        if (!getPermission(permission, Status.PERMANENT_DENIED).isEmpty()) {
            Listener listener = this.listener;
            Boolean boolValueOf = listener != null ? Boolean.valueOf(listener.onShowSettingRationale(permission)) : null;
            if (boolValueOf != null && boolValueOf.booleanValue()) {
                return true;
            }
        }
        Set<String> permission2 = getPermission(permission, Status.TEMPORARY_DENIED);
        if (permission2.isEmpty()) {
            return false;
        }
        Listener listener2 = this.listener;
        Boolean boolValueOf2 = listener2 != null ? Boolean.valueOf(listener2.onShowPermissionRationale(permission2)) : null;
        return boolValueOf2 != null && boolValueOf2.booleanValue();
    }

    public final void requestPermissionInSetting() {
        Intent intent = new Intent("android.settings.APPLICATION_DETAILS_SETTINGS");
        intent.setData(Uri.fromParts("package", this.activity.getPackageName(), null));
        this.activity.startActivityForResult(intent, 200);
    }

    public final void onRequestPermissionsResult(int requestCode, String[] permissions, int[] grantResults) {
        Intrinsics.checkNotNullParameter(permissions, "permissions");
        Intrinsics.checkNotNullParameter(grantResults, "grantResults");
        if (requestCode == 200) {
            int length = grantResults.length;
            for (int i = 0; i < length; i++) {
                if (grantResults[i] == 0) {
                    markNeverAskAgainPermission(permissions[i], false);
                } else if (!shouldShowRequestPermissionRationale(permissions[i])) {
                    markNeverAskAgainPermission(permissions[i], true);
                }
            }
            notifyComplete();
        }
    }

    public final void onActivityResult(int requestCode) {
        if (requestCode == 200) {
            Iterator<T> it = getPermission(this.permissions, Status.GRANTED).iterator();
            while (it.hasNext()) {
                markNeverAskAgainPermission((String) it.next(), false);
            }
            notifyComplete();
        }
    }

    public final void cancel() {
        notifyComplete();
    }

    private final void doRequestPermission(Set<String> permissions) {
        PermissionsFragment permissionsFragment = getPermissionsFragment();
        permissionsFragment.setRequestPermissionHandler(this);
        if (permissionsFragment.isAdded()) {
            permissionsFragment.requestPermissions((String[]) permissions.toArray(new String[0]), 200);
        }
    }

    private final Set<String> getPermission(Set<String> permissions, Status status) {
        HashSet hashSet = new HashSet();
        for (String str : permissions) {
            int i = WhenMappings.$EnumSwitchMapping$0[status.ordinal()];
            if (i != 1) {
                if (i != 2) {
                    if (i == 3) {
                        if (isNeverAskAgainPermission(str)) {
                            hashSet.add(str);
                        }
                    } else if (i == 4 && !isPermissionGranted(str)) {
                        hashSet.add(str);
                    }
                } else if (shouldShowRequestPermissionRationale(str)) {
                    hashSet.add(str);
                }
            } else if (isPermissionGranted(str)) {
                hashSet.add(str);
            }
        }
        return hashSet;
    }

    private final boolean isPermissionRequestedInManifest() {
        PackageManager packageManager = this.activity.getPackageManager();
        Intrinsics.checkNotNullExpressionValue(packageManager, "getPackageManager(...)");
        String packageName = this.activity.getPackageName();
        Intrinsics.checkNotNullExpressionValue(packageName, "getPackageName(...)");
        try {
            PackageInfo packageInfo = packageManager.getPackageInfo(packageName, 4096);
            Intrinsics.checkNotNullExpressionValue(packageInfo, "getPackageInfo(...)");
            String[] strArr = packageInfo.requestedPermissions;
            if (strArr != null && strArr.length != 0) {
                for (String str : this.permissions) {
                    Intrinsics.checkNotNull(strArr);
                    if (!ArraysKt.contains(strArr, str)) {
                        return false;
                    }
                }
                return true;
            }
            return false;
        } catch (PackageManager.NameNotFoundException e) {
            e.printStackTrace();
            return false;
        }
    }

    private final boolean isPermissionGranted(String permission) {
        return ActivityCompat.checkSelfPermission(this.activity, permission) == 0;
    }

    private final boolean shouldShowRequestPermissionRationale(String permission) {
        return ActivityCompat.shouldShowRequestPermissionRationale(this.activity, permission);
    }

    private final void notifyComplete() {
        Listener listener = this.listener;
        if (listener != null) {
            listener.onComplete(getPermission(this.permissions, Status.GRANTED), getPermission(this.permissions, Status.UN_GRANTED));
        }
    }

    private final SharedPreferences getPrefs(Context context) {
        SharedPreferences sharedPreferences = context.getSharedPreferences("SHARED_PREFS_RUNTIME_PERMISSION", 0);
        Intrinsics.checkNotNullExpressionValue(sharedPreferences, "getSharedPreferences(...)");
        return sharedPreferences;
    }

    private final boolean isNeverAskAgainPermission(String permission) {
        return getPrefs(this.activity).getBoolean(permission, false);
    }

    private final void markNeverAskAgainPermission(String permission, boolean value) {
        getPrefs(this.activity).edit().putBoolean(permission, value).apply();
    }

    private final PermissionsFragment getPermissionsFragment() {
        FragmentManager supportFragmentManager = this.activity.getSupportFragmentManager();
        Intrinsics.checkNotNull(supportFragmentManager);
        PermissionsFragment permissionsFragmentFindPermissionsFragment = findPermissionsFragment(supportFragmentManager);
        if (permissionsFragmentFindPermissionsFragment != null) {
            return permissionsFragmentFindPermissionsFragment;
        }
        PermissionsFragment permissionsFragment = new PermissionsFragment();
        supportFragmentManager.beginTransaction().add(permissionsFragment, PermissionsFragmentKt.FRAGMENT_TAG).addToBackStack(null).commit();
        return permissionsFragment;
    }

    private final PermissionsFragment findPermissionsFragment(FragmentManager fragmentManager) {
        return (PermissionsFragment) fragmentManager.findFragmentByTag(PermissionsFragmentKt.FRAGMENT_TAG);
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* JADX INFO: compiled from: RequestPermissionHandler.kt */
    @Metadata(m2721d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0006\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002j\u0002\b\u0003j\u0002\b\u0004j\u0002\b\u0005j\u0002\b\u0006¨\u0006\u0007"}, m2722d2 = {"Lcom/truecaller/android/sdk/common/callVerification/RequestPermissionHandler$Status;", "", "(Ljava/lang/String;I)V", "GRANTED", "UN_GRANTED", "TEMPORARY_DENIED", "PERMANENT_DENIED", "sdk-external_googlePlayOAuthReleasePartner"}, m2723k = 1, m2724mv = {1, 9, 0}, m2726xi = 48)
    public static final class Status {
        private static final /* synthetic */ EnumEntries $ENTRIES;
        private static final /* synthetic */ Status[] $VALUES;
        public static final Status GRANTED = new Status("GRANTED", 0);
        public static final Status UN_GRANTED = new Status("UN_GRANTED", 1);
        public static final Status TEMPORARY_DENIED = new Status("TEMPORARY_DENIED", 2);
        public static final Status PERMANENT_DENIED = new Status("PERMANENT_DENIED", 3);

        private static final /* synthetic */ Status[] $values() {
            return new Status[]{GRANTED, UN_GRANTED, TEMPORARY_DENIED, PERMANENT_DENIED};
        }

        public static EnumEntries<Status> getEntries() {
            return $ENTRIES;
        }

        public static Status valueOf(String str) {
            return (Status) Enum.valueOf(Status.class, str);
        }

        public static Status[] values() {
            return (Status[]) $VALUES.clone();
        }

        private Status(String str, int i) {
        }

        static {
            Status[] statusArr$values = $values();
            $VALUES = statusArr$values;
            $ENTRIES = EnumEntriesKt.enumEntries(statusArr$values);
        }
    }
}
