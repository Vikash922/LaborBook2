package com.rebuilt.app.keep.screen.premium;

import android.app.Dialog;
import android.content.ComponentCallbacks;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.media.MediaPlayer;
import android.net.Uri;
import android.os.Bundle;
import android.os.SystemClock;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewPropertyAnimator;
import android.view.Window;
import android.webkit.WebResourceRequest;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RatingBar;
import android.widget.TextView;
import android.widget.Toast;
import android.widget.VideoView;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.core.content.ContextCompat;
import androidx.core.graphics.Insets;
import androidx.core.view.OnApplyWindowInsetsListener;
import androidx.core.view.ViewCompat;
import androidx.core.view.WindowInsetsCompat;
import androidx.fragment.app.DialogFragment;
import androidx.fragment.app.FragmentActivity;
import androidx.lifecycle.LifecycleOwner;
import androidx.lifecycle.LifecycleOwnerKt;
import com.boilerplate.analytics.AnalyticsPlatforms;
import com.boilerplate.uikit.views.buttons.RoundedPrimaryButton;
import com.facebook.appevents.iap.InAppPurchaseConstants;
import com.google.ads.mediation.inmobi.InMobiNetworkValues;
import com.google.android.material.bottomsheet.BottomSheetDialog;
import com.google.android.material.timepicker.TimeModel;
import com.google.api.ClientProto;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.google.firebase.ktx.Firebase;
import com.google.firebase.remoteconfig.FirebaseRemoteConfig;
import com.google.firebase.remoteconfig.ktx.RemoteConfigKt;
import com.inmobi.commons.core.configs.AdConfig;
import com.itextpdf.barcodes.Barcode128;
import com.itextpdf.kernel.pdf.canvas.wmf.MetaDo;
import com.itextpdf.p017io.codec.TIFFConstants;
import com.rebuilt.app.base.C3577R;
import com.rebuilt.app.base.analytics.Analytics;
import com.rebuilt.app.base.analytics.ConstantEventNames;
import com.rebuilt.app.base.analytics.FacebookPaymentEvents;
import com.rebuilt.app.base.datastore.DataStoreManager;
import com.rebuilt.app.base.languagemanager.LanguageBottomSheetFragment;
import com.rebuilt.app.keep.BuildConfig;
import com.rebuilt.app.keep.C3656R;
import com.rebuilt.app.keep.databinding.DialogPremiumOfferBinding;
import com.rebuilt.app.keep.databinding.ItemSubscriptionPlanBinding;
import com.rebuilt.app.keep.model.subscription.CreateSubscriptionResponse;
import com.rebuilt.app.keep.model.subscription.SubscriptionPlan;
import com.rebuilt.app.keep.model.subscription.VerifySubscriptionRequest;
import com.rebuilt.app.keep.screen.BookKeepActivity;
import com.rebuilt.app.keep.screen.calendar.utils.Constants;
import com.rebuilt.app.keep.screen.premium.PaymentFailedBottomSheet;
import com.rebuilt.app.keep.screen.premium.PremiumOfferDialogFragment;
import com.rebuilt.app.keep.screen.premium.UpiSelectionBottomSheet;
import com.rebuilt.app.keep.screen.premium.viewmodel.SubscriptionViewModel;
import com.razorpay.PaymentData;
import com.razorpay.PaymentMethodsCallback;
import com.razorpay.PaymentResultWithDataListener;
import com.razorpay.Razorpay;
import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Comparator;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.concurrent.CancellationException;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.collections.MapsKt;
import kotlin.comparisons.ComparisonsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import kotlin.jvm.internal.Reflection;
import kotlin.jvm.internal.StringCompanionObject;
import kotlin.ranges.RangesKt;
import kotlin.text.StringsKt;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.DelayKt;
import kotlinx.coroutines.Dispatchers;
import kotlinx.coroutines.Job;
import kotlinx.coroutines.flow.FlowKt;
import org.json.JSONObject;
import org.koin.android.ext.android.ComponentCallbackExtKt;
import org.koin.androidx.viewmodel.ext.android.ViewModelStoreOwnerExtKt;
import org.koin.core.qualifier.Qualifier;
import timber.log.Timber;

/* JADX INFO: compiled from: PremiumOfferDialogFragment.kt */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(m2721d1 = {"\u0000ü\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010 \n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u000f\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\r\n\u0002\b\u0010\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u0000 ¥\u00012\u00020\u00012\u00020\u0002:\u0004¤\u0001¥\u0001B\u0007¢\u0006\u0004\b\u0003\u0010\u0004J\u0012\u0010@\u001a\u00020A2\b\u0010B\u001a\u0004\u0018\u00010CH\u0016J&\u0010D\u001a\u0004\u0018\u00010E2\u0006\u0010F\u001a\u00020G2\b\u0010H\u001a\u0004\u0018\u00010I2\b\u0010B\u001a\u0004\u0018\u00010CH\u0016J\u001a\u0010J\u001a\u00020A2\u0006\u0010K\u001a\u00020E2\b\u0010B\u001a\u0004\u0018\u00010CH\u0016J\b\u0010L\u001a\u00020AH\u0016J\b\u0010M\u001a\u00020AH\u0016J\b\u0010N\u001a\u00020AH\u0016J\u0010\u0010O\u001a\u00020A2\u0006\u0010P\u001a\u00020QH\u0016J\u0012\u0010R\u001a\u00020S2\b\u0010B\u001a\u0004\u0018\u00010CH\u0016J\b\u0010T\u001a\u00020AH\u0002J\b\u0010U\u001a\u00020VH\u0002J\b\u0010W\u001a\u00020AH\u0002J\b\u0010X\u001a\u00020AH\u0002J\b\u0010Y\u001a\u00020AH\u0002J\b\u0010Z\u001a\u00020AH\u0002J\b\u0010[\u001a\u00020AH\u0002J\b\u0010\\\u001a\u00020AH\u0002J\b\u0010]\u001a\u00020AH\u0002J\u0016\u0010^\u001a\u00020A2\f\u0010_\u001a\b\u0012\u0004\u0012\u00020\"0'H\u0002J\u0016\u0010`\u001a\u00020A2\f\u0010a\u001a\b\u0012\u0004\u0012\u00020\"0'H\u0002J\u0010\u0010b\u001a\u00020A2\u0006\u0010c\u001a\u00020\"H\u0002J \u0010d\u001a\u00020A2\u0006\u0010e\u001a\u00020f2\u0006\u0010c\u001a\u00020\"2\u0006\u0010g\u001a\u00020)H\u0002J\u0018\u0010h\u001a\u00020A2\u0006\u0010e\u001a\u00020f2\u0006\u0010g\u001a\u00020)H\u0002J\u0012\u0010i\u001a\u00020j2\b\u0010c\u001a\u0004\u0018\u00010\"H\u0002J\u0010\u0010k\u001a\u00020$2\u0006\u0010l\u001a\u00020$H\u0002J\u000e\u0010m\u001a\u00020AH\u0082@¢\u0006\u0002\u0010nJ\b\u0010o\u001a\u00020AH\u0002J\b\u0010p\u001a\u00020AH\u0002J\u0010\u0010q\u001a\u00020$2\u0006\u0010r\u001a\u00020:H\u0002J\b\u0010s\u001a\u00020AH\u0002J\b\u0010t\u001a\u00020AH\u0002J\b\u0010u\u001a\u00020AH\u0002J\b\u0010v\u001a\u00020AH\u0002J\b\u0010w\u001a\u00020AH\u0002J\b\u0010x\u001a\u00020AH\u0002J\u0010\u0010y\u001a\u00020A2\u0006\u0010z\u001a\u00020{H\u0002J\u0018\u0010|\u001a\u00020A2\u0006\u0010z\u001a\u00020{2\u0006\u0010}\u001a\u00020 H\u0002J\b\u0010~\u001a\u00020AH\u0002J\u001d\u0010\u007f\u001a\u00020A2\u0007\u0010\u0080\u0001\u001a\u00020$2\n\u0010\u0081\u0001\u001a\u0005\u0018\u00010\u0082\u0001H\u0016J'\u0010\u0083\u0001\u001a\u00020A2\u0007\u0010\u0084\u0001\u001a\u00020,2\u0007\u0010\u0085\u0001\u001a\u00020$2\n\u0010\u0081\u0001\u001a\u0005\u0018\u00010\u0082\u0001H\u0016J\u0012\u0010\u0086\u0001\u001a\u00020A2\u0007\u0010\u0087\u0001\u001a\u00020$H\u0002J\t\u0010\u0088\u0001\u001a\u00020AH\u0002J\u001c\u0010\u0089\u0001\u001a\u00020A2\u0007\u0010\u008a\u0001\u001a\u00020$2\b\u0010\u008b\u0001\u001a\u00030\u008c\u0001H\u0002J\u0012\u0010\u008d\u0001\u001a\u00020A2\u0007\u0010\u008a\u0001\u001a\u00020$H\u0002J\u0012\u0010\u008e\u0001\u001a\u00020A2\u0007\u0010\u008f\u0001\u001a\u00020)H\u0002J\u0012\u0010\u0090\u0001\u001a\u00020A2\u0007\u0010\u008f\u0001\u001a\u00020)H\u0002J\u0012\u0010\u0091\u0001\u001a\u00020A2\u0007\u0010\u0087\u0001\u001a\u00020$H\u0002J\u0012\u0010\u0092\u0001\u001a\u00020A2\u0007\u0010\u0087\u0001\u001a\u00020$H\u0002J\u0012\u0010\u0093\u0001\u001a\u00020A2\u0007\u0010\u0087\u0001\u001a\u00020$H\u0002J\t\u0010\u0094\u0001\u001a\u00020AH\u0002J\t\u0010\u0095\u0001\u001a\u00020AH\u0002JG\u0010\u0096\u0001\u001a\u00020A2\u0007\u0010\u0097\u0001\u001a\u00020$2-\b\u0002\u0010\u0098\u0001\u001a&\u0012\u0004\u0012\u00020$\u0012\u0005\u0012\u00030\u009a\u0001\u0018\u00010\u009b\u0001j\u0012\u0012\u0004\u0012\u00020$\u0012\u0005\u0012\u00030\u009a\u0001\u0018\u0001`\u0099\u0001H\u0002¢\u0006\u0003\u0010\u009c\u0001JG\u0010\u009d\u0001\u001a\u00020A2\u0007\u0010\u0097\u0001\u001a\u00020$2-\b\u0002\u0010\u0098\u0001\u001a&\u0012\u0004\u0012\u00020$\u0012\u0005\u0012\u00030\u009a\u0001\u0018\u00010\u009b\u0001j\u0012\u0012\u0004\u0012\u00020$\u0012\u0005\u0012\u00030\u009a\u0001\u0018\u0001`\u0099\u0001H\u0002¢\u0006\u0003\u0010\u009c\u0001J%\u0010\u009e\u0001\u001a\u00020A2\u0007\u0010\u009f\u0001\u001a\u00020,2\u0007\u0010 \u0001\u001a\u00020,2\n\u0010¡\u0001\u001a\u0005\u0018\u00010¢\u0001J\t\u0010£\u0001\u001a\u00020AH\u0016R\u0010\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0082\u000e¢\u0006\u0002\n\u0000R\u0016\u0010\u0007\u001a\u0004\u0018\u00010\u00068BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b\b\u0010\tR\u001b\u0010\n\u001a\u00020\u000b8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u000e\u0010\u000f\u001a\u0004\b\f\u0010\rR\u001b\u0010\u0010\u001a\u00020\u00118BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0014\u0010\u000f\u001a\u0004\b\u0012\u0010\u0013R\u001b\u0010\u0015\u001a\u00020\u00168BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0019\u0010\u000f\u001a\u0004\b\u0017\u0010\u0018R\u001b\u0010\u001a\u001a\u00020\u001b8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u001e\u0010\u000f\u001a\u0004\b\u001c\u0010\u001dR\u0010\u0010\u001f\u001a\u0004\u0018\u00010 X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010!\u001a\u0004\u0018\u00010\"X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010#\u001a\u0004\u0018\u00010$X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010%\u001a\u00020$X\u0082\u000e¢\u0006\u0002\n\u0000R\u0014\u0010&\u001a\b\u0012\u0004\u0012\u00020 0'X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010(\u001a\u00020)X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010*\u001a\u00020)X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010+\u001a\u00020,X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010-\u001a\u00020,X\u0082D¢\u0006\u0002\n\u0000R\u000e\u0010.\u001a\u00020)X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010/\u001a\u00020)X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u00100\u001a\u00020$X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u00101\u001a\u00020)X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u00102\u001a\u0004\u0018\u000103X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u00104\u001a\u0004\u0018\u000103X\u0082\u000e¢\u0006\u0002\n\u0000R\u0014\u00105\u001a\b\u0012\u0004\u0012\u0002060'X\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u00107\u001a\u0004\u0018\u000108X\u0082\u000e¢\u0006\u0002\n\u0000R\u0012\u00109\u001a\u0004\u0018\u00010:X\u0082\u000e¢\u0006\u0004\n\u0002\u0010;R\u0010\u0010<\u001a\u0004\u0018\u00010=X\u0082\u000e¢\u0006\u0002\n\u0000R\u0014\u0010>\u001a\b\u0012\u0004\u0012\u00020,0'X\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010?\u001a\b\u0012\u0004\u0012\u00020,0'X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006¦\u0001"}, m2722d2 = {"Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;", "Landroidx/fragment/app/DialogFragment;", "Lcom/razorpay/PaymentResultWithDataListener;", "<init>", "()V", "_binding", "Lcom/laborbook/keep/databinding/DialogPremiumOfferBinding;", "binding", "getBinding", "()Lcom/laborbook/keep/databinding/DialogPremiumOfferBinding;", "analytics", "Lcom/laborbook/base/analytics/Analytics;", "getAnalytics", "()Lcom/laborbook/base/analytics/Analytics;", "analytics$delegate", "Lkotlin/Lazy;", "dataStoreManager", "Lcom/laborbook/base/datastore/DataStoreManager;", "getDataStoreManager", "()Lcom/laborbook/base/datastore/DataStoreManager;", "dataStoreManager$delegate", "viewModel", "Lcom/laborbook/keep/screen/premium/viewmodel/SubscriptionViewModel;", "getViewModel", "()Lcom/laborbook/keep/screen/premium/viewmodel/SubscriptionViewModel;", "viewModel$delegate", "remoteConfig", "Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;", "getRemoteConfig", "()Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;", "remoteConfig$delegate", "selectedUpiApp", "Lcom/laborbook/keep/screen/premium/InstalledUpiApp;", "selectedPlan", "Lcom/laborbook/keep/model/subscription/SubscriptionPlan;", "currentSubscriptionId", "", "installSource", "installedUpiApps", "", "isVerificationInProgress", "", "paymentFlowInProgress", "verificationAttempts", "", "maxVerificationAttempts", "isInitialPlansLoading", "isTrialExpired", "defaultInterval", "isHardPaywall", "socialProofJob", "Lkotlinx/coroutines/Job;", "testimonialJob", "testimonials", "Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment$Testimonial;", "offerTimerRunnable", "Ljava/lang/Runnable;", "offerTimerEndAtElapsedMs", "", "Ljava/lang/Long;", "razorpayCustom", "Lcom/razorpay/Razorpay;", "socialProofTrialResIds", "socialProofProResIds", "onCreate", "", "savedInstanceState", "Landroid/os/Bundle;", "onCreateView", "Landroid/view/View;", "inflater", "Landroid/view/LayoutInflater;", "container", "Landroid/view/ViewGroup;", "onViewCreated", "view", "onStart", "onResume", "onPause", "onDismiss", "dialog", "Landroid/content/DialogInterface;", "onCreateDialog", "Landroid/app/Dialog;", "handleBackPress", "createPaymentWebViewClient", "Landroid/webkit/WebViewClient;", "onPaymentWebViewDismissed", "startSocialProofTicker", "startTestimonialTicker", "setupViews", "registerClickListeners", "loadSubscriptionPlans", "observeViewModel", "handlePlansLoaded", "plans", "updateTrialSections", "activePlans", "updatePriceDisplay", "plan", "bindPlanItem", "itemBinding", "Lcom/laborbook/keep/databinding/ItemSubscriptionPlanBinding;", "isSelected", "updatePlanSelectionVisuals", "getStartTrialButtonText", "", "formatIntervalForTrial", "interval", "setupOfferTimerFromRemoteConfig", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "maybeStartOfferCountdown", "stopOfferCountdown", "formatOfferDuration", "totalSeconds", "fetchPaymentMethods", "loadUpiAppsViaRazorpay", "loadUpiAppsFallback", "showFaqBottomSheet", "showUpiSelectionBottomSheet", "handleStartTrial", "initiateRazorpayPayment", "response", "Lcom/laborbook/keep/model/subscription/CreateSubscriptionResponse;", "initiatePaymentWithSubscription", "upiApp", "hidePaymentWebView", "onPaymentSuccess", "razorpayPaymentId", "paymentData", "Lcom/razorpay/PaymentData;", "onPaymentError", "errorCode", "errorMessage", "showVerificationScreen", "message", "hideVerificationScreen", "startVerificationPolling", "subscriptionId", "verifyRequest", "Lcom/laborbook/keep/model/subscription/VerifySubscriptionRequest;", "startStatusPolling", "showLoading", "show", "showSpinnerLoading", "showErrorLoading", "showError", "showPaymentFailedBottomSheet", "restoreSubscriptionPageUI", "showSuccessDialog", "triggerImpressionEvent", "eventName", "hashMap", "Lkotlin/collections/HashMap;", "", "Ljava/util/HashMap;", "(Ljava/lang/String;Ljava/util/HashMap;)V", "recordClickEvent", "onActivityResultForRazorpay", "requestCode", "resultCode", "data", "Landroid/content/Intent;", "onDestroyView", "Testimonial", "Companion", "keep_release"}, m2723k = 1, m2724mv = {2, 0, 0}, m2726xi = 48)
public final class PremiumOfferDialogFragment extends DialogFragment implements PaymentResultWithDataListener {
    private static final String ARG_IS_HARD_PAYWALL = "is_hard_paywall";
    private static final String ARG_IS_TRIAL_EXPIRED = "is_trial_expired";

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    public static final String TAG = "PremiumOfferDialogFragment";
    private DialogPremiumOfferBinding _binding;

    /* JADX INFO: renamed from: analytics$delegate, reason: from kotlin metadata */
    private final Lazy analytics;
    private String currentSubscriptionId;

    /* JADX INFO: renamed from: dataStoreManager$delegate, reason: from kotlin metadata */
    private final Lazy dataStoreManager;
    private String defaultInterval;
    private String installSource;
    private List<InstalledUpiApp> installedUpiApps;
    private boolean isHardPaywall;
    private boolean isInitialPlansLoading;
    private boolean isTrialExpired;
    private boolean isVerificationInProgress;
    private final int maxVerificationAttempts;
    private Long offerTimerEndAtElapsedMs;
    private Runnable offerTimerRunnable;
    private boolean paymentFlowInProgress;
    private Razorpay razorpayCustom;

    /* JADX INFO: renamed from: remoteConfig$delegate, reason: from kotlin metadata */
    private final Lazy remoteConfig;
    private SubscriptionPlan selectedPlan;
    private InstalledUpiApp selectedUpiApp;
    private Job socialProofJob;
    private final List<Integer> socialProofProResIds;
    private final List<Integer> socialProofTrialResIds;
    private Job testimonialJob;
    private final List<Testimonial> testimonials;
    private int verificationAttempts;

    /* JADX INFO: renamed from: viewModel$delegate, reason: from kotlin metadata */
    private final Lazy viewModel;

    /* JADX INFO: renamed from: com.rebuilt.app.keep.screen.premium.PremiumOfferDialogFragment$setupOfferTimerFromRemoteConfig$1 */
    /* JADX INFO: compiled from: PremiumOfferDialogFragment.kt */
    @Metadata(m2723k = 3, m2724mv = {2, 0, 0}, m2726xi = 48)
    @DebugMetadata(m2734c = "com.rebuilt.app.keep.screen.premium.PremiumOfferDialogFragment", m2735f = "PremiumOfferDialogFragment.kt", m2736i = {0, 0}, m2737l = {742}, m2738m = "setupOfferTimerFromRemoteConfig", m2739n = {"this", "binding"}, m2740s = {"L$0", "L$1"})
    static final class C38161 extends ContinuationImpl {
        Object L$0;
        Object L$1;
        int label;
        /* synthetic */ Object result;

        C38161(Continuation<? super C38161> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return PremiumOfferDialogFragment.this.setupOfferTimerFromRemoteConfig(this);
        }
    }

    @JvmStatic
    public static final PremiumOfferDialogFragment newInstance(boolean z, boolean z2) {
        return INSTANCE.newInstance(z, z2);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public PremiumOfferDialogFragment() {
        final PremiumOfferDialogFragment premiumOfferDialogFragment = this;
        LazyThreadSafetyMode lazyThreadSafetyMode = LazyThreadSafetyMode.SYNCHRONIZED;
        final Qualifier qualifier = null;
        final Object[] objArr = 0 == true ? 1 : 0;
        this.analytics = LazyKt.lazy(lazyThreadSafetyMode, (Function0) new Function0<Analytics>() { // from class: com.rebuilt.app.keep.screen.premium.PremiumOfferDialogFragment$special$$inlined$inject$default$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX WARN: Type inference failed for: r0v2, types: [com.rebuilt.app.base.analytics.Analytics, java.lang.Object] */
            @Override // kotlin.jvm.functions.Function0
            public final Analytics invoke() {
                ComponentCallbacks componentCallbacks = premiumOfferDialogFragment;
                return ComponentCallbackExtKt.getDefaultScope(componentCallbacks).get(Reflection.getOrCreateKotlinClass(Analytics.class), qualifier, objArr);
            }
        });
        LazyThreadSafetyMode lazyThreadSafetyMode2 = LazyThreadSafetyMode.SYNCHRONIZED;
        final Object[] objArr2 = 0 == true ? 1 : 0;
        final Object[] objArr3 = 0 == true ? 1 : 0;
        this.dataStoreManager = LazyKt.lazy(lazyThreadSafetyMode2, (Function0) new Function0<DataStoreManager>() { // from class: com.rebuilt.app.keep.screen.premium.PremiumOfferDialogFragment$special$$inlined$inject$default$2
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX WARN: Type inference failed for: r0v2, types: [com.rebuilt.app.base.datastore.DataStoreManager, java.lang.Object] */
            @Override // kotlin.jvm.functions.Function0
            public final DataStoreManager invoke() {
                ComponentCallbacks componentCallbacks = premiumOfferDialogFragment;
                return ComponentCallbackExtKt.getDefaultScope(componentCallbacks).get(Reflection.getOrCreateKotlinClass(DataStoreManager.class), objArr2, objArr3);
            }
        });
        final PremiumOfferDialogFragment premiumOfferDialogFragment2 = this;
        LazyThreadSafetyMode lazyThreadSafetyMode3 = LazyThreadSafetyMode.SYNCHRONIZED;
        final Object[] objArr4 = 0 == true ? 1 : 0;
        final Object[] objArr5 = 0 == true ? 1 : 0;
        this.viewModel = LazyKt.lazy(lazyThreadSafetyMode3, (Function0) new Function0<SubscriptionViewModel>() { // from class: com.rebuilt.app.keep.screen.premium.PremiumOfferDialogFragment$special$$inlined$viewModel$default$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            /* JADX WARN: Type inference failed for: r0v1, types: [androidx.lifecycle.ViewModel, com.rebuilt.app.keep.screen.premium.viewmodel.SubscriptionViewModel] */
            @Override // kotlin.jvm.functions.Function0
            public final SubscriptionViewModel invoke() {
                return ViewModelStoreOwnerExtKt.getViewModel(premiumOfferDialogFragment2, objArr4, Reflection.getOrCreateKotlinClass(SubscriptionViewModel.class), objArr5);
            }
        });
        this.remoteConfig = LazyKt.lazy(new Function0() { // from class: com.rebuilt.app.keep.screen.premium.PremiumOfferDialogFragment$$ExternalSyntheticLambda6
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return PremiumOfferDialogFragment.remoteConfig_delegate$lambda$0();
            }
        });
        this.installSource = "organic";
        this.installedUpiApps = CollectionsKt.emptyList();
        this.maxVerificationAttempts = 6;
        this.isInitialPlansLoading = true;
        this.defaultInterval = "yearly";
        this.testimonials = CollectionsKt.listOf((Object[]) new Testimonial[]{new Testimonial(C3656R.string.testimonial_1_text, C3656R.string.testimonial_1_author, 5.0f), new Testimonial(C3656R.string.testimonial_2_text, C3656R.string.testimonial_2_author, 4.0f), new Testimonial(C3656R.string.testimonial_3_text, C3656R.string.testimonial_3_author, 5.0f)});
        this.socialProofTrialResIds = CollectionsKt.listOf((Object[]) new Integer[]{Integer.valueOf(C3656R.string.social_proof_1), Integer.valueOf(C3656R.string.social_proof_2), Integer.valueOf(C3656R.string.social_proof_3), Integer.valueOf(C3656R.string.social_proof_4), Integer.valueOf(C3656R.string.social_proof_5), Integer.valueOf(C3656R.string.social_proof_6), Integer.valueOf(C3656R.string.social_proof_7), Integer.valueOf(C3656R.string.social_proof_8), Integer.valueOf(C3656R.string.social_proof_9), Integer.valueOf(C3656R.string.social_proof_10), Integer.valueOf(C3656R.string.social_proof_11), Integer.valueOf(C3656R.string.social_proof_12), Integer.valueOf(C3656R.string.social_proof_13), Integer.valueOf(C3656R.string.social_proof_14), Integer.valueOf(C3656R.string.social_proof_15), Integer.valueOf(C3656R.string.social_proof_16), Integer.valueOf(C3656R.string.social_proof_17), Integer.valueOf(C3656R.string.social_proof_18), Integer.valueOf(C3656R.string.social_proof_19), Integer.valueOf(C3656R.string.social_proof_20)});
        this.socialProofProResIds = CollectionsKt.listOf((Object[]) new Integer[]{Integer.valueOf(C3656R.string.social_proof_pro_1), Integer.valueOf(C3656R.string.social_proof_pro_2), Integer.valueOf(C3656R.string.social_proof_pro_3), Integer.valueOf(C3656R.string.social_proof_pro_4), Integer.valueOf(C3656R.string.social_proof_pro_5), Integer.valueOf(C3656R.string.social_proof_pro_6), Integer.valueOf(C3656R.string.social_proof_pro_7), Integer.valueOf(C3656R.string.social_proof_pro_8), Integer.valueOf(C3656R.string.social_proof_pro_9), Integer.valueOf(C3656R.string.social_proof_pro_10), Integer.valueOf(C3656R.string.social_proof_pro_11), Integer.valueOf(C3656R.string.social_proof_pro_12), Integer.valueOf(C3656R.string.social_proof_pro_13), Integer.valueOf(C3656R.string.social_proof_pro_14), Integer.valueOf(C3656R.string.social_proof_pro_15), Integer.valueOf(C3656R.string.social_proof_pro_16), Integer.valueOf(C3656R.string.social_proof_pro_17), Integer.valueOf(C3656R.string.social_proof_pro_18), Integer.valueOf(C3656R.string.social_proof_pro_19), Integer.valueOf(C3656R.string.social_proof_pro_20)});
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: getBinding, reason: from getter */
    public final DialogPremiumOfferBinding get_binding() {
        return this._binding;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Analytics getAnalytics() {
        return (Analytics) this.analytics.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final DataStoreManager getDataStoreManager() {
        return (DataStoreManager) this.dataStoreManager.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final SubscriptionViewModel getViewModel() {
        return (SubscriptionViewModel) this.viewModel.getValue();
    }

    private final FirebaseRemoteConfig getRemoteConfig() {
        return (FirebaseRemoteConfig) this.remoteConfig.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final FirebaseRemoteConfig remoteConfig_delegate$lambda$0() {
        return RemoteConfigKt.getRemoteConfig(Firebase.INSTANCE);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: compiled from: PremiumOfferDialogFragment.kt */
    @Metadata(m2721d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0007\n\u0002\b\f\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\b\u0082\b\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006¢\u0006\u0004\b\u0007\u0010\bJ\t\u0010\u000e\u001a\u00020\u0003HÆ\u0003J\t\u0010\u000f\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0010\u001a\u00020\u0006HÆ\u0003J'\u0010\u0011\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u0006HÆ\u0001J\u0013\u0010\u0012\u001a\u00020\u00132\b\u0010\u0014\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0015\u001a\u00020\u0003HÖ\u0001J\t\u0010\u0016\u001a\u00020\u0017HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\nR\u0011\u0010\u0004\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\nR\u0011\u0010\u0005\u001a\u00020\u0006¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\r¨\u0006\u0018"}, m2722d2 = {"Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment$Testimonial;", "", "textResId", "", "authorResId", InMobiNetworkValues.RATING, "", "<init>", "(IIF)V", "getTextResId", "()I", "getAuthorResId", "getRating", "()F", "component1", "component2", "component3", "copy", "equals", "", "other", "hashCode", InAppPurchaseConstants.METHOD_TO_STRING, "", "keep_release"}, m2723k = 1, m2724mv = {2, 0, 0}, m2726xi = 48)
    static final /* data */ class Testimonial {
        private final int authorResId;
        private final float rating;
        private final int textResId;

        public static /* synthetic */ Testimonial copy$default(Testimonial testimonial, int i, int i2, float f, int i3, Object obj) {
            if ((i3 & 1) != 0) {
                i = testimonial.textResId;
            }
            if ((i3 & 2) != 0) {
                i2 = testimonial.authorResId;
            }
            if ((i3 & 4) != 0) {
                f = testimonial.rating;
            }
            return testimonial.copy(i, i2, f);
        }

        /* JADX INFO: renamed from: component1, reason: from getter */
        public final int getTextResId() {
            return this.textResId;
        }

        /* JADX INFO: renamed from: component2, reason: from getter */
        public final int getAuthorResId() {
            return this.authorResId;
        }

        /* JADX INFO: renamed from: component3, reason: from getter */
        public final float getRating() {
            return this.rating;
        }

        public final Testimonial copy(int textResId, int authorResId, float rating) {
            return new Testimonial(textResId, authorResId, rating);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            if (!(other instanceof Testimonial)) {
                return false;
            }
            Testimonial testimonial = (Testimonial) other;
            return this.textResId == testimonial.textResId && this.authorResId == testimonial.authorResId && Float.compare(this.rating, testimonial.rating) == 0;
        }

        public int hashCode() {
            return (((Integer.hashCode(this.textResId) * 31) + Integer.hashCode(this.authorResId)) * 31) + Float.hashCode(this.rating);
        }

        public String toString() {
            return "Testimonial(textResId=" + this.textResId + ", authorResId=" + this.authorResId + ", rating=" + this.rating + ')';
        }

        public Testimonial(int i, int i2, float f) {
            this.textResId = i;
            this.authorResId = i2;
            this.rating = f;
        }

        public final int getAuthorResId() {
            return this.authorResId;
        }

        public final float getRating() {
            return this.rating;
        }

        public final int getTextResId() {
            return this.textResId;
        }
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setStyle(0, C3656R.style.FullScreenDialogStyle);
        Bundle arguments = getArguments();
        this.isTrialExpired = arguments != null ? arguments.getBoolean(ARG_IS_TRIAL_EXPIRED, false) : false;
        Bundle arguments2 = getArguments();
        this.isHardPaywall = arguments2 != null ? arguments2.getBoolean(ARG_IS_HARD_PAYWALL, false) : false;
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        Intrinsics.checkNotNullParameter(inflater, "inflater");
        this._binding = DialogPremiumOfferBinding.inflate(inflater, container, false);
        DialogPremiumOfferBinding dialogPremiumOfferBinding = get_binding();
        return dialogPremiumOfferBinding != null ? dialogPremiumOfferBinding.getRoot() : null;
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle savedInstanceState) {
        Intrinsics.checkNotNullParameter(view, "view");
        super.onViewCreated(view, savedInstanceState);
        triggerImpressionEvent$default(this, ConstantEventNames.PREMIUM_OFFER_DIALOG, null, 2, null);
        LifecycleOwner viewLifecycleOwner = getViewLifecycleOwner();
        Intrinsics.checkNotNullExpressionValue(viewLifecycleOwner, "getViewLifecycleOwner(...)");
        BuildersKt__Builders_commonKt.launch$default(LifecycleOwnerKt.getLifecycleScope(viewLifecycleOwner), Dispatchers.getIO(), null, new C38131(null), 2, null);
        FacebookPaymentEvents facebookPaymentEvents = FacebookPaymentEvents.INSTANCE;
        Context contextRequireContext = requireContext();
        Intrinsics.checkNotNullExpressionValue(contextRequireContext, "requireContext(...)");
        FacebookPaymentEvents.logViewContent$default(facebookPaymentEvents, contextRequireContext, null, 2, null);
        setupViews();
        LifecycleOwner viewLifecycleOwner2 = getViewLifecycleOwner();
        Intrinsics.checkNotNullExpressionValue(viewLifecycleOwner2, "getViewLifecycleOwner(...)");
        BuildersKt__Builders_commonKt.launch$default(LifecycleOwnerKt.getLifecycleScope(viewLifecycleOwner2), null, null, new C38142(null), 3, null);
        registerClickListeners();
        observeViewModel();
        startSocialProofTicker();
        startTestimonialTicker();
        showLoading(true);
        loadSubscriptionPlans();
    }

    /* JADX INFO: renamed from: com.rebuilt.app.keep.screen.premium.PremiumOfferDialogFragment$onViewCreated$1 */
    /* JADX INFO: compiled from: PremiumOfferDialogFragment.kt */
    @Metadata(m2721d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, m2722d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, m2723k = 3, m2724mv = {2, 0, 0}, m2726xi = 48)
    @DebugMetadata(m2734c = "com.rebuilt.app.keep.screen.premium.PremiumOfferDialogFragment$onViewCreated$1", m2735f = "PremiumOfferDialogFragment.kt", m2736i = {}, m2737l = {129}, m2738m = "invokeSuspend", m2739n = {}, m2740s = {})
    static final class C38131 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        Object L$0;
        int label;

        C38131(Continuation<? super C38131> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return PremiumOfferDialogFragment.this.new C38131(continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((C38131) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            PremiumOfferDialogFragment premiumOfferDialogFragment;
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                PremiumOfferDialogFragment premiumOfferDialogFragment2 = PremiumOfferDialogFragment.this;
                this.L$0 = premiumOfferDialogFragment2;
                this.label = 1;
                Object objFirst = FlowKt.first(premiumOfferDialogFragment2.getDataStoreManager().read(DataStoreManager.INSTANCE.getINSTALL_SOURCE(), "organic"), this);
                if (objFirst == coroutine_suspended) {
                    return coroutine_suspended;
                }
                premiumOfferDialogFragment = premiumOfferDialogFragment2;
                obj = objFirst;
            } else {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                premiumOfferDialogFragment = (PremiumOfferDialogFragment) this.L$0;
                ResultKt.throwOnFailure(obj);
            }
            premiumOfferDialogFragment.installSource = (String) obj;
            return Unit.INSTANCE;
        }
    }

    /* JADX INFO: renamed from: com.rebuilt.app.keep.screen.premium.PremiumOfferDialogFragment$onViewCreated$2 */
    /* JADX INFO: compiled from: PremiumOfferDialogFragment.kt */
    @Metadata(m2721d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, m2722d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, m2723k = 3, m2724mv = {2, 0, 0}, m2726xi = 48)
    @DebugMetadata(m2734c = "com.rebuilt.app.keep.screen.premium.PremiumOfferDialogFragment$onViewCreated$2", m2735f = "PremiumOfferDialogFragment.kt", m2736i = {}, m2737l = {135}, m2738m = "invokeSuspend", m2739n = {}, m2740s = {})
    static final class C38142 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        int label;

        C38142(Continuation<? super C38142> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return PremiumOfferDialogFragment.this.new C38142(continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((C38142) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                this.label = 1;
                if (PremiumOfferDialogFragment.this.setupOfferTimerFromRemoteConfig(this) == coroutine_suspended) {
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

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onStart() {
        super.onStart();
        FragmentActivity activity = getActivity();
        BookKeepActivity bookKeepActivity = activity instanceof BookKeepActivity ? (BookKeepActivity) activity : null;
        if (bookKeepActivity != null) {
            bookKeepActivity.onPaywallShown();
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onResume() {
        super.onResume();
        Job job = this.socialProofJob;
        if (job == null || !job.isActive()) {
            startSocialProofTicker();
        }
        maybeStartOfferCountdown();
        if (!this.paymentFlowInProgress || this.isVerificationInProgress) {
            return;
        }
        this.paymentFlowInProgress = false;
        showSpinnerLoading(false);
    }

    @Override // androidx.fragment.app.Fragment
    public void onPause() {
        super.onPause();
        Job job = this.socialProofJob;
        if (job != null) {
            Job.DefaultImpls.cancel$default(job, (CancellationException) null, 1, (Object) null);
        }
        stopOfferCountdown();
    }

    @Override // androidx.fragment.app.DialogFragment, android.content.DialogInterface.OnDismissListener
    public void onDismiss(DialogInterface dialog) {
        Intrinsics.checkNotNullParameter(dialog, "dialog");
        super.onDismiss(dialog);
        FragmentActivity activity = getActivity();
        BookKeepActivity bookKeepActivity = activity instanceof BookKeepActivity ? (BookKeepActivity) activity : null;
        if (bookKeepActivity != null) {
            bookKeepActivity.onPaywallDismissed();
        }
    }

    @Override // androidx.fragment.app.DialogFragment
    public Dialog onCreateDialog(Bundle savedInstanceState) {
        Dialog dialogOnCreateDialog = super.onCreateDialog(savedInstanceState);
        Intrinsics.checkNotNullExpressionValue(dialogOnCreateDialog, "onCreateDialog(...)");
        Window window = dialogOnCreateDialog.getWindow();
        if (window != null) {
            window.setLayout(-1, -1);
            window.clearFlags(1024);
            window.clearFlags(512);
            window.setStatusBarColor(getResources().getColor(C3656R.color.background, null));
            window.getDecorView().setSystemUiVisibility(8192);
        }
        dialogOnCreateDialog.setOnKeyListener(new DialogInterface.OnKeyListener() { // from class: com.rebuilt.app.keep.screen.premium.PremiumOfferDialogFragment$$ExternalSyntheticLambda3
            @Override // android.content.DialogInterface.OnKeyListener
            public final boolean onKey(DialogInterface dialogInterface, int i, KeyEvent keyEvent) {
                return PremiumOfferDialogFragment.onCreateDialog$lambda$2(this.f$0, dialogInterface, i, keyEvent);
            }
        });
        return dialogOnCreateDialog;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean onCreateDialog$lambda$2(PremiumOfferDialogFragment this$0, DialogInterface dialogInterface, int i, KeyEvent keyEvent) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        if (i != 4 || keyEvent.getAction() != 1) {
            return false;
        }
        this$0.handleBackPress();
        return true;
    }

    private final void handleBackPress() {
        WebView webView;
        if (this.isVerificationInProgress) {
            Toast.makeText(requireContext(), getString(C3656R.string.please_wait_verifying_payment), 0).show();
            return;
        }
        DialogPremiumOfferBinding dialogPremiumOfferBinding = get_binding();
        if (dialogPremiumOfferBinding != null && (webView = dialogPremiumOfferBinding.paymentWebview) != null && webView.getVisibility() == 0) {
            onPaymentWebViewDismissed();
        } else {
            if (this.isHardPaywall) {
                return;
            }
            dismiss();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final WebViewClient createPaymentWebViewClient() {
        return new WebViewClient() { // from class: com.rebuilt.app.keep.screen.premium.PremiumOfferDialogFragment.createPaymentWebViewClient.1
            @Override // android.webkit.WebViewClient
            public boolean shouldOverrideUrlLoading(WebView view, WebResourceRequest request) {
                Uri url;
                String string;
                if (request == null || (url = request.getUrl()) == null || (string = url.toString()) == null) {
                    return false;
                }
                return handlePaymentUrl(string);
            }

            @Override // android.webkit.WebViewClient
            public boolean shouldOverrideUrlLoading(WebView view, String url) {
                if (url == null) {
                    return false;
                }
                return handlePaymentUrl(url);
            }

            private final boolean handlePaymentUrl(String url) {
                Intent uri;
                if (StringsKt.startsWith$default(url, "http://", false, 2, (Object) null) || StringsKt.startsWith$default(url, "https://", false, 2, (Object) null)) {
                    return false;
                }
                try {
                    if (StringsKt.startsWith(url, "intent://", true)) {
                        uri = Intent.parseUri(url, 1);
                        uri.addFlags(268435456);
                    } else {
                        Intent intent = new Intent("android.intent.action.VIEW", Uri.parse(url));
                        intent.addFlags(268435456);
                        uri = intent;
                    }
                    PremiumOfferDialogFragment.this.startActivity(uri);
                } catch (Exception unused) {
                }
                return true;
            }

            @Override // android.webkit.WebViewClient
            public void onPageFinished(WebView view, String url) {
                super.onPageFinished(view, url);
            }
        };
    }

    private final void onPaymentWebViewDismissed() {
        if (this.currentSubscriptionId != null) {
            String string = getString(C3656R.string.checking_payment_status);
            Intrinsics.checkNotNullExpressionValue(string, "getString(...)");
            showVerificationScreen(string);
            String str = this.currentSubscriptionId;
            Intrinsics.checkNotNull(str);
            startStatusPolling(str);
        }
        hidePaymentWebView();
    }

    /* JADX INFO: renamed from: com.rebuilt.app.keep.screen.premium.PremiumOfferDialogFragment$startSocialProofTicker$1 */
    /* JADX INFO: compiled from: PremiumOfferDialogFragment.kt */
    @Metadata(m2721d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, m2722d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, m2723k = 3, m2724mv = {2, 0, 0}, m2726xi = 48)
    @DebugMetadata(m2734c = "com.rebuilt.app.keep.screen.premium.PremiumOfferDialogFragment$startSocialProofTicker$1", m2735f = "PremiumOfferDialogFragment.kt", m2736i = {0, 0, 1, 1}, m2737l = {TIFFConstants.TIFFTAG_MAKE, TIFFConstants.TIFFTAG_XRESOLUTION}, m2738m = "invokeSuspend", m2739n = {"shuffled", FirebaseAnalytics.Param.INDEX, "shuffled", FirebaseAnalytics.Param.INDEX}, m2740s = {"L$0", "L$1", "L$0", "L$1"})
    static final class C38181 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        Object L$0;
        Object L$1;
        int label;

        C38181(Continuation<? super C38181> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return PremiumOfferDialogFragment.this.new C38181(continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((C38181) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            final List listShuffled;
            final Ref.IntRef intRef;
            TextView textView;
            final TextView textView2;
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            try {
                if (i == 0) {
                    ResultKt.throwOnFailure(obj);
                    if (PremiumOfferDialogFragment.this.isAdded() && PremiumOfferDialogFragment.this.get_binding() != null) {
                        SubscriptionPlan subscriptionPlan = PremiumOfferDialogFragment.this.selectedPlan;
                        listShuffled = CollectionsKt.shuffled((subscriptionPlan == null || !subscriptionPlan.getHasTrial() || PremiumOfferDialogFragment.this.isTrialExpired) ? PremiumOfferDialogFragment.this.socialProofProResIds : PremiumOfferDialogFragment.this.socialProofTrialResIds);
                        intRef = new Ref.IntRef();
                        DialogPremiumOfferBinding dialogPremiumOfferBinding = PremiumOfferDialogFragment.this.get_binding();
                        if (dialogPremiumOfferBinding != null && (textView = dialogPremiumOfferBinding.tvSocialProof) != null) {
                            textView.setText(PremiumOfferDialogFragment.this.getString(((Number) listShuffled.get(0)).intValue()));
                        }
                        this.L$0 = listShuffled;
                        this.L$1 = intRef;
                        this.label = 1;
                        if (DelayKt.delay(3500L, this) == coroutine_suspended) {
                            return coroutine_suspended;
                        }
                    }
                    return Unit.INSTANCE;
                }
                if (i != 1 && i != 2) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                intRef = (Ref.IntRef) this.L$1;
                listShuffled = (List) this.L$0;
                ResultKt.throwOnFailure(obj);
                while (PremiumOfferDialogFragment.this.isAdded() && PremiumOfferDialogFragment.this.get_binding() != null) {
                    intRef.element = (intRef.element + 1) % listShuffled.size();
                    DialogPremiumOfferBinding dialogPremiumOfferBinding2 = PremiumOfferDialogFragment.this.get_binding();
                    if (dialogPremiumOfferBinding2 == null || (textView2 = dialogPremiumOfferBinding2.tvSocialProof) == null) {
                        break;
                    }
                    ViewPropertyAnimator duration = textView2.animate().alpha(0.0f).setDuration(300L);
                    final PremiumOfferDialogFragment premiumOfferDialogFragment = PremiumOfferDialogFragment.this;
                    duration.withEndAction(new Runnable() { // from class: com.rebuilt.app.keep.screen.premium.PremiumOfferDialogFragment$startSocialProofTicker$1$$ExternalSyntheticLambda0
                        @Override // java.lang.Runnable
                        public final void run() {
                            PremiumOfferDialogFragment.C38181.invokeSuspend$lambda$0(premiumOfferDialogFragment, textView2, listShuffled, intRef);
                        }
                    }).start();
                    this.L$0 = listShuffled;
                    this.L$1 = intRef;
                    this.label = 2;
                    if (DelayKt.delay(3500L, this) == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                }
            } catch (Exception unused) {
            }
            return Unit.INSTANCE;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void invokeSuspend$lambda$0(PremiumOfferDialogFragment premiumOfferDialogFragment, TextView textView, List list, Ref.IntRef intRef) {
            if (!premiumOfferDialogFragment.isAdded() || premiumOfferDialogFragment.get_binding() == null) {
                return;
            }
            textView.setText(premiumOfferDialogFragment.getString(((Number) list.get(intRef.element)).intValue()));
            textView.animate().alpha(1.0f).setDuration(300L).start();
        }
    }

    private final void startSocialProofTicker() {
        Job job = this.socialProofJob;
        if (job != null) {
            Job.DefaultImpls.cancel$default(job, (CancellationException) null, 1, (Object) null);
        }
        LifecycleOwner viewLifecycleOwner = getViewLifecycleOwner();
        Intrinsics.checkNotNullExpressionValue(viewLifecycleOwner, "getViewLifecycleOwner(...)");
        this.socialProofJob = BuildersKt__Builders_commonKt.launch$default(LifecycleOwnerKt.getLifecycleScope(viewLifecycleOwner), null, null, new C38181(null), 3, null);
    }

    /* JADX INFO: renamed from: com.rebuilt.app.keep.screen.premium.PremiumOfferDialogFragment$startTestimonialTicker$1 */
    /* JADX INFO: compiled from: PremiumOfferDialogFragment.kt */
    @Metadata(m2721d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, m2722d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, m2723k = 3, m2724mv = {2, 0, 0}, m2726xi = 48)
    @DebugMetadata(m2734c = "com.rebuilt.app.keep.screen.premium.PremiumOfferDialogFragment$startTestimonialTicker$1", m2735f = "PremiumOfferDialogFragment.kt", m2736i = {0}, m2737l = {316}, m2738m = "invokeSuspend", m2739n = {FirebaseAnalytics.Param.INDEX}, m2740s = {"I$0"})
    static final class C38211 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        int I$0;
        int label;

        C38211(Continuation<? super C38211> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return PremiumOfferDialogFragment.this.new C38211(continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((C38211) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        /* JADX WARN: Removed duplicated region for block: B:19:0x0039 A[Catch: Exception -> 0x00ec, TryCatch #0 {Exception -> 0x00ec, blocks: (B:6:0x000d, B:47:0x00db, B:17:0x0031, B:19:0x0039, B:21:0x0041, B:23:0x0056, B:26:0x005c, B:28:0x0064, B:31:0x006a, B:33:0x0072, B:36:0x0078, B:38:0x0080, B:42:0x0087, B:44:0x00cb, B:43:0x00a6, B:11:0x001d, B:13:0x0025, B:48:0x00e9), top: B:53:0x0007 }] */
        /* JADX WARN: Removed duplicated region for block: B:42:0x0087 A[Catch: Exception -> 0x00ec, TryCatch #0 {Exception -> 0x00ec, blocks: (B:6:0x000d, B:47:0x00db, B:17:0x0031, B:19:0x0039, B:21:0x0041, B:23:0x0056, B:26:0x005c, B:28:0x0064, B:31:0x006a, B:33:0x0072, B:36:0x0078, B:38:0x0080, B:42:0x0087, B:44:0x00cb, B:43:0x00a6, B:11:0x001d, B:13:0x0025, B:48:0x00e9), top: B:53:0x0007 }] */
        /* JADX WARN: Removed duplicated region for block: B:43:0x00a6 A[Catch: Exception -> 0x00ec, TryCatch #0 {Exception -> 0x00ec, blocks: (B:6:0x000d, B:47:0x00db, B:17:0x0031, B:19:0x0039, B:21:0x0041, B:23:0x0056, B:26:0x005c, B:28:0x0064, B:31:0x006a, B:33:0x0072, B:36:0x0078, B:38:0x0080, B:42:0x0087, B:44:0x00cb, B:43:0x00a6, B:11:0x001d, B:13:0x0025, B:48:0x00e9), top: B:53:0x0007 }] */
        /* JADX WARN: Removed duplicated region for block: B:46:0x00da A[RETURN] */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:45:0x00d8 -> B:47:0x00db). Please report as a decompilation issue!!! */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.lang.Object invokeSuspend(java.lang.Object r12) {
            /*
                Method dump skipped, instruction units count: 239
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.rebuilt.app.keep.screen.premium.PremiumOfferDialogFragment.C38211.invokeSuspend(java.lang.Object):java.lang.Object");
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void invokeSuspend$lambda$0(PremiumOfferDialogFragment premiumOfferDialogFragment, TextView textView, Testimonial testimonial, TextView textView2, RatingBar ratingBar, LinearLayout linearLayout) {
            if (!premiumOfferDialogFragment.isAdded() || premiumOfferDialogFragment.get_binding() == null) {
                return;
            }
            textView.setText(premiumOfferDialogFragment.getString(testimonial.getTextResId()));
            textView2.setText(premiumOfferDialogFragment.getString(testimonial.getAuthorResId()));
            ratingBar.setRating(testimonial.getRating());
            linearLayout.animate().alpha(1.0f).setDuration(250L).start();
        }
    }

    private final void startTestimonialTicker() {
        Job job = this.testimonialJob;
        if (job != null) {
            Job.DefaultImpls.cancel$default(job, (CancellationException) null, 1, (Object) null);
        }
        LifecycleOwner viewLifecycleOwner = getViewLifecycleOwner();
        Intrinsics.checkNotNullExpressionValue(viewLifecycleOwner, "getViewLifecycleOwner(...)");
        this.testimonialJob = BuildersKt__Builders_commonKt.launch$default(LifecycleOwnerKt.getLifecycleScope(viewLifecycleOwner), null, null, new C38211(null), 3, null);
    }

    private final void setupViews() {
        int iHashCode;
        final DialogPremiumOfferBinding dialogPremiumOfferBinding = get_binding();
        if (dialogPremiumOfferBinding != null) {
            dialogPremiumOfferBinding.paymentWebview.getSettings().setJavaScriptEnabled(true);
            dialogPremiumOfferBinding.paymentWebview.getSettings().setDomStorageEnabled(true);
            dialogPremiumOfferBinding.paymentWebview.setWebViewClient(createPaymentWebViewClient());
            this.razorpayCustom = new Razorpay(requireActivity(), BuildConfig.RAZORPAY_KEY_ID);
            fetchPaymentMethods();
            loadUpiAppsViaRazorpay();
            dialogPremiumOfferBinding.btnStartTrial.setBackgroundColor(ContextCompat.getColor(requireContext(), C3656R.color.color_primary));
            String language = getResources().getConfiguration().getLocales().get(0).getLanguage();
            if (language != null && ((iHashCode = language.hashCode()) == 3148 ? language.equals("bn") : iHashCode == 3241 ? language.equals("en") : iHashCode == 3310 ? language.equals("gu") : !(iHashCode == 3329 ? !language.equals("hi") : !(iHashCode == 3493 ? language.equals("mr") : iHashCode == 3555 ? language.equals("or") : iHashCode == 3569 && language.equals("pa"))))) {
                dialogPremiumOfferBinding.videoSubscriptionExplainer.setVisibility(0);
                dialogPremiumOfferBinding.videoSubscriptionExplainer.setVideoURI(Uri.parse("android.resource://" + requireContext().getPackageName() + '/' + C3577R.raw.subscription_explainer_video));
                final Ref.BooleanRef booleanRef = new Ref.BooleanRef();
                dialogPremiumOfferBinding.videoSubscriptionExplainer.setOnPreparedListener(new MediaPlayer.OnPreparedListener() { // from class: com.rebuilt.app.keep.screen.premium.PremiumOfferDialogFragment$$ExternalSyntheticLambda0
                    @Override // android.media.MediaPlayer.OnPreparedListener
                    public final void onPrepared(MediaPlayer mediaPlayer) {
                        mediaPlayer.start();
                    }
                });
                dialogPremiumOfferBinding.videoSubscriptionExplainer.setOnCompletionListener(new MediaPlayer.OnCompletionListener() { // from class: com.rebuilt.app.keep.screen.premium.PremiumOfferDialogFragment$$ExternalSyntheticLambda8
                    @Override // android.media.MediaPlayer.OnCompletionListener
                    public final void onCompletion(MediaPlayer mediaPlayer) {
                        PremiumOfferDialogFragment.setupViews$lambda$8$lambda$4(dialogPremiumOfferBinding, mediaPlayer);
                    }
                });
                dialogPremiumOfferBinding.videoSubscriptionExplainer.setOnClickListener(new View.OnClickListener() { // from class: com.rebuilt.app.keep.screen.premium.PremiumOfferDialogFragment$$ExternalSyntheticLambda9
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        PremiumOfferDialogFragment.setupViews$lambda$8$lambda$5(booleanRef, dialogPremiumOfferBinding, view);
                    }
                });
            } else {
                dialogPremiumOfferBinding.videoSubscriptionExplainer.setVisibility(8);
            }
            dialogPremiumOfferBinding.clUpiSelector.setOnClickListener(new View.OnClickListener() { // from class: com.rebuilt.app.keep.screen.premium.PremiumOfferDialogFragment$$ExternalSyntheticLambda10
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    PremiumOfferDialogFragment.setupViews$lambda$8$lambda$6(this.f$0, view);
                }
            });
            ViewCompat.setOnApplyWindowInsetsListener(dialogPremiumOfferBinding.clBottomSection, new OnApplyWindowInsetsListener() { // from class: com.rebuilt.app.keep.screen.premium.PremiumOfferDialogFragment$$ExternalSyntheticLambda11
                @Override // androidx.core.view.OnApplyWindowInsetsListener
                public final WindowInsetsCompat onApplyWindowInsets(View view, WindowInsetsCompat windowInsetsCompat) {
                    return PremiumOfferDialogFragment.setupViews$lambda$8$lambda$7(view, windowInsetsCompat);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void setupViews$lambda$8$lambda$4(DialogPremiumOfferBinding this_apply, MediaPlayer mediaPlayer) {
        Intrinsics.checkNotNullParameter(this_apply, "$this_apply");
        this_apply.videoSubscriptionExplainer.start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void setupViews$lambda$8$lambda$5(Ref.BooleanRef isMuted, DialogPremiumOfferBinding this_apply, View view) {
        float f;
        Intrinsics.checkNotNullParameter(isMuted, "$isMuted");
        Intrinsics.checkNotNullParameter(this_apply, "$this_apply");
        isMuted.element = !isMuted.element;
        MediaPlayer mediaPlayer = null;
        try {
            Field declaredField = VideoView.class.getDeclaredField("mMediaPlayer");
            declaredField.setAccessible(true);
            Object obj = declaredField.get(this_apply.videoSubscriptionExplainer);
            if (obj instanceof MediaPlayer) {
                mediaPlayer = (MediaPlayer) obj;
            }
        } catch (Exception unused) {
        }
        if (isMuted.element) {
            if (mediaPlayer == null) {
                return;
            } else {
                f = 0.0f;
            }
        } else if (mediaPlayer == null) {
            return;
        } else {
            f = 1.0f;
        }
        mediaPlayer.setVolume(f, f);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void setupViews$lambda$8$lambda$6(PremiumOfferDialogFragment this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.showUpiSelectionBottomSheet();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final WindowInsetsCompat setupViews$lambda$8$lambda$7(View view, WindowInsetsCompat insets) {
        Intrinsics.checkNotNullParameter(view, "view");
        Intrinsics.checkNotNullParameter(insets, "insets");
        Insets insets2 = insets.getInsets(WindowInsetsCompat.Type.navigationBars());
        Intrinsics.checkNotNullExpressionValue(insets2, "getInsets(...)");
        view.setPadding(view.getPaddingLeft(), view.getPaddingTop(), view.getPaddingRight(), view.getPaddingBottom() + insets2.bottom);
        return insets;
    }

    private final void registerClickListeners() {
        DialogPremiumOfferBinding dialogPremiumOfferBinding = get_binding();
        if (dialogPremiumOfferBinding != null) {
            if (this.isHardPaywall) {
                dialogPremiumOfferBinding.ivClose.setVisibility(8);
                dialogPremiumOfferBinding.tvFaqs.setVisibility(0);
                setCancelable(false);
                dialogPremiumOfferBinding.tvFaqs.setOnClickListener(new View.OnClickListener() { // from class: com.rebuilt.app.keep.screen.premium.PremiumOfferDialogFragment$$ExternalSyntheticLambda15
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        PremiumOfferDialogFragment.registerClickListeners$lambda$13$lambda$9(this.f$0, view);
                    }
                });
            } else {
                dialogPremiumOfferBinding.ivClose.setOnClickListener(new View.OnClickListener() { // from class: com.rebuilt.app.keep.screen.premium.PremiumOfferDialogFragment$$ExternalSyntheticLambda16
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        PremiumOfferDialogFragment.registerClickListeners$lambda$13$lambda$10(this.f$0, view);
                    }
                });
            }
            dialogPremiumOfferBinding.btnStartTrial.setOnClickListener(new View.OnClickListener() { // from class: com.rebuilt.app.keep.screen.premium.PremiumOfferDialogFragment$$ExternalSyntheticLambda1
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    PremiumOfferDialogFragment.registerClickListeners$lambda$13$lambda$11(this.f$0, view);
                }
            });
            dialogPremiumOfferBinding.ivLanguageSwitch.setOnClickListener(new View.OnClickListener() { // from class: com.rebuilt.app.keep.screen.premium.PremiumOfferDialogFragment$$ExternalSyntheticLambda2
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    PremiumOfferDialogFragment.registerClickListeners$lambda$13$lambda$12(this.f$0, view);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void registerClickListeners$lambda$13$lambda$9(PremiumOfferDialogFragment this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.showFaqBottomSheet();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void registerClickListeners$lambda$13$lambda$10(PremiumOfferDialogFragment this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        recordClickEvent$default(this$0, ConstantEventNames.PREMIUM_OFFER_CLOSE, null, 2, null);
        this$0.dismiss();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void registerClickListeners$lambda$13$lambda$11(PremiumOfferDialogFragment this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.handleStartTrial();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void registerClickListeners$lambda$13$lambda$12(PremiumOfferDialogFragment this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        try {
            FragmentActivity fragmentActivityRequireActivity = this$0.requireActivity();
            Intrinsics.checkNotNullExpressionValue(fragmentActivityRequireActivity, "requireActivity(...)");
            LanguageBottomSheetFragment.INSTANCE.newInstance().show(fragmentActivityRequireActivity.getSupportFragmentManager(), "LanguageBottomSheetFragment");
        } catch (Exception unused) {
        }
    }

    /* JADX INFO: renamed from: com.rebuilt.app.keep.screen.premium.PremiumOfferDialogFragment$loadSubscriptionPlans$1 */
    /* JADX INFO: compiled from: PremiumOfferDialogFragment.kt */
    @Metadata(m2721d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, m2722d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, m2723k = 3, m2724mv = {2, 0, 0}, m2726xi = 48)
    @DebugMetadata(m2734c = "com.rebuilt.app.keep.screen.premium.PremiumOfferDialogFragment$loadSubscriptionPlans$1", m2735f = "PremiumOfferDialogFragment.kt", m2736i = {}, m2737l = {TypedValues.CycleType.TYPE_ALPHA}, m2738m = "invokeSuspend", m2739n = {}, m2740s = {})
    static final class C38111 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        int label;

        C38111(Continuation<? super C38111> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return PremiumOfferDialogFragment.this.new C38111(continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((C38111) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                this.label = 1;
                obj = FlowKt.first(PremiumOfferDialogFragment.this.getDataStoreManager().read(DataStoreManager.INSTANCE.getUSER_ID(), ""), this);
                if (obj == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(obj);
            }
            String str = (String) obj;
            if (str.length() > 0) {
                PremiumOfferDialogFragment.this.getViewModel().loadSubscriptionPlans(str);
            } else {
                PremiumOfferDialogFragment premiumOfferDialogFragment = PremiumOfferDialogFragment.this;
                String string = premiumOfferDialogFragment.getString(C3656R.string.user_id_not_found);
                Intrinsics.checkNotNullExpressionValue(string, "getString(...)");
                premiumOfferDialogFragment.showErrorLoading(string);
            }
            return Unit.INSTANCE;
        }
    }

    private final void loadSubscriptionPlans() {
        BuildersKt__Builders_commonKt.launch$default(LifecycleOwnerKt.getLifecycleScope(this), null, null, new C38111(null), 3, null);
    }

    private final void observeViewModel() {
        getViewModel().getSubscriptionState().observe(getViewLifecycleOwner(), new PremiumOfferDialogFragment$sam$androidx_lifecycle_Observer$0(new Function1() { // from class: com.rebuilt.app.keep.screen.premium.PremiumOfferDialogFragment$$ExternalSyntheticLambda4
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return PremiumOfferDialogFragment.observeViewModel$lambda$14(this.f$0, (SubscriptionViewModel.SubscriptionState) obj);
            }
        }));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit observeViewModel$lambda$14(PremiumOfferDialogFragment this$0, SubscriptionViewModel.SubscriptionState subscriptionState) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        if (subscriptionState instanceof SubscriptionViewModel.SubscriptionState.Loading) {
            if (this$0.isInitialPlansLoading) {
                this$0.showLoading(true);
            } else {
                this$0.showSpinnerLoading(true);
            }
        } else if (subscriptionState instanceof SubscriptionViewModel.SubscriptionState.PlansLoaded) {
            this$0.isInitialPlansLoading = false;
            this$0.showLoading(false);
            this$0.handlePlansLoaded(((SubscriptionViewModel.SubscriptionState.PlansLoaded) subscriptionState).getPlans());
        } else if (subscriptionState instanceof SubscriptionViewModel.SubscriptionState.SubscriptionCreated) {
            this$0.paymentFlowInProgress = true;
            this$0.initiateRazorpayPayment(((SubscriptionViewModel.SubscriptionState.SubscriptionCreated) subscriptionState).getResponse());
        } else if (subscriptionState instanceof SubscriptionViewModel.SubscriptionState.SubscriptionVerified) {
            this$0.showSpinnerLoading(false);
            if (((SubscriptionViewModel.SubscriptionState.SubscriptionVerified) subscriptionState).isActive()) {
                this$0.isVerificationInProgress = false;
                this$0.hideVerificationScreen();
                BuildersKt__Builders_commonKt.launch$default(LifecycleOwnerKt.getLifecycleScope(this$0), Dispatchers.getIO(), null, new PremiumOfferDialogFragment$observeViewModel$1$1(this$0, null), 2, null);
                this$0.showSuccessDialog();
            } else if (this$0.verificationAttempts >= this$0.maxVerificationAttempts) {
                this$0.isVerificationInProgress = false;
                this$0.hideVerificationScreen();
                String string = this$0.getString(C3656R.string.payment_failed_try_again);
                Intrinsics.checkNotNullExpressionValue(string, "getString(...)");
                this$0.showPaymentFailedBottomSheet(string);
            }
        } else if (subscriptionState instanceof SubscriptionViewModel.SubscriptionState.UserSubscriptionLoaded) {
            this$0.showSpinnerLoading(false);
            if (StringsKt.equals(((SubscriptionViewModel.SubscriptionState.UserSubscriptionLoaded) subscriptionState).getSubscription().getSubscriptionTier(), "PRO", true)) {
                this$0.isVerificationInProgress = false;
                this$0.hideVerificationScreen();
                BuildersKt__Builders_commonKt.launch$default(LifecycleOwnerKt.getLifecycleScope(this$0), Dispatchers.getIO(), null, new PremiumOfferDialogFragment$observeViewModel$1$2(this$0, null), 2, null);
                this$0.showSuccessDialog();
            } else if (this$0.verificationAttempts >= this$0.maxVerificationAttempts) {
                this$0.isVerificationInProgress = false;
                this$0.hideVerificationScreen();
                String string2 = this$0.getString(C3656R.string.payment_failed_try_again);
                Intrinsics.checkNotNullExpressionValue(string2, "getString(...)");
                this$0.showPaymentFailedBottomSheet(string2);
            }
        } else if (subscriptionState instanceof SubscriptionViewModel.SubscriptionState.Error) {
            this$0.showSpinnerLoading(false);
            this$0.paymentFlowInProgress = false;
            if (this$0.isVerificationInProgress) {
                if (this$0.verificationAttempts >= this$0.maxVerificationAttempts) {
                    this$0.isVerificationInProgress = false;
                    this$0.hideVerificationScreen();
                    String string3 = this$0.getString(C3656R.string.payment_failed_try_again);
                    Intrinsics.checkNotNullExpressionValue(string3, "getString(...)");
                    this$0.showPaymentFailedBottomSheet(string3);
                }
            } else {
                this$0.hideVerificationScreen();
                this$0.showPaymentFailedBottomSheet(((SubscriptionViewModel.SubscriptionState.Error) subscriptionState).getMessage());
            }
        } else {
            this$0.showLoading(false);
            this$0.showSpinnerLoading(false);
        }
        return Unit.INSTANCE;
    }

    private final void handlePlansLoaded(List<SubscriptionPlan> plans) {
        String string;
        String str = "yearly";
        try {
            String string2 = getRemoteConfig().getString("active_plan_ids");
            Intrinsics.checkNotNullExpressionValue(string2, "getString(...)");
            string = StringsKt.trim((CharSequence) string2).toString();
        } catch (Exception unused) {
            string = "all";
        }
        ArrayList arrayList = new ArrayList();
        for (Object obj : plans) {
            if (((SubscriptionPlan) obj).isActive()) {
                arrayList.add(obj);
            }
        }
        ArrayList arrayList2 = arrayList;
        String str2 = string;
        if (str2.length() != 0 && !StringsKt.equals(string, "all", true)) {
            List listSplit$default = StringsKt.split$default((CharSequence) str2, new String[]{","}, false, 0, 6, (Object) null);
            ArrayList arrayList3 = new ArrayList(CollectionsKt.collectionSizeOrDefault(listSplit$default, 10));
            Iterator it = listSplit$default.iterator();
            while (it.hasNext()) {
                arrayList3.add(StringsKt.toIntOrNull(StringsKt.trim((CharSequence) it.next()).toString()));
            }
            List listFilterNotNull = CollectionsKt.filterNotNull(arrayList3);
            if (!listFilterNotNull.isEmpty()) {
                ArrayList arrayList4 = new ArrayList();
                for (Object obj2 : arrayList2) {
                    SubscriptionPlan subscriptionPlan = (SubscriptionPlan) obj2;
                    if (listFilterNotNull.contains(Integer.valueOf(subscriptionPlan.getDiscountedPrice())) || listFilterNotNull.contains(Integer.valueOf(subscriptionPlan.getPrice()))) {
                        arrayList4.add(obj2);
                    }
                }
                arrayList2 = arrayList4;
            }
        }
        if (arrayList2.isEmpty()) {
            String string3 = getString(plans.isEmpty() ? C3656R.string.no_subscription_plans : C3656R.string.no_active_subscription_plans);
            Intrinsics.checkNotNullExpressionValue(string3, "getString(...)");
            showErrorLoading(string3);
            return;
        }
        try {
            String string4 = RemoteConfigKt.getRemoteConfig(Firebase.INSTANCE).getString("default_plan_interval");
            Intrinsics.checkNotNullExpressionValue(string4, "getString(...)");
            String lowerCase = string4.toLowerCase(Locale.ROOT);
            Intrinsics.checkNotNullExpressionValue(lowerCase, "toLowerCase(...)");
            String str3 = lowerCase;
            if (str3.length() == 0) {
                str3 = "yearly";
            }
            str = str3;
        } catch (Exception unused2) {
        }
        this.defaultInterval = str;
        List<SubscriptionPlan> listSortedWith = CollectionsKt.sortedWith(arrayList2, new Comparator() { // from class: com.rebuilt.app.keep.screen.premium.PremiumOfferDialogFragment$handlePlansLoaded$$inlined$sortedByDescending$1
            /* JADX WARN: Multi-variable type inference failed */
            @Override // java.util.Comparator
            public final int compare(T t, T t2) {
                int i;
                SubscriptionPlan subscriptionPlan2 = (SubscriptionPlan) t2;
                String lowerCase2 = subscriptionPlan2.getInterval().toLowerCase(Locale.ROOT);
                Intrinsics.checkNotNullExpressionValue(lowerCase2, "toLowerCase(...)");
                int i2 = 0;
                if (StringsKt.startsWith$default(lowerCase2, this.this$0.defaultInterval, false, 2, (Object) null)) {
                    i = 2;
                } else {
                    List listListOf = CollectionsKt.listOf((Object[]) new String[]{"yearly", "year"});
                    String lowerCase3 = subscriptionPlan2.getInterval().toLowerCase(Locale.ROOT);
                    Intrinsics.checkNotNullExpressionValue(lowerCase3, "toLowerCase(...)");
                    i = listListOf.contains(lowerCase3) ? 1 : 0;
                }
                Integer numValueOf = Integer.valueOf(i);
                SubscriptionPlan subscriptionPlan3 = (SubscriptionPlan) t;
                String lowerCase4 = subscriptionPlan3.getInterval().toLowerCase(Locale.ROOT);
                Intrinsics.checkNotNullExpressionValue(lowerCase4, "toLowerCase(...)");
                if (StringsKt.startsWith$default(lowerCase4, this.this$0.defaultInterval, false, 2, (Object) null)) {
                    i2 = 2;
                } else {
                    List listListOf2 = CollectionsKt.listOf((Object[]) new String[]{"yearly", "year"});
                    String lowerCase5 = subscriptionPlan3.getInterval().toLowerCase(Locale.ROOT);
                    Intrinsics.checkNotNullExpressionValue(lowerCase5, "toLowerCase(...)");
                    if (listListOf2.contains(lowerCase5)) {
                        i2 = 1;
                    }
                }
                return ComparisonsKt.compareValues(numValueOf, Integer.valueOf(i2));
            }
        });
        this.selectedPlan = listSortedWith.get(0);
        updatePriceDisplay(listSortedWith.get(0));
        updateTrialSections(listSortedWith);
        startSocialProofTicker();
        final DialogPremiumOfferBinding dialogPremiumOfferBinding = get_binding();
        if (dialogPremiumOfferBinding == null || listSortedWith.size() <= 1) {
            return;
        }
        dialogPremiumOfferBinding.llPlans.removeAllViews();
        LayoutInflater layoutInflaterFrom = LayoutInflater.from(dialogPremiumOfferBinding.getRoot().getContext());
        final int i = 0;
        for (Object obj3 : listSortedWith) {
            int i2 = i + 1;
            if (i < 0) {
                CollectionsKt.throwIndexOverflow();
            }
            final SubscriptionPlan subscriptionPlan2 = (SubscriptionPlan) obj3;
            ItemSubscriptionPlanBinding itemSubscriptionPlanBindingInflate = ItemSubscriptionPlanBinding.inflate(layoutInflaterFrom, dialogPremiumOfferBinding.llPlans, false);
            Intrinsics.checkNotNullExpressionValue(itemSubscriptionPlanBindingInflate, "inflate(...)");
            bindPlanItem(itemSubscriptionPlanBindingInflate, subscriptionPlan2, i == 0);
            itemSubscriptionPlanBindingInflate.getRoot().setOnClickListener(new View.OnClickListener() { // from class: com.rebuilt.app.keep.screen.premium.PremiumOfferDialogFragment$$ExternalSyntheticLambda14
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    PremiumOfferDialogFragment.handlePlansLoaded$lambda$23$lambda$22$lambda$21(this.f$0, subscriptionPlan2, dialogPremiumOfferBinding, i, view);
                }
            });
            dialogPremiumOfferBinding.llPlans.addView(itemSubscriptionPlanBindingInflate.getRoot());
            i = i2;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void handlePlansLoaded$lambda$23$lambda$22$lambda$21(PremiumOfferDialogFragment this$0, SubscriptionPlan plan, DialogPremiumOfferBinding this_apply, int i, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(plan, "$plan");
        Intrinsics.checkNotNullParameter(this_apply, "$this_apply");
        this$0.selectedPlan = plan;
        this$0.updatePriceDisplay(plan);
        int childCount = this_apply.llPlans.getChildCount();
        int i2 = 0;
        while (true) {
            boolean z = true;
            if (i2 < childCount) {
                ItemSubscriptionPlanBinding itemSubscriptionPlanBindingBind = ItemSubscriptionPlanBinding.bind(this_apply.llPlans.getChildAt(i2));
                Intrinsics.checkNotNullExpressionValue(itemSubscriptionPlanBindingBind, "bind(...)");
                if (i2 != i) {
                    z = false;
                }
                this$0.updatePlanSelectionVisuals(itemSubscriptionPlanBindingBind, z);
                i2++;
            } else {
                this$0.recordClickEvent("subscription_plan_selected", MapsKt.hashMapOf(new Pair("plan_id", plan.getId()), new Pair("plan_name", plan.getName()), new Pair("plan_price", Integer.valueOf(plan.getPrice()))));
                return;
            }
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:50:0x01d5  */
    /* JADX WARN: Removed duplicated region for block: B:54:0x01e1  */
    /* JADX WARN: Removed duplicated region for block: B:55:0x01e4  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final void updateTrialSections(java.util.List<com.rebuilt.app.keep.model.subscription.SubscriptionPlan> r14) {
        /*
            Method dump skipped, instruction units count: 624
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.rebuilt.app.keep.screen.premium.PremiumOfferDialogFragment.updateTrialSections(java.util.List):void");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void updateTrialSections$lambda$27$lambda$26$lambda$25(PremiumOfferDialogFragment this$0, SubscriptionPlan trialPlan, DialogPremiumOfferBinding this_apply, int i, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(trialPlan, "$trialPlan");
        Intrinsics.checkNotNullParameter(this_apply, "$this_apply");
        this$0.selectedPlan = trialPlan;
        this$0.updatePriceDisplay(trialPlan);
        int childCount = this_apply.llTrialPlans.getChildCount();
        int i2 = 0;
        while (true) {
            boolean z = true;
            if (i2 < childCount) {
                ItemSubscriptionPlanBinding itemSubscriptionPlanBindingBind = ItemSubscriptionPlanBinding.bind(this_apply.llTrialPlans.getChildAt(i2));
                Intrinsics.checkNotNullExpressionValue(itemSubscriptionPlanBindingBind, "bind(...)");
                if (i2 != i) {
                    z = false;
                }
                this$0.updatePlanSelectionVisuals(itemSubscriptionPlanBindingBind, z);
                i2++;
            } else {
                this$0.recordClickEvent("subscription_plan_selected", MapsKt.hashMapOf(new Pair("plan_id", trialPlan.getId()), new Pair("plan_name", trialPlan.getName()), new Pair("plan_price", Integer.valueOf(trialPlan.getPrice()))));
                return;
            }
        }
    }

    private final void updatePriceDisplay(SubscriptionPlan plan) {
        DialogPremiumOfferBinding dialogPremiumOfferBinding = get_binding();
        if (dialogPremiumOfferBinding != null) {
            if (plan.getHasDiscount()) {
                plan.getDiscountedPrice();
            } else {
                plan.getPrice();
            }
            if (plan.getHasTrial() && !this.isTrialExpired) {
                dialogPremiumOfferBinding.tvFreeTrialLabel.setVisibility(0);
                dialogPremiumOfferBinding.tvFreeTrialLabel.setText(getString(C3656R.string.start_free_trial_label));
                dialogPremiumOfferBinding.tvSelectedPrice.setText("₹5");
                dialogPremiumOfferBinding.tvOriginalPrice.setVisibility(0);
                TextView textView = dialogPremiumOfferBinding.tvOriginalPrice;
                StringBuilder sb = new StringBuilder("₹");
                StringCompanionObject stringCompanionObject = StringCompanionObject.INSTANCE;
                String str = String.format(Locale.ENGLISH, TimeModel.NUMBER_FORMAT, Arrays.copyOf(new Object[]{Integer.valueOf(plan.getPrice())}, 1));
                Intrinsics.checkNotNullExpressionValue(str, "format(...)");
                textView.setText(sb.append(str).toString());
                dialogPremiumOfferBinding.tvOriginalPrice.setPaintFlags(dialogPremiumOfferBinding.tvOriginalPrice.getPaintFlags() | 16);
                dialogPremiumOfferBinding.tvTrialRefundNote.setVisibility(0);
                dialogPremiumOfferBinding.tvPerInterval.setVisibility(8);
                return;
            }
            dialogPremiumOfferBinding.tvFreeTrialLabel.setVisibility(8);
            dialogPremiumOfferBinding.tvSelectedPrice.setVisibility(8);
            dialogPremiumOfferBinding.tvOriginalPrice.setVisibility(8);
            dialogPremiumOfferBinding.tvTrialRefundNote.setVisibility(8);
            dialogPremiumOfferBinding.tvPerInterval.setVisibility(8);
            dialogPremiumOfferBinding.llPriceDisplay.setVisibility(8);
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    /* JADX WARN: Removed duplicated region for block: B:27:0x00e7  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x00f1  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x00f3  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x018b  */
    /* JADX WARN: Removed duplicated region for block: B:56:0x01c2  */
    /* JADX WARN: Removed duplicated region for block: B:60:0x01f3  */
    /* JADX WARN: Removed duplicated region for block: B:61:0x021b  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final void bindPlanItem(com.rebuilt.app.keep.databinding.ItemSubscriptionPlanBinding r19, com.rebuilt.app.keep.model.subscription.SubscriptionPlan r20, boolean r21) {
        /*
            Method dump skipped, instruction units count: 650
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.rebuilt.app.keep.screen.premium.PremiumOfferDialogFragment.bindPlanItem(com.rebuilt.app.keep.databinding.ItemSubscriptionPlanBinding, com.rebuilt.app.keep.model.subscription.SubscriptionPlan, boolean):void");
    }

    private final void updatePlanSelectionVisuals(ItemSubscriptionPlanBinding itemBinding, boolean isSelected) {
        itemBinding.ivSelectionCheck.setImageResource(isSelected ? C3656R.drawable.ic_radio_selected : C3656R.drawable.ic_radio_unselected);
        itemBinding.llPlanRoot.setBackgroundResource(isSelected ? C3656R.drawable.plan_selected_border : C3656R.drawable.plan_unselected_border);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final CharSequence getStartTrialButtonText(SubscriptionPlan plan) {
        if (plan == null) {
            String string = getString(C3656R.string.start);
            Intrinsics.checkNotNullExpressionValue(string, "getString(...)");
            return string;
        }
        String string2 = getString((!plan.getHasTrial() || this.isTrialExpired) ? C3656R.string.start_pro : C3656R.string.start_free);
        Intrinsics.checkNotNullExpressionValue(string2, "getString(...)");
        return string2;
    }

    private final String formatIntervalForTrial(String interval) {
        String lowerCase = StringsKt.trim((CharSequence) interval).toString().toLowerCase(Locale.ROOT);
        Intrinsics.checkNotNullExpressionValue(lowerCase, "toLowerCase(...)");
        if (!CollectionsKt.listOf((Object[]) new String[]{"month", Constants.SALARY_TYPE_MONTHLY}).contains(lowerCase)) {
            String str = "year";
            if (!CollectionsKt.listOf((Object[]) new String[]{"year", "yearly"}).contains(lowerCase)) {
                str = "week";
                if (!CollectionsKt.listOf((Object[]) new String[]{"week", "weekly"}).contains(lowerCase)) {
                    if (CollectionsKt.listOf((Object[]) new String[]{"quarter", "quarterly"}).contains(lowerCase)) {
                        return "quarter";
                    }
                    if (lowerCase.length() > 0) {
                        return lowerCase;
                    }
                }
            }
            return str;
        }
        return "month";
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:37:0x00a7  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x00b2  */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0014  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object setupOfferTimerFromRemoteConfig(kotlin.coroutines.Continuation<? super kotlin.Unit> r10) {
        /*
            Method dump skipped, instruction units count: 201
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.rebuilt.app.keep.screen.premium.PremiumOfferDialogFragment.setupOfferTimerFromRemoteConfig(kotlin.coroutines.Continuation):java.lang.Object");
    }

    private final void maybeStartOfferCountdown() {
        Long l;
        DialogPremiumOfferBinding dialogPremiumOfferBinding = get_binding();
        if (dialogPremiumOfferBinding == null || (l = this.offerTimerEndAtElapsedMs) == null) {
            return;
        }
        final long jLongValue = l.longValue();
        if (dialogPremiumOfferBinding.llOfferTimer.getVisibility() != 0) {
            return;
        }
        stopOfferCountdown();
        Runnable runnable = new Runnable() { // from class: com.rebuilt.app.keep.screen.premium.PremiumOfferDialogFragment.maybeStartOfferCountdown.1
            @Override // java.lang.Runnable
            public void run() {
                DialogPremiumOfferBinding dialogPremiumOfferBinding2 = PremiumOfferDialogFragment.this._binding;
                if (dialogPremiumOfferBinding2 == null) {
                    return;
                }
                long jCoerceAtLeast = RangesKt.coerceAtLeast(jLongValue - SystemClock.elapsedRealtime(), 0L) / 1000;
                if (jCoerceAtLeast > 0) {
                    dialogPremiumOfferBinding2.tvOfferTimer.setText(PremiumOfferDialogFragment.this.formatOfferDuration(jCoerceAtLeast));
                    dialogPremiumOfferBinding2.llOfferTimer.postDelayed(this, 1000L);
                } else {
                    dialogPremiumOfferBinding2.llOfferTimer.setVisibility(8);
                    PremiumOfferDialogFragment.this.stopOfferCountdown();
                }
            }
        };
        this.offerTimerRunnable = runnable;
        runnable.run();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void stopOfferCountdown() {
        DialogPremiumOfferBinding dialogPremiumOfferBinding = this._binding;
        if (dialogPremiumOfferBinding == null) {
            return;
        }
        Runnable runnable = this.offerTimerRunnable;
        if (runnable != null) {
            dialogPremiumOfferBinding.llOfferTimer.removeCallbacks(runnable);
        }
        this.offerTimerRunnable = null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final String formatOfferDuration(long totalSeconds) {
        long jCoerceAtLeast = RangesKt.coerceAtLeast(totalSeconds, 0L);
        long j = AdConfig.DEFAULT_CONTEXTUAL_DATA_EXPIRY_TIME;
        long j2 = jCoerceAtLeast / j;
        long j3 = 3600;
        long j4 = (jCoerceAtLeast % j) / j3;
        long j5 = 60;
        long j6 = (jCoerceAtLeast % j3) / j5;
        long j7 = jCoerceAtLeast % j5;
        if (j2 > 0) {
            return (j4 > 0 ? new StringBuilder().append(j2).append("d ").append(j4).append(Barcode128.START_B) : new StringBuilder().append(j2).append(Barcode128.CODE_AC_TO_B)).toString();
        }
        if (j4 > 0) {
            return (j6 > 0 ? new StringBuilder().append(j4).append("h ").append(j6).append('m') : new StringBuilder().append(j4).append(Barcode128.START_B)).toString();
        }
        if (j6 > 0) {
            return (j7 > 0 ? new StringBuilder().append(j6).append("m ").append(j7).append('s') : new StringBuilder().append(j6).append('m')).toString();
        }
        return new StringBuilder().append(j7).append('s').toString();
    }

    private final void fetchPaymentMethods() {
        Razorpay razorpay = this.razorpayCustom;
        if (razorpay != null) {
            razorpay.getPaymentMethods(new PaymentMethodsCallback() { // from class: com.rebuilt.app.keep.screen.premium.PremiumOfferDialogFragment.fetchPaymentMethods.1
                @Override // com.razorpay.PaymentMethodsCallback
                public void onPaymentMethodsReceived(String result) {
                }

                @Override // com.razorpay.PaymentMethodsCallback
                public void onError(String error) {
                    Timber.INSTANCE.mo2935e("getPaymentMethods error: " + error, new Object[0]);
                }
            });
        }
    }

    private final void loadUpiAppsViaRazorpay() {
        loadUpiAppsFallback();
    }

    private final void loadUpiAppsFallback() {
        Object next;
        ImageView imageView;
        UpiAppDetector upiAppDetector = UpiAppDetector.INSTANCE;
        Context contextRequireContext = requireContext();
        Intrinsics.checkNotNullExpressionValue(contextRequireContext, "requireContext(...)");
        List<InstalledUpiApp> allUpiAppsWithInstalledState = upiAppDetector.getAllUpiAppsWithInstalledState(contextRequireContext);
        this.installedUpiApps = allUpiAppsWithInstalledState;
        Iterator<T> it = allUpiAppsWithInstalledState.iterator();
        while (true) {
            if (!it.hasNext()) {
                next = null;
                break;
            } else {
                next = it.next();
                if (((InstalledUpiApp) next).isInstalled()) {
                    break;
                }
            }
        }
        InstalledUpiApp installedUpiApp = (InstalledUpiApp) next;
        if (installedUpiApp != null) {
            this.selectedUpiApp = installedUpiApp;
            DialogPremiumOfferBinding dialogPremiumOfferBinding = get_binding();
            if (dialogPremiumOfferBinding == null || (imageView = dialogPremiumOfferBinding.ivSelectedUpiIcon) == null) {
                return;
            }
            imageView.setImageDrawable(installedUpiApp.getIcon());
            return;
        }
        this.selectedUpiApp = null;
    }

    private final void showFaqBottomSheet() {
        try {
            BottomSheetDialog bottomSheetDialog = new BottomSheetDialog(requireContext());
            final View viewInflate = getLayoutInflater().inflate(C3656R.layout.bottom_sheet_faq, (ViewGroup) null);
            bottomSheetDialog.setContentView(viewInflate);
            Function2 function2 = new Function2() { // from class: com.rebuilt.app.keep.screen.premium.PremiumOfferDialogFragment$$ExternalSyntheticLambda7
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    return PremiumOfferDialogFragment.showFaqBottomSheet$lambda$34(viewInflate, ((Integer) obj).intValue(), ((Integer) obj2).intValue());
                }
            };
            function2.invoke(Integer.valueOf(C3656R.id.tv_faq1_q), Integer.valueOf(C3656R.id.tv_faq1_a));
            function2.invoke(Integer.valueOf(C3656R.id.tv_faq3_q), Integer.valueOf(C3656R.id.tv_faq3_a));
            function2.invoke(Integer.valueOf(C3656R.id.tv_faq4_q), Integer.valueOf(C3656R.id.tv_faq4_a));
            bottomSheetDialog.show();
        } catch (Exception unused) {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit showFaqBottomSheet$lambda$34(final View view, int i, final int i2) {
        view.findViewById(i).setOnClickListener(new View.OnClickListener() { // from class: com.rebuilt.app.keep.screen.premium.PremiumOfferDialogFragment$$ExternalSyntheticLambda12
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                PremiumOfferDialogFragment.showFaqBottomSheet$lambda$34$lambda$33(view, i2, view2);
            }
        });
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void showFaqBottomSheet$lambda$34$lambda$33(View view, int i, View view2) {
        TextView textView = (TextView) view.findViewById(i);
        textView.setVisibility(textView.getVisibility() == 0 ? 8 : 0);
    }

    private final void showUpiSelectionBottomSheet() {
        String packageName;
        recordClickEvent$default(this, ConstantEventNames.SELECT_UPI_APP, null, 2, null);
        UpiSelectionBottomSheet.Companion companion = UpiSelectionBottomSheet.INSTANCE;
        InstalledUpiApp installedUpiApp = this.selectedUpiApp;
        if (installedUpiApp == null || (packageName = installedUpiApp.getPackageName()) == null) {
            packageName = "";
        }
        UpiSelectionBottomSheet upiSelectionBottomSheetNewInstance = companion.newInstance(packageName);
        upiSelectionBottomSheetNewInstance.setInstalledUpiApps(this.installedUpiApps);
        upiSelectionBottomSheetNewInstance.setOnUpiSelectedListener(new Function1() { // from class: com.rebuilt.app.keep.screen.premium.PremiumOfferDialogFragment$$ExternalSyntheticLambda13
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return PremiumOfferDialogFragment.showUpiSelectionBottomSheet$lambda$35(this.f$0, (InstalledUpiApp) obj);
            }
        });
        upiSelectionBottomSheetNewInstance.show(getParentFragmentManager(), UpiSelectionBottomSheet.TAG);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit showUpiSelectionBottomSheet$lambda$35(PremiumOfferDialogFragment this$0, InstalledUpiApp upiApp) {
        ImageView imageView;
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(upiApp, "upiApp");
        this$0.selectedUpiApp = upiApp;
        DialogPremiumOfferBinding dialogPremiumOfferBinding = this$0.get_binding();
        if (dialogPremiumOfferBinding != null && (imageView = dialogPremiumOfferBinding.ivSelectedUpiIcon) != null) {
            imageView.setImageDrawable(upiApp.getIcon());
        }
        FacebookPaymentEvents facebookPaymentEvents = FacebookPaymentEvents.INSTANCE;
        Context contextRequireContext = this$0.requireContext();
        Intrinsics.checkNotNullExpressionValue(contextRequireContext, "requireContext(...)");
        facebookPaymentEvents.logAddPaymentInfo(contextRequireContext);
        return Unit.INSTANCE;
    }

    /* JADX INFO: renamed from: com.rebuilt.app.keep.screen.premium.PremiumOfferDialogFragment$handleStartTrial$1 */
    /* JADX INFO: compiled from: PremiumOfferDialogFragment.kt */
    @Metadata(m2721d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, m2722d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, m2723k = 3, m2724mv = {2, 0, 0}, m2726xi = 48)
    @DebugMetadata(m2734c = "com.rebuilt.app.keep.screen.premium.PremiumOfferDialogFragment$handleStartTrial$1", m2735f = "PremiumOfferDialogFragment.kt", m2736i = {}, m2737l = {}, m2738m = "invokeSuspend", m2739n = {}, m2740s = {})
    static final class C38081 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        int label;

        C38081(Continuation<? super C38081> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return PremiumOfferDialogFragment.this.new C38081(continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((C38081) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (this.label == 0) {
                ResultKt.throwOnFailure(obj);
                Analytics.logEvent$default(PremiumOfferDialogFragment.this.getAnalytics(), ConstantEventNames.START_TRIAL_CLICK, "click", CollectionsKt.listOf((Object[]) new String[]{AnalyticsPlatforms.MIXPANEL, AnalyticsPlatforms.FIREBASE}), null, 8, null);
                return Unit.INSTANCE;
            }
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }

    private final void handleStartTrial() {
        VideoView videoView;
        PremiumOfferDialogFragment premiumOfferDialogFragment = this;
        BuildersKt__Builders_commonKt.launch$default(LifecycleOwnerKt.getLifecycleScope(premiumOfferDialogFragment), Dispatchers.getIO(), null, new C38081(null), 2, null);
        DialogPremiumOfferBinding dialogPremiumOfferBinding = get_binding();
        if (dialogPremiumOfferBinding != null && (videoView = dialogPremiumOfferBinding.videoSubscriptionExplainer) != null && videoView.isPlaying()) {
            videoView.pause();
        }
        if (this.selectedPlan == null) {
            String string = getString(C3656R.string.please_select_subscription_plan);
            Intrinsics.checkNotNullExpressionValue(string, "getString(...)");
            showError(string);
            return;
        }
        InstalledUpiApp installedUpiApp = this.selectedUpiApp;
        if (installedUpiApp != null) {
            Intrinsics.checkNotNull(installedUpiApp);
            if (installedUpiApp.isInstalled()) {
                BuildersKt__Builders_commonKt.launch$default(LifecycleOwnerKt.getLifecycleScope(premiumOfferDialogFragment), null, null, new C38093(null), 3, null);
                return;
            }
        }
        String string2 = getString(C3656R.string.no_upi_apps_found);
        Intrinsics.checkNotNullExpressionValue(string2, "getString(...)");
        showError(string2);
        showUpiSelectionBottomSheet();
    }

    /* JADX INFO: renamed from: com.rebuilt.app.keep.screen.premium.PremiumOfferDialogFragment$handleStartTrial$3 */
    /* JADX INFO: compiled from: PremiumOfferDialogFragment.kt */
    @Metadata(m2721d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, m2722d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, m2723k = 3, m2724mv = {2, 0, 0}, m2726xi = 48)
    @DebugMetadata(m2734c = "com.rebuilt.app.keep.screen.premium.PremiumOfferDialogFragment$handleStartTrial$3", m2735f = "PremiumOfferDialogFragment.kt", m2736i = {1}, m2737l = {866, 867}, m2738m = "invokeSuspend", m2739n = {"userId"}, m2740s = {"L$0"})
    static final class C38093 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        Object L$0;
        int label;

        C38093(Continuation<? super C38093> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return PremiumOfferDialogFragment.this.new C38093(continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((C38093) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        /* JADX WARN: Removed duplicated region for block: B:19:0x00d6  */
        /* JADX WARN: Removed duplicated region for block: B:20:0x00d9  */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.lang.Object invokeSuspend(java.lang.Object r13) {
            /*
                Method dump skipped, instruction units count: 256
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.rebuilt.app.keep.screen.premium.PremiumOfferDialogFragment.C38093.invokeSuspend(java.lang.Object):java.lang.Object");
        }
    }

    private final void initiateRazorpayPayment(CreateSubscriptionResponse response) {
        this.currentSubscriptionId = response.getSubscriptionId();
        InstalledUpiApp installedUpiApp = this.selectedUpiApp;
        if (installedUpiApp == null) {
            String string = getString(C3656R.string.please_select_upi_app);
            Intrinsics.checkNotNullExpressionValue(string, "getString(...)");
            showPaymentFailedBottomSheet(string);
            return;
        }
        initiatePaymentWithSubscription(response, installedUpiApp);
    }

    private final void initiatePaymentWithSubscription(CreateSubscriptionResponse response, InstalledUpiApp upiApp) {
        Razorpay razorpay = this.razorpayCustom;
        DialogPremiumOfferBinding dialogPremiumOfferBinding = get_binding();
        WebView webView = dialogPremiumOfferBinding != null ? dialogPremiumOfferBinding.paymentWebview : null;
        if (razorpay == null || webView == null) {
            String string = getString(C3656R.string.failed_to_initiate_payment, "Razorpay not initialized");
            Intrinsics.checkNotNullExpressionValue(string, "getString(...)");
            showPaymentFailedBottomSheet(string);
            return;
        }
        SubscriptionPlan subscriptionPlan = this.selectedPlan;
        if (subscriptionPlan == null) {
            String string2 = getString(C3656R.string.please_select_subscription_plan);
            Intrinsics.checkNotNullExpressionValue(string2, "getString(...)");
            showPaymentFailedBottomSheet(string2);
            return;
        }
        int discountedPrice = subscriptionPlan.getHasTrial() ? 500 : subscriptionPlan.getDiscountedPrice() * 100;
        if (discountedPrice >= 100) {
            BuildersKt__Builders_commonKt.launch$default(LifecycleOwnerKt.getLifecycleScope(this), null, null, new C38101(response, razorpay, webView, discountedPrice, subscriptionPlan, upiApp, null), 3, null);
            return;
        }
        String string3 = getString(C3656R.string.failed_to_initiate_payment, "Invalid amount");
        Intrinsics.checkNotNullExpressionValue(string3, "getString(...)");
        showPaymentFailedBottomSheet(string3);
    }

    /* JADX INFO: renamed from: com.rebuilt.app.keep.screen.premium.PremiumOfferDialogFragment$initiatePaymentWithSubscription$1 */
    /* JADX INFO: compiled from: PremiumOfferDialogFragment.kt */
    @Metadata(m2721d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, m2722d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, m2723k = 3, m2724mv = {2, 0, 0}, m2726xi = 48)
    @DebugMetadata(m2734c = "com.rebuilt.app.keep.screen.premium.PremiumOfferDialogFragment$initiatePaymentWithSubscription$1", m2735f = "PremiumOfferDialogFragment.kt", m2736i = {1}, m2737l = {909, 910}, m2738m = "invokeSuspend", m2739n = {"mobileNumber"}, m2740s = {"L$0"})
    static final class C38101 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ int $amountPaise;
        final /* synthetic */ SubscriptionPlan $plan;
        final /* synthetic */ Razorpay $razorpay;
        final /* synthetic */ CreateSubscriptionResponse $response;
        final /* synthetic */ InstalledUpiApp $upiApp;
        final /* synthetic */ WebView $webView;
        Object L$0;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C38101(CreateSubscriptionResponse createSubscriptionResponse, Razorpay razorpay, WebView webView, int i, SubscriptionPlan subscriptionPlan, InstalledUpiApp installedUpiApp, Continuation<? super C38101> continuation) {
            super(2, continuation);
            this.$response = createSubscriptionResponse;
            this.$razorpay = razorpay;
            this.$webView = webView;
            this.$amountPaise = i;
            this.$plan = subscriptionPlan;
            this.$upiApp = installedUpiApp;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return PremiumOfferDialogFragment.this.new C38101(this.$response, this.$razorpay, this.$webView, this.$amountPaise, this.$plan, this.$upiApp, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((C38101) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        /* JADX WARN: Removed duplicated region for block: B:20:0x0090  */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.lang.Object invokeSuspend(java.lang.Object r11) throws org.json.JSONException {
            /*
                Method dump skipped, instruction units count: 387
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.rebuilt.app.keep.screen.premium.PremiumOfferDialogFragment.C38101.invokeSuspend(java.lang.Object):java.lang.Object");
        }
    }

    private final void hidePaymentWebView() {
        WebView webView;
        DialogPremiumOfferBinding dialogPremiumOfferBinding = get_binding();
        if (dialogPremiumOfferBinding == null || (webView = dialogPremiumOfferBinding.paymentWebview) == null) {
            return;
        }
        webView.setVisibility(8);
    }

    @Override // com.razorpay.PaymentResultWithDataListener
    public void onPaymentSuccess(String razorpayPaymentId, PaymentData paymentData) {
        String strOptString;
        JSONObject data;
        String strOptString2;
        JSONObject data2;
        Intrinsics.checkNotNullParameter(razorpayPaymentId, "razorpayPaymentId");
        hidePaymentWebView();
        Pair[] pairArr = new Pair[2];
        pairArr[0] = new Pair("payment_id", razorpayPaymentId);
        String str = this.currentSubscriptionId;
        String str2 = "";
        if (str == null) {
            str = "";
        }
        pairArr[1] = new Pair("subscription_id", str);
        recordClickEvent(ConstantEventNames.PAYMENT_SUCCESS, MapsKt.hashMapOf(pairArr));
        SubscriptionPlan subscriptionPlan = this.selectedPlan;
        if (subscriptionPlan != null) {
            double discountedPrice = subscriptionPlan.getHasTrial() ? 0.0d : subscriptionPlan.getDiscountedPrice();
            FacebookPaymentEvents facebookPaymentEvents = FacebookPaymentEvents.INSTANCE;
            Context contextRequireContext = requireContext();
            Intrinsics.checkNotNullExpressionValue(contextRequireContext, "requireContext(...)");
            facebookPaymentEvents.logPurchase(contextRequireContext, discountedPrice, subscriptionPlan.getCurrency(), this.installSource);
        }
        String string = getString(C3656R.string.verifying_payment);
        Intrinsics.checkNotNullExpressionValue(string, "getString(...)");
        showVerificationScreen(string);
        if (paymentData == null || (data2 = paymentData.getData()) == null || (strOptString = data2.optString("razorpay_subscription_id")) == null) {
            strOptString = "";
        }
        if (paymentData == null || (data = paymentData.getData()) == null || (strOptString2 = data.optString("razorpay_signature")) == null) {
            String signature = paymentData != null ? paymentData.getSignature() : null;
            if (signature != null) {
                str2 = signature;
            }
        } else {
            str2 = strOptString2;
        }
        if (this.currentSubscriptionId != null && strOptString.length() > 0) {
            String str3 = this.currentSubscriptionId;
            Intrinsics.checkNotNull(str3);
            startVerificationPolling(str3, new VerifySubscriptionRequest(strOptString, razorpayPaymentId, str2));
        } else {
            hideVerificationScreen();
            String string2 = getString(C3656R.string.payment_failed_try_again);
            Intrinsics.checkNotNullExpressionValue(string2, "getString(...)");
            showPaymentFailedBottomSheet(string2);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:45:0x00f6 A[PHI: r3
      0x00f6: PHI (r3v13 java.lang.String) = (r3v3 java.lang.String), (r3v15 java.lang.String) binds: [B:43:0x00f3, B:39:0x00e9] A[DONT_GENERATE, DONT_INLINE]] */
    @Override // com.razorpay.PaymentResultWithDataListener
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void onPaymentError(int r16, java.lang.String r17, com.razorpay.PaymentData r18) {
        /*
            Method dump skipped, instruction units count: 326
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.rebuilt.app.keep.screen.premium.PremiumOfferDialogFragment.onPaymentError(int, java.lang.String, com.razorpay.PaymentData):void");
    }

    private final void showVerificationScreen(String message) {
        showSpinnerLoading(false);
        DialogPremiumOfferBinding dialogPremiumOfferBinding = get_binding();
        if (dialogPremiumOfferBinding != null) {
            dialogPremiumOfferBinding.clVerificationOverlay.setVisibility(0);
            dialogPremiumOfferBinding.tvVerificationMessage.setText(message);
            dialogPremiumOfferBinding.scrollContent.setEnabled(false);
            dialogPremiumOfferBinding.clBottomSection.setEnabled(false);
            dialogPremiumOfferBinding.ivClose.setVisibility(8);
        }
        setCancelable(false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void hideVerificationScreen() {
        DialogPremiumOfferBinding dialogPremiumOfferBinding = get_binding();
        if (dialogPremiumOfferBinding != null) {
            dialogPremiumOfferBinding.clVerificationOverlay.setVisibility(8);
            dialogPremiumOfferBinding.scrollContent.setEnabled(true);
            dialogPremiumOfferBinding.clBottomSection.setEnabled(true);
            dialogPremiumOfferBinding.ivClose.setVisibility(0);
        }
        setCancelable(true);
        this.isVerificationInProgress = false;
        this.verificationAttempts = 0;
    }

    private final void startVerificationPolling(String subscriptionId, VerifySubscriptionRequest verifyRequest) {
        if (this.isVerificationInProgress) {
            return;
        }
        this.isVerificationInProgress = true;
        this.verificationAttempts = 0;
        BuildersKt__Builders_commonKt.launch$default(LifecycleOwnerKt.getLifecycleScope(this), null, null, new C38231(subscriptionId, verifyRequest, null), 3, null);
    }

    /* JADX INFO: renamed from: com.rebuilt.app.keep.screen.premium.PremiumOfferDialogFragment$startVerificationPolling$1 */
    /* JADX INFO: compiled from: PremiumOfferDialogFragment.kt */
    @Metadata(m2721d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, m2722d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, m2723k = 3, m2724mv = {2, 0, 0}, m2726xi = 48)
    @DebugMetadata(m2734c = "com.rebuilt.app.keep.screen.premium.PremiumOfferDialogFragment$startVerificationPolling$1", m2735f = "PremiumOfferDialogFragment.kt", m2736i = {}, m2737l = {1031}, m2738m = "invokeSuspend", m2739n = {}, m2740s = {})
    static final class C38231 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ String $subscriptionId;
        final /* synthetic */ VerifySubscriptionRequest $verifyRequest;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C38231(String str, VerifySubscriptionRequest verifySubscriptionRequest, Continuation<? super C38231> continuation) {
            super(2, continuation);
            this.$subscriptionId = str;
            this.$verifyRequest = verifySubscriptionRequest;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return PremiumOfferDialogFragment.this.new C38231(this.$subscriptionId, this.$verifyRequest, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((C38231) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            TextView textView;
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i != 0 && i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(obj);
            while (PremiumOfferDialogFragment.this.verificationAttempts < PremiumOfferDialogFragment.this.maxVerificationAttempts && PremiumOfferDialogFragment.this.isVerificationInProgress) {
                PremiumOfferDialogFragment.this.verificationAttempts++;
                PremiumOfferDialogFragment.this.getViewModel().verifySubscription(this.$subscriptionId, this.$verifyRequest);
                this.label = 1;
                if (DelayKt.delay(3000L, this) == coroutine_suspended) {
                    return coroutine_suspended;
                }
            }
            if (PremiumOfferDialogFragment.this.isVerificationInProgress) {
                PremiumOfferDialogFragment.this.verificationAttempts = 0;
                DialogPremiumOfferBinding dialogPremiumOfferBinding = PremiumOfferDialogFragment.this.get_binding();
                if (dialogPremiumOfferBinding != null && (textView = dialogPremiumOfferBinding.tvVerificationMessage) != null) {
                    textView.setText(PremiumOfferDialogFragment.this.getString(C3656R.string.checking_subscription_status));
                }
                PremiumOfferDialogFragment.this.startStatusPolling(this.$subscriptionId);
            }
            return Unit.INSTANCE;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void startStatusPolling(String subscriptionId) {
        if (this.isVerificationInProgress) {
            return;
        }
        this.isVerificationInProgress = true;
        this.verificationAttempts = 0;
        BuildersKt__Builders_commonKt.launch$default(LifecycleOwnerKt.getLifecycleScope(this), null, null, new C38201(null), 3, null);
    }

    /* JADX INFO: renamed from: com.rebuilt.app.keep.screen.premium.PremiumOfferDialogFragment$startStatusPolling$1 */
    /* JADX INFO: compiled from: PremiumOfferDialogFragment.kt */
    @Metadata(m2721d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, m2722d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, m2723k = 3, m2724mv = {2, 0, 0}, m2726xi = 48)
    @DebugMetadata(m2734c = "com.rebuilt.app.keep.screen.premium.PremiumOfferDialogFragment$startStatusPolling$1", m2735f = "PremiumOfferDialogFragment.kt", m2736i = {1}, m2737l = {MetaDo.META_INTERSECTCLIPRECT, ClientProto.OAUTH_SCOPES_FIELD_NUMBER}, m2738m = "invokeSuspend", m2739n = {"userId"}, m2740s = {"L$0"})
    static final class C38201 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        Object L$0;
        int label;

        C38201(Continuation<? super C38201> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return PremiumOfferDialogFragment.this.new C38201(continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((C38201) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        /*  JADX ERROR: JadxRuntimeException in pass: RegionMakerVisitor
            jadx.core.utils.exceptions.JadxRuntimeException: Not found exit edge by exit block: B:15:0x0052
            	at jadx.core.dex.visitors.regions.maker.LoopRegionMaker.checkLoopExits(LoopRegionMaker.java:226)
            	at jadx.core.dex.visitors.regions.maker.LoopRegionMaker.makeLoopRegion(LoopRegionMaker.java:196)
            	at jadx.core.dex.visitors.regions.maker.LoopRegionMaker.process(LoopRegionMaker.java:63)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:89)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:66)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeMthRegion(RegionMaker.java:48)
            	at jadx.core.dex.visitors.regions.RegionMakerVisitor.visit(RegionMakerVisitor.java:25)
            */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final java.lang.Object invokeSuspend(java.lang.Object r7) {
            /*
                r6 = this;
                java.lang.Object r0 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
                int r1 = r6.label
                r2 = 2
                r3 = 1
                if (r1 == 0) goto L22
                if (r1 == r3) goto L1e
                if (r1 != r2) goto L16
                java.lang.Object r1 = r6.L$0
                java.lang.String r1 = (java.lang.String) r1
                kotlin.ResultKt.throwOnFailure(r7)
                goto L46
            L16:
                java.lang.IllegalStateException r7 = new java.lang.IllegalStateException
                java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
                r7.<init>(r0)
                throw r7
            L1e:
                kotlin.ResultKt.throwOnFailure(r7)
                goto L43
            L22:
                kotlin.ResultKt.throwOnFailure(r7)
                com.rebuilt.app.keep.screen.premium.PremiumOfferDialogFragment r7 = com.rebuilt.app.keep.screen.premium.PremiumOfferDialogFragment.this
                com.rebuilt.app.base.datastore.DataStoreManager r7 = com.rebuilt.app.keep.screen.premium.PremiumOfferDialogFragment.access$getDataStoreManager(r7)
                com.rebuilt.app.base.datastore.DataStoreManager$Companion r1 = com.rebuilt.app.base.datastore.DataStoreManager.INSTANCE
                androidx.datastore.preferences.core.Preferences$Key r1 = r1.getUSER_ID()
                java.lang.String r4 = ""
                kotlinx.coroutines.flow.Flow r7 = r7.read(r1, r4)
                r1 = r6
                kotlin.coroutines.Continuation r1 = (kotlin.coroutines.Continuation) r1
                r6.label = r3
                java.lang.Object r7 = kotlinx.coroutines.flow.FlowKt.first(r7, r1)
                if (r7 != r0) goto L43
                return r0
            L43:
                java.lang.String r7 = (java.lang.String) r7
                r1 = r7
            L46:
                com.rebuilt.app.keep.screen.premium.PremiumOfferDialogFragment r7 = com.rebuilt.app.keep.screen.premium.PremiumOfferDialogFragment.this
                int r7 = com.rebuilt.app.keep.screen.premium.PremiumOfferDialogFragment.access$getVerificationAttempts$p(r7)
                com.rebuilt.app.keep.screen.premium.PremiumOfferDialogFragment r4 = com.rebuilt.app.keep.screen.premium.PremiumOfferDialogFragment.this
                int r4 = com.rebuilt.app.keep.screen.premium.PremiumOfferDialogFragment.access$getMaxVerificationAttempts$p(r4)
                if (r7 >= r4) goto L81
                com.rebuilt.app.keep.screen.premium.PremiumOfferDialogFragment r7 = com.rebuilt.app.keep.screen.premium.PremiumOfferDialogFragment.this
                boolean r7 = com.rebuilt.app.keep.screen.premium.PremiumOfferDialogFragment.access$isVerificationInProgress$p(r7)
                if (r7 == 0) goto L81
                com.rebuilt.app.keep.screen.premium.PremiumOfferDialogFragment r7 = com.rebuilt.app.keep.screen.premium.PremiumOfferDialogFragment.this
                int r7 = com.rebuilt.app.keep.screen.premium.PremiumOfferDialogFragment.access$getVerificationAttempts$p(r7)
                com.rebuilt.app.keep.screen.premium.PremiumOfferDialogFragment r4 = com.rebuilt.app.keep.screen.premium.PremiumOfferDialogFragment.this
                int r7 = r7 + r3
                com.rebuilt.app.keep.screen.premium.PremiumOfferDialogFragment.access$setVerificationAttempts$p(r4, r7)
                com.rebuilt.app.keep.screen.premium.PremiumOfferDialogFragment r7 = com.rebuilt.app.keep.screen.premium.PremiumOfferDialogFragment.this
                com.rebuilt.app.keep.screen.premium.viewmodel.SubscriptionViewModel r7 = com.rebuilt.app.keep.screen.premium.PremiumOfferDialogFragment.access$getViewModel(r7)
                r7.checkUserSubscriptionStatus(r1)
                r7 = r6
                kotlin.coroutines.Continuation r7 = (kotlin.coroutines.Continuation) r7
                r6.L$0 = r1
                r6.label = r2
                r4 = 3000(0xbb8, double:1.482E-320)
                java.lang.Object r7 = kotlinx.coroutines.DelayKt.delay(r4, r7)
                if (r7 != r0) goto L46
                return r0
            L81:
                com.rebuilt.app.keep.screen.premium.PremiumOfferDialogFragment r7 = com.rebuilt.app.keep.screen.premium.PremiumOfferDialogFragment.this
                boolean r7 = com.rebuilt.app.keep.screen.premium.PremiumOfferDialogFragment.access$isVerificationInProgress$p(r7)
                if (r7 == 0) goto L9e
                com.rebuilt.app.keep.screen.premium.PremiumOfferDialogFragment r7 = com.rebuilt.app.keep.screen.premium.PremiumOfferDialogFragment.this
                com.rebuilt.app.keep.screen.premium.PremiumOfferDialogFragment.access$hideVerificationScreen(r7)
                com.rebuilt.app.keep.screen.premium.PremiumOfferDialogFragment r7 = com.rebuilt.app.keep.screen.premium.PremiumOfferDialogFragment.this
                int r0 = com.rebuilt.app.keep.C3656R.string.payment_failed_try_again
                java.lang.String r0 = r7.getString(r0)
                java.lang.String r1 = "getString(...)"
                kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r0, r1)
                com.rebuilt.app.keep.screen.premium.PremiumOfferDialogFragment.access$showPaymentFailedBottomSheet(r7, r0)
            L9e:
                kotlin.Unit r7 = kotlin.Unit.INSTANCE
                return r7
            */
            throw new UnsupportedOperationException("Method not decompiled: com.rebuilt.app.keep.screen.premium.PremiumOfferDialogFragment.C38201.invokeSuspend(java.lang.Object):java.lang.Object");
        }
    }

    private final void showLoading(boolean show) {
        DialogPremiumOfferBinding dialogPremiumOfferBinding = get_binding();
        if (dialogPremiumOfferBinding != null) {
            if (show) {
                dialogPremiumOfferBinding.clLoadingOverlay.setVisibility(0);
                dialogPremiumOfferBinding.pbLoading.setVisibility(0);
                dialogPremiumOfferBinding.llPriceDisplay.setVisibility(8);
                dialogPremiumOfferBinding.llHowTrialWorks.setVisibility(8);
                dialogPremiumOfferBinding.llNoTrialSection.setVisibility(8);
                dialogPremiumOfferBinding.btnStartTrial.setEnabled(false);
                return;
            }
            dialogPremiumOfferBinding.clLoadingOverlay.setVisibility(8);
            dialogPremiumOfferBinding.pbLoading.setVisibility(8);
            dialogPremiumOfferBinding.llPriceDisplay.setVisibility(0);
            dialogPremiumOfferBinding.btnStartTrial.setEnabled(true);
            dialogPremiumOfferBinding.btnStartTrial.setText(getStartTrialButtonText(this.selectedPlan));
        }
    }

    private final void showSpinnerLoading(boolean show) {
        String startTrialButtonText;
        DialogPremiumOfferBinding dialogPremiumOfferBinding = get_binding();
        if (dialogPremiumOfferBinding != null) {
            dialogPremiumOfferBinding.pbButtonLoading.setVisibility(show ? 0 : 8);
            dialogPremiumOfferBinding.btnStartTrial.setEnabled(!show);
            RoundedPrimaryButton roundedPrimaryButton = dialogPremiumOfferBinding.btnStartTrial;
            if (show) {
                String string = getString(C3656R.string.processing);
                Intrinsics.checkNotNullExpressionValue(string, "getString(...)");
                startTrialButtonText = string;
            } else {
                startTrialButtonText = getStartTrialButtonText(this.selectedPlan);
            }
            roundedPrimaryButton.setText(startTrialButtonText);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void showErrorLoading(String message) {
        DialogPremiumOfferBinding dialogPremiumOfferBinding = get_binding();
        if (dialogPremiumOfferBinding != null) {
            dialogPremiumOfferBinding.clLoadingOverlay.setVisibility(0);
            dialogPremiumOfferBinding.pbLoading.setVisibility(0);
            dialogPremiumOfferBinding.btnStartTrial.setEnabled(false);
            dialogPremiumOfferBinding.scrollContent.setEnabled(false);
        }
        showError(message);
        DialogPremiumOfferBinding dialogPremiumOfferBinding2 = get_binding();
        if (dialogPremiumOfferBinding2 != null) {
            BuildersKt__Builders_commonKt.launch$default(LifecycleOwnerKt.getLifecycleScope(this), null, null, new PremiumOfferDialogFragment$showErrorLoading$2$1(dialogPremiumOfferBinding2, this, null), 3, null);
        }
    }

    private final void showError(String message) {
        Toast.makeText(requireContext(), message, 1).show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void showPaymentFailedBottomSheet(String message) {
        restoreSubscriptionPageUI();
        PaymentFailedBottomSheet.Companion.newInstance$default(PaymentFailedBottomSheet.INSTANCE, message, null, 2, null).show(getParentFragmentManager(), PaymentFailedBottomSheet.TAG);
    }

    private final void restoreSubscriptionPageUI() {
        this.paymentFlowInProgress = false;
        hideVerificationScreen();
        DialogPremiumOfferBinding dialogPremiumOfferBinding = get_binding();
        if (dialogPremiumOfferBinding != null) {
            dialogPremiumOfferBinding.clLoadingOverlay.setVisibility(8);
            dialogPremiumOfferBinding.pbLoading.setVisibility(8);
            dialogPremiumOfferBinding.pbButtonLoading.setVisibility(8);
            dialogPremiumOfferBinding.scrollContent.setEnabled(true);
            dialogPremiumOfferBinding.btnStartTrial.setEnabled(true);
            dialogPremiumOfferBinding.btnStartTrial.setText(getStartTrialButtonText(this.selectedPlan));
        }
    }

    private final void showSuccessDialog() {
        this.paymentFlowInProgress = false;
        BuildersKt__Builders_commonKt.launch$default(LifecycleOwnerKt.getLifecycleScope(this), null, null, new C38171(null), 3, null);
        SubscriptionPlan subscriptionPlan = this.selectedPlan;
        if (subscriptionPlan != null) {
            if (subscriptionPlan.getHasTrial()) {
                FacebookPaymentEvents facebookPaymentEvents = FacebookPaymentEvents.INSTANCE;
                Context contextRequireContext = requireContext();
                Intrinsics.checkNotNullExpressionValue(contextRequireContext, "requireContext(...)");
                facebookPaymentEvents.logStartTrial(contextRequireContext, 0.0d, subscriptionPlan.getCurrency(), subscriptionPlan.getId(), this.installSource);
            } else {
                FacebookPaymentEvents facebookPaymentEvents2 = FacebookPaymentEvents.INSTANCE;
                Context contextRequireContext2 = requireContext();
                Intrinsics.checkNotNullExpressionValue(contextRequireContext2, "requireContext(...)");
                facebookPaymentEvents2.logSubscribe(contextRequireContext2, subscriptionPlan.getDiscountedPrice(), subscriptionPlan.getCurrency(), subscriptionPlan.getId(), this.installSource);
            }
        }
        setCancelable(true);
        dismiss();
        SubscriptionSuccessDialogFragment.INSTANCE.newInstance().show(getParentFragmentManager(), SubscriptionSuccessDialogFragment.TAG);
    }

    /* JADX INFO: renamed from: com.rebuilt.app.keep.screen.premium.PremiumOfferDialogFragment$showSuccessDialog$1 */
    /* JADX INFO: compiled from: PremiumOfferDialogFragment.kt */
    @Metadata(m2721d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, m2722d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, m2723k = 3, m2724mv = {2, 0, 0}, m2726xi = 48)
    @DebugMetadata(m2734c = "com.rebuilt.app.keep.screen.premium.PremiumOfferDialogFragment$showSuccessDialog$1", m2735f = "PremiumOfferDialogFragment.kt", m2736i = {}, m2737l = {1134}, m2738m = "invokeSuspend", m2739n = {}, m2740s = {})
    static final class C38171 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        int label;

        C38171(Continuation<? super C38171> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return PremiumOfferDialogFragment.this.new C38171(continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((C38171) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                this.label = 1;
                if (PremiumOfferDialogFragment.this.getDataStoreManager().write(DataStoreManager.INSTANCE.getIS_EXISTING_USER(), Boxing.boxBoolean(true), this) == coroutine_suspended) {
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

    /* JADX INFO: renamed from: com.rebuilt.app.keep.screen.premium.PremiumOfferDialogFragment$triggerImpressionEvent$1 */
    /* JADX INFO: compiled from: PremiumOfferDialogFragment.kt */
    @Metadata(m2721d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, m2722d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, m2723k = 3, m2724mv = {2, 0, 0}, m2726xi = 48)
    @DebugMetadata(m2734c = "com.rebuilt.app.keep.screen.premium.PremiumOfferDialogFragment$triggerImpressionEvent$1", m2735f = "PremiumOfferDialogFragment.kt", m2736i = {}, m2737l = {}, m2738m = "invokeSuspend", m2739n = {}, m2740s = {})
    static final class C38241 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ String $eventName;
        final /* synthetic */ HashMap<String, Object> $hashMap;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C38241(String str, HashMap<String, Object> map, Continuation<? super C38241> continuation) {
            super(2, continuation);
            this.$eventName = str;
            this.$hashMap = map;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return PremiumOfferDialogFragment.this.new C38241(this.$eventName, this.$hashMap, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((C38241) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (this.label != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(obj);
            try {
                PremiumOfferDialogFragment.this.getAnalytics().logEvent(this.$eventName, "impression", CollectionsKt.listOf(AnalyticsPlatforms.FIREBASE), this.$hashMap);
            } catch (Exception unused) {
            }
            return Unit.INSTANCE;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    static /* synthetic */ void triggerImpressionEvent$default(PremiumOfferDialogFragment premiumOfferDialogFragment, String str, HashMap map, int i, Object obj) {
        if ((i & 2) != 0) {
            map = null;
        }
        premiumOfferDialogFragment.triggerImpressionEvent(str, map);
    }

    private final void triggerImpressionEvent(String eventName, HashMap<String, Object> hashMap) {
        try {
            BuildersKt__Builders_commonKt.launch$default(LifecycleOwnerKt.getLifecycleScope(this), Dispatchers.getIO(), null, new C38241(eventName, hashMap, null), 2, null);
        } catch (Exception unused) {
        }
    }

    /* JADX INFO: renamed from: com.rebuilt.app.keep.screen.premium.PremiumOfferDialogFragment$recordClickEvent$1 */
    /* JADX INFO: compiled from: PremiumOfferDialogFragment.kt */
    @Metadata(m2721d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, m2722d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, m2723k = 3, m2724mv = {2, 0, 0}, m2726xi = 48)
    @DebugMetadata(m2734c = "com.rebuilt.app.keep.screen.premium.PremiumOfferDialogFragment$recordClickEvent$1", m2735f = "PremiumOfferDialogFragment.kt", m2736i = {}, m2737l = {}, m2738m = "invokeSuspend", m2739n = {}, m2740s = {})
    static final class C38151 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ String $eventName;
        final /* synthetic */ HashMap<String, Object> $hashMap;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C38151(String str, HashMap<String, Object> map, Continuation<? super C38151> continuation) {
            super(2, continuation);
            this.$eventName = str;
            this.$hashMap = map;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return PremiumOfferDialogFragment.this.new C38151(this.$eventName, this.$hashMap, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((C38151) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (this.label != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(obj);
            try {
                PremiumOfferDialogFragment.this.getAnalytics().logEvent(this.$eventName, "click", CollectionsKt.listOf(AnalyticsPlatforms.FIREBASE), this.$hashMap);
            } catch (Exception unused) {
            }
            return Unit.INSTANCE;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    static /* synthetic */ void recordClickEvent$default(PremiumOfferDialogFragment premiumOfferDialogFragment, String str, HashMap map, int i, Object obj) {
        if ((i & 2) != 0) {
            map = null;
        }
        premiumOfferDialogFragment.recordClickEvent(str, map);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void recordClickEvent(String eventName, HashMap<String, Object> hashMap) {
        try {
            BuildersKt__Builders_commonKt.launch$default(LifecycleOwnerKt.getLifecycleScope(this), Dispatchers.getIO(), null, new C38151(eventName, hashMap, null), 2, null);
        } catch (Exception unused) {
        }
    }

    public final void onActivityResultForRazorpay(int requestCode, int resultCode, Intent data) {
        Razorpay razorpay = this.razorpayCustom;
        if (razorpay != null) {
            razorpay.onActivityResult(requestCode, resultCode, data);
        }
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onDestroyView() {
        VideoView videoView;
        super.onDestroyView();
        DialogPremiumOfferBinding dialogPremiumOfferBinding = get_binding();
        if (dialogPremiumOfferBinding != null && (videoView = dialogPremiumOfferBinding.videoSubscriptionExplainer) != null) {
            videoView.stopPlayback();
        }
        stopOfferCountdown();
        this.offerTimerEndAtElapsedMs = null;
        Job job = this.socialProofJob;
        if (job != null) {
            Job.DefaultImpls.cancel$default(job, (CancellationException) null, 1, (Object) null);
        }
        this.socialProofJob = null;
        Job job2 = this.testimonialJob;
        if (job2 != null) {
            Job.DefaultImpls.cancel$default(job2, (CancellationException) null, 1, (Object) null);
        }
        this.testimonialJob = null;
        this.isVerificationInProgress = false;
        this.razorpayCustom = null;
        this._binding = null;
    }

    /* JADX INFO: compiled from: PremiumOfferDialogFragment.kt */
    @Metadata(m2721d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u001c\u0010\b\u001a\u00020\t2\b\b\u0002\u0010\n\u001a\u00020\u000b2\b\b\u0002\u0010\f\u001a\u00020\u000bH\u0007R\u000e\u0010\u0004\u001a\u00020\u0005X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0005X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0005X\u0082T¢\u0006\u0002\n\u0000¨\u0006\r"}, m2722d2 = {"Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment$Companion;", "", "<init>", "()V", "TAG", "", "ARG_IS_TRIAL_EXPIRED", "ARG_IS_HARD_PAYWALL", "newInstance", "Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;", "isTrialExpired", "", "isHardPaywall", "keep_release"}, m2723k = 1, m2724mv = {2, 0, 0}, m2726xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public static /* synthetic */ PremiumOfferDialogFragment newInstance$default(Companion companion, boolean z, boolean z2, int i, Object obj) {
            if ((i & 1) != 0) {
                z = false;
            }
            if ((i & 2) != 0) {
                z2 = false;
            }
            return companion.newInstance(z, z2);
        }

        @JvmStatic
        public final PremiumOfferDialogFragment newInstance(boolean isTrialExpired, boolean isHardPaywall) {
            PremiumOfferDialogFragment premiumOfferDialogFragment = new PremiumOfferDialogFragment();
            Bundle bundle = new Bundle();
            bundle.putBoolean(PremiumOfferDialogFragment.ARG_IS_TRIAL_EXPIRED, isTrialExpired);
            bundle.putBoolean(PremiumOfferDialogFragment.ARG_IS_HARD_PAYWALL, isHardPaywall);
            premiumOfferDialogFragment.setArguments(bundle);
            return premiumOfferDialogFragment;
        }
    }
}
