package com.laborbook.keep.screen.addstaff.fragment;

import android.content.ComponentCallbacks;
import android.content.Context;
import android.os.Bundle;
import android.text.Editable;
import android.text.TextWatcher;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.Toast;
import androidx.activity.result.ActivityResultCallback;
import androidx.activity.result.ActivityResultLauncher;
import androidx.activity.result.contract.ActivityResultContracts;
import androidx.core.content.ContextCompat;
import androidx.fragment.app.FragmentActivity;
import androidx.lifecycle.LifecycleOwnerKt;
import androidx.recyclerview.widget.RecyclerView;
import com.boilerplate.uikit.views.ExtentionsKt;
import com.boilerplate.uikit.views.buttons.PrimaryButton;
import com.boilerplate.uikit.views.textviews.text16.TextViewBold16;
import com.laborbook.base.AdUnitConstants;
import com.laborbook.base.BaseExtensionKt;
import com.laborbook.base.BaseFragment;
import com.laborbook.base.analytics.ConstantEventAttributes;
import com.laborbook.base.analytics.ConstantEventNames;
import com.laborbook.base.analytics.ConstantEventSources;
import com.laborbook.base.analytics.FacebookPaymentEvents;
import com.laborbook.base.datastore.DataStoreManager;
import com.laborbook.keep.C3656R;
import com.laborbook.keep.databinding.FragmentAddStaffContactsBinding;
import com.laborbook.keep.model.Staff;
import com.laborbook.keep.screen.addstaff.adapter.ContactItemAdapter;
import com.laborbook.keep.screen.addstaff.uistate.AddStaffUiState;
import com.laborbook.keep.screen.addstaff.viewmodel.ContactsViewModel;
import com.laborbook.keep.screen.calendar.fragment.LaborMonthlyCalendarFragment;
import com.laborbook.keep.screen.calendar.utils.ObserverUtil;
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
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.Dispatchers;
import kotlinx.coroutines.flow.FlowKt;
import org.koin.android.ext.android.ComponentCallbackExtKt;
import org.koin.androidx.viewmodel.ext.android.ViewModelStoreOwnerExtKt;
import org.koin.core.qualifier.Qualifier;

/* JADX INFO: compiled from: AddStaffContactsFragment.kt */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(m2721d1 = {"\u0000\\\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\r\u0018\u0000 22\b\u0012\u0004\u0012\u00020\u00020\u0001:\u00012B\u0007¢\u0006\u0004\b\u0003\u0010\u0004J&\u0010\u001c\u001a\u0004\u0018\u00010\u00022\u0006\u0010\u001d\u001a\u00020\u001e2\b\u0010\u001f\u001a\u0004\u0018\u00010 2\b\u0010!\u001a\u0004\u0018\u00010\"H\u0016J\u001a\u0010#\u001a\u00020$2\u0006\u0010%\u001a\u00020&2\b\u0010!\u001a\u0004\u0018\u00010\"H\u0016J\b\u0010'\u001a\u00020$H\u0002J\b\u0010(\u001a\u00020$H\u0002J\b\u0010)\u001a\u00020$H\u0002J\b\u0010*\u001a\u00020$H\u0002J\f\u0010+\u001a\u00020$*\u00020\u0002H\u0002J\f\u0010,\u001a\u00020$*\u00020\u0002H\u0002J\f\u0010-\u001a\u00020$*\u00020\u0002H\u0002J\b\u0010.\u001a\u00020$H\u0002J\u0010\u0010/\u001a\u00020$2\u0006\u00100\u001a\u00020\u0013H\u0002J\b\u00101\u001a\u00020$H\u0016R\u001b\u0010\u0005\u001a\u00020\u00068BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\t\u0010\n\u001a\u0004\b\u0007\u0010\bR\u001b\u0010\u000b\u001a\u00020\f8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u000f\u0010\n\u001a\u0004\b\r\u0010\u000eR\u000e\u0010\u0010\u001a\u00020\u0011X\u0082.¢\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\u0013X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0014\u001a\u00020\u0015X\u0082D¢\u0006\u0002\n\u0000R\u0014\u0010\u0016\u001a\u00020\u00158VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0017\u0010\u0018R\u001c\u0010\u0019\u001a\u0010\u0012\f\u0012\n \u001b*\u0004\u0018\u00010\u00150\u00150\u001aX\u0082\u0004¢\u0006\u0002\n\u0000¨\u00063"}, m2722d2 = {"Lcom/laborbook/keep/screen/addstaff/fragment/AddStaffContactsFragment;", "Lcom/laborbook/base/BaseFragment;", "Lcom/laborbook/keep/databinding/FragmentAddStaffContactsBinding;", "<init>", "()V", "viewModel", "Lcom/laborbook/keep/screen/addstaff/viewmodel/ContactsViewModel;", "getViewModel", "()Lcom/laborbook/keep/screen/addstaff/viewmodel/ContactsViewModel;", "viewModel$delegate", "Lkotlin/Lazy;", "observerUtil", "Lcom/laborbook/keep/screen/calendar/utils/ObserverUtil;", "getObserverUtil", "()Lcom/laborbook/keep/screen/calendar/utils/ObserverUtil;", "observerUtil$delegate", "adapter", "Lcom/laborbook/keep/screen/addstaff/adapter/ContactItemAdapter;", "isAddStaffOpen", "", "adUnitId", "", "screenName", "getScreenName", "()Ljava/lang/String;", "requestPermissionLauncher", "Landroidx/activity/result/ActivityResultLauncher;", "kotlin.jvm.PlatformType", "getViewBinding", "inflater", "Landroid/view/LayoutInflater;", "container", "Landroid/view/ViewGroup;", "savedInstanceState", "Landroid/os/Bundle;", "onViewCreated", "", "view", "Landroid/view/View;", "observeProStatusChanges", "setObserver", "setupViews", "registerOnClickListeners", "openOrCloseAddStaffManualLayout", "showAddStaffLayout", "hideAddStaffLayout", "viewModelObserver", "requestContactsPermission", "shouldRefresh", "onDestroyView", "Companion", "keep_release"}, m2723k = 1, m2724mv = {2, 0, 0}, m2726xi = 48)
public final class AddStaffContactsFragment extends BaseFragment<FragmentAddStaffContactsBinding> {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private final String adUnitId;
    private ContactItemAdapter adapter;
    private boolean isAddStaffOpen;

    /* JADX INFO: renamed from: observerUtil$delegate, reason: from kotlin metadata */
    private final Lazy observerUtil;
    private final ActivityResultLauncher<String> requestPermissionLauncher;

    /* JADX INFO: renamed from: viewModel$delegate, reason: from kotlin metadata */
    private final Lazy viewModel;

    @JvmStatic
    public static final AddStaffContactsFragment newInstance() {
        return INSTANCE.newInstance();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public AddStaffContactsFragment() {
        final AddStaffContactsFragment addStaffContactsFragment = this;
        LazyThreadSafetyMode lazyThreadSafetyMode = LazyThreadSafetyMode.SYNCHRONIZED;
        final Qualifier qualifier = null;
        final Object[] objArr = 0 == true ? 1 : 0;
        this.viewModel = LazyKt.lazy(lazyThreadSafetyMode, (Function0) new Function0<ContactsViewModel>() { // from class: com.laborbook.keep.screen.addstaff.fragment.AddStaffContactsFragment$special$$inlined$viewModel$default$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            /* JADX WARN: Type inference failed for: r0v1, types: [androidx.lifecycle.ViewModel, com.laborbook.keep.screen.addstaff.viewmodel.ContactsViewModel] */
            @Override // kotlin.jvm.functions.Function0
            public final ContactsViewModel invoke() {
                return ViewModelStoreOwnerExtKt.getViewModel(addStaffContactsFragment, qualifier, Reflection.getOrCreateKotlinClass(ContactsViewModel.class), objArr);
            }
        });
        final AddStaffContactsFragment addStaffContactsFragment2 = this;
        LazyThreadSafetyMode lazyThreadSafetyMode2 = LazyThreadSafetyMode.SYNCHRONIZED;
        final Object[] objArr2 = 0 == true ? 1 : 0;
        final Object[] objArr3 = 0 == true ? 1 : 0;
        this.observerUtil = LazyKt.lazy(lazyThreadSafetyMode2, (Function0) new Function0<ObserverUtil>() { // from class: com.laborbook.keep.screen.addstaff.fragment.AddStaffContactsFragment$special$$inlined$inject$default$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX WARN: Type inference failed for: r0v2, types: [com.laborbook.keep.screen.calendar.utils.ObserverUtil, java.lang.Object] */
            @Override // kotlin.jvm.functions.Function0
            public final ObserverUtil invoke() {
                ComponentCallbacks componentCallbacks = addStaffContactsFragment2;
                return ComponentCallbackExtKt.getDefaultScope(componentCallbacks).get(Reflection.getOrCreateKotlinClass(ObserverUtil.class), objArr2, objArr3);
            }
        });
        this.adUnitId = AdUnitConstants.NativeAds.CONTACTS_LIST;
        ActivityResultLauncher<String> activityResultLauncherRegisterForActivityResult = registerForActivityResult(new ActivityResultContracts.RequestPermission(), new ActivityResultCallback() { // from class: com.laborbook.keep.screen.addstaff.fragment.AddStaffContactsFragment$$ExternalSyntheticLambda2
            @Override // androidx.activity.result.ActivityResultCallback
            public final void onActivityResult(Object obj) {
                AddStaffContactsFragment.requestPermissionLauncher$lambda$0(this.f$0, ((Boolean) obj).booleanValue());
            }
        });
        Intrinsics.checkNotNullExpressionValue(activityResultLauncherRegisterForActivityResult, "registerForActivityResult(...)");
        this.requestPermissionLauncher = activityResultLauncherRegisterForActivityResult;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final ContactsViewModel getViewModel() {
        return (ContactsViewModel) this.viewModel.getValue();
    }

    private final ObserverUtil getObserverUtil() {
        return (ObserverUtil) this.observerUtil.getValue();
    }

    @Override // com.laborbook.base.BaseFragment
    public String getScreenName() {
        return ConstantEventNames.CONTACTS;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void requestPermissionLauncher$lambda$0(AddStaffContactsFragment this$0, boolean z) {
        LinearLayout linearLayout;
        EditText editText;
        LinearLayout linearLayout2;
        TextViewBold16 textViewBold16;
        LinearLayout linearLayout3;
        EditText editText2;
        LinearLayout linearLayout4;
        TextViewBold16 textViewBold162;
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        if (z) {
            ContactsViewModel viewModel = this$0.getViewModel();
            Context contextRequireContext = this$0.requireContext();
            Intrinsics.checkNotNullExpressionValue(contextRequireContext, "requireContext(...)");
            viewModel.loadContacts(contextRequireContext, false);
            FragmentAddStaffContactsBinding binding = this$0.getBinding();
            if (binding != null && (textViewBold162 = binding.etNoResultFound) != null) {
                ExtentionsKt.hide$default(textViewBold162, 0L, null, 3, null);
            }
            FragmentAddStaffContactsBinding binding2 = this$0.getBinding();
            if (binding2 != null && (linearLayout4 = binding2.llAddStaffToolTip) != null) {
                ExtentionsKt.hide$default(linearLayout4, 0L, null, 3, null);
            }
            FragmentAddStaffContactsBinding binding3 = this$0.getBinding();
            if (binding3 != null && (editText2 = binding3.etSearchContacts) != null) {
                ExtentionsKt.show$default(editText2, 0L, null, 3, null);
            }
            FragmentAddStaffContactsBinding binding4 = this$0.getBinding();
            if (binding4 != null && (linearLayout3 = binding4.llContacts) != null) {
                ExtentionsKt.show$default(linearLayout3, 0L, null, 3, null);
            }
            this$0.recordClickEvent(ConstantEventNames.PERMIT_CONTACTS, MapsKt.hashMapOf(new Pair(ConstantEventAttributes.PERMISSION_GRANTED, ConstantEventSources.YES)));
            return;
        }
        FragmentAddStaffContactsBinding binding5 = this$0.getBinding();
        if (binding5 != null && (textViewBold16 = binding5.etNoResultFound) != null) {
            ExtentionsKt.show$default(textViewBold16, 0L, null, 3, null);
        }
        FragmentAddStaffContactsBinding binding6 = this$0.getBinding();
        if (binding6 != null && (linearLayout2 = binding6.llAddStaffToolTip) != null) {
            ExtentionsKt.show$default(linearLayout2, 0L, null, 3, null);
        }
        FragmentAddStaffContactsBinding binding7 = this$0.getBinding();
        if (binding7 != null && (editText = binding7.etSearchContacts) != null) {
            ExtentionsKt.hide$default(editText, 0L, null, 3, null);
        }
        FragmentAddStaffContactsBinding binding8 = this$0.getBinding();
        if (binding8 != null && (linearLayout = binding8.llContacts) != null) {
            ExtentionsKt.hide$default(linearLayout, 0L, null, 3, null);
        }
        this$0.getViewModel().openNonContactStaff();
        this$0.recordClickEvent(ConstantEventNames.PERMIT_CONTACTS, MapsKt.hashMapOf(new Pair(ConstantEventAttributes.PERMISSION_GRANTED, ConstantEventSources.f3418NO)));
        Toast.makeText(this$0.getContext(), "Permission denied to read contacts", 0).show();
    }

    @Override // com.laborbook.base.BaseFragment
    public FragmentAddStaffContactsBinding getViewBinding(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        Intrinsics.checkNotNullParameter(inflater, "inflater");
        return FragmentAddStaffContactsBinding.inflate(inflater, container, false);
    }

    @Override // com.laborbook.base.BaseFragment, androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle savedInstanceState) {
        Intrinsics.checkNotNullParameter(view, "view");
        super.onViewCreated(view, savedInstanceState);
        setupViews();
        requestContactsPermission(false);
        viewModelObserver();
        registerOnClickListeners();
        setObserver();
        observeProStatusChanges();
    }

    /* JADX INFO: renamed from: com.laborbook.keep.screen.addstaff.fragment.AddStaffContactsFragment$observeProStatusChanges$1 */
    /* JADX INFO: compiled from: AddStaffContactsFragment.kt */
    @Metadata(m2721d1 = {"\u0000\f\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n"}, m2722d2 = {"<anonymous>", "", "isPro", ""}, m2723k = 3, m2724mv = {2, 0, 0}, m2726xi = 48)
    @DebugMetadata(m2734c = "com.laborbook.keep.screen.addstaff.fragment.AddStaffContactsFragment$observeProStatusChanges$1", m2735f = "AddStaffContactsFragment.kt", m2736i = {}, m2737l = {}, m2738m = "invokeSuspend", m2739n = {}, m2740s = {})
    static final class C37061 extends SuspendLambda implements Function2<Boolean, Continuation<? super Unit>, Object> {
        /* synthetic */ boolean Z$0;
        int label;

        C37061(Continuation<? super C37061> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            C37061 c37061 = AddStaffContactsFragment.this.new C37061(continuation);
            c37061.Z$0 = ((Boolean) obj).booleanValue();
            return c37061;
        }

        @Override // kotlin.jvm.functions.Function2
        public /* bridge */ /* synthetic */ Object invoke(Boolean bool, Continuation<? super Unit> continuation) {
            return invoke(bool.booleanValue(), continuation);
        }

        public final Object invoke(boolean z, Continuation<? super Unit> continuation) {
            return ((C37061) create(Boolean.valueOf(z), continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (this.label == 0) {
                ResultKt.throwOnFailure(obj);
                if (this.Z$0 && AddStaffContactsFragment.this.adapter != null) {
                    ContactItemAdapter contactItemAdapter = AddStaffContactsFragment.this.adapter;
                    if (contactItemAdapter == null) {
                        Intrinsics.throwUninitializedPropertyAccessException("adapter");
                        contactItemAdapter = null;
                    }
                    contactItemAdapter.removeAllAds();
                }
                return Unit.INSTANCE;
            }
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }

    private final void observeProStatusChanges() {
        FlowKt.launchIn(FlowKt.onEach(getDataStoreManager().read(DataStoreManager.INSTANCE.getPRO_STATUS(), false), new C37061(null)), LifecycleOwnerKt.getLifecycleScope(this));
    }

    private final void setObserver() {
        getObserverUtil().setOnStaffUserAddedListener(new Function1() { // from class: com.laborbook.keep.screen.addstaff.fragment.AddStaffContactsFragment$$ExternalSyntheticLambda0
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return AddStaffContactsFragment.setObserver$lambda$1(this.f$0, (Staff) obj);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit setObserver$lambda$1(AddStaffContactsFragment this$0, Staff staff) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(staff, "staff");
        BuildersKt__Builders_commonKt.launch$default(LifecycleOwnerKt.getLifecycleScope(this$0), Dispatchers.getIO(), null, new AddStaffContactsFragment$setObserver$1$1(staff, this$0, null), 2, null);
        return Unit.INSTANCE;
    }

    private final void setupViews() {
        this.adapter = new ContactItemAdapter(this.adUnitId);
        FragmentAddStaffContactsBinding binding = getBinding();
        if (binding != null) {
            hideAddStaffLayout(binding);
            binding.btnAddStaff.setEnabled(false);
            EditText editText = binding.etStaffName;
            ContactsViewModel viewModel = getViewModel();
            Intrinsics.checkNotNull(editText);
            viewModel.attachNameTextWatcher(editText);
            EditText editText2 = binding.etStaffMobileNumber;
            ContactsViewModel viewModel2 = getViewModel();
            Intrinsics.checkNotNull(editText2);
            viewModel2.attachMobileNumberTextWatcher(editText2);
            RecyclerView recyclerView = binding.rvContacts;
            ContactItemAdapter contactItemAdapter = this.adapter;
            if (contactItemAdapter == null) {
                Intrinsics.throwUninitializedPropertyAccessException("adapter");
                contactItemAdapter = null;
            }
            recyclerView.setAdapter(contactItemAdapter);
            binding.tvToolbarText.setText(getString(C3656R.string.add_staff));
            binding.etSearchContacts.addTextChangedListener(new TextWatcher() { // from class: com.laborbook.keep.screen.addstaff.fragment.AddStaffContactsFragment$setupViews$1$3
                @Override // android.text.TextWatcher
                public void afterTextChanged(Editable s) {
                }

                @Override // android.text.TextWatcher
                public void beforeTextChanged(CharSequence s, int start, int count, int after) {
                }

                @Override // android.text.TextWatcher
                public void onTextChanged(CharSequence s, int start, int before, int count) {
                    if (s != null) {
                        ContactItemAdapter contactItemAdapter2 = this.this$0.adapter;
                        if (contactItemAdapter2 == null) {
                            Intrinsics.throwUninitializedPropertyAccessException("adapter");
                            contactItemAdapter2 = null;
                        }
                        contactItemAdapter2.filter(s.toString());
                    }
                }
            });
        }
    }

    private final void registerOnClickListeners() {
        final FragmentAddStaffContactsBinding binding = getBinding();
        if (binding != null) {
            binding.btnAddStaff.setOnClickListener(new View.OnClickListener() { // from class: com.laborbook.keep.screen.addstaff.fragment.AddStaffContactsFragment$$ExternalSyntheticLambda4
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    AddStaffContactsFragment.registerOnClickListeners$lambda$13$lambda$5(this.f$0, binding, view);
                }
            });
            binding.ivBack.setOnClickListener(new View.OnClickListener() { // from class: com.laborbook.keep.screen.addstaff.fragment.AddStaffContactsFragment$$ExternalSyntheticLambda5
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    AddStaffContactsFragment.registerOnClickListeners$lambda$13$lambda$6(this.f$0, view);
                }
            });
            binding.ivRefreshContacts.setOnClickListener(new View.OnClickListener() { // from class: com.laborbook.keep.screen.addstaff.fragment.AddStaffContactsFragment$$ExternalSyntheticLambda6
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    AddStaffContactsFragment.registerOnClickListeners$lambda$13$lambda$7(this.f$0, view);
                }
            });
            binding.llAddStaff.setOnClickListener(new View.OnClickListener() { // from class: com.laborbook.keep.screen.addstaff.fragment.AddStaffContactsFragment$$ExternalSyntheticLambda7
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    AddStaffContactsFragment.registerOnClickListeners$lambda$13$lambda$8(this.f$0, binding, view);
                }
            });
            binding.ivAddStaff.setOnClickListener(new View.OnClickListener() { // from class: com.laborbook.keep.screen.addstaff.fragment.AddStaffContactsFragment$$ExternalSyntheticLambda8
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    AddStaffContactsFragment.registerOnClickListeners$lambda$13$lambda$9(this.f$0, binding, view);
                }
            });
            binding.tvAddStaffManually.setOnClickListener(new View.OnClickListener() { // from class: com.laborbook.keep.screen.addstaff.fragment.AddStaffContactsFragment$$ExternalSyntheticLambda9
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    AddStaffContactsFragment.registerOnClickListeners$lambda$13$lambda$10(this.f$0, binding, view);
                }
            });
            binding.ivChevron.setOnClickListener(new View.OnClickListener() { // from class: com.laborbook.keep.screen.addstaff.fragment.AddStaffContactsFragment$$ExternalSyntheticLambda10
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    AddStaffContactsFragment.registerOnClickListeners$lambda$13$lambda$11(this.f$0, binding, view);
                }
            });
            binding.etSearchContacts.setOnClickListener(new View.OnClickListener() { // from class: com.laborbook.keep.screen.addstaff.fragment.AddStaffContactsFragment$$ExternalSyntheticLambda1
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    AddStaffContactsFragment.registerOnClickListeners$lambda$13$lambda$12(this.f$0, view);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void registerOnClickListeners$lambda$13$lambda$5(AddStaffContactsFragment this$0, FragmentAddStaffContactsBinding this_apply, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(this_apply, "$this_apply");
        BuildersKt__Builders_commonKt.launch$default(LifecycleOwnerKt.getLifecycleScope(this$0), Dispatchers.getIO(), null, new AddStaffContactsFragment$registerOnClickListeners$1$1$1(this_apply, this$0, null), 2, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void registerOnClickListeners$lambda$13$lambda$6(AddStaffContactsFragment this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.getFragmentNavigator().goBack();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void registerOnClickListeners$lambda$13$lambda$7(AddStaffContactsFragment this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.requestContactsPermission(true);
        BaseFragment.recordClickEvent$default(this$0, ConstantEventNames.REFRESH_CONTACTS, null, 2, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void registerOnClickListeners$lambda$13$lambda$8(AddStaffContactsFragment this$0, FragmentAddStaffContactsBinding this_apply, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(this_apply, "$this_apply");
        this$0.openOrCloseAddStaffManualLayout(this_apply);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void registerOnClickListeners$lambda$13$lambda$9(AddStaffContactsFragment this$0, FragmentAddStaffContactsBinding this_apply, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(this_apply, "$this_apply");
        this$0.openOrCloseAddStaffManualLayout(this_apply);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void registerOnClickListeners$lambda$13$lambda$10(AddStaffContactsFragment this$0, FragmentAddStaffContactsBinding this_apply, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(this_apply, "$this_apply");
        this$0.openOrCloseAddStaffManualLayout(this_apply);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void registerOnClickListeners$lambda$13$lambda$11(AddStaffContactsFragment this$0, FragmentAddStaffContactsBinding this_apply, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(this_apply, "$this_apply");
        this$0.openOrCloseAddStaffManualLayout(this_apply);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void registerOnClickListeners$lambda$13$lambda$12(AddStaffContactsFragment this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        BaseFragment.recordClickEvent$default(this$0, ConstantEventNames.SEARCH_CONTACTS, null, 2, null);
    }

    private final void openOrCloseAddStaffManualLayout(FragmentAddStaffContactsBinding fragmentAddStaffContactsBinding) {
        if (this.isAddStaffOpen) {
            this.isAddStaffOpen = false;
            hideAddStaffLayout(fragmentAddStaffContactsBinding);
        } else {
            this.isAddStaffOpen = true;
            showAddStaffLayout(fragmentAddStaffContactsBinding);
            BaseFragment.recordClickEvent$default(this, ConstantEventNames.SHOW_MANUAL_ADD_LABOR_FORM, null, 2, null);
        }
    }

    private final void showAddStaffLayout(FragmentAddStaffContactsBinding fragmentAddStaffContactsBinding) {
        EditText etStaffName = fragmentAddStaffContactsBinding.etStaffName;
        Intrinsics.checkNotNullExpressionValue(etStaffName, "etStaffName");
        ExtentionsKt.show$default(etStaffName, 0L, null, 3, null);
        EditText etStaffMobileNumber = fragmentAddStaffContactsBinding.etStaffMobileNumber;
        Intrinsics.checkNotNullExpressionValue(etStaffMobileNumber, "etStaffMobileNumber");
        ExtentionsKt.show$default(etStaffMobileNumber, 0L, null, 3, null);
        PrimaryButton btnAddStaff = fragmentAddStaffContactsBinding.btnAddStaff;
        Intrinsics.checkNotNullExpressionValue(btnAddStaff, "btnAddStaff");
        ExtentionsKt.show$default(btnAddStaff, 0L, null, 3, null);
        fragmentAddStaffContactsBinding.ivChevron.setImageResource(C3656R.drawable.ic_chevron_up);
    }

    private final void hideAddStaffLayout(FragmentAddStaffContactsBinding fragmentAddStaffContactsBinding) {
        EditText etStaffName = fragmentAddStaffContactsBinding.etStaffName;
        Intrinsics.checkNotNullExpressionValue(etStaffName, "etStaffName");
        ExtentionsKt.hide$default(etStaffName, 0L, null, 3, null);
        EditText etStaffMobileNumber = fragmentAddStaffContactsBinding.etStaffMobileNumber;
        Intrinsics.checkNotNullExpressionValue(etStaffMobileNumber, "etStaffMobileNumber");
        ExtentionsKt.hide$default(etStaffMobileNumber, 0L, null, 3, null);
        PrimaryButton btnAddStaff = fragmentAddStaffContactsBinding.btnAddStaff;
        Intrinsics.checkNotNullExpressionValue(btnAddStaff, "btnAddStaff");
        ExtentionsKt.hide$default(btnAddStaff, 0L, null, 3, null);
        fragmentAddStaffContactsBinding.ivChevron.setImageResource(C3656R.drawable.ic_chevron_down);
    }

    private final void viewModelObserver() {
        getViewModel().uiState().observe(getViewLifecycleOwner(), new AddStaffContactsFragment$sam$androidx_lifecycle_Observer$0(new Function1() { // from class: com.laborbook.keep.screen.addstaff.fragment.AddStaffContactsFragment$$ExternalSyntheticLambda3
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return AddStaffContactsFragment.viewModelObserver$lambda$14(this.f$0, (AddStaffUiState) obj);
            }
        }));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit viewModelObserver$lambda$14(AddStaffContactsFragment this$0, AddStaffUiState addStaffUiState) {
        ProgressBar progressBar;
        EditText editText;
        ProgressBar progressBar2;
        PrimaryButton primaryButton;
        LinearLayout linearLayout;
        EditText editText2;
        LinearLayout linearLayout2;
        TextViewBold16 textViewBold16;
        LinearLayout linearLayout3;
        EditText editText3;
        LinearLayout linearLayout4;
        TextViewBold16 textViewBold162;
        ProgressBar progressBar3;
        ProgressBar progressBar4;
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        if (addStaffUiState instanceof AddStaffUiState.Loading) {
            FragmentAddStaffContactsBinding binding = this$0.getBinding();
            if (binding != null && (progressBar4 = binding.f3450pb) != null) {
                ExtentionsKt.show$default(progressBar4, 0L, null, 3, null);
            }
        } else if (addStaffUiState instanceof AddStaffUiState.Success) {
            FragmentAddStaffContactsBinding binding2 = this$0.getBinding();
            if (binding2 != null && (progressBar3 = binding2.f3450pb) != null) {
                ExtentionsKt.hide$default(progressBar3, 0L, null, 3, null);
            }
            FragmentAddStaffContactsBinding binding3 = this$0.getBinding();
            if (binding3 != null && (textViewBold162 = binding3.etNoResultFound) != null) {
                ExtentionsKt.hide$default(textViewBold162, 0L, null, 3, null);
            }
            FragmentAddStaffContactsBinding binding4 = this$0.getBinding();
            if (binding4 != null && (linearLayout4 = binding4.llAddStaffToolTip) != null) {
                ExtentionsKt.hide$default(linearLayout4, 0L, null, 3, null);
            }
            FragmentAddStaffContactsBinding binding5 = this$0.getBinding();
            if (binding5 != null && (editText3 = binding5.etSearchContacts) != null) {
                ExtentionsKt.show$default(editText3, 0L, null, 3, null);
            }
            FragmentAddStaffContactsBinding binding6 = this$0.getBinding();
            if (binding6 != null && (linearLayout3 = binding6.llContacts) != null) {
                ExtentionsKt.show$default(linearLayout3, 0L, null, 3, null);
            }
            ContactItemAdapter contactItemAdapter = this$0.adapter;
            if (contactItemAdapter == null) {
                Intrinsics.throwUninitializedPropertyAccessException("adapter");
                contactItemAdapter = null;
            }
            ContactItemAdapter.submitOriginalList$default(contactItemAdapter, ((AddStaffUiState.Success) addStaffUiState).getContacts(), false, 2, null);
        } else if (addStaffUiState instanceof AddStaffUiState.Error) {
            FragmentAddStaffContactsBinding binding7 = this$0.getBinding();
            if (binding7 != null && (textViewBold16 = binding7.etNoResultFound) != null) {
                ExtentionsKt.show$default(textViewBold16, 0L, null, 3, null);
            }
            FragmentAddStaffContactsBinding binding8 = this$0.getBinding();
            if (binding8 != null && (linearLayout2 = binding8.llAddStaffToolTip) != null) {
                ExtentionsKt.show$default(linearLayout2, 0L, null, 3, null);
            }
            FragmentAddStaffContactsBinding binding9 = this$0.getBinding();
            if (binding9 != null && (editText2 = binding9.etSearchContacts) != null) {
                ExtentionsKt.hide$default(editText2, 0L, null, 3, null);
            }
            FragmentAddStaffContactsBinding binding10 = this$0.getBinding();
            if (binding10 != null && (linearLayout = binding10.llContacts) != null) {
                ExtentionsKt.hide$default(linearLayout, 0L, null, 3, null);
            }
            Toast.makeText(this$0.getContext(), ((AddStaffUiState.Error) addStaffUiState).getMessage(), 0).show();
        } else if (addStaffUiState instanceof AddStaffUiState.EnableAddStaffButton) {
            FragmentAddStaffContactsBinding binding11 = this$0.getBinding();
            if (binding11 != null && (primaryButton = binding11.btnAddStaff) != null) {
                primaryButton.setEnabled(((AddStaffUiState.EnableAddStaffButton) addStaffUiState).isDetailsEntered());
            }
        } else if (addStaffUiState instanceof AddStaffUiState.StaffUserAddedSuccess) {
            FragmentAddStaffContactsBinding binding12 = this$0.getBinding();
            if (binding12 != null && (progressBar2 = binding12.f3450pb) != null) {
                ExtentionsKt.hide$default(progressBar2, 0L, null, 3, null);
            }
            FragmentAddStaffContactsBinding binding13 = this$0.getBinding();
            if (binding13 != null && (editText = binding13.etSearchContacts) != null) {
                FragmentActivity fragmentActivityRequireActivity = this$0.requireActivity();
                Intrinsics.checkNotNullExpressionValue(fragmentActivityRequireActivity, "requireActivity(...)");
                BaseExtensionKt.hideKeyboard(editText, fragmentActivityRequireActivity);
            }
            Function1<Boolean, Unit> addedStaff = this$0.getObserverUtil().getAddedStaff();
            if (addedStaff != null) {
                addedStaff.invoke(true);
            }
            FacebookPaymentEvents facebookPaymentEvents = FacebookPaymentEvents.INSTANCE;
            Context contextRequireContext = this$0.requireContext();
            Intrinsics.checkNotNullExpressionValue(contextRequireContext, "requireContext(...)");
            FacebookPaymentEvents.logFirstStaffAdded$default(facebookPaymentEvents, contextRequireContext, 0, null, 6, null);
            AddStaffUiState.StaffUserAddedSuccess staffUserAddedSuccess = (AddStaffUiState.StaffUserAddedSuccess) addStaffUiState;
            this$0.getFragmentNavigator().start(LaborMonthlyCalendarFragment.INSTANCE.newInstance(staffUserAddedSuccess.getId(), staffUserAddedSuccess.getMobileNumber()));
        } else if (addStaffUiState instanceof AddStaffUiState.OpenNonContactStaff) {
            FragmentAddStaffContactsBinding binding14 = this$0.getBinding();
            if (binding14 != null) {
                this$0.showAddStaffLayout(binding14);
            }
        } else if (addStaffUiState instanceof AddStaffUiState.StaffAddError) {
            FragmentAddStaffContactsBinding binding15 = this$0.getBinding();
            if (binding15 != null && (progressBar = binding15.f3450pb) != null) {
                ExtentionsKt.hide$default(progressBar, 0L, null, 3, null);
            }
            Toast.makeText(this$0.getContext(), ((AddStaffUiState.StaffAddError) addStaffUiState).getMessage(), 0).show();
        }
        return Unit.INSTANCE;
    }

    private final void requestContactsPermission(boolean shouldRefresh) {
        if (ContextCompat.checkSelfPermission(requireContext(), "android.permission.READ_CONTACTS") != 0) {
            this.requestPermissionLauncher.launch("android.permission.READ_CONTACTS");
            return;
        }
        ContactsViewModel viewModel = getViewModel();
        Context contextRequireContext = requireContext();
        Intrinsics.checkNotNullExpressionValue(contextRequireContext, "requireContext(...)");
        viewModel.loadContacts(contextRequireContext, shouldRefresh);
    }

    @Override // com.laborbook.base.BaseFragment, androidx.fragment.app.Fragment
    public void onDestroyView() {
        super.onDestroyView();
        ContactItemAdapter contactItemAdapter = this.adapter;
        if (contactItemAdapter != null) {
            if (contactItemAdapter == null) {
                Intrinsics.throwUninitializedPropertyAccessException("adapter");
                contactItemAdapter = null;
            }
            contactItemAdapter.releaseAds();
        }
    }

    /* JADX INFO: compiled from: AddStaffContactsFragment.kt */
    @Metadata(m2721d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\b\u0010\u0004\u001a\u00020\u0005H\u0007¨\u0006\u0006"}, m2722d2 = {"Lcom/laborbook/keep/screen/addstaff/fragment/AddStaffContactsFragment$Companion;", "", "<init>", "()V", "newInstance", "Lcom/laborbook/keep/screen/addstaff/fragment/AddStaffContactsFragment;", "keep_release"}, m2723k = 1, m2724mv = {2, 0, 0}, m2726xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        @JvmStatic
        public final AddStaffContactsFragment newInstance() {
            return new AddStaffContactsFragment();
        }
    }
}
