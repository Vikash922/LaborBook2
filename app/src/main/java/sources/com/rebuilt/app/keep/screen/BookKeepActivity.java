package com.rebuilt.app.keep.screen;

import android.app.AlertDialog;
import android.content.ComponentCallbacks;
import android.content.DialogInterface;
import android.content.Intent;
import android.os.Build;
import android.os.Bundle;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.Toast;
import androidx.activity.result.ActivityResult;
import androidx.activity.result.ActivityResultCallback;
import androidx.activity.result.ActivityResultLauncher;
import androidx.activity.result.contract.ActivityResultContracts;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.core.content.ContextCompat;
import androidx.core.graphics.Insets;
import androidx.core.view.OnApplyWindowInsetsListener;
import androidx.core.view.ViewCompat;
import androidx.core.view.WindowCompat;
import androidx.core.view.WindowInsetsCompat;
import androidx.core.view.WindowInsetsControllerCompat;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManager;
import androidx.lifecycle.LifecycleOwnerKt;
import com.boilerplate.navigator.FragmentStackStateMapper;
import com.boilerplate.navigator.MultipleStackNavigator;
import com.boilerplate.navigator.Navigator;
import com.boilerplate.navigator.NavigatorConfiguration;
import com.boilerplate.navigator.transaction.NavigatorTransaction;
import com.boilerplate.navigator.transitionanimation.TransitionAnimationType;
import com.boilerplate.uikit.views.ExtentionsKt;
import com.google.android.gms.ads.AdError;
import com.google.android.gms.ads.AdRequest;
import com.google.android.gms.ads.AdView;
import com.google.android.gms.ads.FullScreenContentCallback;
import com.google.android.gms.ads.LoadAdError;
import com.google.android.gms.ads.interstitial.InterstitialAd;
import com.google.android.gms.ads.interstitial.InterstitialAdLoadCallback;
import com.google.android.gms.tasks.OnSuccessListener;
import com.google.android.gms.tasks.Task;
import com.google.android.material.bottomnavigation.BottomNavigationView;
import com.google.android.material.navigation.NavigationBarView;
import com.google.android.play.core.appupdate.AppUpdateInfo;
import com.google.android.play.core.appupdate.AppUpdateManager;
import com.google.android.play.core.appupdate.AppUpdateManagerFactory;
import com.google.android.play.core.appupdate.AppUpdateOptions;
import com.google.firebase.ktx.Firebase;
import com.google.firebase.remoteconfig.FirebaseRemoteConfig;
import com.google.firebase.remoteconfig.ktx.RemoteConfigKt;
import com.itextpdf.kernel.pdf.canvas.wmf.MetaDo;
import com.itextpdf.p017io.codec.TIFFConstants;
import com.rebuilt.app.base.AdUnitConstants;
import com.rebuilt.app.base.BaseActivity;
import com.rebuilt.app.base.ads.CustomAdData;
import com.rebuilt.app.base.ads.CustomAdManager;
import com.rebuilt.app.base.ads.CustomAdView;
import com.rebuilt.app.base.analytics.ConstantEventAttributes;
import com.rebuilt.app.base.analytics.ConstantEventNames;
import com.rebuilt.app.base.analytics.ConstantEventSources;
import com.rebuilt.app.base.datastore.DataStoreManager;
import com.rebuilt.app.base.datastore.DataStoreManagerExtensionsKt;
import com.rebuilt.app.base.navigator.FragmentNavigator;
import com.rebuilt.app.expense.util.ExpenseObserverUtil;
import com.rebuilt.app.income.util.IncomeObserverUtil;
import com.rebuilt.app.keep.C3656R;
import com.rebuilt.app.keep.databinding.ActivityBookKeepBinding;
import com.rebuilt.app.keep.screen.calendar.fragment.LaborMonthlyCalendarFragment;
import com.rebuilt.app.keep.screen.calendar.utils.ObserverUtil;
import com.rebuilt.app.keep.screen.home.fragment.CashbookFragment;
import com.rebuilt.app.keep.screen.home.fragment.ReferFriendBottomSheetFragment;
import com.rebuilt.app.keep.screen.home.fragment.SettingsFragment;
import com.rebuilt.app.keep.screen.home.fragment.StaffListFragment;
import com.rebuilt.app.keep.screen.premium.PremiumOfferDialogFragment;
import com.rebuilt.app.keep.screen.premium.PremiumOfferManager;
import com.rebuilt.app.keep.screen.premium.viewmodel.SubscriptionViewModel;
import com.rebuilt.app.keep.utils.SubscriptionsFeatureFlag;
import com.razorpay.PaymentData;
import com.razorpay.PaymentResultWithDataListener;
import java.util.ArrayList;
import java.util.concurrent.TimeUnit;
import kotlin.Deprecated;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.collections.MapsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function4;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.flow.FlowKt;
import org.koin.android.ext.android.ComponentCallbackExtKt;
import org.koin.androidx.viewmodel.ext.android.ViewModelStoreOwnerExtKt;
import org.koin.core.qualifier.Qualifier;
import org.objectweb.asm.Opcodes;

/* JADX INFO: compiled from: BookKeepActivity.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(m2721d1 = {"\u0000¶\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u000f\n\u0002\u0010\b\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0011\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u0003B\u0007¢\u0006\u0004\b\u0004\u0010\u0005J\u0012\u0010A\u001a\u00020B2\b\u0010C\u001a\u0004\u0018\u00010DH\u0014J\b\u0010E\u001a\u00020BH\u0002J\b\u0010F\u001a\u00020BH\u0002J\b\u0010G\u001a\u00020BH\u0002J\b\u0010H\u001a\u00020BH\u0002J\u000e\u0010I\u001a\u00020BH\u0082@¢\u0006\u0002\u0010JJ\b\u0010K\u001a\u00020BH\u0002J\b\u0010L\u001a\u00020BH\u0002J\b\u0010M\u001a\u00020BH\u0002J\b\u0010N\u001a\u00020BH\u0002J\u0012\u0010O\u001a\u00020B2\b\u0010C\u001a\u0004\u0018\u00010DH\u0002J\b\u0010P\u001a\u00020BH\u0016J\b\u0010Q\u001a\u00020BH\u0002J\u0010\u0010R\u001a\u00020B2\u0006\u0010S\u001a\u00020TH\u0016J\u0010\u0010U\u001a\u00020B2\u0006\u0010V\u001a\u00020DH\u0014J\b\u0010W\u001a\u00020BH\u0002J\b\u0010X\u001a\u00020BH\u0002J\b\u0010Z\u001a\u00020BH\u0002J\u0018\u0010[\u001a\u00020B2\u0006\u0010\\\u001a\u00020]2\u0006\u0010^\u001a\u00020TH\u0002J\b\u0010_\u001a\u00020BH\u0014J\b\u0010`\u001a\u00020BH\u0014J\u000e\u0010a\u001a\u000207H\u0082@¢\u0006\u0002\u0010JJ\b\u0010b\u001a\u00020TH\u0002J\u000e\u0010c\u001a\u000207H\u0082@¢\u0006\u0002\u0010JJ\b\u0010d\u001a\u00020BH\u0002J\b\u0010e\u001a\u00020BH\u0002J\u0006\u0010f\u001a\u00020BJ\u0006\u0010g\u001a\u00020BJ\b\u0010h\u001a\u00020BH\u0002J\b\u0010i\u001a\u00020BH\u0002J\u000e\u0010j\u001a\u00020BH\u0082@¢\u0006\u0002\u0010JJ\u000e\u0010k\u001a\u00020BH\u0082@¢\u0006\u0002\u0010JJ\u001a\u0010l\u001a\u00020B2\u0006\u0010m\u001a\u0002032\b\u0010n\u001a\u0004\u0018\u00010oH\u0016J\"\u0010p\u001a\u00020B2\u0006\u0010q\u001a\u00020T2\u0006\u0010r\u001a\u0002032\b\u0010n\u001a\u0004\u0018\u00010oH\u0016J\"\u0010s\u001a\u00020B2\u0006\u0010t\u001a\u00020T2\u0006\u0010u\u001a\u00020T2\b\u0010v\u001a\u0004\u0018\u000100H\u0015R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082.¢\u0006\u0002\n\u0000R\u001b\u0010\b\u001a\u00020\t8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\f\u0010\r\u001a\u0004\b\n\u0010\u000bR\u001b\u0010\u000e\u001a\u00020\u000f8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0012\u0010\r\u001a\u0004\b\u0010\u0010\u0011R\u001b\u0010\u0013\u001a\u00020\u00148BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0017\u0010\r\u001a\u0004\b\u0015\u0010\u0016R\u001b\u0010\u0018\u001a\u00020\u00198BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u001c\u0010\r\u001a\u0004\b\u001a\u0010\u001bR\u001b\u0010\u001d\u001a\u00020\u001e8FX\u0086\u0084\u0002¢\u0006\f\n\u0004\b!\u0010\r\u001a\u0004\b\u001f\u0010 R\u001b\u0010\"\u001a\u00020#8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b&\u0010\r\u001a\u0004\b$\u0010%R\u001b\u0010'\u001a\u00020(8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b+\u0010\r\u001a\u0004\b)\u0010*R\u000e\u0010,\u001a\u00020-X\u0082.¢\u0006\u0002\n\u0000R\u0014\u0010.\u001a\b\u0012\u0004\u0012\u0002000/X\u0082.¢\u0006\u0002\n\u0000R\u0014\u00101\u001a\b\u0012\u0004\u0012\u0002000/X\u0082.¢\u0006\u0002\n\u0000R\u0010\u00102\u001a\u0004\u0018\u000103X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u00104\u001a\u0004\u0018\u000105X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u00106\u001a\u000207X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u00108\u001a\u000207X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u00109\u001a\u000207X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010:\u001a\u000207X\u0082\u000e¢\u0006\u0002\n\u0000R,\u0010;\u001a\u001e\u0012\n\u0012\b\u0012\u0004\u0012\u00020>0=0?j\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020>0=`<X\u0082\u0004¢\u0006\u0004\n\u0002\u0010@R\u0014\u0010Y\u001a\b\u0012\u0004\u0012\u0002030/X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006w²\u0006\n\u0010x\u001a\u00020yX\u008a\u0084\u0002"}, m2722d2 = {"Lcom/laborbook/keep/screen/BookKeepActivity;", "Lcom/laborbook/base/BaseActivity;", "Lcom/boilerplate/navigator/Navigator$NavigatorListener;", "Lcom/razorpay/PaymentResultWithDataListener;", "<init>", "()V", "binding", "Lcom/laborbook/keep/databinding/ActivityBookKeepBinding;", "fragmentNavigator", "Lcom/laborbook/base/navigator/FragmentNavigator;", "getFragmentNavigator", "()Lcom/laborbook/base/navigator/FragmentNavigator;", "fragmentNavigator$delegate", "Lkotlin/Lazy;", "observerUtil", "Lcom/laborbook/keep/screen/calendar/utils/ObserverUtil;", "getObserverUtil", "()Lcom/laborbook/keep/screen/calendar/utils/ObserverUtil;", "observerUtil$delegate", "expenseObserverUtil", "Lcom/laborbook/expense/util/ExpenseObserverUtil;", "getExpenseObserverUtil", "()Lcom/laborbook/expense/util/ExpenseObserverUtil;", "expenseObserverUtil$delegate", "incomeObserverUtil", "Lcom/laborbook/income/util/IncomeObserverUtil;", "getIncomeObserverUtil", "()Lcom/laborbook/income/util/IncomeObserverUtil;", "incomeObserverUtil$delegate", "dataStoreManager", "Lcom/laborbook/base/datastore/DataStoreManager;", "getDataStoreManager", "()Lcom/laborbook/base/datastore/DataStoreManager;", "dataStoreManager$delegate", "premiumOfferManager", "Lcom/laborbook/keep/screen/premium/PremiumOfferManager;", "getPremiumOfferManager", "()Lcom/laborbook/keep/screen/premium/PremiumOfferManager;", "premiumOfferManager$delegate", "subscriptionViewModel", "Lcom/laborbook/keep/screen/premium/viewmodel/SubscriptionViewModel;", "getSubscriptionViewModel", "()Lcom/laborbook/keep/screen/premium/viewmodel/SubscriptionViewModel;", "subscriptionViewModel$delegate", "appUpdateManager", "Lcom/google/android/play/core/appupdate/AppUpdateManager;", "appUpdateLauncher", "Landroidx/activity/result/ActivityResultLauncher;", "Landroid/content/Intent;", "appLockLauncher", "lastDestinationClassName", "", "calendarExitInterstitial", "Lcom/google/android/gms/ads/interstitial/InterstitialAd;", "calendarExitInterstitialLoading", "", "calendarExitInterstitialShownThisSession", "referFriendBottomSheetCheckedThisSession", "subscriptionStatusCheckedThisSession", "rootFragmentProvider", "Lkotlin/collections/ArrayList;", "Lkotlin/Function0;", "Landroidx/fragment/app/Fragment;", "Ljava/util/ArrayList;", "Ljava/util/ArrayList;", "onCreate", "", "savedInstanceState", "Landroid/os/Bundle;", "checkAndShowHardPaywall", "observeProStatusChanges", "observeSubscriptionStateChanges", "recordFirstTimeHomeScreenEventIfNeeded", "ensureNetworkHeadersSync", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "ensureNetworkHeaders", "hideAllAds", "enableEdgeToEdge", "checkForNotificationPermission", "setupNavigator", "onBackPressed", "showExitConfirmationDialog", "onTabChanged", FragmentStackStateMapper.MEDUSA_TAB_INDEX, "", "onSaveInstanceState", "outState", "setOnItemSelectedListener", "setOnDestinationChangeListener", "requestNotificationPermissionLauncher", "checkForUpdate", "startUpdate", "appUpdateInfo", "Lcom/google/android/play/core/appupdate/AppUpdateInfo;", "updateType", "onResume", "onStart", "checkAppLockIfNeeded", "todayEpochDayUtc", "canShowDailyCalendarExitInterstitial", "preloadCalendarExitInterstitialIfEligible", "showCalendarExitInterstitialIfReady", "onPaywallShown", "onPaywallDismissed", "requestGoogleAds", "loadCustomAd", "refreshSubscriptionStatus", "checkAndShowReferFriendBottomSheet", "onPaymentSuccess", "razorpayPaymentId", "paymentData", "Lcom/razorpay/PaymentData;", "onPaymentError", "errorCode", "errorMessage", "onActivityResult", "requestCode", "resultCode", "data", "keep_release", "customAdManager", "Lcom/laborbook/base/ads/CustomAdManager;"}, m2723k = 1, m2724mv = {2, 0, 0}, m2726xi = 48)
public final class BookKeepActivity extends BaseActivity implements Navigator.NavigatorListener, PaymentResultWithDataListener {
    private ActivityResultLauncher<Intent> appLockLauncher;
    private ActivityResultLauncher<Intent> appUpdateLauncher;
    private AppUpdateManager appUpdateManager;
    private ActivityBookKeepBinding binding;
    private InterstitialAd calendarExitInterstitial;
    private boolean calendarExitInterstitialLoading;
    private boolean calendarExitInterstitialShownThisSession;

    /* JADX INFO: renamed from: dataStoreManager$delegate, reason: from kotlin metadata */
    private final Lazy dataStoreManager;

    /* JADX INFO: renamed from: expenseObserverUtil$delegate, reason: from kotlin metadata */
    private final Lazy expenseObserverUtil;

    /* JADX INFO: renamed from: fragmentNavigator$delegate, reason: from kotlin metadata */
    private final Lazy fragmentNavigator;

    /* JADX INFO: renamed from: incomeObserverUtil$delegate, reason: from kotlin metadata */
    private final Lazy incomeObserverUtil;
    private String lastDestinationClassName;

    /* JADX INFO: renamed from: observerUtil$delegate, reason: from kotlin metadata */
    private final Lazy observerUtil;

    /* JADX INFO: renamed from: premiumOfferManager$delegate, reason: from kotlin metadata */
    private final Lazy premiumOfferManager;
    private boolean referFriendBottomSheetCheckedThisSession;
    private final ActivityResultLauncher<String> requestNotificationPermissionLauncher;
    private final ArrayList<Function0<Fragment>> rootFragmentProvider;
    private boolean subscriptionStatusCheckedThisSession;

    /* JADX INFO: renamed from: subscriptionViewModel$delegate, reason: from kotlin metadata */
    private final Lazy subscriptionViewModel;

    /* JADX INFO: renamed from: com.rebuilt.app.keep.screen.BookKeepActivity$canShowDailyCalendarExitInterstitial$1 */
    /* JADX INFO: compiled from: BookKeepActivity.kt */
    /* JADX INFO: loaded from: classes5.dex */
    @Metadata(m2723k = 3, m2724mv = {2, 0, 0}, m2726xi = 48)
    @DebugMetadata(m2734c = "com.rebuilt.app.keep.screen.BookKeepActivity", m2735f = "BookKeepActivity.kt", m2736i = {0, 1, 1, 1, 2, 2, 2}, m2737l = {597, TypedValues.MotionType.TYPE_EASING, TypedValues.MotionType.TYPE_QUANTIZE_INTERPOLATOR}, m2738m = "canShowDailyCalendarExitInterstitial", m2739n = {"this", "this", "maxPerDay", "today", "maxPerDay", "today", "lastShownDay"}, m2740s = {"L$0", "L$0", "I$0", "I$1", "I$0", "I$1", "I$2"})
    static final class C36861 extends ContinuationImpl {
        int I$0;
        int I$1;
        int I$2;
        Object L$0;
        int label;
        /* synthetic */ Object result;

        C36861(Continuation<? super C36861> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return BookKeepActivity.this.canShowDailyCalendarExitInterstitial(this);
        }
    }

    /* JADX INFO: renamed from: com.rebuilt.app.keep.screen.BookKeepActivity$checkAndShowReferFriendBottomSheet$1 */
    /* JADX INFO: compiled from: BookKeepActivity.kt */
    /* JADX INFO: loaded from: classes5.dex */
    @Metadata(m2723k = 3, m2724mv = {2, 0, 0}, m2726xi = 48)
    @DebugMetadata(m2734c = "com.rebuilt.app.keep.screen.BookKeepActivity", m2735f = "BookKeepActivity.kt", m2736i = {0, 1, 2, 2, 3, 4}, m2737l = {841, 845, 846, 850, 854}, m2738m = "checkAndShowReferFriendBottomSheet", m2739n = {"this", "this", "this", "isExistingUser", "this", "this"}, m2740s = {"L$0", "L$0", "L$0", "Z$0", "L$0", "L$0"})
    static final class C36881 extends ContinuationImpl {
        Object L$0;
        boolean Z$0;
        int label;
        /* synthetic */ Object result;

        C36881(Continuation<? super C36881> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return BookKeepActivity.this.checkAndShowReferFriendBottomSheet(this);
        }
    }

    /* JADX INFO: renamed from: com.rebuilt.app.keep.screen.BookKeepActivity$checkAppLockIfNeeded$1 */
    /* JADX INFO: compiled from: BookKeepActivity.kt */
    /* JADX INFO: loaded from: classes5.dex */
    @Metadata(m2723k = 3, m2724mv = {2, 0, 0}, m2726xi = 48)
    @DebugMetadata(m2734c = "com.rebuilt.app.keep.screen.BookKeepActivity", m2735f = "BookKeepActivity.kt", m2736i = {0, 1}, m2737l = {572, 575}, m2738m = "checkAppLockIfNeeded", m2739n = {"this", "this"}, m2740s = {"L$0", "L$0"})
    static final class C36891 extends ContinuationImpl {
        Object L$0;
        int label;
        /* synthetic */ Object result;

        C36891(Continuation<? super C36891> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return BookKeepActivity.this.checkAppLockIfNeeded(this);
        }
    }

    /* JADX INFO: renamed from: com.rebuilt.app.keep.screen.BookKeepActivity$ensureNetworkHeadersSync$1 */
    /* JADX INFO: compiled from: BookKeepActivity.kt */
    /* JADX INFO: loaded from: classes5.dex */
    @Metadata(m2723k = 3, m2724mv = {2, 0, 0}, m2726xi = 48)
    @DebugMetadata(m2734c = "com.rebuilt.app.keep.screen.BookKeepActivity", m2735f = "BookKeepActivity.kt", m2736i = {0, 1, 2}, m2737l = {252, 253, TIFFConstants.TIFFTAG_SUBFILETYPE, 255}, m2738m = "ensureNetworkHeadersSync", m2739n = {"this", "this", "this"}, m2740s = {"L$0", "L$0", "L$0"})
    static final class C36911 extends ContinuationImpl {
        int I$0;
        Object L$0;
        Object L$1;
        Object L$2;
        Object L$3;
        Object L$4;
        int label;
        /* synthetic */ Object result;

        C36911(Continuation<? super C36911> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return BookKeepActivity.this.ensureNetworkHeadersSync(this);
        }
    }

    /* JADX INFO: renamed from: com.rebuilt.app.keep.screen.BookKeepActivity$refreshSubscriptionStatus$1 */
    /* JADX INFO: compiled from: BookKeepActivity.kt */
    /* JADX INFO: loaded from: classes5.dex */
    @Metadata(m2723k = 3, m2724mv = {2, 0, 0}, m2726xi = 48)
    @DebugMetadata(m2734c = "com.rebuilt.app.keep.screen.BookKeepActivity", m2735f = "BookKeepActivity.kt", m2736i = {0, 1}, m2737l = {816, 820, 828}, m2738m = "refreshSubscriptionStatus", m2739n = {"this", "this"}, m2740s = {"L$0", "L$0"})
    static final class C37001 extends ContinuationImpl {
        Object L$0;
        int label;
        /* synthetic */ Object result;

        C37001(Continuation<? super C37001> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return BookKeepActivity.this.refreshSubscriptionStatus(this);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public BookKeepActivity() {
        final BookKeepActivity bookKeepActivity = this;
        LazyThreadSafetyMode lazyThreadSafetyMode = LazyThreadSafetyMode.SYNCHRONIZED;
        final Qualifier qualifier = null;
        final Object[] objArr = 0 == true ? 1 : 0;
        this.fragmentNavigator = LazyKt.lazy(lazyThreadSafetyMode, (Function0) new Function0<FragmentNavigator>() { // from class: com.rebuilt.app.keep.screen.BookKeepActivity$special$$inlined$inject$default$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX WARN: Type inference failed for: r0v2, types: [com.rebuilt.app.base.navigator.FragmentNavigator, java.lang.Object] */
            @Override // kotlin.jvm.functions.Function0
            public final FragmentNavigator invoke() {
                ComponentCallbacks componentCallbacks = bookKeepActivity;
                return ComponentCallbackExtKt.getDefaultScope(componentCallbacks).get(Reflection.getOrCreateKotlinClass(FragmentNavigator.class), qualifier, objArr);
            }
        });
        LazyThreadSafetyMode lazyThreadSafetyMode2 = LazyThreadSafetyMode.SYNCHRONIZED;
        final Object[] objArr2 = 0 == true ? 1 : 0;
        final Object[] objArr3 = 0 == true ? 1 : 0;
        this.observerUtil = LazyKt.lazy(lazyThreadSafetyMode2, (Function0) new Function0<ObserverUtil>() { // from class: com.rebuilt.app.keep.screen.BookKeepActivity$special$$inlined$inject$default$2
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX WARN: Type inference failed for: r0v2, types: [com.rebuilt.app.keep.screen.calendar.utils.ObserverUtil, java.lang.Object] */
            @Override // kotlin.jvm.functions.Function0
            public final ObserverUtil invoke() {
                ComponentCallbacks componentCallbacks = bookKeepActivity;
                return ComponentCallbackExtKt.getDefaultScope(componentCallbacks).get(Reflection.getOrCreateKotlinClass(ObserverUtil.class), objArr2, objArr3);
            }
        });
        LazyThreadSafetyMode lazyThreadSafetyMode3 = LazyThreadSafetyMode.SYNCHRONIZED;
        final Object[] objArr4 = 0 == true ? 1 : 0;
        final Object[] objArr5 = 0 == true ? 1 : 0;
        this.expenseObserverUtil = LazyKt.lazy(lazyThreadSafetyMode3, (Function0) new Function0<ExpenseObserverUtil>() { // from class: com.rebuilt.app.keep.screen.BookKeepActivity$special$$inlined$inject$default$3
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX WARN: Type inference failed for: r0v2, types: [com.rebuilt.app.expense.util.ExpenseObserverUtil, java.lang.Object] */
            @Override // kotlin.jvm.functions.Function0
            public final ExpenseObserverUtil invoke() {
                ComponentCallbacks componentCallbacks = bookKeepActivity;
                return ComponentCallbackExtKt.getDefaultScope(componentCallbacks).get(Reflection.getOrCreateKotlinClass(ExpenseObserverUtil.class), objArr4, objArr5);
            }
        });
        LazyThreadSafetyMode lazyThreadSafetyMode4 = LazyThreadSafetyMode.SYNCHRONIZED;
        final Object[] objArr6 = 0 == true ? 1 : 0;
        final Object[] objArr7 = 0 == true ? 1 : 0;
        this.incomeObserverUtil = LazyKt.lazy(lazyThreadSafetyMode4, (Function0) new Function0<IncomeObserverUtil>() { // from class: com.rebuilt.app.keep.screen.BookKeepActivity$special$$inlined$inject$default$4
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX WARN: Type inference failed for: r0v2, types: [com.rebuilt.app.income.util.IncomeObserverUtil, java.lang.Object] */
            @Override // kotlin.jvm.functions.Function0
            public final IncomeObserverUtil invoke() {
                ComponentCallbacks componentCallbacks = bookKeepActivity;
                return ComponentCallbackExtKt.getDefaultScope(componentCallbacks).get(Reflection.getOrCreateKotlinClass(IncomeObserverUtil.class), objArr6, objArr7);
            }
        });
        LazyThreadSafetyMode lazyThreadSafetyMode5 = LazyThreadSafetyMode.SYNCHRONIZED;
        final Object[] objArr8 = 0 == true ? 1 : 0;
        final Object[] objArr9 = 0 == true ? 1 : 0;
        this.dataStoreManager = LazyKt.lazy(lazyThreadSafetyMode5, (Function0) new Function0<DataStoreManager>() { // from class: com.rebuilt.app.keep.screen.BookKeepActivity$special$$inlined$inject$default$5
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX WARN: Type inference failed for: r0v2, types: [com.rebuilt.app.base.datastore.DataStoreManager, java.lang.Object] */
            @Override // kotlin.jvm.functions.Function0
            public final DataStoreManager invoke() {
                ComponentCallbacks componentCallbacks = bookKeepActivity;
                return ComponentCallbackExtKt.getDefaultScope(componentCallbacks).get(Reflection.getOrCreateKotlinClass(DataStoreManager.class), objArr8, objArr9);
            }
        });
        LazyThreadSafetyMode lazyThreadSafetyMode6 = LazyThreadSafetyMode.SYNCHRONIZED;
        final Object[] objArr10 = 0 == true ? 1 : 0;
        final Object[] objArr11 = 0 == true ? 1 : 0;
        this.premiumOfferManager = LazyKt.lazy(lazyThreadSafetyMode6, (Function0) new Function0<PremiumOfferManager>() { // from class: com.rebuilt.app.keep.screen.BookKeepActivity$special$$inlined$inject$default$6
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX WARN: Type inference failed for: r0v2, types: [com.rebuilt.app.keep.screen.premium.PremiumOfferManager, java.lang.Object] */
            @Override // kotlin.jvm.functions.Function0
            public final PremiumOfferManager invoke() {
                ComponentCallbacks componentCallbacks = bookKeepActivity;
                return ComponentCallbackExtKt.getDefaultScope(componentCallbacks).get(Reflection.getOrCreateKotlinClass(PremiumOfferManager.class), objArr10, objArr11);
            }
        });
        final BookKeepActivity bookKeepActivity2 = this;
        LazyThreadSafetyMode lazyThreadSafetyMode7 = LazyThreadSafetyMode.SYNCHRONIZED;
        final Object[] objArr12 = 0 == true ? 1 : 0;
        final Object[] objArr13 = 0 == true ? 1 : 0;
        this.subscriptionViewModel = LazyKt.lazy(lazyThreadSafetyMode7, (Function0) new Function0<SubscriptionViewModel>() { // from class: com.rebuilt.app.keep.screen.BookKeepActivity$special$$inlined$viewModel$default$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            /* JADX WARN: Type inference failed for: r0v1, types: [androidx.lifecycle.ViewModel, com.rebuilt.app.keep.screen.premium.viewmodel.SubscriptionViewModel] */
            @Override // kotlin.jvm.functions.Function0
            public final SubscriptionViewModel invoke() {
                return ViewModelStoreOwnerExtKt.getViewModel(bookKeepActivity2, objArr12, Reflection.getOrCreateKotlinClass(SubscriptionViewModel.class), objArr13);
            }
        });
        this.rootFragmentProvider = CollectionsKt.arrayListOf(new Function0() { // from class: com.rebuilt.app.keep.screen.BookKeepActivity$$ExternalSyntheticLambda16
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return BookKeepActivity.rootFragmentProvider$lambda$0();
            }
        }, new Function0() { // from class: com.rebuilt.app.keep.screen.BookKeepActivity$$ExternalSyntheticLambda17
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return BookKeepActivity.rootFragmentProvider$lambda$1();
            }
        }, new Function0() { // from class: com.rebuilt.app.keep.screen.BookKeepActivity$$ExternalSyntheticLambda18
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return BookKeepActivity.rootFragmentProvider$lambda$2();
            }
        });
        this.requestNotificationPermissionLauncher = registerForActivityResult(new ActivityResultContracts.RequestPermission(), new ActivityResultCallback() { // from class: com.rebuilt.app.keep.screen.BookKeepActivity$$ExternalSyntheticLambda19
            @Override // androidx.activity.result.ActivityResultCallback
            public final void onActivityResult(Object obj) {
                BookKeepActivity.requestNotificationPermissionLauncher$lambda$17(this.f$0, ((Boolean) obj).booleanValue());
            }
        });
    }

    private final FragmentNavigator getFragmentNavigator() {
        return (FragmentNavigator) this.fragmentNavigator.getValue();
    }

    private final ObserverUtil getObserverUtil() {
        return (ObserverUtil) this.observerUtil.getValue();
    }

    private final ExpenseObserverUtil getExpenseObserverUtil() {
        return (ExpenseObserverUtil) this.expenseObserverUtil.getValue();
    }

    private final IncomeObserverUtil getIncomeObserverUtil() {
        return (IncomeObserverUtil) this.incomeObserverUtil.getValue();
    }

    public final DataStoreManager getDataStoreManager() {
        return (DataStoreManager) this.dataStoreManager.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final PremiumOfferManager getPremiumOfferManager() {
        return (PremiumOfferManager) this.premiumOfferManager.getValue();
    }

    private final SubscriptionViewModel getSubscriptionViewModel() {
        return (SubscriptionViewModel) this.subscriptionViewModel.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Fragment rootFragmentProvider$lambda$0() {
        return StaffListFragment.INSTANCE.newInstance();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Fragment rootFragmentProvider$lambda$1() {
        return CashbookFragment.INSTANCE.newInstance();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Fragment rootFragmentProvider$lambda$2() {
        return SettingsFragment.INSTANCE.newInstance();
    }

    @Override // com.rebuilt.app.base.BaseActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        ActivityBookKeepBinding activityBookKeepBindingInflate = ActivityBookKeepBinding.inflate(getLayoutInflater());
        this.binding = activityBookKeepBindingInflate;
        if (activityBookKeepBindingInflate == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            activityBookKeepBindingInflate = null;
        }
        setContentView(activityBookKeepBindingInflate.getRoot());
        enableEdgeToEdge();
        setupNavigator(savedInstanceState);
        setOnItemSelectedListener();
        setOnDestinationChangeListener();
        checkForNotificationPermission();
        recordFirstTimeHomeScreenEventIfNeeded();
        this.appLockLauncher = registerForActivityResult(new ActivityResultContracts.StartActivityForResult(), new ActivityResultCallback() { // from class: com.rebuilt.app.keep.screen.BookKeepActivity$$ExternalSyntheticLambda2
            @Override // androidx.activity.result.ActivityResultCallback
            public final void onActivityResult(Object obj) {
                BookKeepActivity.onCreate$lambda$4(this.f$0, (ActivityResult) obj);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onCreate$lambda$4(BookKeepActivity this$0, ActivityResult result) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(result, "result");
        if (result.getResultCode() != -1) {
            BuildersKt__Builders_commonKt.launch$default(LifecycleOwnerKt.getLifecycleScope(this$0), null, null, new BookKeepActivity$onCreate$2$1(this$0, null), 3, null);
        }
    }

    /* JADX INFO: renamed from: com.rebuilt.app.keep.screen.BookKeepActivity$checkAndShowHardPaywall$1 */
    /* JADX INFO: compiled from: BookKeepActivity.kt */
    /* JADX INFO: loaded from: classes5.dex */
    @Metadata(m2721d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, m2722d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, m2723k = 3, m2724mv = {2, 0, 0}, m2726xi = 48)
    @DebugMetadata(m2734c = "com.rebuilt.app.keep.screen.BookKeepActivity$checkAndShowHardPaywall$1", m2735f = "BookKeepActivity.kt", m2736i = {}, m2737l = {154, 156, 158, Opcodes.IF_ICMPGT, Opcodes.RET, Opcodes.ARETURN}, m2738m = "invokeSuspend", m2739n = {}, m2740s = {})
    static final class C36871 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        int label;

        C36871(Continuation<? super C36871> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return BookKeepActivity.this.new C36871(continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((C36871) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        /* JADX WARN: Removed duplicated region for block: B:21:0x0060 A[RETURN] */
        /* JADX WARN: Removed duplicated region for block: B:24:0x0069 A[Catch: Exception -> 0x014b, TryCatch #1 {Exception -> 0x014b, blocks: (B:6:0x0014, B:49:0x0132, B:51:0x013a, B:11:0x0023, B:27:0x0088, B:12:0x0027, B:22:0x0061, B:24:0x0069, B:13:0x002b, B:19:0x0040, B:16:0x0032, B:46:0x011f), top: B:56:0x0009 }] */
        /* JADX WARN: Removed duplicated region for block: B:29:0x0093 A[Catch: Exception -> 0x011f, TRY_ENTER, TryCatch #0 {Exception -> 0x011f, blocks: (B:8:0x0019, B:9:0x001e, B:32:0x00dc, B:34:0x00e4, B:36:0x00ec, B:38:0x00f4, B:40:0x00fa, B:43:0x0102, B:29:0x0093), top: B:56:0x0009 }] */
        /* JADX WARN: Removed duplicated region for block: B:34:0x00e4 A[Catch: Exception -> 0x011f, TryCatch #0 {Exception -> 0x011f, blocks: (B:8:0x0019, B:9:0x001e, B:32:0x00dc, B:34:0x00e4, B:36:0x00ec, B:38:0x00f4, B:40:0x00fa, B:43:0x0102, B:29:0x0093), top: B:56:0x0009 }] */
        /* JADX WARN: Removed duplicated region for block: B:48:0x0131 A[RETURN] */
        /* JADX WARN: Removed duplicated region for block: B:51:0x013a A[Catch: Exception -> 0x014b, TRY_LEAVE, TryCatch #1 {Exception -> 0x014b, blocks: (B:6:0x0014, B:49:0x0132, B:51:0x013a, B:11:0x0023, B:27:0x0088, B:12:0x0027, B:22:0x0061, B:24:0x0069, B:13:0x002b, B:19:0x0040, B:16:0x0032, B:46:0x011f), top: B:56:0x0009 }] */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.lang.Object invokeSuspend(java.lang.Object r9) throws java.lang.Throwable {
            /*
                Method dump skipped, instruction units count: 352
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.rebuilt.app.keep.screen.BookKeepActivity.C36871.invokeSuspend(java.lang.Object):java.lang.Object");
        }
    }

    private final void checkAndShowHardPaywall() {
        BuildersKt__Builders_commonKt.launch$default(LifecycleOwnerKt.getLifecycleScope(this), null, null, new C36871(null), 3, null);
    }

    /* JADX INFO: renamed from: com.rebuilt.app.keep.screen.BookKeepActivity$observeProStatusChanges$1 */
    /* JADX INFO: compiled from: BookKeepActivity.kt */
    /* JADX INFO: loaded from: classes5.dex */
    @Metadata(m2721d1 = {"\u0000\f\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n"}, m2722d2 = {"<anonymous>", "", "isPro", ""}, m2723k = 3, m2724mv = {2, 0, 0}, m2726xi = 48)
    @DebugMetadata(m2734c = "com.rebuilt.app.keep.screen.BookKeepActivity$observeProStatusChanges$1", m2735f = "BookKeepActivity.kt", m2736i = {}, m2737l = {}, m2738m = "invokeSuspend", m2739n = {}, m2740s = {})
    static final class C36941 extends SuspendLambda implements Function2<Boolean, Continuation<? super Unit>, Object> {
        /* synthetic */ boolean Z$0;
        int label;

        C36941(Continuation<? super C36941> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            C36941 c36941 = BookKeepActivity.this.new C36941(continuation);
            c36941.Z$0 = ((Boolean) obj).booleanValue();
            return c36941;
        }

        @Override // kotlin.jvm.functions.Function2
        public /* bridge */ /* synthetic */ Object invoke(Boolean bool, Continuation<? super Unit> continuation) {
            return invoke(bool.booleanValue(), continuation);
        }

        public final Object invoke(boolean z, Continuation<? super Unit> continuation) {
            return ((C36941) create(Boolean.valueOf(z), continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (this.label != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(obj);
            boolean z = this.Z$0;
            FirebaseRemoteConfig remoteConfig = RemoteConfigKt.getRemoteConfig(Firebase.INSTANCE);
            if (z && SubscriptionsFeatureFlag.INSTANCE.isSubscriptionsEnabled(remoteConfig)) {
                BookKeepActivity.this.hideAllAds();
            }
            return Unit.INSTANCE;
        }
    }

    private final void observeProStatusChanges() {
        FlowKt.launchIn(FlowKt.onEach(getDataStoreManager().read(DataStoreManager.INSTANCE.getPRO_STATUS(), false), new C36941(null)), LifecycleOwnerKt.getLifecycleScope(this));
    }

    private final void observeSubscriptionStateChanges() {
        getSubscriptionViewModel().getSubscriptionState().observe(this, new BookKeepActivity$sam$androidx_lifecycle_Observer$0(new Function1() { // from class: com.rebuilt.app.keep.screen.BookKeepActivity$$ExternalSyntheticLambda9
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return BookKeepActivity.observeSubscriptionStateChanges$lambda$5(this.f$0, (SubscriptionViewModel.SubscriptionState) obj);
            }
        }));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit observeSubscriptionStateChanges$lambda$5(BookKeepActivity this$0, SubscriptionViewModel.SubscriptionState subscriptionState) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        if (subscriptionState instanceof SubscriptionViewModel.SubscriptionState.UserSubscriptionLoaded) {
            BuildersKt__Builders_commonKt.launch$default(LifecycleOwnerKt.getLifecycleScope(this$0), null, null, new BookKeepActivity$observeSubscriptionStateChanges$1$1(this$0, null), 3, null);
        }
        return Unit.INSTANCE;
    }

    /* JADX INFO: renamed from: com.rebuilt.app.keep.screen.BookKeepActivity$recordFirstTimeHomeScreenEventIfNeeded$1 */
    /* JADX INFO: compiled from: BookKeepActivity.kt */
    /* JADX INFO: loaded from: classes5.dex */
    @Metadata(m2721d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, m2722d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, m2723k = 3, m2724mv = {2, 0, 0}, m2726xi = 48)
    @DebugMetadata(m2734c = "com.rebuilt.app.keep.screen.BookKeepActivity$recordFirstTimeHomeScreenEventIfNeeded$1", m2735f = "BookKeepActivity.kt", m2736i = {}, m2737l = {237, 239, 241}, m2738m = "invokeSuspend", m2739n = {}, m2740s = {})
    static final class C36991 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        int label;

        C36991(Continuation<? super C36991> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return BookKeepActivity.this.new C36991(continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((C36991) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        /* JADX WARN: Removed duplicated region for block: B:22:0x0096 A[RETURN] */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.lang.Object invokeSuspend(java.lang.Object r7) {
            /*
                r6 = this;
                java.lang.Object r0 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
                int r1 = r6.label
                r2 = 3
                r3 = 2
                r4 = 1
                if (r1 == 0) goto L26
                if (r1 == r4) goto L22
                if (r1 == r3) goto L1e
                if (r1 != r2) goto L16
                kotlin.ResultKt.throwOnFailure(r7)
                goto L97
            L16:
                java.lang.IllegalStateException r7 = new java.lang.IllegalStateException
                java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
                r7.<init>(r0)
                throw r7
            L1e:
                kotlin.ResultKt.throwOnFailure(r7)
                goto L70
            L22:
                kotlin.ResultKt.throwOnFailure(r7)
                goto L4a
            L26:
                kotlin.ResultKt.throwOnFailure(r7)
                com.rebuilt.app.keep.screen.BookKeepActivity r7 = com.rebuilt.app.keep.screen.BookKeepActivity.this
                com.rebuilt.app.base.datastore.DataStoreManager r7 = r7.getDataStoreManager()
                com.rebuilt.app.base.datastore.DataStoreManager$Companion r1 = com.rebuilt.app.base.datastore.DataStoreManager.INSTANCE
                androidx.datastore.preferences.core.Preferences$Key r1 = r1.getHAS_SEEN_HOME_SCREEN()
                r5 = 0
                java.lang.Boolean r5 = kotlin.coroutines.jvm.internal.Boxing.boxBoolean(r5)
                kotlinx.coroutines.flow.Flow r7 = r7.read(r1, r5)
                r1 = r6
                kotlin.coroutines.Continuation r1 = (kotlin.coroutines.Continuation) r1
                r6.label = r4
                java.lang.Object r7 = kotlinx.coroutines.flow.FlowKt.first(r7, r1)
                if (r7 != r0) goto L4a
                return r0
            L4a:
                java.lang.Boolean r7 = (java.lang.Boolean) r7
                boolean r7 = r7.booleanValue()
                if (r7 != 0) goto L97
                com.rebuilt.app.keep.screen.BookKeepActivity r7 = com.rebuilt.app.keep.screen.BookKeepActivity.this
                com.rebuilt.app.base.datastore.DataStoreManager r7 = r7.getDataStoreManager()
                com.rebuilt.app.base.datastore.DataStoreManager$Companion r1 = com.rebuilt.app.base.datastore.DataStoreManager.INSTANCE
                androidx.datastore.preferences.core.Preferences$Key r1 = r1.getINSTALL_SOURCE()
                java.lang.String r5 = "organic"
                kotlinx.coroutines.flow.Flow r7 = r7.read(r1, r5)
                r1 = r6
                kotlin.coroutines.Continuation r1 = (kotlin.coroutines.Continuation) r1
                r6.label = r3
                java.lang.Object r7 = kotlinx.coroutines.flow.FlowKt.first(r7, r1)
                if (r7 != r0) goto L70
                return r0
            L70:
                java.lang.String r7 = (java.lang.String) r7
                com.rebuilt.app.base.analytics.FacebookPaymentEvents r1 = com.rebuilt.app.base.analytics.FacebookPaymentEvents.INSTANCE
                com.rebuilt.app.keep.screen.BookKeepActivity r3 = com.rebuilt.app.keep.screen.BookKeepActivity.this
                android.content.Context r3 = (android.content.Context) r3
                r1.logFirstTimeHomeScreen(r3, r7)
                com.rebuilt.app.keep.screen.BookKeepActivity r7 = com.rebuilt.app.keep.screen.BookKeepActivity.this
                com.rebuilt.app.base.datastore.DataStoreManager r7 = r7.getDataStoreManager()
                com.rebuilt.app.base.datastore.DataStoreManager$Companion r1 = com.rebuilt.app.base.datastore.DataStoreManager.INSTANCE
                androidx.datastore.preferences.core.Preferences$Key r1 = r1.getHAS_SEEN_HOME_SCREEN()
                java.lang.Boolean r3 = kotlin.coroutines.jvm.internal.Boxing.boxBoolean(r4)
                r4 = r6
                kotlin.coroutines.Continuation r4 = (kotlin.coroutines.Continuation) r4
                r6.label = r2
                java.lang.Object r7 = r7.write(r1, r3, r4)
                if (r7 != r0) goto L97
                return r0
            L97:
                kotlin.Unit r7 = kotlin.Unit.INSTANCE
                return r7
            */
            throw new UnsupportedOperationException("Method not decompiled: com.rebuilt.app.keep.screen.BookKeepActivity.C36991.invokeSuspend(java.lang.Object):java.lang.Object");
        }
    }

    private final void recordFirstTimeHomeScreenEventIfNeeded() {
        BuildersKt__Builders_commonKt.launch$default(LifecycleOwnerKt.getLifecycleScope(this), null, null, new C36991(null), 3, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:30:0x012b A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:31:0x012c  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x0157 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:35:0x0158  */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0014  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object ensureNetworkHeadersSync(kotlin.coroutines.Continuation<? super kotlin.Unit> r14) {
        /*
            Method dump skipped, instruction units count: 369
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.rebuilt.app.keep.screen.BookKeepActivity.ensureNetworkHeadersSync(kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX INFO: renamed from: com.rebuilt.app.keep.screen.BookKeepActivity$ensureNetworkHeaders$1 */
    /* JADX INFO: compiled from: BookKeepActivity.kt */
    /* JADX INFO: loaded from: classes5.dex */
    @Metadata(m2721d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, m2722d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, m2723k = 3, m2724mv = {2, 0, 0}, m2726xi = 48)
    @DebugMetadata(m2734c = "com.rebuilt.app.keep.screen.BookKeepActivity$ensureNetworkHeaders$1", m2735f = "BookKeepActivity.kt", m2736i = {}, m2737l = {262}, m2738m = "invokeSuspend", m2739n = {}, m2740s = {})
    static final class C36901 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        int label;

        C36901(Continuation<? super C36901> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return BookKeepActivity.this.new C36901(continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((C36901) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                this.label = 1;
                if (BookKeepActivity.this.ensureNetworkHeadersSync(this) == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(obj);
            }
            return Unit.INSTANCE;
        }
    }

    private final void ensureNetworkHeaders() {
        BuildersKt__Builders_commonKt.launch$default(LifecycleOwnerKt.getLifecycleScope(this), null, null, new C36901(null), 3, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void hideAllAds() {
        ActivityBookKeepBinding activityBookKeepBinding = this.binding;
        if (activityBookKeepBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            activityBookKeepBinding = null;
        }
        AdView adView = activityBookKeepBinding.adView;
        Intrinsics.checkNotNullExpressionValue(adView, "adView");
        ExtentionsKt.hide$default(adView, 0L, null, 3, null);
        View view = activityBookKeepBinding.adsShadow;
        if (view != null) {
            ExtentionsKt.hide$default(view, 0L, null, 3, null);
        }
        CustomAdView customAdView = activityBookKeepBinding.customAdView;
        if (customAdView != null) {
            customAdView.hide();
        }
    }

    private final void enableEdgeToEdge() {
        WindowCompat.setDecorFitsSystemWindows(getWindow(), false);
        ActivityBookKeepBinding activityBookKeepBinding = this.binding;
        ActivityBookKeepBinding activityBookKeepBinding2 = null;
        if (activityBookKeepBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            activityBookKeepBinding = null;
        }
        final ConstraintLayout root = activityBookKeepBinding.getRoot();
        Intrinsics.checkNotNullExpressionValue(root, "getRoot(...)");
        ActivityBookKeepBinding activityBookKeepBinding3 = this.binding;
        if (activityBookKeepBinding3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            activityBookKeepBinding3 = null;
        }
        final BottomNavigationView bottomNav = activityBookKeepBinding3.bottomNav;
        Intrinsics.checkNotNullExpressionValue(bottomNav, "bottomNav");
        ActivityBookKeepBinding activityBookKeepBinding4 = this.binding;
        if (activityBookKeepBinding4 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            activityBookKeepBinding4 = null;
        }
        final FrameLayout adContainer = activityBookKeepBinding4.adContainer;
        Intrinsics.checkNotNullExpressionValue(adContainer, "adContainer");
        ActivityBookKeepBinding activityBookKeepBinding5 = this.binding;
        if (activityBookKeepBinding5 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            activityBookKeepBinding5 = null;
        }
        final AdView adView = activityBookKeepBinding5.adView;
        Intrinsics.checkNotNullExpressionValue(adView, "adView");
        ActivityBookKeepBinding activityBookKeepBinding6 = this.binding;
        if (activityBookKeepBinding6 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        } else {
            activityBookKeepBinding2 = activityBookKeepBinding6;
        }
        final CustomAdView customAdView = activityBookKeepBinding2.customAdView;
        Intrinsics.checkNotNullExpressionValue(customAdView, "customAdView");
        ConstraintLayout constraintLayout = root;
        ViewCompat.setOnApplyWindowInsetsListener(constraintLayout, new OnApplyWindowInsetsListener() { // from class: com.rebuilt.app.keep.screen.BookKeepActivity$$ExternalSyntheticLambda5
            @Override // androidx.core.view.OnApplyWindowInsetsListener
            public final WindowInsetsCompat onApplyWindowInsets(View view, WindowInsetsCompat windowInsetsCompat) {
                return BookKeepActivity.enableEdgeToEdge$lambda$7(view, windowInsetsCompat);
            }
        });
        final Function1 function1 = new Function1() { // from class: com.rebuilt.app.keep.screen.BookKeepActivity$$ExternalSyntheticLambda6
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return BookKeepActivity.enableEdgeToEdge$lambda$10(adView, customAdView, this, bottomNav, adContainer, (WindowInsetsCompat) obj);
            }
        };
        ViewCompat.setOnApplyWindowInsetsListener(bottomNav, new OnApplyWindowInsetsListener() { // from class: com.rebuilt.app.keep.screen.BookKeepActivity$$ExternalSyntheticLambda7
            @Override // androidx.core.view.OnApplyWindowInsetsListener
            public final WindowInsetsCompat onApplyWindowInsets(View view, WindowInsetsCompat windowInsetsCompat) {
                return BookKeepActivity.enableEdgeToEdge$lambda$11(function1, view, windowInsetsCompat);
            }
        });
        new Function0() { // from class: com.rebuilt.app.keep.screen.BookKeepActivity$$ExternalSyntheticLambda8
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return BookKeepActivity.enableEdgeToEdge$lambda$12(root, function1);
            }
        };
        new WindowInsetsControllerCompat(getWindow(), constraintLayout).setAppearanceLightStatusBars(true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final WindowInsetsCompat enableEdgeToEdge$lambda$7(View v, WindowInsetsCompat insets) {
        Intrinsics.checkNotNullParameter(v, "v");
        Intrinsics.checkNotNullParameter(insets, "insets");
        Insets insets2 = insets.getInsets(WindowInsetsCompat.Type.statusBars());
        Intrinsics.checkNotNullExpressionValue(insets2, "getInsets(...)");
        v.setPadding(v.getPaddingLeft(), insets2.top, v.getPaddingRight(), v.getPaddingBottom());
        return insets;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit enableEdgeToEdge$lambda$10(AdView ad, CustomAdView customAd, BookKeepActivity this$0, BottomNavigationView nav, FrameLayout adContainer, WindowInsetsCompat insets) {
        Intrinsics.checkNotNullParameter(ad, "$ad");
        Intrinsics.checkNotNullParameter(customAd, "$customAd");
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(nav, "$nav");
        Intrinsics.checkNotNullParameter(adContainer, "$adContainer");
        Intrinsics.checkNotNullParameter(insets, "insets");
        Insets insets2 = insets.getInsets(WindowInsetsCompat.Type.navigationBars());
        Intrinsics.checkNotNullExpressionValue(insets2, "getInsets(...)");
        int i = insets2.bottom;
        if (ad.getVisibility() == 0 || customAd.getVisibility() == 0) {
            ActivityBookKeepBinding activityBookKeepBinding = this$0.binding;
            if (activityBookKeepBinding == null) {
                Intrinsics.throwUninitializedPropertyAccessException("binding");
                activityBookKeepBinding = null;
            }
            FrameLayout frameLayout = activityBookKeepBinding.adContainer;
            if (frameLayout != null) {
                FrameLayout frameLayout2 = frameLayout;
                ViewGroup.LayoutParams layoutParams = frameLayout2.getLayoutParams();
                if (layoutParams != null) {
                    ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) layoutParams;
                    marginLayoutParams.bottomMargin = i;
                    frameLayout2.setLayoutParams(marginLayoutParams);
                } else {
                    throw new NullPointerException("null cannot be cast to non-null type android.view.ViewGroup.MarginLayoutParams");
                }
            }
            BottomNavigationView bottomNavigationView = nav;
            bottomNavigationView.setPadding(bottomNavigationView.getPaddingLeft(), bottomNavigationView.getPaddingTop(), bottomNavigationView.getPaddingRight(), 0);
        } else {
            FrameLayout frameLayout3 = adContainer;
            ViewGroup.LayoutParams layoutParams2 = frameLayout3.getLayoutParams();
            if (layoutParams2 != null) {
                ViewGroup.MarginLayoutParams marginLayoutParams2 = (ViewGroup.MarginLayoutParams) layoutParams2;
                marginLayoutParams2.bottomMargin = 0;
                frameLayout3.setLayoutParams(marginLayoutParams2);
                BottomNavigationView bottomNavigationView2 = nav;
                bottomNavigationView2.setPadding(bottomNavigationView2.getPaddingLeft(), bottomNavigationView2.getPaddingTop(), bottomNavigationView2.getPaddingRight(), i);
            } else {
                throw new NullPointerException("null cannot be cast to non-null type android.view.ViewGroup.MarginLayoutParams");
            }
        }
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final WindowInsetsCompat enableEdgeToEdge$lambda$11(Function1 applyBottomInset, View view, WindowInsetsCompat insets) {
        Intrinsics.checkNotNullParameter(applyBottomInset, "$applyBottomInset");
        Intrinsics.checkNotNullParameter(view, "<unused var>");
        Intrinsics.checkNotNullParameter(insets, "insets");
        applyBottomInset.invoke(insets);
        return insets;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit enableEdgeToEdge$lambda$12(ConstraintLayout root, Function1 applyBottomInset) {
        Intrinsics.checkNotNullParameter(root, "$root");
        Intrinsics.checkNotNullParameter(applyBottomInset, "$applyBottomInset");
        WindowInsetsCompat rootWindowInsets = ViewCompat.getRootWindowInsets(root);
        if (rootWindowInsets == null) {
            return Unit.INSTANCE;
        }
        applyBottomInset.invoke(rootWindowInsets);
        return Unit.INSTANCE;
    }

    private final void checkForNotificationPermission() {
        if (Build.VERSION.SDK_INT < 33 || ContextCompat.checkSelfPermission(this, "android.permission.POST_NOTIFICATIONS") != -1) {
            return;
        }
        this.requestNotificationPermissionLauncher.launch("android.permission.POST_NOTIFICATIONS");
    }

    private final void setupNavigator(Bundle savedInstanceState) {
        FragmentNavigator fragmentNavigator = getFragmentNavigator();
        FragmentManager supportFragmentManager = getSupportFragmentManager();
        Intrinsics.checkNotNullExpressionValue(supportFragmentManager, "getSupportFragmentManager(...)");
        fragmentNavigator.initialize(new MultipleStackNavigator(supportFragmentManager, C3656R.id.container, this.rootFragmentProvider, this, new NavigatorConfiguration(0, true, NavigatorTransaction.SHOW_HIDE), TransitionAnimationType.RIGHT_TO_LEFT, this), savedInstanceState);
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
        if (Intrinsics.areEqual((Object) getFragmentNavigator().canGoBack(), (Object) true)) {
            getFragmentNavigator().goBack();
        } else {
            showExitConfirmationDialog();
        }
    }

    private final void showExitConfirmationDialog() {
        new AlertDialog.Builder(this).setTitle(getString(C3656R.string.exit_app)).setMessage(getString(C3656R.string.are_you_sure_you_want_to_exit)).setPositiveButton(getString(C3656R.string.f3444ok), new DialogInterface.OnClickListener() { // from class: com.rebuilt.app.keep.screen.BookKeepActivity$$ExternalSyntheticLambda12
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i) {
                BookKeepActivity.showExitConfirmationDialog$lambda$13(this.f$0, dialogInterface, i);
            }
        }).setNegativeButton(getString(C3656R.string.cancel), new DialogInterface.OnClickListener() { // from class: com.rebuilt.app.keep.screen.BookKeepActivity$$ExternalSyntheticLambda13
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i) {
                dialogInterface.dismiss();
            }
        }).show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void showExitConfirmationDialog$lambda$13(BookKeepActivity this$0, DialogInterface dialogInterface, int i) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.finishAffinity();
    }

    @Override // com.boilerplate.navigator.Navigator.NavigatorListener
    public void onTabChanged(int tabIndex) {
        ActivityBookKeepBinding activityBookKeepBinding = null;
        if (tabIndex == 0) {
            ActivityBookKeepBinding activityBookKeepBinding2 = this.binding;
            if (activityBookKeepBinding2 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("binding");
            } else {
                activityBookKeepBinding = activityBookKeepBinding2;
            }
            BottomNavigationView bottomNavigationView = activityBookKeepBinding.bottomNav;
            if (bottomNavigationView != null) {
                bottomNavigationView.setSelectedItemId(C3656R.id.navigation_staff);
                return;
            }
            return;
        }
        if (tabIndex == 1) {
            ActivityBookKeepBinding activityBookKeepBinding3 = this.binding;
            if (activityBookKeepBinding3 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("binding");
            } else {
                activityBookKeepBinding = activityBookKeepBinding3;
            }
            BottomNavigationView bottomNavigationView2 = activityBookKeepBinding.bottomNav;
            if (bottomNavigationView2 != null) {
                bottomNavigationView2.setSelectedItemId(C3656R.id.navigation_cashbook);
                return;
            }
            return;
        }
        if (tabIndex != 2) {
            return;
        }
        ActivityBookKeepBinding activityBookKeepBinding4 = this.binding;
        if (activityBookKeepBinding4 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        } else {
            activityBookKeepBinding = activityBookKeepBinding4;
        }
        BottomNavigationView bottomNavigationView3 = activityBookKeepBinding.bottomNav;
        if (bottomNavigationView3 != null) {
            bottomNavigationView3.setSelectedItemId(C3656R.id.navigation_settings);
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

    private final void setOnItemSelectedListener() {
        NavigationBarView.OnItemSelectedListener onItemSelectedListener = new NavigationBarView.OnItemSelectedListener() { // from class: com.rebuilt.app.keep.screen.BookKeepActivity$$ExternalSyntheticLambda15
            @Override // com.google.android.material.navigation.NavigationBarView.OnItemSelectedListener
            public final boolean onNavigationItemSelected(MenuItem menuItem) {
                return BookKeepActivity.setOnItemSelectedListener$lambda$15(this.f$0, menuItem);
            }
        };
        ActivityBookKeepBinding activityBookKeepBinding = this.binding;
        if (activityBookKeepBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            activityBookKeepBinding = null;
        }
        BottomNavigationView bottomNavigationView = activityBookKeepBinding.bottomNav;
        if (bottomNavigationView != null) {
            bottomNavigationView.setOnItemSelectedListener(onItemSelectedListener);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean setOnItemSelectedListener$lambda$15(BookKeepActivity this$0, MenuItem item) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(item, "item");
        int itemId = item.getItemId();
        if (itemId == C3656R.id.navigation_staff) {
            FragmentNavigator fragmentNavigator = this$0.getFragmentNavigator();
            if (fragmentNavigator != null) {
                fragmentNavigator.switchTab(0);
            }
            return true;
        }
        if (itemId == C3656R.id.navigation_cashbook) {
            FragmentNavigator fragmentNavigator2 = this$0.getFragmentNavigator();
            if (fragmentNavigator2 != null) {
                fragmentNavigator2.switchTab(1);
            }
            return true;
        }
        if (itemId != C3656R.id.navigation_settings) {
            return false;
        }
        FragmentNavigator fragmentNavigator3 = this$0.getFragmentNavigator();
        if (fragmentNavigator3 != null) {
            fragmentNavigator3.switchTab(2);
        }
        return true;
    }

    private final void setOnDestinationChangeListener() {
        MultipleStackNavigator multipleStackNavigator;
        FragmentNavigator fragmentNavigator = getFragmentNavigator();
        if (fragmentNavigator == null || (multipleStackNavigator = fragmentNavigator.getMultipleStackNavigator()) == null) {
            return;
        }
        multipleStackNavigator.observeDestinationChangesWithPopBack(this, new Function2() { // from class: com.rebuilt.app.keep.screen.BookKeepActivity$$ExternalSyntheticLambda14
            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(Object obj, Object obj2) {
                return BookKeepActivity.setOnDestinationChangeListener$lambda$16(this.f$0, (Fragment) obj, ((Boolean) obj2).booleanValue());
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit setOnDestinationChangeListener$lambda$16(BookKeepActivity this$0, Fragment it, boolean z) {
        Function4<Boolean, Boolean, String, Integer, Unit> refreshCalendar;
        Function1<Boolean, Unit> refreshStaffs;
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(it, "it");
        String str = this$0.lastDestinationClassName;
        this$0.lastDestinationClassName = it.getClass().getName();
        boolean z2 = it instanceof LaborMonthlyCalendarFragment;
        if (z2) {
            this$0.preloadCalendarExitInterstitialIfEligible();
        }
        ActivityBookKeepBinding activityBookKeepBinding = null;
        if (z && Intrinsics.areEqual(str, LaborMonthlyCalendarFragment.class.getName())) {
            BuildersKt__Builders_commonKt.launch$default(LifecycleOwnerKt.getLifecycleScope(this$0), null, null, new BookKeepActivity$setOnDestinationChangeListener$1$1(this$0, null), 3, null);
        }
        if (it instanceof StaffListFragment) {
            ActivityBookKeepBinding activityBookKeepBinding2 = this$0.binding;
            if (activityBookKeepBinding2 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("binding");
            } else {
                activityBookKeepBinding = activityBookKeepBinding2;
            }
            BottomNavigationView bottomNavigationView = activityBookKeepBinding.bottomNav;
            if (bottomNavigationView != null) {
                ExtentionsKt.show$default(bottomNavigationView, 0L, null, 3, null);
            }
            Function1<Boolean, Unit> clearSearchText = this$0.getObserverUtil().getClearSearchText();
            if (clearSearchText != null) {
                clearSearchText.invoke(true);
            }
            if (z && (refreshStaffs = this$0.getObserverUtil().getRefreshStaffs()) != null) {
                refreshStaffs.invoke(true);
            }
        } else if (it instanceof CashbookFragment) {
            ActivityBookKeepBinding activityBookKeepBinding3 = this$0.binding;
            if (activityBookKeepBinding3 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("binding");
            } else {
                activityBookKeepBinding = activityBookKeepBinding3;
            }
            BottomNavigationView bottomNavigationView2 = activityBookKeepBinding.bottomNav;
            if (bottomNavigationView2 != null) {
                ExtentionsKt.show$default(bottomNavigationView2, 0L, null, 3, null);
            }
            Function1<Boolean, Unit> clearExpenseSearchText = this$0.getExpenseObserverUtil().getClearExpenseSearchText();
            if (clearExpenseSearchText != null) {
                clearExpenseSearchText.invoke(true);
            }
            Function1<Boolean, Unit> clearIncomeSearchText = this$0.getIncomeObserverUtil().getClearIncomeSearchText();
            if (clearIncomeSearchText != null) {
                clearIncomeSearchText.invoke(true);
            }
        } else if (it instanceof SettingsFragment) {
            ActivityBookKeepBinding activityBookKeepBinding4 = this$0.binding;
            if (activityBookKeepBinding4 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("binding");
            } else {
                activityBookKeepBinding = activityBookKeepBinding4;
            }
            BottomNavigationView bottomNavigationView3 = activityBookKeepBinding.bottomNav;
            if (bottomNavigationView3 != null) {
                ExtentionsKt.show$default(bottomNavigationView3, 0L, null, 3, null);
            }
        } else if (z2) {
            ActivityBookKeepBinding activityBookKeepBinding5 = this$0.binding;
            if (activityBookKeepBinding5 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("binding");
            } else {
                activityBookKeepBinding = activityBookKeepBinding5;
            }
            BottomNavigationView bottomNavigationView4 = activityBookKeepBinding.bottomNav;
            if (bottomNavigationView4 != null) {
                ExtentionsKt.hide$default(bottomNavigationView4, 0L, null, 3, null);
            }
            if (z && (refreshCalendar = this$0.getObserverUtil().getRefreshCalendar()) != null) {
                refreshCalendar.invoke(true, false, "", 0);
            }
        } else {
            ActivityBookKeepBinding activityBookKeepBinding6 = this$0.binding;
            if (activityBookKeepBinding6 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("binding");
            } else {
                activityBookKeepBinding = activityBookKeepBinding6;
            }
            BottomNavigationView bottomNavigationView5 = activityBookKeepBinding.bottomNav;
            if (bottomNavigationView5 != null) {
                ExtentionsKt.hide$default(bottomNavigationView5, 0L, null, 3, null);
            }
        }
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void requestNotificationPermissionLauncher$lambda$17(BookKeepActivity this$0, boolean z) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        if (z) {
            this$0.recordClickEvent(ConstantEventNames.NOTIFICATION_PERMISSION_GRANTED, MapsKt.hashMapOf(new Pair("status", ConstantEventSources.YES)));
        } else {
            this$0.recordClickEvent(ConstantEventNames.NOTIFICATION_PERMISSION_GRANTED, MapsKt.hashMapOf(new Pair("status", ConstantEventSources.f3418NO)));
        }
    }

    private final void checkForUpdate() {
        AppUpdateManager appUpdateManager = null;
        BaseActivity.triggerSystemEvent$default(this, ConstantEventNames.CHECK_FOR_UPDATE, null, 2, null);
        AppUpdateManager appUpdateManager2 = this.appUpdateManager;
        if (appUpdateManager2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("appUpdateManager");
        } else {
            appUpdateManager = appUpdateManager2;
        }
        Task<AppUpdateInfo> appUpdateInfo = appUpdateManager.getAppUpdateInfo();
        Intrinsics.checkNotNullExpressionValue(appUpdateInfo, "getAppUpdateInfo(...)");
        final Function1 function1 = new Function1() { // from class: com.rebuilt.app.keep.screen.BookKeepActivity$$ExternalSyntheticLambda3
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return BookKeepActivity.checkForUpdate$lambda$18(this.f$0, (AppUpdateInfo) obj);
            }
        };
        appUpdateInfo.addOnSuccessListener(new OnSuccessListener() { // from class: com.rebuilt.app.keep.screen.BookKeepActivity$$ExternalSyntheticLambda4
            @Override // com.google.android.gms.tasks.OnSuccessListener
            public final void onSuccess(Object obj) {
                BookKeepActivity.checkForUpdate$lambda$19(function1, obj);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void checkForUpdate$lambda$19(Function1 tmp0, Object obj) {
        Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
        tmp0.invoke(obj);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit checkForUpdate$lambda$18(BookKeepActivity this$0, AppUpdateInfo appUpdateInfo) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        if (appUpdateInfo.updateAvailability() == 2) {
            if (appUpdateInfo.isUpdateTypeAllowed(1)) {
                this$0.triggerSystemEvent(ConstantEventNames.UPDATE_AVAILABLE, MapsKt.hashMapOf(new Pair(ConstantEventAttributes.UPDATE_TYPE, "IMMEDIATE")));
                Intrinsics.checkNotNull(appUpdateInfo);
                this$0.startUpdate(appUpdateInfo, 1);
            } else if (appUpdateInfo.isUpdateTypeAllowed(0)) {
                this$0.triggerSystemEvent(ConstantEventNames.UPDATE_AVAILABLE, MapsKt.hashMapOf(new Pair(ConstantEventAttributes.UPDATE_TYPE, "FLEXIBLE")));
                Intrinsics.checkNotNull(appUpdateInfo);
                this$0.startUpdate(appUpdateInfo, 0);
            }
        }
        return Unit.INSTANCE;
    }

    private final void startUpdate(AppUpdateInfo appUpdateInfo, int updateType) {
        try {
            AppUpdateOptions appUpdateOptionsBuild = AppUpdateOptions.newBuilder(updateType).build();
            Intrinsics.checkNotNullExpressionValue(appUpdateOptionsBuild, "build(...)");
            AppUpdateManager appUpdateManager = this.appUpdateManager;
            if (appUpdateManager == null) {
                Intrinsics.throwUninitializedPropertyAccessException("appUpdateManager");
                appUpdateManager = null;
            }
            appUpdateManager.startUpdateFlow(appUpdateInfo, this, appUpdateOptionsBuild);
            if (updateType == 1) {
                triggerSystemEvent(ConstantEventNames.START_UPDATE, MapsKt.hashMapOf(new Pair(ConstantEventAttributes.UPDATE_TYPE, "IMMEDIATE")));
            } else {
                triggerSystemEvent(ConstantEventNames.START_UPDATE, MapsKt.hashMapOf(new Pair(ConstantEventAttributes.UPDATE_TYPE, "FLEXIBLE")));
            }
        } catch (Exception e) {
            Toast.makeText(this, "Error starting update flow: " + e.getMessage(), 0).show();
        }
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onResume() {
        super.onResume();
        ensureNetworkHeaders();
        BookKeepActivity bookKeepActivity = this;
        BuildersKt__Builders_commonKt.launch$default(LifecycleOwnerKt.getLifecycleScope(bookKeepActivity), null, null, new C36961(null), 3, null);
        AppUpdateManager appUpdateManager = this.appUpdateManager;
        if (appUpdateManager == null) {
            Intrinsics.throwUninitializedPropertyAccessException("appUpdateManager");
            appUpdateManager = null;
        }
        Task<AppUpdateInfo> appUpdateInfo = appUpdateManager.getAppUpdateInfo();
        final Function1 function1 = new Function1() { // from class: com.rebuilt.app.keep.screen.BookKeepActivity$$ExternalSyntheticLambda0
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return BookKeepActivity.onResume$lambda$20(this.f$0, (AppUpdateInfo) obj);
            }
        };
        appUpdateInfo.addOnSuccessListener(new OnSuccessListener() { // from class: com.rebuilt.app.keep.screen.BookKeepActivity$$ExternalSyntheticLambda11
            @Override // com.google.android.gms.tasks.OnSuccessListener
            public final void onSuccess(Object obj) {
                BookKeepActivity.onResume$lambda$21(function1, obj);
            }
        });
        if (this.referFriendBottomSheetCheckedThisSession) {
            return;
        }
        BuildersKt__Builders_commonKt.launch$default(LifecycleOwnerKt.getLifecycleScope(bookKeepActivity), null, null, new C36973(null), 3, null);
    }

    /* JADX INFO: renamed from: com.rebuilt.app.keep.screen.BookKeepActivity$onResume$1 */
    /* JADX INFO: compiled from: BookKeepActivity.kt */
    /* JADX INFO: loaded from: classes5.dex */
    @Metadata(m2721d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, m2722d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, m2723k = 3, m2724mv = {2, 0, 0}, m2726xi = 48)
    @DebugMetadata(m2734c = "com.rebuilt.app.keep.screen.BookKeepActivity$onResume$1", m2735f = "BookKeepActivity.kt", m2736i = {}, m2737l = {539, MetaDo.META_OFFSETCLIPRGN}, m2738m = "invokeSuspend", m2739n = {}, m2740s = {})
    static final class C36961 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        int label;

        C36961(Continuation<? super C36961> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return BookKeepActivity.this.new C36961(continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((C36961) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                this.label = 1;
                if (BookKeepActivity.this.checkAppLockIfNeeded(this) == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else {
                if (i != 1) {
                    if (i != 2) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    ResultKt.throwOnFailure(obj);
                    BookKeepActivity.this.requestGoogleAds();
                    return Unit.INSTANCE;
                }
                ResultKt.throwOnFailure(obj);
            }
            if (!BookKeepActivity.this.subscriptionStatusCheckedThisSession) {
                this.label = 2;
                if (BookKeepActivity.this.refreshSubscriptionStatus(this) == coroutine_suspended) {
                    return coroutine_suspended;
                }
            }
            BookKeepActivity.this.requestGoogleAds();
            return Unit.INSTANCE;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onResume$lambda$21(Function1 tmp0, Object obj) {
        Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
        tmp0.invoke(obj);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit onResume$lambda$20(BookKeepActivity this$0, AppUpdateInfo appUpdateInfo) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        if (appUpdateInfo.updateAvailability() == 3) {
            Intrinsics.checkNotNull(appUpdateInfo);
            this$0.startUpdate(appUpdateInfo, 1);
        }
        return Unit.INSTANCE;
    }

    /* JADX INFO: renamed from: com.rebuilt.app.keep.screen.BookKeepActivity$onResume$3 */
    /* JADX INFO: compiled from: BookKeepActivity.kt */
    /* JADX INFO: loaded from: classes5.dex */
    @Metadata(m2721d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, m2722d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, m2723k = 3, m2724mv = {2, 0, 0}, m2726xi = 48)
    @DebugMetadata(m2734c = "com.rebuilt.app.keep.screen.BookKeepActivity$onResume$3", m2735f = "BookKeepActivity.kt", m2736i = {}, m2737l = {562}, m2738m = "invokeSuspend", m2739n = {}, m2740s = {})
    static final class C36973 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        int label;

        C36973(Continuation<? super C36973> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return BookKeepActivity.this.new C36973(continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((C36973) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                this.label = 1;
                if (BookKeepActivity.this.checkAndShowReferFriendBottomSheet(this) == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(obj);
            }
            return Unit.INSTANCE;
        }
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onStart() {
        super.onStart();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:30:0x0096  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x009b  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x00bf  */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0014  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object checkAppLockIfNeeded(kotlin.coroutines.Continuation<? super java.lang.Boolean> r11) {
        /*
            Method dump skipped, instruction units count: 205
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.rebuilt.app.keep.screen.BookKeepActivity.checkAppLockIfNeeded(kotlin.coroutines.Continuation):java.lang.Object");
    }

    private final int todayEpochDayUtc() {
        return (int) TimeUnit.MILLISECONDS.toDays(System.currentTimeMillis());
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:40:0x00eb A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:41:0x00ec  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x00f7  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x00fb  */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0014  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object canShowDailyCalendarExitInterstitial(kotlin.coroutines.Continuation<? super java.lang.Boolean> r13) {
        /*
            Method dump skipped, instruction units count: 257
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.rebuilt.app.keep.screen.BookKeepActivity.canShowDailyCalendarExitInterstitial(kotlin.coroutines.Continuation):java.lang.Object");
    }

    private final void preloadCalendarExitInterstitialIfEligible() {
        if (this.calendarExitInterstitial != null || this.calendarExitInterstitialLoading) {
            return;
        }
        BuildersKt__Builders_commonKt.launch$default(LifecycleOwnerKt.getLifecycleScope(this), null, null, new C36981(null), 3, null);
    }

    /* JADX INFO: renamed from: com.rebuilt.app.keep.screen.BookKeepActivity$preloadCalendarExitInterstitialIfEligible$1 */
    /* JADX INFO: compiled from: BookKeepActivity.kt */
    /* JADX INFO: loaded from: classes5.dex */
    @Metadata(m2721d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, m2722d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, m2723k = 3, m2724mv = {2, 0, 0}, m2726xi = 48)
    @DebugMetadata(m2734c = "com.rebuilt.app.keep.screen.BookKeepActivity$preloadCalendarExitInterstitialIfEligible$1", m2735f = "BookKeepActivity.kt", m2736i = {}, m2737l = {613}, m2738m = "invokeSuspend", m2739n = {}, m2740s = {})
    static final class C36981 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        int label;

        C36981(Continuation<? super C36981> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return BookKeepActivity.this.new C36981(continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((C36981) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                this.label = 1;
                obj = BookKeepActivity.this.canShowDailyCalendarExitInterstitial(this);
                if (obj == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(obj);
            }
            if (!((Boolean) obj).booleanValue()) {
                return Unit.INSTANCE;
            }
            BookKeepActivity.this.calendarExitInterstitialLoading = true;
            AdRequest adRequestBuild = new AdRequest.Builder().build();
            Intrinsics.checkNotNullExpressionValue(adRequestBuild, "build(...)");
            BookKeepActivity bookKeepActivity = BookKeepActivity.this;
            final BookKeepActivity bookKeepActivity2 = BookKeepActivity.this;
            InterstitialAd.load(bookKeepActivity, AdUnitConstants.InterstitialAds.APP_OPEN, adRequestBuild, new InterstitialAdLoadCallback() { // from class: com.rebuilt.app.keep.screen.BookKeepActivity.preloadCalendarExitInterstitialIfEligible.1.1
                @Override // com.google.android.gms.ads.AdLoadCallback
                public void onAdFailedToLoad(LoadAdError error) {
                    Intrinsics.checkNotNullParameter(error, "error");
                    bookKeepActivity2.calendarExitInterstitialLoading = false;
                    bookKeepActivity2.calendarExitInterstitial = null;
                }

                @Override // com.google.android.gms.ads.AdLoadCallback
                public void onAdLoaded(InterstitialAd ad) {
                    Intrinsics.checkNotNullParameter(ad, "ad");
                    bookKeepActivity2.calendarExitInterstitialLoading = false;
                    bookKeepActivity2.calendarExitInterstitial = ad;
                }
            });
            return Unit.INSTANCE;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void showCalendarExitInterstitialIfReady() {
        InterstitialAd interstitialAd = this.calendarExitInterstitial;
        if (interstitialAd == null) {
            return;
        }
        if (isFinishing() || isDestroyed()) {
            this.calendarExitInterstitial = null;
            return;
        }
        this.calendarExitInterstitial = null;
        final int i = todayEpochDayUtc();
        interstitialAd.setFullScreenContentCallback(new FullScreenContentCallback() { // from class: com.rebuilt.app.keep.screen.BookKeepActivity.showCalendarExitInterstitialIfReady.1
            @Override // com.google.android.gms.ads.FullScreenContentCallback
            public void onAdDismissedFullScreenContent() {
            }

            @Override // com.google.android.gms.ads.FullScreenContentCallback
            public void onAdFailedToShowFullScreenContent(AdError adError) {
                Intrinsics.checkNotNullParameter(adError, "adError");
            }

            @Override // com.google.android.gms.ads.FullScreenContentCallback
            public void onAdShowedFullScreenContent() {
                BookKeepActivity.this.calendarExitInterstitialShownThisSession = true;
                BuildersKt__Builders_commonKt.launch$default(LifecycleOwnerKt.getLifecycleScope(BookKeepActivity.this), null, null, new C3703x5cded330(BookKeepActivity.this, i, null), 3, null);
            }
        });
        interstitialAd.show(this);
    }

    public final void onPaywallShown() {
        preloadCalendarExitInterstitialIfEligible();
    }

    /* JADX INFO: renamed from: com.rebuilt.app.keep.screen.BookKeepActivity$onPaywallDismissed$1 */
    /* JADX INFO: compiled from: BookKeepActivity.kt */
    /* JADX INFO: loaded from: classes5.dex */
    @Metadata(m2721d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, m2722d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, m2723k = 3, m2724mv = {2, 0, 0}, m2726xi = 48)
    @DebugMetadata(m2734c = "com.rebuilt.app.keep.screen.BookKeepActivity$onPaywallDismissed$1", m2735f = "BookKeepActivity.kt", m2736i = {}, m2737l = {680}, m2738m = "invokeSuspend", m2739n = {}, m2740s = {})
    static final class C36951 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        int label;

        C36951(Continuation<? super C36951> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return BookKeepActivity.this.new C36951(continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((C36951) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                this.label = 1;
                obj = BookKeepActivity.this.canShowDailyCalendarExitInterstitial(this);
                if (obj == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(obj);
            }
            if (((Boolean) obj).booleanValue()) {
                BookKeepActivity.this.showCalendarExitInterstitialIfReady();
            }
            return Unit.INSTANCE;
        }
    }

    public final void onPaywallDismissed() {
        BuildersKt__Builders_commonKt.launch$default(LifecycleOwnerKt.getLifecycleScope(this), null, null, new C36951(null), 3, null);
    }

    /* JADX INFO: renamed from: com.rebuilt.app.keep.screen.BookKeepActivity$requestGoogleAds$1 */
    /* JADX INFO: compiled from: BookKeepActivity.kt */
    @Metadata(m2721d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, m2722d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, m2723k = 3, m2724mv = {2, 0, 0}, m2726xi = 48)
    @DebugMetadata(m2734c = "com.rebuilt.app.keep.screen.BookKeepActivity$requestGoogleAds$1", m2735f = "BookKeepActivity.kt", m2736i = {1}, m2737l = {690, 691}, m2738m = "invokeSuspend", m2739n = {"isPro"}, m2740s = {"Z$0"})
    static final class C37011 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        boolean Z$0;
        int label;

        C37011(Continuation<? super C37011> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return BookKeepActivity.this.new C37011(continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((C37011) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        /* JADX WARN: Removed duplicated region for block: B:33:0x00c1  */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.lang.Object invokeSuspend(java.lang.Object r6) {
            /*
                Method dump skipped, instruction units count: 201
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.rebuilt.app.keep.screen.BookKeepActivity.C37011.invokeSuspend(java.lang.Object):java.lang.Object");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void requestGoogleAds() {
        BuildersKt__Builders_commonKt.launch$default(LifecycleOwnerKt.getLifecycleScope(this), null, null, new C37011(null), 3, null);
    }

    /* JADX INFO: renamed from: com.rebuilt.app.keep.screen.BookKeepActivity$loadCustomAd$1 */
    /* JADX INFO: compiled from: BookKeepActivity.kt */
    /* JADX INFO: loaded from: classes5.dex */
    @Metadata(m2721d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, m2722d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, m2723k = 3, m2724mv = {2, 0, 0}, m2726xi = 48)
    @DebugMetadata(m2734c = "com.rebuilt.app.keep.screen.BookKeepActivity$loadCustomAd$1", m2735f = "BookKeepActivity.kt", m2736i = {}, m2737l = {778}, m2738m = "invokeSuspend", m2739n = {}, m2740s = {})
    static final class C36921 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        int label;

        C36921(Continuation<? super C36921> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return BookKeepActivity.this.new C36921(continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((C36921) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            ActivityBookKeepBinding activityBookKeepBinding = null;
            Object[] objArr = 0;
            Object[] objArr2 = 0;
            try {
                if (i == 0) {
                    ResultKt.throwOnFailure(obj);
                    this.label = 1;
                    obj = DataStoreManagerExtensionsKt.shouldShowHomePageAds(BookKeepActivity.this.getDataStoreManager(), this);
                    if (obj == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                } else {
                    if (i != 1) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    ResultKt.throwOnFailure(obj);
                }
            } catch (Exception unused) {
                ActivityBookKeepBinding activityBookKeepBinding2 = BookKeepActivity.this.binding;
                if (activityBookKeepBinding2 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("binding");
                    activityBookKeepBinding2 = null;
                }
                CustomAdView customAdView = activityBookKeepBinding2.customAdView;
                if (customAdView != null) {
                    customAdView.hide();
                }
                ActivityBookKeepBinding activityBookKeepBinding3 = BookKeepActivity.this.binding;
                if (activityBookKeepBinding3 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("binding");
                } else {
                    activityBookKeepBinding = activityBookKeepBinding3;
                }
                View view = activityBookKeepBinding.adsShadow;
                if (view != null) {
                    ExtentionsKt.hide$default(view, 0L, null, 3, null);
                }
            }
            if (!((Boolean) obj).booleanValue()) {
                ActivityBookKeepBinding activityBookKeepBinding4 = BookKeepActivity.this.binding;
                if (activityBookKeepBinding4 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("binding");
                    activityBookKeepBinding4 = null;
                }
                CustomAdView customAdView2 = activityBookKeepBinding4.customAdView;
                if (customAdView2 != null) {
                    customAdView2.hide();
                }
                ActivityBookKeepBinding activityBookKeepBinding5 = BookKeepActivity.this.binding;
                if (activityBookKeepBinding5 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("binding");
                    activityBookKeepBinding5 = null;
                }
                View view2 = activityBookKeepBinding5.adsShadow;
                if (view2 != null) {
                    ExtentionsKt.hide$default(view2, 0L, null, 3, null);
                }
                return Unit.INSTANCE;
            }
            final BookKeepActivity bookKeepActivity = BookKeepActivity.this;
            LazyThreadSafetyMode lazyThreadSafetyMode = LazyThreadSafetyMode.SYNCHRONIZED;
            final Object[] objArr3 = objArr2 == true ? 1 : 0;
            final Object[] objArr4 = objArr == true ? 1 : 0;
            CustomAdData customAdDataSync = invokeSuspend$lambda$0(LazyKt.lazy(lazyThreadSafetyMode, (Function0) new Function0<CustomAdManager>() { // from class: com.rebuilt.app.keep.screen.BookKeepActivity$loadCustomAd$1$invokeSuspend$$inlined$inject$default$1
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(0);
                }

                /* JADX WARN: Type inference failed for: r0v2, types: [com.rebuilt.app.base.ads.CustomAdManager, java.lang.Object] */
                @Override // kotlin.jvm.functions.Function0
                public final CustomAdManager invoke() {
                    ComponentCallbacks componentCallbacks = bookKeepActivity;
                    return ComponentCallbackExtKt.getDefaultScope(componentCallbacks).get(Reflection.getOrCreateKotlinClass(CustomAdManager.class), objArr3, objArr4);
                }
            })).getCustomAdDataSync();
            if (customAdDataSync.isValid()) {
                ActivityBookKeepBinding activityBookKeepBinding6 = BookKeepActivity.this.binding;
                if (activityBookKeepBinding6 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("binding");
                    activityBookKeepBinding6 = null;
                }
                CustomAdView customAdView3 = activityBookKeepBinding6.customAdView;
                if (customAdView3 != null) {
                    customAdView3.setAnalytics(BookKeepActivity.this.getAnalytics());
                }
                ActivityBookKeepBinding activityBookKeepBinding7 = BookKeepActivity.this.binding;
                if (activityBookKeepBinding7 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("binding");
                    activityBookKeepBinding7 = null;
                }
                CustomAdView customAdView4 = activityBookKeepBinding7.customAdView;
                if (customAdView4 != null) {
                    customAdView4.loadAd(customAdDataSync);
                }
                ActivityBookKeepBinding activityBookKeepBinding8 = BookKeepActivity.this.binding;
                if (activityBookKeepBinding8 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("binding");
                    activityBookKeepBinding8 = null;
                }
                View view3 = activityBookKeepBinding8.adsShadow;
                if (view3 != null) {
                    ExtentionsKt.show$default(view3, 0L, null, 3, null);
                }
            } else {
                ActivityBookKeepBinding activityBookKeepBinding9 = BookKeepActivity.this.binding;
                if (activityBookKeepBinding9 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("binding");
                    activityBookKeepBinding9 = null;
                }
                CustomAdView customAdView5 = activityBookKeepBinding9.customAdView;
                if (customAdView5 != null) {
                    customAdView5.hide();
                }
                ActivityBookKeepBinding activityBookKeepBinding10 = BookKeepActivity.this.binding;
                if (activityBookKeepBinding10 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("binding");
                    activityBookKeepBinding10 = null;
                }
                View view4 = activityBookKeepBinding10.adsShadow;
                if (view4 != null) {
                    ExtentionsKt.hide$default(view4, 0L, null, 3, null);
                }
            }
            return Unit.INSTANCE;
        }

        private static final CustomAdManager invokeSuspend$lambda$0(Lazy<CustomAdManager> lazy) {
            return lazy.getValue();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void loadCustomAd() {
        BuildersKt__Builders_commonKt.launch$default(LifecycleOwnerKt.getLifecycleScope(this), null, null, new C36921(null), 3, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:40:0x00b6  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x00b9 A[Catch: Exception -> 0x00ce, TRY_ENTER, TRY_LEAVE, TryCatch #0 {Exception -> 0x00ce, blocks: (B:13:0x002c, B:42:0x00b9), top: B:49:0x0024 }] */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0014  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object refreshSubscriptionStatus(kotlin.coroutines.Continuation<? super kotlin.Unit> r8) {
        /*
            Method dump skipped, instruction units count: 209
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.rebuilt.app.keep.screen.BookKeepActivity.refreshSubscriptionStatus(kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:39:0x00de A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:40:0x00df  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x010c A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:49:0x010d  */
    /* JADX WARN: Removed duplicated region for block: B:52:0x0116  */
    /* JADX WARN: Removed duplicated region for block: B:54:0x0119  */
    /* JADX WARN: Removed duplicated region for block: B:63:0x013c  */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0014  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object checkAndShowReferFriendBottomSheet(kotlin.coroutines.Continuation<? super kotlin.Unit> r12) {
        /*
            Method dump skipped, instruction units count: 321
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.rebuilt.app.keep.screen.BookKeepActivity.checkAndShowReferFriendBottomSheet(kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void checkAndShowReferFriendBottomSheet$lambda$22(BookKeepActivity this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        try {
            ReferFriendBottomSheetFragment.INSTANCE.newInstance().show(this$0.getSupportFragmentManager(), ReferFriendBottomSheetFragment.TAG);
            BuildersKt__Builders_commonKt.launch$default(LifecycleOwnerKt.getLifecycleScope(this$0), null, null, new BookKeepActivity$checkAndShowReferFriendBottomSheet$2$1(this$0, null), 3, null);
        } catch (Exception unused) {
            this$0.referFriendBottomSheetCheckedThisSession = false;
        }
    }

    @Override // com.razorpay.PaymentResultWithDataListener
    public void onPaymentSuccess(String razorpayPaymentId, PaymentData paymentData) {
        Intrinsics.checkNotNullParameter(razorpayPaymentId, "razorpayPaymentId");
        Fragment fragmentFindFragmentByTag = getSupportFragmentManager().findFragmentByTag(PremiumOfferDialogFragment.TAG);
        if (fragmentFindFragmentByTag instanceof PremiumOfferDialogFragment) {
            ((PremiumOfferDialogFragment) fragmentFindFragmentByTag).onPaymentSuccess(razorpayPaymentId, paymentData);
        }
    }

    @Override // com.razorpay.PaymentResultWithDataListener
    public void onPaymentError(int errorCode, String errorMessage, PaymentData paymentData) {
        Intrinsics.checkNotNullParameter(errorMessage, "errorMessage");
        Fragment fragmentFindFragmentByTag = getSupportFragmentManager().findFragmentByTag(PremiumOfferDialogFragment.TAG);
        if (fragmentFindFragmentByTag instanceof PremiumOfferDialogFragment) {
            ((PremiumOfferDialogFragment) fragmentFindFragmentByTag).onPaymentError(errorCode, errorMessage, paymentData);
        }
    }

    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    @Deprecated(message = "Deprecated in Java")
    protected void onActivityResult(int requestCode, int resultCode, Intent data) {
        super.onActivityResult(requestCode, resultCode, data);
        Fragment fragmentFindFragmentByTag = getSupportFragmentManager().findFragmentByTag(PremiumOfferDialogFragment.TAG);
        if (fragmentFindFragmentByTag instanceof PremiumOfferDialogFragment) {
            ((PremiumOfferDialogFragment) fragmentFindFragmentByTag).onActivityResultForRazorpay(requestCode, resultCode, data);
        }
    }
}
