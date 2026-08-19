package com.laborbook.keep.screen.calendar.fragment;

import android.animation.ObjectAnimator;
import android.content.ComponentCallbacks;
import android.content.Context;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Bundle;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewPropertyAnimator;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.Toast;
import androidx.activity.result.ActivityResultCallback;
import androidx.activity.result.ActivityResultLauncher;
import androidx.activity.result.contract.ActivityResultContracts;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.core.content.ContextCompat;
import androidx.fragment.app.FragmentActivity;
import androidx.fragment.app.FragmentResultListener;
import androidx.lifecycle.LifecycleOwner;
import androidx.lifecycle.LifecycleOwnerKt;
import androidx.recyclerview.widget.RecyclerView;
import com.amplitude.core.events.Identify;
import com.boilerplate.uikit.views.ExtentionsKt;
import com.boilerplate.uikit.views.textviews.text12.TextViewBold12;
import com.boilerplate.uikit.views.textviews.text14.TextViewBoldPrimaryColor14;
import com.boilerplate.uikit.views.textviews.text16.TextViewBold16;
import com.boilerplate.uikit.views.textviews.text18.TextViewBold18;
import com.facebook.appevents.AppEventsConstants;
import com.google.android.gms.tasks.OnCompleteListener;
import com.google.android.gms.tasks.Task;
import com.google.android.material.bottomsheet.BottomSheetDialogFragment;
import com.google.android.play.core.review.ReviewInfo;
import com.google.android.play.core.review.ReviewManager;
import com.google.android.play.core.review.ReviewManagerFactory;
import com.itextpdf.barcodes.Barcode128;
import com.laborbook.base.BaseExtensionKt;
import com.laborbook.base.BaseFragment;
import com.laborbook.base.analytics.ConstantEventAttributes;
import com.laborbook.base.analytics.ConstantEventNames;
import com.laborbook.base.datastore.DataStoreManager;
import com.laborbook.base.navigator.FragmentNavigator;
import com.laborbook.income.screen.monthchooser.MonthYearChooserFragment;
import com.laborbook.keep.C3656R;
import com.laborbook.keep.databinding.FragmentLaborMonthlyCalendarBinding;
import com.laborbook.keep.model.AttendanceItem;
import com.laborbook.keep.model.AttendanceUser;
import com.laborbook.keep.model.CurrentSalaryResponse;
import com.laborbook.keep.screen.calendar.adapter.AttendanceCalendarItemAdapter;
import com.laborbook.keep.screen.calendar.fragment.LaborMonthlyCalendarFragment;
import com.laborbook.keep.screen.calendar.uistate.CalendarUiState;
import com.laborbook.keep.screen.calendar.utils.Constants;
import com.laborbook.keep.screen.calendar.utils.ObserverUtil;
import com.laborbook.keep.screen.calendar.viewmodel.CalendarViewModel;
import com.laborbook.keep.screen.deletestaff.DeleteStaffBottomsheetFragment;
import com.laborbook.keep.screen.profile.fragment.EditProfileBottomsheetFragment;
import com.laborbook.keep.screen.report.ReportFragment;
import com.laborbook.keep.screen.status.TransactionStatusFragment;
import com.laborbook.keep.utils.CoachMarkManager;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Collection;
import java.util.Iterator;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.MapsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function4;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.text.StringsKt;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.DelayKt;
import kotlinx.coroutines.Dispatchers;
import kotlinx.coroutines.flow.FlowKt;
import org.koin.android.ext.android.ComponentCallbackExtKt;
import org.koin.androidx.viewmodel.ext.android.ViewModelStoreOwnerExtKt;
import org.koin.core.qualifier.Qualifier;
import org.objectweb.asm.Opcodes;

/* JADX INFO: compiled from: LaborMonthlyCalendarFragment.kt */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(m2721d1 = {"\u0000\u008c\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\b\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0006\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0011\n\u0002\b\t\u0018\u0000 Y2\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0001YB\u0007¢\u0006\u0004\b\u0003\u0010\u0004J\u0012\u00101\u001a\u0002022\b\u00103\u001a\u0004\u0018\u000104H\u0016J&\u00105\u001a\u0004\u0018\u00010\u00022\u0006\u00106\u001a\u0002072\b\u00108\u001a\u0004\u0018\u0001092\b\u00103\u001a\u0004\u0018\u000104H\u0016J&\u0010:\u001a\u0004\u0018\u00010;2\u0006\u00106\u001a\u0002072\b\u00108\u001a\u0004\u0018\u0001092\b\u00103\u001a\u0004\u0018\u000104H\u0016J\u001a\u0010<\u001a\u0002022\u0006\u0010=\u001a\u00020;2\b\u00103\u001a\u0004\u0018\u000104H\u0016J\u0010\u0010>\u001a\u0002022\u0006\u0010?\u001a\u00020\u0013H\u0002J\b\u0010@\u001a\u000202H\u0002J\b\u0010A\u001a\u000202H\u0002J\b\u0010B\u001a\u000202H\u0002J\b\u0010C\u001a\u000202H\u0002J\b\u0010D\u001a\u000202H\u0002J\b\u0010E\u001a\u000202H\u0002J\u0010\u0010F\u001a\u0002022\u0006\u0010G\u001a\u00020+H\u0002J\b\u0010H\u001a\u000202H\u0002J\b\u0010I\u001a\u000202H\u0002J\b\u0010J\u001a\u000202H\u0002J\b\u0010K\u001a\u000202H\u0002J\b\u0010L\u001a\u000202H\u0002J\b\u0010M\u001a\u00020\u0006H\u0002J\b\u0010N\u001a\u000202H\u0002J\b\u0010S\u001a\u000202H\u0002J\b\u0010T\u001a\u000202H\u0002J\u0010\u0010U\u001a\u0002022\u0006\u0010V\u001a\u00020\u0006H\u0002J\b\u0010W\u001a\u000202H\u0002J\b\u0010X\u001a\u000202H\u0016R\u0014\u0010\u0005\u001a\u00020\u00068VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0007\u0010\bR\u000e\u0010\t\u001a\u00020\nX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\nX\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\f\u001a\u0004\u0018\u00010\u0006X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\nX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u0006X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0006X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u0010\u001a\u0004\u0018\u00010\u0006X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u0006X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\u0013X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0014\u001a\u00020\u0015X\u0082.¢\u0006\u0002\n\u0000R\u001b\u0010\u0016\u001a\u00020\u00178BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u001a\u0010\u001b\u001a\u0004\b\u0018\u0010\u0019R\u001b\u0010\u001c\u001a\u00020\u001d8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b \u0010\u001b\u001a\u0004\b\u001e\u0010\u001fR\u001b\u0010!\u001a\u00020\"8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b%\u0010\u001b\u001a\u0004\b#\u0010$R\u000e\u0010&\u001a\u00020\u0013X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010'\u001a\u00020\u0013X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010(\u001a\u0004\u0018\u00010)X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010*\u001a\u0004\u0018\u00010+X\u0082\u000e¢\u0006\u0002\n\u0000R\u0012\u0010,\u001a\u0004\u0018\u00010-X\u0082\u000e¢\u0006\u0004\n\u0002\u0010.R\u0010\u0010/\u001a\u0004\u0018\u000100X\u0082\u000e¢\u0006\u0002\n\u0000R(\u0010O\u001a\u001c\u0012\u0018\u0012\u0016\u0012\u0004\u0012\u00020\u0006 R*\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010Q0Q0PX\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006Z"}, m2722d2 = {"Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment;", "Lcom/laborbook/base/BaseFragment;", "Lcom/laborbook/keep/databinding/FragmentLaborMonthlyCalendarBinding;", "<init>", "()V", "screenName", "", "getScreenName", "()Ljava/lang/String;", "currentYear", "", "currentDate", "monthName", "monthNumber", "staffName", "staffFullName", "staffId", "staffPhone", "isStatsExpanded", "", "adapter", "Lcom/laborbook/keep/screen/calendar/adapter/AttendanceCalendarItemAdapter;", "viewModel", "Lcom/laborbook/keep/screen/calendar/viewmodel/CalendarViewModel;", "getViewModel", "()Lcom/laborbook/keep/screen/calendar/viewmodel/CalendarViewModel;", "viewModel$delegate", "Lkotlin/Lazy;", "observerUtil", "Lcom/laborbook/keep/screen/calendar/utils/ObserverUtil;", "getObserverUtil", "()Lcom/laborbook/keep/screen/calendar/utils/ObserverUtil;", "observerUtil$delegate", "coachMarkManager", "Lcom/laborbook/keep/utils/CoachMarkManager;", "getCoachMarkManager", "()Lcom/laborbook/keep/utils/CoachMarkManager;", "coachMarkManager$delegate", "isSalaryLoading", "isReportLoading", "refreshAnimator", "Landroid/animation/ObjectAnimator;", "currentAttendanceUser", "Lcom/laborbook/keep/model/AttendanceUser;", "currentSalary", "", "Ljava/lang/Double;", "currentSalaryData", "Lcom/laborbook/keep/model/CurrentSalaryResponse;", "onCreate", "", "savedInstanceState", "Landroid/os/Bundle;", "getViewBinding", "inflater", "Landroid/view/LayoutInflater;", "container", "Landroid/view/ViewGroup;", "onCreateView", "Landroid/view/View;", "onViewCreated", "view", "getCalendarData", "isRefresh", "setObserver", "setupView", "registerOnClickListeners", "openReport", "viewModelObserver", "triggerInAppReview", "setUserDetails", "staff", "fetchAndDisplaySalary", "setupStatsDropdown", "toggleStatsDropdown", "getCurrentDateInfo", "openMonthYearChooser", "getFormattedMonthYear", "checkPermissionsAndCapture", "requestPermissionLauncher", "Landroidx/activity/result/ActivityResultLauncher;", "", "kotlin.jvm.PlatformType", "startRefreshAnimation", "stopRefreshAnimation", "navigateToReport", "monthYear", "checkAndShowCoachMark", "onDestroyView", "Companion", "keep_release"}, m2723k = 1, m2724mv = {2, 0, 0}, m2726xi = 48)
public final class LaborMonthlyCalendarFragment extends BaseFragment<FragmentLaborMonthlyCalendarBinding> {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private AttendanceCalendarItemAdapter adapter;

    /* JADX INFO: renamed from: coachMarkManager$delegate, reason: from kotlin metadata */
    private final Lazy coachMarkManager;
    private AttendanceUser currentAttendanceUser;
    private Double currentSalary;
    private CurrentSalaryResponse currentSalaryData;
    private boolean isReportLoading;
    private boolean isSalaryLoading;
    private boolean isStatsExpanded;

    /* JADX INFO: renamed from: observerUtil$delegate, reason: from kotlin metadata */
    private final Lazy observerUtil;
    private ObjectAnimator refreshAnimator;
    private final ActivityResultLauncher<String[]> requestPermissionLauncher;

    /* JADX INFO: renamed from: viewModel$delegate, reason: from kotlin metadata */
    private final Lazy viewModel;
    private int currentYear = 2024;
    private int currentDate = 1;
    private String monthName = "Jan";
    private int monthNumber = 1;
    private String staffName = "";
    private String staffFullName = "";
    private String staffId = "";
    private String staffPhone = "";

    @JvmStatic
    public static final LaborMonthlyCalendarFragment newInstance(String str, String str2) {
        return INSTANCE.newInstance(str, str2);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public LaborMonthlyCalendarFragment() {
        final LaborMonthlyCalendarFragment laborMonthlyCalendarFragment = this;
        LazyThreadSafetyMode lazyThreadSafetyMode = LazyThreadSafetyMode.SYNCHRONIZED;
        final Qualifier qualifier = null;
        final Object[] objArr = 0 == true ? 1 : 0;
        this.viewModel = LazyKt.lazy(lazyThreadSafetyMode, (Function0) new Function0<CalendarViewModel>() { // from class: com.laborbook.keep.screen.calendar.fragment.LaborMonthlyCalendarFragment$special$$inlined$viewModel$default$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            /* JADX WARN: Type inference failed for: r0v1, types: [androidx.lifecycle.ViewModel, com.laborbook.keep.screen.calendar.viewmodel.CalendarViewModel] */
            @Override // kotlin.jvm.functions.Function0
            public final CalendarViewModel invoke() {
                return ViewModelStoreOwnerExtKt.getViewModel(laborMonthlyCalendarFragment, qualifier, Reflection.getOrCreateKotlinClass(CalendarViewModel.class), objArr);
            }
        });
        final LaborMonthlyCalendarFragment laborMonthlyCalendarFragment2 = this;
        LazyThreadSafetyMode lazyThreadSafetyMode2 = LazyThreadSafetyMode.SYNCHRONIZED;
        final Object[] objArr2 = 0 == true ? 1 : 0;
        final Object[] objArr3 = 0 == true ? 1 : 0;
        this.observerUtil = LazyKt.lazy(lazyThreadSafetyMode2, (Function0) new Function0<ObserverUtil>() { // from class: com.laborbook.keep.screen.calendar.fragment.LaborMonthlyCalendarFragment$special$$inlined$inject$default$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX WARN: Type inference failed for: r0v2, types: [com.laborbook.keep.screen.calendar.utils.ObserverUtil, java.lang.Object] */
            @Override // kotlin.jvm.functions.Function0
            public final ObserverUtil invoke() {
                ComponentCallbacks componentCallbacks = laborMonthlyCalendarFragment2;
                return ComponentCallbackExtKt.getDefaultScope(componentCallbacks).get(Reflection.getOrCreateKotlinClass(ObserverUtil.class), objArr2, objArr3);
            }
        });
        LazyThreadSafetyMode lazyThreadSafetyMode3 = LazyThreadSafetyMode.SYNCHRONIZED;
        final Object[] objArr4 = 0 == true ? 1 : 0;
        final Object[] objArr5 = 0 == true ? 1 : 0;
        this.coachMarkManager = LazyKt.lazy(lazyThreadSafetyMode3, (Function0) new Function0<CoachMarkManager>() { // from class: com.laborbook.keep.screen.calendar.fragment.LaborMonthlyCalendarFragment$special$$inlined$inject$default$2
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX WARN: Type inference failed for: r0v2, types: [com.laborbook.keep.utils.CoachMarkManager, java.lang.Object] */
            @Override // kotlin.jvm.functions.Function0
            public final CoachMarkManager invoke() {
                ComponentCallbacks componentCallbacks = laborMonthlyCalendarFragment2;
                return ComponentCallbackExtKt.getDefaultScope(componentCallbacks).get(Reflection.getOrCreateKotlinClass(CoachMarkManager.class), objArr4, objArr5);
            }
        });
        ActivityResultLauncher<String[]> activityResultLauncherRegisterForActivityResult = registerForActivityResult(new ActivityResultContracts.RequestMultiplePermissions(), new ActivityResultCallback() { // from class: com.laborbook.keep.screen.calendar.fragment.LaborMonthlyCalendarFragment$$ExternalSyntheticLambda21
            @Override // androidx.activity.result.ActivityResultCallback
            public final void onActivityResult(Object obj) {
                LaborMonthlyCalendarFragment.requestPermissionLauncher$lambda$47(this.f$0, (Map) obj);
            }
        });
        Intrinsics.checkNotNullExpressionValue(activityResultLauncherRegisterForActivityResult, "registerForActivityResult(...)");
        this.requestPermissionLauncher = activityResultLauncherRegisterForActivityResult;
    }

    @Override // com.laborbook.base.BaseFragment
    public String getScreenName() {
        return ConstantEventNames.CALENDAR;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final CalendarViewModel getViewModel() {
        return (CalendarViewModel) this.viewModel.getValue();
    }

    private final ObserverUtil getObserverUtil() {
        return (ObserverUtil) this.observerUtil.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final CoachMarkManager getCoachMarkManager() {
        return (CoachMarkManager) this.coachMarkManager.getValue();
    }

    @Override // androidx.fragment.app.Fragment
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        Bundle arguments = getArguments();
        if (arguments != null) {
            this.staffId = arguments.getString("staff_id");
            String string = arguments.getString("staff_phone");
            if (string == null) {
                string = "";
            }
            this.staffPhone = string;
        }
    }

    @Override // com.laborbook.base.BaseFragment
    public FragmentLaborMonthlyCalendarBinding getViewBinding(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        Intrinsics.checkNotNullParameter(inflater, "inflater");
        return FragmentLaborMonthlyCalendarBinding.inflate(inflater, container, false);
    }

    @Override // com.laborbook.base.BaseFragment, androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        Intrinsics.checkNotNullParameter(inflater, "inflater");
        super.onCreateView(inflater, container, savedInstanceState);
        setFirstTime(true);
        FragmentLaborMonthlyCalendarBinding binding = getBinding();
        return binding != null ? binding.getRoot() : null;
    }

    @Override // com.laborbook.base.BaseFragment, androidx.fragment.app.Fragment
    public void onViewCreated(final View view, Bundle savedInstanceState) {
        ImageView imageView;
        ConstraintLayout root;
        Intrinsics.checkNotNullParameter(view, "view");
        super.onViewCreated(view, savedInstanceState);
        getCurrentDateInfo();
        viewModelObserver();
        registerOnClickListeners();
        setupView();
        getCalendarData(false);
        setObserver();
        FragmentLaborMonthlyCalendarBinding binding = getBinding();
        if (binding != null && (root = binding.getRoot()) != null) {
            root.postDelayed(new Runnable() { // from class: com.laborbook.keep.screen.calendar.fragment.LaborMonthlyCalendarFragment$$ExternalSyntheticLambda5
                @Override // java.lang.Runnable
                public final void run() {
                    LaborMonthlyCalendarFragment.onViewCreated$lambda$1(this.f$0, view);
                }
            }, 1000L);
        }
        getParentFragmentManager().setFragmentResultListener("edit_profile_result", getViewLifecycleOwner(), new FragmentResultListener() { // from class: com.laborbook.keep.screen.calendar.fragment.LaborMonthlyCalendarFragment$$ExternalSyntheticLambda6
            @Override // androidx.fragment.app.FragmentResultListener
            public final void onFragmentResult(String str, Bundle bundle) {
                LaborMonthlyCalendarFragment.onViewCreated$lambda$2(this.f$0, str, bundle);
            }
        });
        FragmentLaborMonthlyCalendarBinding binding2 = getBinding();
        if (binding2 == null || (imageView = binding2.ivRefreshAmount) == null) {
            return;
        }
        imageView.setOnClickListener(new View.OnClickListener() { // from class: com.laborbook.keep.screen.calendar.fragment.LaborMonthlyCalendarFragment$$ExternalSyntheticLambda7
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                LaborMonthlyCalendarFragment.onViewCreated$lambda$3(this.f$0, view2);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onViewCreated$lambda$1(LaborMonthlyCalendarFragment this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(view, "$view");
        if (!this$0.isAdded() || this$0.isDetached()) {
            return;
        }
        this$0.checkAndShowCoachMark();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onViewCreated$lambda$2(LaborMonthlyCalendarFragment this$0, String str, Bundle bundle) {
        TextViewBold18 textViewBold18;
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(str, "<unused var>");
        Intrinsics.checkNotNullParameter(bundle, "bundle");
        String string = bundle.getString("updated_staff_name");
        String str2 = string;
        if (str2 == null || StringsKt.isBlank(str2)) {
            return;
        }
        this$0.staffName = string;
        FragmentLaborMonthlyCalendarBinding binding = this$0.getBinding();
        if (binding == null || (textViewBold18 = binding.tvToolbarText) == null) {
            return;
        }
        textViewBold18.setText(str2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onViewCreated$lambda$3(LaborMonthlyCalendarFragment this$0, View view) {
        String str;
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        if (this$0.isSalaryLoading || (str = this$0.staffId) == null) {
            return;
        }
        this$0.getViewModel().fetchUserSalary(str, this$0.monthNumber, this$0.currentYear);
    }

    private final void getCalendarData(boolean isRefresh) {
        if (getView() == null) {
            return;
        }
        try {
            LifecycleOwner viewLifecycleOwner = getViewLifecycleOwner();
            Intrinsics.checkNotNullExpressionValue(viewLifecycleOwner, "getViewLifecycleOwner(...)");
            BuildersKt__Builders_commonKt.launch$default(LifecycleOwnerKt.getLifecycleScope(viewLifecycleOwner), Dispatchers.getIO(), null, new C37541(isRefresh, this, null), 2, null);
        } catch (IllegalStateException unused) {
            Log.d("LaborMonthlyCalendarFragment", "View destroyed, ignoring getCalendarData call");
        }
    }

    /* JADX INFO: renamed from: com.laborbook.keep.screen.calendar.fragment.LaborMonthlyCalendarFragment$getCalendarData$1 */
    /* JADX INFO: compiled from: LaborMonthlyCalendarFragment.kt */
    @Metadata(m2721d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, m2722d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, m2723k = 3, m2724mv = {2, 0, 0}, m2726xi = 48)
    @DebugMetadata(m2734c = "com.laborbook.keep.screen.calendar.fragment.LaborMonthlyCalendarFragment$getCalendarData$1", m2735f = "LaborMonthlyCalendarFragment.kt", m2736i = {}, m2737l = {Opcodes.D2I}, m2738m = "invokeSuspend", m2739n = {}, m2740s = {})
    static final class C37541 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ boolean $isRefresh;
        int label;
        final /* synthetic */ LaborMonthlyCalendarFragment this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C37541(boolean z, LaborMonthlyCalendarFragment laborMonthlyCalendarFragment, Continuation<? super C37541> continuation) {
            super(2, continuation);
            this.$isRefresh = z;
            this.this$0 = laborMonthlyCalendarFragment;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new C37541(this.$isRefresh, this.this$0, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((C37541) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            String str;
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                if (!this.$isRefresh) {
                    this.label = 1;
                    if (DelayKt.delay(500L, this) == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                }
            } else {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(obj);
            }
            if (this.this$0.isAdded() && this.this$0.getView() != null && (str = this.this$0.staffId) != null) {
                LaborMonthlyCalendarFragment laborMonthlyCalendarFragment = this.this$0;
                laborMonthlyCalendarFragment.getViewModel().getStaffAttendances(str, String.valueOf(laborMonthlyCalendarFragment.monthNumber), String.valueOf(laborMonthlyCalendarFragment.currentYear));
            }
            return Unit.INSTANCE;
        }
    }

    private final void setObserver() {
        getObserverUtil().setOnDailyAttendanceMarkListener(new Function1() { // from class: com.laborbook.keep.screen.calendar.fragment.LaborMonthlyCalendarFragment$$ExternalSyntheticLambda8
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return LaborMonthlyCalendarFragment.setObserver$lambda$4(this.f$0, (AttendanceItem) obj);
            }
        });
        getObserverUtil().setRefreshCalendar(new Function4() { // from class: com.laborbook.keep.screen.calendar.fragment.LaborMonthlyCalendarFragment$$ExternalSyntheticLambda9
            @Override // kotlin.jvm.functions.Function4
            public final Object invoke(Object obj, Object obj2, Object obj3, Object obj4) {
                return LaborMonthlyCalendarFragment.setObserver$lambda$5(this.f$0, ((Boolean) obj).booleanValue(), ((Boolean) obj2).booleanValue(), (String) obj3, ((Integer) obj4).intValue());
            }
        });
        getObserverUtil().setGoBackFromCalendar(new Function1() { // from class: com.laborbook.keep.screen.calendar.fragment.LaborMonthlyCalendarFragment$$ExternalSyntheticLambda10
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return LaborMonthlyCalendarFragment.setObserver$lambda$6(this.f$0, ((Boolean) obj).booleanValue());
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit setObserver$lambda$4(LaborMonthlyCalendarFragment this$0, AttendanceItem attendance) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(attendance, "attendance");
        if (this$0.getView() != null) {
            try {
                LifecycleOwner viewLifecycleOwner = this$0.getViewLifecycleOwner();
                Intrinsics.checkNotNullExpressionValue(viewLifecycleOwner, "getViewLifecycleOwner(...)");
                BuildersKt__Builders_commonKt.launch$default(LifecycleOwnerKt.getLifecycleScope(viewLifecycleOwner), null, null, new LaborMonthlyCalendarFragment$setObserver$1$1(this$0, attendance, null), 3, null);
            } catch (IllegalStateException unused) {
                Log.d("LaborMonthlyCalendarFragment", "View destroyed, ignoring attendance mark callback");
            }
        }
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit setObserver$lambda$5(LaborMonthlyCalendarFragment this$0, boolean z, boolean z2, String advance, int i) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(advance, "advance");
        if (this$0.getView() != null && this$0.isAdded()) {
            if (z) {
                this$0.setRefresh(true);
                this$0.getCalendarData(true);
            }
            if (z2) {
                this$0.getFragmentNavigator().start(TransactionStatusFragment.INSTANCE.newInstance(this$0.staffName, Constants.TYPE_ADVANCE, advance));
            }
        }
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit setObserver$lambda$6(LaborMonthlyCalendarFragment this$0, boolean z) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        if (this$0.getView() != null && this$0.isAdded()) {
            this$0.getFragmentNavigator().goBack();
        }
        return Unit.INSTANCE;
    }

    private final void setupView() {
        this.adapter = new AttendanceCalendarItemAdapter();
        FragmentLaborMonthlyCalendarBinding binding = getBinding();
        if (binding != null) {
            try {
                TextViewBold12 textViewBold12 = binding.tvMonthYear;
                StringBuilder sb = new StringBuilder();
                String str = this.monthName;
                AttendanceCalendarItemAdapter attendanceCalendarItemAdapter = null;
                textViewBold12.setText(sb.append(str != null ? StringsKt.take(str, 3) : null).append(' ').append(this.currentYear).toString());
                RecyclerView recyclerView = binding.rvAttendance;
                AttendanceCalendarItemAdapter attendanceCalendarItemAdapter2 = this.adapter;
                if (attendanceCalendarItemAdapter2 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("adapter");
                } else {
                    attendanceCalendarItemAdapter = attendanceCalendarItemAdapter2;
                }
                recyclerView.setAdapter(attendanceCalendarItemAdapter);
                binding.btnMarkAttendance.setEnabled(getViewModel().isAttendancesMarked());
            } catch (Exception unused) {
            }
        }
    }

    private final void registerOnClickListeners() {
        final FragmentLaborMonthlyCalendarBinding binding = getBinding();
        if (binding != null) {
            binding.btnMarkAttendance.setOnClickListener(new View.OnClickListener() { // from class: com.laborbook.keep.screen.calendar.fragment.LaborMonthlyCalendarFragment$$ExternalSyntheticLambda0
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    LaborMonthlyCalendarFragment.registerOnClickListeners$lambda$24$lambda$8(this.f$0, view);
                }
            });
            binding.ivBack.setOnClickListener(new View.OnClickListener() { // from class: com.laborbook.keep.screen.calendar.fragment.LaborMonthlyCalendarFragment$$ExternalSyntheticLambda11
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    LaborMonthlyCalendarFragment.registerOnClickListeners$lambda$24$lambda$9(this.f$0, view);
                }
            });
            binding.tvMonthYear.setOnClickListener(new View.OnClickListener() { // from class: com.laborbook.keep.screen.calendar.fragment.LaborMonthlyCalendarFragment$$ExternalSyntheticLambda14
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    LaborMonthlyCalendarFragment.registerOnClickListeners$lambda$24$lambda$10(this.f$0, view);
                }
            });
            binding.btnShare.setOnClickListener(new View.OnClickListener() { // from class: com.laborbook.keep.screen.calendar.fragment.LaborMonthlyCalendarFragment$$ExternalSyntheticLambda15
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    LaborMonthlyCalendarFragment.registerOnClickListeners$lambda$24$lambda$11(this.f$0, view);
                }
            });
            binding.ivDeleteStaff.setOnClickListener(new View.OnClickListener() { // from class: com.laborbook.keep.screen.calendar.fragment.LaborMonthlyCalendarFragment$$ExternalSyntheticLambda16
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    LaborMonthlyCalendarFragment.registerOnClickListeners$lambda$24$lambda$14(this.f$0, view);
                }
            });
            binding.tvToolbarText.setOnClickListener(new View.OnClickListener() { // from class: com.laborbook.keep.screen.calendar.fragment.LaborMonthlyCalendarFragment$$ExternalSyntheticLambda17
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    LaborMonthlyCalendarFragment.registerOnClickListeners$lambda$24$lambda$17(this.f$0, view);
                }
            });
            binding.tvEdit.setOnClickListener(new View.OnClickListener() { // from class: com.laborbook.keep.screen.calendar.fragment.LaborMonthlyCalendarFragment$$ExternalSyntheticLambda18
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    LaborMonthlyCalendarFragment.registerOnClickListeners$lambda$24$lambda$20(this.f$0, binding, view);
                }
            });
            binding.btnOpenReport.setOnClickListener(new View.OnClickListener() { // from class: com.laborbook.keep.screen.calendar.fragment.LaborMonthlyCalendarFragment$$ExternalSyntheticLambda19
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    LaborMonthlyCalendarFragment.registerOnClickListeners$lambda$24$lambda$22(this.f$0, view);
                }
            });
            binding.llOpenReport.setOnClickListener(new View.OnClickListener() { // from class: com.laborbook.keep.screen.calendar.fragment.LaborMonthlyCalendarFragment$$ExternalSyntheticLambda20
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    LaborMonthlyCalendarFragment.registerOnClickListeners$lambda$24$lambda$23(this.f$0, view);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void registerOnClickListeners$lambda$24$lambda$8(LaborMonthlyCalendarFragment this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        LifecycleOwner viewLifecycleOwner = this$0.getViewLifecycleOwner();
        Intrinsics.checkNotNullExpressionValue(viewLifecycleOwner, "getViewLifecycleOwner(...)");
        BuildersKt__Builders_commonKt.launch$default(LifecycleOwnerKt.getLifecycleScope(viewLifecycleOwner), null, null, new LaborMonthlyCalendarFragment$registerOnClickListeners$1$1$1(this$0, null), 3, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void registerOnClickListeners$lambda$24$lambda$9(LaborMonthlyCalendarFragment this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.getFragmentNavigator().goBack();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void registerOnClickListeners$lambda$24$lambda$10(LaborMonthlyCalendarFragment this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.openMonthYearChooser();
        Pair[] pairArr = new Pair[1];
        String str = this$0.monthName;
        if (str == null) {
            str = "";
        }
        pairArr[0] = new Pair(ConstantEventAttributes.CURRENT_MONTH, str);
        this$0.recordClickEvent(ConstantEventNames.CHANGE_MONTH, MapsKt.hashMapOf(pairArr));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void registerOnClickListeners$lambda$24$lambda$11(LaborMonthlyCalendarFragment this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.checkPermissionsAndCapture();
        this$0.recordClickEvent(ConstantEventNames.SHARE_ATTENDANCE_TO_LABOR, MapsKt.hashMapOf(new Pair(ConstantEventAttributes.LABOR_NAME, this$0.staffFullName)));
        this$0.triggerInAppReview();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void registerOnClickListeners$lambda$24$lambda$14(LaborMonthlyCalendarFragment this$0, View view) {
        DeleteStaffBottomsheetFragment deleteStaffBottomsheetFragmentNewInstance;
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        String str = this$0.staffId;
        if (str == null || (deleteStaffBottomsheetFragmentNewInstance = DeleteStaffBottomsheetFragment.INSTANCE.newInstance(str, this$0.staffFullName)) == null) {
            return;
        }
        this$0.recordClickEvent(ConstantEventNames.DELETE_LABOR_BS, MapsKt.hashMapOf(new Pair(ConstantEventAttributes.LABOR_NAME, this$0.staffFullName)));
        this$0.getFragmentNavigator().start((BottomSheetDialogFragment) deleteStaffBottomsheetFragmentNewInstance);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void registerOnClickListeners$lambda$24$lambda$17(LaborMonthlyCalendarFragment this$0, View view) {
        DeleteStaffBottomsheetFragment deleteStaffBottomsheetFragmentNewInstance;
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        String str = this$0.staffId;
        if (str == null || (deleteStaffBottomsheetFragmentNewInstance = DeleteStaffBottomsheetFragment.INSTANCE.newInstance(str, this$0.staffFullName)) == null) {
            return;
        }
        this$0.recordClickEvent(ConstantEventNames.DELETE_LABOR_BS, MapsKt.hashMapOf(new Pair(ConstantEventAttributes.LABOR_NAME, this$0.staffFullName)));
        this$0.getFragmentNavigator().start((BottomSheetDialogFragment) deleteStaffBottomsheetFragmentNewInstance);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void registerOnClickListeners$lambda$24$lambda$20(LaborMonthlyCalendarFragment this$0, FragmentLaborMonthlyCalendarBinding this_apply, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(this_apply, "$this_apply");
        String str = this$0.staffId;
        if (str != null) {
            this$0.getViewModel().getCurrentSalary(str);
            return;
        }
        EditProfileBottomsheetFragment.Companion companion = EditProfileBottomsheetFragment.INSTANCE;
        String str2 = this$0.staffId;
        if (str2 == null) {
            str2 = "";
        }
        EditProfileBottomsheetFragment.Companion.newInstance$default(companion, str2, this$0.staffFullName, null, null, 12, null).show(this$0.getParentFragmentManager(), "EditProfileBottomsheetFragment");
    }

    private static final boolean registerOnClickListeners$lambda$24$lambda$21(LaborMonthlyCalendarFragment this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        LifecycleOwner viewLifecycleOwner = this$0.getViewLifecycleOwner();
        Intrinsics.checkNotNullExpressionValue(viewLifecycleOwner, "getViewLifecycleOwner(...)");
        BuildersKt__Builders_commonKt.launch$default(LifecycleOwnerKt.getLifecycleScope(viewLifecycleOwner), null, null, new LaborMonthlyCalendarFragment$registerOnClickListeners$1$8$1(this$0, null), 3, null);
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void registerOnClickListeners$lambda$24$lambda$22(LaborMonthlyCalendarFragment this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.openReport();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void registerOnClickListeners$lambda$24$lambda$23(LaborMonthlyCalendarFragment this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.openReport();
    }

    private final void openReport() {
        BaseFragment.recordClickEvent$default(this, ConstantEventNames.LABOR_REPORTS_TAP, null, 2, null);
        triggerInAppReview();
        if (this.currentAttendanceUser == null) {
            Toast.makeText(requireContext(), "Please wait for attendance data to load", 0).show();
            return;
        }
        getViewModel().startReportLoading();
        String str = this.monthName + ' ' + this.currentYear;
        if (this.currentSalary == null) {
            String str2 = this.staffId;
            if (str2 == null) {
                return;
            }
            getViewModel().fetchUserSalary(str2, this.monthNumber, this.currentYear);
            LifecycleOwner viewLifecycleOwner = getViewLifecycleOwner();
            Intrinsics.checkNotNullExpressionValue(viewLifecycleOwner, "getViewLifecycleOwner(...)");
            BuildersKt__Builders_commonKt.launch$default(LifecycleOwnerKt.getLifecycleScope(viewLifecycleOwner), null, null, new C37551(str, null), 3, null);
            return;
        }
        navigateToReport(str);
    }

    /* JADX INFO: renamed from: com.laborbook.keep.screen.calendar.fragment.LaborMonthlyCalendarFragment$openReport$1 */
    /* JADX INFO: compiled from: LaborMonthlyCalendarFragment.kt */
    @Metadata(m2721d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, m2722d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, m2723k = 3, m2724mv = {2, 0, 0}, m2726xi = 48)
    @DebugMetadata(m2734c = "com.laborbook.keep.screen.calendar.fragment.LaborMonthlyCalendarFragment$openReport$1", m2735f = "LaborMonthlyCalendarFragment.kt", m2736i = {}, m2737l = {355}, m2738m = "invokeSuspend", m2739n = {}, m2740s = {})
    static final class C37551 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ String $monthYear;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C37551(String str, Continuation<? super C37551> continuation) {
            super(2, continuation);
            this.$monthYear = str;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return LaborMonthlyCalendarFragment.this.new C37551(this.$monthYear, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((C37551) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                this.label = 1;
                if (DelayKt.delay(1000L, this) == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(obj);
            }
            if (LaborMonthlyCalendarFragment.this.isAdded() && LaborMonthlyCalendarFragment.this.getContext() != null) {
                LaborMonthlyCalendarFragment.this.navigateToReport(this.$monthYear);
            }
            return Unit.INSTANCE;
        }
    }

    private final void viewModelObserver() {
        getViewModel().uiState().observe(getViewLifecycleOwner(), new LaborMonthlyCalendarFragmentKt$sam$androidx_lifecycle_Observer$0(new Function1() { // from class: com.laborbook.keep.screen.calendar.fragment.LaborMonthlyCalendarFragment$$ExternalSyntheticLambda4
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return LaborMonthlyCalendarFragment.viewModelObserver$lambda$28(this.f$0, (CalendarUiState) obj);
            }
        }));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit viewModelObserver$lambda$28(LaborMonthlyCalendarFragment this$0, CalendarUiState calendarUiState) {
        ProgressBar progressBar;
        ProgressBar progressBar2;
        RecyclerView recyclerView;
        String name;
        ProgressBar progressBar3;
        ProgressBar progressBar4;
        ProgressBar progressBar5;
        ProgressBar progressBar6;
        ProgressBar progressBar7;
        ProgressBar progressBar8;
        TextViewBoldPrimaryColor14 textViewBoldPrimaryColor14;
        FragmentLaborMonthlyCalendarBinding binding;
        ProgressBar progressBar9;
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        if (calendarUiState instanceof CalendarUiState.Loading) {
            if (!this$0.getIsRefresh() && (binding = this$0.getBinding()) != null && (progressBar9 = binding.f3454pb) != null) {
                ExtentionsKt.show$default(progressBar9, 0L, null, 3, null);
            }
        } else if (calendarUiState instanceof CalendarUiState.SalaryLoading) {
            if (!this$0.isSalaryLoading) {
                this$0.isSalaryLoading = true;
                this$0.startRefreshAnimation();
            }
        } else if (calendarUiState instanceof CalendarUiState.GetUserSalarySuccess) {
            this$0.isSalaryLoading = false;
            this$0.stopRefreshAnimation();
            CalendarUiState.GetUserSalarySuccess getUserSalarySuccess = (CalendarUiState.GetUserSalarySuccess) calendarUiState;
            this$0.currentSalary = Double.valueOf(getUserSalarySuccess.getSalary());
            AttendanceUser attendanceUser = this$0.currentAttendanceUser;
            double salary = getUserSalarySuccess.getSalary() - (attendanceUser != null ? attendanceUser.getTotalAdvance() : 0.0d);
            FragmentLaborMonthlyCalendarBinding binding2 = this$0.getBinding();
            if (binding2 != null && (textViewBoldPrimaryColor14 = binding2.tvAddAmount) != null) {
                textViewBoldPrimaryColor14.setText(this$0.getString(C3656R.string.rupee) + ' ' + salary);
            }
        } else if (calendarUiState instanceof CalendarUiState.GetUserSalaryError) {
            this$0.isSalaryLoading = false;
            this$0.stopRefreshAnimation();
            Toast.makeText(this$0.requireContext(), ((CalendarUiState.GetUserSalaryError) calendarUiState).getMessage(), 0).show();
        } else if (calendarUiState instanceof CalendarUiState.ReportLoading) {
            CalendarUiState.ReportLoading reportLoading = (CalendarUiState.ReportLoading) calendarUiState;
            this$0.isReportLoading = reportLoading.isLoading();
            if (reportLoading.isLoading()) {
                FragmentLaborMonthlyCalendarBinding binding3 = this$0.getBinding();
                if (binding3 != null && (progressBar8 = binding3.f3454pb) != null) {
                    ExtentionsKt.show$default(progressBar8, 0L, null, 3, null);
                }
            } else {
                FragmentLaborMonthlyCalendarBinding binding4 = this$0.getBinding();
                if (binding4 != null && (progressBar7 = binding4.f3454pb) != null) {
                    ExtentionsKt.hide$default(progressBar7, 0L, null, 3, null);
                }
            }
        } else {
            if (calendarUiState instanceof CalendarUiState.GetCurrentSalarySuccess) {
                FragmentLaborMonthlyCalendarBinding binding5 = this$0.getBinding();
                if (binding5 != null && (progressBar6 = binding5.f3454pb) != null) {
                    ExtentionsKt.hide$default(progressBar6, 0L, null, 3, null);
                }
                CalendarUiState.GetCurrentSalarySuccess getCurrentSalarySuccess = (CalendarUiState.GetCurrentSalarySuccess) calendarUiState;
                this$0.currentSalaryData = getCurrentSalarySuccess.getCurrentSalary();
                EditProfileBottomsheetFragment.Companion companion = EditProfileBottomsheetFragment.INSTANCE;
                String str = this$0.staffId;
                companion.newInstance(str != null ? str : "", this$0.staffFullName, Double.valueOf(getCurrentSalarySuccess.getCurrentSalary().getSalary_per_day()), getCurrentSalarySuccess.getCurrentSalary().getSalary_type()).show(this$0.getParentFragmentManager(), "EditProfileBottomsheetFragment");
            } else if (calendarUiState instanceof CalendarUiState.GetCurrentSalaryError) {
                FragmentLaborMonthlyCalendarBinding binding6 = this$0.getBinding();
                if (binding6 != null && (progressBar5 = binding6.f3454pb) != null) {
                    ExtentionsKt.hide$default(progressBar5, 0L, null, 3, null);
                }
                EditProfileBottomsheetFragment.Companion companion2 = EditProfileBottomsheetFragment.INSTANCE;
                String str2 = this$0.staffId;
                EditProfileBottomsheetFragment.Companion.newInstance$default(companion2, str2 == null ? "" : str2, this$0.staffFullName, null, null, 12, null).show(this$0.getParentFragmentManager(), "EditProfileBottomsheetFragment");
            } else if (calendarUiState instanceof CalendarUiState.CurrentSalaryLoading) {
                FragmentLaborMonthlyCalendarBinding binding7 = this$0.getBinding();
                if (binding7 != null && (progressBar4 = binding7.f3454pb) != null) {
                    ExtentionsKt.show$default(progressBar4, 0L, null, 3, null);
                }
            } else {
                AttendanceCalendarItemAdapter attendanceCalendarItemAdapter = null;
                if (calendarUiState instanceof CalendarUiState.GetStaffAttendanceSuccess) {
                    FragmentLaborMonthlyCalendarBinding binding8 = this$0.getBinding();
                    if (binding8 != null && (progressBar3 = binding8.f3454pb) != null) {
                        ExtentionsKt.hide$default(progressBar3, 0L, null, 3, null);
                    }
                    CalendarUiState.GetStaffAttendanceSuccess getStaffAttendanceSuccess = (CalendarUiState.GetStaffAttendanceSuccess) calendarUiState;
                    AttendanceUser user = getStaffAttendanceSuccess.getStaff().getUser();
                    if (user != null) {
                        this$0.setUserDetails(user);
                        this$0.currentAttendanceUser = user;
                    }
                    AttendanceUser user2 = getStaffAttendanceSuccess.getStaff().getUser();
                    if (user2 != null && (name = user2.getName()) != null) {
                        AttendanceCalendarItemAdapter attendanceCalendarItemAdapter2 = this$0.adapter;
                        if (attendanceCalendarItemAdapter2 == null) {
                            Intrinsics.throwUninitializedPropertyAccessException("adapter");
                            attendanceCalendarItemAdapter2 = null;
                        }
                        attendanceCalendarItemAdapter2.setStaffName(name);
                    }
                    AttendanceCalendarItemAdapter attendanceCalendarItemAdapter3 = this$0.adapter;
                    if (attendanceCalendarItemAdapter3 == null) {
                        Intrinsics.throwUninitializedPropertyAccessException("adapter");
                        attendanceCalendarItemAdapter3 = null;
                    }
                    String str3 = this$0.staffId;
                    attendanceCalendarItemAdapter3.setStaffId(str3 != null ? str3 : "");
                    AttendanceCalendarItemAdapter attendanceCalendarItemAdapter4 = this$0.adapter;
                    if (attendanceCalendarItemAdapter4 == null) {
                        Intrinsics.throwUninitializedPropertyAccessException("adapter");
                    } else {
                        attendanceCalendarItemAdapter = attendanceCalendarItemAdapter4;
                    }
                    attendanceCalendarItemAdapter.submitList(getStaffAttendanceSuccess.getStaff().getAttendance());
                    try {
                        if (this$0.getIsFirstTime()) {
                            FragmentLaborMonthlyCalendarBinding binding9 = this$0.getBinding();
                            if (binding9 != null && (recyclerView = binding9.rvAttendance) != null) {
                                recyclerView.scrollToPosition(this$0.currentDate - 1);
                            }
                            this$0.setFirstTime(false);
                        }
                    } catch (Exception unused) {
                    }
                    this$0.setRefresh(false);
                    String str4 = this$0.staffId;
                    if (str4 != null) {
                        this$0.getViewModel().fetchUserSalary(str4, this$0.monthNumber, this$0.currentYear);
                    }
                } else if (calendarUiState instanceof CalendarUiState.MarkBulkAttendanceSuccess) {
                    this$0.setRefresh(false);
                    FragmentLaborMonthlyCalendarBinding binding10 = this$0.getBinding();
                    if (binding10 != null && (progressBar2 = binding10.f3454pb) != null) {
                        ExtentionsKt.hide$default(progressBar2, 0L, null, 3, null);
                    }
                    Function4<Boolean, Boolean, String, Integer, Unit> refreshCalendar = this$0.getObserverUtil().getRefreshCalendar();
                    if (refreshCalendar != null) {
                        refreshCalendar.invoke(true, false, "", 0);
                    }
                    this$0.triggerInAppReview();
                    LifecycleOwner viewLifecycleOwner = this$0.getViewLifecycleOwner();
                    Intrinsics.checkNotNullExpressionValue(viewLifecycleOwner, "getViewLifecycleOwner(...)");
                    BuildersKt__Builders_commonKt.launch$default(LifecycleOwnerKt.getLifecycleScope(viewLifecycleOwner), null, null, new LaborMonthlyCalendarFragment$viewModelObserver$1$4(this$0, null), 3, null);
                } else if (calendarUiState instanceof CalendarUiState.Error) {
                    this$0.setRefresh(false);
                    FragmentLaborMonthlyCalendarBinding binding11 = this$0.getBinding();
                    if (binding11 != null && (progressBar = binding11.f3454pb) != null) {
                        ExtentionsKt.hide$default(progressBar, 0L, null, 3, null);
                    }
                    Toast.makeText(this$0.requireContext(), ((CalendarUiState.Error) calendarUiState).getMessage(), 0).show();
                }
            }
        }
        return Unit.INSTANCE;
    }

    /* JADX INFO: renamed from: com.laborbook.keep.screen.calendar.fragment.LaborMonthlyCalendarFragment$triggerInAppReview$1 */
    /* JADX INFO: compiled from: LaborMonthlyCalendarFragment.kt */
    @Metadata(m2721d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, m2722d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, m2723k = 3, m2724mv = {2, 0, 0}, m2726xi = 48)
    @DebugMetadata(m2734c = "com.laborbook.keep.screen.calendar.fragment.LaborMonthlyCalendarFragment$triggerInAppReview$1", m2735f = "LaborMonthlyCalendarFragment.kt", m2736i = {}, m2737l = {483}, m2738m = "invokeSuspend", m2739n = {}, m2740s = {})
    static final class C37591 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        int label;

        C37591(Continuation<? super C37591> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return LaborMonthlyCalendarFragment.this.new C37591(continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((C37591) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            try {
                if (i == 0) {
                    ResultKt.throwOnFailure(obj);
                    if (LaborMonthlyCalendarFragment.this.isAdded() && LaborMonthlyCalendarFragment.this.getContext() != null && LaborMonthlyCalendarFragment.this.getActivity() != null) {
                        this.label = 1;
                        obj = FlowKt.first(LaborMonthlyCalendarFragment.this.getDataStoreManager().read(DataStoreManager.INSTANCE.getAPP_OPEN_COUNT(), Boxing.boxInt(0)), this);
                        if (obj == coroutine_suspended) {
                            return coroutine_suspended;
                        }
                    }
                    return Unit.INSTANCE;
                }
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(obj);
                int iIntValue = ((Number) obj).intValue();
                if (iIntValue != 0 && iIntValue % 3 == 0) {
                    final ReviewManager reviewManagerCreate = ReviewManagerFactory.create(LaborMonthlyCalendarFragment.this.requireContext());
                    Intrinsics.checkNotNullExpressionValue(reviewManagerCreate, "create(...)");
                    Task<ReviewInfo> taskRequestReviewFlow = reviewManagerCreate.requestReviewFlow();
                    Intrinsics.checkNotNullExpressionValue(taskRequestReviewFlow, "requestReviewFlow(...)");
                    final LaborMonthlyCalendarFragment laborMonthlyCalendarFragment = LaborMonthlyCalendarFragment.this;
                    taskRequestReviewFlow.addOnCompleteListener(new OnCompleteListener() { // from class: com.laborbook.keep.screen.calendar.fragment.LaborMonthlyCalendarFragment$triggerInAppReview$1$$ExternalSyntheticLambda0
                        @Override // com.google.android.gms.tasks.OnCompleteListener
                        public final void onComplete(Task task) {
                            LaborMonthlyCalendarFragment.C37591.invokeSuspend$lambda$1(reviewManagerCreate, laborMonthlyCalendarFragment, task);
                        }
                    });
                }
            } catch (Exception unused) {
            }
            return Unit.INSTANCE;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void invokeSuspend$lambda$1(ReviewManager reviewManager, final LaborMonthlyCalendarFragment laborMonthlyCalendarFragment, Task task) {
            if (task.isSuccessful()) {
                try {
                    Task<Void> taskLaunchReviewFlow = reviewManager.launchReviewFlow(laborMonthlyCalendarFragment.requireActivity(), (ReviewInfo) task.getResult());
                    Intrinsics.checkNotNullExpressionValue(taskLaunchReviewFlow, "launchReviewFlow(...)");
                    BaseFragment.triggerImpressionEvent$default(laborMonthlyCalendarFragment, ConstantEventNames.IN_APP_REVIEW, null, 2, null);
                    taskLaunchReviewFlow.addOnCompleteListener(new OnCompleteListener() { // from class: com.laborbook.keep.screen.calendar.fragment.LaborMonthlyCalendarFragment$triggerInAppReview$1$$ExternalSyntheticLambda1
                        @Override // com.google.android.gms.tasks.OnCompleteListener
                        public final void onComplete(Task task2) {
                            LaborMonthlyCalendarFragment.C37591.invokeSuspend$lambda$1$lambda$0(laborMonthlyCalendarFragment, task2);
                        }
                    });
                } catch (Exception unused) {
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void invokeSuspend$lambda$1$lambda$0(LaborMonthlyCalendarFragment laborMonthlyCalendarFragment, Task task) {
            BaseFragment.recordClickEvent$default(laborMonthlyCalendarFragment, ConstantEventNames.IN_APP_REVIEW_DONE, null, 2, null);
        }
    }

    private final void triggerInAppReview() {
        try {
            LifecycleOwner viewLifecycleOwner = getViewLifecycleOwner();
            Intrinsics.checkNotNullExpressionValue(viewLifecycleOwner, "getViewLifecycleOwner(...)");
            BuildersKt__Builders_commonKt.launch$default(LifecycleOwnerKt.getLifecycleScope(viewLifecycleOwner), null, null, new C37591(null), 3, null);
        } catch (Exception unused) {
        }
    }

    private final void setUserDetails(AttendanceUser staff) {
        String string;
        String string2;
        String string3;
        String string4;
        FragmentLaborMonthlyCalendarBinding binding = getBinding();
        if (binding != null) {
            this.staffFullName = staff.getName();
            this.staffName = staff.getName();
            binding.tvToolbarText.setText(this.staffName);
            binding.tvTotalPresent.setText(String.valueOf(staff.getTotalPresent()));
            binding.tvTotalAbsent.setText(String.valueOf(staff.getTotalAbsent()));
            Double totalOt = staff.getTotalOt();
            String str = "0h";
            if (totalOt != null) {
                double dDoubleValue = totalOt.doubleValue();
                Log.d("OvertimeDebug", "Total OT received: " + dDoubleValue);
                if (dDoubleValue <= 0.0d) {
                    string4 = "0h";
                } else if (dDoubleValue >= 1.0d) {
                    int i = (int) dDoubleValue;
                    int i2 = (int) ((dDoubleValue - ((double) i)) * ((double) 60));
                    if (i2 > 0) {
                        string4 = new StringBuilder().append(i).append(Barcode128.START_B).append(i2).append('m').toString();
                    } else {
                        string4 = new StringBuilder().append(i).append(Barcode128.START_B).toString();
                    }
                } else {
                    int i3 = (int) (dDoubleValue * ((double) 60));
                    int i4 = i3 / 60;
                    int i5 = i3 % 60;
                    if (i4 <= 0) {
                        string4 = new StringBuilder().append(i5).append('m').toString();
                    } else if (i5 > 0) {
                        string4 = new StringBuilder().append(i4).append(Barcode128.START_B).append(i5).append('m').toString();
                    } else {
                        string4 = new StringBuilder().append(i4).append(Barcode128.START_B).toString();
                    }
                }
                if (string4 != null) {
                    str = string4;
                }
            }
            binding.tvTotalOt.setText(str);
            binding.tvTotalAdvance.setText(getString(C3656R.string.rupee) + staff.getTotalAdvance());
            TextViewBold16 textViewBold16 = binding.tvTotalHalfDay;
            Double totalH = staff.getTotalH();
            textViewBold16.setText((totalH == null || (string3 = totalH.toString()) == null) ? AppEventsConstants.EVENT_PARAM_VALUE_NO : string3);
            TextViewBold16 textViewBold162 = binding.tvTotalPp;
            Double totalPp = staff.getTotalPp();
            textViewBold162.setText((totalPp == null || (string2 = totalPp.toString()) == null) ? AppEventsConstants.EVENT_PARAM_VALUE_NO : string2);
            TextViewBold16 textViewBold163 = binding.tvTotalPh;
            Double totalPh = staff.getTotalPh();
            textViewBold163.setText((totalPh == null || (string = totalPh.toString()) == null) ? AppEventsConstants.EVENT_PARAM_VALUE_NO : string);
            binding.ivRefreshAmount.setOnClickListener(new View.OnClickListener() { // from class: com.laborbook.keep.screen.calendar.fragment.LaborMonthlyCalendarFragment$$ExternalSyntheticLambda1
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    LaborMonthlyCalendarFragment.setUserDetails$lambda$31$lambda$30(this.f$0, view);
                }
            });
            binding.btnShare.setText(getString(C3656R.string.share_to) + ' ' + staff.getName());
            binding.btnShare.setCompoundDrawablesWithIntrinsicBounds(ContextCompat.getDrawable(requireContext(), C3656R.drawable.ic_whatsapp), (Drawable) null, (Drawable) null, (Drawable) null);
            binding.btnShare.setCompoundDrawablePadding((int) (4 * getResources().getDisplayMetrics().density));
            setupStatsDropdown();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void setUserDetails$lambda$31$lambda$30(LaborMonthlyCalendarFragment this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.fetchAndDisplaySalary();
    }

    private final void fetchAndDisplaySalary() {
        if (getBinding() != null) {
            LifecycleOwner viewLifecycleOwner = getViewLifecycleOwner();
            Intrinsics.checkNotNullExpressionValue(viewLifecycleOwner, "getViewLifecycleOwner(...)");
            BuildersKt__Builders_commonKt.launch$default(LifecycleOwnerKt.getLifecycleScope(viewLifecycleOwner), null, null, new LaborMonthlyCalendarFragment$fetchAndDisplaySalary$1$1(this, null), 3, null);
        }
    }

    private final void setupStatsDropdown() {
        LinearLayout linearLayout;
        LinearLayout linearLayout2;
        ImageView imageView;
        ImageView imageView2;
        LinearLayout linearLayout3;
        FragmentLaborMonthlyCalendarBinding binding = getBinding();
        if (binding != null && (linearLayout3 = binding.llStatsFirstRow) != null) {
            linearLayout3.setOnClickListener(new View.OnClickListener() { // from class: com.laborbook.keep.screen.calendar.fragment.LaborMonthlyCalendarFragment$$ExternalSyntheticLambda2
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    LaborMonthlyCalendarFragment.setupStatsDropdown$lambda$33(this.f$0, view);
                }
            });
        }
        FragmentLaborMonthlyCalendarBinding binding2 = getBinding();
        if (binding2 != null && (imageView2 = binding2.ivStatsDropdown) != null) {
            imageView2.setOnClickListener(new View.OnClickListener() { // from class: com.laborbook.keep.screen.calendar.fragment.LaborMonthlyCalendarFragment$$ExternalSyntheticLambda3
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    LaborMonthlyCalendarFragment.setupStatsDropdown$lambda$34(this.f$0, view);
                }
            });
        }
        FragmentLaborMonthlyCalendarBinding binding3 = getBinding();
        if (binding3 != null && (imageView = binding3.ivStatsDropdown) != null) {
            imageView.setRotation(0.0f);
        }
        this.isStatsExpanded = false;
        FragmentLaborMonthlyCalendarBinding binding4 = getBinding();
        if (binding4 != null && (linearLayout2 = binding4.llStatsSecondRow) != null) {
            linearLayout2.setVisibility(8);
        }
        FragmentLaborMonthlyCalendarBinding binding5 = getBinding();
        if (binding5 == null || (linearLayout = binding5.llStatsSecondRow) == null) {
            return;
        }
        linearLayout.setAlpha(0.0f);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void setupStatsDropdown$lambda$33(LaborMonthlyCalendarFragment this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.toggleStatsDropdown();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void setupStatsDropdown$lambda$34(LaborMonthlyCalendarFragment this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.toggleStatsDropdown();
    }

    private final void toggleStatsDropdown() {
        ImageView imageView;
        ViewPropertyAnimator viewPropertyAnimatorAnimate;
        ViewPropertyAnimator viewPropertyAnimatorRotation;
        ViewPropertyAnimator duration;
        LinearLayout linearLayout;
        ViewPropertyAnimator viewPropertyAnimatorAnimate2;
        ViewPropertyAnimator viewPropertyAnimatorAlpha;
        ViewPropertyAnimator duration2;
        ViewPropertyAnimator viewPropertyAnimatorWithEndAction;
        ImageView imageView2;
        ViewPropertyAnimator viewPropertyAnimatorAnimate3;
        ViewPropertyAnimator viewPropertyAnimatorRotation2;
        ViewPropertyAnimator duration3;
        LinearLayout linearLayout2;
        ViewPropertyAnimator viewPropertyAnimatorAnimate4;
        ViewPropertyAnimator viewPropertyAnimatorAlpha2;
        ViewPropertyAnimator duration4;
        LinearLayout linearLayout3;
        LinearLayout linearLayout4;
        boolean z = this.isStatsExpanded;
        this.isStatsExpanded = !z;
        if (!z) {
            FragmentLaborMonthlyCalendarBinding binding = getBinding();
            if (binding != null && (linearLayout4 = binding.llStatsSecondRow) != null) {
                linearLayout4.setVisibility(0);
            }
            FragmentLaborMonthlyCalendarBinding binding2 = getBinding();
            if (binding2 != null && (linearLayout3 = binding2.llStatsSecondRow) != null) {
                linearLayout3.setAlpha(0.0f);
            }
            FragmentLaborMonthlyCalendarBinding binding3 = getBinding();
            if (binding3 != null && (linearLayout2 = binding3.llStatsSecondRow) != null && (viewPropertyAnimatorAnimate4 = linearLayout2.animate()) != null && (viewPropertyAnimatorAlpha2 = viewPropertyAnimatorAnimate4.alpha(1.0f)) != null && (duration4 = viewPropertyAnimatorAlpha2.setDuration(100L)) != null) {
                duration4.start();
            }
            FragmentLaborMonthlyCalendarBinding binding4 = getBinding();
            if (binding4 == null || (imageView2 = binding4.ivStatsDropdown) == null || (viewPropertyAnimatorAnimate3 = imageView2.animate()) == null || (viewPropertyAnimatorRotation2 = viewPropertyAnimatorAnimate3.rotation(180.0f)) == null || (duration3 = viewPropertyAnimatorRotation2.setDuration(100L)) == null) {
                return;
            }
            duration3.start();
            return;
        }
        FragmentLaborMonthlyCalendarBinding binding5 = getBinding();
        if (binding5 != null && (linearLayout = binding5.llStatsSecondRow) != null && (viewPropertyAnimatorAnimate2 = linearLayout.animate()) != null && (viewPropertyAnimatorAlpha = viewPropertyAnimatorAnimate2.alpha(0.0f)) != null && (duration2 = viewPropertyAnimatorAlpha.setDuration(100L)) != null && (viewPropertyAnimatorWithEndAction = duration2.withEndAction(new Runnable() { // from class: com.laborbook.keep.screen.calendar.fragment.LaborMonthlyCalendarFragment$$ExternalSyntheticLambda13
            @Override // java.lang.Runnable
            public final void run() {
                LaborMonthlyCalendarFragment.toggleStatsDropdown$lambda$35(this.f$0);
            }
        })) != null) {
            viewPropertyAnimatorWithEndAction.start();
        }
        FragmentLaborMonthlyCalendarBinding binding6 = getBinding();
        if (binding6 == null || (imageView = binding6.ivStatsDropdown) == null || (viewPropertyAnimatorAnimate = imageView.animate()) == null || (viewPropertyAnimatorRotation = viewPropertyAnimatorAnimate.rotation(0.0f)) == null || (duration = viewPropertyAnimatorRotation.setDuration(100L)) == null) {
            return;
        }
        duration.start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void toggleStatsDropdown$lambda$35(LaborMonthlyCalendarFragment this$0) {
        LinearLayout linearLayout;
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        FragmentLaborMonthlyCalendarBinding binding = this$0.getBinding();
        if (binding == null || (linearLayout = binding.llStatsSecondRow) == null) {
            return;
        }
        linearLayout.setVisibility(8);
    }

    private final void getCurrentDateInfo() {
        Calendar calendar = Calendar.getInstance();
        this.monthNumber = calendar.get(2) + 1;
        this.monthName = calendar.getDisplayName(2, 2, Locale.getDefault());
        this.currentYear = calendar.get(1);
        this.currentDate = calendar.get(5);
    }

    private final void openMonthYearChooser() {
        MonthYearChooserFragment monthYearChooserFragmentNewInstance = MonthYearChooserFragment.INSTANCE.newInstance(this.monthNumber - 1, this.currentYear);
        monthYearChooserFragmentNewInstance.setOnSelectionCallback(new Function2() { // from class: com.laborbook.keep.screen.calendar.fragment.LaborMonthlyCalendarFragment$$ExternalSyntheticLambda12
            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(Object obj, Object obj2) {
                return LaborMonthlyCalendarFragment.openMonthYearChooser$lambda$37(this.f$0, ((Integer) obj).intValue(), ((Integer) obj2).intValue());
            }
        });
        monthYearChooserFragmentNewInstance.show(getParentFragmentManager(), "MonthYearChooserFragment");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit openMonthYearChooser$lambda$37(LaborMonthlyCalendarFragment this$0, int i, int i2) {
        TextViewBoldPrimaryColor14 textViewBoldPrimaryColor14;
        TextViewBold12 textViewBold12;
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.monthNumber = i + 1;
        this$0.currentYear = i2;
        Calendar calendar = Calendar.getInstance();
        calendar.clear();
        calendar.set(2, i);
        calendar.set(1, i2);
        this$0.monthName = calendar.getDisplayName(2, 2, Locale.getDefault());
        FragmentLaborMonthlyCalendarBinding binding = this$0.getBinding();
        if (binding != null && (textViewBold12 = binding.tvMonthYear) != null) {
            textViewBold12.setText(this$0.getFormattedMonthYear());
        }
        this$0.currentSalary = null;
        FragmentLaborMonthlyCalendarBinding binding2 = this$0.getBinding();
        if (binding2 != null && (textViewBoldPrimaryColor14 = binding2.tvAddAmount) != null) {
            textViewBoldPrimaryColor14.setText(this$0.getString(C3656R.string.add_amount));
        }
        this$0.getCalendarData(true);
        return Unit.INSTANCE;
    }

    private final String getFormattedMonthYear() {
        StringBuilder sb = new StringBuilder();
        String str = this.monthName;
        return sb.append(str != null ? StringsKt.take(str, 3) : null).append(' ').append(this.currentYear).toString();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$ArrayArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:593)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    private final void checkPermissionsAndCapture() {
        ConstraintLayout constraintLayout;
        FragmentLaborMonthlyCalendarBinding binding;
        LinearLayout linearLayout;
        FragmentLaborMonthlyCalendarBinding binding2;
        LinearLayout linearLayout2;
        FragmentLaborMonthlyCalendarBinding binding3;
        RecyclerView recyclerView;
        ArrayList arrayList = new ArrayList();
        if (Build.VERSION.SDK_INT < 29 && ContextCompat.checkSelfPermission(requireContext(), "android.permission.READ_EXTERNAL_STORAGE") != 0) {
            arrayList.add("android.permission.READ_EXTERNAL_STORAGE");
        }
        ArrayList arrayList2 = arrayList;
        if (!arrayList2.isEmpty()) {
            this.requestPermissionLauncher.launch(arrayList2.toArray(new String[0]));
            return;
        }
        try {
            FragmentLaborMonthlyCalendarBinding binding4 = getBinding();
            if (binding4 == null || (constraintLayout = binding4.toolbar) == null || (binding = getBinding()) == null || (linearLayout = binding.llStats) == null || (binding2 = getBinding()) == null || (linearLayout2 = binding2.llTableHeader) == null || (binding3 = getBinding()) == null || (recyclerView = binding3.rvAttendance) == null) {
                return;
            }
            BaseExtensionKt.captureAndShareFullContent(this, constraintLayout, linearLayout, linearLayout2, recyclerView);
            Unit unit = Unit.INSTANCE;
        } catch (Exception unused) {
            Unit unit2 = Unit.INSTANCE;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void requestPermissionLauncher$lambda$47(LaborMonthlyCalendarFragment this$0, Map permissions) {
        ConstraintLayout constraintLayout;
        FragmentLaborMonthlyCalendarBinding binding;
        LinearLayout linearLayout;
        FragmentLaborMonthlyCalendarBinding binding2;
        LinearLayout linearLayout2;
        FragmentLaborMonthlyCalendarBinding binding3;
        RecyclerView recyclerView;
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(permissions, "permissions");
        Set setEntrySet = permissions.entrySet();
        if (!(setEntrySet instanceof Collection) || !setEntrySet.isEmpty()) {
            Iterator it = setEntrySet.iterator();
            while (it.hasNext()) {
                if (!((Boolean) ((Map.Entry) it.next()).getValue()).booleanValue()) {
                    Toast.makeText(this$0.requireContext(), "Permission denied", 0).show();
                    return;
                }
            }
        }
        try {
            FragmentLaborMonthlyCalendarBinding binding4 = this$0.getBinding();
            if (binding4 == null || (constraintLayout = binding4.toolbar) == null || (binding = this$0.getBinding()) == null || (linearLayout = binding.llStats) == null || (binding2 = this$0.getBinding()) == null || (linearLayout2 = binding2.llTableHeader) == null || (binding3 = this$0.getBinding()) == null || (recyclerView = binding3.rvAttendance) == null) {
                return;
            }
            BaseExtensionKt.captureAndShareFullContent(this$0, constraintLayout, linearLayout, linearLayout2, recyclerView);
            Unit unit = Unit.INSTANCE;
        } catch (Exception unused) {
            Unit unit2 = Unit.INSTANCE;
        }
    }

    private final void startRefreshAnimation() {
        ImageView imageView;
        FragmentLaborMonthlyCalendarBinding binding = getBinding();
        if (binding == null || (imageView = binding.ivRefreshAmount) == null) {
            return;
        }
        ObjectAnimator objectAnimator = this.refreshAnimator;
        if (objectAnimator != null) {
            objectAnimator.cancel();
        }
        ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(imageView, "rotation", imageView.getRotation(), imageView.getRotation() + 360.0f);
        objectAnimatorOfFloat.setDuration(800L);
        objectAnimatorOfFloat.setRepeatCount(-1);
        objectAnimatorOfFloat.setInterpolator(null);
        objectAnimatorOfFloat.start();
        this.refreshAnimator = objectAnimatorOfFloat;
    }

    private final void stopRefreshAnimation() {
        ImageView imageView;
        ObjectAnimator objectAnimator = this.refreshAnimator;
        if (objectAnimator != null) {
            objectAnimator.cancel();
            FragmentLaborMonthlyCalendarBinding binding = getBinding();
            if (binding != null && (imageView = binding.ivRefreshAmount) != null) {
                imageView.setRotation(0.0f);
            }
        }
        this.refreshAnimator = null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void navigateToReport(String monthYear) {
        String string;
        String string2;
        AttendanceUser attendanceUser = this.currentAttendanceUser;
        if (attendanceUser == null) {
            return;
        }
        getViewModel().stopReportLoading();
        FragmentNavigator fragmentNavigator = getFragmentNavigator();
        ReportFragment.Companion companion = ReportFragment.INSTANCE;
        String str = this.staffName;
        String str2 = this.staffPhone;
        int totalPresent = (int) attendanceUser.getTotalPresent();
        int totalAbsent = (int) attendanceUser.getTotalAbsent();
        Double totalOt = attendanceUser.getTotalOt();
        double dDoubleValue = totalOt != null ? totalOt.doubleValue() : 0.0d;
        Double totalH = attendanceUser.getTotalH();
        int iDoubleValue = totalH != null ? (int) totalH.doubleValue() : 0;
        Double totalPh = attendanceUser.getTotalPh();
        String str3 = Identify.UNSET_VALUE;
        String str4 = (totalPh == null || (string2 = totalPh.toString()) == null) ? Identify.UNSET_VALUE : string2;
        Double totalPp = attendanceUser.getTotalPp();
        if (totalPp != null && (string = totalPp.toString()) != null) {
            str3 = string;
        }
        double totalAdvance = attendanceUser.getTotalAdvance();
        Double d = this.currentSalary;
        fragmentNavigator.start(companion.newInstance(str, str2, monthYear, totalPresent, totalAbsent, dDoubleValue, iDoubleValue, str4, str3, totalAdvance, d != null ? d.doubleValue() : 0.0d));
    }

    private final void checkAndShowCoachMark() {
        try {
            if (isAdded() && getView() != null && !isDetached() && getActivity() != null) {
                LifecycleOwner viewLifecycleOwner = getViewLifecycleOwner();
                Intrinsics.checkNotNullExpressionValue(viewLifecycleOwner, "getViewLifecycleOwner(...)");
                BuildersKt__Builders_commonKt.launch$default(LifecycleOwnerKt.getLifecycleScope(viewLifecycleOwner), null, null, new C37511(null), 3, null);
            }
        } catch (Exception unused) {
        }
    }

    /* JADX INFO: renamed from: com.laborbook.keep.screen.calendar.fragment.LaborMonthlyCalendarFragment$checkAndShowCoachMark$1 */
    /* JADX INFO: compiled from: LaborMonthlyCalendarFragment.kt */
    @Metadata(m2721d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, m2722d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, m2723k = 3, m2724mv = {2, 0, 0}, m2726xi = 48)
    @DebugMetadata(m2734c = "com.laborbook.keep.screen.calendar.fragment.LaborMonthlyCalendarFragment$checkAndShowCoachMark$1", m2735f = "LaborMonthlyCalendarFragment.kt", m2736i = {}, m2737l = {790}, m2738m = "invokeSuspend", m2739n = {}, m2740s = {})
    static final class C37511 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        int label;

        C37511(Continuation<? super C37511> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return LaborMonthlyCalendarFragment.this.new C37511(continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((C37511) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            FragmentLaborMonthlyCalendarBinding binding;
            TextViewBold12 textViewBold12;
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                if (LaborMonthlyCalendarFragment.this.isAdded() && LaborMonthlyCalendarFragment.this.getContext() != null && LaborMonthlyCalendarFragment.this.getView() != null && !LaborMonthlyCalendarFragment.this.isDetached()) {
                    CoachMarkManager coachMarkManager = LaborMonthlyCalendarFragment.this.getCoachMarkManager();
                    Context contextRequireContext = LaborMonthlyCalendarFragment.this.requireContext();
                    Intrinsics.checkNotNullExpressionValue(contextRequireContext, "requireContext(...)");
                    this.label = 1;
                    obj = coachMarkManager.shouldShowCoachMark(contextRequireContext, this);
                    if (obj == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                } else {
                    return Unit.INSTANCE;
                }
            } else {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(obj);
            }
            if (((Boolean) obj).booleanValue() && (binding = LaborMonthlyCalendarFragment.this.getBinding()) != null && (textViewBold12 = binding.tvEdit) != null) {
                final LaborMonthlyCalendarFragment laborMonthlyCalendarFragment = LaborMonthlyCalendarFragment.this;
                Boxing.boxBoolean(textViewBold12.post(new Runnable() { // from class: com.laborbook.keep.screen.calendar.fragment.LaborMonthlyCalendarFragment$checkAndShowCoachMark$1$$ExternalSyntheticLambda0
                    @Override // java.lang.Runnable
                    public final void run() {
                        LaborMonthlyCalendarFragment.C37511.invokeSuspend$lambda$2(laborMonthlyCalendarFragment);
                    }
                }));
            }
            return Unit.INSTANCE;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void invokeSuspend$lambda$2(final LaborMonthlyCalendarFragment laborMonthlyCalendarFragment) {
            FragmentLaborMonthlyCalendarBinding binding;
            TextViewBold12 textViewBold12;
            if (!laborMonthlyCalendarFragment.isAdded() || laborMonthlyCalendarFragment.getContext() == null || laborMonthlyCalendarFragment.getActivity() == null || (binding = laborMonthlyCalendarFragment.getBinding()) == null || (textViewBold12 = binding.tvEdit) == null) {
                return;
            }
            CoachMarkManager coachMarkManager = laborMonthlyCalendarFragment.getCoachMarkManager();
            FragmentActivity fragmentActivityRequireActivity = laborMonthlyCalendarFragment.requireActivity();
            Intrinsics.checkNotNullExpressionValue(fragmentActivityRequireActivity, "requireActivity(...)");
            coachMarkManager.showEditButtonCoachMark(fragmentActivityRequireActivity, textViewBold12, new Function0() { // from class: com.laborbook.keep.screen.calendar.fragment.LaborMonthlyCalendarFragment$checkAndShowCoachMark$1$$ExternalSyntheticLambda1
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return LaborMonthlyCalendarFragment.C37511.invokeSuspend$lambda$2$lambda$1$lambda$0(laborMonthlyCalendarFragment);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final Unit invokeSuspend$lambda$2$lambda$1$lambda$0(LaborMonthlyCalendarFragment laborMonthlyCalendarFragment) {
            LifecycleOwner viewLifecycleOwner = laborMonthlyCalendarFragment.getViewLifecycleOwner();
            Intrinsics.checkNotNullExpressionValue(viewLifecycleOwner, "getViewLifecycleOwner(...)");
            BuildersKt__Builders_commonKt.launch$default(LifecycleOwnerKt.getLifecycleScope(viewLifecycleOwner), null, null, new LaborMonthlyCalendarFragment$checkAndShowCoachMark$1$1$1$1$1(laborMonthlyCalendarFragment, null), 3, null);
            return Unit.INSTANCE;
        }
    }

    @Override // com.laborbook.base.BaseFragment, androidx.fragment.app.Fragment
    public void onDestroyView() {
        getObserverUtil().setOnDailyAttendanceMarkListener(null);
        getObserverUtil().setRefreshCalendar(null);
        getObserverUtil().setGoBackFromCalendar(null);
        stopRefreshAnimation();
        super.onDestroyView();
    }

    /* JADX INFO: compiled from: LaborMonthlyCalendarFragment.kt */
    @Metadata(m2721d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0018\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\u0007H\u0007¨\u0006\t"}, m2722d2 = {"Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment$Companion;", "", "<init>", "()V", "newInstance", "Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment;", "staffId", "", "staffPhone", "keep_release"}, m2723k = 1, m2724mv = {2, 0, 0}, m2726xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        @JvmStatic
        public final LaborMonthlyCalendarFragment newInstance(String staffId, String staffPhone) {
            Intrinsics.checkNotNullParameter(staffId, "staffId");
            Intrinsics.checkNotNullParameter(staffPhone, "staffPhone");
            LaborMonthlyCalendarFragment laborMonthlyCalendarFragment = new LaborMonthlyCalendarFragment();
            Bundle bundle = new Bundle();
            bundle.putString("staff_id", staffId);
            bundle.putString("staff_phone", staffPhone);
            laborMonthlyCalendarFragment.setArguments(bundle);
            return laborMonthlyCalendarFragment;
        }
    }
}
