package com.laborbook.keep.screen.calendar.fragment;

import android.content.Context;
import android.os.Bundle;
import android.text.Editable;
import android.text.TextWatcher;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.NumberPicker;
import android.widget.TextView;
import android.widget.Toast;
import androidx.fragment.app.Fragment;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.LifecycleOwner;
import androidx.lifecycle.LifecycleOwnerKt;
import androidx.lifecycle.RepeatOnLifecycleKt;
import com.boilerplate.uikit.views.buttons.PrimaryButton;
import com.boilerplate.uikit.views.textviews.text14.TextViewBold14;
import com.boilerplate.uikit.views.textviews.text16.TextViewBold16;
import com.google.android.material.bottomsheet.BottomSheetDialog;
import com.itextpdf.p017io.codec.TIFFConstants;
import com.itextpdf.styledxmlparser.css.CommonCssConstants;
import com.laborbook.base.BaseBottomsheetFragment;
import com.laborbook.base.BaseExtensionKt;
import com.laborbook.base.analytics.ConstantEventNames;
import com.laborbook.base.datastore.DataStoreManager;
import com.laborbook.keep.C3656R;
import com.laborbook.keep.databinding.FragmentOvertimeBottomsheetBinding;
import com.laborbook.keep.screen.attendance.AttendanceMarkBottomsheetFragment;
import com.laborbook.keep.screen.calendar.utils.ObserverUtil;
import com.laborbook.keep.screen.calendar.viewmodel.OvertimeViewModel;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.collections.MapsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
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
import kotlin.jvm.internal.StringCompanionObject;
import kotlin.text.StringsKt;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.flow.FlowKt;
import org.koin.androidx.viewmodel.ext.android.ViewModelStoreOwnerExtKt;
import org.koin.core.Koin;
import org.koin.core.component.KoinComponent;
import org.koin.core.component.KoinScopeComponent;
import org.koin.core.parameter.DefinitionParameters;
import org.koin.core.qualifier.Qualifier;
import org.koin.core.scope.Scope;
import org.koin.p048mp.KoinPlatformTools;

/* JADX INFO: compiled from: OvertimeBottomSheetFragment.kt */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(m2721d1 = {"\u0000h\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010\u0006\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0010\u000b\n\u0002\b\u0003\u0018\u0000 82\b\u0012\u0004\u0012\u00020\u00020\u00012\u00020\u0003:\u00018B\u0007¢\u0006\u0004\b\u0004\u0010\u0005J\u0012\u0010!\u001a\u00020\"2\b\u0010#\u001a\u0004\u0018\u00010$H\u0016J$\u0010%\u001a\u00020\u00022\u0006\u0010&\u001a\u00020'2\b\u0010(\u001a\u0004\u0018\u00010)2\b\u0010#\u001a\u0004\u0018\u00010$H\u0016J\u001a\u0010*\u001a\u00020\"2\u0006\u0010+\u001a\u00020,2\b\u0010#\u001a\u0004\u0018\u00010$H\u0016J\b\u0010-\u001a\u00020\"H\u0002J\b\u0010.\u001a\u00020\"H\u0002J\b\u0010/\u001a\u00020\"H\u0002J\b\u00100\u001a\u00020\"H\u0002J\b\u00101\u001a\u00020\"H\u0002J\b\u00102\u001a\u00020\"H\u0002J\b\u00103\u001a\u00020\"H\u0002J\u0010\u00104\u001a\u00020\"2\u0006\u00105\u001a\u000206H\u0002J\b\u00107\u001a\u00020\"H\u0016R\u0014\u0010\u0006\u001a\u00020\u0007X\u0096D¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\tR\u001b\u0010\n\u001a\u00020\u000b8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u000e\u0010\u000f\u001a\u0004\b\f\u0010\rR\u001b\u0010\u0010\u001a\u00020\u00118BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0014\u0010\u000f\u001a\u0004\b\u0012\u0010\u0013R\u001b\u0010\u0015\u001a\u00020\u00168BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0019\u0010\u000f\u001a\u0004\b\u0017\u0010\u0018R\u0010\u0010\u001a\u001a\u0004\u0018\u00010\u0002X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u001b\u001a\u0004\u0018\u00010\u0007X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u001c\u001a\u00020\u0007X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u001d\u001a\u0004\u0018\u00010\u0007X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u001e\u001a\u00020\u001fX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010 \u001a\u00020\u001fX\u0082\u000e¢\u0006\u0002\n\u0000¨\u00069"}, m2722d2 = {"Lcom/laborbook/keep/screen/calendar/fragment/OvertimeBottomSheetFragment;", "Lcom/laborbook/base/BaseBottomsheetFragment;", "Lcom/laborbook/keep/databinding/FragmentOvertimeBottomsheetBinding;", "Lorg/koin/core/component/KoinComponent;", "<init>", "()V", "screenName", "", "getScreenName", "()Ljava/lang/String;", "viewModel", "Lcom/laborbook/keep/screen/calendar/viewmodel/OvertimeViewModel;", "getViewModel", "()Lcom/laborbook/keep/screen/calendar/viewmodel/OvertimeViewModel;", "viewModel$delegate", "Lkotlin/Lazy;", "dataStore", "Lcom/laborbook/base/datastore/DataStoreManager;", "getDataStore", "()Lcom/laborbook/base/datastore/DataStoreManager;", "dataStore$delegate", "observerUtil", "Lcom/laborbook/keep/screen/calendar/utils/ObserverUtil;", "getObserverUtil", "()Lcom/laborbook/keep/screen/calendar/utils/ObserverUtil;", "observerUtil$delegate", "_binding", "date", "selectedTimeRaw", "userId", "existingOtMinutes", "", "existingOtPerHour", "onCreate", "", "savedInstanceState", "Landroid/os/Bundle;", "getViewBinding", "inflater", "Landroid/view/LayoutInflater;", "container", "Landroid/view/ViewGroup;", "onViewCreated", "view", "Landroid/view/View;", "setupClickListeners", "setupTextWatchers", "showTimePicker", "calculateTotal", "saveOvertime", "deleteOvertime", "observeViewModel", "updateButtonStyle", CommonCssConstants.ENABLED, "", "onDestroyView", "Companion", "keep_release"}, m2723k = 1, m2724mv = {2, 0, 0}, m2726xi = 48)
public final class OvertimeBottomSheetFragment extends BaseBottomsheetFragment<FragmentOvertimeBottomsheetBinding> implements KoinComponent {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final String DATE = "DATE";
    private static final String OT_MINUTES = "ot_minutes";
    private static final String OT_PER_HOUR = "ot_per_hour";
    public static final String TAG = "OvertimeBottomSheetFragment";
    private static final String USER_ID = "user_id";
    private FragmentOvertimeBottomsheetBinding _binding;

    /* JADX INFO: renamed from: dataStore$delegate, reason: from kotlin metadata */
    private final Lazy dataStore;
    private String date;
    private double existingOtMinutes;
    private double existingOtPerHour;

    /* JADX INFO: renamed from: observerUtil$delegate, reason: from kotlin metadata */
    private final Lazy observerUtil;
    private final String screenName = ConstantEventNames.OVERTIME_BOTTOM_SHEET;
    private String selectedTimeRaw;
    private String userId;

    /* JADX INFO: renamed from: viewModel$delegate, reason: from kotlin metadata */
    private final Lazy viewModel;

    @JvmStatic
    public static final OvertimeBottomSheetFragment newInstance(String str, String str2, double d, double d2) {
        return INSTANCE.newInstance(str, str2, d, d2);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public OvertimeBottomSheetFragment() {
        final OvertimeBottomSheetFragment overtimeBottomSheetFragment = this;
        LazyThreadSafetyMode lazyThreadSafetyMode = LazyThreadSafetyMode.SYNCHRONIZED;
        final Qualifier qualifier = null;
        final Object[] objArr = 0 == true ? 1 : 0;
        this.viewModel = LazyKt.lazy(lazyThreadSafetyMode, (Function0) new Function0<OvertimeViewModel>() { // from class: com.laborbook.keep.screen.calendar.fragment.OvertimeBottomSheetFragment$special$$inlined$viewModel$default$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            /* JADX WARN: Type inference failed for: r0v1, types: [androidx.lifecycle.ViewModel, com.laborbook.keep.screen.calendar.viewmodel.OvertimeViewModel] */
            @Override // kotlin.jvm.functions.Function0
            public final OvertimeViewModel invoke() {
                return ViewModelStoreOwnerExtKt.getViewModel(overtimeBottomSheetFragment, qualifier, Reflection.getOrCreateKotlinClass(OvertimeViewModel.class), objArr);
            }
        });
        final OvertimeBottomSheetFragment overtimeBottomSheetFragment2 = this;
        LazyThreadSafetyMode lazyThreadSafetyModeDefaultLazyMode = KoinPlatformTools.INSTANCE.defaultLazyMode();
        final Object[] objArr2 = 0 == true ? 1 : 0;
        final Object[] objArr3 = 0 == true ? 1 : 0;
        this.dataStore = LazyKt.lazy(lazyThreadSafetyModeDefaultLazyMode, (Function0) new Function0<DataStoreManager>() { // from class: com.laborbook.keep.screen.calendar.fragment.OvertimeBottomSheetFragment$special$$inlined$inject$default$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX WARN: Type inference failed for: r0v5, types: [com.laborbook.base.datastore.DataStoreManager, java.lang.Object] */
            @Override // kotlin.jvm.functions.Function0
            public final DataStoreManager invoke() {
                Scope rootScope;
                KoinComponent koinComponent = overtimeBottomSheetFragment2;
                Qualifier qualifier2 = objArr2;
                Function0<? extends DefinitionParameters> function0 = objArr3;
                if (koinComponent instanceof KoinScopeComponent) {
                    rootScope = ((KoinScopeComponent) koinComponent).getScope();
                } else {
                    rootScope = koinComponent.getKoin().getScopeRegistry().getRootScope();
                }
                return rootScope.get(Reflection.getOrCreateKotlinClass(DataStoreManager.class), qualifier2, function0);
            }
        });
        LazyThreadSafetyMode lazyThreadSafetyModeDefaultLazyMode2 = KoinPlatformTools.INSTANCE.defaultLazyMode();
        final Object[] objArr4 = 0 == true ? 1 : 0;
        final Object[] objArr5 = 0 == true ? 1 : 0;
        this.observerUtil = LazyKt.lazy(lazyThreadSafetyModeDefaultLazyMode2, (Function0) new Function0<ObserverUtil>() { // from class: com.laborbook.keep.screen.calendar.fragment.OvertimeBottomSheetFragment$special$$inlined$inject$default$2
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX WARN: Type inference failed for: r0v5, types: [com.laborbook.keep.screen.calendar.utils.ObserverUtil, java.lang.Object] */
            @Override // kotlin.jvm.functions.Function0
            public final ObserverUtil invoke() {
                Scope rootScope;
                KoinComponent koinComponent = overtimeBottomSheetFragment2;
                Qualifier qualifier2 = objArr4;
                Function0<? extends DefinitionParameters> function0 = objArr5;
                if (koinComponent instanceof KoinScopeComponent) {
                    rootScope = ((KoinScopeComponent) koinComponent).getScope();
                } else {
                    rootScope = koinComponent.getKoin().getScopeRegistry().getRootScope();
                }
                return rootScope.get(Reflection.getOrCreateKotlinClass(ObserverUtil.class), qualifier2, function0);
            }
        });
        this.selectedTimeRaw = "";
    }

    @Override // org.koin.core.component.KoinComponent
    public Koin getKoin() {
        return KoinComponent.DefaultImpls.getKoin(this);
    }

    @Override // com.laborbook.base.BaseBottomsheetFragment
    public String getScreenName() {
        return this.screenName;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final OvertimeViewModel getViewModel() {
        return (OvertimeViewModel) this.viewModel.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final DataStoreManager getDataStore() {
        return (DataStoreManager) this.dataStore.getValue();
    }

    private final ObserverUtil getObserverUtil() {
        return (ObserverUtil) this.observerUtil.getValue();
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        Bundle arguments = getArguments();
        this.date = arguments != null ? arguments.getString(DATE) : null;
        Bundle arguments2 = getArguments();
        this.userId = arguments2 != null ? arguments2.getString("user_id") : null;
        Bundle arguments3 = getArguments();
        this.existingOtMinutes = arguments3 != null ? arguments3.getDouble(OT_MINUTES, 0.0d) : 0.0d;
        Bundle arguments4 = getArguments();
        this.existingOtPerHour = arguments4 != null ? arguments4.getDouble(OT_PER_HOUR, 0.0d) : 0.0d;
    }

    @Override // com.laborbook.base.BaseBottomsheetFragment
    public FragmentOvertimeBottomsheetBinding getViewBinding(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        Intrinsics.checkNotNullParameter(inflater, "inflater");
        FragmentOvertimeBottomsheetBinding fragmentOvertimeBottomsheetBindingInflate = FragmentOvertimeBottomsheetBinding.inflate(inflater, container, false);
        this._binding = fragmentOvertimeBottomsheetBindingInflate;
        Intrinsics.checkNotNull(fragmentOvertimeBottomsheetBindingInflate);
        return fragmentOvertimeBottomsheetBindingInflate;
    }

    @Override // com.laborbook.base.BaseBottomsheetFragment, androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle savedInstanceState) {
        TextView textView;
        PrimaryButton primaryButton;
        TextView textView2;
        EditText editText;
        EditText editText2;
        TextViewBold14 textViewBold14;
        Intrinsics.checkNotNullParameter(view, "view");
        super.onViewCreated(view, savedInstanceState);
        setupClickListeners();
        setupTextWatchers();
        FragmentOvertimeBottomsheetBinding binding = getBinding();
        if (binding != null && (textViewBold14 = binding.tvDate) != null) {
            String str = this.date;
            textViewBold14.setText(str != null ? BaseExtensionKt.toFormattedDate(str) : null);
        }
        double d = this.existingOtMinutes;
        if (d > 0.0d && this.existingOtPerHour > 0.0d) {
            double d2 = 60;
            StringCompanionObject stringCompanionObject = StringCompanionObject.INSTANCE;
            String str2 = String.format("%02d:%02d", Arrays.copyOf(new Object[]{Integer.valueOf((int) (d / d2)), Integer.valueOf((int) (d % d2))}, 2));
            Intrinsics.checkNotNullExpressionValue(str2, "format(...)");
            this.selectedTimeRaw = str2;
            FragmentOvertimeBottomsheetBinding binding2 = getBinding();
            if (binding2 != null && (editText2 = binding2.etHours) != null) {
                editText2.setText(this.selectedTimeRaw + " hrs");
            }
            FragmentOvertimeBottomsheetBinding binding3 = getBinding();
            if (binding3 != null && (editText = binding3.etRate) != null) {
                editText.setText(String.valueOf(this.existingOtPerHour));
            }
            calculateTotal();
            FragmentOvertimeBottomsheetBinding binding4 = getBinding();
            if (binding4 != null && (textView2 = binding4.btnRemoveOt) != null) {
                textView2.setVisibility(0);
            }
        } else {
            FragmentOvertimeBottomsheetBinding binding5 = getBinding();
            if (binding5 != null && (primaryButton = binding5.btnOk) != null) {
                primaryButton.setEnabled(false);
            }
            updateButtonStyle(false);
            FragmentOvertimeBottomsheetBinding binding6 = getBinding();
            if (binding6 != null && (textView = binding6.btnRemoveOt) != null) {
                textView.setVisibility(8);
            }
        }
        observeViewModel();
    }

    private final void setupClickListeners() {
        TextView textView;
        PrimaryButton primaryButton;
        EditText editText;
        EditText editText2;
        ImageView imageView;
        FragmentOvertimeBottomsheetBinding binding = getBinding();
        if (binding != null && (imageView = binding.ivClose) != null) {
            imageView.setOnClickListener(new View.OnClickListener() { // from class: com.laborbook.keep.screen.calendar.fragment.OvertimeBottomSheetFragment$$ExternalSyntheticLambda0
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    OvertimeBottomSheetFragment.setupClickListeners$lambda$0(this.f$0, view);
                }
            });
        }
        FragmentOvertimeBottomsheetBinding binding2 = getBinding();
        if (binding2 != null && (editText2 = binding2.etHours) != null) {
            editText2.setOnClickListener(new View.OnClickListener() { // from class: com.laborbook.keep.screen.calendar.fragment.OvertimeBottomSheetFragment$$ExternalSyntheticLambda5
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    OvertimeBottomSheetFragment.setupClickListeners$lambda$1(this.f$0, view);
                }
            });
        }
        FragmentOvertimeBottomsheetBinding binding3 = getBinding();
        if (binding3 != null && (editText = binding3.etHours) != null) {
            editText.setOnFocusChangeListener(new View.OnFocusChangeListener() { // from class: com.laborbook.keep.screen.calendar.fragment.OvertimeBottomSheetFragment$$ExternalSyntheticLambda6
                @Override // android.view.View.OnFocusChangeListener
                public final void onFocusChange(View view, boolean z) {
                    OvertimeBottomSheetFragment.setupClickListeners$lambda$2(this.f$0, view, z);
                }
            });
        }
        FragmentOvertimeBottomsheetBinding binding4 = getBinding();
        if (binding4 != null && (primaryButton = binding4.btnOk) != null) {
            primaryButton.setOnClickListener(new View.OnClickListener() { // from class: com.laborbook.keep.screen.calendar.fragment.OvertimeBottomSheetFragment$$ExternalSyntheticLambda7
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    OvertimeBottomSheetFragment.setupClickListeners$lambda$3(this.f$0, view);
                }
            });
        }
        FragmentOvertimeBottomsheetBinding binding5 = getBinding();
        if (binding5 == null || (textView = binding5.btnRemoveOt) == null) {
            return;
        }
        textView.setOnClickListener(new View.OnClickListener() { // from class: com.laborbook.keep.screen.calendar.fragment.OvertimeBottomSheetFragment$$ExternalSyntheticLambda8
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                OvertimeBottomSheetFragment.setupClickListeners$lambda$4(this.f$0, view);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void setupClickListeners$lambda$0(OvertimeBottomSheetFragment this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.dismiss();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void setupClickListeners$lambda$1(OvertimeBottomSheetFragment this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.showTimePicker();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void setupClickListeners$lambda$2(OvertimeBottomSheetFragment this$0, View view, boolean z) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        if (z) {
            this$0.showTimePicker();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void setupClickListeners$lambda$3(OvertimeBottomSheetFragment this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.saveOvertime();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void setupClickListeners$lambda$4(OvertimeBottomSheetFragment this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.deleteOvertime();
    }

    private final void setupTextWatchers() {
        EditText editText;
        EditText editText2;
        final Function4 function4 = new Function4() { // from class: com.laborbook.keep.screen.calendar.fragment.OvertimeBottomSheetFragment$$ExternalSyntheticLambda9
            @Override // kotlin.jvm.functions.Function4
            public final Object invoke(Object obj, Object obj2, Object obj3, Object obj4) {
                return OvertimeBottomSheetFragment.setupTextWatchers$lambda$5(this.f$0, (CharSequence) obj, ((Integer) obj2).intValue(), ((Integer) obj3).intValue(), ((Integer) obj4).intValue());
            }
        };
        FragmentOvertimeBottomsheetBinding binding = getBinding();
        if (binding != null && (editText2 = binding.etHours) != null) {
            editText2.addTextChangedListener(new TextWatcher() { // from class: com.laborbook.keep.screen.calendar.fragment.OvertimeBottomSheetFragment$setupTextWatchers$$inlined$doOnTextChanged$1
                @Override // android.text.TextWatcher
                public void afterTextChanged(Editable s) {
                }

                @Override // android.text.TextWatcher
                public void beforeTextChanged(CharSequence text, int start, int count, int after) {
                }

                @Override // android.text.TextWatcher
                public void onTextChanged(CharSequence text, int start, int before, int count) {
                    function4.invoke(text, Integer.valueOf(start), Integer.valueOf(before), Integer.valueOf(count));
                }
            });
        }
        FragmentOvertimeBottomsheetBinding binding2 = getBinding();
        if (binding2 == null || (editText = binding2.etRate) == null) {
            return;
        }
        editText.addTextChangedListener(new TextWatcher() { // from class: com.laborbook.keep.screen.calendar.fragment.OvertimeBottomSheetFragment$setupTextWatchers$$inlined$doOnTextChanged$2
            @Override // android.text.TextWatcher
            public void afterTextChanged(Editable s) {
            }

            @Override // android.text.TextWatcher
            public void beforeTextChanged(CharSequence text, int start, int count, int after) {
            }

            @Override // android.text.TextWatcher
            public void onTextChanged(CharSequence text, int start, int before, int count) {
                function4.invoke(text, Integer.valueOf(start), Integer.valueOf(before), Integer.valueOf(count));
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:24:0x0043  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final kotlin.Unit setupTextWatchers$lambda$5(com.laborbook.keep.screen.calendar.fragment.OvertimeBottomSheetFragment r0, java.lang.CharSequence r1, int r2, int r3, int r4) {
        /*
            java.lang.String r1 = "this$0"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r0, r1)
            r0.calculateTotal()
            androidx.viewbinding.ViewBinding r1 = r0.getBinding()
            com.laborbook.keep.databinding.FragmentOvertimeBottomsheetBinding r1 = (com.laborbook.keep.databinding.FragmentOvertimeBottomsheetBinding) r1
            r2 = 0
            if (r1 == 0) goto L1a
            android.widget.EditText r1 = r1.etHours
            if (r1 == 0) goto L1a
            android.text.Editable r1 = r1.getText()
            goto L1b
        L1a:
            r1 = r2
        L1b:
            java.lang.CharSequence r1 = (java.lang.CharSequence) r1
            if (r1 == 0) goto L43
            boolean r1 = kotlin.text.StringsKt.isBlank(r1)
            if (r1 == 0) goto L26
            goto L43
        L26:
            androidx.viewbinding.ViewBinding r1 = r0.getBinding()
            com.laborbook.keep.databinding.FragmentOvertimeBottomsheetBinding r1 = (com.laborbook.keep.databinding.FragmentOvertimeBottomsheetBinding) r1
            if (r1 == 0) goto L36
            android.widget.EditText r1 = r1.etRate
            if (r1 == 0) goto L36
            android.text.Editable r2 = r1.getText()
        L36:
            java.lang.CharSequence r2 = (java.lang.CharSequence) r2
            if (r2 == 0) goto L43
            boolean r1 = kotlin.text.StringsKt.isBlank(r2)
            if (r1 == 0) goto L41
            goto L43
        L41:
            r1 = 1
            goto L44
        L43:
            r1 = 0
        L44:
            androidx.viewbinding.ViewBinding r2 = r0.getBinding()
            com.laborbook.keep.databinding.FragmentOvertimeBottomsheetBinding r2 = (com.laborbook.keep.databinding.FragmentOvertimeBottomsheetBinding) r2
            if (r2 == 0) goto L53
            com.boilerplate.uikit.views.buttons.PrimaryButton r2 = r2.btnOk
            if (r2 == 0) goto L53
            r2.setEnabled(r1)
        L53:
            r0.updateButtonStyle(r1)
            kotlin.Unit r0 = kotlin.Unit.INSTANCE
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.laborbook.keep.screen.calendar.fragment.OvertimeBottomSheetFragment.setupTextWatchers$lambda$5(com.laborbook.keep.screen.calendar.fragment.OvertimeBottomSheetFragment, java.lang.CharSequence, int, int, int):kotlin.Unit");
    }

    private final void showTimePicker() {
        View decorView;
        String str;
        Integer intOrNull;
        String str2;
        Integer intOrNull2;
        final BottomSheetDialog bottomSheetDialog = new BottomSheetDialog(requireContext());
        View viewInflate = getLayoutInflater().inflate(C3656R.layout.dialog_overtime_timepicker, (ViewGroup) null);
        bottomSheetDialog.setContentView(viewInflate);
        ImageView imageView = (ImageView) viewInflate.findViewById(C3656R.id.iv_close_picker);
        final NumberPicker numberPicker = (NumberPicker) viewInflate.findViewById(C3656R.id.np_hours);
        final NumberPicker numberPicker2 = (NumberPicker) viewInflate.findViewById(C3656R.id.np_minutes);
        final PrimaryButton primaryButton = (PrimaryButton) viewInflate.findViewById(C3656R.id.btn_picker_ok);
        int iIntValue = 0;
        numberPicker.setMinValue(0);
        numberPicker.setMaxValue(23);
        numberPicker2.setMinValue(0);
        numberPicker2.setMaxValue(59);
        int iIntValue2 = (this.selectedTimeRaw.length() <= 0 || (str2 = (String) CollectionsKt.getOrNull(StringsKt.split$default((CharSequence) this.selectedTimeRaw, new String[]{":"}, false, 0, 6, (Object) null), 0)) == null || (intOrNull2 = StringsKt.toIntOrNull(str2)) == null) ? 0 : intOrNull2.intValue();
        if (this.selectedTimeRaw.length() > 0 && (str = (String) CollectionsKt.getOrNull(StringsKt.split$default((CharSequence) this.selectedTimeRaw, new String[]{":"}, false, 0, 6, (Object) null), 1)) != null && (intOrNull = StringsKt.toIntOrNull(str)) != null) {
            iIntValue = intOrNull.intValue();
        }
        numberPicker.setValue(iIntValue2);
        numberPicker2.setValue(iIntValue);
        Intrinsics.checkNotNull(numberPicker);
        Context contextRequireContext = requireContext();
        Intrinsics.checkNotNullExpressionValue(contextRequireContext, "requireContext(...)");
        OvertimeBottomSheetFragmentKt.applyConsistentStyling(numberPicker, contextRequireContext);
        Intrinsics.checkNotNull(numberPicker2);
        Context contextRequireContext2 = requireContext();
        Intrinsics.checkNotNullExpressionValue(contextRequireContext2, "requireContext(...)");
        OvertimeBottomSheetFragmentKt.applyConsistentStyling(numberPicker2, contextRequireContext2);
        numberPicker.postDelayed(new Runnable() { // from class: com.laborbook.keep.screen.calendar.fragment.OvertimeBottomSheetFragment$$ExternalSyntheticLambda11
            @Override // java.lang.Runnable
            public final void run() {
                OvertimeBottomSheetFragment.showTimePicker$lambda$6(this.f$0, numberPicker);
            }
        }, 100L);
        numberPicker2.postDelayed(new Runnable() { // from class: com.laborbook.keep.screen.calendar.fragment.OvertimeBottomSheetFragment$$ExternalSyntheticLambda12
            @Override // java.lang.Runnable
            public final void run() {
                OvertimeBottomSheetFragment.showTimePicker$lambda$7(this.f$0, numberPicker2);
            }
        }, 100L);
        numberPicker.setOnValueChangedListener(new NumberPicker.OnValueChangeListener() { // from class: com.laborbook.keep.screen.calendar.fragment.OvertimeBottomSheetFragment$$ExternalSyntheticLambda13
            @Override // android.widget.NumberPicker.OnValueChangeListener
            public final void onValueChange(NumberPicker numberPicker3, int i, int i2) {
                OvertimeBottomSheetFragment.showTimePicker$lambda$8(numberPicker, this, primaryButton, numberPicker2, numberPicker3, i, i2);
            }
        });
        numberPicker2.setOnValueChangedListener(new NumberPicker.OnValueChangeListener() { // from class: com.laborbook.keep.screen.calendar.fragment.OvertimeBottomSheetFragment$$ExternalSyntheticLambda1
            @Override // android.widget.NumberPicker.OnValueChangeListener
            public final void onValueChange(NumberPicker numberPicker3, int i, int i2) {
                OvertimeBottomSheetFragment.showTimePicker$lambda$9(numberPicker2, this, primaryButton, numberPicker, numberPicker3, i, i2);
            }
        });
        showTimePicker$updateOkState(primaryButton, numberPicker, numberPicker2);
        imageView.setOnClickListener(new View.OnClickListener() { // from class: com.laborbook.keep.screen.calendar.fragment.OvertimeBottomSheetFragment$$ExternalSyntheticLambda2
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                OvertimeBottomSheetFragment.showTimePicker$lambda$10(bottomSheetDialog, view);
            }
        });
        primaryButton.setOnClickListener(new View.OnClickListener() { // from class: com.laborbook.keep.screen.calendar.fragment.OvertimeBottomSheetFragment$$ExternalSyntheticLambda3
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                OvertimeBottomSheetFragment.showTimePicker$lambda$11(numberPicker, numberPicker2, this, bottomSheetDialog, view);
            }
        });
        bottomSheetDialog.show();
        Window window = bottomSheetDialog.getWindow();
        if (window == null || (decorView = window.getDecorView()) == null) {
            return;
        }
        decorView.post(new Runnable() { // from class: com.laborbook.keep.screen.calendar.fragment.OvertimeBottomSheetFragment$$ExternalSyntheticLambda4
            @Override // java.lang.Runnable
            public final void run() {
                OvertimeBottomSheetFragment.showTimePicker$lambda$12(this.f$0, numberPicker, numberPicker2);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void showTimePicker$lambda$6(OvertimeBottomSheetFragment this$0, NumberPicker numberPicker) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        if (!this$0.isAdded() || this$0.getContext() == null) {
            return;
        }
        Intrinsics.checkNotNull(numberPicker);
        Context contextRequireContext = this$0.requireContext();
        Intrinsics.checkNotNullExpressionValue(contextRequireContext, "requireContext(...)");
        OvertimeBottomSheetFragmentKt.applyConsistentStyling(numberPicker, contextRequireContext);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void showTimePicker$lambda$7(OvertimeBottomSheetFragment this$0, NumberPicker numberPicker) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        if (!this$0.isAdded() || this$0.getContext() == null) {
            return;
        }
        Intrinsics.checkNotNull(numberPicker);
        Context contextRequireContext = this$0.requireContext();
        Intrinsics.checkNotNullExpressionValue(contextRequireContext, "requireContext(...)");
        OvertimeBottomSheetFragmentKt.applyConsistentStyling(numberPicker, contextRequireContext);
    }

    private static final void showTimePicker$updateOkState(PrimaryButton primaryButton, NumberPicker numberPicker, NumberPicker numberPicker2) {
        primaryButton.setEnabled((numberPicker.getValue() == 0 && numberPicker2.getValue() == 0) ? false : true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void showTimePicker$lambda$8(NumberPicker numberPicker, OvertimeBottomSheetFragment this$0, PrimaryButton primaryButton, NumberPicker numberPicker2, NumberPicker numberPicker3, int i, int i2) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        showTimePicker$updateOkState(primaryButton, numberPicker, numberPicker2);
        Intrinsics.checkNotNull(numberPicker);
        Context contextRequireContext = this$0.requireContext();
        Intrinsics.checkNotNullExpressionValue(contextRequireContext, "requireContext(...)");
        OvertimeBottomSheetFragmentKt.applyConsistentStyling(numberPicker, contextRequireContext);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void showTimePicker$lambda$9(NumberPicker numberPicker, OvertimeBottomSheetFragment this$0, PrimaryButton primaryButton, NumberPicker numberPicker2, NumberPicker numberPicker3, int i, int i2) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        showTimePicker$updateOkState(primaryButton, numberPicker2, numberPicker);
        Intrinsics.checkNotNull(numberPicker);
        Context contextRequireContext = this$0.requireContext();
        Intrinsics.checkNotNullExpressionValue(contextRequireContext, "requireContext(...)");
        OvertimeBottomSheetFragmentKt.applyConsistentStyling(numberPicker, contextRequireContext);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void showTimePicker$lambda$10(BottomSheetDialog dialog, View view) {
        Intrinsics.checkNotNullParameter(dialog, "$dialog");
        dialog.dismiss();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void showTimePicker$lambda$11(NumberPicker numberPicker, NumberPicker numberPicker2, OvertimeBottomSheetFragment this$0, BottomSheetDialog dialog, View view) {
        EditText editText;
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(dialog, "$dialog");
        int value = numberPicker.getValue();
        int value2 = numberPicker2.getValue();
        StringCompanionObject stringCompanionObject = StringCompanionObject.INSTANCE;
        String str = String.format("%02d:%02d", Arrays.copyOf(new Object[]{Integer.valueOf(value), Integer.valueOf(value2)}, 2));
        Intrinsics.checkNotNullExpressionValue(str, "format(...)");
        this$0.selectedTimeRaw = str;
        FragmentOvertimeBottomsheetBinding binding = this$0.getBinding();
        if (binding != null && (editText = binding.etHours) != null) {
            editText.setText(str + " hrs");
        }
        this$0.calculateTotal();
        dialog.dismiss();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void showTimePicker$lambda$12(OvertimeBottomSheetFragment this$0, NumberPicker numberPicker, NumberPicker numberPicker2) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        if (!this$0.isAdded() || this$0.getContext() == null) {
            return;
        }
        Intrinsics.checkNotNull(numberPicker);
        Context contextRequireContext = this$0.requireContext();
        Intrinsics.checkNotNullExpressionValue(contextRequireContext, "requireContext(...)");
        OvertimeBottomSheetFragmentKt.applyConsistentStyling(numberPicker, contextRequireContext);
        Intrinsics.checkNotNull(numberPicker2);
        Context contextRequireContext2 = this$0.requireContext();
        Intrinsics.checkNotNullExpressionValue(contextRequireContext2, "requireContext(...)");
        OvertimeBottomSheetFragmentKt.applyConsistentStyling(numberPicker2, contextRequireContext2);
    }

    private final void calculateTotal() {
        PrimaryButton primaryButton;
        EditText editText;
        EditText editText2;
        String strReplace$default;
        TextViewBold16 textViewBold16;
        Double doubleOrNull;
        EditText editText3;
        Editable text;
        String string;
        EditText editText4;
        Editable text2;
        String string2;
        boolean z = false;
        try {
            FragmentOvertimeBottomsheetBinding binding = getBinding();
            String str = "";
            if (binding == null || (editText4 = binding.etHours) == null || (text2 = editText4.getText()) == null || (string2 = text2.toString()) == null || (strReplace$default = StringsKt.replace$default(string2, " hrs", "", false, 4, (Object) null)) == null) {
                strReplace$default = "";
            }
            FragmentOvertimeBottomsheetBinding binding2 = getBinding();
            if (binding2 != null && (editText3 = binding2.etRate) != null && (text = editText3.getText()) != null && (string = text.toString()) != null) {
                str = string;
            }
            if (strReplace$default.length() > 0 && str.length() > 0) {
                List listSplit$default = StringsKt.split$default((CharSequence) strReplace$default, new String[]{":"}, false, 0, 6, (Object) null);
                double d = Double.parseDouble((String) listSplit$default.get(0));
                String str2 = (String) CollectionsKt.getOrNull(listSplit$default, 1);
                double dDoubleValue = (d + (((str2 == null || (doubleOrNull = StringsKt.toDoubleOrNull(str2)) == null) ? 0.0d : doubleOrNull.doubleValue()) / ((double) 60))) * Double.parseDouble(str);
                StringCompanionObject stringCompanionObject = StringCompanionObject.INSTANCE;
                String str3 = String.format("%.2f", Arrays.copyOf(new Object[]{Double.valueOf(dDoubleValue)}, 1));
                Intrinsics.checkNotNullExpressionValue(str3, "format(...)");
                FragmentOvertimeBottomsheetBinding binding3 = getBinding();
                if (binding3 != null && (textViewBold16 = binding3.tvTotalAmount) != null) {
                    textViewBold16.setText("₹" + str3);
                }
            }
        } catch (Exception unused) {
        }
        FragmentOvertimeBottomsheetBinding binding4 = getBinding();
        Editable text3 = null;
        Editable text4 = (binding4 == null || (editText2 = binding4.etHours) == null) ? null : editText2.getText();
        if (text4 != null && !StringsKt.isBlank(text4)) {
            FragmentOvertimeBottomsheetBinding binding5 = getBinding();
            if (binding5 != null && (editText = binding5.etRate) != null) {
                text3 = editText.getText();
            }
            Editable editable = text3;
            if (editable != null && !StringsKt.isBlank(editable)) {
                z = true;
            }
        }
        FragmentOvertimeBottomsheetBinding binding6 = getBinding();
        if (binding6 != null && (primaryButton = binding6.btnOk) != null) {
            primaryButton.setEnabled(z);
        }
        updateButtonStyle(z);
    }

    private final void saveOvertime() {
        String strReplace$default;
        String string;
        Double doubleOrNull;
        EditText editText;
        Editable text;
        EditText editText2;
        Editable text2;
        String string2;
        FragmentOvertimeBottomsheetBinding binding = getBinding();
        if (binding == null || (editText2 = binding.etHours) == null || (text2 = editText2.getText()) == null || (string2 = text2.toString()) == null || (strReplace$default = StringsKt.replace$default(string2, " hrs", "", false, 4, (Object) null)) == null) {
            strReplace$default = "";
        }
        FragmentOvertimeBottomsheetBinding binding2 = getBinding();
        if (binding2 == null || (editText = binding2.etRate) == null || (text = editText.getText()) == null || (string = text.toString()) == null) {
            string = "";
        }
        String str = this.date;
        if (str == null) {
            str = "";
        }
        String str2 = this.userId;
        if (str2 == null) {
            str2 = "";
        }
        String str3 = strReplace$default;
        if (str3.length() == 0 || string.length() == 0 || str.length() == 0 || str2.length() == 0) {
            Toast.makeText(requireContext(), "Please fill all fields", 0).show();
            return;
        }
        List listSplit$default = StringsKt.split$default((CharSequence) str3, new String[]{":"}, false, 0, 6, (Object) null);
        Double doubleOrNull2 = StringsKt.toDoubleOrNull((String) listSplit$default.get(0));
        double dDoubleValue = (doubleOrNull2 != null ? doubleOrNull2.doubleValue() : 0.0d) * ((double) 60);
        String str4 = (String) CollectionsKt.getOrNull(listSplit$default, 1);
        double dDoubleValue2 = dDoubleValue + ((str4 == null || (doubleOrNull = StringsKt.toDoubleOrNull(str4)) == null) ? 0.0d : doubleOrNull.doubleValue());
        Double doubleOrNull3 = StringsKt.toDoubleOrNull(string);
        double dDoubleValue3 = doubleOrNull3 != null ? doubleOrNull3.doubleValue() : 0.0d;
        LifecycleOwner viewLifecycleOwner = getViewLifecycleOwner();
        Intrinsics.checkNotNullExpressionValue(viewLifecycleOwner, "getViewLifecycleOwner(...)");
        BuildersKt__Builders_commonKt.launch$default(LifecycleOwnerKt.getLifecycleScope(viewLifecycleOwner), null, null, new C37631(str2, str, dDoubleValue2, dDoubleValue3, null), 3, null);
    }

    /* JADX INFO: renamed from: com.laborbook.keep.screen.calendar.fragment.OvertimeBottomSheetFragment$saveOvertime$1 */
    /* JADX INFO: compiled from: OvertimeBottomSheetFragment.kt */
    @Metadata(m2721d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, m2722d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, m2723k = 3, m2724mv = {2, 0, 0}, m2726xi = 48)
    @DebugMetadata(m2734c = "com.laborbook.keep.screen.calendar.fragment.OvertimeBottomSheetFragment$saveOvertime$1", m2735f = "OvertimeBottomSheetFragment.kt", m2736i = {}, m2737l = {322}, m2738m = "invokeSuspend", m2739n = {}, m2740s = {})
    static final class C37631 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ String $dateStr;
        final /* synthetic */ double $otMinutes;
        final /* synthetic */ double $otPerHour;
        final /* synthetic */ String $staffUserId;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C37631(String str, String str2, double d, double d2, Continuation<? super C37631> continuation) {
            super(2, continuation);
            this.$staffUserId = str;
            this.$dateStr = str2;
            this.$otMinutes = d;
            this.$otPerHour = d2;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return OvertimeBottomSheetFragment.this.new C37631(this.$staffUserId, this.$dateStr, this.$otMinutes, this.$otPerHour, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((C37631) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        /* JADX INFO: renamed from: com.laborbook.keep.screen.calendar.fragment.OvertimeBottomSheetFragment$saveOvertime$1$1, reason: invalid class name */
        /* JADX INFO: compiled from: OvertimeBottomSheetFragment.kt */
        @Metadata(m2721d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, m2722d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, m2723k = 3, m2724mv = {2, 0, 0}, m2726xi = 48)
        @DebugMetadata(m2734c = "com.laborbook.keep.screen.calendar.fragment.OvertimeBottomSheetFragment$saveOvertime$1$1", m2735f = "OvertimeBottomSheetFragment.kt", m2736i = {}, m2737l = {TIFFConstants.TIFFTAG_TILELENGTH}, m2738m = "invokeSuspend", m2739n = {}, m2740s = {})
        static final class AnonymousClass1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
            final /* synthetic */ String $dateStr;
            final /* synthetic */ double $otMinutes;
            final /* synthetic */ double $otPerHour;
            final /* synthetic */ String $staffUserId;
            int label;
            final /* synthetic */ OvertimeBottomSheetFragment this$0;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            AnonymousClass1(OvertimeBottomSheetFragment overtimeBottomSheetFragment, String str, String str2, double d, double d2, Continuation<? super AnonymousClass1> continuation) {
                super(2, continuation);
                this.this$0 = overtimeBottomSheetFragment;
                this.$staffUserId = str;
                this.$dateStr = str2;
                this.$otMinutes = d;
                this.$otPerHour = d2;
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
                return new AnonymousClass1(this.this$0, this.$staffUserId, this.$dateStr, this.$otMinutes, this.$otPerHour, continuation);
            }

            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
                return ((AnonymousClass1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Object invokeSuspend(Object obj) {
                Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
                int i = this.label;
                if (i == 0) {
                    ResultKt.throwOnFailure(obj);
                    this.label = 1;
                    obj = FlowKt.first(this.this$0.getDataStore().read(DataStoreManager.INSTANCE.getUSER_ID(), ""), this);
                    if (obj == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                } else {
                    if (i != 1) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    ResultKt.throwOnFailure(obj);
                }
                this.this$0.getViewModel().addOvertime(this.$staffUserId, this.$dateStr, this.$otMinutes, this.$otPerHour, (String) obj);
                return Unit.INSTANCE;
            }
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                this.label = 1;
                if (RepeatOnLifecycleKt.repeatOnLifecycle(OvertimeBottomSheetFragment.this.getViewLifecycleOwner().getLifecycle(), Lifecycle.State.STARTED, new AnonymousClass1(OvertimeBottomSheetFragment.this, this.$staffUserId, this.$dateStr, this.$otMinutes, this.$otPerHour, null), this) == coroutine_suspended) {
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

    private final void deleteOvertime() {
        String str = this.date;
        if (str == null) {
            str = "";
        }
        String str2 = this.userId;
        String str3 = str2 != null ? str2 : "";
        if (str.length() == 0 || str3.length() == 0) {
            Toast.makeText(requireContext(), "Invalid data", 0).show();
            return;
        }
        recordClickEvent(ConstantEventNames.REMOVE_OVERTIME_FROM_BS, MapsKt.hashMapOf(new Pair("date", str), new Pair("user_id", str3)));
        LifecycleOwner viewLifecycleOwner = getViewLifecycleOwner();
        Intrinsics.checkNotNullExpressionValue(viewLifecycleOwner, "getViewLifecycleOwner(...)");
        BuildersKt__Builders_commonKt.launch$default(LifecycleOwnerKt.getLifecycleScope(viewLifecycleOwner), null, null, new C37621(str3, str, null), 3, null);
    }

    /* JADX INFO: renamed from: com.laborbook.keep.screen.calendar.fragment.OvertimeBottomSheetFragment$deleteOvertime$1 */
    /* JADX INFO: compiled from: OvertimeBottomSheetFragment.kt */
    @Metadata(m2721d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, m2722d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, m2723k = 3, m2724mv = {2, 0, 0}, m2726xi = 48)
    @DebugMetadata(m2734c = "com.laborbook.keep.screen.calendar.fragment.OvertimeBottomSheetFragment$deleteOvertime$1", m2735f = "OvertimeBottomSheetFragment.kt", m2736i = {}, m2737l = {344}, m2738m = "invokeSuspend", m2739n = {}, m2740s = {})
    static final class C37621 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ String $dateStr;
        final /* synthetic */ String $staffUserId;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C37621(String str, String str2, Continuation<? super C37621> continuation) {
            super(2, continuation);
            this.$staffUserId = str;
            this.$dateStr = str2;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return OvertimeBottomSheetFragment.this.new C37621(this.$staffUserId, this.$dateStr, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((C37621) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        /* JADX INFO: renamed from: com.laborbook.keep.screen.calendar.fragment.OvertimeBottomSheetFragment$deleteOvertime$1$1, reason: invalid class name */
        /* JADX INFO: compiled from: OvertimeBottomSheetFragment.kt */
        @Metadata(m2721d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, m2722d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, m2723k = 3, m2724mv = {2, 0, 0}, m2726xi = 48)
        @DebugMetadata(m2734c = "com.laborbook.keep.screen.calendar.fragment.OvertimeBottomSheetFragment$deleteOvertime$1$1", m2735f = "OvertimeBottomSheetFragment.kt", m2736i = {}, m2737l = {345}, m2738m = "invokeSuspend", m2739n = {}, m2740s = {})
        static final class AnonymousClass1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
            final /* synthetic */ String $dateStr;
            final /* synthetic */ String $staffUserId;
            int label;
            final /* synthetic */ OvertimeBottomSheetFragment this$0;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            AnonymousClass1(OvertimeBottomSheetFragment overtimeBottomSheetFragment, String str, String str2, Continuation<? super AnonymousClass1> continuation) {
                super(2, continuation);
                this.this$0 = overtimeBottomSheetFragment;
                this.$staffUserId = str;
                this.$dateStr = str2;
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
                return new AnonymousClass1(this.this$0, this.$staffUserId, this.$dateStr, continuation);
            }

            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
                return ((AnonymousClass1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Object invokeSuspend(Object obj) {
                Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
                int i = this.label;
                if (i == 0) {
                    ResultKt.throwOnFailure(obj);
                    this.label = 1;
                    obj = FlowKt.first(this.this$0.getDataStore().read(DataStoreManager.INSTANCE.getUSER_ID(), ""), this);
                    if (obj == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                } else {
                    if (i != 1) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    ResultKt.throwOnFailure(obj);
                }
                this.this$0.getViewModel().deleteOvertime(this.$staffUserId, this.$dateStr, (String) obj);
                return Unit.INSTANCE;
            }
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                this.label = 1;
                if (RepeatOnLifecycleKt.repeatOnLifecycle(OvertimeBottomSheetFragment.this.getViewLifecycleOwner().getLifecycle(), Lifecycle.State.STARTED, new AnonymousClass1(OvertimeBottomSheetFragment.this, this.$staffUserId, this.$dateStr, null), this) == coroutine_suspended) {
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

    private final void observeViewModel() {
        getViewModel().getOtResult().observe(getViewLifecycleOwner(), new OvertimeBottomSheetFragmentKt$sam$androidx_lifecycle_Observer$0(new Function1() { // from class: com.laborbook.keep.screen.calendar.fragment.OvertimeBottomSheetFragment$$ExternalSyntheticLambda10
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return OvertimeBottomSheetFragment.observeViewModel$lambda$19(this.f$0, (Result) obj);
            }
        }));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit observeViewModel$lambda$19(OvertimeBottomSheetFragment this$0, Result result) {
        Object next;
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNull(result);
        Object value = result.getValue();
        if (Result.m3332isSuccessimpl(value)) {
            Toast.makeText(this$0.requireContext(), (String) value, 0).show();
            Function4<Boolean, Boolean, String, Integer, Unit> refreshCalendar = this$0.getObserverUtil().getRefreshCalendar();
            if (refreshCalendar != null) {
                refreshCalendar.invoke(true, false, "", 0);
            }
            this$0.dismiss();
            List<Fragment> fragments = this$0.getParentFragmentManager().getFragments();
            Intrinsics.checkNotNullExpressionValue(fragments, "getFragments(...)");
            Iterator<T> it = fragments.iterator();
            while (true) {
                if (!it.hasNext()) {
                    next = null;
                    break;
                }
                next = it.next();
                if (((Fragment) next) instanceof AttendanceMarkBottomsheetFragment) {
                    break;
                }
            }
            Fragment fragment = (Fragment) next;
            if (fragment != null) {
                BaseBottomsheetFragment baseBottomsheetFragment = fragment instanceof BaseBottomsheetFragment ? (BaseBottomsheetFragment) fragment : null;
                if (baseBottomsheetFragment != null) {
                    baseBottomsheetFragment.dismiss();
                }
            }
        }
        Throwable thM3328exceptionOrNullimpl = Result.m3328exceptionOrNullimpl(result.getValue());
        if (thM3328exceptionOrNullimpl != null) {
            Context contextRequireContext = this$0.requireContext();
            String message = thM3328exceptionOrNullimpl.getMessage();
            if (message == null) {
                message = "Failed to process OT";
            }
            Toast.makeText(contextRequireContext, message, 0).show();
        }
        return Unit.INSTANCE;
    }

    private final void updateButtonStyle(boolean enabled) {
        PrimaryButton primaryButton;
        FragmentOvertimeBottomsheetBinding binding = getBinding();
        if (binding == null || (primaryButton = binding.btnOk) == null) {
            return;
        }
        primaryButton.setAlpha(enabled ? 1.0f : 0.5f);
    }

    @Override // com.laborbook.base.BaseBottomsheetFragment, androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onDestroyView() {
        super.onDestroyView();
        this._binding = null;
    }

    /* JADX INFO: compiled from: OvertimeBottomSheetFragment.kt */
    @Metadata(m2721d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0006\n\u0002\b\u0002\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J,\u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\u00052\u0006\u0010\r\u001a\u00020\u00052\b\b\u0002\u0010\u000e\u001a\u00020\u000f2\b\b\u0002\u0010\u0010\u001a\u00020\u000fH\u0007R\u000e\u0010\u0004\u001a\u00020\u0005X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0005X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0005X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\u0005X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0005X\u0082T¢\u0006\u0002\n\u0000¨\u0006\u0011"}, m2722d2 = {"Lcom/laborbook/keep/screen/calendar/fragment/OvertimeBottomSheetFragment$Companion;", "", "<init>", "()V", "TAG", "", OvertimeBottomSheetFragment.DATE, "USER_ID", "OT_MINUTES", "OT_PER_HOUR", "newInstance", "Lcom/laborbook/keep/screen/calendar/fragment/OvertimeBottomSheetFragment;", "userId", "date", "otMinutes", "", "otPerHour", "keep_release"}, m2723k = 1, m2724mv = {2, 0, 0}, m2726xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        @JvmStatic
        public final OvertimeBottomSheetFragment newInstance(String userId, String date, double otMinutes, double otPerHour) {
            Intrinsics.checkNotNullParameter(userId, "userId");
            Intrinsics.checkNotNullParameter(date, "date");
            OvertimeBottomSheetFragment overtimeBottomSheetFragment = new OvertimeBottomSheetFragment();
            Bundle bundle = new Bundle();
            bundle.putString(OvertimeBottomSheetFragment.DATE, date);
            bundle.putString("user_id", userId);
            bundle.putDouble(OvertimeBottomSheetFragment.OT_MINUTES, otMinutes);
            bundle.putDouble(OvertimeBottomSheetFragment.OT_PER_HOUR, otPerHour);
            overtimeBottomSheetFragment.setArguments(bundle);
            return overtimeBottomSheetFragment;
        }
    }
}
