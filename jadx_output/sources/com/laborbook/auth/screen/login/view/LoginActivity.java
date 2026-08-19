package com.laborbook.auth.screen.login.view;

import android.content.ComponentCallbacks;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.core.graphics.Insets;
import androidx.core.view.OnApplyWindowInsetsListener;
import androidx.core.view.ViewCompat;
import androidx.core.view.WindowInsetsCompat;
import androidx.core.view.WindowInsetsControllerCompat;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManager;
import com.boilerplate.navigator.MultipleStackNavigator;
import com.boilerplate.navigator.NavigatorConfiguration;
import com.boilerplate.navigator.transaction.NavigatorTransaction;
import com.boilerplate.navigator.transitionanimation.TransitionAnimationType;
import com.laborbook.auth.C3554R;
import com.laborbook.auth.databinding.ActivityLoginBinding;
import com.laborbook.base.BaseActivity;
import com.laborbook.base.navigator.FragmentNavigator;
import java.util.ArrayList;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import org.koin.android.ext.android.ComponentCallbackExtKt;
import org.koin.core.qualifier.Qualifier;

/* JADX INFO: compiled from: LoginActivity.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(m2721d1 = {"\u0000T\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u0012\u0010\u0016\u001a\u00020\u00172\b\u0010\u0018\u001a\u0004\u0018\u00010\u0019H\u0014J\b\u0010\u001a\u001a\u00020\u0017H\u0002J\u0012\u0010\u001b\u001a\u00020\u00172\b\u0010\u0018\u001a\u0004\u0018\u00010\u0019H\u0002J\b\u0010\u001c\u001a\u00020\u0017H\u0016J\"\u0010\u001d\u001a\u00020\u00172\u0006\u0010\u001e\u001a\u00020\u001f2\u0006\u0010 \u001a\u00020\u001f2\b\u0010!\u001a\u0004\u0018\u00010\"H\u0014J\u0010\u0010#\u001a\u00020\u00172\u0006\u0010$\u001a\u00020\u0019H\u0014R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082.¢\u0006\u0002\n\u0000R\u001b\u0010\u0006\u001a\u00020\u00078BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\n\u0010\u000b\u001a\u0004\b\b\u0010\tR\u0011\u0010\f\u001a\u00020\r¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\u000fR,\u0010\u0010\u001a\u001e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00130\u00120\u0014j\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00130\u0012`\u0011X\u0082\u0004¢\u0006\u0004\n\u0002\u0010\u0015¨\u0006%"}, m2722d2 = {"Lcom/laborbook/auth/screen/login/view/LoginActivity;", "Lcom/laborbook/base/BaseActivity;", "<init>", "()V", "binding", "Lcom/laborbook/auth/databinding/ActivityLoginBinding;", "fragmentNavigator", "Lcom/laborbook/base/navigator/FragmentNavigator;", "getFragmentNavigator", "()Lcom/laborbook/base/navigator/FragmentNavigator;", "fragmentNavigator$delegate", "Lkotlin/Lazy;", "loginFragment", "Lcom/laborbook/auth/screen/login/view/LoginFragment;", "getLoginFragment", "()Lcom/laborbook/auth/screen/login/view/LoginFragment;", "rootFragmentProvider", "Lkotlin/collections/ArrayList;", "Lkotlin/Function0;", "Landroidx/fragment/app/Fragment;", "Ljava/util/ArrayList;", "Ljava/util/ArrayList;", "onCreate", "", "savedInstanceState", "Landroid/os/Bundle;", "enableEdgeToEdge", "setupNavigator", "onBackPressed", "onActivityResult", "requestCode", "", "resultCode", "data", "Landroid/content/Intent;", "onSaveInstanceState", "outState", "auth_release"}, m2723k = 1, m2724mv = {2, 0, 0}, m2726xi = 48)
public final class LoginActivity extends BaseActivity {
    private ActivityLoginBinding binding;

    /* JADX INFO: renamed from: fragmentNavigator$delegate, reason: from kotlin metadata */
    private final Lazy fragmentNavigator;
    private final LoginFragment loginFragment;
    private final ArrayList<Function0<Fragment>> rootFragmentProvider;

    /* JADX WARN: Multi-variable type inference failed */
    public LoginActivity() {
        final LoginActivity loginActivity = this;
        LazyThreadSafetyMode lazyThreadSafetyMode = LazyThreadSafetyMode.SYNCHRONIZED;
        final Qualifier qualifier = null;
        final Object[] objArr = 0 == true ? 1 : 0;
        this.fragmentNavigator = LazyKt.lazy(lazyThreadSafetyMode, (Function0) new Function0<FragmentNavigator>() { // from class: com.laborbook.auth.screen.login.view.LoginActivity$special$$inlined$inject$default$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX WARN: Type inference failed for: r0v2, types: [com.laborbook.base.navigator.FragmentNavigator, java.lang.Object] */
            @Override // kotlin.jvm.functions.Function0
            public final FragmentNavigator invoke() {
                ComponentCallbacks componentCallbacks = loginActivity;
                return ComponentCallbackExtKt.getDefaultScope(componentCallbacks).get(Reflection.getOrCreateKotlinClass(FragmentNavigator.class), qualifier, objArr);
            }
        });
        this.loginFragment = LoginFragment.INSTANCE.newInstance();
        this.rootFragmentProvider = CollectionsKt.arrayListOf(new Function0() { // from class: com.laborbook.auth.screen.login.view.LoginActivity$$ExternalSyntheticLambda0
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return LoginActivity.rootFragmentProvider$lambda$0(this.f$0);
            }
        });
    }

    private final FragmentNavigator getFragmentNavigator() {
        return (FragmentNavigator) this.fragmentNavigator.getValue();
    }

    public final LoginFragment getLoginFragment() {
        return this.loginFragment;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Fragment rootFragmentProvider$lambda$0(LoginActivity this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        return this$0.loginFragment;
    }

    @Override // com.laborbook.base.BaseActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        ActivityLoginBinding activityLoginBindingInflate = ActivityLoginBinding.inflate(getLayoutInflater());
        this.binding = activityLoginBindingInflate;
        if (activityLoginBindingInflate == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            activityLoginBindingInflate = null;
        }
        setContentView(activityLoginBindingInflate.getRoot());
        enableEdgeToEdge();
        setupNavigator(savedInstanceState);
    }

    private final void enableEdgeToEdge() {
        ActivityLoginBinding activityLoginBinding = this.binding;
        if (activityLoginBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            activityLoginBinding = null;
        }
        ConstraintLayout root = activityLoginBinding.getRoot();
        Intrinsics.checkNotNullExpressionValue(root, "getRoot(...)");
        ConstraintLayout constraintLayout = root;
        ViewCompat.setOnApplyWindowInsetsListener(constraintLayout, new OnApplyWindowInsetsListener() { // from class: com.laborbook.auth.screen.login.view.LoginActivity$$ExternalSyntheticLambda1
            @Override // androidx.core.view.OnApplyWindowInsetsListener
            public final WindowInsetsCompat onApplyWindowInsets(View view, WindowInsetsCompat windowInsetsCompat) {
                return LoginActivity.enableEdgeToEdge$lambda$1(view, windowInsetsCompat);
            }
        });
        new WindowInsetsControllerCompat(getWindow(), constraintLayout).setAppearanceLightStatusBars(true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final WindowInsetsCompat enableEdgeToEdge$lambda$1(View v, WindowInsetsCompat insets) {
        Intrinsics.checkNotNullParameter(v, "v");
        Intrinsics.checkNotNullParameter(insets, "insets");
        Insets insets2 = insets.getInsets(WindowInsetsCompat.Type.systemBars());
        Intrinsics.checkNotNullExpressionValue(insets2, "getInsets(...)");
        v.setPadding(insets2.left, insets2.top, insets2.right, insets2.bottom);
        return insets;
    }

    private final void setupNavigator(Bundle savedInstanceState) {
        FragmentNavigator fragmentNavigator = getFragmentNavigator();
        FragmentManager supportFragmentManager = getSupportFragmentManager();
        Intrinsics.checkNotNullExpressionValue(supportFragmentManager, "getSupportFragmentManager(...)");
        fragmentNavigator.initialize(new MultipleStackNavigator(supportFragmentManager, C3554R.id.container, this.rootFragmentProvider, null, new NavigatorConfiguration(0, true, NavigatorTransaction.SHOW_HIDE), TransitionAnimationType.RIGHT_TO_LEFT, this, 8, null), savedInstanceState);
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
        if (Intrinsics.areEqual((Object) getFragmentNavigator().canGoBack(), (Object) true)) {
            getFragmentNavigator().goBack();
        } else {
            super.onBackPressed();
        }
    }

    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    protected void onActivityResult(int requestCode, int resultCode, Intent data) {
        super.onActivityResult(requestCode, resultCode, data);
        if (requestCode == 12 || requestCode == 100) {
            this.loginFragment.onActivityResult(requestCode, resultCode, data);
        }
    }

    @Override // androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onSaveInstanceState(Bundle outState) {
        Intrinsics.checkNotNullParameter(outState, "outState");
        FragmentNavigator fragmentNavigator = getFragmentNavigator();
        if (fragmentNavigator != null) {
            fragmentNavigator.onSaveInstanceState(outState);
        }
        super.onSaveInstanceState(outState);
    }
}
