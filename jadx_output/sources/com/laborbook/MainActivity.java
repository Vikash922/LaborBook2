package com.laborbook;

import android.os.Bundle;
import android.view.View;
import androidx.appcompat.app.AppCompatActivity;
import androidx.core.graphics.Insets;
import androidx.core.view.OnApplyWindowInsetsListener;
import androidx.core.view.ViewCompat;
import androidx.core.view.WindowCompat;
import androidx.core.view.WindowInsetsCompat;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManager;
import com.boilerplate.navigator.FragmentStackStateMapper;
import com.boilerplate.navigator.MultipleStackNavigator;
import com.boilerplate.navigator.Navigator;
import com.boilerplate.navigator.NavigatorConfiguration;
import com.boilerplate.navigator.transaction.NavigatorTransaction;
import com.boilerplate.navigator.transitionanimation.TransitionAnimationType;
import com.laborbook.auth.screen.login.view.LoginFragment;
import java.util.ArrayList;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: MainActivity.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(m2721d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\b\n\u0000\u0018\u00002\u00020\u00012\u00020\u0002B\u0007¢\u0006\u0004\b\u0003\u0010\u0004J\u0012\u0010\r\u001a\u00020\u000e2\b\u0010\u000f\u001a\u0004\u0018\u00010\u0010H\u0014J\b\u0010\u0011\u001a\u00020\u000eH\u0002J\u0012\u0010\u0012\u001a\u00020\u000e2\b\u0010\u000f\u001a\u0004\u0018\u00010\u0010H\u0002J\u0010\u0010\u0013\u001a\u00020\u000e2\u0006\u0010\u0014\u001a\u00020\u0015H\u0016R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082.¢\u0006\u0002\n\u0000R,\u0010\u0007\u001a\u001e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\n0\t0\u000bj\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\n0\t`\bX\u0082\u0004¢\u0006\u0004\n\u0002\u0010\f¨\u0006\u0016"}, m2722d2 = {"Lcom/laborbook/MainActivity;", "Landroidx/appcompat/app/AppCompatActivity;", "Lcom/boilerplate/navigator/Navigator$NavigatorListener;", "<init>", "()V", "multipleStackNavigator", "Lcom/boilerplate/navigator/MultipleStackNavigator;", "rootFragmentProvider", "Lkotlin/collections/ArrayList;", "Lkotlin/Function0;", "Landroidx/fragment/app/Fragment;", "Ljava/util/ArrayList;", "Ljava/util/ArrayList;", "onCreate", "", "savedInstanceState", "Landroid/os/Bundle;", "enableEdgeToEdge", "setupNavigator", "onTabChanged", FragmentStackStateMapper.MEDUSA_TAB_INDEX, "", "app_release"}, m2723k = 1, m2724mv = {2, 0, 0}, m2726xi = 48)
public final class MainActivity extends AppCompatActivity implements Navigator.NavigatorListener {
    private MultipleStackNavigator multipleStackNavigator;
    private final ArrayList<Function0<Fragment>> rootFragmentProvider = CollectionsKt.arrayListOf(new Function0() { // from class: com.laborbook.MainActivity$$ExternalSyntheticLambda0
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return MainActivity.rootFragmentProvider$lambda$0();
        }
    });

    @Override // com.boilerplate.navigator.Navigator.NavigatorListener
    public void onTabChanged(int tabIndex) {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Fragment rootFragmentProvider$lambda$0() {
        return LoginFragment.INSTANCE.newInstance();
    }

    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(C3544R.layout.activity_main);
        enableEdgeToEdge();
        setupNavigator(savedInstanceState);
    }

    private final void enableEdgeToEdge() {
        WindowCompat.setDecorFitsSystemWindows(getWindow(), false);
        getWindow().setStatusBarColor(0);
        getWindow().setNavigationBarColor(0);
        View viewFindViewById = findViewById(C3544R.id.main);
        Intrinsics.checkNotNullExpressionValue(viewFindViewById, "findViewById(...)");
        final View viewFindViewById2 = findViewById(C3544R.id.bottom_nav);
        ViewCompat.setOnApplyWindowInsetsListener(viewFindViewById, new OnApplyWindowInsetsListener() { // from class: com.laborbook.MainActivity$$ExternalSyntheticLambda1
            @Override // androidx.core.view.OnApplyWindowInsetsListener
            public final WindowInsetsCompat onApplyWindowInsets(View view, WindowInsetsCompat windowInsetsCompat) {
                return MainActivity.enableEdgeToEdge$lambda$1(viewFindViewById2, view, windowInsetsCompat);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final WindowInsetsCompat enableEdgeToEdge$lambda$1(View view, View v, WindowInsetsCompat insets) {
        Intrinsics.checkNotNullParameter(v, "v");
        Intrinsics.checkNotNullParameter(insets, "insets");
        Insets insets2 = insets.getInsets(WindowInsetsCompat.Type.systemBars());
        Intrinsics.checkNotNullExpressionValue(insets2, "getInsets(...)");
        v.setPadding(insets2.left, insets2.top, insets2.right, insets2.bottom);
        if (view != null) {
            view.setPadding(view.getPaddingLeft(), view.getPaddingTop(), view.getPaddingRight(), insets2.bottom);
        }
        return insets;
    }

    private final void setupNavigator(Bundle savedInstanceState) {
        FragmentManager supportFragmentManager = getSupportFragmentManager();
        Intrinsics.checkNotNullExpressionValue(supportFragmentManager, "getSupportFragmentManager(...)");
        MultipleStackNavigator multipleStackNavigator = new MultipleStackNavigator(supportFragmentManager, C3544R.id.container, this.rootFragmentProvider, this, new NavigatorConfiguration(0, true, NavigatorTransaction.SHOW_HIDE), TransitionAnimationType.RIGHT_TO_LEFT, this);
        this.multipleStackNavigator = multipleStackNavigator;
        multipleStackNavigator.initialize(savedInstanceState);
    }
}
