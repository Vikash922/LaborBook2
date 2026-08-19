.class public final Lcom/laborbook/keep/screen/BookKeepActivity;
.super Lcom/laborbook/base/BaseActivity;
.source "BookKeepActivity.kt"

# interfaces
.implements Lcom/boilerplate/navigator/Navigator$NavigatorListener;
.implements Lcom/razorpay/PaymentResultWithDataListener;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBookKeepActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BookKeepActivity.kt\ncom/laborbook/keep/screen/BookKeepActivity\n+ 2 ComponentCallbackExt.kt\norg/koin/android/ext/android/ComponentCallbackExtKt\n+ 3 ViewModelStoreOwnerExt.kt\norg/koin/androidx/viewmodel/ext/android/ViewModelStoreOwnerExtKt\n+ 4 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,901:1\n50#2,5:902\n50#2,5:907\n50#2,5:912\n50#2,5:917\n50#2,5:922\n50#2,5:927\n35#3,6:932\n157#4,8:938\n326#4,4:946\n157#4,8:950\n326#4,4:958\n157#4,8:962\n*S KotlinDebug\n*F\n+ 1 BookKeepActivity.kt\ncom/laborbook/keep/screen/BookKeepActivity\n*L\n87#1:902,5\n88#1:907,5\n89#1:912,5\n90#1:917,5\n91#1:922,5\n92#1:927,5\n93#1:932,6\n292#1:938,8\n305#1:946,4\n309#1:950,8\n312#1:958,4\n315#1:962,8\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00b6\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u000f\n\u0002\u0010\u0008\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0011\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u0003B\u0007\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0012\u0010A\u001a\u00020B2\u0008\u0010C\u001a\u0004\u0018\u00010DH\u0014J\u0008\u0010E\u001a\u00020BH\u0002J\u0008\u0010F\u001a\u00020BH\u0002J\u0008\u0010G\u001a\u00020BH\u0002J\u0008\u0010H\u001a\u00020BH\u0002J\u000e\u0010I\u001a\u00020BH\u0082@\u00a2\u0006\u0002\u0010JJ\u0008\u0010K\u001a\u00020BH\u0002J\u0008\u0010L\u001a\u00020BH\u0002J\u0008\u0010M\u001a\u00020BH\u0002J\u0008\u0010N\u001a\u00020BH\u0002J\u0012\u0010O\u001a\u00020B2\u0008\u0010C\u001a\u0004\u0018\u00010DH\u0002J\u0008\u0010P\u001a\u00020BH\u0016J\u0008\u0010Q\u001a\u00020BH\u0002J\u0010\u0010R\u001a\u00020B2\u0006\u0010S\u001a\u00020TH\u0016J\u0010\u0010U\u001a\u00020B2\u0006\u0010V\u001a\u00020DH\u0014J\u0008\u0010W\u001a\u00020BH\u0002J\u0008\u0010X\u001a\u00020BH\u0002J\u0008\u0010Z\u001a\u00020BH\u0002J\u0018\u0010[\u001a\u00020B2\u0006\u0010\\\u001a\u00020]2\u0006\u0010^\u001a\u00020TH\u0002J\u0008\u0010_\u001a\u00020BH\u0014J\u0008\u0010`\u001a\u00020BH\u0014J\u000e\u0010a\u001a\u000207H\u0082@\u00a2\u0006\u0002\u0010JJ\u0008\u0010b\u001a\u00020TH\u0002J\u000e\u0010c\u001a\u000207H\u0082@\u00a2\u0006\u0002\u0010JJ\u0008\u0010d\u001a\u00020BH\u0002J\u0008\u0010e\u001a\u00020BH\u0002J\u0006\u0010f\u001a\u00020BJ\u0006\u0010g\u001a\u00020BJ\u0008\u0010h\u001a\u00020BH\u0002J\u0008\u0010i\u001a\u00020BH\u0002J\u000e\u0010j\u001a\u00020BH\u0082@\u00a2\u0006\u0002\u0010JJ\u000e\u0010k\u001a\u00020BH\u0082@\u00a2\u0006\u0002\u0010JJ\u001a\u0010l\u001a\u00020B2\u0006\u0010m\u001a\u0002032\u0008\u0010n\u001a\u0004\u0018\u00010oH\u0016J\"\u0010p\u001a\u00020B2\u0006\u0010q\u001a\u00020T2\u0006\u0010r\u001a\u0002032\u0008\u0010n\u001a\u0004\u0018\u00010oH\u0016J\"\u0010s\u001a\u00020B2\u0006\u0010t\u001a\u00020T2\u0006\u0010u\u001a\u00020T2\u0008\u0010v\u001a\u0004\u0018\u000100H\u0015R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082.\u00a2\u0006\u0002\n\u0000R\u001b\u0010\u0008\u001a\u00020\t8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u000c\u0010\r\u001a\u0004\u0008\n\u0010\u000bR\u001b\u0010\u000e\u001a\u00020\u000f8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0012\u0010\r\u001a\u0004\u0008\u0010\u0010\u0011R\u001b\u0010\u0013\u001a\u00020\u00148BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0017\u0010\r\u001a\u0004\u0008\u0015\u0010\u0016R\u001b\u0010\u0018\u001a\u00020\u00198BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u001c\u0010\r\u001a\u0004\u0008\u001a\u0010\u001bR\u001b\u0010\u001d\u001a\u00020\u001e8FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008!\u0010\r\u001a\u0004\u0008\u001f\u0010 R\u001b\u0010\"\u001a\u00020#8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008&\u0010\r\u001a\u0004\u0008$\u0010%R\u001b\u0010\'\u001a\u00020(8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008+\u0010\r\u001a\u0004\u0008)\u0010*R\u000e\u0010,\u001a\u00020-X\u0082.\u00a2\u0006\u0002\n\u0000R\u0014\u0010.\u001a\u0008\u0012\u0004\u0012\u0002000/X\u0082.\u00a2\u0006\u0002\n\u0000R\u0014\u00101\u001a\u0008\u0012\u0004\u0012\u0002000/X\u0082.\u00a2\u0006\u0002\n\u0000R\u0010\u00102\u001a\u0004\u0018\u000103X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u00104\u001a\u0004\u0018\u000105X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u00106\u001a\u000207X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u00108\u001a\u000207X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u00109\u001a\u000207X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010:\u001a\u000207X\u0082\u000e\u00a2\u0006\u0002\n\u0000R,\u0010;\u001a\u001e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020>0=0?j\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020>0=`<X\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010@R\u0014\u0010Y\u001a\u0008\u0012\u0004\u0012\u0002030/X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006w\u00b2\u0006\n\u0010x\u001a\u00020yX\u008a\u0084\u0002"
    }
    d2 = {
        "Lcom/laborbook/keep/screen/BookKeepActivity;",
        "Lcom/laborbook/base/BaseActivity;",
        "Lcom/boilerplate/navigator/Navigator$NavigatorListener;",
        "Lcom/razorpay/PaymentResultWithDataListener;",
        "<init>",
        "()V",
        "binding",
        "Lcom/laborbook/keep/databinding/ActivityBookKeepBinding;",
        "fragmentNavigator",
        "Lcom/laborbook/base/navigator/FragmentNavigator;",
        "getFragmentNavigator",
        "()Lcom/laborbook/base/navigator/FragmentNavigator;",
        "fragmentNavigator$delegate",
        "Lkotlin/Lazy;",
        "observerUtil",
        "Lcom/laborbook/keep/screen/calendar/utils/ObserverUtil;",
        "getObserverUtil",
        "()Lcom/laborbook/keep/screen/calendar/utils/ObserverUtil;",
        "observerUtil$delegate",
        "expenseObserverUtil",
        "Lcom/laborbook/expense/util/ExpenseObserverUtil;",
        "getExpenseObserverUtil",
        "()Lcom/laborbook/expense/util/ExpenseObserverUtil;",
        "expenseObserverUtil$delegate",
        "incomeObserverUtil",
        "Lcom/laborbook/income/util/IncomeObserverUtil;",
        "getIncomeObserverUtil",
        "()Lcom/laborbook/income/util/IncomeObserverUtil;",
        "incomeObserverUtil$delegate",
        "dataStoreManager",
        "Lcom/laborbook/base/datastore/DataStoreManager;",
        "getDataStoreManager",
        "()Lcom/laborbook/base/datastore/DataStoreManager;",
        "dataStoreManager$delegate",
        "premiumOfferManager",
        "Lcom/laborbook/keep/screen/premium/PremiumOfferManager;",
        "getPremiumOfferManager",
        "()Lcom/laborbook/keep/screen/premium/PremiumOfferManager;",
        "premiumOfferManager$delegate",
        "subscriptionViewModel",
        "Lcom/laborbook/keep/screen/premium/viewmodel/SubscriptionViewModel;",
        "getSubscriptionViewModel",
        "()Lcom/laborbook/keep/screen/premium/viewmodel/SubscriptionViewModel;",
        "subscriptionViewModel$delegate",
        "appUpdateManager",
        "Lcom/google/android/play/core/appupdate/AppUpdateManager;",
        "appUpdateLauncher",
        "Landroidx/activity/result/ActivityResultLauncher;",
        "Landroid/content/Intent;",
        "appLockLauncher",
        "lastDestinationClassName",
        "",
        "calendarExitInterstitial",
        "Lcom/google/android/gms/ads/interstitial/InterstitialAd;",
        "calendarExitInterstitialLoading",
        "",
        "calendarExitInterstitialShownThisSession",
        "referFriendBottomSheetCheckedThisSession",
        "subscriptionStatusCheckedThisSession",
        "rootFragmentProvider",
        "Lkotlin/collections/ArrayList;",
        "Lkotlin/Function0;",
        "Landroidx/fragment/app/Fragment;",
        "Ljava/util/ArrayList;",
        "Ljava/util/ArrayList;",
        "onCreate",
        "",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "checkAndShowHardPaywall",
        "observeProStatusChanges",
        "observeSubscriptionStateChanges",
        "recordFirstTimeHomeScreenEventIfNeeded",
        "ensureNetworkHeadersSync",
        "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "ensureNetworkHeaders",
        "hideAllAds",
        "enableEdgeToEdge",
        "checkForNotificationPermission",
        "setupNavigator",
        "onBackPressed",
        "showExitConfirmationDialog",
        "onTabChanged",
        "tabIndex",
        "",
        "onSaveInstanceState",
        "outState",
        "setOnItemSelectedListener",
        "setOnDestinationChangeListener",
        "requestNotificationPermissionLauncher",
        "checkForUpdate",
        "startUpdate",
        "appUpdateInfo",
        "Lcom/google/android/play/core/appupdate/AppUpdateInfo;",
        "updateType",
        "onResume",
        "onStart",
        "checkAppLockIfNeeded",
        "todayEpochDayUtc",
        "canShowDailyCalendarExitInterstitial",
        "preloadCalendarExitInterstitialIfEligible",
        "showCalendarExitInterstitialIfReady",
        "onPaywallShown",
        "onPaywallDismissed",
        "requestGoogleAds",
        "loadCustomAd",
        "refreshSubscriptionStatus",
        "checkAndShowReferFriendBottomSheet",
        "onPaymentSuccess",
        "razorpayPaymentId",
        "paymentData",
        "Lcom/razorpay/PaymentData;",
        "onPaymentError",
        "errorCode",
        "errorMessage",
        "onActivityResult",
        "requestCode",
        "resultCode",
        "data",
        "keep_release",
        "customAdManager",
        "Lcom/laborbook/base/ads/CustomAdManager;"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private appLockLauncher:Landroidx/activity/result/ActivityResultLauncher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/activity/result/ActivityResultLauncher<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation
.end field

.field private appUpdateLauncher:Landroidx/activity/result/ActivityResultLauncher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/activity/result/ActivityResultLauncher<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation
.end field

.field private appUpdateManager:Lcom/google/android/play/core/appupdate/AppUpdateManager;

.field private binding:Lcom/laborbook/keep/databinding/ActivityBookKeepBinding;

.field private calendarExitInterstitial:Lcom/google/android/gms/ads/interstitial/InterstitialAd;

.field private calendarExitInterstitialLoading:Z

.field private calendarExitInterstitialShownThisSession:Z

.field private final dataStoreManager$delegate:Lkotlin/Lazy;

.field private final expenseObserverUtil$delegate:Lkotlin/Lazy;

.field private final fragmentNavigator$delegate:Lkotlin/Lazy;

.field private final incomeObserverUtil$delegate:Lkotlin/Lazy;

.field private lastDestinationClassName:Ljava/lang/String;

.field private final observerUtil$delegate:Lkotlin/Lazy;

.field private final premiumOfferManager$delegate:Lkotlin/Lazy;

.field private referFriendBottomSheetCheckedThisSession:Z

.field private final requestNotificationPermissionLauncher:Landroidx/activity/result/ActivityResultLauncher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/activity/result/ActivityResultLauncher<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final rootFragmentProvider:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lkotlin/jvm/functions/Function0<",
            "Landroidx/fragment/app/Fragment;",
            ">;>;"
        }
    .end annotation
.end field

.field private subscriptionStatusCheckedThisSession:Z

.field private final subscriptionViewModel$delegate:Lkotlin/Lazy;


# direct methods
.method public static synthetic $r8$lambda$-pdVRMElqdQpkAhxmlEccjrOfRg(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/laborbook/keep/screen/BookKeepActivity;->showExitConfirmationDialog$lambda$14(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$-qiUiRVVucAIMdmFsBPlEzsHvJw(Lcom/laborbook/keep/screen/BookKeepActivity;Landroidx/fragment/app/Fragment;Z)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/laborbook/keep/screen/BookKeepActivity;->setOnDestinationChangeListener$lambda$16(Lcom/laborbook/keep/screen/BookKeepActivity;Landroidx/fragment/app/Fragment;Z)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$1BnLFDLMVgA_CxLzzazQxrtVlHw()Landroidx/fragment/app/Fragment;
    .locals 1

    invoke-static {}, Lcom/laborbook/keep/screen/BookKeepActivity;->rootFragmentProvider$lambda$1()Landroidx/fragment/app/Fragment;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic $r8$lambda$5d76b0QlQJA0H0GYhHcNHAkLfJI(Lcom/laborbook/keep/screen/BookKeepActivity;Z)V
    .locals 0

    invoke-static {p0, p1}, Lcom/laborbook/keep/screen/BookKeepActivity;->requestNotificationPermissionLauncher$lambda$17(Lcom/laborbook/keep/screen/BookKeepActivity;Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$6Q1dfcEUZXceAR9rlfOmNPVBdOU(Lkotlin/jvm/functions/Function1;Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/laborbook/keep/screen/BookKeepActivity;->enableEdgeToEdge$lambda$11(Lkotlin/jvm/functions/Function1;Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$7lsXhSEBuiULrEPFICCSDDU8IZc(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/laborbook/keep/screen/BookKeepActivity;->onResume$lambda$21(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic $r8$lambda$CUnO0j4cDQuvAYrFWlQsJCQCVIU(Lcom/laborbook/keep/screen/BookKeepActivity;Landroid/view/MenuItem;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/laborbook/keep/screen/BookKeepActivity;->setOnItemSelectedListener$lambda$15(Lcom/laborbook/keep/screen/BookKeepActivity;Landroid/view/MenuItem;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$HMDBMZte5Z1jU8U5-JdwFLmTph4(Lcom/laborbook/keep/screen/BookKeepActivity;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/laborbook/keep/screen/BookKeepActivity;->showExitConfirmationDialog$lambda$13(Lcom/laborbook/keep/screen/BookKeepActivity;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$KueBEekCgpIHs690_gPvznzAJVs(Landroidx/constraintlayout/widget/ConstraintLayout;Lkotlin/jvm/functions/Function1;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Lcom/laborbook/keep/screen/BookKeepActivity;->enableEdgeToEdge$lambda$12(Landroidx/constraintlayout/widget/ConstraintLayout;Lkotlin/jvm/functions/Function1;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$LB028e-zTkQ76_xjVZw_UkaZJAU(Lcom/laborbook/keep/screen/BookKeepActivity;)V
    .locals 0

    invoke-static {p0}, Lcom/laborbook/keep/screen/BookKeepActivity;->checkAndShowReferFriendBottomSheet$lambda$22(Lcom/laborbook/keep/screen/BookKeepActivity;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Zqy-hBYvngmv3213uzP9aSftaXk()Landroidx/fragment/app/Fragment;
    .locals 1

    invoke-static {}, Lcom/laborbook/keep/screen/BookKeepActivity;->rootFragmentProvider$lambda$2()Landroidx/fragment/app/Fragment;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic $r8$lambda$aGxGRn50-QsOPu_LKpv14KfDE9k(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/laborbook/keep/screen/BookKeepActivity;->checkForUpdate$lambda$19(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic $r8$lambda$cqCsfdFAw9XSOn1lL5ty6G38SDg(Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;
    .locals 0

    invoke-static {p0, p1}, Lcom/laborbook/keep/screen/BookKeepActivity;->enableEdgeToEdge$lambda$7(Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$eXrrh6BuaLbgBQOCXsEQpLqJA6Q(Lcom/google/android/gms/ads/AdView;Lcom/laborbook/base/ads/CustomAdView;Lcom/laborbook/keep/screen/BookKeepActivity;Lcom/google/android/material/bottomnavigation/BottomNavigationView;Landroid/widget/FrameLayout;Landroidx/core/view/WindowInsetsCompat;)Lkotlin/Unit;
    .locals 0

    invoke-static/range {p0 .. p5}, Lcom/laborbook/keep/screen/BookKeepActivity;->enableEdgeToEdge$lambda$10(Lcom/google/android/gms/ads/AdView;Lcom/laborbook/base/ads/CustomAdView;Lcom/laborbook/keep/screen/BookKeepActivity;Lcom/google/android/material/bottomnavigation/BottomNavigationView;Landroid/widget/FrameLayout;Landroidx/core/view/WindowInsetsCompat;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$fkujfZXj79FDy_2co6lwozR-7sI(Landroidx/activity/result/ActivityResult;)V
    .locals 0

    invoke-static {p0}, Lcom/laborbook/keep/screen/BookKeepActivity;->onCreate$lambda$3(Landroidx/activity/result/ActivityResult;)V

    return-void
.end method

.method public static synthetic $r8$lambda$kaDaoYkBriIiyCP3QFKYYNzdGiY(Lcom/laborbook/keep/screen/BookKeepActivity;Lcom/google/android/play/core/appupdate/AppUpdateInfo;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Lcom/laborbook/keep/screen/BookKeepActivity;->onResume$lambda$20(Lcom/laborbook/keep/screen/BookKeepActivity;Lcom/google/android/play/core/appupdate/AppUpdateInfo;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$nHCuj4tw-ayDeGhJdqeXE6rvnIk()Landroidx/fragment/app/Fragment;
    .locals 1

    invoke-static {}, Lcom/laborbook/keep/screen/BookKeepActivity;->rootFragmentProvider$lambda$0()Landroidx/fragment/app/Fragment;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic $r8$lambda$oEllTB7q5YSd89X3VnuxO6omMCc(Lcom/laborbook/keep/screen/BookKeepActivity;Lcom/google/android/play/core/appupdate/AppUpdateInfo;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Lcom/laborbook/keep/screen/BookKeepActivity;->checkForUpdate$lambda$18(Lcom/laborbook/keep/screen/BookKeepActivity;Lcom/google/android/play/core/appupdate/AppUpdateInfo;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$xqcqr1PMHrEgkVuo8_lm_6XFso0(Lcom/laborbook/keep/screen/BookKeepActivity;Landroidx/activity/result/ActivityResult;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/laborbook/keep/screen/BookKeepActivity;->onCreate$lambda$4(Lcom/laborbook/keep/screen/BookKeepActivity;Landroidx/activity/result/ActivityResult;)V

    return-void
.end method

.method public static synthetic $r8$lambda$yy46mawk4Te_wQMckNyv7vFnOVA(Lcom/laborbook/keep/screen/BookKeepActivity;Lcom/laborbook/keep/screen/premium/viewmodel/SubscriptionViewModel$SubscriptionState;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Lcom/laborbook/keep/screen/BookKeepActivity;->observeSubscriptionStateChanges$lambda$5(Lcom/laborbook/keep/screen/BookKeepActivity;Lcom/laborbook/keep/screen/premium/viewmodel/SubscriptionViewModel$SubscriptionState;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>()V
    .locals 4

    .line 84
    invoke-direct {p0}, Lcom/laborbook/base/BaseActivity;-><init>()V

    .line 87
    move-object v0, p0

    check-cast v0, Landroid/content/ComponentCallbacks;

    .line 904
    sget-object v1, Lkotlin/LazyThreadSafetyMode;->SYNCHRONIZED:Lkotlin/LazyThreadSafetyMode;

    .line 906
    new-instance v2, Lcom/laborbook/keep/screen/BookKeepActivity$special$$inlined$inject$default$1;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v3, v3}, Lcom/laborbook/keep/screen/BookKeepActivity$special$$inlined$inject$default$1;-><init>(Landroid/content/ComponentCallbacks;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)V

    check-cast v2, Lkotlin/jvm/functions/Function0;

    invoke-static {v1, v2}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v1

    .line 87
    iput-object v1, p0, Lcom/laborbook/keep/screen/BookKeepActivity;->fragmentNavigator$delegate:Lkotlin/Lazy;

    .line 909
    sget-object v1, Lkotlin/LazyThreadSafetyMode;->SYNCHRONIZED:Lkotlin/LazyThreadSafetyMode;

    .line 911
    new-instance v2, Lcom/laborbook/keep/screen/BookKeepActivity$special$$inlined$inject$default$2;

    invoke-direct {v2, v0, v3, v3}, Lcom/laborbook/keep/screen/BookKeepActivity$special$$inlined$inject$default$2;-><init>(Landroid/content/ComponentCallbacks;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)V

    check-cast v2, Lkotlin/jvm/functions/Function0;

    invoke-static {v1, v2}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v1

    .line 88
    iput-object v1, p0, Lcom/laborbook/keep/screen/BookKeepActivity;->observerUtil$delegate:Lkotlin/Lazy;

    .line 914
    sget-object v1, Lkotlin/LazyThreadSafetyMode;->SYNCHRONIZED:Lkotlin/LazyThreadSafetyMode;

    .line 916
    new-instance v2, Lcom/laborbook/keep/screen/BookKeepActivity$special$$inlined$inject$default$3;

    invoke-direct {v2, v0, v3, v3}, Lcom/laborbook/keep/screen/BookKeepActivity$special$$inlined$inject$default$3;-><init>(Landroid/content/ComponentCallbacks;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)V

    check-cast v2, Lkotlin/jvm/functions/Function0;

    invoke-static {v1, v2}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v1

    .line 89
    iput-object v1, p0, Lcom/laborbook/keep/screen/BookKeepActivity;->expenseObserverUtil$delegate:Lkotlin/Lazy;

    .line 919
    sget-object v1, Lkotlin/LazyThreadSafetyMode;->SYNCHRONIZED:Lkotlin/LazyThreadSafetyMode;

    .line 921
    new-instance v2, Lcom/laborbook/keep/screen/BookKeepActivity$special$$inlined$inject$default$4;

    invoke-direct {v2, v0, v3, v3}, Lcom/laborbook/keep/screen/BookKeepActivity$special$$inlined$inject$default$4;-><init>(Landroid/content/ComponentCallbacks;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)V

    check-cast v2, Lkotlin/jvm/functions/Function0;

    invoke-static {v1, v2}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v1

    .line 90
    iput-object v1, p0, Lcom/laborbook/keep/screen/BookKeepActivity;->incomeObserverUtil$delegate:Lkotlin/Lazy;

    .line 924
    sget-object v1, Lkotlin/LazyThreadSafetyMode;->SYNCHRONIZED:Lkotlin/LazyThreadSafetyMode;

    .line 926
    new-instance v2, Lcom/laborbook/keep/screen/BookKeepActivity$special$$inlined$inject$default$5;

    invoke-direct {v2, v0, v3, v3}, Lcom/laborbook/keep/screen/BookKeepActivity$special$$inlined$inject$default$5;-><init>(Landroid/content/ComponentCallbacks;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)V

    check-cast v2, Lkotlin/jvm/functions/Function0;

    invoke-static {v1, v2}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v1

    .line 91
    iput-object v1, p0, Lcom/laborbook/keep/screen/BookKeepActivity;->dataStoreManager$delegate:Lkotlin/Lazy;

    .line 929
    sget-object v1, Lkotlin/LazyThreadSafetyMode;->SYNCHRONIZED:Lkotlin/LazyThreadSafetyMode;

    .line 931
    new-instance v2, Lcom/laborbook/keep/screen/BookKeepActivity$special$$inlined$inject$default$6;

    invoke-direct {v2, v0, v3, v3}, Lcom/laborbook/keep/screen/BookKeepActivity$special$$inlined$inject$default$6;-><init>(Landroid/content/ComponentCallbacks;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)V

    check-cast v2, Lkotlin/jvm/functions/Function0;

    invoke-static {v1, v2}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    .line 92
    iput-object v0, p0, Lcom/laborbook/keep/screen/BookKeepActivity;->premiumOfferManager$delegate:Lkotlin/Lazy;

    .line 93
    move-object v0, p0

    check-cast v0, Landroidx/lifecycle/ViewModelStoreOwner;

    .line 934
    sget-object v1, Lkotlin/LazyThreadSafetyMode;->SYNCHRONIZED:Lkotlin/LazyThreadSafetyMode;

    .line 937
    new-instance v2, Lcom/laborbook/keep/screen/BookKeepActivity$special$$inlined$viewModel$default$1;

    invoke-direct {v2, v0, v3, v3}, Lcom/laborbook/keep/screen/BookKeepActivity$special$$inlined$viewModel$default$1;-><init>(Landroidx/lifecycle/ViewModelStoreOwner;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)V

    check-cast v2, Lkotlin/jvm/functions/Function0;

    invoke-static {v1, v2}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    .line 93
    iput-object v0, p0, Lcom/laborbook/keep/screen/BookKeepActivity;->subscriptionViewModel$delegate:Lkotlin/Lazy;

    const/4 v0, 0x3

    .line 107
    new-array v0, v0, [Lkotlin/jvm/functions/Function0;

    new-instance v1, Lcom/laborbook/keep/screen/BookKeepActivity$$ExternalSyntheticLambda16;

    invoke-direct {v1}, Lcom/laborbook/keep/screen/BookKeepActivity$$ExternalSyntheticLambda16;-><init>()V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Lcom/laborbook/keep/screen/BookKeepActivity$$ExternalSyntheticLambda17;

    invoke-direct {v1}, Lcom/laborbook/keep/screen/BookKeepActivity$$ExternalSyntheticLambda17;-><init>()V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    new-instance v1, Lcom/laborbook/keep/screen/BookKeepActivity$$ExternalSyntheticLambda18;

    invoke-direct {v1}, Lcom/laborbook/keep/screen/BookKeepActivity$$ExternalSyntheticLambda18;-><init>()V

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 106
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->arrayListOf([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/laborbook/keep/screen/BookKeepActivity;->rootFragmentProvider:Ljava/util/ArrayList;

    .line 492
    new-instance v0, Landroidx/activity/result/contract/ActivityResultContracts$RequestPermission;

    invoke-direct {v0}, Landroidx/activity/result/contract/ActivityResultContracts$RequestPermission;-><init>()V

    check-cast v0, Landroidx/activity/result/contract/ActivityResultContract;

    .line 491
    new-instance v1, Lcom/laborbook/keep/screen/BookKeepActivity$$ExternalSyntheticLambda19;

    invoke-direct {v1, p0}, Lcom/laborbook/keep/screen/BookKeepActivity$$ExternalSyntheticLambda19;-><init>(Lcom/laborbook/keep/screen/BookKeepActivity;)V

    invoke-virtual {p0, v0, v1}, Lcom/laborbook/keep/screen/BookKeepActivity;->registerForActivityResult(Landroidx/activity/result/contract/ActivityResultContract;Landroidx/activity/result/ActivityResultCallback;)Landroidx/activity/result/ActivityResultLauncher;

    move-result-object v0

    iput-object v0, p0, Lcom/laborbook/keep/screen/BookKeepActivity;->requestNotificationPermissionLauncher:Landroidx/activity/result/ActivityResultLauncher;

    return-void
.end method

.method public static final synthetic access$canShowDailyCalendarExitInterstitial(Lcom/laborbook/keep/screen/BookKeepActivity;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 84
    invoke-direct {p0, p1}, Lcom/laborbook/keep/screen/BookKeepActivity;->canShowDailyCalendarExitInterstitial(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$checkAndShowReferFriendBottomSheet(Lcom/laborbook/keep/screen/BookKeepActivity;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 84
    invoke-direct {p0, p1}, Lcom/laborbook/keep/screen/BookKeepActivity;->checkAndShowReferFriendBottomSheet(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$checkAppLockIfNeeded(Lcom/laborbook/keep/screen/BookKeepActivity;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 84
    invoke-direct {p0, p1}, Lcom/laborbook/keep/screen/BookKeepActivity;->checkAppLockIfNeeded(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$ensureNetworkHeadersSync(Lcom/laborbook/keep/screen/BookKeepActivity;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 84
    invoke-direct {p0, p1}, Lcom/laborbook/keep/screen/BookKeepActivity;->ensureNetworkHeadersSync(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getBinding$p(Lcom/laborbook/keep/screen/BookKeepActivity;)Lcom/laborbook/keep/databinding/ActivityBookKeepBinding;
    .locals 0

    .line 84
    iget-object p0, p0, Lcom/laborbook/keep/screen/BookKeepActivity;->binding:Lcom/laborbook/keep/databinding/ActivityBookKeepBinding;

    return-object p0
.end method

.method public static final synthetic access$getPremiumOfferManager(Lcom/laborbook/keep/screen/BookKeepActivity;)Lcom/laborbook/keep/screen/premium/PremiumOfferManager;
    .locals 0

    .line 84
    invoke-direct {p0}, Lcom/laborbook/keep/screen/BookKeepActivity;->getPremiumOfferManager()Lcom/laborbook/keep/screen/premium/PremiumOfferManager;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getSubscriptionStatusCheckedThisSession$p(Lcom/laborbook/keep/screen/BookKeepActivity;)Z
    .locals 0

    .line 84
    iget-boolean p0, p0, Lcom/laborbook/keep/screen/BookKeepActivity;->subscriptionStatusCheckedThisSession:Z

    return p0
.end method

.method public static final synthetic access$hideAllAds(Lcom/laborbook/keep/screen/BookKeepActivity;)V
    .locals 0

    .line 84
    invoke-direct {p0}, Lcom/laborbook/keep/screen/BookKeepActivity;->hideAllAds()V

    return-void
.end method

.method public static final synthetic access$loadCustomAd(Lcom/laborbook/keep/screen/BookKeepActivity;)V
    .locals 0

    .line 84
    invoke-direct {p0}, Lcom/laborbook/keep/screen/BookKeepActivity;->loadCustomAd()V

    return-void
.end method

.method public static final synthetic access$refreshSubscriptionStatus(Lcom/laborbook/keep/screen/BookKeepActivity;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 84
    invoke-direct {p0, p1}, Lcom/laborbook/keep/screen/BookKeepActivity;->refreshSubscriptionStatus(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$requestGoogleAds(Lcom/laborbook/keep/screen/BookKeepActivity;)V
    .locals 0

    .line 84
    invoke-direct {p0}, Lcom/laborbook/keep/screen/BookKeepActivity;->requestGoogleAds()V

    return-void
.end method

.method public static final synthetic access$setCalendarExitInterstitial$p(Lcom/laborbook/keep/screen/BookKeepActivity;Lcom/google/android/gms/ads/interstitial/InterstitialAd;)V
    .locals 0

    .line 84
    iput-object p1, p0, Lcom/laborbook/keep/screen/BookKeepActivity;->calendarExitInterstitial:Lcom/google/android/gms/ads/interstitial/InterstitialAd;

    return-void
.end method

.method public static final synthetic access$setCalendarExitInterstitialLoading$p(Lcom/laborbook/keep/screen/BookKeepActivity;Z)V
    .locals 0

    .line 84
    iput-boolean p1, p0, Lcom/laborbook/keep/screen/BookKeepActivity;->calendarExitInterstitialLoading:Z

    return-void
.end method

.method public static final synthetic access$setCalendarExitInterstitialShownThisSession$p(Lcom/laborbook/keep/screen/BookKeepActivity;Z)V
    .locals 0

    .line 84
    iput-boolean p1, p0, Lcom/laborbook/keep/screen/BookKeepActivity;->calendarExitInterstitialShownThisSession:Z

    return-void
.end method

.method public static final synthetic access$showCalendarExitInterstitialIfReady(Lcom/laborbook/keep/screen/BookKeepActivity;)V
    .locals 0

    .line 84
    invoke-direct {p0}, Lcom/laborbook/keep/screen/BookKeepActivity;->showCalendarExitInterstitialIfReady()V

    return-void
.end method

.method private final canShowDailyCalendarExitInterstitial(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Lcom/laborbook/keep/screen/BookKeepActivity$canShowDailyCalendarExitInterstitial$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/laborbook/keep/screen/BookKeepActivity$canShowDailyCalendarExitInterstitial$1;

    iget v1, v0, Lcom/laborbook/keep/screen/BookKeepActivity$canShowDailyCalendarExitInterstitial$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p1, v0, Lcom/laborbook/keep/screen/BookKeepActivity$canShowDailyCalendarExitInterstitial$1;->label:I

    sub-int/2addr p1, v2

    iput p1, v0, Lcom/laborbook/keep/screen/BookKeepActivity$canShowDailyCalendarExitInterstitial$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/laborbook/keep/screen/BookKeepActivity$canShowDailyCalendarExitInterstitial$1;

    invoke-direct {v0, p0, p1}, Lcom/laborbook/keep/screen/BookKeepActivity$canShowDailyCalendarExitInterstitial$1;-><init>(Lcom/laborbook/keep/screen/BookKeepActivity;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p1, v0, Lcom/laborbook/keep/screen/BookKeepActivity$canShowDailyCalendarExitInterstitial$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 594
    iget v2, v0, Lcom/laborbook/keep/screen/BookKeepActivity$canShowDailyCalendarExitInterstitial$1;->label:I

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v2, :cond_4

    if-eq v2, v5, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    iget v1, v0, Lcom/laborbook/keep/screen/BookKeepActivity$canShowDailyCalendarExitInterstitial$1;->I$2:I

    iget v2, v0, Lcom/laborbook/keep/screen/BookKeepActivity$canShowDailyCalendarExitInterstitial$1;->I$1:I

    iget v0, v0, Lcom/laborbook/keep/screen/BookKeepActivity$canShowDailyCalendarExitInterstitial$1;->I$0:I

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_3

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    iget v2, v0, Lcom/laborbook/keep/screen/BookKeepActivity$canShowDailyCalendarExitInterstitial$1;->I$1:I

    iget v4, v0, Lcom/laborbook/keep/screen/BookKeepActivity$canShowDailyCalendarExitInterstitial$1;->I$0:I

    iget-object v7, v0, Lcom/laborbook/keep/screen/BookKeepActivity$canShowDailyCalendarExitInterstitial$1;->L$0:Ljava/lang/Object;

    check-cast v7, Lcom/laborbook/keep/screen/BookKeepActivity;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_2

    :cond_3
    iget-object v2, v0, Lcom/laborbook/keep/screen/BookKeepActivity$canShowDailyCalendarExitInterstitial$1;->L$0:Ljava/lang/Object;

    check-cast v2, Lcom/laborbook/keep/screen/BookKeepActivity;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v7, v2

    goto :goto_1

    :cond_4
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 595
    iget-boolean p1, p0, Lcom/laborbook/keep/screen/BookKeepActivity;->calendarExitInterstitialShownThisSession:Z

    if-eqz p1, :cond_5

    invoke-static {v6}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 597
    :cond_5
    invoke-virtual {p0}, Lcom/laborbook/keep/screen/BookKeepActivity;->getDataStoreManager()Lcom/laborbook/base/datastore/DataStoreManager;

    move-result-object p1

    iput-object p0, v0, Lcom/laborbook/keep/screen/BookKeepActivity$canShowDailyCalendarExitInterstitial$1;->L$0:Ljava/lang/Object;

    iput v5, v0, Lcom/laborbook/keep/screen/BookKeepActivity$canShowDailyCalendarExitInterstitial$1;->label:I

    invoke-static {p1, v0}, Lcom/laborbook/base/datastore/DataStoreManagerExtensionsKt;->shouldShowGoogleAds(Lcom/laborbook/base/datastore/DataStoreManager;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_6

    return-object v1

    :cond_6
    move-object v7, p0

    :goto_1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_7

    invoke-static {v6}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 599
    :cond_7
    sget-object p1, Lcom/google/firebase/ktx/Firebase;->INSTANCE:Lcom/google/firebase/ktx/Firebase;

    invoke-static {p1}, Lcom/google/firebase/remoteconfig/ktx/RemoteConfigKt;->getRemoteConfig(Lcom/google/firebase/ktx/Firebase;)Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;

    move-result-object p1

    const-string v2, "interstitial_ads_per_day"

    invoke-virtual {p1, v2}, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;->getLong(Ljava/lang/String;)J

    move-result-wide v8

    long-to-int p1, v8

    const/16 v2, 0x64

    invoke-static {p1, v6, v2}, Lkotlin/ranges/RangesKt;->coerceIn(III)I

    move-result p1

    if-nez p1, :cond_8

    .line 600
    invoke-static {v6}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 602
    :cond_8
    invoke-direct {v7}, Lcom/laborbook/keep/screen/BookKeepActivity;->todayEpochDayUtc()I

    move-result v2

    .line 603
    invoke-virtual {v7}, Lcom/laborbook/keep/screen/BookKeepActivity;->getDataStoreManager()Lcom/laborbook/base/datastore/DataStoreManager;

    move-result-object v8

    sget-object v9, Lcom/laborbook/base/datastore/DataStoreManager;->Companion:Lcom/laborbook/base/datastore/DataStoreManager$Companion;

    invoke-virtual {v9}, Lcom/laborbook/base/datastore/DataStoreManager$Companion;->getLAST_INTERSTITIAL_EPOCH_DAY()Landroidx/datastore/preferences/core/Preferences$Key;

    move-result-object v9

    const/4 v10, -0x1

    invoke-static {v10}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lcom/laborbook/base/datastore/DataStoreManager;->read(Landroidx/datastore/preferences/core/Preferences$Key;Ljava/lang/Object;)Lkotlinx/coroutines/flow/Flow;

    move-result-object v8

    iput-object v7, v0, Lcom/laborbook/keep/screen/BookKeepActivity$canShowDailyCalendarExitInterstitial$1;->L$0:Ljava/lang/Object;

    iput p1, v0, Lcom/laborbook/keep/screen/BookKeepActivity$canShowDailyCalendarExitInterstitial$1;->I$0:I

    iput v2, v0, Lcom/laborbook/keep/screen/BookKeepActivity$canShowDailyCalendarExitInterstitial$1;->I$1:I

    iput v4, v0, Lcom/laborbook/keep/screen/BookKeepActivity$canShowDailyCalendarExitInterstitial$1;->label:I

    invoke-static {v8, v0}, Lkotlinx/coroutines/flow/FlowKt;->first(Lkotlinx/coroutines/flow/Flow;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v1, :cond_9

    return-object v1

    :cond_9
    move-object v11, v4

    move v4, p1

    move-object p1, v11

    :goto_2
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    .line 604
    invoke-virtual {v7}, Lcom/laborbook/keep/screen/BookKeepActivity;->getDataStoreManager()Lcom/laborbook/base/datastore/DataStoreManager;

    move-result-object v7

    sget-object v8, Lcom/laborbook/base/datastore/DataStoreManager;->Companion:Lcom/laborbook/base/datastore/DataStoreManager$Companion;

    invoke-virtual {v8}, Lcom/laborbook/base/datastore/DataStoreManager$Companion;->getINTERSTITIAL_COUNT_TODAY()Landroidx/datastore/preferences/core/Preferences$Key;

    move-result-object v8

    invoke-static {v6}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lcom/laborbook/base/datastore/DataStoreManager;->read(Landroidx/datastore/preferences/core/Preferences$Key;Ljava/lang/Object;)Lkotlinx/coroutines/flow/Flow;

    move-result-object v7

    const/4 v8, 0x0

    iput-object v8, v0, Lcom/laborbook/keep/screen/BookKeepActivity$canShowDailyCalendarExitInterstitial$1;->L$0:Ljava/lang/Object;

    iput v4, v0, Lcom/laborbook/keep/screen/BookKeepActivity$canShowDailyCalendarExitInterstitial$1;->I$0:I

    iput v2, v0, Lcom/laborbook/keep/screen/BookKeepActivity$canShowDailyCalendarExitInterstitial$1;->I$1:I

    iput p1, v0, Lcom/laborbook/keep/screen/BookKeepActivity$canShowDailyCalendarExitInterstitial$1;->I$2:I

    iput v3, v0, Lcom/laborbook/keep/screen/BookKeepActivity$canShowDailyCalendarExitInterstitial$1;->label:I

    invoke-static {v7, v0}, Lkotlinx/coroutines/flow/FlowKt;->first(Lkotlinx/coroutines/flow/Flow;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v1, :cond_a

    return-object v1

    :cond_a
    move v1, p1

    move-object p1, v0

    move v0, v4

    :goto_3
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    if-eq v1, v2, :cond_b

    move p1, v6

    :cond_b
    if-ge p1, v0, :cond_c

    goto :goto_4

    :cond_c
    move v5, v6

    .line 606
    :goto_4
    invoke-static {v5}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method private final checkAndShowHardPaywall()V
    .locals 7

    .line 151
    move-object v0, p0

    check-cast v0, Landroidx/lifecycle/LifecycleOwner;

    invoke-static {v0}, Landroidx/lifecycle/LifecycleOwnerKt;->getLifecycleScope(Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LifecycleCoroutineScope;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lkotlinx/coroutines/CoroutineScope;

    new-instance v0, Lcom/laborbook/keep/screen/BookKeepActivity$checkAndShowHardPaywall$1;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lcom/laborbook/keep/screen/BookKeepActivity$checkAndShowHardPaywall$1;-><init>(Lcom/laborbook/keep/screen/BookKeepActivity;Lkotlin/coroutines/Continuation;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method private final checkAndShowReferFriendBottomSheet(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Lcom/laborbook/keep/screen/BookKeepActivity$checkAndShowReferFriendBottomSheet$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/laborbook/keep/screen/BookKeepActivity$checkAndShowReferFriendBottomSheet$1;

    iget v1, v0, Lcom/laborbook/keep/screen/BookKeepActivity$checkAndShowReferFriendBottomSheet$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p1, v0, Lcom/laborbook/keep/screen/BookKeepActivity$checkAndShowReferFriendBottomSheet$1;->label:I

    sub-int/2addr p1, v2

    iput p1, v0, Lcom/laborbook/keep/screen/BookKeepActivity$checkAndShowReferFriendBottomSheet$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/laborbook/keep/screen/BookKeepActivity$checkAndShowReferFriendBottomSheet$1;

    invoke-direct {v0, p0, p1}, Lcom/laborbook/keep/screen/BookKeepActivity$checkAndShowReferFriendBottomSheet$1;-><init>(Lcom/laborbook/keep/screen/BookKeepActivity;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p1, v0, Lcom/laborbook/keep/screen/BookKeepActivity$checkAndShowReferFriendBottomSheet$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 835
    iget v2, v0, Lcom/laborbook/keep/screen/BookKeepActivity$checkAndShowReferFriendBottomSheet$1;->label:I

    const/4 v3, 0x5

    const/4 v4, 0x4

    const/4 v5, 0x3

    const/4 v6, 0x2

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-eqz v2, :cond_6

    if-eq v2, v7, :cond_5

    if-eq v2, v6, :cond_4

    if-eq v2, v5, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    iget-object v0, v0, Lcom/laborbook/keep/screen/BookKeepActivity$checkAndShowReferFriendBottomSheet$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lcom/laborbook/keep/screen/BookKeepActivity;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_5

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    iget-object v2, v0, Lcom/laborbook/keep/screen/BookKeepActivity$checkAndShowReferFriendBottomSheet$1;->L$0:Ljava/lang/Object;

    check-cast v2, Lcom/laborbook/keep/screen/BookKeepActivity;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_4

    :cond_3
    iget-boolean v2, v0, Lcom/laborbook/keep/screen/BookKeepActivity$checkAndShowReferFriendBottomSheet$1;->Z$0:Z

    iget-object v5, v0, Lcom/laborbook/keep/screen/BookKeepActivity$checkAndShowReferFriendBottomSheet$1;->L$0:Ljava/lang/Object;

    check-cast v5, Lcom/laborbook/keep/screen/BookKeepActivity;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_3

    :cond_4
    iget-object v2, v0, Lcom/laborbook/keep/screen/BookKeepActivity$checkAndShowReferFriendBottomSheet$1;->L$0:Ljava/lang/Object;

    check-cast v2, Lcom/laborbook/keep/screen/BookKeepActivity;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_2

    :cond_5
    iget-object v2, v0, Lcom/laborbook/keep/screen/BookKeepActivity$checkAndShowReferFriendBottomSheet$1;->L$0:Ljava/lang/Object;

    check-cast v2, Lcom/laborbook/keep/screen/BookKeepActivity;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_6
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 837
    iget-boolean p1, p0, Lcom/laborbook/keep/screen/BookKeepActivity;->referFriendBottomSheetCheckedThisSession:Z

    if-eqz p1, :cond_7

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 838
    :cond_7
    iput-boolean v7, p0, Lcom/laborbook/keep/screen/BookKeepActivity;->referFriendBottomSheetCheckedThisSession:Z

    .line 841
    invoke-virtual {p0}, Lcom/laborbook/keep/screen/BookKeepActivity;->getDataStoreManager()Lcom/laborbook/base/datastore/DataStoreManager;

    move-result-object p1

    sget-object v2, Lcom/laborbook/base/datastore/DataStoreManager;->Companion:Lcom/laborbook/base/datastore/DataStoreManager$Companion;

    invoke-virtual {v2}, Lcom/laborbook/base/datastore/DataStoreManager$Companion;->getIS_LOGGED_IN()Landroidx/datastore/preferences/core/Preferences$Key;

    move-result-object v2

    invoke-static {v8}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {p1, v2, v9}, Lcom/laborbook/base/datastore/DataStoreManager;->read(Landroidx/datastore/preferences/core/Preferences$Key;Ljava/lang/Object;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p1

    iput-object p0, v0, Lcom/laborbook/keep/screen/BookKeepActivity$checkAndShowReferFriendBottomSheet$1;->L$0:Ljava/lang/Object;

    iput v7, v0, Lcom/laborbook/keep/screen/BookKeepActivity$checkAndShowReferFriendBottomSheet$1;->label:I

    invoke-static {p1, v0}, Lkotlinx/coroutines/flow/FlowKt;->first(Lkotlinx/coroutines/flow/Flow;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_8

    return-object v1

    :cond_8
    move-object v2, p0

    :goto_1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_9

    .line 842
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 845
    :cond_9
    invoke-virtual {v2}, Lcom/laborbook/keep/screen/BookKeepActivity;->getDataStoreManager()Lcom/laborbook/base/datastore/DataStoreManager;

    move-result-object p1

    sget-object v7, Lcom/laborbook/base/datastore/DataStoreManager;->Companion:Lcom/laborbook/base/datastore/DataStoreManager$Companion;

    invoke-virtual {v7}, Lcom/laborbook/base/datastore/DataStoreManager$Companion;->getIS_EXISTING_USER()Landroidx/datastore/preferences/core/Preferences$Key;

    move-result-object v7

    invoke-static {v8}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {p1, v7, v9}, Lcom/laborbook/base/datastore/DataStoreManager;->read(Landroidx/datastore/preferences/core/Preferences$Key;Ljava/lang/Object;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p1

    iput-object v2, v0, Lcom/laborbook/keep/screen/BookKeepActivity$checkAndShowReferFriendBottomSheet$1;->L$0:Ljava/lang/Object;

    iput v6, v0, Lcom/laborbook/keep/screen/BookKeepActivity$checkAndShowReferFriendBottomSheet$1;->label:I

    invoke-static {p1, v0}, Lkotlinx/coroutines/flow/FlowKt;->first(Lkotlinx/coroutines/flow/Flow;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_a

    return-object v1

    :cond_a
    :goto_2
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 846
    invoke-virtual {v2}, Lcom/laborbook/keep/screen/BookKeepActivity;->getDataStoreManager()Lcom/laborbook/base/datastore/DataStoreManager;

    move-result-object v6

    sget-object v7, Lcom/laborbook/base/datastore/DataStoreManager;->Companion:Lcom/laborbook/base/datastore/DataStoreManager$Companion;

    invoke-virtual {v7}, Lcom/laborbook/base/datastore/DataStoreManager$Companion;->getPRO_STATUS()Landroidx/datastore/preferences/core/Preferences$Key;

    move-result-object v7

    invoke-static {v8}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v6, v7, v9}, Lcom/laborbook/base/datastore/DataStoreManager;->read(Landroidx/datastore/preferences/core/Preferences$Key;Ljava/lang/Object;)Lkotlinx/coroutines/flow/Flow;

    move-result-object v6

    iput-object v2, v0, Lcom/laborbook/keep/screen/BookKeepActivity$checkAndShowReferFriendBottomSheet$1;->L$0:Ljava/lang/Object;

    iput-boolean p1, v0, Lcom/laborbook/keep/screen/BookKeepActivity$checkAndShowReferFriendBottomSheet$1;->Z$0:Z

    iput v5, v0, Lcom/laborbook/keep/screen/BookKeepActivity$checkAndShowReferFriendBottomSheet$1;->label:I

    invoke-static {v6, v0}, Lkotlinx/coroutines/flow/FlowKt;->first(Lkotlinx/coroutines/flow/Flow;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v5

    if-ne v5, v1, :cond_b

    return-object v1

    :cond_b
    move-object v10, v2

    move v2, p1

    move-object p1, v5

    move-object v5, v10

    :goto_3
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez v2, :cond_c

    if-nez p1, :cond_c

    .line 847
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 850
    :cond_c
    invoke-virtual {v5}, Lcom/laborbook/keep/screen/BookKeepActivity;->getDataStoreManager()Lcom/laborbook/base/datastore/DataStoreManager;

    move-result-object p1

    sget-object v2, Lcom/laborbook/base/datastore/DataStoreManager;->Companion:Lcom/laborbook/base/datastore/DataStoreManager$Companion;

    invoke-virtual {v2}, Lcom/laborbook/base/datastore/DataStoreManager$Companion;->getREFER_FRIEND_BOTTOM_SHEET_SHOWN()Landroidx/datastore/preferences/core/Preferences$Key;

    move-result-object v2

    invoke-static {v8}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {p1, v2, v6}, Lcom/laborbook/base/datastore/DataStoreManager;->read(Landroidx/datastore/preferences/core/Preferences$Key;Ljava/lang/Object;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p1

    iput-object v5, v0, Lcom/laborbook/keep/screen/BookKeepActivity$checkAndShowReferFriendBottomSheet$1;->L$0:Ljava/lang/Object;

    iput v4, v0, Lcom/laborbook/keep/screen/BookKeepActivity$checkAndShowReferFriendBottomSheet$1;->label:I

    invoke-static {p1, v0}, Lkotlinx/coroutines/flow/FlowKt;->first(Lkotlinx/coroutines/flow/Flow;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_d

    return-object v1

    :cond_d
    move-object v2, v5

    :goto_4
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_e

    .line 851
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 854
    :cond_e
    iput-object v2, v0, Lcom/laborbook/keep/screen/BookKeepActivity$checkAndShowReferFriendBottomSheet$1;->L$0:Ljava/lang/Object;

    iput v3, v0, Lcom/laborbook/keep/screen/BookKeepActivity$checkAndShowReferFriendBottomSheet$1;->label:I

    const-wide/16 v3, 0x5dc

    invoke-static {v3, v4, v0}, Lkotlinx/coroutines/DelayKt;->delay(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_f

    return-object v1

    :cond_f
    move-object v0, v2

    .line 857
    :goto_5
    invoke-virtual {v0}, Lcom/laborbook/keep/screen/BookKeepActivity;->isFinishing()Z

    move-result p1

    if-nez p1, :cond_10

    invoke-virtual {v0}, Lcom/laborbook/keep/screen/BookKeepActivity;->isDestroyed()Z

    move-result p1

    if-nez p1, :cond_10

    .line 858
    new-instance p1, Lcom/laborbook/keep/screen/BookKeepActivity$$ExternalSyntheticLambda10;

    invoke-direct {p1, v0}, Lcom/laborbook/keep/screen/BookKeepActivity$$ExternalSyntheticLambda10;-><init>(Lcom/laborbook/keep/screen/BookKeepActivity;)V

    invoke-virtual {v0, p1}, Lcom/laborbook/keep/screen/BookKeepActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_6

    .line 873
    :cond_10
    iput-boolean v8, v0, Lcom/laborbook/keep/screen/BookKeepActivity;->referFriendBottomSheetCheckedThisSession:Z

    .line 875
    :goto_6
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method private static final checkAndShowReferFriendBottomSheet$lambda$22(Lcom/laborbook/keep/screen/BookKeepActivity;)V
    .locals 7

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 860
    :try_start_0
    sget-object v0, Lcom/laborbook/keep/screen/home/fragment/ReferFriendBottomSheetFragment;->Companion:Lcom/laborbook/keep/screen/home/fragment/ReferFriendBottomSheetFragment$Companion;

    invoke-virtual {v0}, Lcom/laborbook/keep/screen/home/fragment/ReferFriendBottomSheetFragment$Companion;->newInstance()Lcom/laborbook/keep/screen/home/fragment/ReferFriendBottomSheetFragment;

    move-result-object v0

    .line 861
    invoke-virtual {p0}, Lcom/laborbook/keep/screen/BookKeepActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    const-string v2, "ReferFriendBottomSheetFragment"

    invoke-virtual {v0, v1, v2}, Lcom/laborbook/keep/screen/home/fragment/ReferFriendBottomSheetFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    .line 864
    move-object v0, p0

    check-cast v0, Landroidx/lifecycle/LifecycleOwner;

    invoke-static {v0}, Landroidx/lifecycle/LifecycleOwnerKt;->getLifecycleScope(Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LifecycleCoroutineScope;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lkotlinx/coroutines/CoroutineScope;

    new-instance v0, Lcom/laborbook/keep/screen/BookKeepActivity$checkAndShowReferFriendBottomSheet$2$1;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lcom/laborbook/keep/screen/BookKeepActivity$checkAndShowReferFriendBottomSheet$2$1;-><init>(Lcom/laborbook/keep/screen/BookKeepActivity;Lkotlin/coroutines/Continuation;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    .line 869
    iput-boolean v0, p0, Lcom/laborbook/keep/screen/BookKeepActivity;->referFriendBottomSheetCheckedThisSession:Z

    :goto_0
    return-void
.end method

.method private final checkAppLockIfNeeded(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Lcom/laborbook/keep/screen/BookKeepActivity$checkAppLockIfNeeded$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/laborbook/keep/screen/BookKeepActivity$checkAppLockIfNeeded$1;

    iget v1, v0, Lcom/laborbook/keep/screen/BookKeepActivity$checkAppLockIfNeeded$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p1, v0, Lcom/laborbook/keep/screen/BookKeepActivity$checkAppLockIfNeeded$1;->label:I

    sub-int/2addr p1, v2

    iput p1, v0, Lcom/laborbook/keep/screen/BookKeepActivity$checkAppLockIfNeeded$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/laborbook/keep/screen/BookKeepActivity$checkAppLockIfNeeded$1;

    invoke-direct {v0, p0, p1}, Lcom/laborbook/keep/screen/BookKeepActivity$checkAppLockIfNeeded$1;-><init>(Lcom/laborbook/keep/screen/BookKeepActivity;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p1, v0, Lcom/laborbook/keep/screen/BookKeepActivity$checkAppLockIfNeeded$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 571
    iget v2, v0, Lcom/laborbook/keep/screen/BookKeepActivity$checkAppLockIfNeeded$1;->label:I

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v5, :cond_2

    if-ne v2, v3, :cond_1

    iget-object v0, v0, Lcom/laborbook/keep/screen/BookKeepActivity$checkAppLockIfNeeded$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lcom/laborbook/keep/screen/BookKeepActivity;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_2

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    iget-object v2, v0, Lcom/laborbook/keep/screen/BookKeepActivity$checkAppLockIfNeeded$1;->L$0:Ljava/lang/Object;

    check-cast v2, Lcom/laborbook/keep/screen/BookKeepActivity;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 572
    invoke-virtual {p0}, Lcom/laborbook/keep/screen/BookKeepActivity;->getDataStoreManager()Lcom/laborbook/base/datastore/DataStoreManager;

    move-result-object p1

    sget-object v2, Lcom/laborbook/base/datastore/DataStoreManager;->Companion:Lcom/laborbook/base/datastore/DataStoreManager$Companion;

    invoke-virtual {v2}, Lcom/laborbook/base/datastore/DataStoreManager$Companion;->getAPP_LOCK_ENABLED()Landroidx/datastore/preferences/core/Preferences$Key;

    move-result-object v2

    invoke-static {v4}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {p1, v2, v6}, Lcom/laborbook/base/datastore/DataStoreManager;->read(Landroidx/datastore/preferences/core/Preferences$Key;Ljava/lang/Object;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p1

    iput-object p0, v0, Lcom/laborbook/keep/screen/BookKeepActivity$checkAppLockIfNeeded$1;->L$0:Ljava/lang/Object;

    iput v5, v0, Lcom/laborbook/keep/screen/BookKeepActivity$checkAppLockIfNeeded$1;->label:I

    invoke-static {p1, v0}, Lkotlinx/coroutines/flow/FlowKt;->first(Lkotlinx/coroutines/flow/Flow;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_4

    return-object v1

    :cond_4
    move-object v2, p0

    :goto_1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_5

    .line 573
    invoke-static {v4}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 575
    :cond_5
    invoke-virtual {v2}, Lcom/laborbook/keep/screen/BookKeepActivity;->getDataStoreManager()Lcom/laborbook/base/datastore/DataStoreManager;

    move-result-object p1

    sget-object v6, Lcom/laborbook/base/datastore/DataStoreManager;->Companion:Lcom/laborbook/base/datastore/DataStoreManager$Companion;

    invoke-virtual {v6}, Lcom/laborbook/base/datastore/DataStoreManager$Companion;->getLAST_AUTH_TIME()Landroidx/datastore/preferences/core/Preferences$Key;

    move-result-object v6

    const-string v7, "0"

    invoke-virtual {p1, v6, v7}, Lcom/laborbook/base/datastore/DataStoreManager;->read(Landroidx/datastore/preferences/core/Preferences$Key;Ljava/lang/Object;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p1

    iput-object v2, v0, Lcom/laborbook/keep/screen/BookKeepActivity$checkAppLockIfNeeded$1;->L$0:Ljava/lang/Object;

    iput v3, v0, Lcom/laborbook/keep/screen/BookKeepActivity$checkAppLockIfNeeded$1;->label:I

    invoke-static {p1, v0}, Lkotlinx/coroutines/flow/FlowKt;->first(Lkotlinx/coroutines/flow/Flow;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_6

    return-object v1

    :cond_6
    move-object v0, v2

    .line 571
    :goto_2
    check-cast p1, Ljava/lang/String;

    .line 576
    invoke-static {p1}, Lkotlin/text/StringsKt;->toLongOrNull(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p1

    const-wide/16 v1, 0x0

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    goto :goto_3

    :cond_7
    move-wide v6, v1

    .line 577
    :goto_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v6

    cmp-long p1, v6, v1

    if-eqz p1, :cond_9

    const-wide/16 v1, 0x7530

    cmp-long p1, v8, v1

    if-lez p1, :cond_8

    goto :goto_4

    .line 587
    :cond_8
    invoke-static {v4}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 583
    :cond_9
    :goto_4
    new-instance p1, Landroid/content/Intent;

    move-object v1, v0

    check-cast v1, Landroid/content/Context;

    const-class v2, Lcom/laborbook/keep/screen/AppLockActivity;

    invoke-direct {p1, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 584
    iget-object v0, v0, Lcom/laborbook/keep/screen/BookKeepActivity;->appLockLauncher:Landroidx/activity/result/ActivityResultLauncher;

    if-nez v0, :cond_a

    const-string v0, "appLockLauncher"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_a
    invoke-virtual {v0, p1}, Landroidx/activity/result/ActivityResultLauncher;->launch(Ljava/lang/Object;)V

    .line 585
    invoke-static {v5}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method private final checkForNotificationPermission()V
    .locals 3

    .line 340
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x21

    if-lt v0, v1, :cond_1

    .line 342
    move-object v0, p0

    check-cast v0, Landroid/content/Context;

    .line 341
    const-string v1, "android.permission.POST_NOTIFICATIONS"

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    goto :goto_0

    .line 351
    :cond_0
    iget-object v0, p0, Lcom/laborbook/keep/screen/BookKeepActivity;->requestNotificationPermissionLauncher:Landroidx/activity/result/ActivityResultLauncher;

    invoke-virtual {v0, v1}, Landroidx/activity/result/ActivityResultLauncher;->launch(Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private final checkForUpdate()V
    .locals 4

    .line 502
    move-object v0, p0

    check-cast v0, Lcom/laborbook/base/BaseActivity;

    const/4 v1, 0x2

    const-string v2, "check_for_update"

    const/4 v3, 0x0

    invoke-static {v0, v2, v3, v1, v3}, Lcom/laborbook/base/BaseActivity;->triggerSystemEvent$default(Lcom/laborbook/base/BaseActivity;Ljava/lang/String;Ljava/util/HashMap;ILjava/lang/Object;)V

    .line 503
    iget-object v0, p0, Lcom/laborbook/keep/screen/BookKeepActivity;->appUpdateManager:Lcom/google/android/play/core/appupdate/AppUpdateManager;

    if-nez v0, :cond_0

    const-string v0, "appUpdateManager"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    move-object v3, v0

    :goto_0
    invoke-interface {v3}, Lcom/google/android/play/core/appupdate/AppUpdateManager;->getAppUpdateInfo()Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    const-string v1, "getAppUpdateInfo(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 505
    new-instance v1, Lcom/laborbook/keep/screen/BookKeepActivity$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/laborbook/keep/screen/BookKeepActivity$$ExternalSyntheticLambda3;-><init>(Lcom/laborbook/keep/screen/BookKeepActivity;)V

    new-instance v2, Lcom/laborbook/keep/screen/BookKeepActivity$$ExternalSyntheticLambda4;

    invoke-direct {v2, v1}, Lcom/laborbook/keep/screen/BookKeepActivity$$ExternalSyntheticLambda4;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v0, v2}, Lcom/google/android/gms/tasks/Task;->addOnSuccessListener(Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method

.method private static final checkForUpdate$lambda$18(Lcom/laborbook/keep/screen/BookKeepActivity;Lcom/google/android/play/core/appupdate/AppUpdateInfo;)Lkotlin/Unit;
    .locals 7

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 506
    invoke-virtual {p1}, Lcom/google/android/play/core/appupdate/AppUpdateInfo;->updateAvailability()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    .line 508
    invoke-virtual {p1, v0}, Lcom/google/android/play/core/appupdate/AppUpdateInfo;->isUpdateTypeAllowed(I)Z

    move-result v1

    const-string v2, "update_type"

    const-string v3, "update_available"

    const/4 v4, 0x0

    if-eqz v1, :cond_0

    .line 509
    new-array v1, v0, [Lkotlin/Pair;

    new-instance v5, Lkotlin/Pair;

    const-string v6, "IMMEDIATE"

    invoke-direct {v5, v2, v6}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v5, v1, v4

    invoke-static {v1}, Lkotlin/collections/MapsKt;->hashMapOf([Lkotlin/Pair;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {p0, v3, v1}, Lcom/laborbook/keep/screen/BookKeepActivity;->triggerSystemEvent(Ljava/lang/String;Ljava/util/HashMap;)V

    .line 510
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {p0, p1, v0}, Lcom/laborbook/keep/screen/BookKeepActivity;->startUpdate(Lcom/google/android/play/core/appupdate/AppUpdateInfo;I)V

    goto :goto_0

    .line 511
    :cond_0
    invoke-virtual {p1, v4}, Lcom/google/android/play/core/appupdate/AppUpdateInfo;->isUpdateTypeAllowed(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 512
    new-array v0, v0, [Lkotlin/Pair;

    new-instance v1, Lkotlin/Pair;

    const-string v5, "FLEXIBLE"

    invoke-direct {v1, v2, v5}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v1, v0, v4

    invoke-static {v0}, Lkotlin/collections/MapsKt;->hashMapOf([Lkotlin/Pair;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {p0, v3, v0}, Lcom/laborbook/keep/screen/BookKeepActivity;->triggerSystemEvent(Ljava/lang/String;Ljava/util/HashMap;)V

    .line 513
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {p0, p1, v4}, Lcom/laborbook/keep/screen/BookKeepActivity;->startUpdate(Lcom/google/android/play/core/appupdate/AppUpdateInfo;I)V

    .line 516
    :cond_1
    :goto_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final checkForUpdate$lambda$19(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V
    .locals 1

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 505
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private final enableEdgeToEdge()V
    .locals 10

    .line 281
    invoke-virtual {p0}, Lcom/laborbook/keep/screen/BookKeepActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroidx/core/view/WindowCompat;->setDecorFitsSystemWindows(Landroid/view/Window;Z)V

    .line 283
    iget-object v0, p0, Lcom/laborbook/keep/screen/BookKeepActivity;->binding:Lcom/laborbook/keep/databinding/ActivityBookKeepBinding;

    const/4 v1, 0x0

    const-string v2, "binding"

    if-nez v0, :cond_0

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    invoke-virtual {v0}, Lcom/laborbook/keep/databinding/ActivityBookKeepBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v0

    const-string v3, "getRoot(...)"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 284
    iget-object v3, p0, Lcom/laborbook/keep/screen/BookKeepActivity;->binding:Lcom/laborbook/keep/databinding/ActivityBookKeepBinding;

    if-nez v3, :cond_1

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v3, v1

    :cond_1
    iget-object v3, v3, Lcom/laborbook/keep/databinding/ActivityBookKeepBinding;->bottomNav:Lcom/google/android/material/bottomnavigation/BottomNavigationView;

    const-string v4, "bottomNav"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 285
    iget-object v4, p0, Lcom/laborbook/keep/screen/BookKeepActivity;->binding:Lcom/laborbook/keep/databinding/ActivityBookKeepBinding;

    if-nez v4, :cond_2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v4, v1

    :cond_2
    iget-object v9, v4, Lcom/laborbook/keep/databinding/ActivityBookKeepBinding;->adContainer:Landroid/widget/FrameLayout;

    const-string v4, "adContainer"

    invoke-static {v9, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 286
    iget-object v4, p0, Lcom/laborbook/keep/screen/BookKeepActivity;->binding:Lcom/laborbook/keep/databinding/ActivityBookKeepBinding;

    if-nez v4, :cond_3

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v4, v1

    :cond_3
    iget-object v5, v4, Lcom/laborbook/keep/databinding/ActivityBookKeepBinding;->adView:Lcom/google/android/gms/ads/AdView;

    const-string v4, "adView"

    invoke-static {v5, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 287
    iget-object v4, p0, Lcom/laborbook/keep/screen/BookKeepActivity;->binding:Lcom/laborbook/keep/databinding/ActivityBookKeepBinding;

    if-nez v4, :cond_4

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    move-object v1, v4

    :goto_0
    iget-object v6, v1, Lcom/laborbook/keep/databinding/ActivityBookKeepBinding;->customAdView:Lcom/laborbook/base/ads/CustomAdView;

    const-string v1, "customAdView"

    invoke-static {v6, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 290
    move-object v1, v0

    check-cast v1, Landroid/view/View;

    new-instance v2, Lcom/laborbook/keep/screen/BookKeepActivity$$ExternalSyntheticLambda5;

    invoke-direct {v2}, Lcom/laborbook/keep/screen/BookKeepActivity$$ExternalSyntheticLambda5;-><init>()V

    invoke-static {v1, v2}, Landroidx/core/view/ViewCompat;->setOnApplyWindowInsetsListener(Landroid/view/View;Landroidx/core/view/OnApplyWindowInsetsListener;)V

    .line 297
    new-instance v2, Lcom/laborbook/keep/screen/BookKeepActivity$$ExternalSyntheticLambda6;

    move-object v4, v2

    move-object v7, p0

    move-object v8, v3

    invoke-direct/range {v4 .. v9}, Lcom/laborbook/keep/screen/BookKeepActivity$$ExternalSyntheticLambda6;-><init>(Lcom/google/android/gms/ads/AdView;Lcom/laborbook/base/ads/CustomAdView;Lcom/laborbook/keep/screen/BookKeepActivity;Lcom/google/android/material/bottomnavigation/BottomNavigationView;Landroid/widget/FrameLayout;)V

    .line 320
    check-cast v3, Landroid/view/View;

    new-instance v4, Lcom/laborbook/keep/screen/BookKeepActivity$$ExternalSyntheticLambda7;

    invoke-direct {v4, v2}, Lcom/laborbook/keep/screen/BookKeepActivity$$ExternalSyntheticLambda7;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-static {v3, v4}, Landroidx/core/view/ViewCompat;->setOnApplyWindowInsetsListener(Landroid/view/View;Landroidx/core/view/OnApplyWindowInsetsListener;)V

    .line 326
    new-instance v3, Lcom/laborbook/keep/screen/BookKeepActivity$$ExternalSyntheticLambda8;

    invoke-direct {v3, v0, v2}, Lcom/laborbook/keep/screen/BookKeepActivity$$ExternalSyntheticLambda8;-><init>(Landroidx/constraintlayout/widget/ConstraintLayout;Lkotlin/jvm/functions/Function1;)V

    .line 336
    new-instance v0, Landroidx/core/view/WindowInsetsControllerCompat;

    invoke-virtual {p0}, Lcom/laborbook/keep/screen/BookKeepActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-direct {v0, v2, v1}, Landroidx/core/view/WindowInsetsControllerCompat;-><init>(Landroid/view/Window;Landroid/view/View;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/core/view/WindowInsetsControllerCompat;->setAppearanceLightStatusBars(Z)V

    return-void
.end method

.method private static final enableEdgeToEdge$lambda$10(Lcom/google/android/gms/ads/AdView;Lcom/laborbook/base/ads/CustomAdView;Lcom/laborbook/keep/screen/BookKeepActivity;Lcom/google/android/material/bottomnavigation/BottomNavigationView;Landroid/widget/FrameLayout;Landroidx/core/view/WindowInsetsCompat;)Lkotlin/Unit;
    .locals 2

    const-string v0, "$ad"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$customAd"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "this$0"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$nav"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$adContainer"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "insets"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 298
    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Type;->navigationBars()I

    move-result v0

    invoke-virtual {p5, v0}, Landroidx/core/view/WindowInsetsCompat;->getInsets(I)Landroidx/core/graphics/Insets;

    move-result-object p5

    const-string v0, "getInsets(...)"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 299
    iget p5, p5, Landroidx/core/graphics/Insets;->bottom:I

    .line 301
    invoke-virtual {p0}, Lcom/google/android/gms/ads/AdView;->getVisibility()I

    move-result p0

    const-string v0, "null cannot be cast to non-null type android.view.ViewGroup.MarginLayoutParams"

    const/4 v1, 0x0

    if-eqz p0, :cond_2

    invoke-virtual {p1}, Lcom/laborbook/base/ads/CustomAdView;->getVisibility()I

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    .line 312
    :cond_0
    check-cast p4, Landroid/view/View;

    .line 958
    invoke-virtual {p4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    if-eqz p0, :cond_1

    check-cast p0, Landroid/view/ViewGroup$MarginLayoutParams;

    check-cast p0, Landroid/view/ViewGroup$LayoutParams;

    .line 959
    move-object p1, p0

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 313
    iput v1, p1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 960
    invoke-virtual {p4, p0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 315
    check-cast p3, Landroid/view/View;

    .line 963
    invoke-virtual {p3}, Landroid/view/View;->getPaddingLeft()I

    move-result p0

    .line 964
    invoke-virtual {p3}, Landroid/view/View;->getPaddingTop()I

    move-result p1

    .line 965
    invoke-virtual {p3}, Landroid/view/View;->getPaddingRight()I

    move-result p2

    .line 968
    invoke-virtual {p3, p0, p1, p2, p5}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_2

    .line 958
    :cond_1
    new-instance p0, Ljava/lang/NullPointerException;

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 305
    :cond_2
    :goto_0
    iget-object p0, p2, Lcom/laborbook/keep/screen/BookKeepActivity;->binding:Lcom/laborbook/keep/databinding/ActivityBookKeepBinding;

    if-nez p0, :cond_3

    const-string p0, "binding"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_3
    iget-object p0, p0, Lcom/laborbook/keep/databinding/ActivityBookKeepBinding;->adContainer:Landroid/widget/FrameLayout;

    if-eqz p0, :cond_5

    check-cast p0, Landroid/view/View;

    .line 946
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    if-eqz p1, :cond_4

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    check-cast p1, Landroid/view/ViewGroup$LayoutParams;

    .line 947
    move-object p2, p1

    check-cast p2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 306
    iput p5, p2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 948
    invoke-virtual {p0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    .line 946
    :cond_4
    new-instance p0, Ljava/lang/NullPointerException;

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 309
    :cond_5
    :goto_1
    check-cast p3, Landroid/view/View;

    .line 951
    invoke-virtual {p3}, Landroid/view/View;->getPaddingLeft()I

    move-result p0

    .line 952
    invoke-virtual {p3}, Landroid/view/View;->getPaddingTop()I

    move-result p1

    .line 953
    invoke-virtual {p3}, Landroid/view/View;->getPaddingRight()I

    move-result p2

    .line 956
    invoke-virtual {p3, p0, p1, p2, v1}, Landroid/view/View;->setPadding(IIII)V

    .line 317
    :goto_2
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final enableEdgeToEdge$lambda$11(Lkotlin/jvm/functions/Function1;Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;
    .locals 1

    const-string v0, "$applyBottomInset"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "<unused var>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "insets"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 321
    invoke-interface {p0, p2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p2
.end method

.method private static final enableEdgeToEdge$lambda$12(Landroidx/constraintlayout/widget/ConstraintLayout;Lkotlin/jvm/functions/Function1;)Lkotlin/Unit;
    .locals 1

    const-string v0, "$root"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$applyBottomInset"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 327
    check-cast p0, Landroid/view/View;

    invoke-static {p0}, Landroidx/core/view/ViewCompat;->getRootWindowInsets(Landroid/view/View;)Landroidx/core/view/WindowInsetsCompat;

    move-result-object p0

    if-nez p0, :cond_0

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    .line 328
    :cond_0
    invoke-interface {p1, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 329
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final enableEdgeToEdge$lambda$7(Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;
    .locals 4

    const-string v0, "v"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "insets"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 291
    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Type;->statusBars()I

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/core/view/WindowInsetsCompat;->getInsets(I)Landroidx/core/graphics/Insets;

    move-result-object v0

    const-string v1, "getInsets(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 292
    iget v0, v0, Landroidx/core/graphics/Insets;->top:I

    .line 939
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    .line 941
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    .line 942
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v3

    .line 944
    invoke-virtual {p0, v1, v0, v2, v3}, Landroid/view/View;->setPadding(IIII)V

    return-object p1
.end method

.method private final ensureNetworkHeaders()V
    .locals 7

    .line 261
    move-object v0, p0

    check-cast v0, Landroidx/lifecycle/LifecycleOwner;

    invoke-static {v0}, Landroidx/lifecycle/LifecycleOwnerKt;->getLifecycleScope(Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LifecycleCoroutineScope;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lkotlinx/coroutines/CoroutineScope;

    new-instance v0, Lcom/laborbook/keep/screen/BookKeepActivity$ensureNetworkHeaders$1;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lcom/laborbook/keep/screen/BookKeepActivity$ensureNetworkHeaders$1;-><init>(Lcom/laborbook/keep/screen/BookKeepActivity;Lkotlin/coroutines/Continuation;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method private final ensureNetworkHeadersSync(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Lcom/laborbook/keep/screen/BookKeepActivity$ensureNetworkHeadersSync$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/laborbook/keep/screen/BookKeepActivity$ensureNetworkHeadersSync$1;

    iget v1, v0, Lcom/laborbook/keep/screen/BookKeepActivity$ensureNetworkHeadersSync$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p1, v0, Lcom/laborbook/keep/screen/BookKeepActivity$ensureNetworkHeadersSync$1;->label:I

    sub-int/2addr p1, v2

    iput p1, v0, Lcom/laborbook/keep/screen/BookKeepActivity$ensureNetworkHeadersSync$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/laborbook/keep/screen/BookKeepActivity$ensureNetworkHeadersSync$1;

    invoke-direct {v0, p0, p1}, Lcom/laborbook/keep/screen/BookKeepActivity$ensureNetworkHeadersSync$1;-><init>(Lcom/laborbook/keep/screen/BookKeepActivity;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p1, v0, Lcom/laborbook/keep/screen/BookKeepActivity$ensureNetworkHeadersSync$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 250
    iget v2, v0, Lcom/laborbook/keep/screen/BookKeepActivity$ensureNetworkHeadersSync$1;->label:I

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x3

    const/4 v6, 0x2

    const/4 v7, 0x1

    const-string v8, ""

    if-eqz v2, :cond_5

    if-eq v2, v7, :cond_4

    if-eq v2, v6, :cond_3

    if-eq v2, v5, :cond_2

    if-ne v2, v4, :cond_1

    iget v5, v0, Lcom/laborbook/keep/screen/BookKeepActivity$ensureNetworkHeadersSync$1;->I$0:I

    iget-object v1, v0, Lcom/laborbook/keep/screen/BookKeepActivity$ensureNetworkHeadersSync$1;->L$2:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget-object v2, v0, Lcom/laborbook/keep/screen/BookKeepActivity$ensureNetworkHeadersSync$1;->L$1:Ljava/lang/Object;

    check-cast v2, [Lkotlin/Pair;

    iget-object v0, v0, Lcom/laborbook/keep/screen/BookKeepActivity$ensureNetworkHeadersSync$1;->L$0:Ljava/lang/Object;

    check-cast v0, [Lkotlin/Pair;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_4

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    iget v6, v0, Lcom/laborbook/keep/screen/BookKeepActivity$ensureNetworkHeadersSync$1;->I$0:I

    iget-object v2, v0, Lcom/laborbook/keep/screen/BookKeepActivity$ensureNetworkHeadersSync$1;->L$3:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    iget-object v7, v0, Lcom/laborbook/keep/screen/BookKeepActivity$ensureNetworkHeadersSync$1;->L$2:Ljava/lang/Object;

    check-cast v7, [Lkotlin/Pair;

    iget-object v9, v0, Lcom/laborbook/keep/screen/BookKeepActivity$ensureNetworkHeadersSync$1;->L$1:Ljava/lang/Object;

    check-cast v9, [Lkotlin/Pair;

    iget-object v10, v0, Lcom/laborbook/keep/screen/BookKeepActivity$ensureNetworkHeadersSync$1;->L$0:Ljava/lang/Object;

    check-cast v10, Lcom/laborbook/keep/screen/BookKeepActivity;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_3

    :cond_3
    iget v7, v0, Lcom/laborbook/keep/screen/BookKeepActivity$ensureNetworkHeadersSync$1;->I$0:I

    iget-object v2, v0, Lcom/laborbook/keep/screen/BookKeepActivity$ensureNetworkHeadersSync$1;->L$4:Ljava/lang/Object;

    check-cast v2, Ljava/lang/StringBuilder;

    iget-object v9, v0, Lcom/laborbook/keep/screen/BookKeepActivity$ensureNetworkHeadersSync$1;->L$3:Ljava/lang/Object;

    check-cast v9, Ljava/lang/String;

    iget-object v10, v0, Lcom/laborbook/keep/screen/BookKeepActivity$ensureNetworkHeadersSync$1;->L$2:Ljava/lang/Object;

    check-cast v10, [Lkotlin/Pair;

    iget-object v11, v0, Lcom/laborbook/keep/screen/BookKeepActivity$ensureNetworkHeadersSync$1;->L$1:Ljava/lang/Object;

    check-cast v11, [Lkotlin/Pair;

    iget-object v12, v0, Lcom/laborbook/keep/screen/BookKeepActivity$ensureNetworkHeadersSync$1;->L$0:Ljava/lang/Object;

    check-cast v12, Lcom/laborbook/keep/screen/BookKeepActivity;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_2

    :cond_4
    iget v2, v0, Lcom/laborbook/keep/screen/BookKeepActivity$ensureNetworkHeadersSync$1;->I$0:I

    iget-object v9, v0, Lcom/laborbook/keep/screen/BookKeepActivity$ensureNetworkHeadersSync$1;->L$3:Ljava/lang/Object;

    check-cast v9, Ljava/lang/String;

    iget-object v10, v0, Lcom/laborbook/keep/screen/BookKeepActivity$ensureNetworkHeadersSync$1;->L$2:Ljava/lang/Object;

    check-cast v10, [Lkotlin/Pair;

    iget-object v11, v0, Lcom/laborbook/keep/screen/BookKeepActivity$ensureNetworkHeadersSync$1;->L$1:Ljava/lang/Object;

    check-cast v11, [Lkotlin/Pair;

    iget-object v12, v0, Lcom/laborbook/keep/screen/BookKeepActivity$ensureNetworkHeadersSync$1;->L$0:Ljava/lang/Object;

    check-cast v12, Lcom/laborbook/keep/screen/BookKeepActivity;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_5
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 252
    new-array v10, v4, [Lkotlin/Pair;

    invoke-virtual {p0}, Lcom/laborbook/keep/screen/BookKeepActivity;->getDataStoreManager()Lcom/laborbook/base/datastore/DataStoreManager;

    move-result-object p1

    sget-object v2, Lcom/laborbook/base/datastore/DataStoreManager;->Companion:Lcom/laborbook/base/datastore/DataStoreManager$Companion;

    invoke-virtual {v2}, Lcom/laborbook/base/datastore/DataStoreManager$Companion;->getCOMPANY_ID()Landroidx/datastore/preferences/core/Preferences$Key;

    move-result-object v2

    invoke-virtual {p1, v2, v8}, Lcom/laborbook/base/datastore/DataStoreManager;->read(Landroidx/datastore/preferences/core/Preferences$Key;Ljava/lang/Object;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p1

    iput-object p0, v0, Lcom/laborbook/keep/screen/BookKeepActivity$ensureNetworkHeadersSync$1;->L$0:Ljava/lang/Object;

    iput-object v10, v0, Lcom/laborbook/keep/screen/BookKeepActivity$ensureNetworkHeadersSync$1;->L$1:Ljava/lang/Object;

    iput-object v10, v0, Lcom/laborbook/keep/screen/BookKeepActivity$ensureNetworkHeadersSync$1;->L$2:Ljava/lang/Object;

    const-string v9, "x-lb-companyID"

    iput-object v9, v0, Lcom/laborbook/keep/screen/BookKeepActivity$ensureNetworkHeadersSync$1;->L$3:Ljava/lang/Object;

    const/4 v2, 0x0

    iput v2, v0, Lcom/laborbook/keep/screen/BookKeepActivity$ensureNetworkHeadersSync$1;->I$0:I

    iput v7, v0, Lcom/laborbook/keep/screen/BookKeepActivity$ensureNetworkHeadersSync$1;->label:I

    invoke-static {p1, v0}, Lkotlinx/coroutines/flow/FlowKt;->first(Lkotlinx/coroutines/flow/Flow;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_6

    return-object v1

    :cond_6
    move-object v12, p0

    move-object v11, v10

    :goto_1
    invoke-static {v9, p1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    aput-object p1, v10, v2

    .line 253
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bearer "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v12}, Lcom/laborbook/keep/screen/BookKeepActivity;->getDataStoreManager()Lcom/laborbook/base/datastore/DataStoreManager;

    move-result-object p1

    sget-object v9, Lcom/laborbook/base/datastore/DataStoreManager;->Companion:Lcom/laborbook/base/datastore/DataStoreManager$Companion;

    invoke-virtual {v9}, Lcom/laborbook/base/datastore/DataStoreManager$Companion;->getACCESS_TOKEN()Landroidx/datastore/preferences/core/Preferences$Key;

    move-result-object v9

    invoke-virtual {p1, v9, v8}, Lcom/laborbook/base/datastore/DataStoreManager;->read(Landroidx/datastore/preferences/core/Preferences$Key;Ljava/lang/Object;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p1

    iput-object v12, v0, Lcom/laborbook/keep/screen/BookKeepActivity$ensureNetworkHeadersSync$1;->L$0:Ljava/lang/Object;

    iput-object v11, v0, Lcom/laborbook/keep/screen/BookKeepActivity$ensureNetworkHeadersSync$1;->L$1:Ljava/lang/Object;

    iput-object v11, v0, Lcom/laborbook/keep/screen/BookKeepActivity$ensureNetworkHeadersSync$1;->L$2:Ljava/lang/Object;

    const-string v9, "Authorization"

    iput-object v9, v0, Lcom/laborbook/keep/screen/BookKeepActivity$ensureNetworkHeadersSync$1;->L$3:Ljava/lang/Object;

    iput-object v2, v0, Lcom/laborbook/keep/screen/BookKeepActivity$ensureNetworkHeadersSync$1;->L$4:Ljava/lang/Object;

    iput v7, v0, Lcom/laborbook/keep/screen/BookKeepActivity$ensureNetworkHeadersSync$1;->I$0:I

    iput v6, v0, Lcom/laborbook/keep/screen/BookKeepActivity$ensureNetworkHeadersSync$1;->label:I

    invoke-static {p1, v0}, Lkotlinx/coroutines/flow/FlowKt;->first(Lkotlinx/coroutines/flow/Flow;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_7

    return-object v1

    :cond_7
    move-object v10, v11

    :goto_2
    check-cast p1, Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v9, p1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    aput-object p1, v10, v7

    .line 254
    invoke-virtual {v12}, Lcom/laborbook/keep/screen/BookKeepActivity;->getDataStoreManager()Lcom/laborbook/base/datastore/DataStoreManager;

    move-result-object p1

    sget-object v2, Lcom/laborbook/base/datastore/DataStoreManager;->Companion:Lcom/laborbook/base/datastore/DataStoreManager$Companion;

    invoke-virtual {v2}, Lcom/laborbook/base/datastore/DataStoreManager$Companion;->getUSER_ID()Landroidx/datastore/preferences/core/Preferences$Key;

    move-result-object v2

    invoke-virtual {p1, v2, v8}, Lcom/laborbook/base/datastore/DataStoreManager;->read(Landroidx/datastore/preferences/core/Preferences$Key;Ljava/lang/Object;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p1

    iput-object v12, v0, Lcom/laborbook/keep/screen/BookKeepActivity$ensureNetworkHeadersSync$1;->L$0:Ljava/lang/Object;

    iput-object v11, v0, Lcom/laborbook/keep/screen/BookKeepActivity$ensureNetworkHeadersSync$1;->L$1:Ljava/lang/Object;

    iput-object v11, v0, Lcom/laborbook/keep/screen/BookKeepActivity$ensureNetworkHeadersSync$1;->L$2:Ljava/lang/Object;

    const-string v2, "x-lb-userID"

    iput-object v2, v0, Lcom/laborbook/keep/screen/BookKeepActivity$ensureNetworkHeadersSync$1;->L$3:Ljava/lang/Object;

    iput-object v3, v0, Lcom/laborbook/keep/screen/BookKeepActivity$ensureNetworkHeadersSync$1;->L$4:Ljava/lang/Object;

    iput v6, v0, Lcom/laborbook/keep/screen/BookKeepActivity$ensureNetworkHeadersSync$1;->I$0:I

    iput v5, v0, Lcom/laborbook/keep/screen/BookKeepActivity$ensureNetworkHeadersSync$1;->label:I

    invoke-static {p1, v0}, Lkotlinx/coroutines/flow/FlowKt;->first(Lkotlinx/coroutines/flow/Flow;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_8

    return-object v1

    :cond_8
    move-object v7, v11

    move-object v9, v7

    move-object v10, v12

    :goto_3
    invoke-static {v2, p1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    aput-object p1, v7, v6

    .line 255
    invoke-virtual {v10}, Lcom/laborbook/keep/screen/BookKeepActivity;->getDataStoreManager()Lcom/laborbook/base/datastore/DataStoreManager;

    move-result-object p1

    sget-object v2, Lcom/laborbook/base/datastore/DataStoreManager;->Companion:Lcom/laborbook/base/datastore/DataStoreManager$Companion;

    invoke-virtual {v2}, Lcom/laborbook/base/datastore/DataStoreManager$Companion;->getUSER_ID()Landroidx/datastore/preferences/core/Preferences$Key;

    move-result-object v2

    invoke-virtual {p1, v2, v8}, Lcom/laborbook/base/datastore/DataStoreManager;->read(Landroidx/datastore/preferences/core/Preferences$Key;Ljava/lang/Object;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p1

    iput-object v9, v0, Lcom/laborbook/keep/screen/BookKeepActivity$ensureNetworkHeadersSync$1;->L$0:Ljava/lang/Object;

    iput-object v9, v0, Lcom/laborbook/keep/screen/BookKeepActivity$ensureNetworkHeadersSync$1;->L$1:Ljava/lang/Object;

    const-string v2, "User-ID"

    iput-object v2, v0, Lcom/laborbook/keep/screen/BookKeepActivity$ensureNetworkHeadersSync$1;->L$2:Ljava/lang/Object;

    iput-object v3, v0, Lcom/laborbook/keep/screen/BookKeepActivity$ensureNetworkHeadersSync$1;->L$3:Ljava/lang/Object;

    iput v5, v0, Lcom/laborbook/keep/screen/BookKeepActivity$ensureNetworkHeadersSync$1;->I$0:I

    iput v4, v0, Lcom/laborbook/keep/screen/BookKeepActivity$ensureNetworkHeadersSync$1;->label:I

    invoke-static {p1, v0}, Lkotlinx/coroutines/flow/FlowKt;->first(Lkotlinx/coroutines/flow/Flow;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_9

    return-object v1

    :cond_9
    move-object v1, v2

    move-object v0, v9

    move-object v2, v0

    :goto_4
    invoke-static {v1, p1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    aput-object p1, v2, v5

    .line 251
    invoke-static {v0}, Lkotlin/collections/MapsKt;->hashMapOf([Lkotlin/Pair;)Ljava/util/HashMap;

    move-result-object p1

    .line 257
    sget-object v0, Lcom/boilerplate/network/NetworkHandler;->Companion:Lcom/boilerplate/network/NetworkHandler$Companion;

    invoke-virtual {v0}, Lcom/boilerplate/network/NetworkHandler$Companion;->getInstance()Lcom/boilerplate/network/NetworkHandler;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/boilerplate/network/NetworkHandler;->setAdditionalHeaders(Ljava/util/HashMap;)V

    .line 258
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method private final getExpenseObserverUtil()Lcom/laborbook/expense/util/ExpenseObserverUtil;
    .locals 1

    .line 89
    iget-object v0, p0, Lcom/laborbook/keep/screen/BookKeepActivity;->expenseObserverUtil$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/laborbook/expense/util/ExpenseObserverUtil;

    return-object v0
.end method

.method private final getFragmentNavigator()Lcom/laborbook/base/navigator/FragmentNavigator;
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/laborbook/keep/screen/BookKeepActivity;->fragmentNavigator$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/laborbook/base/navigator/FragmentNavigator;

    return-object v0
.end method

.method private final getIncomeObserverUtil()Lcom/laborbook/income/util/IncomeObserverUtil;
    .locals 1

    .line 90
    iget-object v0, p0, Lcom/laborbook/keep/screen/BookKeepActivity;->incomeObserverUtil$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/laborbook/income/util/IncomeObserverUtil;

    return-object v0
.end method

.method private final getObserverUtil()Lcom/laborbook/keep/screen/calendar/utils/ObserverUtil;
    .locals 1

    .line 88
    iget-object v0, p0, Lcom/laborbook/keep/screen/BookKeepActivity;->observerUtil$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/laborbook/keep/screen/calendar/utils/ObserverUtil;

    return-object v0
.end method

.method private final getPremiumOfferManager()Lcom/laborbook/keep/screen/premium/PremiumOfferManager;
    .locals 1

    .line 92
    iget-object v0, p0, Lcom/laborbook/keep/screen/BookKeepActivity;->premiumOfferManager$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/laborbook/keep/screen/premium/PremiumOfferManager;

    return-object v0
.end method

.method private final getSubscriptionViewModel()Lcom/laborbook/keep/screen/premium/viewmodel/SubscriptionViewModel;
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/laborbook/keep/screen/BookKeepActivity;->subscriptionViewModel$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/laborbook/keep/screen/premium/viewmodel/SubscriptionViewModel;

    return-object v0
.end method

.method private final hideAllAds()V
    .locals 15

    .line 270
    iget-object v0, p0, Lcom/laborbook/keep/screen/BookKeepActivity;->binding:Lcom/laborbook/keep/databinding/ActivityBookKeepBinding;

    if-nez v0, :cond_0

    const-string v0, "binding"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 272
    :cond_0
    iget-object v1, v0, Lcom/laborbook/keep/databinding/ActivityBookKeepBinding;->adView:Lcom/google/android/gms/ads/AdView;

    const-string v2, "adView"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v3, v1

    check-cast v3, Landroid/view/View;

    const/4 v7, 0x3

    const/4 v8, 0x0

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    invoke-static/range {v3 .. v8}, Lcom/boilerplate/uikit/views/ExtentionsKt;->hide$default(Landroid/view/View;JLjava/lang/String;ILjava/lang/Object;)V

    .line 273
    iget-object v9, v0, Lcom/laborbook/keep/databinding/ActivityBookKeepBinding;->adsShadow:Landroid/view/View;

    if-eqz v9, :cond_1

    const/4 v13, 0x3

    const/4 v14, 0x0

    const-wide/16 v10, 0x0

    const/4 v12, 0x0

    invoke-static/range {v9 .. v14}, Lcom/boilerplate/uikit/views/ExtentionsKt;->hide$default(Landroid/view/View;JLjava/lang/String;ILjava/lang/Object;)V

    .line 276
    :cond_1
    iget-object v0, v0, Lcom/laborbook/keep/databinding/ActivityBookKeepBinding;->customAdView:Lcom/laborbook/base/ads/CustomAdView;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/laborbook/base/ads/CustomAdView;->hide()V

    :cond_2
    return-void
.end method

.method private final loadCustomAd()V
    .locals 7

    .line 775
    move-object v0, p0

    check-cast v0, Landroidx/lifecycle/LifecycleOwner;

    invoke-static {v0}, Landroidx/lifecycle/LifecycleOwnerKt;->getLifecycleScope(Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LifecycleCoroutineScope;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lkotlinx/coroutines/CoroutineScope;

    new-instance v0, Lcom/laborbook/keep/screen/BookKeepActivity$loadCustomAd$1;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lcom/laborbook/keep/screen/BookKeepActivity$loadCustomAd$1;-><init>(Lcom/laborbook/keep/screen/BookKeepActivity;Lkotlin/coroutines/Continuation;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method private final observeProStatusChanges()V
    .locals 3

    .line 188
    invoke-virtual {p0}, Lcom/laborbook/keep/screen/BookKeepActivity;->getDataStoreManager()Lcom/laborbook/base/datastore/DataStoreManager;

    move-result-object v0

    sget-object v1, Lcom/laborbook/base/datastore/DataStoreManager;->Companion:Lcom/laborbook/base/datastore/DataStoreManager$Companion;

    invoke-virtual {v1}, Lcom/laborbook/base/datastore/DataStoreManager$Companion;->getPRO_STATUS()Landroidx/datastore/preferences/core/Preferences$Key;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/laborbook/base/datastore/DataStoreManager;->read(Landroidx/datastore/preferences/core/Preferences$Key;Ljava/lang/Object;)Lkotlinx/coroutines/flow/Flow;

    move-result-object v0

    .line 189
    new-instance v1, Lcom/laborbook/keep/screen/BookKeepActivity$observeProStatusChanges$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/laborbook/keep/screen/BookKeepActivity$observeProStatusChanges$1;-><init>(Lcom/laborbook/keep/screen/BookKeepActivity;Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v1}, Lkotlinx/coroutines/flow/FlowKt;->onEach(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/flow/Flow;

    move-result-object v0

    .line 198
    move-object v1, p0

    check-cast v1, Landroidx/lifecycle/LifecycleOwner;

    invoke-static {v1}, Landroidx/lifecycle/LifecycleOwnerKt;->getLifecycleScope(Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LifecycleCoroutineScope;

    move-result-object v1

    check-cast v1, Lkotlinx/coroutines/CoroutineScope;

    invoke-static {v0, v1}, Lkotlinx/coroutines/flow/FlowKt;->launchIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method private final observeSubscriptionStateChanges()V
    .locals 4

    .line 207
    invoke-direct {p0}, Lcom/laborbook/keep/screen/BookKeepActivity;->getSubscriptionViewModel()Lcom/laborbook/keep/screen/premium/viewmodel/SubscriptionViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/laborbook/keep/screen/premium/viewmodel/SubscriptionViewModel;->getSubscriptionState()Landroidx/lifecycle/LiveData;

    move-result-object v0

    move-object v1, p0

    check-cast v1, Landroidx/lifecycle/LifecycleOwner;

    new-instance v2, Lcom/laborbook/keep/screen/BookKeepActivity$$ExternalSyntheticLambda9;

    invoke-direct {v2, p0}, Lcom/laborbook/keep/screen/BookKeepActivity$$ExternalSyntheticLambda9;-><init>(Lcom/laborbook/keep/screen/BookKeepActivity;)V

    new-instance v3, Lcom/laborbook/keep/screen/BookKeepActivity$sam$androidx_lifecycle_Observer$0;

    invoke-direct {v3, v2}, Lcom/laborbook/keep/screen/BookKeepActivity$sam$androidx_lifecycle_Observer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    check-cast v3, Landroidx/lifecycle/Observer;

    invoke-virtual {v0, v1, v3}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method private static final observeSubscriptionStateChanges$lambda$5(Lcom/laborbook/keep/screen/BookKeepActivity;Lcom/laborbook/keep/screen/premium/viewmodel/SubscriptionViewModel$SubscriptionState;)Lkotlin/Unit;
    .locals 6

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 209
    instance-of p1, p1, Lcom/laborbook/keep/screen/premium/viewmodel/SubscriptionViewModel$SubscriptionState$UserSubscriptionLoaded;

    if-eqz p1, :cond_0

    .line 213
    move-object p1, p0

    check-cast p1, Landroidx/lifecycle/LifecycleOwner;

    invoke-static {p1}, Landroidx/lifecycle/LifecycleOwnerKt;->getLifecycleScope(Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LifecycleCoroutineScope;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lkotlinx/coroutines/CoroutineScope;

    new-instance p1, Lcom/laborbook/keep/screen/BookKeepActivity$observeSubscriptionStateChanges$1$1;

    const/4 v1, 0x0

    invoke-direct {p1, p0, v1}, Lcom/laborbook/keep/screen/BookKeepActivity$observeSubscriptionStateChanges$1$1;-><init>(Lcom/laborbook/keep/screen/BookKeepActivity;Lkotlin/coroutines/Continuation;)V

    move-object v3, p1

    check-cast v3, Lkotlin/jvm/functions/Function2;

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v2, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 228
    :cond_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final onCreate$lambda$3(Landroidx/activity/result/ActivityResult;)V
    .locals 1

    const-string v0, "result"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method private static final onCreate$lambda$4(Lcom/laborbook/keep/screen/BookKeepActivity;Landroidx/activity/result/ActivityResult;)V
    .locals 6

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "result"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 130
    invoke-virtual {p1}, Landroidx/activity/result/ActivityResult;->getResultCode()I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 132
    move-object p1, p0

    check-cast p1, Landroidx/lifecycle/LifecycleOwner;

    invoke-static {p1}, Landroidx/lifecycle/LifecycleOwnerKt;->getLifecycleScope(Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LifecycleCoroutineScope;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lkotlinx/coroutines/CoroutineScope;

    new-instance p1, Lcom/laborbook/keep/screen/BookKeepActivity$onCreate$2$1;

    const/4 v1, 0x0

    invoke-direct {p1, p0, v1}, Lcom/laborbook/keep/screen/BookKeepActivity$onCreate$2$1;-><init>(Lcom/laborbook/keep/screen/BookKeepActivity;Lkotlin/coroutines/Continuation;)V

    move-object v3, p1

    check-cast v3, Lkotlin/jvm/functions/Function2;

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v2, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    :cond_0
    return-void
.end method

.method private static final onResume$lambda$20(Lcom/laborbook/keep/screen/BookKeepActivity;Lcom/google/android/play/core/appupdate/AppUpdateInfo;)Lkotlin/Unit;
    .locals 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 554
    invoke-virtual {p1}, Lcom/google/android/play/core/appupdate/AppUpdateInfo;->updateAvailability()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 555
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/laborbook/keep/screen/BookKeepActivity;->startUpdate(Lcom/google/android/play/core/appupdate/AppUpdateInfo;I)V

    .line 557
    :cond_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final onResume$lambda$21(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V
    .locals 1

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 553
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private final preloadCalendarExitInterstitialIfEligible()V
    .locals 7

    .line 610
    iget-object v0, p0, Lcom/laborbook/keep/screen/BookKeepActivity;->calendarExitInterstitial:Lcom/google/android/gms/ads/interstitial/InterstitialAd;

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/laborbook/keep/screen/BookKeepActivity;->calendarExitInterstitialLoading:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 612
    :cond_0
    move-object v0, p0

    check-cast v0, Landroidx/lifecycle/LifecycleOwner;

    invoke-static {v0}, Landroidx/lifecycle/LifecycleOwnerKt;->getLifecycleScope(Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LifecycleCoroutineScope;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lkotlinx/coroutines/CoroutineScope;

    new-instance v0, Lcom/laborbook/keep/screen/BookKeepActivity$preloadCalendarExitInterstitialIfEligible$1;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lcom/laborbook/keep/screen/BookKeepActivity$preloadCalendarExitInterstitialIfEligible$1;-><init>(Lcom/laborbook/keep/screen/BookKeepActivity;Lkotlin/coroutines/Continuation;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    :cond_1
    :goto_0
    return-void
.end method

.method private final recordFirstTimeHomeScreenEventIfNeeded()V
    .locals 7

    .line 236
    move-object v0, p0

    check-cast v0, Landroidx/lifecycle/LifecycleOwner;

    invoke-static {v0}, Landroidx/lifecycle/LifecycleOwnerKt;->getLifecycleScope(Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LifecycleCoroutineScope;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lkotlinx/coroutines/CoroutineScope;

    new-instance v0, Lcom/laborbook/keep/screen/BookKeepActivity$recordFirstTimeHomeScreenEventIfNeeded$1;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lcom/laborbook/keep/screen/BookKeepActivity$recordFirstTimeHomeScreenEventIfNeeded$1;-><init>(Lcom/laborbook/keep/screen/BookKeepActivity;Lkotlin/coroutines/Continuation;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method private final refreshSubscriptionStatus(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Lcom/laborbook/keep/screen/BookKeepActivity$refreshSubscriptionStatus$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/laborbook/keep/screen/BookKeepActivity$refreshSubscriptionStatus$1;

    iget v1, v0, Lcom/laborbook/keep/screen/BookKeepActivity$refreshSubscriptionStatus$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p1, v0, Lcom/laborbook/keep/screen/BookKeepActivity$refreshSubscriptionStatus$1;->label:I

    sub-int/2addr p1, v2

    iput p1, v0, Lcom/laborbook/keep/screen/BookKeepActivity$refreshSubscriptionStatus$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/laborbook/keep/screen/BookKeepActivity$refreshSubscriptionStatus$1;

    invoke-direct {v0, p0, p1}, Lcom/laborbook/keep/screen/BookKeepActivity$refreshSubscriptionStatus$1;-><init>(Lcom/laborbook/keep/screen/BookKeepActivity;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p1, v0, Lcom/laborbook/keep/screen/BookKeepActivity$refreshSubscriptionStatus$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 804
    iget v2, v0, Lcom/laborbook/keep/screen/BookKeepActivity$refreshSubscriptionStatus$1;->label:I

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v2, :cond_4

    if-eq v2, v5, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_3

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    iget-object v2, v0, Lcom/laborbook/keep/screen/BookKeepActivity$refreshSubscriptionStatus$1;->L$0:Ljava/lang/Object;

    check-cast v2, Lcom/laborbook/keep/screen/BookKeepActivity;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_2

    :cond_3
    iget-object v2, v0, Lcom/laborbook/keep/screen/BookKeepActivity$refreshSubscriptionStatus$1;->L$0:Ljava/lang/Object;

    check-cast v2, Lcom/laborbook/keep/screen/BookKeepActivity;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_4
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 806
    iget-boolean p1, p0, Lcom/laborbook/keep/screen/BookKeepActivity;->subscriptionStatusCheckedThisSession:Z

    if-eqz p1, :cond_5

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 807
    :cond_5
    iput-boolean v5, p0, Lcom/laborbook/keep/screen/BookKeepActivity;->subscriptionStatusCheckedThisSession:Z

    .line 810
    sget-object p1, Lcom/google/firebase/ktx/Firebase;->INSTANCE:Lcom/google/firebase/ktx/Firebase;

    invoke-static {p1}, Lcom/google/firebase/remoteconfig/ktx/RemoteConfigKt;->getRemoteConfig(Lcom/google/firebase/ktx/Firebase;)Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;

    move-result-object p1

    .line 811
    sget-object v2, Lcom/laborbook/keep/utils/SubscriptionsFeatureFlag;->INSTANCE:Lcom/laborbook/keep/utils/SubscriptionsFeatureFlag;

    invoke-virtual {v2, p1}, Lcom/laborbook/keep/utils/SubscriptionsFeatureFlag;->isSubscriptionsEnabled(Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;)Z

    move-result p1

    if-nez p1, :cond_6

    .line 812
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 816
    :cond_6
    invoke-virtual {p0}, Lcom/laborbook/keep/screen/BookKeepActivity;->getDataStoreManager()Lcom/laborbook/base/datastore/DataStoreManager;

    move-result-object p1

    sget-object v2, Lcom/laborbook/base/datastore/DataStoreManager;->Companion:Lcom/laborbook/base/datastore/DataStoreManager$Companion;

    invoke-virtual {v2}, Lcom/laborbook/base/datastore/DataStoreManager$Companion;->getIS_LOGGED_IN()Landroidx/datastore/preferences/core/Preferences$Key;

    move-result-object v2

    const/4 v6, 0x0

    invoke-static {v6}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {p1, v2, v6}, Lcom/laborbook/base/datastore/DataStoreManager;->read(Landroidx/datastore/preferences/core/Preferences$Key;Ljava/lang/Object;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p1

    iput-object p0, v0, Lcom/laborbook/keep/screen/BookKeepActivity$refreshSubscriptionStatus$1;->L$0:Ljava/lang/Object;

    iput v5, v0, Lcom/laborbook/keep/screen/BookKeepActivity$refreshSubscriptionStatus$1;->label:I

    invoke-static {p1, v0}, Lkotlinx/coroutines/flow/FlowKt;->first(Lkotlinx/coroutines/flow/Flow;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_7

    return-object v1

    :cond_7
    move-object v2, p0

    :goto_1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_8

    .line 817
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 820
    :cond_8
    invoke-virtual {v2}, Lcom/laborbook/keep/screen/BookKeepActivity;->getDataStoreManager()Lcom/laborbook/base/datastore/DataStoreManager;

    move-result-object p1

    sget-object v5, Lcom/laborbook/base/datastore/DataStoreManager;->Companion:Lcom/laborbook/base/datastore/DataStoreManager$Companion;

    invoke-virtual {v5}, Lcom/laborbook/base/datastore/DataStoreManager$Companion;->getUSER_ID()Landroidx/datastore/preferences/core/Preferences$Key;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {p1, v5, v6}, Lcom/laborbook/base/datastore/DataStoreManager;->read(Landroidx/datastore/preferences/core/Preferences$Key;Ljava/lang/Object;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p1

    iput-object v2, v0, Lcom/laborbook/keep/screen/BookKeepActivity$refreshSubscriptionStatus$1;->L$0:Ljava/lang/Object;

    iput v4, v0, Lcom/laborbook/keep/screen/BookKeepActivity$refreshSubscriptionStatus$1;->label:I

    invoke-static {p1, v0}, Lkotlinx/coroutines/flow/FlowKt;->first(Lkotlinx/coroutines/flow/Flow;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_9

    return-object v1

    .line 804
    :cond_9
    :goto_2
    check-cast p1, Ljava/lang/String;

    .line 821
    move-object v4, p1

    check-cast v4, Ljava/lang/CharSequence;

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-nez v4, :cond_a

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 826
    :cond_a
    :try_start_1
    invoke-direct {v2}, Lcom/laborbook/keep/screen/BookKeepActivity;->getSubscriptionViewModel()Lcom/laborbook/keep/screen/premium/viewmodel/SubscriptionViewModel;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/laborbook/keep/screen/premium/viewmodel/SubscriptionViewModel;->checkUserSubscriptionStatus(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 828
    iput-object p1, v0, Lcom/laborbook/keep/screen/BookKeepActivity$refreshSubscriptionStatus$1;->L$0:Ljava/lang/Object;

    iput v3, v0, Lcom/laborbook/keep/screen/BookKeepActivity$refreshSubscriptionStatus$1;->label:I

    const-wide/16 v2, 0x12c

    invoke-static {v2, v3, v0}, Lkotlinx/coroutines/DelayKt;->delay(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    if-ne p1, v1, :cond_b

    return-object v1

    .line 833
    :catch_0
    :cond_b
    :goto_3
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method private final requestGoogleAds()V
    .locals 7

    .line 687
    move-object v0, p0

    check-cast v0, Landroidx/lifecycle/LifecycleOwner;

    invoke-static {v0}, Landroidx/lifecycle/LifecycleOwnerKt;->getLifecycleScope(Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LifecycleCoroutineScope;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lkotlinx/coroutines/CoroutineScope;

    new-instance v0, Lcom/laborbook/keep/screen/BookKeepActivity$requestGoogleAds$1;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lcom/laborbook/keep/screen/BookKeepActivity$requestGoogleAds$1;-><init>(Lcom/laborbook/keep/screen/BookKeepActivity;Lkotlin/coroutines/Continuation;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method private static final requestNotificationPermissionLauncher$lambda$17(Lcom/laborbook/keep/screen/BookKeepActivity;Z)V
    .locals 5

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 494
    const-string v0, "status"

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-string v3, "notification_permission_granted"

    if-eqz p1, :cond_0

    .line 495
    new-array p1, v2, [Lkotlin/Pair;

    new-instance v2, Lkotlin/Pair;

    const-string v4, "yes"

    invoke-direct {v2, v0, v4}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v2, p1, v1

    invoke-static {p1}, Lkotlin/collections/MapsKt;->hashMapOf([Lkotlin/Pair;)Ljava/util/HashMap;

    move-result-object p1

    invoke-virtual {p0, v3, p1}, Lcom/laborbook/keep/screen/BookKeepActivity;->recordClickEvent(Ljava/lang/String;Ljava/util/HashMap;)V

    goto :goto_0

    .line 497
    :cond_0
    new-array p1, v2, [Lkotlin/Pair;

    new-instance v2, Lkotlin/Pair;

    const-string v4, "no"

    invoke-direct {v2, v0, v4}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v2, p1, v1

    invoke-static {p1}, Lkotlin/collections/MapsKt;->hashMapOf([Lkotlin/Pair;)Ljava/util/HashMap;

    move-result-object p1

    invoke-virtual {p0, v3, p1}, Lcom/laborbook/keep/screen/BookKeepActivity;->recordClickEvent(Ljava/lang/String;Ljava/util/HashMap;)V

    :goto_0
    return-void
.end method

.method private static final rootFragmentProvider$lambda$0()Landroidx/fragment/app/Fragment;
    .locals 1

    .line 107
    sget-object v0, Lcom/laborbook/keep/screen/home/fragment/StaffListFragment;->Companion:Lcom/laborbook/keep/screen/home/fragment/StaffListFragment$Companion;

    invoke-virtual {v0}, Lcom/laborbook/keep/screen/home/fragment/StaffListFragment$Companion;->newInstance()Lcom/laborbook/keep/screen/home/fragment/StaffListFragment;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/Fragment;

    return-object v0
.end method

.method private static final rootFragmentProvider$lambda$1()Landroidx/fragment/app/Fragment;
    .locals 1

    .line 108
    sget-object v0, Lcom/laborbook/keep/screen/home/fragment/CashbookFragment;->Companion:Lcom/laborbook/keep/screen/home/fragment/CashbookFragment$Companion;

    invoke-virtual {v0}, Lcom/laborbook/keep/screen/home/fragment/CashbookFragment$Companion;->newInstance()Lcom/laborbook/keep/screen/home/fragment/CashbookFragment;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/Fragment;

    return-object v0
.end method

.method private static final rootFragmentProvider$lambda$2()Landroidx/fragment/app/Fragment;
    .locals 1

    .line 109
    sget-object v0, Lcom/laborbook/keep/screen/home/fragment/SettingsFragment;->Companion:Lcom/laborbook/keep/screen/home/fragment/SettingsFragment$Companion;

    invoke-virtual {v0}, Lcom/laborbook/keep/screen/home/fragment/SettingsFragment$Companion;->newInstance()Lcom/laborbook/keep/screen/home/fragment/SettingsFragment;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/Fragment;

    return-object v0
.end method

.method private final setOnDestinationChangeListener()V
    .locals 3

    .line 439
    invoke-direct {p0}, Lcom/laborbook/keep/screen/BookKeepActivity;->getFragmentNavigator()Lcom/laborbook/base/navigator/FragmentNavigator;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/laborbook/base/navigator/FragmentNavigator;->getMultipleStackNavigator()Lcom/boilerplate/navigator/MultipleStackNavigator;

    move-result-object v0

    if-eqz v0, :cond_0

    move-object v1, p0

    check-cast v1, Landroidx/lifecycle/LifecycleOwner;

    new-instance v2, Lcom/laborbook/keep/screen/BookKeepActivity$$ExternalSyntheticLambda14;

    invoke-direct {v2, p0}, Lcom/laborbook/keep/screen/BookKeepActivity$$ExternalSyntheticLambda14;-><init>(Lcom/laborbook/keep/screen/BookKeepActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/boilerplate/navigator/MultipleStackNavigator;->observeDestinationChangesWithPopBack(Landroidx/lifecycle/LifecycleOwner;Lkotlin/jvm/functions/Function2;)V

    :cond_0
    return-void
.end method

.method private static final setOnDestinationChangeListener$lambda$16(Lcom/laborbook/keep/screen/BookKeepActivity;Landroidx/fragment/app/Fragment;Z)Lkotlin/Unit;
    .locals 10

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 440
    iget-object v0, p0, Lcom/laborbook/keep/screen/BookKeepActivity;->lastDestinationClassName:Ljava/lang/String;

    .line 441
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/laborbook/keep/screen/BookKeepActivity;->lastDestinationClassName:Ljava/lang/String;

    .line 444
    instance-of v1, p1, Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment;

    if-eqz v1, :cond_0

    .line 445
    invoke-direct {p0}, Lcom/laborbook/keep/screen/BookKeepActivity;->preloadCalendarExitInterstitialIfEligible()V

    :cond_0
    const/4 v2, 0x0

    if-eqz p2, :cond_1

    .line 449
    const-class v3, Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 450
    move-object v0, p0

    check-cast v0, Landroidx/lifecycle/LifecycleOwner;

    invoke-static {v0}, Landroidx/lifecycle/LifecycleOwnerKt;->getLifecycleScope(Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LifecycleCoroutineScope;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lkotlinx/coroutines/CoroutineScope;

    new-instance v0, Lcom/laborbook/keep/screen/BookKeepActivity$setOnDestinationChangeListener$1$1;

    invoke-direct {v0, p0, v2}, Lcom/laborbook/keep/screen/BookKeepActivity$setOnDestinationChangeListener$1$1;-><init>(Lcom/laborbook/keep/screen/BookKeepActivity;Lkotlin/coroutines/Continuation;)V

    move-object v6, v0

    check-cast v6, Lkotlin/jvm/functions/Function2;

    const/4 v7, 0x3

    const/4 v8, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v3 .. v8}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 458
    :cond_1
    instance-of v0, p1, Lcom/laborbook/keep/screen/home/fragment/StaffListFragment;

    const/4 v3, 0x1

    const-string v4, "binding"

    if-eqz v0, :cond_5

    .line 459
    iget-object p1, p0, Lcom/laborbook/keep/screen/BookKeepActivity;->binding:Lcom/laborbook/keep/databinding/ActivityBookKeepBinding;

    if-nez p1, :cond_2

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    move-object v2, p1

    :goto_0
    iget-object p1, v2, Lcom/laborbook/keep/databinding/ActivityBookKeepBinding;->bottomNav:Lcom/google/android/material/bottomnavigation/BottomNavigationView;

    if-eqz p1, :cond_3

    move-object v4, p1

    check-cast v4, Landroid/view/View;

    const/4 v8, 0x3

    const/4 v9, 0x0

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    invoke-static/range {v4 .. v9}, Lcom/boilerplate/uikit/views/ExtentionsKt;->show$default(Landroid/view/View;JLjava/lang/String;ILjava/lang/Object;)V

    .line 460
    :cond_3
    invoke-direct {p0}, Lcom/laborbook/keep/screen/BookKeepActivity;->getObserverUtil()Lcom/laborbook/keep/screen/calendar/utils/ObserverUtil;

    move-result-object p1

    invoke-virtual {p1}, Lcom/laborbook/keep/screen/calendar/utils/ObserverUtil;->getClearSearchText()Lkotlin/jvm/functions/Function1;

    move-result-object p1

    if-eqz p1, :cond_4

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    if-eqz p2, :cond_10

    .line 462
    invoke-direct {p0}, Lcom/laborbook/keep/screen/BookKeepActivity;->getObserverUtil()Lcom/laborbook/keep/screen/calendar/utils/ObserverUtil;

    move-result-object p0

    invoke-virtual {p0}, Lcom/laborbook/keep/screen/calendar/utils/ObserverUtil;->getRefreshStaffs()Lkotlin/jvm/functions/Function1;

    move-result-object p0

    if-eqz p0, :cond_10

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_5

    .line 466
    :cond_5
    instance-of v0, p1, Lcom/laborbook/keep/screen/home/fragment/CashbookFragment;

    if-eqz v0, :cond_9

    .line 467
    iget-object p1, p0, Lcom/laborbook/keep/screen/BookKeepActivity;->binding:Lcom/laborbook/keep/databinding/ActivityBookKeepBinding;

    if-nez p1, :cond_6

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_1

    :cond_6
    move-object v2, p1

    :goto_1
    iget-object p1, v2, Lcom/laborbook/keep/databinding/ActivityBookKeepBinding;->bottomNav:Lcom/google/android/material/bottomnavigation/BottomNavigationView;

    if-eqz p1, :cond_7

    move-object v4, p1

    check-cast v4, Landroid/view/View;

    const/4 v8, 0x3

    const/4 v9, 0x0

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    invoke-static/range {v4 .. v9}, Lcom/boilerplate/uikit/views/ExtentionsKt;->show$default(Landroid/view/View;JLjava/lang/String;ILjava/lang/Object;)V

    .line 468
    :cond_7
    invoke-direct {p0}, Lcom/laborbook/keep/screen/BookKeepActivity;->getExpenseObserverUtil()Lcom/laborbook/expense/util/ExpenseObserverUtil;

    move-result-object p1

    invoke-virtual {p1}, Lcom/laborbook/expense/util/ExpenseObserverUtil;->getClearExpenseSearchText()Lkotlin/jvm/functions/Function1;

    move-result-object p1

    if-eqz p1, :cond_8

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-interface {p1, p2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 469
    :cond_8
    invoke-direct {p0}, Lcom/laborbook/keep/screen/BookKeepActivity;->getIncomeObserverUtil()Lcom/laborbook/income/util/IncomeObserverUtil;

    move-result-object p0

    invoke-virtual {p0}, Lcom/laborbook/income/util/IncomeObserverUtil;->getClearIncomeSearchText()Lkotlin/jvm/functions/Function1;

    move-result-object p0

    if-eqz p0, :cond_10

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_5

    .line 472
    :cond_9
    instance-of p1, p1, Lcom/laborbook/keep/screen/home/fragment/SettingsFragment;

    if-eqz p1, :cond_b

    .line 473
    iget-object p0, p0, Lcom/laborbook/keep/screen/BookKeepActivity;->binding:Lcom/laborbook/keep/databinding/ActivityBookKeepBinding;

    if-nez p0, :cond_a

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_2

    :cond_a
    move-object v2, p0

    :goto_2
    iget-object p0, v2, Lcom/laborbook/keep/databinding/ActivityBookKeepBinding;->bottomNav:Lcom/google/android/material/bottomnavigation/BottomNavigationView;

    if-eqz p0, :cond_10

    move-object v0, p0

    check-cast v0, Landroid/view/View;

    const/4 v4, 0x3

    const/4 v5, 0x0

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Lcom/boilerplate/uikit/views/ExtentionsKt;->show$default(Landroid/view/View;JLjava/lang/String;ILjava/lang/Object;)V

    goto :goto_5

    :cond_b
    if-eqz v1, :cond_e

    .line 477
    iget-object p1, p0, Lcom/laborbook/keep/screen/BookKeepActivity;->binding:Lcom/laborbook/keep/databinding/ActivityBookKeepBinding;

    if-nez p1, :cond_c

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_3

    :cond_c
    move-object v2, p1

    :goto_3
    iget-object p1, v2, Lcom/laborbook/keep/databinding/ActivityBookKeepBinding;->bottomNav:Lcom/google/android/material/bottomnavigation/BottomNavigationView;

    if-eqz p1, :cond_d

    move-object v4, p1

    check-cast v4, Landroid/view/View;

    const/4 v8, 0x3

    const/4 v9, 0x0

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    invoke-static/range {v4 .. v9}, Lcom/boilerplate/uikit/views/ExtentionsKt;->hide$default(Landroid/view/View;JLjava/lang/String;ILjava/lang/Object;)V

    :cond_d
    if-eqz p2, :cond_10

    .line 479
    invoke-direct {p0}, Lcom/laborbook/keep/screen/BookKeepActivity;->getObserverUtil()Lcom/laborbook/keep/screen/calendar/utils/ObserverUtil;

    move-result-object p0

    invoke-virtual {p0}, Lcom/laborbook/keep/screen/calendar/utils/ObserverUtil;->getRefreshCalendar()Lkotlin/jvm/functions/Function4;

    move-result-object p0

    if-eqz p0, :cond_10

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const/4 p2, 0x0

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, ""

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p0, p1, v0, v1, p2}, Lkotlin/jvm/functions/Function4;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    .line 484
    :cond_e
    iget-object p0, p0, Lcom/laborbook/keep/screen/BookKeepActivity;->binding:Lcom/laborbook/keep/databinding/ActivityBookKeepBinding;

    if-nez p0, :cond_f

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_4

    :cond_f
    move-object v2, p0

    :goto_4
    iget-object p0, v2, Lcom/laborbook/keep/databinding/ActivityBookKeepBinding;->bottomNav:Lcom/google/android/material/bottomnavigation/BottomNavigationView;

    if-eqz p0, :cond_10

    move-object v0, p0

    check-cast v0, Landroid/view/View;

    const/4 v4, 0x3

    const/4 v5, 0x0

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Lcom/boilerplate/uikit/views/ExtentionsKt;->hide$default(Landroid/view/View;JLjava/lang/String;ILjava/lang/Object;)V

    .line 488
    :cond_10
    :goto_5
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private final setOnItemSelectedListener()V
    .locals 2

    .line 416
    new-instance v0, Lcom/laborbook/keep/screen/BookKeepActivity$$ExternalSyntheticLambda15;

    invoke-direct {v0, p0}, Lcom/laborbook/keep/screen/BookKeepActivity$$ExternalSyntheticLambda15;-><init>(Lcom/laborbook/keep/screen/BookKeepActivity;)V

    .line 435
    iget-object v1, p0, Lcom/laborbook/keep/screen/BookKeepActivity;->binding:Lcom/laborbook/keep/databinding/ActivityBookKeepBinding;

    if-nez v1, :cond_0

    const-string v1, "binding"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v1, 0x0

    :cond_0
    iget-object v1, v1, Lcom/laborbook/keep/databinding/ActivityBookKeepBinding;->bottomNav:Lcom/google/android/material/bottomnavigation/BottomNavigationView;

    if-eqz v1, :cond_1

    invoke-virtual {v1, v0}, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->setOnItemSelectedListener(Lcom/google/android/material/navigation/NavigationBarView$OnItemSelectedListener;)V

    :cond_1
    return-void
.end method

.method private static final setOnItemSelectedListener$lambda$15(Lcom/laborbook/keep/screen/BookKeepActivity;Landroid/view/MenuItem;)Z
    .locals 3

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "item"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 417
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    .line 418
    sget v0, Lcom/laborbook/keep/R$id;->navigation_staff:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p1, v0, :cond_1

    .line 419
    invoke-direct {p0}, Lcom/laborbook/keep/screen/BookKeepActivity;->getFragmentNavigator()Lcom/laborbook/base/navigator/FragmentNavigator;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0, v1}, Lcom/laborbook/base/navigator/FragmentNavigator;->switchTab(I)V

    :cond_0
    return v2

    .line 423
    :cond_1
    sget v0, Lcom/laborbook/keep/R$id;->navigation_cashbook:I

    if-ne p1, v0, :cond_3

    .line 424
    invoke-direct {p0}, Lcom/laborbook/keep/screen/BookKeepActivity;->getFragmentNavigator()Lcom/laborbook/base/navigator/FragmentNavigator;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-virtual {p0, v2}, Lcom/laborbook/base/navigator/FragmentNavigator;->switchTab(I)V

    :cond_2
    return v2

    .line 428
    :cond_3
    sget v0, Lcom/laborbook/keep/R$id;->navigation_settings:I

    if-ne p1, v0, :cond_5

    .line 429
    invoke-direct {p0}, Lcom/laborbook/keep/screen/BookKeepActivity;->getFragmentNavigator()Lcom/laborbook/base/navigator/FragmentNavigator;

    move-result-object p0

    if-eqz p0, :cond_4

    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Lcom/laborbook/base/navigator/FragmentNavigator;->switchTab(I)V

    :cond_4
    return v2

    :cond_5
    return v1
.end method

.method private final setupNavigator(Landroid/os/Bundle;)V
    .locals 10

    .line 358
    invoke-direct {p0}, Lcom/laborbook/keep/screen/BookKeepActivity;->getFragmentNavigator()Lcom/laborbook/base/navigator/FragmentNavigator;

    move-result-object v0

    .line 360
    invoke-virtual {p0}, Lcom/laborbook/keep/screen/BookKeepActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v2

    const-string v1, "getSupportFragmentManager(...)"

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 361
    sget v3, Lcom/laborbook/keep/R$id;->container:I

    .line 362
    iget-object v4, p0, Lcom/laborbook/keep/screen/BookKeepActivity;->rootFragmentProvider:Ljava/util/ArrayList;

    .line 364
    new-instance v6, Lcom/boilerplate/navigator/NavigatorConfiguration;

    const/4 v1, 0x1

    .line 367
    sget-object v5, Lcom/boilerplate/navigator/transaction/NavigatorTransaction;->SHOW_HIDE:Lcom/boilerplate/navigator/transaction/NavigatorTransaction;

    const/4 v7, 0x0

    .line 364
    invoke-direct {v6, v7, v1, v5}, Lcom/boilerplate/navigator/NavigatorConfiguration;-><init>(IZLcom/boilerplate/navigator/transaction/NavigatorTransaction;)V

    .line 370
    sget-object v7, Lcom/boilerplate/navigator/transitionanimation/TransitionAnimationType;->RIGHT_TO_LEFT:Lcom/boilerplate/navigator/transitionanimation/TransitionAnimationType;

    .line 359
    new-instance v9, Lcom/boilerplate/navigator/MultipleStackNavigator;

    .line 363
    move-object v5, p0

    check-cast v5, Lcom/boilerplate/navigator/Navigator$NavigatorListener;

    .line 369
    move-object v8, p0

    check-cast v8, Landroid/content/Context;

    move-object v1, v9

    .line 359
    invoke-direct/range {v1 .. v8}, Lcom/boilerplate/navigator/MultipleStackNavigator;-><init>(Landroidx/fragment/app/FragmentManager;ILjava/util/ArrayList;Lcom/boilerplate/navigator/Navigator$NavigatorListener;Lcom/boilerplate/navigator/NavigatorConfiguration;Lcom/boilerplate/navigator/transitionanimation/TransitionAnimationType;Landroid/content/Context;)V

    .line 358
    invoke-virtual {v0, v9, p1}, Lcom/laborbook/base/navigator/FragmentNavigator;->initialize(Lcom/boilerplate/navigator/MultipleStackNavigator;Landroid/os/Bundle;)V

    return-void
.end method

.method private final showCalendarExitInterstitialIfReady()V
    .locals 3

    .line 638
    iget-object v0, p0, Lcom/laborbook/keep/screen/BookKeepActivity;->calendarExitInterstitial:Lcom/google/android/gms/ads/interstitial/InterstitialAd;

    if-nez v0, :cond_0

    return-void

    .line 639
    :cond_0
    invoke-virtual {p0}, Lcom/laborbook/keep/screen/BookKeepActivity;->isFinishing()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_2

    invoke-virtual {p0}, Lcom/laborbook/keep/screen/BookKeepActivity;->isDestroyed()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 645
    :cond_1
    iput-object v2, p0, Lcom/laborbook/keep/screen/BookKeepActivity;->calendarExitInterstitial:Lcom/google/android/gms/ads/interstitial/InterstitialAd;

    .line 647
    invoke-direct {p0}, Lcom/laborbook/keep/screen/BookKeepActivity;->todayEpochDayUtc()I

    move-result v1

    .line 648
    new-instance v2, Lcom/laborbook/keep/screen/BookKeepActivity$showCalendarExitInterstitialIfReady$1;

    invoke-direct {v2, p0, v1}, Lcom/laborbook/keep/screen/BookKeepActivity$showCalendarExitInterstitialIfReady$1;-><init>(Lcom/laborbook/keep/screen/BookKeepActivity;I)V

    check-cast v2, Lcom/google/android/gms/ads/FullScreenContentCallback;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/ads/interstitial/InterstitialAd;->setFullScreenContentCallback(Lcom/google/android/gms/ads/FullScreenContentCallback;)V

    .line 665
    move-object v1, p0

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/interstitial/InterstitialAd;->show(Landroid/app/Activity;)V

    return-void

    .line 640
    :cond_2
    :goto_0
    iput-object v2, p0, Lcom/laborbook/keep/screen/BookKeepActivity;->calendarExitInterstitial:Lcom/google/android/gms/ads/interstitial/InterstitialAd;

    return-void
.end method

.method private final showExitConfirmationDialog()V
    .locals 3

    .line 384
    new-instance v0, Landroid/app/AlertDialog$Builder;

    move-object v1, p0

    check-cast v1, Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 385
    sget v1, Lcom/laborbook/keep/R$string;->exit_app:I

    invoke-virtual {p0, v1}, Lcom/laborbook/keep/screen/BookKeepActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 386
    sget v1, Lcom/laborbook/keep/R$string;->are_you_sure_you_want_to_exit:I

    invoke-virtual {p0, v1}, Lcom/laborbook/keep/screen/BookKeepActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 387
    sget v1, Lcom/laborbook/keep/R$string;->ok:I

    invoke-virtual {p0, v1}, Lcom/laborbook/keep/screen/BookKeepActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    new-instance v2, Lcom/laborbook/keep/screen/BookKeepActivity$$ExternalSyntheticLambda12;

    invoke-direct {v2, p0}, Lcom/laborbook/keep/screen/BookKeepActivity$$ExternalSyntheticLambda12;-><init>(Lcom/laborbook/keep/screen/BookKeepActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 390
    sget v1, Lcom/laborbook/keep/R$string;->cancel:I

    invoke-virtual {p0, v1}, Lcom/laborbook/keep/screen/BookKeepActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    new-instance v2, Lcom/laborbook/keep/screen/BookKeepActivity$$ExternalSyntheticLambda13;

    invoke-direct {v2}, Lcom/laborbook/keep/screen/BookKeepActivity$$ExternalSyntheticLambda13;-><init>()V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 393
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method private static final showExitConfirmationDialog$lambda$13(Lcom/laborbook/keep/screen/BookKeepActivity;Landroid/content/DialogInterface;I)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 388
    invoke-virtual {p0}, Lcom/laborbook/keep/screen/BookKeepActivity;->finishAffinity()V

    return-void
.end method

.method private static final showExitConfirmationDialog$lambda$14(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 391
    invoke-interface {p0}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method

.method private final startUpdate(Lcom/google/android/play/core/appupdate/AppUpdateInfo;I)V
    .locals 4

    const/4 v0, 0x0

    .line 521
    :try_start_0
    invoke-static {p2}, Lcom/google/android/play/core/appupdate/AppUpdateOptions;->newBuilder(I)Lcom/google/android/play/core/appupdate/AppUpdateOptions$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/play/core/appupdate/AppUpdateOptions$Builder;->build()Lcom/google/android/play/core/appupdate/AppUpdateOptions;

    move-result-object v1

    const-string v2, "build(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 524
    iget-object v2, p0, Lcom/laborbook/keep/screen/BookKeepActivity;->appUpdateManager:Lcom/google/android/play/core/appupdate/AppUpdateManager;

    if-nez v2, :cond_0

    const-string v2, "appUpdateManager"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v2, 0x0

    :cond_0
    move-object v3, p0

    check-cast v3, Landroid/app/Activity;

    invoke-interface {v2, p1, v3, v1}, Lcom/google/android/play/core/appupdate/AppUpdateManager;->startUpdateFlow(Lcom/google/android/play/core/appupdate/AppUpdateInfo;Landroid/app/Activity;Lcom/google/android/play/core/appupdate/AppUpdateOptions;)Lcom/google/android/gms/tasks/Task;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 525
    const-string p1, "update_type"

    const-string v1, "start_update"

    const/4 v2, 0x1

    if-ne p2, v2, :cond_1

    .line 526
    :try_start_1
    new-array p2, v2, [Lkotlin/Pair;

    new-instance v2, Lkotlin/Pair;

    const-string v3, "IMMEDIATE"

    invoke-direct {v2, p1, v3}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v2, p2, v0

    invoke-static {p2}, Lkotlin/collections/MapsKt;->hashMapOf([Lkotlin/Pair;)Ljava/util/HashMap;

    move-result-object p1

    invoke-virtual {p0, v1, p1}, Lcom/laborbook/keep/screen/BookKeepActivity;->triggerSystemEvent(Ljava/lang/String;Ljava/util/HashMap;)V

    goto :goto_0

    .line 528
    :cond_1
    new-array p2, v2, [Lkotlin/Pair;

    new-instance v2, Lkotlin/Pair;

    const-string v3, "FLEXIBLE"

    invoke-direct {v2, p1, v3}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v2, p2, v0

    invoke-static {p2}, Lkotlin/collections/MapsKt;->hashMapOf([Lkotlin/Pair;)Ljava/util/HashMap;

    move-result-object p1

    invoke-virtual {p0, v1, p1}, Lcom/laborbook/keep/screen/BookKeepActivity;->triggerSystemEvent(Ljava/lang/String;Ljava/util/HashMap;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 531
    move-object p2, p0

    check-cast p2, Landroid/content/Context;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Error starting update flow: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-static {p2, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void
.end method

.method private final todayEpochDayUtc()I
    .locals 3

    .line 591
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toDays(J)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method


# virtual methods
.method public final getDataStoreManager()Lcom/laborbook/base/datastore/DataStoreManager;
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/laborbook/keep/screen/BookKeepActivity;->dataStoreManager$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/laborbook/base/datastore/DataStoreManager;

    return-object v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .annotation runtime Lkotlin/Deprecated;
        message = "Deprecated in Java"
    .end annotation

    .line 895
    invoke-super {p0, p1, p2, p3}, Lcom/laborbook/base/BaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 896
    invoke-virtual {p0}, Lcom/laborbook/keep/screen/BookKeepActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v1, "PremiumOfferDialogFragment"

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    .line 897
    instance-of v1, v0, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;

    if-eqz v1, :cond_0

    .line 898
    check-cast v0, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;

    invoke-virtual {v0, p1, p2, p3}, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;->onActivityResultForRazorpay(IILandroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public onBackPressed()V
    .locals 2

    .line 376
    invoke-direct {p0}, Lcom/laborbook/keep/screen/BookKeepActivity;->getFragmentNavigator()Lcom/laborbook/base/navigator/FragmentNavigator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/laborbook/base/navigator/FragmentNavigator;->canGoBack()Ljava/lang/Boolean;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 377
    invoke-direct {p0}, Lcom/laborbook/keep/screen/BookKeepActivity;->getFragmentNavigator()Lcom/laborbook/base/navigator/FragmentNavigator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/laborbook/base/navigator/FragmentNavigator;->goBack()V

    goto :goto_0

    .line 379
    :cond_0
    invoke-direct {p0}, Lcom/laborbook/keep/screen/BookKeepActivity;->showExitConfirmationDialog()V

    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 113
    invoke-super {p0, p1}, Lcom/laborbook/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 114
    invoke-virtual {p0}, Lcom/laborbook/keep/screen/BookKeepActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-static {v0}, Lcom/laborbook/keep/databinding/ActivityBookKeepBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/laborbook/keep/databinding/ActivityBookKeepBinding;

    move-result-object v0

    iput-object v0, p0, Lcom/laborbook/keep/screen/BookKeepActivity;->binding:Lcom/laborbook/keep/databinding/ActivityBookKeepBinding;

    if-nez v0, :cond_0

    .line 115
    const-string v0, "binding"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    invoke-virtual {v0}, Lcom/laborbook/keep/databinding/ActivityBookKeepBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/laborbook/keep/screen/BookKeepActivity;->setContentView(Landroid/view/View;)V

    .line 116
    invoke-direct {p0}, Lcom/laborbook/keep/screen/BookKeepActivity;->enableEdgeToEdge()V

    .line 117
    invoke-direct {p0, p1}, Lcom/laborbook/keep/screen/BookKeepActivity;->setupNavigator(Landroid/os/Bundle;)V

    .line 118
    invoke-direct {p0}, Lcom/laborbook/keep/screen/BookKeepActivity;->setOnItemSelectedListener()V

    .line 119
    invoke-direct {p0}, Lcom/laborbook/keep/screen/BookKeepActivity;->setOnDestinationChangeListener()V

    .line 120
    invoke-direct {p0}, Lcom/laborbook/keep/screen/BookKeepActivity;->checkForNotificationPermission()V

    .line 121
    invoke-direct {p0}, Lcom/laborbook/keep/screen/BookKeepActivity;->recordFirstTimeHomeScreenEventIfNeeded()V

    .line 124
    :try_start_0
    move-object p1, p0

    check-cast p1, Landroid/content/Context;

    invoke-static {p1}, Lcom/google/android/play/core/appupdate/AppUpdateManagerFactory;->create(Landroid/content/Context;)Lcom/google/android/play/core/appupdate/AppUpdateManager;

    move-result-object p1

    iput-object p1, p0, Lcom/laborbook/keep/screen/BookKeepActivity;->appUpdateManager:Lcom/google/android/play/core/appupdate/AppUpdateManager;

    .line 126
    new-instance p1, Landroidx/activity/result/contract/ActivityResultContracts$StartActivityForResult;

    invoke-direct {p1}, Landroidx/activity/result/contract/ActivityResultContracts$StartActivityForResult;-><init>()V

    check-cast p1, Landroidx/activity/result/contract/ActivityResultContract;

    new-instance v0, Lcom/laborbook/keep/screen/BookKeepActivity$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/laborbook/keep/screen/BookKeepActivity$$ExternalSyntheticLambda1;-><init>()V

    invoke-virtual {p0, p1, v0}, Lcom/laborbook/keep/screen/BookKeepActivity;->registerForActivityResult(Landroidx/activity/result/contract/ActivityResultContract;Landroidx/activity/result/ActivityResultCallback;)Landroidx/activity/result/ActivityResultLauncher;

    move-result-object p1

    .line 125
    iput-object p1, p0, Lcom/laborbook/keep/screen/BookKeepActivity;->appUpdateLauncher:Landroidx/activity/result/ActivityResultLauncher;

    .line 129
    new-instance p1, Landroidx/activity/result/contract/ActivityResultContracts$StartActivityForResult;

    invoke-direct {p1}, Landroidx/activity/result/contract/ActivityResultContracts$StartActivityForResult;-><init>()V

    check-cast p1, Landroidx/activity/result/contract/ActivityResultContract;

    new-instance v0, Lcom/laborbook/keep/screen/BookKeepActivity$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/laborbook/keep/screen/BookKeepActivity$$ExternalSyntheticLambda2;-><init>(Lcom/laborbook/keep/screen/BookKeepActivity;)V

    invoke-virtual {p0, p1, v0}, Lcom/laborbook/keep/screen/BookKeepActivity;->registerForActivityResult(Landroidx/activity/result/contract/ActivityResultContract;Landroidx/activity/result/ActivityResultCallback;)Landroidx/activity/result/ActivityResultLauncher;

    move-result-object p1

    iput-object p1, p0, Lcom/laborbook/keep/screen/BookKeepActivity;->appLockLauncher:Landroidx/activity/result/ActivityResultLauncher;

    .line 137
    invoke-direct {p0}, Lcom/laborbook/keep/screen/BookKeepActivity;->checkForUpdate()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 141
    :catch_0
    invoke-direct {p0}, Lcom/laborbook/keep/screen/BookKeepActivity;->observeProStatusChanges()V

    .line 144
    invoke-direct {p0}, Lcom/laborbook/keep/screen/BookKeepActivity;->observeSubscriptionStateChanges()V

    .line 147
    invoke-direct {p0}, Lcom/laborbook/keep/screen/BookKeepActivity;->checkAndShowHardPaywall()V

    return-void
.end method

.method public onPaymentError(ILjava/lang/String;Lcom/razorpay/PaymentData;)V
    .locals 2

    const-string v0, "errorMessage"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 886
    invoke-virtual {p0}, Lcom/laborbook/keep/screen/BookKeepActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v1, "PremiumOfferDialogFragment"

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    .line 887
    instance-of v1, v0, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;

    if-eqz v1, :cond_0

    .line 888
    check-cast v0, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;

    invoke-virtual {v0, p1, p2, p3}, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;->onPaymentError(ILjava/lang/String;Lcom/razorpay/PaymentData;)V

    :cond_0
    return-void
.end method

.method public onPaymentSuccess(Ljava/lang/String;Lcom/razorpay/PaymentData;)V
    .locals 2

    const-string v0, "razorpayPaymentId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 879
    invoke-virtual {p0}, Lcom/laborbook/keep/screen/BookKeepActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v1, "PremiumOfferDialogFragment"

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    .line 880
    instance-of v1, v0, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;

    if-eqz v1, :cond_0

    .line 881
    check-cast v0, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;

    invoke-virtual {v0, p1, p2}, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;->onPaymentSuccess(Ljava/lang/String;Lcom/razorpay/PaymentData;)V

    :cond_0
    return-void
.end method

.method public final onPaywallDismissed()V
    .locals 7

    .line 679
    move-object v0, p0

    check-cast v0, Landroidx/lifecycle/LifecycleOwner;

    invoke-static {v0}, Landroidx/lifecycle/LifecycleOwnerKt;->getLifecycleScope(Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LifecycleCoroutineScope;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lkotlinx/coroutines/CoroutineScope;

    new-instance v0, Lcom/laborbook/keep/screen/BookKeepActivity$onPaywallDismissed$1;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lcom/laborbook/keep/screen/BookKeepActivity$onPaywallDismissed$1;-><init>(Lcom/laborbook/keep/screen/BookKeepActivity;Lkotlin/coroutines/Continuation;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final onPaywallShown()V
    .locals 0

    .line 672
    invoke-direct {p0}, Lcom/laborbook/keep/screen/BookKeepActivity;->preloadCalendarExitInterstitialIfEligible()V

    return-void
.end method

.method protected onResume()V
    .locals 9

    .line 536
    invoke-super {p0}, Lcom/laborbook/base/BaseActivity;->onResume()V

    .line 537
    invoke-direct {p0}, Lcom/laborbook/keep/screen/BookKeepActivity;->ensureNetworkHeaders()V

    .line 538
    move-object v0, p0

    check-cast v0, Landroidx/lifecycle/LifecycleOwner;

    invoke-static {v0}, Landroidx/lifecycle/LifecycleOwnerKt;->getLifecycleScope(Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LifecycleCoroutineScope;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lkotlinx/coroutines/CoroutineScope;

    new-instance v1, Lcom/laborbook/keep/screen/BookKeepActivity$onResume$1;

    const/4 v8, 0x0

    invoke-direct {v1, p0, v8}, Lcom/laborbook/keep/screen/BookKeepActivity$onResume$1;-><init>(Lcom/laborbook/keep/screen/BookKeepActivity;Lkotlin/coroutines/Continuation;)V

    move-object v5, v1

    check-cast v5, Lkotlin/jvm/functions/Function2;

    const/4 v6, 0x3

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static/range {v2 .. v7}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 551
    iget-object v1, p0, Lcom/laborbook/keep/screen/BookKeepActivity;->appUpdateManager:Lcom/google/android/play/core/appupdate/AppUpdateManager;

    if-nez v1, :cond_0

    const-string v1, "appUpdateManager"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v8

    .line 552
    :cond_0
    invoke-interface {v1}, Lcom/google/android/play/core/appupdate/AppUpdateManager;->getAppUpdateInfo()Lcom/google/android/gms/tasks/Task;

    move-result-object v1

    .line 553
    new-instance v2, Lcom/laborbook/keep/screen/BookKeepActivity$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/laborbook/keep/screen/BookKeepActivity$$ExternalSyntheticLambda0;-><init>(Lcom/laborbook/keep/screen/BookKeepActivity;)V

    new-instance v3, Lcom/laborbook/keep/screen/BookKeepActivity$$ExternalSyntheticLambda11;

    invoke-direct {v3, v2}, Lcom/laborbook/keep/screen/BookKeepActivity$$ExternalSyntheticLambda11;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v1, v3}, Lcom/google/android/gms/tasks/Task;->addOnSuccessListener(Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/android/gms/tasks/Task;

    .line 560
    iget-boolean v1, p0, Lcom/laborbook/keep/screen/BookKeepActivity;->referFriendBottomSheetCheckedThisSession:Z

    if-nez v1, :cond_1

    .line 561
    invoke-static {v0}, Landroidx/lifecycle/LifecycleOwnerKt;->getLifecycleScope(Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LifecycleCoroutineScope;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lkotlinx/coroutines/CoroutineScope;

    new-instance v0, Lcom/laborbook/keep/screen/BookKeepActivity$onResume$3;

    invoke-direct {v0, p0, v8}, Lcom/laborbook/keep/screen/BookKeepActivity$onResume$3;-><init>(Lcom/laborbook/keep/screen/BookKeepActivity;Lkotlin/coroutines/Continuation;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    :cond_1
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "outState"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 411
    invoke-direct {p0}, Lcom/laborbook/keep/screen/BookKeepActivity;->getFragmentNavigator()Lcom/laborbook/base/navigator/FragmentNavigator;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/laborbook/base/navigator/FragmentNavigator;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 412
    :cond_0
    invoke-super {p0, p1}, Lcom/laborbook/base/BaseActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method protected onStart()V
    .locals 0

    .line 568
    invoke-super {p0}, Lcom/laborbook/base/BaseActivity;->onStart()V

    return-void
.end method

.method public onTabChanged(I)V
    .locals 3

    const/4 v0, 0x0

    .line 397
    const-string v1, "binding"

    if-eqz p1, :cond_4

    const/4 v2, 0x1

    if-eq p1, v2, :cond_2

    const/4 v2, 0x2

    if-eq p1, v2, :cond_0

    goto :goto_3

    .line 405
    :cond_0
    iget-object p1, p0, Lcom/laborbook/keep/screen/BookKeepActivity;->binding:Lcom/laborbook/keep/databinding/ActivityBookKeepBinding;

    if-nez p1, :cond_1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v0, p1

    :goto_0
    iget-object p1, v0, Lcom/laborbook/keep/databinding/ActivityBookKeepBinding;->bottomNav:Lcom/google/android/material/bottomnavigation/BottomNavigationView;

    if-eqz p1, :cond_6

    sget v0, Lcom/laborbook/keep/R$id;->navigation_settings:I

    invoke-virtual {p1, v0}, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->setSelectedItemId(I)V

    goto :goto_3

    .line 402
    :cond_2
    iget-object p1, p0, Lcom/laborbook/keep/screen/BookKeepActivity;->binding:Lcom/laborbook/keep/databinding/ActivityBookKeepBinding;

    if-nez p1, :cond_3

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    move-object v0, p1

    :goto_1
    iget-object p1, v0, Lcom/laborbook/keep/databinding/ActivityBookKeepBinding;->bottomNav:Lcom/google/android/material/bottomnavigation/BottomNavigationView;

    if-eqz p1, :cond_6

    sget v0, Lcom/laborbook/keep/R$id;->navigation_cashbook:I

    invoke-virtual {p1, v0}, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->setSelectedItemId(I)V

    goto :goto_3

    .line 399
    :cond_4
    iget-object p1, p0, Lcom/laborbook/keep/screen/BookKeepActivity;->binding:Lcom/laborbook/keep/databinding/ActivityBookKeepBinding;

    if-nez p1, :cond_5

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_2

    :cond_5
    move-object v0, p1

    :goto_2
    iget-object p1, v0, Lcom/laborbook/keep/databinding/ActivityBookKeepBinding;->bottomNav:Lcom/google/android/material/bottomnavigation/BottomNavigationView;

    if-eqz p1, :cond_6

    sget v0, Lcom/laborbook/keep/R$id;->navigation_staff:I

    invoke-virtual {p1, v0}, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->setSelectedItemId(I)V

    :cond_6
    :goto_3
    return-void
.end method
