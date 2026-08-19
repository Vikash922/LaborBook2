package com.laborbook.keep.screen;

import android.content.ComponentCallbacks;
import android.os.Bundle;
import androidx.appcompat.app.AppCompatActivity;
import androidx.biometric.BiometricManager;
import androidx.biometric.BiometricPrompt;
import androidx.core.content.ContextCompat;
import androidx.lifecycle.LifecycleOwnerKt;
import com.laborbook.base.datastore.DataStoreManager;
import com.laborbook.keep.C3656R;
import com.laborbook.keep.databinding.ActivityAppLockBinding;
import java.util.concurrent.Executor;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import org.koin.android.ext.android.ComponentCallbackExtKt;
import org.koin.core.qualifier.Qualifier;

/* JADX INFO: compiled from: AppLockActivity.kt */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(m2721d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u0012\u0010\u0012\u001a\u00020\u00132\b\u0010\u0014\u001a\u0004\u0018\u00010\u0015H\u0014J\b\u0010\u0016\u001a\u00020\u0013H\u0002J\b\u0010\u0017\u001a\u00020\u0013H\u0002J\b\u0010\u0018\u001a\u00020\u0013H\u0002J\b\u0010\u0019\u001a\u00020\u0013H\u0014J\b\u0010\u001a\u001a\u00020\u0013H\u0016R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082.¢\u0006\u0002\n\u0000R\u001b\u0010\u0006\u001a\u00020\u00078BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\n\u0010\u000b\u001a\u0004\b\b\u0010\tR\u000e\u0010\f\u001a\u00020\rX\u0082.¢\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u000fX\u0082.¢\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u0011X\u0082.¢\u0006\u0002\n\u0000¨\u0006\u001b"}, m2722d2 = {"Lcom/laborbook/keep/screen/AppLockActivity;", "Landroidx/appcompat/app/AppCompatActivity;", "<init>", "()V", "binding", "Lcom/laborbook/keep/databinding/ActivityAppLockBinding;", "dataStoreManager", "Lcom/laborbook/base/datastore/DataStoreManager;", "getDataStoreManager", "()Lcom/laborbook/base/datastore/DataStoreManager;", "dataStoreManager$delegate", "Lkotlin/Lazy;", "executor", "Ljava/util/concurrent/Executor;", "biometricPrompt", "Landroidx/biometric/BiometricPrompt;", "promptInfo", "Landroidx/biometric/BiometricPrompt$PromptInfo;", "onCreate", "", "savedInstanceState", "Landroid/os/Bundle;", "setupBiometricPrompt", "checkBiometricAvailability", "showBiometricPrompt", "onResume", "onBackPressed", "keep_release"}, m2723k = 1, m2724mv = {2, 0, 0}, m2726xi = 48)
public final class AppLockActivity extends AppCompatActivity {
    private ActivityAppLockBinding binding;
    private BiometricPrompt biometricPrompt;

    /* JADX INFO: renamed from: dataStoreManager$delegate, reason: from kotlin metadata */
    private final Lazy dataStoreManager;
    private Executor executor;
    private BiometricPrompt.PromptInfo promptInfo;

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
    }

    /* JADX WARN: Multi-variable type inference failed */
    public AppLockActivity() {
        final AppLockActivity appLockActivity = this;
        LazyThreadSafetyMode lazyThreadSafetyMode = LazyThreadSafetyMode.SYNCHRONIZED;
        final Qualifier qualifier = null;
        final Object[] objArr = 0 == true ? 1 : 0;
        this.dataStoreManager = LazyKt.lazy(lazyThreadSafetyMode, (Function0) new Function0<DataStoreManager>() { // from class: com.laborbook.keep.screen.AppLockActivity$special$$inlined$inject$default$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX WARN: Type inference failed for: r0v2, types: [com.laborbook.base.datastore.DataStoreManager, java.lang.Object] */
            @Override // kotlin.jvm.functions.Function0
            public final DataStoreManager invoke() {
                ComponentCallbacks componentCallbacks = appLockActivity;
                return ComponentCallbackExtKt.getDefaultScope(componentCallbacks).get(Reflection.getOrCreateKotlinClass(DataStoreManager.class), qualifier, objArr);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final DataStoreManager getDataStoreManager() {
        return (DataStoreManager) this.dataStoreManager.getValue();
    }

    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        ActivityAppLockBinding activityAppLockBindingInflate = ActivityAppLockBinding.inflate(getLayoutInflater());
        this.binding = activityAppLockBindingInflate;
        if (activityAppLockBindingInflate == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            activityAppLockBindingInflate = null;
        }
        setContentView(activityAppLockBindingInflate.getRoot());
        setupBiometricPrompt();
        checkBiometricAvailability();
    }

    private final void setupBiometricPrompt() {
        this.executor = ContextCompat.getMainExecutor(this);
        AppLockActivity appLockActivity = this;
        Executor executor = this.executor;
        if (executor == null) {
            Intrinsics.throwUninitializedPropertyAccessException("executor");
            executor = null;
        }
        this.biometricPrompt = new BiometricPrompt(appLockActivity, executor, new BiometricPrompt.AuthenticationCallback() { // from class: com.laborbook.keep.screen.AppLockActivity.setupBiometricPrompt.1
            @Override // androidx.biometric.BiometricPrompt.AuthenticationCallback
            public void onAuthenticationError(int errorCode, CharSequence errString) {
                Intrinsics.checkNotNullParameter(errString, "errString");
                super.onAuthenticationError(errorCode, errString);
                ActivityAppLockBinding activityAppLockBinding = null;
                if (errorCode == 10 || errorCode == 13) {
                    ActivityAppLockBinding activityAppLockBinding2 = AppLockActivity.this.binding;
                    if (activityAppLockBinding2 == null) {
                        Intrinsics.throwUninitializedPropertyAccessException("binding");
                    } else {
                        activityAppLockBinding = activityAppLockBinding2;
                    }
                    activityAppLockBinding.tvLockMessage.setText(AppLockActivity.this.getString(C3656R.string.unlock_app_to_continue));
                    return;
                }
                ActivityAppLockBinding activityAppLockBinding3 = AppLockActivity.this.binding;
                if (activityAppLockBinding3 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("binding");
                } else {
                    activityAppLockBinding = activityAppLockBinding3;
                }
                activityAppLockBinding.tvLockMessage.setText(errString.toString());
            }

            @Override // androidx.biometric.BiometricPrompt.AuthenticationCallback
            public void onAuthenticationSucceeded(BiometricPrompt.AuthenticationResult result) {
                Intrinsics.checkNotNullParameter(result, "result");
                super.onAuthenticationSucceeded(result);
                BuildersKt__Builders_commonKt.launch$default(LifecycleOwnerKt.getLifecycleScope(AppLockActivity.this), null, null, new C3685x408b8168(AppLockActivity.this, null), 3, null);
            }

            @Override // androidx.biometric.BiometricPrompt.AuthenticationCallback
            public void onAuthenticationFailed() {
                super.onAuthenticationFailed();
                ActivityAppLockBinding activityAppLockBinding = AppLockActivity.this.binding;
                if (activityAppLockBinding == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("binding");
                    activityAppLockBinding = null;
                }
                activityAppLockBinding.tvLockMessage.setText(AppLockActivity.this.getString(C3656R.string.authentication_failed));
            }
        });
        this.promptInfo = new BiometricPrompt.PromptInfo.Builder().setTitle(getString(C3656R.string.app_lock)).setSubtitle(getString(C3656R.string.unlock_app_to_continue)).setNegativeButtonText(getString(C3656R.string.cancel)).build();
    }

    private final void checkBiometricAvailability() {
        BiometricManager biometricManagerFrom = BiometricManager.from(this);
        Intrinsics.checkNotNullExpressionValue(biometricManagerFrom, "from(...)");
        int iCanAuthenticate = biometricManagerFrom.canAuthenticate(32783);
        ActivityAppLockBinding activityAppLockBinding = null;
        if (iCanAuthenticate == 0) {
            ActivityAppLockBinding activityAppLockBinding2 = this.binding;
            if (activityAppLockBinding2 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("binding");
            } else {
                activityAppLockBinding = activityAppLockBinding2;
            }
            activityAppLockBinding.tvLockMessage.setText(getString(C3656R.string.touch_sensor_to_unlock));
            showBiometricPrompt();
            return;
        }
        if (iCanAuthenticate == 1) {
            ActivityAppLockBinding activityAppLockBinding3 = this.binding;
            if (activityAppLockBinding3 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("binding");
            } else {
                activityAppLockBinding = activityAppLockBinding3;
            }
            activityAppLockBinding.tvLockMessage.setText(getString(C3656R.string.biometric_unavailable));
            return;
        }
        if (iCanAuthenticate == 11) {
            ActivityAppLockBinding activityAppLockBinding4 = this.binding;
            if (activityAppLockBinding4 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("binding");
            } else {
                activityAppLockBinding = activityAppLockBinding4;
            }
            activityAppLockBinding.tvLockMessage.setText(getString(C3656R.string.no_biometric_enrolled));
            return;
        }
        if (iCanAuthenticate == 12) {
            ActivityAppLockBinding activityAppLockBinding5 = this.binding;
            if (activityAppLockBinding5 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("binding");
            } else {
                activityAppLockBinding = activityAppLockBinding5;
            }
            activityAppLockBinding.tvLockMessage.setText(getString(C3656R.string.no_biometric_hardware));
            return;
        }
        ActivityAppLockBinding activityAppLockBinding6 = this.binding;
        if (activityAppLockBinding6 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        } else {
            activityAppLockBinding = activityAppLockBinding6;
        }
        activityAppLockBinding.tvLockMessage.setText(getString(C3656R.string.biometric_unavailable));
    }

    private final void showBiometricPrompt() {
        BiometricPrompt biometricPrompt = this.biometricPrompt;
        BiometricPrompt.PromptInfo promptInfo = null;
        if (biometricPrompt == null) {
            Intrinsics.throwUninitializedPropertyAccessException("biometricPrompt");
            biometricPrompt = null;
        }
        BiometricPrompt.PromptInfo promptInfo2 = this.promptInfo;
        if (promptInfo2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("promptInfo");
        } else {
            promptInfo = promptInfo2;
        }
        biometricPrompt.authenticate(promptInfo);
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onResume() {
        super.onResume();
        if (this.biometricPrompt != null) {
            checkBiometricAvailability();
        }
    }
}
