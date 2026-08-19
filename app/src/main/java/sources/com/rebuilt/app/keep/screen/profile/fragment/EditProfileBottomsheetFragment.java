package com.rebuilt.app.keep.screen.profile.fragment;

import android.app.Dialog;
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
import android.widget.RadioButton;
import android.widget.RadioGroup;
import android.widget.Toast;
import com.boilerplate.uikit.views.buttons.PrimaryButton;
import com.google.android.material.C1346R;
import com.google.android.material.bottomsheet.BottomSheetBehavior;
import com.google.android.material.bottomsheet.BottomSheetDialog;
import com.rebuilt.app.base.BaseBottomsheetFragment;
import com.rebuilt.app.base.analytics.ConstantEventNames;
import com.rebuilt.app.base.analytics.FacebookPaymentEvents;
import com.rebuilt.app.keep.C3656R;
import com.rebuilt.app.keep.databinding.FragmentEditProfileBottomsheetBinding;
import com.rebuilt.app.keep.screen.calendar.utils.Constants;
import com.rebuilt.app.keep.screen.profile.viewmodel.EditProfileViewModel;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.text.StringsKt;
import org.koin.androidx.viewmodel.ext.android.ViewModelStoreOwnerExtKt;
import org.koin.core.qualifier.Qualifier;

/* JADX INFO: compiled from: EditProfileBottomsheetFragment.kt */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(m2721d1 = {"\u0000L\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010\u0006\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\b\u0018\u0000 (2\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0001(B\u0007¢\u0006\u0004\b\u0003\u0010\u0004J\u0012\u0010\u0015\u001a\u00020\u00162\b\u0010\u0017\u001a\u0004\u0018\u00010\u0018H\u0016J&\u0010\u0019\u001a\u0004\u0018\u00010\u00022\u0006\u0010\u001a\u001a\u00020\u001b2\b\u0010\u001c\u001a\u0004\u0018\u00010\u001d2\b\u0010\u0017\u001a\u0004\u0018\u00010\u0018H\u0016J\b\u0010\u001e\u001a\u00020\u0016H\u0016J\u001a\u0010\u001f\u001a\u00020\u00162\u0006\u0010 \u001a\u00020!2\b\u0010\u0017\u001a\u0004\u0018\u00010\u0018H\u0016J\b\u0010\"\u001a\u00020\u0016H\u0002J\b\u0010#\u001a\u00020\u0016H\u0002J\b\u0010$\u001a\u00020\u0006H\u0002J\b\u0010%\u001a\u00020\u0016H\u0002J\b\u0010&\u001a\u00020\u0016H\u0002J\b\u0010'\u001a\u00020\u0016H\u0002R\u0014\u0010\u0005\u001a\u00020\u00068VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0007\u0010\bR\u0010\u0010\t\u001a\u0004\u0018\u00010\u0006X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\n\u001a\u0004\u0018\u00010\u0006X\u0082\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u000b\u001a\u0004\u0018\u00010\fX\u0082\u000e¢\u0006\u0004\n\u0002\u0010\rR\u0010\u0010\u000e\u001a\u0004\u0018\u00010\u0006X\u0082\u000e¢\u0006\u0002\n\u0000R\u001b\u0010\u000f\u001a\u00020\u00108BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0013\u0010\u0014\u001a\u0004\b\u0011\u0010\u0012¨\u0006)"}, m2722d2 = {"Lcom/laborbook/keep/screen/profile/fragment/EditProfileBottomsheetFragment;", "Lcom/laborbook/base/BaseBottomsheetFragment;", "Lcom/laborbook/keep/databinding/FragmentEditProfileBottomsheetBinding;", "<init>", "()V", "screenName", "", "getScreenName", "()Ljava/lang/String;", "staffId", "staffName", "initialSalary", "", "Ljava/lang/Double;", "initialSalaryType", "viewModel", "Lcom/laborbook/keep/screen/profile/viewmodel/EditProfileViewModel;", "getViewModel", "()Lcom/laborbook/keep/screen/profile/viewmodel/EditProfileViewModel;", "viewModel$delegate", "Lkotlin/Lazy;", "onCreate", "", "savedInstanceState", "Landroid/os/Bundle;", "getViewBinding", "inflater", "Landroid/view/LayoutInflater;", "container", "Landroid/view/ViewGroup;", "onStart", "onViewCreated", "view", "Landroid/view/View;", "setupSalaryTypeToggle", "updateSalaryHint", "getSelectedSalaryType", "setupTextChangeListeners", "setOnClickListeners", "updateSaveButtonState", "Companion", "keep_release"}, m2723k = 1, m2724mv = {2, 0, 0}, m2726xi = 48)
public final class EditProfileBottomsheetFragment extends BaseBottomsheetFragment<FragmentEditProfileBottomsheetBinding> {
    private static final String ARG_INITIAL_SALARY = "initial_salary";
    private static final String ARG_INITIAL_SALARY_TYPE = "initial_salary_type";
    private static final String ARG_STAFF_ID = "staff_id";
    private static final String ARG_STAFF_NAME = "staff_name";

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private Double initialSalary;
    private String initialSalaryType;
    private String staffId;
    private String staffName;

    /* JADX INFO: renamed from: viewModel$delegate, reason: from kotlin metadata */
    private final Lazy viewModel;

    /* JADX WARN: Multi-variable type inference failed */
    public EditProfileBottomsheetFragment() {
        final EditProfileBottomsheetFragment editProfileBottomsheetFragment = this;
        LazyThreadSafetyMode lazyThreadSafetyMode = LazyThreadSafetyMode.SYNCHRONIZED;
        final Qualifier qualifier = null;
        final Object[] objArr = 0 == true ? 1 : 0;
        this.viewModel = LazyKt.lazy(lazyThreadSafetyMode, (Function0) new Function0<EditProfileViewModel>() { // from class: com.rebuilt.app.keep.screen.profile.fragment.EditProfileBottomsheetFragment$special$$inlined$viewModel$default$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            /* JADX WARN: Type inference failed for: r0v1, types: [androidx.lifecycle.ViewModel, com.rebuilt.app.keep.screen.profile.viewmodel.EditProfileViewModel] */
            @Override // kotlin.jvm.functions.Function0
            public final EditProfileViewModel invoke() {
                return ViewModelStoreOwnerExtKt.getViewModel(editProfileBottomsheetFragment, qualifier, Reflection.getOrCreateKotlinClass(EditProfileViewModel.class), objArr);
            }
        });
    }

    @Override // com.rebuilt.app.base.BaseBottomsheetFragment
    public String getScreenName() {
        return ConstantEventNames.EDIT_PROFILE;
    }

    private final EditProfileViewModel getViewModel() {
        return (EditProfileViewModel) this.viewModel.getValue();
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        Bundle arguments = getArguments();
        this.staffId = arguments != null ? arguments.getString(ARG_STAFF_ID) : null;
        Bundle arguments2 = getArguments();
        this.staffName = arguments2 != null ? arguments2.getString(ARG_STAFF_NAME) : null;
        Bundle arguments3 = getArguments();
        this.initialSalary = arguments3 != null ? Double.valueOf(arguments3.getDouble(ARG_INITIAL_SALARY, 0.0d)) : null;
        Bundle arguments4 = getArguments();
        this.initialSalaryType = arguments4 != null ? arguments4.getString(ARG_INITIAL_SALARY_TYPE) : null;
    }

    @Override // com.rebuilt.app.base.BaseBottomsheetFragment
    public FragmentEditProfileBottomsheetBinding getViewBinding(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        Intrinsics.checkNotNullParameter(inflater, "inflater");
        return FragmentEditProfileBottomsheetBinding.inflate(inflater, container, false);
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onStart() {
        super.onStart();
        Dialog dialog = getDialog();
        Intrinsics.checkNotNull(dialog, "null cannot be cast to non-null type com.google.android.material.bottomsheet.BottomSheetDialog");
        BottomSheetDialog bottomSheetDialog = (BottomSheetDialog) dialog;
        View viewFindViewById = bottomSheetDialog.findViewById(C1346R.id.design_bottom_sheet);
        Intrinsics.checkNotNull(viewFindViewById, "null cannot be cast to non-null type android.view.View");
        BottomSheetBehavior bottomSheetBehaviorFrom = BottomSheetBehavior.from(viewFindViewById);
        Intrinsics.checkNotNullExpressionValue(bottomSheetBehaviorFrom, "from(...)");
        viewFindViewById.getLayoutParams().height = -1;
        bottomSheetBehaviorFrom.setState(3);
        Window window = bottomSheetDialog.getWindow();
        if (window != null) {
            window.setSoftInputMode(16);
        }
    }

    @Override // com.rebuilt.app.base.BaseBottomsheetFragment, androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle savedInstanceState) {
        RadioButton radioButton;
        RadioButton radioButton2;
        FragmentEditProfileBottomsheetBinding binding;
        EditText editText;
        EditText editText2;
        Intrinsics.checkNotNullParameter(view, "view");
        super.onViewCreated(view, savedInstanceState);
        setOnClickListeners();
        setupTextChangeListeners();
        setupSalaryTypeToggle();
        FragmentEditProfileBottomsheetBinding binding2 = getBinding();
        if (binding2 != null && (editText2 = binding2.etStaffName) != null) {
            String str = this.staffName;
            if (str == null) {
                str = "";
            }
            editText2.setText(str);
        }
        Double d = this.initialSalary;
        if (d != null) {
            double dDoubleValue = d.doubleValue();
            if (dDoubleValue > 0.0d && (binding = getBinding()) != null && (editText = binding.etSalaryAmount) != null) {
                editText.setText(String.valueOf(dDoubleValue));
            }
        }
        if (Intrinsics.areEqual(this.initialSalaryType, Constants.SALARY_TYPE_MONTHLY)) {
            FragmentEditProfileBottomsheetBinding binding3 = getBinding();
            if (binding3 != null && (radioButton2 = binding3.rbMonthly) != null) {
                radioButton2.setChecked(true);
            }
        } else {
            FragmentEditProfileBottomsheetBinding binding4 = getBinding();
            if (binding4 != null && (radioButton = binding4.rbDaily) != null) {
                radioButton.setChecked(true);
            }
        }
        updateSalaryHint();
        updateSaveButtonState();
        getViewModel().getUpdateResult().observe(getViewLifecycleOwner(), new EditProfileBottomsheetFragment$sam$androidx_lifecycle_Observer$0(new Function1() { // from class: com.rebuilt.app.keep.screen.profile.fragment.EditProfileBottomsheetFragment$$ExternalSyntheticLambda0
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return EditProfileBottomsheetFragment.onViewCreated$lambda$2(this.f$0, (Result) obj);
            }
        }));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit onViewCreated$lambda$2(EditProfileBottomsheetFragment this$0, Result result) {
        String message;
        EditText editText;
        Editable text;
        String string;
        EditText editText2;
        Editable text2;
        String string2;
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        if (Result.m3332isSuccessimpl(result.getValue())) {
            FragmentEditProfileBottomsheetBinding binding = this$0.getBinding();
            String string3 = null;
            String string4 = (binding == null || (editText2 = binding.etStaffName) == null || (text2 = editText2.getText()) == null || (string2 = text2.toString()) == null) ? null : StringsKt.trim((CharSequence) string2).toString();
            if (string4 == null) {
                string4 = "";
            }
            FragmentEditProfileBottomsheetBinding binding2 = this$0.getBinding();
            if (binding2 != null && (editText = binding2.etSalaryAmount) != null && (text = editText.getText()) != null && (string = text.toString()) != null) {
                string3 = StringsKt.trim((CharSequence) string).toString();
            }
            Double doubleOrNull = StringsKt.toDoubleOrNull(string3 != null ? string3 : "");
            if (doubleOrNull != null && doubleOrNull.doubleValue() > 0.0d) {
                FacebookPaymentEvents facebookPaymentEvents = FacebookPaymentEvents.INSTANCE;
                Context contextRequireContext = this$0.requireContext();
                Intrinsics.checkNotNullExpressionValue(contextRequireContext, "requireContext(...)");
                FacebookPaymentEvents.logSalarySet$default(facebookPaymentEvents, contextRequireContext, doubleOrNull.doubleValue(), null, null, 12, null);
            }
            Bundle bundle = new Bundle();
            bundle.putString("updated_staff_name", string4);
            this$0.getParentFragmentManager().setFragmentResult("edit_profile_result", bundle);
            Toast.makeText(this$0.requireContext(), "Profile updated successfully", 0).show();
            this$0.dismiss();
        } else {
            Context contextRequireContext2 = this$0.requireContext();
            Throwable thM3328exceptionOrNullimpl = Result.m3328exceptionOrNullimpl(result.getValue());
            if (thM3328exceptionOrNullimpl == null || (message = thM3328exceptionOrNullimpl.getMessage()) == null) {
                message = "Update failed";
            }
            Toast.makeText(contextRequireContext2, message, 0).show();
        }
        return Unit.INSTANCE;
    }

    private final void setupSalaryTypeToggle() {
        RadioGroup radioGroup;
        FragmentEditProfileBottomsheetBinding binding = getBinding();
        if (binding == null || (radioGroup = binding.rgSalaryType) == null) {
            return;
        }
        radioGroup.setOnCheckedChangeListener(new RadioGroup.OnCheckedChangeListener() { // from class: com.rebuilt.app.keep.screen.profile.fragment.EditProfileBottomsheetFragment$$ExternalSyntheticLambda3
            @Override // android.widget.RadioGroup.OnCheckedChangeListener
            public final void onCheckedChanged(RadioGroup radioGroup2, int i) {
                EditProfileBottomsheetFragment.setupSalaryTypeToggle$lambda$3(this.f$0, radioGroup2, i);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void setupSalaryTypeToggle$lambda$3(EditProfileBottomsheetFragment this$0, RadioGroup radioGroup, int i) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.updateSalaryHint();
        this$0.updateSaveButtonState();
    }

    private final void updateSalaryHint() {
        FragmentEditProfileBottomsheetBinding binding = getBinding();
        if (binding != null) {
            if (binding.rbMonthly.isChecked()) {
                binding.etSalaryAmount.setHint(getString(C3656R.string.enter_monthly_salary_amount));
            } else {
                binding.etSalaryAmount.setHint(getString(C3656R.string.enter_daily_salary_amount));
            }
        }
    }

    private final String getSelectedSalaryType() {
        RadioButton radioButton;
        FragmentEditProfileBottomsheetBinding binding = getBinding();
        if (binding != null && (radioButton = binding.rbMonthly) != null && radioButton.isChecked()) {
            return Constants.SALARY_TYPE_MONTHLY;
        }
        return Constants.SALARY_TYPE_DAILY;
    }

    private final void setupTextChangeListeners() {
        EditText editText;
        EditText editText2;
        FragmentEditProfileBottomsheetBinding binding = getBinding();
        if (binding != null && (editText2 = binding.etStaffName) != null) {
            editText2.addTextChangedListener(new TextWatcher() { // from class: com.rebuilt.app.keep.screen.profile.fragment.EditProfileBottomsheetFragment$setupTextChangeListeners$$inlined$addTextChangedListener$default$1
                @Override // android.text.TextWatcher
                public void beforeTextChanged(CharSequence text, int start, int count, int after) {
                }

                @Override // android.text.TextWatcher
                public void onTextChanged(CharSequence text, int start, int before, int count) {
                }

                @Override // android.text.TextWatcher
                public void afterTextChanged(Editable s) {
                    this.this$0.updateSaveButtonState();
                }
            });
        }
        FragmentEditProfileBottomsheetBinding binding2 = getBinding();
        if (binding2 == null || (editText = binding2.etSalaryAmount) == null) {
            return;
        }
        editText.addTextChangedListener(new TextWatcher() { // from class: com.rebuilt.app.keep.screen.profile.fragment.EditProfileBottomsheetFragment$setupTextChangeListeners$$inlined$addTextChangedListener$default$2
            @Override // android.text.TextWatcher
            public void beforeTextChanged(CharSequence text, int start, int count, int after) {
            }

            @Override // android.text.TextWatcher
            public void onTextChanged(CharSequence text, int start, int before, int count) {
            }

            @Override // android.text.TextWatcher
            public void afterTextChanged(Editable s) {
                this.this$0.updateSaveButtonState();
            }
        });
    }

    private final void setOnClickListeners() {
        PrimaryButton primaryButton;
        ImageView imageView;
        FragmentEditProfileBottomsheetBinding binding = getBinding();
        if (binding != null && (imageView = binding.ivClose) != null) {
            imageView.setOnClickListener(new View.OnClickListener() { // from class: com.rebuilt.app.keep.screen.profile.fragment.EditProfileBottomsheetFragment$$ExternalSyntheticLambda1
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    EditProfileBottomsheetFragment.setOnClickListeners$lambda$7(this.f$0, view);
                }
            });
        }
        FragmentEditProfileBottomsheetBinding binding2 = getBinding();
        if (binding2 == null || (primaryButton = binding2.btnSave) == null) {
            return;
        }
        primaryButton.setOnClickListener(new View.OnClickListener() { // from class: com.rebuilt.app.keep.screen.profile.fragment.EditProfileBottomsheetFragment$$ExternalSyntheticLambda2
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                EditProfileBottomsheetFragment.setOnClickListeners$lambda$8(this.f$0, view);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void setOnClickListeners$lambda$7(EditProfileBottomsheetFragment this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.dismiss();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void setOnClickListeners$lambda$8(EditProfileBottomsheetFragment this$0, View view) {
        EditText editText;
        Editable text;
        String string;
        EditText editText2;
        Editable text2;
        String string2;
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        FragmentEditProfileBottomsheetBinding binding = this$0.getBinding();
        String string3 = null;
        String string4 = (binding == null || (editText2 = binding.etStaffName) == null || (text2 = editText2.getText()) == null || (string2 = text2.toString()) == null) ? null : StringsKt.trim((CharSequence) string2).toString();
        String str = string4 == null ? "" : string4;
        FragmentEditProfileBottomsheetBinding binding2 = this$0.getBinding();
        if (binding2 != null && (editText = binding2.etSalaryAmount) != null && (text = editText.getText()) != null && (string = text.toString()) != null) {
            string3 = StringsKt.trim((CharSequence) string).toString();
        }
        Double doubleOrNull = StringsKt.toDoubleOrNull(string3 != null ? string3 : "");
        String selectedSalaryType = this$0.getSelectedSalaryType();
        boolean zAreEqual = Intrinsics.areEqual(str, this$0.staffName);
        boolean z = (doubleOrNull == null || (Intrinsics.areEqual(doubleOrNull, this$0.initialSalary) && Intrinsics.areEqual(selectedSalaryType, this$0.initialSalaryType))) ? false : true;
        if (zAreEqual && !z) {
            this$0.dismiss();
            return;
        }
        EditProfileViewModel viewModel = this$0.getViewModel();
        String str2 = this$0.staffId;
        if (str2 == null) {
            return;
        }
        viewModel.updateStaffProfile(str2, str, selectedSalaryType, doubleOrNull, z);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void updateSaveButtonState() {
        PrimaryButton primaryButton;
        EditText editText;
        Editable text;
        String string;
        EditText editText2;
        Editable text2;
        String string2;
        FragmentEditProfileBottomsheetBinding binding = getBinding();
        String string3 = null;
        String string4 = (binding == null || (editText2 = binding.etStaffName) == null || (text2 = editText2.getText()) == null || (string2 = text2.toString()) == null) ? null : StringsKt.trim((CharSequence) string2).toString();
        if (string4 == null) {
            string4 = "";
        }
        FragmentEditProfileBottomsheetBinding binding2 = getBinding();
        if (binding2 != null && (editText = binding2.etSalaryAmount) != null && (text = editText.getText()) != null && (string = text.toString()) != null) {
            string3 = StringsKt.trim((CharSequence) string).toString();
        }
        Double doubleOrNull = StringsKt.toDoubleOrNull(string3 != null ? string3 : "");
        String str = string4;
        boolean z = (str.length() > 0 && !Intrinsics.areEqual(string4, this.staffName)) || (doubleOrNull != null && (!Intrinsics.areEqual(doubleOrNull, this.initialSalary) || !Intrinsics.areEqual(getSelectedSalaryType(), this.initialSalaryType)));
        boolean z2 = str.length() > 0;
        FragmentEditProfileBottomsheetBinding binding3 = getBinding();
        if (binding3 == null || (primaryButton = binding3.btnSave) == null) {
            return;
        }
        primaryButton.setEnabled(z2 && z);
    }

    /* JADX INFO: compiled from: EditProfileBottomsheetFragment.kt */
    @Metadata(m2721d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0006\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J3\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u00052\u0006\u0010\f\u001a\u00020\u00052\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u000e2\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u0005¢\u0006\u0002\u0010\u0010R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0005X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0005X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\u0005X\u0082T¢\u0006\u0002\n\u0000¨\u0006\u0011"}, m2722d2 = {"Lcom/laborbook/keep/screen/profile/fragment/EditProfileBottomsheetFragment$Companion;", "", "<init>", "()V", "ARG_STAFF_ID", "", "ARG_STAFF_NAME", "ARG_INITIAL_SALARY", "ARG_INITIAL_SALARY_TYPE", "newInstance", "Lcom/laborbook/keep/screen/profile/fragment/EditProfileBottomsheetFragment;", "staffId", "staffName", "initialSalary", "", "initialSalaryType", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/String;)Lcom/laborbook/keep/screen/profile/fragment/EditProfileBottomsheetFragment;", "keep_release"}, m2723k = 1, m2724mv = {2, 0, 0}, m2726xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public static /* synthetic */ EditProfileBottomsheetFragment newInstance$default(Companion companion, String str, String str2, Double d, String str3, int i, Object obj) {
            if ((i & 4) != 0) {
                d = null;
            }
            if ((i & 8) != 0) {
                str3 = null;
            }
            return companion.newInstance(str, str2, d, str3);
        }

        public final EditProfileBottomsheetFragment newInstance(String staffId, String staffName, Double initialSalary, String initialSalaryType) {
            Intrinsics.checkNotNullParameter(staffId, "staffId");
            Intrinsics.checkNotNullParameter(staffName, "staffName");
            EditProfileBottomsheetFragment editProfileBottomsheetFragment = new EditProfileBottomsheetFragment();
            Bundle bundle = new Bundle();
            bundle.putString(EditProfileBottomsheetFragment.ARG_STAFF_ID, staffId);
            bundle.putString(EditProfileBottomsheetFragment.ARG_STAFF_NAME, staffName);
            if (initialSalary != null) {
                bundle.putDouble(EditProfileBottomsheetFragment.ARG_INITIAL_SALARY, initialSalary.doubleValue());
            }
            if (initialSalaryType != null) {
                bundle.putString(EditProfileBottomsheetFragment.ARG_INITIAL_SALARY_TYPE, initialSalaryType);
            }
            editProfileBottomsheetFragment.setArguments(bundle);
            return editProfileBottomsheetFragment;
        }
    }
}
