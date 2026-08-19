package com.truecaller.android.sdk.common.callVerification;

import android.os.Bundle;
import androidx.fragment.app.Fragment;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: PermissionsFragment.kt */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(m2721d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0011\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0015\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0012\u0010\t\u001a\u00020\n2\b\u0010\u000b\u001a\u0004\u0018\u00010\fH\u0016J+\u0010\r\u001a\u00020\n2\u0006\u0010\u000e\u001a\u00020\u000f2\f\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\u00050\u00042\u0006\u0010\u0011\u001a\u00020\u0012H\u0016¢\u0006\u0002\u0010\u0013J\b\u0010\u0014\u001a\u00020\nH\u0016J\u000e\u0010\u0015\u001a\u00020\n2\u0006\u0010\u0007\u001a\u00020\bR\u0018\u0010\u0003\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u0004X\u0082\u000e¢\u0006\u0004\n\u0002\u0010\u0006R\u000e\u0010\u0007\u001a\u00020\bX\u0082.¢\u0006\u0002\n\u0000¨\u0006\u0016"}, m2722d2 = {"Lcom/truecaller/android/sdk/common/callVerification/PermissionsFragment;", "Landroidx/fragment/app/Fragment;", "()V", "preRequestPermissions", "", "", "[Ljava/lang/String;", "requestPermissionHandler", "Lcom/truecaller/android/sdk/common/callVerification/RequestPermissionHandler;", "onCreate", "", "savedInstanceState", "Landroid/os/Bundle;", "onRequestPermissionsResult", "requestCode", "", "permissions", "grantResults", "", "(I[Ljava/lang/String;[I)V", "onResume", "setRequestPermissionHandler", "sdk-external_googlePlayOAuthReleasePartner"}, m2723k = 1, m2724mv = {1, 9, 0}, m2726xi = 48)
public final class PermissionsFragment extends Fragment {
    private String[] preRequestPermissions;
    private RequestPermissionHandler requestPermissionHandler;

    @Override // androidx.fragment.app.Fragment
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setRetainInstance(true);
    }

    @Override // androidx.fragment.app.Fragment
    public void onRequestPermissionsResult(int requestCode, String[] permissions, int[] grantResults) {
        Intrinsics.checkNotNullParameter(permissions, "permissions");
        Intrinsics.checkNotNullParameter(grantResults, "grantResults");
        RequestPermissionHandler requestPermissionHandler = this.requestPermissionHandler;
        if (requestPermissionHandler == null) {
            Intrinsics.throwUninitializedPropertyAccessException("requestPermissionHandler");
            requestPermissionHandler = null;
        }
        requestPermissionHandler.onRequestPermissionsResult(requestCode, permissions, grantResults);
        this.preRequestPermissions = null;
    }

    public final void setRequestPermissionHandler(RequestPermissionHandler requestPermissionHandler) {
        Intrinsics.checkNotNullParameter(requestPermissionHandler, "requestPermissionHandler");
        this.requestPermissionHandler = requestPermissionHandler;
        this.preRequestPermissions = (String[]) requestPermissionHandler.getPermissions().toArray(new String[0]);
    }

    @Override // androidx.fragment.app.Fragment
    public void onResume() {
        super.onResume();
        String[] strArr = this.preRequestPermissions;
        if (strArr != null) {
            requestPermissions(strArr, 200);
        }
        this.preRequestPermissions = null;
    }
}
