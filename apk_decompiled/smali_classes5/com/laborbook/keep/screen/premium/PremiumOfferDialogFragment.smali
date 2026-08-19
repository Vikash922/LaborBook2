.class public final Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;
.super Landroidx/fragment/app/DialogFragment;
.source "PremiumOfferDialogFragment.kt"

# interfaces
.implements Lcom/razorpay/PaymentResultWithDataListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment$Companion;,
        Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment$Testimonial;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPremiumOfferDialogFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PremiumOfferDialogFragment.kt\ncom/laborbook/keep/screen/premium/PremiumOfferDialogFragment\n+ 2 ComponentCallbackExt.kt\norg/koin/android/ext/android/ComponentCallbackExtKt\n+ 3 ViewModelStoreOwnerExt.kt\norg/koin/androidx/viewmodel/ext/android/ViewModelStoreOwnerExtKt\n+ 4 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 5 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,1187:1\n50#2,5:1188\n50#2,5:1193\n35#3,6:1198\n774#4:1204\n865#4,2:1205\n1557#4:1207\n1628#4,3:1208\n774#4:1211\n865#4,2:1212\n1062#4:1215\n1872#4,3:1216\n1062#4:1219\n1872#4,3:1220\n295#4,2:1223\n1#5:1214\n*S KotlinDebug\n*F\n+ 1 PremiumOfferDialogFragment.kt\ncom/laborbook/keep/screen/premium/PremiumOfferDialogFragment\n*L\n53#1:1188,5\n54#1:1193,5\n55#1:1198,6\n490#1:1204\n490#1:1205,2\n494#1:1207\n494#1:1208,3\n497#1:1211\n497#1:1212,2\n512#1:1215\n530#1:1216,3\n582#1:1219\n589#1:1220,3\n808#1:1223,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00fc\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u000f\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\r\n\u0002\u0008\u0010\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u0000 \u00a5\u00012\u00020\u00012\u00020\u0002:\u0004\u00a4\u0001\u00a5\u0001B\u0007\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u0012\u0010@\u001a\u00020A2\u0008\u0010B\u001a\u0004\u0018\u00010CH\u0016J&\u0010D\u001a\u0004\u0018\u00010E2\u0006\u0010F\u001a\u00020G2\u0008\u0010H\u001a\u0004\u0018\u00010I2\u0008\u0010B\u001a\u0004\u0018\u00010CH\u0016J\u001a\u0010J\u001a\u00020A2\u0006\u0010K\u001a\u00020E2\u0008\u0010B\u001a\u0004\u0018\u00010CH\u0016J\u0008\u0010L\u001a\u00020AH\u0016J\u0008\u0010M\u001a\u00020AH\u0016J\u0008\u0010N\u001a\u00020AH\u0016J\u0010\u0010O\u001a\u00020A2\u0006\u0010P\u001a\u00020QH\u0016J\u0012\u0010R\u001a\u00020S2\u0008\u0010B\u001a\u0004\u0018\u00010CH\u0016J\u0008\u0010T\u001a\u00020AH\u0002J\u0008\u0010U\u001a\u00020VH\u0002J\u0008\u0010W\u001a\u00020AH\u0002J\u0008\u0010X\u001a\u00020AH\u0002J\u0008\u0010Y\u001a\u00020AH\u0002J\u0008\u0010Z\u001a\u00020AH\u0002J\u0008\u0010[\u001a\u00020AH\u0002J\u0008\u0010\\\u001a\u00020AH\u0002J\u0008\u0010]\u001a\u00020AH\u0002J\u0016\u0010^\u001a\u00020A2\u000c\u0010_\u001a\u0008\u0012\u0004\u0012\u00020\"0\'H\u0002J\u0016\u0010`\u001a\u00020A2\u000c\u0010a\u001a\u0008\u0012\u0004\u0012\u00020\"0\'H\u0002J\u0010\u0010b\u001a\u00020A2\u0006\u0010c\u001a\u00020\"H\u0002J \u0010d\u001a\u00020A2\u0006\u0010e\u001a\u00020f2\u0006\u0010c\u001a\u00020\"2\u0006\u0010g\u001a\u00020)H\u0002J\u0018\u0010h\u001a\u00020A2\u0006\u0010e\u001a\u00020f2\u0006\u0010g\u001a\u00020)H\u0002J\u0012\u0010i\u001a\u00020j2\u0008\u0010c\u001a\u0004\u0018\u00010\"H\u0002J\u0010\u0010k\u001a\u00020$2\u0006\u0010l\u001a\u00020$H\u0002J\u000e\u0010m\u001a\u00020AH\u0082@\u00a2\u0006\u0002\u0010nJ\u0008\u0010o\u001a\u00020AH\u0002J\u0008\u0010p\u001a\u00020AH\u0002J\u0010\u0010q\u001a\u00020$2\u0006\u0010r\u001a\u00020:H\u0002J\u0008\u0010s\u001a\u00020AH\u0002J\u0008\u0010t\u001a\u00020AH\u0002J\u0008\u0010u\u001a\u00020AH\u0002J\u0008\u0010v\u001a\u00020AH\u0002J\u0008\u0010w\u001a\u00020AH\u0002J\u0008\u0010x\u001a\u00020AH\u0002J\u0010\u0010y\u001a\u00020A2\u0006\u0010z\u001a\u00020{H\u0002J\u0018\u0010|\u001a\u00020A2\u0006\u0010z\u001a\u00020{2\u0006\u0010}\u001a\u00020 H\u0002J\u0008\u0010~\u001a\u00020AH\u0002J\u001d\u0010\u007f\u001a\u00020A2\u0007\u0010\u0080\u0001\u001a\u00020$2\n\u0010\u0081\u0001\u001a\u0005\u0018\u00010\u0082\u0001H\u0016J\'\u0010\u0083\u0001\u001a\u00020A2\u0007\u0010\u0084\u0001\u001a\u00020,2\u0007\u0010\u0085\u0001\u001a\u00020$2\n\u0010\u0081\u0001\u001a\u0005\u0018\u00010\u0082\u0001H\u0016J\u0012\u0010\u0086\u0001\u001a\u00020A2\u0007\u0010\u0087\u0001\u001a\u00020$H\u0002J\t\u0010\u0088\u0001\u001a\u00020AH\u0002J\u001c\u0010\u0089\u0001\u001a\u00020A2\u0007\u0010\u008a\u0001\u001a\u00020$2\u0008\u0010\u008b\u0001\u001a\u00030\u008c\u0001H\u0002J\u0012\u0010\u008d\u0001\u001a\u00020A2\u0007\u0010\u008a\u0001\u001a\u00020$H\u0002J\u0012\u0010\u008e\u0001\u001a\u00020A2\u0007\u0010\u008f\u0001\u001a\u00020)H\u0002J\u0012\u0010\u0090\u0001\u001a\u00020A2\u0007\u0010\u008f\u0001\u001a\u00020)H\u0002J\u0012\u0010\u0091\u0001\u001a\u00020A2\u0007\u0010\u0087\u0001\u001a\u00020$H\u0002J\u0012\u0010\u0092\u0001\u001a\u00020A2\u0007\u0010\u0087\u0001\u001a\u00020$H\u0002J\u0012\u0010\u0093\u0001\u001a\u00020A2\u0007\u0010\u0087\u0001\u001a\u00020$H\u0002J\t\u0010\u0094\u0001\u001a\u00020AH\u0002J\t\u0010\u0095\u0001\u001a\u00020AH\u0002JG\u0010\u0096\u0001\u001a\u00020A2\u0007\u0010\u0097\u0001\u001a\u00020$2-\u0008\u0002\u0010\u0098\u0001\u001a&\u0012\u0004\u0012\u00020$\u0012\u0005\u0012\u00030\u009a\u0001\u0018\u00010\u009b\u0001j\u0012\u0012\u0004\u0012\u00020$\u0012\u0005\u0012\u00030\u009a\u0001\u0018\u0001`\u0099\u0001H\u0002\u00a2\u0006\u0003\u0010\u009c\u0001JG\u0010\u009d\u0001\u001a\u00020A2\u0007\u0010\u0097\u0001\u001a\u00020$2-\u0008\u0002\u0010\u0098\u0001\u001a&\u0012\u0004\u0012\u00020$\u0012\u0005\u0012\u00030\u009a\u0001\u0018\u00010\u009b\u0001j\u0012\u0012\u0004\u0012\u00020$\u0012\u0005\u0012\u00030\u009a\u0001\u0018\u0001`\u0099\u0001H\u0002\u00a2\u0006\u0003\u0010\u009c\u0001J%\u0010\u009e\u0001\u001a\u00020A2\u0007\u0010\u009f\u0001\u001a\u00020,2\u0007\u0010\u00a0\u0001\u001a\u00020,2\n\u0010\u00a1\u0001\u001a\u0005\u0018\u00010\u00a2\u0001J\t\u0010\u00a3\u0001\u001a\u00020AH\u0016R\u0010\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u0007\u001a\u0004\u0018\u00010\u00068BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0008\u0010\tR\u001b\u0010\n\u001a\u00020\u000b8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u000e\u0010\u000f\u001a\u0004\u0008\u000c\u0010\rR\u001b\u0010\u0010\u001a\u00020\u00118BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0014\u0010\u000f\u001a\u0004\u0008\u0012\u0010\u0013R\u001b\u0010\u0015\u001a\u00020\u00168BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0019\u0010\u000f\u001a\u0004\u0008\u0017\u0010\u0018R\u001b\u0010\u001a\u001a\u00020\u001b8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u001e\u0010\u000f\u001a\u0004\u0008\u001c\u0010\u001dR\u0010\u0010\u001f\u001a\u0004\u0018\u00010 X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010!\u001a\u0004\u0018\u00010\"X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010#\u001a\u0004\u0018\u00010$X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010%\u001a\u00020$X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010&\u001a\u0008\u0012\u0004\u0012\u00020 0\'X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010(\u001a\u00020)X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010*\u001a\u00020)X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010+\u001a\u00020,X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010-\u001a\u00020,X\u0082D\u00a2\u0006\u0002\n\u0000R\u000e\u0010.\u001a\u00020)X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010/\u001a\u00020)X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u00100\u001a\u00020$X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u00101\u001a\u00020)X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u00102\u001a\u0004\u0018\u000103X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u00104\u001a\u0004\u0018\u000103X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u00105\u001a\u0008\u0012\u0004\u0012\u0002060\'X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u00107\u001a\u0004\u0018\u000108X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u00109\u001a\u0004\u0018\u00010:X\u0082\u000e\u00a2\u0006\u0004\n\u0002\u0010;R\u0010\u0010<\u001a\u0004\u0018\u00010=X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010>\u001a\u0008\u0012\u0004\u0012\u00020,0\'X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010?\u001a\u0008\u0012\u0004\u0012\u00020,0\'X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u00a6\u0001"
    }
    d2 = {
        "Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;",
        "Landroidx/fragment/app/DialogFragment;",
        "Lcom/razorpay/PaymentResultWithDataListener;",
        "<init>",
        "()V",
        "_binding",
        "Lcom/laborbook/keep/databinding/DialogPremiumOfferBinding;",
        "binding",
        "getBinding",
        "()Lcom/laborbook/keep/databinding/DialogPremiumOfferBinding;",
        "analytics",
        "Lcom/laborbook/base/analytics/Analytics;",
        "getAnalytics",
        "()Lcom/laborbook/base/analytics/Analytics;",
        "analytics$delegate",
        "Lkotlin/Lazy;",
        "dataStoreManager",
        "Lcom/laborbook/base/datastore/DataStoreManager;",
        "getDataStoreManager",
        "()Lcom/laborbook/base/datastore/DataStoreManager;",
        "dataStoreManager$delegate",
        "viewModel",
        "Lcom/laborbook/keep/screen/premium/viewmodel/SubscriptionViewModel;",
        "getViewModel",
        "()Lcom/laborbook/keep/screen/premium/viewmodel/SubscriptionViewModel;",
        "viewModel$delegate",
        "remoteConfig",
        "Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;",
        "getRemoteConfig",
        "()Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;",
        "remoteConfig$delegate",
        "selectedUpiApp",
        "Lcom/laborbook/keep/screen/premium/InstalledUpiApp;",
        "selectedPlan",
        "Lcom/laborbook/keep/model/subscription/SubscriptionPlan;",
        "currentSubscriptionId",
        "",
        "installSource",
        "installedUpiApps",
        "",
        "isVerificationInProgress",
        "",
        "paymentFlowInProgress",
        "verificationAttempts",
        "",
        "maxVerificationAttempts",
        "isInitialPlansLoading",
        "isTrialExpired",
        "defaultInterval",
        "isHardPaywall",
        "socialProofJob",
        "Lkotlinx/coroutines/Job;",
        "testimonialJob",
        "testimonials",
        "Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment$Testimonial;",
        "offerTimerRunnable",
        "Ljava/lang/Runnable;",
        "offerTimerEndAtElapsedMs",
        "",
        "Ljava/lang/Long;",
        "razorpayCustom",
        "Lcom/razorpay/Razorpay;",
        "socialProofTrialResIds",
        "socialProofProResIds",
        "onCreate",
        "",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "onCreateView",
        "Landroid/view/View;",
        "inflater",
        "Landroid/view/LayoutInflater;",
        "container",
        "Landroid/view/ViewGroup;",
        "onViewCreated",
        "view",
        "onStart",
        "onResume",
        "onPause",
        "onDismiss",
        "dialog",
        "Landroid/content/DialogInterface;",
        "onCreateDialog",
        "Landroid/app/Dialog;",
        "handleBackPress",
        "createPaymentWebViewClient",
        "Landroid/webkit/WebViewClient;",
        "onPaymentWebViewDismissed",
        "startSocialProofTicker",
        "startTestimonialTicker",
        "setupViews",
        "registerClickListeners",
        "loadSubscriptionPlans",
        "observeViewModel",
        "handlePlansLoaded",
        "plans",
        "updateTrialSections",
        "activePlans",
        "updatePriceDisplay",
        "plan",
        "bindPlanItem",
        "itemBinding",
        "Lcom/laborbook/keep/databinding/ItemSubscriptionPlanBinding;",
        "isSelected",
        "updatePlanSelectionVisuals",
        "getStartTrialButtonText",
        "",
        "formatIntervalForTrial",
        "interval",
        "setupOfferTimerFromRemoteConfig",
        "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "maybeStartOfferCountdown",
        "stopOfferCountdown",
        "formatOfferDuration",
        "totalSeconds",
        "fetchPaymentMethods",
        "loadUpiAppsViaRazorpay",
        "loadUpiAppsFallback",
        "showFaqBottomSheet",
        "showUpiSelectionBottomSheet",
        "handleStartTrial",
        "initiateRazorpayPayment",
        "response",
        "Lcom/laborbook/keep/model/subscription/CreateSubscriptionResponse;",
        "initiatePaymentWithSubscription",
        "upiApp",
        "hidePaymentWebView",
        "onPaymentSuccess",
        "razorpayPaymentId",
        "paymentData",
        "Lcom/razorpay/PaymentData;",
        "onPaymentError",
        "errorCode",
        "errorMessage",
        "showVerificationScreen",
        "message",
        "hideVerificationScreen",
        "startVerificationPolling",
        "subscriptionId",
        "verifyRequest",
        "Lcom/laborbook/keep/model/subscription/VerifySubscriptionRequest;",
        "startStatusPolling",
        "showLoading",
        "show",
        "showSpinnerLoading",
        "showErrorLoading",
        "showError",
        "showPaymentFailedBottomSheet",
        "restoreSubscriptionPageUI",
        "showSuccessDialog",
        "triggerImpressionEvent",
        "eventName",
        "hashMap",
        "Lkotlin/collections/HashMap;",
        "",
        "Ljava/util/HashMap;",
        "(Ljava/lang/String;Ljava/util/HashMap;)V",
        "recordClickEvent",
        "onActivityResultForRazorpay",
        "requestCode",
        "resultCode",
        "data",
        "Landroid/content/Intent;",
        "onDestroyView",
        "Testimonial",
        "Companion",
        "keep_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field private static final ARG_IS_HARD_PAYWALL:Ljava/lang/String; = "is_hard_paywall"

.field private static final ARG_IS_TRIAL_EXPIRED:Ljava/lang/String; = "is_trial_expired"

.field public static final Companion:Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment$Companion;

.field public static final TAG:Ljava/lang/String; = "PremiumOfferDialogFragment"


# instance fields
.field private _binding:Lcom/laborbook/keep/databinding/DialogPremiumOfferBinding;

.field private final analytics$delegate:Lkotlin/Lazy;

.field private currentSubscriptionId:Ljava/lang/String;

.field private final dataStoreManager$delegate:Lkotlin/Lazy;

.field private defaultInterval:Ljava/lang/String;

.field private installSource:Ljava/lang/String;

.field private installedUpiApps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/laborbook/keep/screen/premium/InstalledUpiApp;",
            ">;"
        }
    .end annotation
.end field

.field private isHardPaywall:Z

.field private isInitialPlansLoading:Z

.field private isTrialExpired:Z

.field private isVerificationInProgress:Z

.field private final maxVerificationAttempts:I

.field private offerTimerEndAtElapsedMs:Ljava/lang/Long;

.field private offerTimerRunnable:Ljava/lang/Runnable;

.field private paymentFlowInProgress:Z

.field private razorpayCustom:Lcom/razorpay/Razorpay;

.field private final remoteConfig$delegate:Lkotlin/Lazy;

.field private selectedPlan:Lcom/laborbook/keep/model/subscription/SubscriptionPlan;

.field private selectedUpiApp:Lcom/laborbook/keep/screen/premium/InstalledUpiApp;

.field private socialProofJob:Lkotlinx/coroutines/Job;

.field private final socialProofProResIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final socialProofTrialResIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private testimonialJob:Lkotlinx/coroutines/Job;

.field private final testimonials:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment$Testimonial;",
            ">;"
        }
    .end annotation
.end field

.field private verificationAttempts:I

.field private final viewModel$delegate:Lkotlin/Lazy;


# direct methods
.method public static synthetic $r8$lambda$2HK9Lir7-tn8CzMqNQo4E5cUb0Y(Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;Lcom/laborbook/keep/screen/premium/viewmodel/SubscriptionViewModel$SubscriptionState;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;->observeViewModel$lambda$14(Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;Lcom/laborbook/keep/screen/premium/viewmodel/SubscriptionViewModel$SubscriptionState;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$8NPW9ZIMc-62jaRmuxeVAWScDHE(Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;->registerClickListeners$lambda$13$lambda$10(Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Cj0sjntvEib96wpaPetVjEJ2-NU(Lkotlin/jvm/internal/Ref$BooleanRef;Lcom/laborbook/keep/databinding/DialogPremiumOfferBinding;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;->setupViews$lambda$8$lambda$5(Lkotlin/jvm/internal/Ref$BooleanRef;Lcom/laborbook/keep/databinding/DialogPremiumOfferBinding;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$CrOIJ29oEqN973scE9QLwW3dxbM(Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;->registerClickListeners$lambda$13$lambda$9(Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Detymvf1Lq_f15M7tPlbvSGCrqg(Lcom/laborbook/keep/databinding/DialogPremiumOfferBinding;Landroid/media/MediaPlayer;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;->setupViews$lambda$8$lambda$4(Lcom/laborbook/keep/databinding/DialogPremiumOfferBinding;Landroid/media/MediaPlayer;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Itzz_m-JB5feoCr1-Vop6A6Nsp0(Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;Lcom/laborbook/keep/model/subscription/SubscriptionPlan;Lcom/laborbook/keep/databinding/DialogPremiumOfferBinding;ILandroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;->handlePlansLoaded$lambda$23$lambda$22$lambda$21(Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;Lcom/laborbook/keep/model/subscription/SubscriptionPlan;Lcom/laborbook/keep/databinding/DialogPremiumOfferBinding;ILandroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$KD9EaRAH0CSfdeL5syoDzhbZxU0(Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;->registerClickListeners$lambda$13$lambda$12(Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$KaQcsmu6w0ISNn-zZuzHzvSd5sw(Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;Lcom/laborbook/keep/screen/premium/InstalledUpiApp;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;->showUpiSelectionBottomSheet$lambda$35(Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;Lcom/laborbook/keep/screen/premium/InstalledUpiApp;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$Q6CH9ZifnXsQEzxL20M9Wf2-BSg(Landroid/media/MediaPlayer;)V
    .locals 0

    invoke-static {p0}, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;->setupViews$lambda$8$lambda$3(Landroid/media/MediaPlayer;)V

    return-void
.end method

.method public static synthetic $r8$lambda$RuImgp3PnUKgQhg5gJx6-v0pXPs(Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;->registerClickListeners$lambda$13$lambda$11(Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$_OobIJHv9ORXaiBW93LASEot2LU(Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;->setupViews$lambda$8$lambda$6(Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$dT91jN-Rzc7cbGdYvLa6F_8Czbo(Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;Lcom/laborbook/keep/model/subscription/SubscriptionPlan;Lcom/laborbook/keep/databinding/DialogPremiumOfferBinding;ILandroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;->updateTrialSections$lambda$27$lambda$26$lambda$25(Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;Lcom/laborbook/keep/model/subscription/SubscriptionPlan;Lcom/laborbook/keep/databinding/DialogPremiumOfferBinding;ILandroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$kymDAJGaHT7AI3rrV8VKyotoCtg(Landroid/view/View;II)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;->showFaqBottomSheet$lambda$34(Landroid/view/View;II)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$ob54BXJ9NPaBklp9Va9mVWNldS4(Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;
    .locals 0

    invoke-static {p0, p1}, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;->setupViews$lambda$8$lambda$7(Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$vTJq_EArFMJTejwOZ07_ZrPisZU(Landroid/view/View;ILandroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;->showFaqBottomSheet$lambda$34$lambda$33(Landroid/view/View;ILandroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$wkfASERRrlHwKtJ7DBRJpEEYnsM()Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;
    .locals 1

    invoke-static {}, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;->remoteConfig_delegate$lambda$0()Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic $r8$lambda$zDNcM2G1lSd79Uw_lYkHBZqY75Y(Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;->onCreateDialog$lambda$2(Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;->Companion:Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 24

    move-object/from16 v0, p0

    .line 49
    invoke-direct/range {p0 .. p0}, Landroidx/fragment/app/DialogFragment;-><init>()V

    .line 53
    move-object v1, v0

    check-cast v1, Landroid/content/ComponentCallbacks;

    .line 1190
    sget-object v2, Lkotlin/LazyThreadSafetyMode;->SYNCHRONIZED:Lkotlin/LazyThreadSafetyMode;

    .line 1192
    new-instance v3, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment$special$$inlined$inject$default$1;

    const/4 v4, 0x0

    invoke-direct {v3, v1, v4, v4}, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment$special$$inlined$inject$default$1;-><init>(Landroid/content/ComponentCallbacks;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)V

    check-cast v3, Lkotlin/jvm/functions/Function0;

    invoke-static {v2, v3}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v2

    .line 53
    iput-object v2, v0, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;->analytics$delegate:Lkotlin/Lazy;

    .line 1195
    sget-object v2, Lkotlin/LazyThreadSafetyMode;->SYNCHRONIZED:Lkotlin/LazyThreadSafetyMode;

    .line 1197
    new-instance v3, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment$special$$inlined$inject$default$2;

    invoke-direct {v3, v1, v4, v4}, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment$special$$inlined$inject$default$2;-><init>(Landroid/content/ComponentCallbacks;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)V

    check-cast v3, Lkotlin/jvm/functions/Function0;

    invoke-static {v2, v3}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v1

    .line 54
    iput-object v1, v0, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;->dataStoreManager$delegate:Lkotlin/Lazy;

    .line 55
    move-object v1, v0

    check-cast v1, Landroidx/lifecycle/ViewModelStoreOwner;

    .line 1200
    sget-object v2, Lkotlin/LazyThreadSafetyMode;->SYNCHRONIZED:Lkotlin/LazyThreadSafetyMode;

    .line 1203
    new-instance v3, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment$special$$inlined$viewModel$default$1;

    invoke-direct {v3, v1, v4, v4}, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment$special$$inlined$viewModel$default$1;-><init>(Landroidx/lifecycle/ViewModelStoreOwner;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)V

    check-cast v3, Lkotlin/jvm/functions/Function0;

    invoke-static {v2, v3}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v1

    .line 55
    iput-object v1, v0, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;->viewModel$delegate:Lkotlin/Lazy;

    .line 56
    new-instance v1, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment$$ExternalSyntheticLambda6;

    invoke-direct {v1}, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment$$ExternalSyntheticLambda6;-><init>()V

    invoke-static {v1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v1

    iput-object v1, v0, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;->remoteConfig$delegate:Lkotlin/Lazy;

    .line 61
    const-string v1, "organic"

    iput-object v1, v0, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;->installSource:Ljava/lang/String;

    .line 62
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;->installedUpiApps:Ljava/util/List;

    const/4 v1, 0x6

    .line 66
    iput v1, v0, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;->maxVerificationAttempts:I

    const/4 v2, 0x1

    .line 67
    iput-boolean v2, v0, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;->isInitialPlansLoading:Z

    .line 69
    const-string v3, "yearly"

    iput-object v3, v0, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;->defaultInterval:Ljava/lang/String;

    const/4 v3, 0x3

    .line 77
    new-array v4, v3, [Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment$Testimonial;

    new-instance v5, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment$Testimonial;

    sget v6, Lcom/laborbook/keep/R$string;->testimonial_1_text:I

    sget v7, Lcom/laborbook/keep/R$string;->testimonial_1_author:I

    const/high16 v8, 0x40a00000    # 5.0f

    invoke-direct {v5, v6, v7, v8}, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment$Testimonial;-><init>(IIF)V

    const/4 v6, 0x0

    aput-object v5, v4, v6

    .line 78
    new-instance v5, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment$Testimonial;

    sget v7, Lcom/laborbook/keep/R$string;->testimonial_2_text:I

    sget v9, Lcom/laborbook/keep/R$string;->testimonial_2_author:I

    const/high16 v10, 0x40800000    # 4.0f

    invoke-direct {v5, v7, v9, v10}, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment$Testimonial;-><init>(IIF)V

    aput-object v5, v4, v2

    .line 79
    new-instance v5, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment$Testimonial;

    sget v7, Lcom/laborbook/keep/R$string;->testimonial_3_text:I

    sget v9, Lcom/laborbook/keep/R$string;->testimonial_3_author:I

    invoke-direct {v5, v7, v9, v8}, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment$Testimonial;-><init>(IIF)V

    const/4 v7, 0x2

    aput-object v5, v4, v7

    .line 76
    invoke-static {v4}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    iput-object v4, v0, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;->testimonials:Ljava/util/List;

    const/16 v4, 0x14

    .line 88
    new-array v5, v4, [Ljava/lang/Integer;

    sget v8, Lcom/laborbook/keep/R$string;->social_proof_1:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v5, v6

    sget v8, Lcom/laborbook/keep/R$string;->social_proof_2:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v5, v2

    sget v8, Lcom/laborbook/keep/R$string;->social_proof_3:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v5, v7

    .line 89
    sget v8, Lcom/laborbook/keep/R$string;->social_proof_4:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v5, v3

    sget v8, Lcom/laborbook/keep/R$string;->social_proof_5:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v9, 0x4

    aput-object v8, v5, v9

    sget v8, Lcom/laborbook/keep/R$string;->social_proof_6:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v10, 0x5

    aput-object v8, v5, v10

    .line 90
    sget v8, Lcom/laborbook/keep/R$string;->social_proof_7:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v5, v1

    sget v8, Lcom/laborbook/keep/R$string;->social_proof_8:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v11, 0x7

    aput-object v8, v5, v11

    sget v8, Lcom/laborbook/keep/R$string;->social_proof_9:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/16 v12, 0x8

    aput-object v8, v5, v12

    .line 91
    sget v8, Lcom/laborbook/keep/R$string;->social_proof_10:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/16 v13, 0x9

    aput-object v8, v5, v13

    sget v8, Lcom/laborbook/keep/R$string;->social_proof_11:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/16 v14, 0xa

    aput-object v8, v5, v14

    sget v8, Lcom/laborbook/keep/R$string;->social_proof_12:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/16 v15, 0xb

    aput-object v8, v5, v15

    .line 92
    sget v8, Lcom/laborbook/keep/R$string;->social_proof_13:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/16 v16, 0xc

    aput-object v8, v5, v16

    sget v8, Lcom/laborbook/keep/R$string;->social_proof_14:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/16 v17, 0xd

    aput-object v8, v5, v17

    sget v8, Lcom/laborbook/keep/R$string;->social_proof_15:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/16 v18, 0xe

    aput-object v8, v5, v18

    .line 93
    sget v8, Lcom/laborbook/keep/R$string;->social_proof_16:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/16 v19, 0xf

    aput-object v8, v5, v19

    sget v8, Lcom/laborbook/keep/R$string;->social_proof_17:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/16 v20, 0x10

    aput-object v8, v5, v20

    sget v8, Lcom/laborbook/keep/R$string;->social_proof_18:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/16 v21, 0x11

    aput-object v8, v5, v21

    .line 94
    sget v8, Lcom/laborbook/keep/R$string;->social_proof_19:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/16 v22, 0x12

    aput-object v8, v5, v22

    sget v8, Lcom/laborbook/keep/R$string;->social_proof_20:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/16 v23, 0x13

    aput-object v8, v5, v23

    .line 87
    invoke-static {v5}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    iput-object v5, v0, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;->socialProofTrialResIds:Ljava/util/List;

    .line 98
    new-array v4, v4, [Ljava/lang/Integer;

    sget v5, Lcom/laborbook/keep/R$string;->social_proof_pro_1:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    sget v5, Lcom/laborbook/keep/R$string;->social_proof_pro_2:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    sget v2, Lcom/laborbook/keep/R$string;->social_proof_pro_3:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v4, v7

    .line 99
    sget v2, Lcom/laborbook/keep/R$string;->social_proof_pro_4:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v4, v3

    sget v2, Lcom/laborbook/keep/R$string;->social_proof_pro_5:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v4, v9

    sget v2, Lcom/laborbook/keep/R$string;->social_proof_pro_6:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v4, v10

    .line 100
    sget v2, Lcom/laborbook/keep/R$string;->social_proof_pro_7:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v4, v1

    sget v1, Lcom/laborbook/keep/R$string;->social_proof_pro_8:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v11

    sget v1, Lcom/laborbook/keep/R$string;->social_proof_pro_9:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v12

    .line 101
    sget v1, Lcom/laborbook/keep/R$string;->social_proof_pro_10:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v13

    sget v1, Lcom/laborbook/keep/R$string;->social_proof_pro_11:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v14

    sget v1, Lcom/laborbook/keep/R$string;->social_proof_pro_12:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v15

    .line 102
    sget v1, Lcom/laborbook/keep/R$string;->social_proof_pro_13:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v16

    sget v1, Lcom/laborbook/keep/R$string;->social_proof_pro_14:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v17

    sget v1, Lcom/laborbook/keep/R$string;->social_proof_pro_15:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v18

    .line 103
    sget v1, Lcom/laborbook/keep/R$string;->social_proof_pro_16:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v19

    sget v1, Lcom/laborbook/keep/R$string;->social_proof_pro_17:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v20

    sget v1, Lcom/laborbook/keep/R$string;->social_proof_pro_18:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v21

    .line 104
    sget v1, Lcom/laborbook/keep/R$string;->social_proof_pro_19:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v22

    sget v1, Lcom/laborbook/keep/R$string;->social_proof_pro_20:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x13

    aput-object v1, v4, v2

    .line 97
    invoke-static {v4}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;->socialProofProResIds:Ljava/util/List;

    return-void
.end method

.method public static final synthetic access$createPaymentWebViewClient(Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;)Landroid/webkit/WebViewClient;
    .locals 0

    .line 49
    invoke-direct {p0}, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;->createPaymentWebViewClient()Landroid/webkit/WebViewClient;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$formatOfferDuration(Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;J)Ljava/lang/String;
    .locals 0

    .line 49
    invoke-direct {p0, p1, p2}, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;->formatOfferDuration(J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getAnalytics(Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;)Lcom/laborbook/base/analytics/Analytics;
    .locals 0

    .line 49
    invoke-direct {p0}, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;->getAnalytics()Lcom/laborbook/base/analytics/Analytics;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getBinding(Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;)Lcom/laborbook/keep/databinding/DialogPremiumOfferBinding;
    .locals 0

    .line 49
    invoke-direct {p0}, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;->getBinding()Lcom/laborbook/keep/databinding/DialogPremiumOfferBinding;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getDataStoreManager(Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;)Lcom/laborbook/base/datastore/DataStoreManager;
    .locals 0

    .line 49
    invoke-direct {p0}, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;->getDataStoreManager()Lcom/laborbook/base/datastore/DataStoreManager;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getDefaultInterval$p(Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;)Ljava/lang/String;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;->defaultInterval:Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic access$getInstallSource$p(Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;)Ljava/lang/String;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;->installSource:Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic access$getMaxVerificationAttempts$p(Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;)I
    .locals 0

    .line 49
    iget p0, p0, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;->maxVerificationAttempts:I

    return p0
.end method

.method public static final synthetic access$getSelectedPlan$p(Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;)Lcom/laborbook/keep/model/subscription/SubscriptionPlan;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;->selectedPlan:Lcom/laborbook/keep/model/subscription/SubscriptionPlan;

    return-object p0
.end method

.method public static final synthetic access$getSocialProofProResIds$p(Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;)Ljava/util/List;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;->socialProofProResIds:Ljava/util/List;

    return-object p0
.end method

.method public static final synthetic access$getSocialProofTrialResIds$p(Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;)Ljava/util/List;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;->socialProofTrialResIds:Ljava/util/List;

    return-object p0
.end method

.method public static final synthetic access$getStartTrialButtonText(Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;Lcom/laborbook/keep/model/subscription/SubscriptionPlan;)Ljava/lang/CharSequence;
    .locals 0

    .line 49
    invoke-direct {p0, p1}, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;->getStartTrialButtonText(Lcom/laborbook/keep/model/subscription/SubscriptionPlan;)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getTestimonials$p(Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;)Ljava/util/List;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;->testimonials:Ljava/util/List;

    return-object p0
.end method

.method public static final synthetic access$getVerificationAttempts$p(Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;)I
    .locals 0

    .line 49
    iget p0, p0, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;->verificationAttempts:I

    return p0
.end method

.method public static final synthetic access$getViewModel(Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;)Lcom/laborbook/keep/screen/premium/viewmodel/SubscriptionViewModel;
    .locals 0

    .line 49
    invoke-direct {p0}, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;->getViewModel()Lcom/laborbook/keep/screen/premium/viewmodel/SubscriptionViewModel;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$get_binding$p(Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;)Lcom/laborbook/keep/databinding/DialogPremiumOfferBinding;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;->_binding:Lcom/laborbook/keep/databinding/DialogPremiumOfferBinding;

    return-object p0
.end method

.method public static final synthetic access$hideVerificationScreen(Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;)V
    .locals 0

    .line 49
    invoke-direct {p0}, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;->hideVerificationScreen()V

    return-void
.end method

.method public static final synthetic access$isTrialExpired$p(Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;)Z
    .locals 0

    .line 49
    iget-boolean p0, p0, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;->isTrialExpired:Z

    return p0
.end method

.method public static final synthetic access$isVerificationInProgress$p(Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;)Z
    .locals 0

    .line 49
    iget-boolean p0, p0, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;->isVerificationInProgress:Z

    return p0
.end method

.method public static final synthetic access$recordClickEvent(Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 0

    .line 49
    invoke-direct {p0, p1, p2}, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;->recordClickEvent(Ljava/lang/String;Ljava/util/HashMap;)V

    return-void
.end method

.method public static final synthetic access$setInstallSource$p(Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;Ljava/lang/String;)V
    .locals 0

    .line 49
    iput-object p1, p0, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;->installSource:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic access$setVerificationAttempts$p(Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;I)V
    .locals 0

    .line 49
    iput p1, p0, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;->verificationAttempts:I

    return-void
.end method

.method public static final synthetic access$setupOfferTimerFromRemoteConfig(Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 49
    invoke-direct {p0, p1}, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;->setupOfferTimerFromRemoteConfig(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$showErrorLoading(Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;Ljava/lang/String;)V
    .locals 0

    .line 49
    invoke-direct {p0, p1}, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;->showErrorLoading(Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic access$showPaymentFailedBottomSheet(Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;Ljava/lang/String;)V
    .locals 0

    .line 49
    invoke-direct {p0, p1}, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;->showPaymentFailedBottomSheet(Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic access$startStatusPolling(Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;Ljava/lang/String;)V
    .locals 0

    .line 49
    invoke-direct {p0, p1}, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;->startStatusPolling(Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic access$stopOfferCountdown(Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;)V
    .locals 0

    .line 49
    invoke-direct {p0}, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;->stopOfferCountdown()V

    return-void
.end method

.method private final bindPlanItem(Lcom/laborbook/keep/databinding/ItemSubscriptionPlanBinding;Lcom/laborbook/keep/model/subscription/SubscriptionPlan;Z)V
    .locals 18

    move-object/from16 v0, p1

    .line 672
    invoke-virtual/range {p2 .. p2}, Lcom/laborbook/keep/model/subscription/SubscriptionPlan;->getHasDiscount()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual/range {p2 .. p2}, Lcom/laborbook/keep/model/subscription/SubscriptionPlan;->getDiscountedPrice()I

    move-result v1

    goto :goto_0

    :cond_0
    invoke-virtual/range {p2 .. p2}, Lcom/laborbook/keep/model/subscription/SubscriptionPlan;->getPrice()I

    move-result v1

    .line 673
    :goto_0
    iget-object v2, v0, Lcom/laborbook/keep/databinding/ItemSubscriptionPlanBinding;->tvPlanName:Landroid/widget/TextView;

    invoke-virtual/range {p2 .. p2}, Lcom/laborbook/keep/model/subscription/SubscriptionPlan;->getInterval()Ljava/lang/String;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Ljava/lang/CharSequence;

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-lez v4, :cond_1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v5}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v7

    const-string v8, "null cannot be cast to non-null type java.lang.String"

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v8, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v7, v8}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "toUpperCase(...)"

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v7, Ljava/lang/CharSequence;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    const-string v7, "substring(...)"

    invoke-static {v3, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_1
    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 674
    invoke-virtual/range {p2 .. p2}, Lcom/laborbook/keep/model/subscription/SubscriptionPlan;->getHasDiscount()Z

    move-result v2

    const-string v3, "%d"

    const-string v4, "format(...)"

    if-eqz v2, :cond_2

    .line 675
    iget-object v2, v0, Lcom/laborbook/keep/databinding/ItemSubscriptionPlanBinding;->tvDiscountBadge:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 676
    iget-object v2, v0, Lcom/laborbook/keep/databinding/ItemSubscriptionPlanBinding;->tvDiscountBadge:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    sget-object v7, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual/range {p2 .. p2}, Lcom/laborbook/keep/model/subscription/SubscriptionPlan;->getDiscountPercent()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    filled-new-array {v8}, [Ljava/lang/Object;

    move-result-object v8

    invoke-static {v8, v6}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v8

    invoke-static {v7, v3, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "% OFF"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 678
    :cond_2
    iget-object v2, v0, Lcom/laborbook/keep/databinding/ItemSubscriptionPlanBinding;->tvDiscountBadge:Landroid/widget/TextView;

    const/16 v5, 0x8

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 680
    :goto_1
    invoke-virtual/range {p2 .. p2}, Lcom/laborbook/keep/model/subscription/SubscriptionPlan;->getInterval()Ljava/lang/String;

    move-result-object v2

    sget-object v5, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v2, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    const-string v5, "toLowerCase(...)"

    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v7

    const-string v8, "monthly"

    const-string v9, "quarter"

    const-string v10, "month"

    const-string v11, "year"

    const-string v12, "yearly"

    const-string v13, "quarterly"

    sparse-switch v7, :sswitch_data_0

    goto :goto_2

    :sswitch_0
    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    goto :goto_2

    :sswitch_1
    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    goto :goto_2

    :sswitch_2
    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    goto :goto_2

    :sswitch_3
    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_2

    :sswitch_4
    invoke-virtual {v2, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_2

    :cond_3
    const/16 v2, 0xc

    goto :goto_3

    :sswitch_5
    invoke-virtual {v2, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    goto :goto_2

    :cond_4
    const/4 v2, 0x3

    goto :goto_3

    :goto_2
    move v2, v6

    .line 686
    :goto_3
    const-string v7, "/mo"

    const-string v14, "\u20b9"

    if-le v2, v6, :cond_5

    move-object v15, v7

    int-to-double v6, v1

    move-object/from16 v16, v12

    move-object/from16 v17, v13

    int-to-double v12, v2

    div-double/2addr v6, v12

    .line 688
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v12, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    sget-object v12, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    filled-new-array {v6}, [Ljava/lang/Object;

    move-result-object v6

    const/4 v7, 0x1

    invoke-static {v6, v7}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v6

    const-string v7, "%.1f"

    invoke-static {v12, v7, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object v6, v15

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_4

    :cond_5
    move-object v6, v7

    move-object/from16 v16, v12

    move-object/from16 v17, v13

    .line 690
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v7, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    sget-object v7, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    filled-new-array {v12}, [Ljava/lang/Object;

    move-result-object v12

    const/4 v13, 0x1

    invoke-static {v12, v13}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v12

    invoke-static {v7, v3, v12}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 692
    :goto_4
    invoke-virtual/range {p2 .. p2}, Lcom/laborbook/keep/model/subscription/SubscriptionPlan;->getInterval()Ljava/lang/String;

    move-result-object v6

    sget-object v7, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v6, v7}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v5

    sparse-switch v5, :sswitch_data_1

    goto/16 :goto_5

    :sswitch_6
    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6

    goto/16 :goto_5

    :sswitch_7
    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_8

    goto/16 :goto_5

    :sswitch_8
    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6

    goto/16 :goto_5

    .line 695
    :cond_6
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v6, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    sget-object v6, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const/4 v7, 0x1

    invoke-static {v1, v7}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    invoke-static {v6, v3, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_6

    .line 692
    :sswitch_9
    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_7

    goto :goto_5

    :sswitch_a
    move-object/from16 v5, v16

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_7

    goto :goto_5

    .line 693
    :cond_7
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "12 mo \u00b7 \u20b9"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v6, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    sget-object v6, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const/4 v7, 0x1

    invoke-static {v1, v7}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    invoke-static {v6, v3, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_6

    :sswitch_b
    move-object/from16 v5, v17

    .line 692
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_8

    goto :goto_5

    .line 694
    :cond_8
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "3 mo \u00b7 \u20b9"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v6, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    sget-object v6, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const/4 v7, 0x1

    invoke-static {v1, v7}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    invoke-static {v6, v3, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_6

    .line 696
    :goto_5
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v6, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    sget-object v6, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const/4 v7, 0x1

    invoke-static {v1, v7}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    invoke-static {v6, v3, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 698
    :goto_6
    iget-object v3, v0, Lcom/laborbook/keep/databinding/ItemSubscriptionPlanBinding;->tvPlanBreakdown:Landroid/widget/TextView;

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 699
    iget-object v1, v0, Lcom/laborbook/keep/databinding/ItemSubscriptionPlanBinding;->tvPerMonthPrice:Landroid/widget/TextView;

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object/from16 v1, p0

    move/from16 v2, p3

    .line 700
    invoke-direct {v1, v0, v2}, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;->updatePlanSelectionVisuals(Lcom/laborbook/keep/databinding/ItemSubscriptionPlanBinding;Z)V

    return-void

    :sswitch_data_0
    .sparse-switch
        -0x3f8a4ac7 -> :sswitch_5
        -0x2bc88576 -> :sswitch_4
        0x38883d -> :sswitch_3
        0x6342280 -> :sswitch_2
        0x26d3a2ac -> :sswitch_1
        0x49b5900d -> :sswitch_0
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        -0x3f8a4ac7 -> :sswitch_b
        -0x2bc88576 -> :sswitch_a
        0x38883d -> :sswitch_9
        0x6342280 -> :sswitch_8
        0x26d3a2ac -> :sswitch_7
        0x49b5900d -> :sswitch_6
    .end sparse-switch
.end method

.method private final createPaymentWebViewClient()Landroid/webkit/WebViewClient;
    .locals 1

    .line 213
    new-instance v0, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment$createPaymentWebViewClient$1;

    invoke-direct {v0, p0}, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment$createPaymentWebViewClient$1;-><init>(Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;)V

    check-cast v0, Landroid/webkit/WebViewClient;

    return-object v0
.end method

.method private final fetchPaymentMethods()V
    .locals 2

    .line 797
    iget-object v0, p0, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;->razorpayCustom:Lcom/razorpay/Razorpay;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment$fetchPaymentMethods$1;

    invoke-direct {v1}, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment$fetchPaymentMethods$1;-><init>()V

    check-cast v1, Lcom/razorpay/PaymentMethodsCallback;

    invoke-virtual {v0, v1}, Lcom/razorpay/Razorpay;->getPaymentMethods(Lcom/razorpay/PaymentMethodsCallback;)V

    :cond_0
    return-void
.end method

.method private final formatIntervalForTrial(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .line 719
    check-cast p1, Ljava/lang/CharSequence;

    invoke-static {p1}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "toLowerCase(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x2

    .line 721
    new-array v1, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "month"

    aput-object v3, v1, v2

    const-string v4, "monthly"

    const/4 v5, 0x1

    aput-object v4, v1, v5

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    move-object p1, v3

    goto :goto_1

    .line 722
    :cond_1
    new-array v1, v0, [Ljava/lang/String;

    const-string v4, "year"

    aput-object v4, v1, v2

    const-string v6, "yearly"

    aput-object v6, v1, v5

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    :goto_0
    move-object p1, v4

    goto :goto_1

    .line 723
    :cond_2
    new-array v1, v0, [Ljava/lang/String;

    const-string v4, "week"

    aput-object v4, v1, v2

    const-string v6, "weekly"

    aput-object v6, v1, v5

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_0

    .line 724
    :cond_3
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "quarter"

    aput-object v1, v0, v2

    const-string v2, "quarterly"

    aput-object v2, v0, v5

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    move-object p1, v1

    goto :goto_1

    .line 725
    :cond_4
    move-object v0, p1

    check-cast v0, Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_0

    :goto_1
    return-object p1
.end method

.method private final formatOfferDuration(J)Ljava/lang/String;
    .locals 10

    const-wide/16 v0, 0x0

    .line 784
    invoke-static {p1, p2, v0, v1}, Lkotlin/ranges/RangesKt;->coerceAtLeast(JJ)J

    move-result-wide p1

    const v2, 0x15180

    int-to-long v2, v2

    .line 785
    div-long v4, p1, v2

    rem-long v2, p1, v2

    const/16 v6, 0xe10

    int-to-long v6, v6

    div-long/2addr v2, v6

    rem-long v6, p1, v6

    const/16 v8, 0x3c

    int-to-long v8, v8

    div-long/2addr v6, v8

    rem-long/2addr p1, v8

    cmp-long v8, v4, v0

    const/16 v9, 0x68

    if-lez v8, :cond_1

    cmp-long p1, v2, v0

    if-lez p1, :cond_0

    .line 787
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "d "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p1

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    const/16 p2, 0x64

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p1

    :goto_0
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_3

    :cond_1
    cmp-long v4, v2, v0

    const/16 v5, 0x6d

    if-lez v4, :cond_3

    cmp-long p1, v6, v0

    if-lez p1, :cond_2

    .line 788
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "h "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p1

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p1

    :goto_1
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_3

    :cond_3
    cmp-long v2, v6, v0

    const/16 v3, 0x73

    if-lez v2, :cond_5

    cmp-long v0, p1, v0

    if-lez v0, :cond_4

    .line 789
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "m "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p1

    goto :goto_2

    :cond_4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p1

    :goto_2
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_3

    .line 790
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_3
    return-object p1
.end method

.method private final getAnalytics()Lcom/laborbook/base/analytics/Analytics;
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;->analytics$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/laborbook/base/analytics/Analytics;

    return-object v0
.end method

.method private final getBinding()Lcom/laborbook/keep/databinding/DialogPremiumOfferBinding;
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;->_binding:Lcom/laborbook/keep/databinding/DialogPremiumOfferBinding;

    return-object v0
.end method

.method private final getDataStoreManager()Lcom/laborbook/base/datastore/DataStoreManager;
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;->dataStoreManager$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/laborbook/base/datastore/DataStoreManager;

    return-object v0
.end method

.method private final getRemoteConfig()Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;->remoteConfig$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;

    return-object v0
.end method

.method private final getStartTrialButtonText(Lcom/laborbook/keep/model/subscription/SubscriptionPlan;)Ljava/lang/CharSequence;
    .locals 1

    .line 714
    const-string v0, "getString(...)"

    if-nez p1, :cond_0

    sget p1, Lcom/laborbook/keep/R$string;->start:I

    invoke-virtual {p0, p1}, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/CharSequence;

    return-object p1

    .line 715
    :cond_0
    invoke-virtual {p1}, Lcom/laborbook/keep/model/subscription/SubscriptionPlan;->getHasTrial()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-boolean p1, p0, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;->isTrialExpired:Z

    if-nez p1, :cond_1

    sget p1, Lcom/laborbook/keep/R$string;->start_free:I

    goto :goto_0

    :cond_1
    sget p1, Lcom/laborbook/keep/R$string;->start_pro:I

    :goto_0
    invoke-virtual {p0, p1}, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/CharSequence;

    return-object p1
.end method

.method private final getViewModel()Lcom/laborbook/keep/screen/premium/viewmodel/SubscriptionViewModel;
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;->viewModel$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/laborbook/keep/screen/premium/viewmodel/SubscriptionViewModel;

    return-object v0
.end method

.method private final handleBackPress()V
    .locals 3

    .line 201
    iget-boolean v0, p0, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;->isVerificationInProgress:Z

    if-eqz v0, :cond_0

    .line 202
    invoke-virtual {p0}, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/laborbook/keep/R$string;->please_wait_verifying_payment:I

    invoke-virtual {p0, v1}, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 203
    :cond_0
    invoke-direct {p0}, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;->getBinding()Lcom/laborbook/keep/databinding/DialogPremiumOfferBinding;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/laborbook/keep/databinding/DialogPremiumOfferBinding;->paymentWebview:Landroid/webkit/WebView;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/webkit/WebView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 204
    invoke-direct {p0}, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;->onPaymentWebViewDismissed()V

    goto :goto_0

    .line 205
    :cond_1
    iget-boolean v0, p0, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;->isHardPaywall:Z

    if-nez v0, :cond_2

    .line 208
    invoke-virtual {p0}, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;->dismiss()V

    :cond_2
    :goto_0
    return-void
.end method

.method private final handlePlansLoaded(Ljava/util/List;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/laborbook/keep/model/subscription/SubscriptionPlan;",
            ">;)V"
        }
    .end annotation

    .line 486
    const-string v0, "yearly"

    const-string v1, "all"

    const-string v2, "getString(...)"

    .line 487
    :try_start_0
    invoke-direct {p0}, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;->getRemoteConfig()Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;

    move-result-object v3

    const-string v4, "active_plan_ids"

    invoke-virtual {v3, v4}, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Ljava/lang/CharSequence;

    invoke-static {v3}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-object v3, v1

    .line 490
    :goto_0
    move-object v4, p1

    check-cast v4, Ljava/lang/Iterable;

    .line 1204
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    check-cast v5, Ljava/util/Collection;

    .line 1205
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    move-object v7, v6

    check-cast v7, Lcom/laborbook/keep/model/subscription/SubscriptionPlan;

    .line 490
    invoke-virtual {v7}, Lcom/laborbook/keep/model/subscription/SubscriptionPlan;->isActive()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1205
    invoke-interface {v5, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1206
    :cond_1
    check-cast v5, Ljava/util/List;

    .line 491
    move-object v6, v3

    check-cast v6, Ljava/lang/CharSequence;

    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    move-result v4

    const/4 v12, 0x1

    const/4 v13, 0x0

    if-nez v4, :cond_2

    goto/16 :goto_4

    :cond_2
    invoke-static {v3, v1, v12}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_3

    goto/16 :goto_4

    .line 494
    :cond_3
    new-array v7, v12, [Ljava/lang/String;

    const-string v1, ","

    aput-object v1, v7, v13

    const/4 v10, 0x6

    const/4 v11, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static/range {v6 .. v11}, Lkotlin/text/StringsKt;->split$default(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    .line 1207
    new-instance v3, Ljava/util/ArrayList;

    const/16 v4, 0xa

    invoke-static {v1, v4}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v3, Ljava/util/Collection;

    .line 1208
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 1209
    check-cast v4, Ljava/lang/String;

    .line 494
    check-cast v4, Ljava/lang/CharSequence;

    invoke-static {v4}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lkotlin/text/StringsKt;->toIntOrNull(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    .line 1209
    invoke-interface {v3, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1210
    :cond_4
    check-cast v3, Ljava/util/List;

    .line 1207
    check-cast v3, Ljava/lang/Iterable;

    .line 494
    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->filterNotNull(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v1

    .line 495
    move-object v3, v1

    check-cast v3, Ljava/util/Collection;

    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_8

    .line 497
    check-cast v5, Ljava/lang/Iterable;

    .line 1211
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    check-cast v3, Ljava/util/Collection;

    .line 1212
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_5
    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    move-object v6, v5

    check-cast v6, Lcom/laborbook/keep/model/subscription/SubscriptionPlan;

    .line 497
    invoke-virtual {v6}, Lcom/laborbook/keep/model/subscription/SubscriptionPlan;->getDiscountedPrice()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v1, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_6

    invoke-virtual {v6}, Lcom/laborbook/keep/model/subscription/SubscriptionPlan;->getPrice()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v1, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 1212
    :cond_6
    invoke-interface {v3, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 1213
    :cond_7
    move-object v5, v3

    check-cast v5, Ljava/util/List;

    .line 503
    :cond_8
    :goto_4
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 504
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_9

    sget p1, Lcom/laborbook/keep/R$string;->no_subscription_plans:I

    goto :goto_5

    :cond_9
    sget p1, Lcom/laborbook/keep/R$string;->no_active_subscription_plans:I

    :goto_5
    invoke-virtual {p0, p1}, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;->showErrorLoading(Ljava/lang/String;)V

    return-void

    .line 510
    :cond_a
    :try_start_1
    sget-object p1, Lcom/google/firebase/ktx/Firebase;->INSTANCE:Lcom/google/firebase/ktx/Firebase;

    invoke-static {p1}, Lcom/google/firebase/remoteconfig/ktx/RemoteConfigKt;->getRemoteConfig(Lcom/google/firebase/ktx/Firebase;)Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;

    move-result-object p1

    const-string v1, "default_plan_interval"

    invoke-virtual {p1, v1}, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p1, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "toLowerCase(...)"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/CharSequence;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_b

    move-object p1, v0

    :cond_b
    check-cast p1, Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v0, p1

    .line 509
    :catch_1
    iput-object v0, p0, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;->defaultInterval:Ljava/lang/String;

    .line 512
    check-cast v5, Ljava/lang/Iterable;

    .line 1215
    new-instance p1, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment$handlePlansLoaded$$inlined$sortedByDescending$1;

    invoke-direct {p1, p0}, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment$handlePlansLoaded$$inlined$sortedByDescending$1;-><init>(Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;)V

    check-cast p1, Ljava/util/Comparator;

    invoke-static {v5, p1}, Lkotlin/collections/CollectionsKt;->sortedWith(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object p1

    .line 519
    invoke-interface {p1, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/laborbook/keep/model/subscription/SubscriptionPlan;

    iput-object v0, p0, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;->selectedPlan:Lcom/laborbook/keep/model/subscription/SubscriptionPlan;

    .line 520
    invoke-interface {p1, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/laborbook/keep/model/subscription/SubscriptionPlan;

    invoke-direct {p0, v0}, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;->updatePriceDisplay(Lcom/laborbook/keep/model/subscription/SubscriptionPlan;)V

    .line 521
    invoke-direct {p0, p1}, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;->updateTrialSections(Ljava/util/List;)V

    .line 523
    invoke-direct {p0}, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;->startSocialProofTicker()V

    .line 525
    invoke-direct {p0}, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;->getBinding()Lcom/laborbook/keep/databinding/DialogPremiumOfferBinding;

    move-result-object v0

    if-eqz v0, :cond_e

    .line 527
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, v12, :cond_e

    .line 528
    iget-object v1, v0, Lcom/laborbook/keep/databinding/DialogPremiumOfferBinding;->llPlans:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 529
    invoke-virtual {v0}, Lcom/laborbook/keep/databinding/DialogPremiumOfferBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/constraintlayout/widget/ConstraintLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 530
    check-cast p1, Ljava/lang/Iterable;

    .line 1217
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    move v2, v13

    :goto_6
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_e

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v4, v2, 0x1

    if-gez v2, :cond_c

    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwIndexOverflow()V

    :cond_c
    check-cast v3, Lcom/laborbook/keep/model/subscription/SubscriptionPlan;

    .line 531
    iget-object v5, v0, Lcom/laborbook/keep/databinding/DialogPremiumOfferBinding;->llPlans:Landroid/widget/LinearLayout;

    check-cast v5, Landroid/view/ViewGroup;

    invoke-static {v1, v5, v13}, Lcom/laborbook/keep/databinding/ItemSubscriptionPlanBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/laborbook/keep/databinding/ItemSubscriptionPlanBinding;

    move-result-object v5

    const-string v6, "inflate(...)"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez v2, :cond_d

    move v6, v12

    goto :goto_7

    :cond_d
    move v6, v13

    .line 532
    :goto_7
    invoke-direct {p0, v5, v3, v6}, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;->bindPlanItem(Lcom/laborbook/keep/databinding/ItemSubscriptionPlanBinding;Lcom/laborbook/keep/model/subscription/SubscriptionPlan;Z)V

    .line 533
    invoke-virtual {v5}, Lcom/laborbook/keep/databinding/ItemSubscriptionPlanBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v6

    new-instance v7, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment$$ExternalSyntheticLambda14;

    invoke-direct {v7, p0, v3, v0, v2}, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment$$ExternalSyntheticLambda14;-><init>(Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;Lcom/laborbook/keep/model/subscription/SubscriptionPlan;Lcom/laborbook/keep/databinding/DialogPremiumOfferBinding;I)V

    invoke-virtual {v6, v7}, Landroidx/constraintlayout/widget/ConstraintLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 547
    iget-object v2, v0, Lcom/laborbook/keep/databinding/DialogPremiumOfferBinding;->llPlans:Landroid/widget/LinearLayout;

    invoke-virtual {v5}, Lcom/laborbook/keep/databinding/ItemSubscriptionPlanBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    move v2, v4

    goto :goto_6

    :cond_e
    return-void
.end method

.method private static final handlePlansLoaded$lambda$23$lambda$22$lambda$21(Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;Lcom/laborbook/keep/model/subscription/SubscriptionPlan;Lcom/laborbook/keep/databinding/DialogPremiumOfferBinding;ILandroid/view/View;)V
    .locals 5

    const-string p4, "this$0"

    invoke-static {p0, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p4, "$plan"

    invoke-static {p1, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p4, "$this_apply"

    invoke-static {p2, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 534
    iput-object p1, p0, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;->selectedPlan:Lcom/laborbook/keep/model/subscription/SubscriptionPlan;

    .line 535
    invoke-direct {p0, p1}, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;->updatePriceDisplay(Lcom/laborbook/keep/model/subscription/SubscriptionPlan;)V

    .line 536
    iget-object p4, p2, Lcom/laborbook/keep/databinding/DialogPremiumOfferBinding;->llPlans:Landroid/widget/LinearLayout;

    invoke-virtual {p4}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result p4

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/4 v2, 0x1

    if-ge v1, p4, :cond_1

    .line 537
    iget-object v3, p2, Lcom/laborbook/keep/databinding/DialogPremiumOfferBinding;->llPlans:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 538
    invoke-static {v3}, Lcom/laborbook/keep/databinding/ItemSubscriptionPlanBinding;->bind(Landroid/view/View;)Lcom/laborbook/keep/databinding/ItemSubscriptionPlanBinding;

    move-result-object v3

    const-string v4, "bind(...)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    if-ne v1, p3, :cond_0

    goto :goto_1

    :cond_0
    move v2, v0

    .line 539
    :goto_1
    invoke-direct {p0, v3, v2}, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;->updatePlanSelectionVisuals(Lcom/laborbook/keep/databinding/ItemSubscriptionPlanBinding;Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p2, 0x3

    .line 542
    new-array p2, p2, [Lkotlin/Pair;

    new-instance p3, Lkotlin/Pair;

    const-string p4, "plan_id"

    invoke-virtual {p1}, Lcom/laborbook/keep/model/subscription/SubscriptionPlan;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p3, p4, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object p3, p2, v0

    .line 543
    new-instance p3, Lkotlin/Pair;

    const-string p4, "plan_name"

    invoke-virtual {p1}, Lcom/laborbook/keep/model/subscription/SubscriptionPlan;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p3, p4, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object p3, p2, v2

    .line 544
    new-instance p3, Lkotlin/Pair;

    invoke-virtual {p1}, Lcom/laborbook/keep/model/subscription/SubscriptionPlan;->getPrice()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string p4, "plan_price"

    invoke-direct {p3, p4, p1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 p1, 0x2

    aput-object p3, p2, p1

    .line 541
    invoke-static {p2}, Lkotlin/collections/MapsKt;->hashMapOf([Lkotlin/Pair;)Ljava/util/HashMap;

    move-result-object p1

    const-string p2, "subscription_plan_selected"

    invoke-direct {p0, p2, p1}, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;->recordClickEvent(Ljava/lang/String;Ljava/util/HashMap;)V

    return-void
.end method

.method private final handleStartTrial()V
    .locals 9

    .line 853
    move-object v0, p0

    check-cast v0, Landroidx/lifecycle/LifecycleOwner;

    invoke-static {v0}, Landroidx/lifecycle/LifecycleOwnerKt;->getLifecycleScope(Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LifecycleCoroutineScope;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lkotlinx/coroutines/CoroutineScope;

    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lkotlin/coroutines/CoroutineContext;

    new-instance v1, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment$handleStartTrial$1;

    const/4 v8, 0x0

    invoke-direct {v1, p0, v8}, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment$handleStartTrial$1;-><init>(Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;Lkotlin/coroutines/Continuation;)V

    move-object v5, v1

    check-cast v5, Lkotlin/jvm/functions/Function2;

    const/4 v6, 0x2

    const/4 v7, 0x0

    const/4 v4, 0x0

    invoke-static/range {v2 .. v7}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 856
    invoke-direct {p0}, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;->getBinding()Lcom/laborbook/keep/databinding/DialogPremiumOfferBinding;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, v1, Lcom/laborbook/keep/databinding/DialogPremiumOfferBinding;->videoSubscriptionExplainer:Landroid/widget/VideoView;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/widget/VideoView;->isPlaying()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Landroid/widget/VideoView;->pause()V

    .line 858
    :cond_0
    iget-object v1, p0, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;->selectedPlan:Lcom/laborbook/keep/model/subscription/SubscriptionPlan;

    const-string v2, "getString(...)"

    if-nez v1, :cond_1

    sget v0, Lcom/laborbook/keep/R$string;->please_select_subscription_plan:I

    invoke-virtual {p0, v0}, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;->showError(Ljava/lang/String;)V

    return-void

    .line 859
    :cond_1
    iget-object v1, p0, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;->selectedUpiApp:Lcom/laborbook/keep/screen/premium/InstalledUpiApp;

    if-eqz v1, :cond_3

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Lcom/laborbook/keep/screen/premium/InstalledUpiApp;->isInstalled()Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    .line 865
    :cond_2
    invoke-static {v0}, Landroidx/lifecycle/LifecycleOwnerKt;->getLifecycleScope(Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LifecycleCoroutineScope;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lkotlinx/coroutines/CoroutineScope;

    new-instance v0, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment$handleStartTrial$3;

    invoke-direct {v0, p0, v8}, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment$handleStartTrial$3;-><init>(Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;Lkotlin/coroutines/Continuation;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void

    .line 860
    :cond_3
    :goto_0
    sget v0, Lcom/laborbook/keep/R$string;->no_upi_apps_found:I

    invoke-virtual {p0, v0}, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;->showError(Ljava/lang/String;)V

    .line 861
    invoke-direct {p0}, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;->showUpiSelectionBottomSheet()V

    return-void
.end method

.method private final hidePaymentWebView()V
    .locals 2

    .line 944
    invoke-direct {p0}, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;->getBinding()Lcom/laborbook/keep/databinding/DialogPremiumOfferBinding;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/laborbook/keep/databinding/DialogPremiumOfferBinding;->paymentWebview:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method private final hideVerificationScreen()V
    .locals 5

    .line 1012
    invoke-direct {p0}, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;->getBinding()Lcom/laborbook/keep/databinding/DialogPremiumOfferBinding;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 1013
    iget-object v3, v0, Lcom/laborbook/keep/databinding/DialogPremiumOfferBinding;->clVerificationOverlay:Landroidx/constraintlayout/widget/ConstraintLayout;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroidx/constraintlayout/widget/ConstraintLayout;->setVisibility(I)V

    .line 1014
    iget-object v3, v0, Lcom/laborbook/keep/databinding/DialogPremiumOfferBinding;->scrollContent:Landroid/widget/ScrollView;

    invoke-virtual {v3, v2}, Landroid/widget/ScrollView;->setEnabled(Z)V

    .line 1015
    iget-object v3, v0, Lcom/laborbook/keep/databinding/DialogPremiumOfferBinding;->clBottomSection:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v3, v2}, Landroidx/constraintlayout/widget/ConstraintLayout;->setEnabled(Z)V

    .line 1016
    iget-object v0, v0, Lcom/laborbook/keep/databinding/DialogPremiumOfferBinding;->ivClose:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1018
    :cond_0
    invoke-virtual {p0, v2}, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;->setCancelable(Z)V

    .line 1019
    iput-boolean v1, p0, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;->isVerificationInProgress:Z

    .line 1020
    iput v1, p0, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;->verificationAttempts:I

    return-void
.end method

.method private final initiatePaymentWithSubscription(Lcom/laborbook/keep/model/subscription/CreateSubscriptionResponse;Lcom/laborbook/keep/screen/premium/InstalledUpiApp;)V
    .locals 13

    .line 893
    iget-object v3, p0, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;->razorpayCustom:Lcom/razorpay/Razorpay;

    .line 894
    invoke-direct {p0}, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;->getBinding()Lcom/laborbook/keep/databinding/DialogPremiumOfferBinding;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/laborbook/keep/databinding/DialogPremiumOfferBinding;->paymentWebview:Landroid/webkit/WebView;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move-object v4, v0

    .line 895
    const-string v0, "getString(...)"

    if-eqz v3, :cond_5

    if-nez v4, :cond_1

    goto :goto_2

    .line 899
    :cond_1
    iget-object v6, p0, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;->selectedPlan:Lcom/laborbook/keep/model/subscription/SubscriptionPlan;

    if-nez v6, :cond_2

    move-object p1, p0

    check-cast p1, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;

    .line 900
    sget p1, Lcom/laborbook/keep/R$string;->please_select_subscription_plan:I

    invoke-virtual {p0, p1}, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;->showPaymentFailedBottomSheet(Ljava/lang/String;)V

    return-void

    .line 903
    :cond_2
    invoke-virtual {v6}, Lcom/laborbook/keep/model/subscription/SubscriptionPlan;->getHasTrial()Z

    move-result v1

    const/16 v2, 0x64

    if-eqz v1, :cond_3

    const/16 v1, 0x1f4

    goto :goto_1

    :cond_3
    invoke-virtual {v6}, Lcom/laborbook/keep/model/subscription/SubscriptionPlan;->getDiscountedPrice()I

    move-result v1

    mul-int/2addr v1, v2

    :goto_1
    move v5, v1

    if-ge v5, v2, :cond_4

    .line 905
    sget p1, Lcom/laborbook/keep/R$string;->failed_to_initiate_payment:I

    const-string p2, "Invalid amount"

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;->showPaymentFailedBottomSheet(Ljava/lang/String;)V

    return-void

    .line 908
    :cond_4
    move-object v0, p0

    check-cast v0, Landroidx/lifecycle/LifecycleOwner;

    invoke-static {v0}, Landroidx/lifecycle/LifecycleOwnerKt;->getLifecycleScope(Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LifecycleCoroutineScope;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Lkotlinx/coroutines/CoroutineScope;

    new-instance v10, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment$initiatePaymentWithSubscription$1;

    const/4 v8, 0x0

    move-object v0, v10

    move-object v1, p0

    move-object v2, p1

    move-object v7, p2

    invoke-direct/range {v0 .. v8}, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment$initiatePaymentWithSubscription$1;-><init>(Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;Lcom/laborbook/keep/model/subscription/CreateSubscriptionResponse;Lcom/razorpay/Razorpay;Landroid/webkit/WebView;ILcom/laborbook/keep/model/subscription/SubscriptionPlan;Lcom/laborbook/keep/screen/premium/InstalledUpiApp;Lkotlin/coroutines/Continuation;)V

    check-cast v10, Lkotlin/jvm/functions/Function2;

    const/4 v11, 0x3

    const/4 v12, 0x0

    const/4 p1, 0x0

    move-object v7, v9

    move-object v9, p1

    invoke-static/range {v7 .. v12}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void

    .line 896
    :cond_5
    :goto_2
    sget p1, Lcom/laborbook/keep/R$string;->failed_to_initiate_payment:I

    const-string p2, "Razorpay not initialized"

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;->showPaymentFailedBottomSheet(Ljava/lang/String;)V

    return-void
.end method

.method private final initiateRazorpayPayment(Lcom/laborbook/keep/model/subscription/CreateSubscriptionResponse;)V
    .locals 1

    .line 882
    invoke-virtual {p1}, Lcom/laborbook/keep/model/subscription/CreateSubscriptionResponse;->getSubscriptionId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;->currentSubscriptionId:Ljava/lang/String;

    iget-object v0, p0, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;->selectedUpiApp:Lcom/laborbook/keep/screen/premium/InstalledUpiApp;

    if-nez v0, :cond_0

    move-object p1, p0

    check-cast p1, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;

    .line 883
    sget p1, Lcom/laborbook/keep/R$string;->please_select_upi_app:I

    invoke-virtual {p0, p1}, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "getString(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;->showPaymentFailedBottomSheet(Ljava/lang/String;)V

    return-void

    .line 886
    :cond_0
    invoke-direct {p0, p1, v0}, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;->initiatePaymentWithSubscription(Lcom/laborbook/keep/model/subscription/CreateSubscriptionResponse;Lcom/laborbook/keep/screen/premium/InstalledUpiApp;)V

    return-void
.end method

.method private final loadSubscriptionPlans()V
    .locals 7

    .line 402
    move-object v0, p0

    check-cast v0, Landroidx/lifecycle/LifecycleOwner;

    invoke-static {v0}, Landroidx/lifecycle/LifecycleOwnerKt;->getLifecycleScope(Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LifecycleCoroutineScope;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lkotlinx/coroutines/CoroutineScope;

    new-instance v0, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment$loadSubscriptionPlans$1;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment$loadSubscriptionPlans$1;-><init>(Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;Lkotlin/coroutines/Continuation;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method private final loadUpiAppsFallback()V
    .locals 4

    .line 806
    sget-object v0, Lcom/laborbook/keep/screen/premium/UpiAppDetector;->INSTANCE:Lcom/laborbook/keep/screen/premium/UpiAppDetector;

    invoke-virtual {p0}, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "requireContext(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/laborbook/keep/screen/premium/UpiAppDetector;->getAllUpiAppsWithInstalledState(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    .line 807
    iput-object v0, p0, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;->installedUpiApps:Ljava/util/List;

    .line 808
    check-cast v0, Ljava/lang/Iterable;

    .line 1223
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lcom/laborbook/keep/screen/premium/InstalledUpiApp;

    .line 808
    invoke-virtual {v3}, Lcom/laborbook/keep/screen/premium/InstalledUpiApp;->isInstalled()Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_1
    move-object v1, v2

    :goto_0
    check-cast v1, Lcom/laborbook/keep/screen/premium/InstalledUpiApp;

    if-eqz v1, :cond_2

    .line 810
    iput-object v1, p0, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;->selectedUpiApp:Lcom/laborbook/keep/screen/premium/InstalledUpiApp;

    .line 811
    invoke-direct {p0}, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;->getBinding()Lcom/laborbook/keep/databinding/DialogPremiumOfferBinding;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, v0, Lcom/laborbook/keep/databinding/DialogPremiumOfferBinding;->ivSelectedUpiIcon:Landroid/widget/ImageView;

    if-eqz v0, :cond_3

    invoke-virtual {v1}, Lcom/laborbook/keep/screen/premium/InstalledUpiApp;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 813
    :cond_2
    iput-object v2, p0, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;->selectedUpiApp:Lcom/laborbook/keep/screen/premium/InstalledUpiApp;

    :cond_3
    :goto_1
    return-void
.end method

.method private final loadUpiAppsViaRazorpay()V
    .locals 0

    .line 803
    invoke-direct {p0}, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;->loadUpiAppsFallback()V

    return-void
.end method

.method private final maybeStartOfferCountdown()V
    .locals 3

    .line 756
    invoke-direct {p0}, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;->getBinding()Lcom/laborbook/keep/databinding/DialogPremiumOfferBinding;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 757
    :cond_0
    iget-object v1, p0, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;->offerTimerEndAtElapsedMs:Ljava/lang/Long;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 758
    iget-object v0, v0, Lcom/laborbook/keep/databinding/DialogPremiumOfferBinding;->llOfferTimer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 759
    :cond_1
    invoke-direct {p0}, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;->stopOfferCountdown()V

    .line 760
    new-instance v0, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment$maybeStartOfferCountdown$1;

    invoke-direct {v0, p0, v1, v2}, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment$maybeStartOfferCountdown$1;-><init>(Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;J)V

    check-cast v0, Ljava/lang/Runnable;

    iput-object v0, p0, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;->offerTimerRunnable:Ljava/lang/Runnable;

    .line 774
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_2
    return-void
.end method

.method public static final newInstance(ZZ)Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;->Companion:Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment$Companion;->newInstance(ZZ)Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;

    move-result-object p0

    return-object p0
.end method

.method private final observeViewModel()V
    .locals 4

    .line 415
    invoke-direct {p0}, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;->getViewModel()Lcom/laborbook/keep/screen/premium/viewmodel/SubscriptionViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/laborbook/keep/screen/premium/viewmodel/SubscriptionViewModel;->getSubscriptionState()Landroidx/lifecycle/LiveData;

    move-result-object v0

    invoke-virtual {p0}, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v1

    new-instance v2, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment$$ExternalSyntheticLambda4;

    invoke-direct {v2, p0}, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment$$ExternalSyntheticLambda4;-><init>(Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;)V

    new-instance v3, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment$sam$androidx_lifecycle_Observer$0;

    invoke-direct {v3, v2}, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment$sam$androidx_lifecycle_Observer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    check-cast v3, Landroidx/lifecycle/Observer;

    invoke-virtual {v0, v1, v3}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method private static final observeViewModel$lambda$14(Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;Lcom/laborbook/keep/screen/premium/viewmodel/SubscriptionViewModel$SubscriptionState;)Lkotlin/Unit;
    .locals 10

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 417
    instance-of v0, p1, Lcom/laborbook/keep/screen/premium/viewmodel/SubscriptionViewModel$SubscriptionState$Loading;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 418
    iget-boolean p1, p0, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;->isInitialPlansLoading:Z

    if-eqz p1, :cond_0

    invoke-direct {p0, v1}, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;->showLoading(Z)V

    goto/16 :goto_0

    :cond_0
    invoke-direct {p0, v1}, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;->showSpinnerLoading(Z)V

    goto/16 :goto_0

    .line 420
    :cond_1
    instance-of v0, p1, Lcom/laborbook/keep/screen/premium/viewmodel/SubscriptionViewModel$SubscriptionState$PlansLoaded;

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 421
    iput-boolean v2, p0, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;->isInitialPlansLoading:Z

    .line 422
    invoke-direct {p0, v2}, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;->showLoading(Z)V

    .line 423
    check-cast p1, Lcom/laborbook/keep/screen/premium/viewmodel/SubscriptionViewModel$SubscriptionState$PlansLoaded;

    invoke-virtual {p1}, Lcom/laborbook/keep/screen/premium/viewmodel/SubscriptionViewModel$SubscriptionState$PlansLoaded;->getPlans()Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;->handlePlansLoaded(Ljava/util/List;)V

    goto/16 :goto_0

    .line 425
    :cond_2
    instance-of v0, p1, Lcom/laborbook/keep/screen/premium/viewmodel/SubscriptionViewModel$SubscriptionState$SubscriptionCreated;

    if-eqz v0, :cond_3

    .line 426
    iput-boolean v1, p0, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;->paymentFlowInProgress:Z

    .line 427
    check-cast p1, Lcom/laborbook/keep/screen/premium/viewmodel/SubscriptionViewModel$SubscriptionState$SubscriptionCreated;

    invoke-virtual {p1}, Lcom/laborbook/keep/screen/premium/viewmodel/SubscriptionViewModel$SubscriptionState$SubscriptionCreated;->getResponse()Lcom/laborbook/keep/model/subscription/CreateSubscriptionResponse;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;->initiateRazorpayPayment(Lcom/laborbook/keep/model/subscription/CreateSubscriptionResponse;)V

    goto/16 :goto_0

    .line 429
    :cond_3
    instance-of v0, p1, Lcom/laborbook/keep/screen/premium/viewmodel/SubscriptionViewModel$SubscriptionState$SubscriptionVerified;

    const/4 v3, 0x0

    const-string v4, "getString(...)"

    if-eqz v0, :cond_5

    .line 430
    invoke-direct {p0, v2}, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;->showSpinnerLoading(Z)V

    .line 431
    check-cast p1, Lcom/laborbook/keep/screen/premium/viewmodel/SubscriptionViewModel$SubscriptionState$SubscriptionVerified;

    invoke-virtual {p1}, Lcom/laborbook/keep/screen/premium/viewmodel/SubscriptionViewModel$SubscriptionState$SubscriptionVerified;->isActive()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 432
    iput-boolean v2, p0, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;->isVerificationInProgress:Z

    .line 433
    invoke-direct {p0}, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;->hideVerificationScreen()V

    .line 434
    move-object p1, p0

    check-cast p1, Landroidx/lifecycle/LifecycleOwner;

    invoke-static {p1}, Landroidx/lifecycle/LifecycleOwnerKt;->getLifecycleScope(Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LifecycleCoroutineScope;

    move-result-object p1

    move-object v4, p1

    check-cast v4, Lkotlinx/coroutines/CoroutineScope;

    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object p1

    move-object v5, p1

    check-cast v5, Lkotlin/coroutines/CoroutineContext;

    new-instance p1, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment$observeViewModel$1$1;

    invoke-direct {p1, p0, v3}, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment$observeViewModel$1$1;-><init>(Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;Lkotlin/coroutines/Continuation;)V

    move-object v7, p1

    check-cast v7, Lkotlin/jvm/functions/Function2;

    const/4 v8, 0x2

    const/4 v9, 0x0

    const/4 v6, 0x0

    invoke-static/range {v4 .. v9}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 437
    invoke-direct {p0}, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;->showSuccessDialog()V

    goto/16 :goto_0

    .line 438
    :cond_4
    iget p1, p0, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;->verificationAttempts:I

    iget v0, p0, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;->maxVerificationAttempts:I

    if-lt p1, v0, :cond_a

    .line 439
    iput-boolean v2, p0, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;->isVerificationInProgress:Z

    .line 440
    invoke-direct {p0}, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;->hideVerificationScreen()V

    .line 441
    sget p1, Lcom/laborbook/keep/R$string;->payment_failed_try_again:I

    invoke-virtual {p0, p1}, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;->showPaymentFailedBottomSheet(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 444
    :cond_5
    instance-of v0, p1, Lcom/laborbook/keep/screen/premium/viewmodel/SubscriptionViewModel$SubscriptionState$UserSubscriptionLoaded;

    if-eqz v0, :cond_7

    .line 445
    invoke-direct {p0, v2}, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;->showSpinnerLoading(Z)V

    .line 446
    check-cast p1, Lcom/laborbook/keep/screen/premium/viewmodel/SubscriptionViewModel$SubscriptionState$UserSubscriptionLoaded;

    invoke-virtual {p1}, Lcom/laborbook/keep/screen/premium/viewmodel/SubscriptionViewModel$SubscriptionState$UserSubscriptionLoaded;->getSubscription()Lcom/laborbook/keep/model/subscription/UserSubscription;

    move-result-object p1

    invoke-virtual {p1}, Lcom/laborbook/keep/model/subscription/UserSubscription;->getSubscriptionTier()Ljava/lang/String;

    move-result-object p1

    const-string v0, "PRO"

    invoke-static {p1, v0, v1}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 447
    iput-boolean v2, p0, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;->isVerificationInProgress:Z

    .line 448
    invoke-direct {p0}, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;->hideVerificationScreen()V

    .line 449
    move-object p1, p0

    check-cast p1, Landroidx/lifecycle/LifecycleOwner;

    invoke-static {p1}, Landroidx/lifecycle/LifecycleOwnerKt;->getLifecycleScope(Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LifecycleCoroutineScope;

    move-result-object p1

    move-object v4, p1

    check-cast v4, Lkotlinx/coroutines/CoroutineScope;

    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object p1

    move-object v5, p1

    check-cast v5, Lkotlin/coroutines/CoroutineContext;

    new-instance p1, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment$observeViewModel$1$2;

    invoke-direct {p1, p0, v3}, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment$observeViewModel$1$2;-><init>(Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;Lkotlin/coroutines/Continuation;)V

    move-object v7, p1

    check-cast v7, Lkotlin/jvm/functions/Function2;

    const/4 v8, 0x2

    const/4 v9, 0x0

    const/4 v6, 0x0

    invoke-static/range {v4 .. v9}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 452
    invoke-direct {p0}, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;->showSuccessDialog()V

    goto :goto_0

    .line 453
    :cond_6
    iget p1, p0, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;->verificationAttempts:I

    iget v0, p0, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;->maxVerificationAttempts:I

    if-lt p1, v0, :cond_a

    .line 454
    iput-boolean v2, p0, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;->isVerificationInProgress:Z

    .line 455
    invoke-direct {p0}, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;->hideVerificationScreen()V

    .line 456
    sget p1, Lcom/laborbook/keep/R$string;->payment_failed_try_again:I

    invoke-virtual {p0, p1}, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;->showPaymentFailedBottomSheet(Ljava/lang/String;)V

    goto :goto_0

    .line 459
    :cond_7
    instance-of v0, p1, Lcom/laborbook/keep/screen/premium/viewmodel/SubscriptionViewModel$SubscriptionState$Error;

    if-eqz v0, :cond_9

    .line 460
    invoke-direct {p0, v2}, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;->showSpinnerLoading(Z)V

    .line 461
    iput-boolean v2, p0, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;->paymentFlowInProgress:Z

    .line 462
    iget-boolean v0, p0, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;->isVerificationInProgress:Z

    if-eqz v0, :cond_8

    .line 463
    iget p1, p0, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;->verificationAttempts:I

    iget v0, p0, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;->maxVerificationAttempts:I

    if-lt p1, v0, :cond_a

    .line 464
    iput-boolean v2, p0, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;->isVerificationInProgress:Z

    .line 465
    invoke-direct {p0}, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;->hideVerificationScreen()V

    .line 466
    sget p1, Lcom/laborbook/keep/R$string;->payment_failed_try_again:I

    invoke-virtual {p0, p1}, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;->showPaymentFailedBottomSheet(Ljava/lang/String;)V

    goto :goto_0

    .line 469
    :cond_8
    invoke-direct {p0}, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;->hideVerificationScreen()V

    .line 470
    check-cast p1, Lcom/laborbook/keep/screen/premium/viewmodel/SubscriptionViewModel$SubscriptionState$Error;

    invoke-virtual {p1}, Lcom/laborbook/keep/screen/premium/viewmodel/SubscriptionViewModel$SubscriptionState$Error;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;->showPaymentFailedBottomSheet(Ljava/lang/String;)V

    goto :goto_0

    .line 474
    :cond_9
    invoke-direct {p0, v2}, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;->showLoading(Z)V

    .line 475
    invoke-direct {p0, v2}, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;->showSpinnerLoading(Z)V

    .line 478
    :cond_a
    :goto_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final onCreateDialog$lambda$2(Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x4

    if-ne p2, p1, :cond_0

    .line 190
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    .line 191
    invoke-direct {p0}, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;->handleBackPress()V

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    return p2
.end method

.method private final onPaymentWebViewDismissed()V
    .locals 2

    .line 251
    iget-object v0, p0, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;->currentSubscriptionId:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 252
    sget v0, Lcom/laborbook/keep/R$string;->checking_payment_status:I

    invoke-virtual {p0, v0}, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "getString(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;->showVerificationScreen(Ljava/lang/String;)V

    .line 253
    iget-object v0, p0, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;->currentSubscriptionId:Ljava/lang/String;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {p0, v0}, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;->startStatusPolling(Ljava/lang/String;)V

    .line 255
    :cond_0
    invoke-direct {p0}, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;->hidePaymentWebView()V

    return-void
.end method

.method private final recordClickEvent(Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1152
    :try_start_0
    move-object v0, p0

    check-cast v0, Landroidx/lifecycle/LifecycleOwner;

    invoke-static {v0}, Landroidx/lifecycle/LifecycleOwnerKt;->getLifecycleScope(Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LifecycleCoroutineScope;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lkotlinx/coroutines/CoroutineScope;

    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lkotlin/coroutines/CoroutineContext;

    new-instance v0, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment$recordClickEvent$1;

    const/4 v3, 0x0

    invoke-direct {v0, p0, p1, p2, v3}, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment$recordClickEvent$1;-><init>(Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;Ljava/lang/String;Ljava/util/HashMap;Lkotlin/coroutines/Continuation;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method static synthetic recordClickEvent$default(Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;Ljava/lang/String;Ljava/util/HashMap;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 1151
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;->recordClickEvent(Ljava/lang/String;Ljava/util/HashMap;)V

    return-void
.end method

.method private final registerClickListeners()V
    .locals 3

    .line 374
    invoke-direct {p0}, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;->getBinding()Lcom/laborbook/keep/databinding/DialogPremiumOfferBinding;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 376
    iget-boolean v1, p0, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;->isHardPaywall:Z

    if-eqz v1, :cond_0

    .line 377
    iget-object v1, v0, Lcom/laborbook/keep/databinding/DialogPremiumOfferBinding;->ivClose:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 378
    iget-object v1, v0, Lcom/laborbook/keep/databinding/DialogPremiumOfferBinding;->tvFaqs:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 379
    invoke-virtual {p0, v2}, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;->setCancelable(Z)V

    .line 380
    iget-object v1, v0, Lcom/laborbook/keep/databinding/DialogPremiumOfferBinding;->tvFaqs:Landroid/widget/TextView;

    new-instance v2, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment$$ExternalSyntheticLambda15;

    invoke-direct {v2, p0}, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment$$ExternalSyntheticLambda15;-><init>(Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 382
    :cond_0
    iget-object v1, v0, Lcom/laborbook/keep/databinding/DialogPremiumOfferBinding;->ivClose:Landroid/widget/ImageView;

    new-instance v2, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment$$ExternalSyntheticLambda16;

    invoke-direct {v2, p0}, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment$$ExternalSyntheticLambda16;-><init>(Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 387
    :goto_0
    iget-object v1, v0, Lcom/laborbook/keep/databinding/DialogPremiumOfferBinding;->btnStartTrial:Lcom/boilerplate/uikit/views/buttons/RoundedPrimaryButton;

    new-instance v2, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment$$ExternalSyntheticLambda1;-><init>(Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;)V

    invoke-virtual {v1, v2}, Lcom/boilerplate/uikit/views/buttons/RoundedPrimaryButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 391
    iget-object v0, v0, Lcom/laborbook/keep/databinding/DialogPremiumOfferBinding;->ivLanguageSwitch:Landroid/widget/ImageView;

    new-instance v1, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment$$ExternalSyntheticLambda2;-><init>(Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    return-void
.end method

.method private static final registerClickListeners$lambda$13$lambda$10(Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;Landroid/view/View;)V
    .locals 2

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    const/4 v0, 0x2

    .line 383
    const-string v1, "premium_offer_close"

    invoke-static {p0, v1, p1, v0, p1}, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;->recordClickEvent$default(Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;Ljava/lang/String;Ljava/util/HashMap;ILjava/lang/Object;)V

    .line 384
    invoke-virtual {p0}, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;->dismiss()V

    return-void
.end method

.method private static final registerClickListeners$lambda$13$lambda$11(Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 388
    invoke-direct {p0}, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;->handleStartTrial()V

    return-void
.end method

.method private static final registerClickListeners$lambda$13$lambda$12(Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;Landroid/view/View;)V
    .locals 1

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 393
    :try_start_0
    invoke-virtual {p0}, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    const-string p1, "requireActivity(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 394
    sget-object p1, Lcom/laborbook/base/languagemanager/LanguageBottomSheetFragment;->Companion:Lcom/laborbook/base/languagemanager/LanguageBottomSheetFragment$Companion;

    invoke-virtual {p1}, Lcom/laborbook/base/languagemanager/LanguageBottomSheetFragment$Companion;->newInstance()Lcom/laborbook/base/languagemanager/LanguageBottomSheetFragment;

    move-result-object p1

    .line 395
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    const-string v0, "LanguageBottomSheetFragment"

    invoke-virtual {p1, p0, v0}, Lcom/laborbook/base/languagemanager/LanguageBottomSheetFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method private static final registerClickListeners$lambda$13$lambda$9(Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 380
    invoke-direct {p0}, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;->showFaqBottomSheet()V

    return-void
.end method

.method private static final remoteConfig_delegate$lambda$0()Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;
    .locals 1

    .line 56
    sget-object v0, Lcom/google/firebase/ktx/Firebase;->INSTANCE:Lcom/google/firebase/ktx/Firebase;

    invoke-static {v0}, Lcom/google/firebase/remoteconfig/ktx/RemoteConfigKt;->getRemoteConfig(Lcom/google/firebase/ktx/Firebase;)Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;

    move-result-object v0

    return-object v0
.end method

.method private final restoreSubscriptionPageUI()V
    .locals 3

    const/4 v0, 0x0

    .line 1118
    iput-boolean v0, p0, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;->paymentFlowInProgress:Z

    .line 1119
    invoke-direct {p0}, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;->hideVerificationScreen()V

    .line 1120
    invoke-direct {p0}, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;->getBinding()Lcom/laborbook/keep/databinding/DialogPremiumOfferBinding;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1121
    iget-object v1, v0, Lcom/laborbook/keep/databinding/DialogPremiumOfferBinding;->clLoadingOverlay:Landroidx/constraintlayout/widget/ConstraintLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroidx/constraintlayout/widget/ConstraintLayout;->setVisibility(I)V

    .line 1122
    iget-object v1, v0, Lcom/laborbook/keep/databinding/DialogPremiumOfferBinding;->pbLoading:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 1123
    iget-object v1, v0, Lcom/laborbook/keep/databinding/DialogPremiumOfferBinding;->pbButtonLoading:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 1124
    iget-object v1, v0, Lcom/laborbook/keep/databinding/DialogPremiumOfferBinding;->scrollContent:Landroid/widget/ScrollView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/ScrollView;->setEnabled(Z)V

    .line 1125
    iget-object v1, v0, Lcom/laborbook/keep/databinding/DialogPremiumOfferBinding;->btnStartTrial:Lcom/boilerplate/uikit/views/buttons/RoundedPrimaryButton;

    invoke-virtual {v1, v2}, Lcom/boilerplate/uikit/views/buttons/RoundedPrimaryButton;->setEnabled(Z)V

    .line 1126
    iget-object v0, v0, Lcom/laborbook/keep/databinding/DialogPremiumOfferBinding;->btnStartTrial:Lcom/boilerplate/uikit/views/buttons/RoundedPrimaryButton;

    iget-object v1, p0, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;->selectedPlan:Lcom/laborbook/keep/model/subscription/SubscriptionPlan;

    invoke-direct {p0, v1}, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;->getStartTrialButtonText(Lcom/laborbook/keep/model/subscription/SubscriptionPlan;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/boilerplate/uikit/views/buttons/RoundedPrimaryButton;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method private final setupOfferTimerFromRemoteConfig(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 9
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

    instance-of v0, p1, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment$setupOfferTimerFromRemoteConfig$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment$setupOfferTimerFromRemoteConfig$1;

    iget v1, v0, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment$setupOfferTimerFromRemoteConfig$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p1, v0, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment$setupOfferTimerFromRemoteConfig$1;->label:I

    sub-int/2addr p1, v2

    iput p1, v0, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment$setupOfferTimerFromRemoteConfig$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment$setupOfferTimerFromRemoteConfig$1;

    invoke-direct {v0, p0, p1}, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment$setupOfferTimerFromRemoteConfig$1;-><init>(Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p1, v0, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment$setupOfferTimerFromRemoteConfig$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 732
    iget v2, v0, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment$setupOfferTimerFromRemoteConfig$1;->label:I

    const/16 v3, 0x8

    const/4 v4, 0x1

    const-wide/16 v5, 0x0

    if-eqz v2, :cond_2

    if-ne v2, v4, :cond_1

    iget-object v1, v0, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment$setupOfferTimerFromRemoteConfig$1;->L$1:Ljava/lang/Object;

    check-cast v1, Lcom/laborbook/keep/databinding/DialogPremiumOfferBinding;

    iget-object v0, v0, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment$setupOfferTimerFromRemoteConfig$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_3

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 733
    invoke-direct {p0}, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;->getBinding()Lcom/laborbook/keep/databinding/DialogPremiumOfferBinding;

    move-result-object p1

    if-nez p1, :cond_3

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 734
    :cond_3
    :try_start_0
    invoke-direct {p0}, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;->getRemoteConfig()Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;

    move-result-object v2

    const-string v7, "paywall_offer_timer_enabled"

    invoke-virtual {v2, v7}, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;->getBoolean(Ljava/lang/String;)Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move v2, v4

    :goto_1
    if-nez v2, :cond_4

    .line 736
    iget-object p1, p1, Lcom/laborbook/keep/databinding/DialogPremiumOfferBinding;->llOfferTimer:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 737
    invoke-direct {p0}, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;->stopOfferCountdown()V

    .line 738
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 740
    :cond_4
    :try_start_1
    invoke-direct {p0}, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;->getRemoteConfig()Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;

    move-result-object v2

    const-string v7, "paywall_offer_end_epoch_ms"

    invoke-virtual {v2, v7}, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;->getLong(Ljava/lang/String;)J

    move-result-wide v7
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-wide v7, v5

    :goto_2
    cmp-long v2, v7, v5

    if-lez v2, :cond_5

    move-object v0, p0

    goto :goto_4

    .line 742
    :cond_5
    invoke-direct {p0}, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;->getDataStoreManager()Lcom/laborbook/base/datastore/DataStoreManager;

    move-result-object v2

    sget-object v7, Lcom/laborbook/base/datastore/DataStoreManager;->Companion:Lcom/laborbook/base/datastore/DataStoreManager$Companion;

    invoke-virtual {v7}, Lcom/laborbook/base/datastore/DataStoreManager$Companion;->getPREMIUM_OFFER_LOCAL_END_EPOCH_MS()Landroidx/datastore/preferences/core/Preferences$Key;

    move-result-object v7

    invoke-static {v5, v6}, Lkotlin/coroutines/jvm/internal/Boxing;->boxLong(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v2, v7, v8}, Lcom/laborbook/base/datastore/DataStoreManager;->read(Landroidx/datastore/preferences/core/Preferences$Key;Ljava/lang/Object;)Lkotlinx/coroutines/flow/Flow;

    move-result-object v2

    iput-object p0, v0, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment$setupOfferTimerFromRemoteConfig$1;->L$0:Ljava/lang/Object;

    iput-object p1, v0, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment$setupOfferTimerFromRemoteConfig$1;->L$1:Ljava/lang/Object;

    iput v4, v0, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment$setupOfferTimerFromRemoteConfig$1;->label:I

    invoke-static {v2, v0}, Lkotlinx/coroutines/flow/FlowKt;->first(Lkotlinx/coroutines/flow/Flow;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v1, :cond_6

    return-object v1

    :cond_6
    move-object v1, p1

    move-object p1, v0

    move-object v0, p0

    :goto_3
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v7

    move-object p1, v1

    .line 744
    :goto_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sub-long/2addr v7, v1

    cmp-long v1, v7, v5

    if-gtz v1, :cond_7

    .line 746
    iget-object p1, p1, Lcom/laborbook/keep/databinding/DialogPremiumOfferBinding;->llOfferTimer:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 747
    invoke-direct {v0}, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;->stopOfferCountdown()V

    .line 748
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 750
    :cond_7
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    add-long/2addr v1, v7

    invoke-static {v1, v2}, Lkotlin/coroutines/jvm/internal/Boxing;->boxLong(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;->offerTimerEndAtElapsedMs:Ljava/lang/Long;

    .line 751
    iget-object p1, p1, Lcom/laborbook/keep/databinding/DialogPremiumOfferBinding;->llOfferTimer:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 752
    invoke-direct {v0}, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;->maybeStartOfferCountdown()V

    .line 753
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method private final setupViews()V
    .locals 5

    .line 326
    invoke-direct {p0}, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;->getBinding()Lcom/laborbook/keep/databinding/DialogPremiumOfferBinding;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 328
    iget-object v1, v0, Lcom/laborbook/keep/databinding/DialogPremiumOfferBinding;->paymentWebview:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 329
    iget-object v1, v0, Lcom/laborbook/keep/databinding/DialogPremiumOfferBinding;->paymentWebview:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 330
    iget-object v1, v0, Lcom/laborbook/keep/databinding/DialogPremiumOfferBinding;->paymentWebview:Landroid/webkit/WebView;

    invoke-direct {p0}, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;->createPaymentWebViewClient()Landroid/webkit/WebViewClient;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 331
    new-instance v1, Lcom/razorpay/Razorpay;

    invoke-virtual {p0}, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    check-cast v2, Landroid/app/Activity;

    const-string v3, "rzp_live_RzMg0FZRdK4zwk"

    invoke-direct {v1, v2, v3}, Lcom/razorpay/Razorpay;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;->razorpayCustom:Lcom/razorpay/Razorpay;

    .line 332
    invoke-direct {p0}, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;->fetchPaymentMethods()V

    .line 333
    invoke-direct {p0}, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;->loadUpiAppsViaRazorpay()V

    .line 336
    iget-object v1, v0, Lcom/laborbook/keep/databinding/DialogPremiumOfferBinding;->btnStartTrial:Lcom/boilerplate/uikit/views/buttons/RoundedPrimaryButton;

    invoke-virtual {p0}, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;->requireContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/laborbook/keep/R$color;->color_primary:I

    invoke-static {v2, v3}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/boilerplate/uikit/views/buttons/RoundedPrimaryButton;->setBackgroundColor(I)V

    .line 339
    invoke-virtual {p0}, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_8

    .line 340
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v3

    const/16 v4, 0xc4c

    if-eq v3, v4, :cond_6

    const/16 v4, 0xca9

    if-eq v3, v4, :cond_5

    const/16 v4, 0xcee

    if-eq v3, v4, :cond_4

    const/16 v4, 0xd01

    if-eq v3, v4, :cond_3

    const/16 v4, 0xda5

    if-eq v3, v4, :cond_2

    const/16 v4, 0xde3

    if-eq v3, v4, :cond_1

    const/16 v4, 0xdf1

    if-eq v3, v4, :cond_0

    goto/16 :goto_1

    :cond_0
    const-string v3, "pa"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    goto/16 :goto_1

    :cond_1
    const-string v3, "or"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    goto/16 :goto_1

    :cond_2
    const-string v3, "mr"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    goto/16 :goto_1

    :cond_3
    const-string v3, "hi"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    goto :goto_1

    :cond_4
    const-string v3, "gu"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    goto :goto_0

    :cond_5
    const-string v3, "en"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    goto :goto_1

    :cond_6
    const-string v3, "bn"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    goto :goto_1

    .line 341
    :cond_7
    :goto_0
    iget-object v1, v0, Lcom/laborbook/keep/databinding/DialogPremiumOfferBinding;->videoSubscriptionExplainer:Landroid/widget/VideoView;

    invoke-virtual {v1, v2}, Landroid/widget/VideoView;->setVisibility(I)V

    .line 342
    iget-object v1, v0, Lcom/laborbook/keep/databinding/DialogPremiumOfferBinding;->videoSubscriptionExplainer:Landroid/widget/VideoView;

    .line 343
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "android.resource://"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;->requireContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x2f

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/laborbook/base/R$raw;->subscription_explainer_video:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 342
    invoke-virtual {v1, v2}, Landroid/widget/VideoView;->setVideoURI(Landroid/net/Uri;)V

    .line 345
    new-instance v1, Lkotlin/jvm/internal/Ref$BooleanRef;

    invoke-direct {v1}, Lkotlin/jvm/internal/Ref$BooleanRef;-><init>()V

    .line 346
    iget-object v2, v0, Lcom/laborbook/keep/databinding/DialogPremiumOfferBinding;->videoSubscriptionExplainer:Landroid/widget/VideoView;

    new-instance v3, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment$$ExternalSyntheticLambda0;

    invoke-direct {v3}, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {v2, v3}, Landroid/widget/VideoView;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 347
    iget-object v2, v0, Lcom/laborbook/keep/databinding/DialogPremiumOfferBinding;->videoSubscriptionExplainer:Landroid/widget/VideoView;

    new-instance v3, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment$$ExternalSyntheticLambda8;

    invoke-direct {v3, v0}, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment$$ExternalSyntheticLambda8;-><init>(Lcom/laborbook/keep/databinding/DialogPremiumOfferBinding;)V

    invoke-virtual {v2, v3}, Landroid/widget/VideoView;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 348
    iget-object v2, v0, Lcom/laborbook/keep/databinding/DialogPremiumOfferBinding;->videoSubscriptionExplainer:Landroid/widget/VideoView;

    new-instance v3, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment$$ExternalSyntheticLambda9;

    invoke-direct {v3, v1, v0}, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment$$ExternalSyntheticLambda9;-><init>(Lkotlin/jvm/internal/Ref$BooleanRef;Lcom/laborbook/keep/databinding/DialogPremiumOfferBinding;)V

    invoke-virtual {v2, v3}, Landroid/widget/VideoView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_2

    .line 358
    :cond_8
    :goto_1
    iget-object v1, v0, Lcom/laborbook/keep/databinding/DialogPremiumOfferBinding;->videoSubscriptionExplainer:Landroid/widget/VideoView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/VideoView;->setVisibility(I)V

    .line 362
    :goto_2
    iget-object v1, v0, Lcom/laborbook/keep/databinding/DialogPremiumOfferBinding;->clUpiSelector:Landroidx/constraintlayout/widget/ConstraintLayout;

    new-instance v2, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment$$ExternalSyntheticLambda10;

    invoke-direct {v2, p0}, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment$$ExternalSyntheticLambda10;-><init>(Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;)V

    invoke-virtual {v1, v2}, Landroidx/constraintlayout/widget/ConstraintLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 365
    iget-object v0, v0, Lcom/laborbook/keep/databinding/DialogPremiumOfferBinding;->clBottomSection:Landroidx/constraintlayout/widget/ConstraintLayout;

    check-cast v0, Landroid/view/View;

    new-instance v1, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment$$ExternalSyntheticLambda11;

    invoke-direct {v1}, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment$$ExternalSyntheticLambda11;-><init>()V

    invoke-static {v0, v1}, Landroidx/core/view/ViewCompat;->setOnApplyWindowInsetsListener(Landroid/view/View;Landroidx/core/view/OnApplyWindowInsetsListener;)V

    :cond_9
    return-void
.end method

.method private static final setupViews$lambda$8$lambda$3(Landroid/media/MediaPlayer;)V
    .locals 0

    .line 346
    invoke-virtual {p0}, Landroid/media/MediaPlayer;->start()V

    return-void
.end method

.method private static final setupViews$lambda$8$lambda$4(Lcom/laborbook/keep/databinding/DialogPremiumOfferBinding;Landroid/media/MediaPlayer;)V
    .locals 0

    const-string p1, "$this_apply"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 347
    iget-object p0, p0, Lcom/laborbook/keep/databinding/DialogPremiumOfferBinding;->videoSubscriptionExplainer:Landroid/widget/VideoView;

    invoke-virtual {p0}, Landroid/widget/VideoView;->start()V

    return-void
.end method

.method private static final setupViews$lambda$8$lambda$5(Lkotlin/jvm/internal/Ref$BooleanRef;Lcom/laborbook/keep/databinding/DialogPremiumOfferBinding;Landroid/view/View;)V
    .locals 3

    const-string p2, "$isMuted"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "$this_apply"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 349
    iget-boolean p2, p0, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    const/4 v0, 0x1

    xor-int/2addr p2, v0

    iput-boolean p2, p0, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    const/4 p2, 0x0

    .line 351
    :try_start_0
    const-class v1, Landroid/widget/VideoView;

    const-string v2, "mMediaPlayer"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 352
    invoke-virtual {v1, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 353
    iget-object p1, p1, Lcom/laborbook/keep/databinding/DialogPremiumOfferBinding;->videoSubscriptionExplainer:Landroid/widget/VideoView;

    invoke-virtual {v1, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    instance-of v0, p1, Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    check-cast p1, Landroid/media/MediaPlayer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object p2, p1

    .line 355
    :catch_0
    :cond_0
    iget-boolean p0, p0, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    if-eqz p0, :cond_1

    if-eqz p2, :cond_2

    const/4 p0, 0x0

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_2

    const/high16 p0, 0x3f800000    # 1.0f

    :goto_0
    invoke-virtual {p2, p0, p0}, Landroid/media/MediaPlayer;->setVolume(FF)V

    :cond_2
    return-void
.end method

.method private static final setupViews$lambda$8$lambda$6(Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 362
    invoke-direct {p0}, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;->showUpiSelectionBottomSheet()V

    return-void
.end method

.method private static final setupViews$lambda$8$lambda$7(Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;
    .locals 5

    const-string v0, "view"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "insets"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 366
    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Type;->navigationBars()I

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/core/view/WindowInsetsCompat;->getInsets(I)Landroidx/core/graphics/Insets;

    move-result-object v0

    const-string v1, "getInsets(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 367
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v3

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v4

    iget v0, v0, Landroidx/core/graphics/Insets;->bottom:I

    add-int/2addr v4, v0

    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/view/View;->setPadding(IIII)V

    return-object p1
.end method

.method private final showError(Ljava/lang/String;)V
    .locals 2

    .line 1109
    invoke-virtual {p0}, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    check-cast p1, Ljava/lang/CharSequence;

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method private final showErrorLoading(Ljava/lang/String;)V
    .locals 7

    .line 1089
    invoke-direct {p0}, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;->getBinding()Lcom/laborbook/keep/databinding/DialogPremiumOfferBinding;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1090
    iget-object v1, v0, Lcom/laborbook/keep/databinding/DialogPremiumOfferBinding;->clLoadingOverlay:Landroidx/constraintlayout/widget/ConstraintLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroidx/constraintlayout/widget/ConstraintLayout;->setVisibility(I)V

    .line 1091
    iget-object v1, v0, Lcom/laborbook/keep/databinding/DialogPremiumOfferBinding;->pbLoading:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 1092
    iget-object v1, v0, Lcom/laborbook/keep/databinding/DialogPremiumOfferBinding;->btnStartTrial:Lcom/boilerplate/uikit/views/buttons/RoundedPrimaryButton;

    invoke-virtual {v1, v2}, Lcom/boilerplate/uikit/views/buttons/RoundedPrimaryButton;->setEnabled(Z)V

    .line 1093
    iget-object v0, v0, Lcom/laborbook/keep/databinding/DialogPremiumOfferBinding;->scrollContent:Landroid/widget/ScrollView;

    invoke-virtual {v0, v2}, Landroid/widget/ScrollView;->setEnabled(Z)V

    .line 1095
    :cond_0
    invoke-direct {p0, p1}, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;->showError(Ljava/lang/String;)V

    .line 1096
    invoke-direct {p0}, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;->getBinding()Lcom/laborbook/keep/databinding/DialogPremiumOfferBinding;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 1097
    move-object v0, p0

    check-cast v0, Landroidx/lifecycle/LifecycleOwner;

    invoke-static {v0}, Landroidx/lifecycle/LifecycleOwnerKt;->getLifecycleScope(Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LifecycleCoroutineScope;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lkotlinx/coroutines/CoroutineScope;

    new-instance v0, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment$showErrorLoading$2$1;

    const/4 v2, 0x0

    invoke-direct {v0, p1, p0, v2}, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment$showErrorLoading$2$1;-><init>(Lcom/laborbook/keep/databinding/DialogPremiumOfferBinding;Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;Lkotlin/coroutines/Continuation;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    :cond_1
    return-void
.end method

.method private final showFaqBottomSheet()V
    .locals 4

    .line 819
    :try_start_0
    new-instance v0, Lcom/google/android/material/bottomsheet/BottomSheetDialog;

    invoke-virtual {p0}, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;-><init>(Landroid/content/Context;)V

    .line 820
    invoke-virtual {p0}, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcom/laborbook/keep/R$layout;->bottom_sheet_faq:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 821
    invoke-virtual {v0, v1}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->setContentView(Landroid/view/View;)V

    .line 824
    new-instance v2, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment$$ExternalSyntheticLambda7;

    invoke-direct {v2, v1}, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment$$ExternalSyntheticLambda7;-><init>(Landroid/view/View;)V

    .line 830
    sget v1, Lcom/laborbook/keep/R$id;->tv_faq1_q:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget v3, Lcom/laborbook/keep/R$id;->tv_faq1_a:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v1, v3}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 831
    sget v1, Lcom/laborbook/keep/R$id;->tv_faq3_q:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget v3, Lcom/laborbook/keep/R$id;->tv_faq3_a:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v1, v3}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 832
    sget v1, Lcom/laborbook/keep/R$id;->tv_faq4_q:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget v3, Lcom/laborbook/keep/R$id;->tv_faq4_a:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v1, v3}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 834
    invoke-virtual {v0}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method private static final showFaqBottomSheet$lambda$34(Landroid/view/View;II)Lkotlin/Unit;
    .locals 1

    .line 825
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance v0, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment$$ExternalSyntheticLambda12;

    invoke-direct {v0, p0, p2}, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment$$ExternalSyntheticLambda12;-><init>(Landroid/view/View;I)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 829
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final showFaqBottomSheet$lambda$34$lambda$33(Landroid/view/View;ILandroid/view/View;)V
    .locals 0

    .line 826
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    .line 827
    invoke-virtual {p0}, Landroid/widget/TextView;->getVisibility()I

    move-result p1

    if-nez p1, :cond_0

    const/16 p1, 0x8

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method private final showLoading(Z)V
    .locals 3

    .line 1062
    invoke-direct {p0}, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;->getBinding()Lcom/laborbook/keep/databinding/DialogPremiumOfferBinding;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-eqz p1, :cond_0

    .line 1064
    iget-object p1, v0, Lcom/laborbook/keep/databinding/DialogPremiumOfferBinding;->clLoadingOverlay:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p1, v1}, Landroidx/constraintlayout/widget/ConstraintLayout;->setVisibility(I)V

    .line 1065
    iget-object p1, v0, Lcom/laborbook/keep/databinding/DialogPremiumOfferBinding;->pbLoading:Landroid/widget/ProgressBar;

    invoke-virtual {p1, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 1066
    iget-object p1, v0, Lcom/laborbook/keep/databinding/DialogPremiumOfferBinding;->llPriceDisplay:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1067
    iget-object p1, v0, Lcom/laborbook/keep/databinding/DialogPremiumOfferBinding;->llHowTrialWorks:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1068
    iget-object p1, v0, Lcom/laborbook/keep/databinding/DialogPremiumOfferBinding;->llNoTrialSection:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1069
    iget-object p1, v0, Lcom/laborbook/keep/databinding/DialogPremiumOfferBinding;->btnStartTrial:Lcom/boilerplate/uikit/views/buttons/RoundedPrimaryButton;

    invoke-virtual {p1, v1}, Lcom/boilerplate/uikit/views/buttons/RoundedPrimaryButton;->setEnabled(Z)V

    goto :goto_0

    .line 1071
    :cond_0
    iget-object p1, v0, Lcom/laborbook/keep/databinding/DialogPremiumOfferBinding;->clLoadingOverlay:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p1, v2}, Landroidx/constraintlayout/widget/ConstraintLayout;->setVisibility(I)V

    .line 1072
    iget-object p1, v0, Lcom/laborbook/keep/databinding/DialogPremiumOfferBinding;->pbLoading:Landroid/widget/ProgressBar;

    invoke-virtual {p1, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 1073
    iget-object p1, v0, Lcom/laborbook/keep/databinding/DialogPremiumOfferBinding;->llPriceDisplay:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1074
    iget-object p1, v0, Lcom/laborbook/keep/databinding/DialogPremiumOfferBinding;->btnStartTrial:Lcom/boilerplate/uikit/views/buttons/RoundedPrimaryButton;

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lcom/boilerplate/uikit/views/buttons/RoundedPrimaryButton;->setEnabled(Z)V

    .line 1075
    iget-object p1, v0, Lcom/laborbook/keep/databinding/DialogPremiumOfferBinding;->btnStartTrial:Lcom/boilerplate/uikit/views/buttons/RoundedPrimaryButton;

    iget-object v0, p0, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;->selectedPlan:Lcom/laborbook/keep/model/subscription/SubscriptionPlan;

    invoke-direct {p0, v0}, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;->getStartTrialButtonText(Lcom/laborbook/keep/model/subscription/SubscriptionPlan;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/boilerplate/uikit/views/buttons/RoundedPrimaryButton;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private final showPaymentFailedBottomSheet(Ljava/lang/String;)V
    .locals 3

    .line 1113
    invoke-direct {p0}, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;->restoreSubscriptionPageUI()V

    .line 1114
    sget-object v0, Lcom/laborbook/keep/screen/premium/PaymentFailedBottomSheet;->Companion:Lcom/laborbook/keep/screen/premium/PaymentFailedBottomSheet$Companion;

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-static {v0, p1, v1, v2, v1}, Lcom/laborbook/keep/screen/premium/PaymentFailedBottomSheet$Companion;->newInstance$default(Lcom/laborbook/keep/screen/premium/PaymentFailedBottomSheet$Companion;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lcom/laborbook/keep/screen/premium/PaymentFailedBottomSheet;

    move-result-object p1

    invoke-virtual {p0}, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;->getParentFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v1, "PaymentFailedBottomSheet"

    invoke-virtual {p1, v0, v1}, Lcom/laborbook/keep/screen/premium/PaymentFailedBottomSheet;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method private final showSpinnerLoading(Z)V
    .locals 3

    .line 1081
    invoke-direct {p0}, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;->getBinding()Lcom/laborbook/keep/databinding/DialogPremiumOfferBinding;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1082
    iget-object v1, v0, Lcom/laborbook/keep/databinding/DialogPremiumOfferBinding;->pbButtonLoading:Landroid/widget/ProgressBar;

    if-eqz p1, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    const/16 v2, 0x8

    :goto_0
    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 1083
    iget-object v1, v0, Lcom/laborbook/keep/databinding/DialogPremiumOfferBinding;->btnStartTrial:Lcom/boilerplate/uikit/views/buttons/RoundedPrimaryButton;

    xor-int/lit8 v2, p1, 0x1

    invoke-virtual {v1, v2}, Lcom/boilerplate/uikit/views/buttons/RoundedPrimaryButton;->setEnabled(Z)V

    .line 1084
    iget-object v0, v0, Lcom/laborbook/keep/databinding/DialogPremiumOfferBinding;->btnStartTrial:Lcom/boilerplate/uikit/views/buttons/RoundedPrimaryButton;

    if-eqz p1, :cond_1

    sget p1, Lcom/laborbook/keep/R$string;->processing:I

    invoke-virtual {p0, p1}, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "getString(...)"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/CharSequence;

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;->selectedPlan:Lcom/laborbook/keep/model/subscription/SubscriptionPlan;

    invoke-direct {p0, p1}, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;->getStartTrialButtonText(Lcom/laborbook/keep/model/subscription/SubscriptionPlan;)Ljava/lang/CharSequence;

    move-result-object p1

    :goto_1
    invoke-virtual {v0, p1}, Lcom/boilerplate/uikit/views/buttons/RoundedPrimaryButton;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    return-void
.end method

.method private final showSuccessDialog()V
    .locals 18

    move-object/from16 v0, p0

    const/4 v1, 0x0

    .line 1131
    iput-boolean v1, v0, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;->paymentFlowInProgress:Z

    .line 1133
    move-object v1, v0

    check-cast v1, Landroidx/lifecycle/LifecycleOwner;

    invoke-static {v1}, Landroidx/lifecycle/LifecycleOwnerKt;->getLifecycleScope(Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LifecycleCoroutineScope;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lkotlinx/coroutines/CoroutineScope;

    new-instance v1, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment$showSuccessDialog$1;

    const/4 v3, 0x0

    invoke-direct {v1, v0, v3}, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment$showSuccessDialog$1;-><init>(Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;Lkotlin/coroutines/Continuation;)V

    move-object v5, v1

    check-cast v5, Lkotlin/jvm/functions/Function2;

    const/4 v6, 0x3

    const/4 v7, 0x0

    const/4 v4, 0x0

    invoke-static/range {v2 .. v7}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 1136
    iget-object v1, v0, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;->selectedPlan:Lcom/laborbook/keep/model/subscription/SubscriptionPlan;

    if-eqz v1, :cond_1

    .line 1137
    invoke-virtual {v1}, Lcom/laborbook/keep/model/subscription/SubscriptionPlan;->getHasTrial()Z

    move-result v2

    const-string v3, "requireContext(...)"

    if-eqz v2, :cond_0

    sget-object v4, Lcom/laborbook/base/analytics/FacebookPaymentEvents;->INSTANCE:Lcom/laborbook/base/analytics/FacebookPaymentEvents;

    invoke-virtual/range {p0 .. p0}, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;->requireContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/laborbook/keep/model/subscription/SubscriptionPlan;->getCurrency()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1}, Lcom/laborbook/keep/model/subscription/SubscriptionPlan;->getId()Ljava/lang/String;

    move-result-object v9

    iget-object v10, v0, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;->installSource:Ljava/lang/String;

    const-wide/16 v6, 0x0

    invoke-virtual/range {v4 .. v10}, Lcom/laborbook/base/analytics/FacebookPaymentEvents;->logStartTrial(Landroid/content/Context;DLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1138
    :cond_0
    sget-object v11, Lcom/laborbook/base/analytics/FacebookPaymentEvents;->INSTANCE:Lcom/laborbook/base/analytics/FacebookPaymentEvents;

    invoke-virtual/range {p0 .. p0}, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;->requireContext()Landroid/content/Context;

    move-result-object v12

    invoke-static {v12, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/laborbook/keep/model/subscription/SubscriptionPlan;->getDiscountedPrice()I

    move-result v2

    int-to-double v13, v2

    invoke-virtual {v1}, Lcom/laborbook/keep/model/subscription/SubscriptionPlan;->getCurrency()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v1}, Lcom/laborbook/keep/model/subscription/SubscriptionPlan;->getId()Ljava/lang/String;

    move-result-object v16

    iget-object v1, v0, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;->installSource:Ljava/lang/String;

    move-object/from16 v17, v1

    invoke-virtual/range {v11 .. v17}, Lcom/laborbook/base/analytics/FacebookPaymentEvents;->logSubscribe(Landroid/content/Context;DLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    const/4 v1, 0x1

    .line 1140
    invoke-virtual {v0, v1}, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;->setCancelable(Z)V

    .line 1141
    invoke-virtual/range {p0 .. p0}, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;->dismiss()V

    .line 1142
    sget-object v1, Lcom/laborbook/keep/screen/premium/SubscriptionSuccessDialogFragment;->Companion:Lcom/laborbook/keep/screen/premium/SubscriptionSuccessDialogFragment$Companion;

    invoke-virtual {v1}, Lcom/laborbook/keep/screen/premium/SubscriptionSuccessDialogFragment$Companion;->newInstance()Lcom/laborbook/keep/screen/premium/SubscriptionSuccessDialogFragment;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;->getParentFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v2

    const-string v3, "SubscriptionSuccessDialogFragment"

    invoke-virtual {v1, v2, v3}, Lcom/laborbook/keep/screen/premium/SubscriptionSuccessDialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method private final showUpiSelectionBottomSheet()V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x2

    .line 839
    const-string v2, "select_upi_app"

    invoke-static {p0, v2, v0, v1, v0}, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;->recordClickEvent$default(Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;Ljava/lang/String;Ljava/util/HashMap;ILjava/lang/Object;)V

    .line 840
    sget-object v0, Lcom/laborbook/keep/screen/premium/UpiSelectionBottomSheet;->Companion:Lcom/laborbook/keep/screen/premium/UpiSelectionBottomSheet$Companion;

    iget-object v1, p0, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;->selectedUpiApp:Lcom/laborbook/keep/screen/premium/InstalledUpiApp;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/laborbook/keep/screen/premium/InstalledUpiApp;->getPackageName()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    const-string v1, ""

    :cond_1
    invoke-virtual {v0, v1}, Lcom/laborbook/keep/screen/premium/UpiSelectionBottomSheet$Companion;->newInstance(Ljava/lang/String;)Lcom/laborbook/keep/screen/premium/UpiSelectionBottomSheet;

    move-result-object v0

    .line 841
    iget-object v1, p0, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;->installedUpiApps:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/laborbook/keep/screen/premium/UpiSelectionBottomSheet;->setInstalledUpiApps(Ljava/util/List;)V

    .line 842
    new-instance v1, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment$$ExternalSyntheticLambda13;

    invoke-direct {v1, p0}, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment$$ExternalSyntheticLambda13;-><init>(Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;)V

    invoke-virtual {v0, v1}, Lcom/laborbook/keep/screen/premium/UpiSelectionBottomSheet;->setOnUpiSelectedListener(Lkotlin/jvm/functions/Function1;)V

    .line 847
    invoke-virtual {p0}, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;->getParentFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    const-string v2, "UpiSelectionBottomSheet"

    invoke-virtual {v0, v1, v2}, Lcom/laborbook/keep/screen/premium/UpiSelectionBottomSheet;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method private static final showUpiSelectionBottomSheet$lambda$35(Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;Lcom/laborbook/keep/screen/premium/InstalledUpiApp;)Lkotlin/Unit;
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "upiApp"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 843
    iput-object p1, p0, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;->selectedUpiApp:Lcom/laborbook/keep/screen/premium/InstalledUpiApp;

    .line 844
    invoke-direct {p0}, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;->getBinding()Lcom/laborbook/keep/databinding/DialogPremiumOfferBinding;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/laborbook/keep/databinding/DialogPremiumOfferBinding;->ivSelectedUpiIcon:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/laborbook/keep/screen/premium/InstalledUpiApp;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 845
    :cond_0
    sget-object p1, Lcom/laborbook/base/analytics/FacebookPaymentEvents;->INSTANCE:Lcom/laborbook/base/analytics/FacebookPaymentEvents;

    invoke-virtual {p0}, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;->requireContext()Landroid/content/Context;

    move-result-object p0

    const-string v0, "requireContext(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Lcom/laborbook/base/analytics/FacebookPaymentEvents;->logAddPaymentInfo(Landroid/content/Context;)V

    .line 846
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private final showVerificationScreen(Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x0

    .line 1000
    invoke-direct {p0, v0}, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;->showSpinnerLoading(Z)V

    .line 1001
    invoke-direct {p0}, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;->getBinding()Lcom/laborbook/keep/databinding/DialogPremiumOfferBinding;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1002
    iget-object v2, v1, Lcom/laborbook/keep/databinding/DialogPremiumOfferBinding;->clVerificationOverlay:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v2, v0}, Landroidx/constraintlayout/widget/ConstraintLayout;->setVisibility(I)V

    .line 1003
    iget-object v2, v1, Lcom/laborbook/keep/databinding/DialogPremiumOfferBinding;->tvVerificationMessage:Landroid/widget/TextView;

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1004
    iget-object p1, v1, Lcom/laborbook/keep/databinding/DialogPremiumOfferBinding;->scrollContent:Landroid/widget/ScrollView;

    invoke-virtual {p1, v0}, Landroid/widget/ScrollView;->setEnabled(Z)V

    .line 1005
    iget-object p1, v1, Lcom/laborbook/keep/databinding/DialogPremiumOfferBinding;->clBottomSection:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p1, v0}, Landroidx/constraintlayout/widget/ConstraintLayout;->setEnabled(Z)V

    .line 1006
    iget-object p1, v1, Lcom/laborbook/keep/databinding/DialogPremiumOfferBinding;->ivClose:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1008
    :cond_0
    invoke-virtual {p0, v0}, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;->setCancelable(Z)V

    return-void
.end method

.method private final startSocialProofTicker()V
    .locals 8

    .line 261
    iget-object v0, p0, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;->socialProofJob:Lkotlinx/coroutines/Job;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2, v1}, Lkotlinx/coroutines/Job$DefaultImpls;->cancel$default(Lkotlinx/coroutines/Job;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 262
    :cond_0
    invoke-virtual {p0}, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v0

    const-string v2, "getViewLifecycleOwner(...)"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Landroidx/lifecycle/LifecycleOwnerKt;->getLifecycleScope(Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LifecycleCoroutineScope;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lkotlinx/coroutines/CoroutineScope;

    new-instance v0, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment$startSocialProofTicker$1;

    invoke-direct {v0, p0, v1}, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment$startSocialProofTicker$1;-><init>(Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;Lkotlin/coroutines/Continuation;)V

    move-object v5, v0

    check-cast v5, Lkotlin/jvm/functions/Function2;

    const/4 v6, 0x3

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static/range {v2 .. v7}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    move-result-object v0

    iput-object v0, p0, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;->socialProofJob:Lkotlinx/coroutines/Job;

    return-void
.end method

.method private final startStatusPolling(Ljava/lang/String;)V
    .locals 6

    .line 1042
    iget-boolean p1, p0, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;->isVerificationInProgress:Z

    if-eqz p1, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x1

    .line 1043
    iput-boolean p1, p0, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;->isVerificationInProgress:Z

    const/4 p1, 0x0

    .line 1044
    iput p1, p0, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;->verificationAttempts:I

    .line 1045
    move-object p1, p0

    check-cast p1, Landroidx/lifecycle/LifecycleOwner;

    invoke-static {p1}, Landroidx/lifecycle/LifecycleOwnerKt;->getLifecycleScope(Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LifecycleCoroutineScope;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lkotlinx/coroutines/CoroutineScope;

    new-instance p1, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment$startStatusPolling$1;

    const/4 v1, 0x0

    invoke-direct {p1, p0, v1}, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment$startStatusPolling$1;-><init>(Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;Lkotlin/coroutines/Continuation;)V

    move-object v3, p1

    check-cast v3, Lkotlin/jvm/functions/Function2;

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v2, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method private final startTestimonialTicker()V
    .locals 8

    .line 289
    iget-object v0, p0, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;->testimonialJob:Lkotlinx/coroutines/Job;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2, v1}, Lkotlinx/coroutines/Job$DefaultImpls;->cancel$default(Lkotlinx/coroutines/Job;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 290
    :cond_0
    invoke-virtual {p0}, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v0

    const-string v2, "getViewLifecycleOwner(...)"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Landroidx/lifecycle/LifecycleOwnerKt;->getLifecycleScope(Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LifecycleCoroutineScope;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lkotlinx/coroutines/CoroutineScope;

    new-instance v0, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment$startTestimonialTicker$1;

    invoke-direct {v0, p0, v1}, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment$startTestimonialTicker$1;-><init>(Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;Lkotlin/coroutines/Continuation;)V

    move-object v5, v0

    check-cast v5, Lkotlin/jvm/functions/Function2;

    const/4 v6, 0x3

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static/range {v2 .. v7}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    move-result-object v0

    iput-object v0, p0, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;->testimonialJob:Lkotlinx/coroutines/Job;

    return-void
.end method

.method private final startVerificationPolling(Ljava/lang/String;Lcom/laborbook/keep/model/subscription/VerifySubscriptionRequest;)V
    .locals 7

    .line 1024
    iget-boolean v0, p0, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;->isVerificationInProgress:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 1025
    iput-boolean v0, p0, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;->isVerificationInProgress:Z

    const/4 v0, 0x0

    .line 1026
    iput v0, p0, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;->verificationAttempts:I

    .line 1027
    move-object v0, p0

    check-cast v0, Landroidx/lifecycle/LifecycleOwner;

    invoke-static {v0}, Landroidx/lifecycle/LifecycleOwnerKt;->getLifecycleScope(Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LifecycleCoroutineScope;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lkotlinx/coroutines/CoroutineScope;

    new-instance v0, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment$startVerificationPolling$1;

    const/4 v2, 0x0

    invoke-direct {v0, p0, p1, p2, v2}, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment$startVerificationPolling$1;-><init>(Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;Ljava/lang/String;Lcom/laborbook/keep/model/subscription/VerifySubscriptionRequest;Lkotlin/coroutines/Continuation;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method private final stopOfferCountdown()V
    .locals 2

    .line 778
    iget-object v0, p0, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;->_binding:Lcom/laborbook/keep/databinding/DialogPremiumOfferBinding;

    if-nez v0, :cond_0

    return-void

    .line 779
    :cond_0
    iget-object v1, p0, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;->offerTimerRunnable:Ljava/lang/Runnable;

    if-eqz v1, :cond_1

    iget-object v0, v0, Lcom/laborbook/keep/databinding/DialogPremiumOfferBinding;->llOfferTimer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_1
    const/4 v0, 0x0

    .line 780
    iput-object v0, p0, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;->offerTimerRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method private final triggerImpressionEvent(Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1148
    :try_start_0
    move-object v0, p0

    check-cast v0, Landroidx/lifecycle/LifecycleOwner;

    invoke-static {v0}, Landroidx/lifecycle/LifecycleOwnerKt;->getLifecycleScope(Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LifecycleCoroutineScope;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lkotlinx/coroutines/CoroutineScope;

    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lkotlin/coroutines/CoroutineContext;

    new-instance v0, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment$triggerImpressionEvent$1;

    const/4 v3, 0x0

    invoke-direct {v0, p0, p1, p2, v3}, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment$triggerImpressionEvent$1;-><init>(Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;Ljava/lang/String;Ljava/util/HashMap;Lkotlin/coroutines/Continuation;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method static synthetic triggerImpressionEvent$default(Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;Ljava/lang/String;Ljava/util/HashMap;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 1147
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;->triggerImpressionEvent(Ljava/lang/String;Ljava/util/HashMap;)V

    return-void
.end method

.method private final updatePlanSelectionVisuals(Lcom/laborbook/keep/databinding/ItemSubscriptionPlanBinding;Z)V
    .locals 2

    .line 705
    iget-object v0, p1, Lcom/laborbook/keep/databinding/ItemSubscriptionPlanBinding;->ivSelectionCheck:Landroid/widget/ImageView;

    if-eqz p2, :cond_0

    .line 706
    sget v1, Lcom/laborbook/keep/R$drawable;->ic_radio_selected:I

    goto :goto_0

    :cond_0
    sget v1, Lcom/laborbook/keep/R$drawable;->ic_radio_unselected:I

    .line 705
    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 708
    iget-object p1, p1, Lcom/laborbook/keep/databinding/ItemSubscriptionPlanBinding;->llPlanRoot:Landroidx/constraintlayout/widget/ConstraintLayout;

    if-eqz p2, :cond_1

    .line 709
    sget p2, Lcom/laborbook/keep/R$drawable;->plan_selected_border:I

    goto :goto_1

    :cond_1
    sget p2, Lcom/laborbook/keep/R$drawable;->plan_unselected_border:I

    .line 708
    :goto_1
    invoke-virtual {p1, p2}, Landroidx/constraintlayout/widget/ConstraintLayout;->setBackgroundResource(I)V

    return-void
.end method

.method private final updatePriceDisplay(Lcom/laborbook/keep/model/subscription/SubscriptionPlan;)V
    .locals 7

    .line 641
    invoke-direct {p0}, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;->getBinding()Lcom/laborbook/keep/databinding/DialogPremiumOfferBinding;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 642
    invoke-virtual {p1}, Lcom/laborbook/keep/model/subscription/SubscriptionPlan;->getHasDiscount()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/laborbook/keep/model/subscription/SubscriptionPlan;->getDiscountedPrice()I

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/laborbook/keep/model/subscription/SubscriptionPlan;->getPrice()I

    .line 644
    :goto_0
    invoke-virtual {p1}, Lcom/laborbook/keep/model/subscription/SubscriptionPlan;->getHasTrial()Z

    move-result v1

    const/16 v2, 0x8

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;->isTrialExpired:Z

    if-nez v1, :cond_1

    .line 646
    iget-object v1, v0, Lcom/laborbook/keep/databinding/DialogPremiumOfferBinding;->tvFreeTrialLabel:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 647
    iget-object v1, v0, Lcom/laborbook/keep/databinding/DialogPremiumOfferBinding;->tvFreeTrialLabel:Landroid/widget/TextView;

    sget v4, Lcom/laborbook/keep/R$string;->start_free_trial_label:I

    invoke-virtual {p0, v4}, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 648
    iget-object v1, v0, Lcom/laborbook/keep/databinding/DialogPremiumOfferBinding;->tvSelectedPrice:Landroid/widget/TextView;

    const-string v4, "\u20b95"

    check-cast v4, Ljava/lang/CharSequence;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 649
    iget-object v1, v0, Lcom/laborbook/keep/databinding/DialogPremiumOfferBinding;->tvOriginalPrice:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 650
    iget-object v1, v0, Lcom/laborbook/keep/databinding/DialogPremiumOfferBinding;->tvOriginalPrice:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "\u20b9"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v5, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    sget-object v5, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1}, Lcom/laborbook/keep/model/subscription/SubscriptionPlan;->getPrice()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const/4 v6, 0x1

    invoke-static {p1, v6}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    const-string v6, "%d"

    invoke-static {v5, v6, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v5, "format(...)"

    invoke-static {p1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 651
    iget-object p1, v0, Lcom/laborbook/keep/databinding/DialogPremiumOfferBinding;->tvOriginalPrice:Landroid/widget/TextView;

    iget-object v1, v0, Lcom/laborbook/keep/databinding/DialogPremiumOfferBinding;->tvOriginalPrice:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getPaintFlags()I

    move-result v1

    or-int/lit8 v1, v1, 0x10

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setPaintFlags(I)V

    .line 652
    iget-object p1, v0, Lcom/laborbook/keep/databinding/DialogPremiumOfferBinding;->tvTrialRefundNote:Landroid/widget/TextView;

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 653
    iget-object p1, v0, Lcom/laborbook/keep/databinding/DialogPremiumOfferBinding;->tvPerInterval:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 656
    :cond_1
    iget-object p1, v0, Lcom/laborbook/keep/databinding/DialogPremiumOfferBinding;->tvFreeTrialLabel:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 657
    iget-object p1, v0, Lcom/laborbook/keep/databinding/DialogPremiumOfferBinding;->tvSelectedPrice:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 658
    iget-object p1, v0, Lcom/laborbook/keep/databinding/DialogPremiumOfferBinding;->tvOriginalPrice:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 659
    iget-object p1, v0, Lcom/laborbook/keep/databinding/DialogPremiumOfferBinding;->tvTrialRefundNote:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 660
    iget-object p1, v0, Lcom/laborbook/keep/databinding/DialogPremiumOfferBinding;->tvPerInterval:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 661
    iget-object p1, v0, Lcom/laborbook/keep/databinding/DialogPremiumOfferBinding;->llPriceDisplay:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_2
    :goto_1
    return-void
.end method

.method private final updateTrialSections(Ljava/util/List;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/laborbook/keep/model/subscription/SubscriptionPlan;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 554
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/laborbook/keep/model/subscription/SubscriptionPlan;

    .line 555
    invoke-direct {p0}, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;->getBinding()Lcom/laborbook/keep/databinding/DialogPremiumOfferBinding;

    move-result-object v2

    if-eqz v2, :cond_a

    .line 556
    invoke-virtual {v1}, Lcom/laborbook/keep/model/subscription/SubscriptionPlan;->getHasTrial()Z

    move-result v3

    const/16 v4, 0x1e

    const-string v5, "format(...)"

    const-string v6, "%.0f"

    const/16 v7, 0x8

    const/4 v8, 0x1

    if-eqz v3, :cond_6

    iget-boolean v3, p0, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;->isTrialExpired:Z

    if-nez v3, :cond_6

    .line 558
    iget-object v3, v2, Lcom/laborbook/keep/databinding/DialogPremiumOfferBinding;->llHowTrialWorks:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 559
    iget-object v3, v2, Lcom/laborbook/keep/databinding/DialogPremiumOfferBinding;->llNoTrialSection:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 560
    iget-object v3, v2, Lcom/laborbook/keep/databinding/DialogPremiumOfferBinding;->tvTrialRefundNote:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 561
    iget-object v3, v2, Lcom/laborbook/keep/databinding/DialogPremiumOfferBinding;->tvTrialRefundNote:Landroid/widget/TextView;

    sget v7, Lcom/laborbook/keep/R$string;->instant_refund_note:I

    invoke-virtual {p0, v7}, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v7

    check-cast v7, Ljava/lang/CharSequence;

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 564
    iget-object v3, v2, Lcom/laborbook/keep/databinding/DialogPremiumOfferBinding;->tvStep1Title:Landroid/widget/TextView;

    sget v7, Lcom/laborbook/keep/R$string;->step_free_trial_title:I

    invoke-virtual {v1}, Lcom/laborbook/keep/model/subscription/SubscriptionPlan;->getTrialDays()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    filled-new-array {v9}, [Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {p0, v7, v9}, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    check-cast v7, Ljava/lang/CharSequence;

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 566
    iget-object v3, v2, Lcom/laborbook/keep/databinding/DialogPremiumOfferBinding;->tvStep2Subtitle:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/laborbook/keep/model/subscription/SubscriptionPlan;->getTrialDays()I

    move-result v7

    if-ne v7, v8, :cond_0

    .line 567
    sget v7, Lcom/laborbook/keep/R$string;->step_unlimited_access_subtitle:I

    invoke-virtual {v1}, Lcom/laborbook/keep/model/subscription/SubscriptionPlan;->getTrialDays()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v7, v1}, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 569
    :cond_0
    sget v7, Lcom/laborbook/keep/R$string;->step_unlimited_access_subtitle_plural:I

    invoke-virtual {v1}, Lcom/laborbook/keep/model/subscription/SubscriptionPlan;->getTrialDays()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v7, v1}, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    check-cast v1, Ljava/lang/CharSequence;

    .line 566
    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 571
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/laborbook/keep/model/subscription/SubscriptionPlan;

    .line 572
    invoke-virtual {v1}, Lcom/laborbook/keep/model/subscription/SubscriptionPlan;->getHasDiscount()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v1}, Lcom/laborbook/keep/model/subscription/SubscriptionPlan;->getDiscountedPrice()I

    move-result v3

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Lcom/laborbook/keep/model/subscription/SubscriptionPlan;->getPrice()I

    move-result v3

    .line 573
    :goto_1
    invoke-virtual {v1}, Lcom/laborbook/keep/model/subscription/SubscriptionPlan;->getInterval()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;->formatIntervalForTrial(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 574
    sget-object v7, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    sget-object v7, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    int-to-double v9, v3

    int-to-double v11, v4

    div-double/2addr v9, v11

    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4, v8}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v4

    invoke-static {v7, v6, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 575
    iget-object v5, v2, Lcom/laborbook/keep/databinding/DialogPremiumOfferBinding;->tvStep3Title:Landroid/widget/TextView;

    sget v6, Lcom/laborbook/keep/R$string;->pro_step1_title:I

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p0, v6, v4}, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 576
    iget-object v4, v2, Lcom/laborbook/keep/databinding/DialogPremiumOfferBinding;->tvStep3Subtitle:Landroid/widget/TextView;

    sget v5, Lcom/laborbook/keep/R$string;->pro_step1_subtitle:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v3, v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v5, v1}, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 577
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, v8, :cond_5

    .line 578
    iget-object v1, v2, Lcom/laborbook/keep/databinding/DialogPremiumOfferBinding;->llTrialPlans:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 579
    iget-object v1, v2, Lcom/laborbook/keep/databinding/DialogPremiumOfferBinding;->llTrialPlans:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 580
    invoke-virtual {v2}, Lcom/laborbook/keep/databinding/DialogPremiumOfferBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/constraintlayout/widget/ConstraintLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 582
    check-cast p1, Ljava/lang/Iterable;

    .line 1219
    new-instance v3, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment$updateTrialSections$lambda$27$$inlined$sortedByDescending$1;

    invoke-direct {v3, p0}, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment$updateTrialSections$lambda$27$$inlined$sortedByDescending$1;-><init>(Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;)V

    check-cast v3, Ljava/util/Comparator;

    invoke-static {p1, v3}, Lkotlin/collections/CollectionsKt;->sortedWith(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object p1

    .line 589
    move-object v3, p1

    check-cast v3, Ljava/lang/Iterable;

    .line 1221
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v4, v0

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v6, v4, 0x1

    if-gez v4, :cond_2

    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwIndexOverflow()V

    :cond_2
    check-cast v5, Lcom/laborbook/keep/model/subscription/SubscriptionPlan;

    .line 590
    iget-object v7, v2, Lcom/laborbook/keep/databinding/DialogPremiumOfferBinding;->llTrialPlans:Landroid/widget/LinearLayout;

    check-cast v7, Landroid/view/ViewGroup;

    invoke-static {v1, v7, v0}, Lcom/laborbook/keep/databinding/ItemSubscriptionPlanBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/laborbook/keep/databinding/ItemSubscriptionPlanBinding;

    move-result-object v7

    const-string v9, "inflate(...)"

    invoke-static {v7, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez v4, :cond_3

    move v9, v8

    goto :goto_3

    :cond_3
    move v9, v0

    .line 591
    :goto_3
    invoke-direct {p0, v7, v5, v9}, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;->bindPlanItem(Lcom/laborbook/keep/databinding/ItemSubscriptionPlanBinding;Lcom/laborbook/keep/model/subscription/SubscriptionPlan;Z)V

    .line 592
    invoke-virtual {v7}, Lcom/laborbook/keep/databinding/ItemSubscriptionPlanBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v9

    new-instance v10, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment$$ExternalSyntheticLambda5;

    invoke-direct {v10, p0, v5, v2, v4}, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment$$ExternalSyntheticLambda5;-><init>(Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;Lcom/laborbook/keep/model/subscription/SubscriptionPlan;Lcom/laborbook/keep/databinding/DialogPremiumOfferBinding;I)V

    invoke-virtual {v9, v10}, Landroidx/constraintlayout/widget/ConstraintLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 606
    iget-object v4, v2, Lcom/laborbook/keep/databinding/DialogPremiumOfferBinding;->llTrialPlans:Landroid/widget/LinearLayout;

    invoke-virtual {v7}, Lcom/laborbook/keep/databinding/ItemSubscriptionPlanBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    move v4, v6

    goto :goto_2

    .line 609
    :cond_4
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/laborbook/keep/model/subscription/SubscriptionPlan;

    iput-object v1, p0, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;->selectedPlan:Lcom/laborbook/keep/model/subscription/SubscriptionPlan;

    .line 610
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/laborbook/keep/model/subscription/SubscriptionPlan;

    invoke-direct {p0, p1}, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;->updatePriceDisplay(Lcom/laborbook/keep/model/subscription/SubscriptionPlan;)V

    .line 613
    :cond_5
    iget-object p1, v2, Lcom/laborbook/keep/databinding/DialogPremiumOfferBinding;->btnStartTrial:Lcom/boilerplate/uikit/views/buttons/RoundedPrimaryButton;

    sget v0, Lcom/laborbook/keep/R$string;->start_free:I

    invoke-virtual {p0, v0}, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Lcom/boilerplate/uikit/views/buttons/RoundedPrimaryButton;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_8

    .line 616
    :cond_6
    iget-object v1, v2, Lcom/laborbook/keep/databinding/DialogPremiumOfferBinding;->llHowTrialWorks:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 617
    iget-object v1, v2, Lcom/laborbook/keep/databinding/DialogPremiumOfferBinding;->tvTrialRefundNote:Landroid/widget/TextView;

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 618
    iget-object v1, v2, Lcom/laborbook/keep/databinding/DialogPremiumOfferBinding;->llNoTrialSection:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 621
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/laborbook/keep/model/subscription/SubscriptionPlan;

    .line 622
    invoke-virtual {p1}, Lcom/laborbook/keep/model/subscription/SubscriptionPlan;->getHasDiscount()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {p1}, Lcom/laborbook/keep/model/subscription/SubscriptionPlan;->getDiscountedPrice()I

    move-result v0

    goto :goto_4

    :cond_7
    invoke-virtual {p1}, Lcom/laborbook/keep/model/subscription/SubscriptionPlan;->getPrice()I

    move-result v0

    .line 623
    :goto_4
    invoke-virtual {p1}, Lcom/laborbook/keep/model/subscription/SubscriptionPlan;->getInterval()Ljava/lang/String;

    move-result-object v1

    sget-object v3, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v1, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "toLowerCase(...)"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    goto :goto_6

    :sswitch_0
    const-string v3, "monthly"

    :goto_5
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    goto :goto_6

    :sswitch_1
    const-string v3, "quarter"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    goto :goto_6

    :sswitch_2
    const-string v3, "month"

    goto :goto_5

    :sswitch_3
    const-string v3, "year"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    goto :goto_6

    :sswitch_4
    const-string v3, "yearly"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    goto :goto_6

    :cond_8
    const/16 v1, 0x34

    goto :goto_7

    :sswitch_5
    const-string v3, "quarterly"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    goto :goto_6

    :cond_9
    const/16 v1, 0xd

    goto :goto_7

    :goto_6
    const/4 v1, 0x4

    .line 629
    :goto_7
    sget-object v3, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    int-to-double v9, v0

    int-to-double v11, v1

    div-double v11, v9, v11

    invoke-static {v11, v12}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1, v8}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    invoke-static {v3, v6, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 630
    invoke-virtual {p1}, Lcom/laborbook/keep/model/subscription/SubscriptionPlan;->getInterval()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;->formatIntervalForTrial(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 631
    sget-object v1, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    int-to-double v3, v4

    div-double/2addr v9, v3

    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3, v8}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v3

    invoke-static {v1, v6, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 632
    iget-object v3, v2, Lcom/laborbook/keep/databinding/DialogPremiumOfferBinding;->tvProStep1Title:Landroid/widget/TextView;

    sget v4, Lcom/laborbook/keep/R$string;->pro_step1_title:I

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v4, v1}, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 633
    iget-object v1, v2, Lcom/laborbook/keep/databinding/DialogPremiumOfferBinding;->tvProStep1Subtitle:Landroid/widget/TextView;

    sget v3, Lcom/laborbook/keep/R$string;->pro_step1_subtitle:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0, p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, v3, p1}, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 635
    iget-object p1, v2, Lcom/laborbook/keep/databinding/DialogPremiumOfferBinding;->btnStartTrial:Lcom/boilerplate/uikit/views/buttons/RoundedPrimaryButton;

    sget v0, Lcom/laborbook/keep/R$string;->start_pro:I

    invoke-virtual {p0, v0}, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Lcom/boilerplate/uikit/views/buttons/RoundedPrimaryButton;->setText(Ljava/lang/CharSequence;)V

    :cond_a
    :goto_8
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x3f8a4ac7 -> :sswitch_5
        -0x2bc88576 -> :sswitch_4
        0x38883d -> :sswitch_3
        0x6342280 -> :sswitch_2
        0x26d3a2ac -> :sswitch_1
        0x49b5900d -> :sswitch_0
    .end sparse-switch
.end method

.method private static final updateTrialSections$lambda$27$lambda$26$lambda$25(Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;Lcom/laborbook/keep/model/subscription/SubscriptionPlan;Lcom/laborbook/keep/databinding/DialogPremiumOfferBinding;ILandroid/view/View;)V
    .locals 5

    const-string p4, "this$0"

    invoke-static {p0, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p4, "$trialPlan"

    invoke-static {p1, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p4, "$this_apply"

    invoke-static {p2, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 593
    iput-object p1, p0, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;->selectedPlan:Lcom/laborbook/keep/model/subscription/SubscriptionPlan;

    .line 594
    invoke-direct {p0, p1}, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;->updatePriceDisplay(Lcom/laborbook/keep/model/subscription/SubscriptionPlan;)V

    .line 595
    iget-object p4, p2, Lcom/laborbook/keep/databinding/DialogPremiumOfferBinding;->llTrialPlans:Landroid/widget/LinearLayout;

    invoke-virtual {p4}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result p4

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/4 v2, 0x1

    if-ge v1, p4, :cond_1

    .line 596
    iget-object v3, p2, Lcom/laborbook/keep/databinding/DialogPremiumOfferBinding;->llTrialPlans:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 597
    invoke-static {v3}, Lcom/laborbook/keep/databinding/ItemSubscriptionPlanBinding;->bind(Landroid/view/View;)Lcom/laborbook/keep/databinding/ItemSubscriptionPlanBinding;

    move-result-object v3

    const-string v4, "bind(...)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    if-ne v1, p3, :cond_0

    goto :goto_1

    :cond_0
    move v2, v0

    .line 598
    :goto_1
    invoke-direct {p0, v3, v2}, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;->updatePlanSelectionVisuals(Lcom/laborbook/keep/databinding/ItemSubscriptionPlanBinding;Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p2, 0x3

    .line 601
    new-array p2, p2, [Lkotlin/Pair;

    new-instance p3, Lkotlin/Pair;

    const-string p4, "plan_id"

    invoke-virtual {p1}, Lcom/laborbook/keep/model/subscription/SubscriptionPlan;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p3, p4, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object p3, p2, v0

    .line 602
    new-instance p3, Lkotlin/Pair;

    const-string p4, "plan_name"

    invoke-virtual {p1}, Lcom/laborbook/keep/model/subscription/SubscriptionPlan;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p3, p4, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object p3, p2, v2

    .line 603
    new-instance p3, Lkotlin/Pair;

    invoke-virtual {p1}, Lcom/laborbook/keep/model/subscription/SubscriptionPlan;->getPrice()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string p4, "plan_price"

    invoke-direct {p3, p4, p1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 p1, 0x2

    aput-object p3, p2, p1

    .line 600
    invoke-static {p2}, Lkotlin/collections/MapsKt;->hashMapOf([Lkotlin/Pair;)Ljava/util/HashMap;

    move-result-object p1

    const-string p2, "subscription_plan_selected"

    invoke-direct {p0, p2, p1}, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;->recordClickEvent(Ljava/lang/String;Ljava/util/HashMap;)V

    return-void
.end method


# virtual methods
.method public final onActivityResultForRazorpay(IILandroid/content/Intent;)V
    .locals 1

    .line 1156
    iget-object v0, p0, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;->razorpayCustom:Lcom/razorpay/Razorpay;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2, p3}, Lcom/razorpay/Razorpay;->onActivityResult(IILandroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 108
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 109
    sget p1, Lcom/laborbook/keep/R$style;->FullScreenDialogStyle:I

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;->setStyle(II)V

    .line 110
    invoke-virtual {p0}, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v1, "is_trial_expired"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    goto :goto_0

    :cond_0
    move p1, v0

    :goto_0
    iput-boolean p1, p0, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;->isTrialExpired:Z

    .line 111
    invoke-virtual {p0}, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_1

    const-string v1, "is_hard_paywall"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    :cond_1
    iput-boolean v0, p0, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;->isHardPaywall:Z

    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 4

    .line 176
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object p1

    const-string v0, "onCreateDialog(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 177
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, -0x1

    .line 178
    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setLayout(II)V

    const/16 v1, 0x400

    .line 182
    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    const/16 v1, 0x200

    .line 183
    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 184
    invoke-virtual {p0}, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/laborbook/keep/R$color;->background:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 186
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x2000

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 189
    :cond_0
    new-instance v0, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment$$ExternalSyntheticLambda3;-><init>(Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;)V

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    return-object p1
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    const-string p3, "inflater"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p3, 0x0

    .line 119
    invoke-static {p1, p2, p3}, Lcom/laborbook/keep/databinding/DialogPremiumOfferBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/laborbook/keep/databinding/DialogPremiumOfferBinding;

    move-result-object p1

    iput-object p1, p0, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;->_binding:Lcom/laborbook/keep/databinding/DialogPremiumOfferBinding;

    .line 120
    invoke-direct {p0}, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;->getBinding()Lcom/laborbook/keep/databinding/DialogPremiumOfferBinding;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/laborbook/keep/databinding/DialogPremiumOfferBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    check-cast p1, Landroid/view/View;

    return-object p1
.end method

.method public onDestroyView()V
    .locals 3

    .line 1160
    invoke-super {p0}, Landroidx/fragment/app/DialogFragment;->onDestroyView()V

    .line 1161
    invoke-direct {p0}, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;->getBinding()Lcom/laborbook/keep/databinding/DialogPremiumOfferBinding;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/laborbook/keep/databinding/DialogPremiumOfferBinding;->videoSubscriptionExplainer:Landroid/widget/VideoView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/VideoView;->stopPlayback()V

    .line 1162
    :cond_0
    invoke-direct {p0}, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;->stopOfferCountdown()V

    const/4 v0, 0x0

    .line 1163
    iput-object v0, p0, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;->offerTimerEndAtElapsedMs:Ljava/lang/Long;

    .line 1164
    iget-object v1, p0, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;->socialProofJob:Lkotlinx/coroutines/Job;

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    invoke-static {v1, v0, v2, v0}, Lkotlinx/coroutines/Job$DefaultImpls;->cancel$default(Lkotlinx/coroutines/Job;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 1165
    :cond_1
    iput-object v0, p0, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;->socialProofJob:Lkotlinx/coroutines/Job;

    .line 1166
    iget-object v1, p0, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;->testimonialJob:Lkotlinx/coroutines/Job;

    if-eqz v1, :cond_2

    invoke-static {v1, v0, v2, v0}, Lkotlinx/coroutines/Job$DefaultImpls;->cancel$default(Lkotlinx/coroutines/Job;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 1167
    :cond_2
    iput-object v0, p0, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;->testimonialJob:Lkotlinx/coroutines/Job;

    const/4 v1, 0x0

    .line 1168
    iput-boolean v1, p0, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;->isVerificationInProgress:Z

    .line 1169
    iput-object v0, p0, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;->razorpayCustom:Lcom/razorpay/Razorpay;

    .line 1170
    iput-object v0, p0, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;->_binding:Lcom/laborbook/keep/databinding/DialogPremiumOfferBinding;

    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    const-string v0, "dialog"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 171
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    .line 172
    invoke-virtual {p0}, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    instance-of v0, p1, Lcom/laborbook/keep/screen/BookKeepActivity;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/laborbook/keep/screen/BookKeepActivity;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/laborbook/keep/screen/BookKeepActivity;->onPaywallDismissed()V

    :cond_1
    return-void
.end method

.method public onPause()V
    .locals 3

    .line 165
    invoke-super {p0}, Landroidx/fragment/app/DialogFragment;->onPause()V

    .line 166
    iget-object v0, p0, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;->socialProofJob:Lkotlinx/coroutines/Job;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, v2, v1, v2}, Lkotlinx/coroutines/Job$DefaultImpls;->cancel$default(Lkotlinx/coroutines/Job;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 167
    :cond_0
    invoke-direct {p0}, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;->stopOfferCountdown()V

    return-void
.end method

.method public onPaymentError(ILjava/lang/String;Lcom/razorpay/PaymentData;)V
    .locals 15

    move-object v0, p0

    move-object/from16 v1, p2

    const-string v2, "error_message"

    const-string v3, "error_code"

    const-string v4, "getString(...)"

    const-string v5, "errorMessage"

    invoke-static {v1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 966
    invoke-direct {p0}, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;->hidePaymentWebView()V

    .line 968
    :try_start_0
    move-object v5, v1

    check-cast v5, Ljava/lang/CharSequence;

    const-string v6, "cancelled"

    check-cast v6, Ljava/lang/CharSequence;

    const/4 v7, 0x1

    invoke-static {v5, v6, v7}, Lkotlin/text/StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v5

    const/4 v6, 0x0

    if-nez v5, :cond_1

    move-object v5, v1

    check-cast v5, Ljava/lang/CharSequence;

    const-string v8, "back pressed"

    check-cast v8, Ljava/lang/CharSequence;

    invoke-static {v5, v8, v7}, Lkotlin/text/StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v5

    if-nez v5, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    move v5, v6

    goto :goto_1

    :cond_1
    :goto_0
    move v5, v7

    .line 969
    :goto_1
    const-string v8, "payment_error"

    const/4 v9, 0x4

    new-array v9, v9, [Lkotlin/Pair;

    new-instance v10, Lkotlin/Pair;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-direct {v10, v3, v11}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v10, v9, v6

    new-instance v10, Lkotlin/Pair;

    const/16 v11, 0x64

    invoke-static {v1, v11}, Lkotlin/text/StringsKt;->take(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v2, v11}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v10, v9, v7

    new-instance v10, Lkotlin/Pair;

    const-string v11, "is_cancellation"

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    invoke-direct {v10, v11, v12}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v11, 0x2

    aput-object v10, v9, v11

    new-instance v10, Lkotlin/Pair;

    const-string v12, "subscription_id"

    iget-object v13, v0, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;->currentSubscriptionId:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v14, ""

    if-nez v13, :cond_2

    move-object v13, v14

    :cond_2
    :try_start_1
    invoke-direct {v10, v12, v13}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v12, 0x3

    aput-object v10, v9, v12

    invoke-static {v9}, Lkotlin/collections/MapsKt;->hashMapOf([Lkotlin/Pair;)Ljava/util/HashMap;

    move-result-object v9

    invoke-direct {p0, v8, v9}, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;->recordClickEvent(Ljava/lang/String;Ljava/util/HashMap;)V

    if-eqz v5, :cond_3

    .line 970
    const-string v8, "payment_cancelled"

    goto :goto_2

    :cond_3
    const-string v8, "payment_failed"

    :goto_2
    new-array v9, v11, [Lkotlin/Pair;

    new-instance v10, Lkotlin/Pair;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-direct {v10, v3, v11}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v10, v9, v6

    new-instance v3, Lkotlin/Pair;

    invoke-direct {v3, v2, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v3, v9, v7

    invoke-static {v9}, Lkotlin/collections/MapsKt;->hashMapOf([Lkotlin/Pair;)Ljava/util/HashMap;

    move-result-object v1

    invoke-direct {p0, v8, v1}, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;->recordClickEvent(Ljava/lang/String;Ljava/util/HashMap;)V

    if-eqz v5, :cond_4

    .line 974
    invoke-direct {p0, v6}, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;->showSpinnerLoading(Z)V

    .line 975
    iput-boolean v6, v0, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;->paymentFlowInProgress:Z

    .line 976
    sget v1, Lcom/laborbook/keep/R$string;->payment_failed_try_again:I

    invoke-virtual {p0, v1}, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v1}, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;->showPaymentFailedBottomSheet(Ljava/lang/String;)V

    goto/16 :goto_5

    .line 979
    :cond_4
    sget v1, Lcom/laborbook/keep/R$string;->checking_payment_status:I

    invoke-virtual {p0, v1}, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v1}, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;->showVerificationScreen(Ljava/lang/String;)V

    if-eqz p3, :cond_5

    .line 980
    invoke-virtual/range {p3 .. p3}, Lcom/razorpay/PaymentData;->getData()Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_5

    const-string v2, "razorpay_subscription_id"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_6

    :cond_5
    move-object v1, v14

    :cond_6
    if-eqz p3, :cond_7

    .line 981
    invoke-virtual/range {p3 .. p3}, Lcom/razorpay/PaymentData;->getData()Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_7

    const-string v3, "razorpay_payment_id"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_8

    :cond_7
    move-object v2, v14

    :cond_8
    if-eqz p3, :cond_9

    .line 982
    invoke-virtual/range {p3 .. p3}, Lcom/razorpay/PaymentData;->getData()Lorg/json/JSONObject;

    move-result-object v3

    if-eqz v3, :cond_9

    const-string v5, "razorpay_signature"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_b

    :cond_9
    if-eqz p3, :cond_a

    invoke-virtual/range {p3 .. p3}, Lcom/razorpay/PaymentData;->getSignature()Ljava/lang/String;

    move-result-object v3

    goto :goto_3

    :cond_a
    const/4 v3, 0x0

    :goto_3
    if-nez v3, :cond_b

    goto :goto_4

    :cond_b
    move-object v14, v3

    .line 983
    :goto_4
    iget-object v3, v0, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;->currentSubscriptionId:Ljava/lang/String;

    if-eqz v3, :cond_c

    move-object v3, v1

    check-cast v3, Ljava/lang/CharSequence;

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-lez v3, :cond_c

    move-object v3, v2

    check-cast v3, Ljava/lang/CharSequence;

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-lez v3, :cond_c

    .line 984
    iget-object v3, v0, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;->currentSubscriptionId:Ljava/lang/String;

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    new-instance v5, Lcom/laborbook/keep/model/subscription/VerifySubscriptionRequest;

    invoke-direct {v5, v1, v2, v14}, Lcom/laborbook/keep/model/subscription/VerifySubscriptionRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v3, v5}, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;->startVerificationPolling(Ljava/lang/String;Lcom/laborbook/keep/model/subscription/VerifySubscriptionRequest;)V

    goto :goto_5

    .line 985
    :cond_c
    iget-object v1, v0, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;->currentSubscriptionId:Ljava/lang/String;

    if-eqz v1, :cond_d

    .line 986
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {p0, v1}, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;->startStatusPolling(Ljava/lang/String;)V

    goto :goto_5

    .line 988
    :cond_d
    invoke-direct {p0}, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;->hideVerificationScreen()V

    .line 989
    sget v1, Lcom/laborbook/keep/R$string;->payment_failed_try_again:I

    invoke-virtual {p0, v1}, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v1}, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;->showPaymentFailedBottomSheet(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_5

    .line 993
    :catch_0
    :try_start_2
    invoke-direct {p0}, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;->hideVerificationScreen()V

    sget v1, Lcom/laborbook/keep/R$string;->payment_failed_try_again:I

    invoke-virtual {p0, v1}, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v1}, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;->showPaymentFailedBottomSheet(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    :goto_5
    return-void
.end method

.method public onPaymentSuccess(Ljava/lang/String;Lcom/razorpay/PaymentData;)V
    .locals 10

    const-string v0, "razorpayPaymentId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 948
    invoke-direct {p0}, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;->hidePaymentWebView()V

    const/4 v0, 0x2

    .line 949
    new-array v0, v0, [Lkotlin/Pair;

    new-instance v1, Lkotlin/Pair;

    const-string v2, "payment_id"

    invoke-direct {v1, v2, p1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/Pair;

    iget-object v2, p0, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;->currentSubscriptionId:Ljava/lang/String;

    const-string v3, ""

    if-nez v2, :cond_0

    move-object v2, v3

    :cond_0
    const-string v4, "subscription_id"

    invoke-direct {v1, v4, v2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Lkotlin/collections/MapsKt;->hashMapOf([Lkotlin/Pair;)Ljava/util/HashMap;

    move-result-object v0

    const-string v1, "payment_success"

    invoke-direct {p0, v1, v0}, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;->recordClickEvent(Ljava/lang/String;Ljava/util/HashMap;)V

    .line 950
    iget-object v0, p0, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;->selectedPlan:Lcom/laborbook/keep/model/subscription/SubscriptionPlan;

    if-eqz v0, :cond_2

    .line 951
    invoke-virtual {v0}, Lcom/laborbook/keep/model/subscription/SubscriptionPlan;->getHasTrial()Z

    move-result v1

    if-eqz v1, :cond_1

    const-wide/16 v1, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lcom/laborbook/keep/model/subscription/SubscriptionPlan;->getDiscountedPrice()I

    move-result v1

    int-to-double v1, v1

    :goto_0
    move-wide v6, v1

    .line 952
    sget-object v4, Lcom/laborbook/base/analytics/FacebookPaymentEvents;->INSTANCE:Lcom/laborbook/base/analytics/FacebookPaymentEvents;

    invoke-virtual {p0}, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;->requireContext()Landroid/content/Context;

    move-result-object v5

    const-string v1, "requireContext(...)"

    invoke-static {v5, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/laborbook/keep/model/subscription/SubscriptionPlan;->getCurrency()Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;->installSource:Ljava/lang/String;

    invoke-virtual/range {v4 .. v9}, Lcom/laborbook/base/analytics/FacebookPaymentEvents;->logPurchase(Landroid/content/Context;DLjava/lang/String;Ljava/lang/String;)V

    .line 954
    :cond_2
    sget v0, Lcom/laborbook/keep/R$string;->verifying_payment:I

    invoke-virtual {p0, v0}, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "getString(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;->showVerificationScreen(Ljava/lang/String;)V

    if-eqz p2, :cond_3

    .line 955
    invoke-virtual {p2}, Lcom/razorpay/PaymentData;->getData()Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_3

    const-string v2, "razorpay_subscription_id"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_4

    :cond_3
    move-object v0, v3

    :cond_4
    if-eqz p2, :cond_6

    .line 956
    invoke-virtual {p2}, Lcom/razorpay/PaymentData;->getData()Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_6

    const-string v4, "razorpay_signature"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_5

    goto :goto_1

    :cond_5
    move-object v3, v2

    goto :goto_3

    :cond_6
    :goto_1
    if-eqz p2, :cond_7

    invoke-virtual {p2}, Lcom/razorpay/PaymentData;->getSignature()Ljava/lang/String;

    move-result-object p2

    goto :goto_2

    :cond_7
    const/4 p2, 0x0

    :goto_2
    if-nez p2, :cond_8

    goto :goto_3

    :cond_8
    move-object v3, p2

    .line 957
    :goto_3
    iget-object p2, p0, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;->currentSubscriptionId:Ljava/lang/String;

    if-eqz p2, :cond_9

    move-object p2, v0

    check-cast p2, Ljava/lang/CharSequence;

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result p2

    if-lez p2, :cond_9

    .line 958
    iget-object p2, p0, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;->currentSubscriptionId:Ljava/lang/String;

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    new-instance v1, Lcom/laborbook/keep/model/subscription/VerifySubscriptionRequest;

    invoke-direct {v1, v0, p1, v3}, Lcom/laborbook/keep/model/subscription/VerifySubscriptionRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p2, v1}, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;->startVerificationPolling(Ljava/lang/String;Lcom/laborbook/keep/model/subscription/VerifySubscriptionRequest;)V

    goto :goto_4

    .line 960
    :cond_9
    invoke-direct {p0}, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;->hideVerificationScreen()V

    .line 961
    sget p1, Lcom/laborbook/keep/R$string;->payment_failed_try_again:I

    invoke-virtual {p0, p1}, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;->showPaymentFailedBottomSheet(Ljava/lang/String;)V

    :goto_4
    return-void
.end method

.method public onResume()V
    .locals 2

    .line 152
    invoke-super {p0}, Landroidx/fragment/app/DialogFragment;->onResume()V

    .line 153
    iget-object v0, p0, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;->socialProofJob:Lkotlinx/coroutines/Job;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lkotlinx/coroutines/Job;->isActive()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 154
    :cond_0
    invoke-direct {p0}, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;->startSocialProofTicker()V

    .line 156
    :goto_0
    invoke-direct {p0}, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;->maybeStartOfferCountdown()V

    .line 158
    iget-boolean v0, p0, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;->paymentFlowInProgress:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;->isVerificationInProgress:Z

    if-nez v0, :cond_1

    const/4 v0, 0x0

    .line 159
    iput-boolean v0, p0, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;->paymentFlowInProgress:Z

    .line 160
    invoke-direct {p0, v0}, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;->showSpinnerLoading(Z)V

    :cond_1
    return-void
.end method

.method public onStart()V
    .locals 2

    .line 147
    invoke-super {p0}, Landroidx/fragment/app/DialogFragment;->onStart()V

    .line 148
    invoke-virtual {p0}, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    instance-of v1, v0, Lcom/laborbook/keep/screen/BookKeepActivity;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/laborbook/keep/screen/BookKeepActivity;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/laborbook/keep/screen/BookKeepActivity;->onPaywallShown()V

    :cond_1
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 8

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 124
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/DialogFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 126
    const-string p1, "premium_offer_dialog"

    const/4 p2, 0x0

    const/4 v0, 0x2

    invoke-static {p0, p1, p2, v0, p2}, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;->triggerImpressionEvent$default(Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;Ljava/lang/String;Ljava/util/HashMap;ILjava/lang/Object;)V

    .line 128
    invoke-virtual {p0}, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object p1

    const-string v1, "getViewLifecycleOwner(...)"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Landroidx/lifecycle/LifecycleOwnerKt;->getLifecycleScope(Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LifecycleCoroutineScope;

    move-result-object p1

    move-object v2, p1

    check-cast v2, Lkotlinx/coroutines/CoroutineScope;

    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Lkotlin/coroutines/CoroutineContext;

    new-instance p1, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment$onViewCreated$1;

    invoke-direct {p1, p0, p2}, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment$onViewCreated$1;-><init>(Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;Lkotlin/coroutines/Continuation;)V

    move-object v5, p1

    check-cast v5, Lkotlin/jvm/functions/Function2;

    const/4 v6, 0x2

    const/4 v7, 0x0

    const/4 v4, 0x0

    invoke-static/range {v2 .. v7}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 131
    sget-object p1, Lcom/laborbook/base/analytics/FacebookPaymentEvents;->INSTANCE:Lcom/laborbook/base/analytics/FacebookPaymentEvents;

    invoke-virtual {p0}, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;->requireContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "requireContext(...)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, v2, p2, v0, p2}, Lcom/laborbook/base/analytics/FacebookPaymentEvents;->logViewContent$default(Lcom/laborbook/base/analytics/FacebookPaymentEvents;Landroid/content/Context;Ljava/lang/String;ILjava/lang/Object;)V

    .line 133
    invoke-direct {p0}, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;->setupViews()V

    .line 134
    invoke-virtual {p0}, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object p1

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Landroidx/lifecycle/LifecycleOwnerKt;->getLifecycleScope(Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LifecycleCoroutineScope;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lkotlinx/coroutines/CoroutineScope;

    new-instance p1, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment$onViewCreated$2;

    invoke-direct {p1, p0, p2}, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment$onViewCreated$2;-><init>(Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;Lkotlin/coroutines/Continuation;)V

    move-object v3, p1

    check-cast v3, Lkotlin/jvm/functions/Function2;

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 137
    invoke-direct {p0}, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;->registerClickListeners()V

    .line 138
    invoke-direct {p0}, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;->observeViewModel()V

    .line 139
    invoke-direct {p0}, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;->startSocialProofTicker()V

    .line 140
    invoke-direct {p0}, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;->startTestimonialTicker()V

    const/4 p1, 0x1

    .line 142
    invoke-direct {p0, p1}, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;->showLoading(Z)V

    .line 143
    invoke-direct {p0}, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;->loadSubscriptionPlans()V

    return-void
.end method
