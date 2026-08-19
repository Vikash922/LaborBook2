package com.rebuilt.app.keep.screen.deletestaff;

import android.app.Dialog;
import android.content.ComponentCallbacks;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.ImageView;
import android.widget.ProgressBar;
import android.widget.TextView;
import android.widget.Toast;
import com.boilerplate.uikit.views.ExtentionsKt;
import com.example.swipebutton_library.OnActiveListener;
import com.example.swipebutton_library.SwipeButton;
import com.google.android.material.C1346R;
import com.google.android.material.bottomsheet.BottomSheetBehavior;
import com.google.android.material.bottomsheet.BottomSheetDialog;
import com.rebuilt.app.base.BaseBottomsheetFragment;
import com.rebuilt.app.base.analytics.ConstantEventNames;
import com.rebuilt.app.keep.databinding.FragmentDeleteStaffBottomsheetBinding;
import com.rebuilt.app.keep.screen.calendar.utils.ObserverUtil;
import com.rebuilt.app.keep.screen.deletestaff.uistate.DeleteStaffUiState;
import com.rebuilt.app.keep.screen.deletestaff.viewmodel.DeleteStaffViewModel;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.text.StringsKt;
import org.koin.android.ext.android.ComponentCallbackExtKt;
import org.koin.androidx.viewmodel.ext.android.ViewModelStoreOwnerExtKt;
import org.koin.core.qualifier.Qualifier;

/* JADX INFO: compiled from: DeleteStaffBottomSheetFragment.kt */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(m2721d1 = {"\u0000L\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\u0018\u0000 '2\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0001'B\u0007¢\u0006\u0004\b\u0003\u0010\u0004J\b\u0010\u0016\u001a\u00020\u0017H\u0016J\u0012\u0010\u0018\u001a\u00020\u00172\b\u0010\u0019\u001a\u0004\u0018\u00010\u001aH\u0016J&\u0010\u001b\u001a\u0004\u0018\u00010\u00022\u0006\u0010\u001c\u001a\u00020\u001d2\b\u0010\u001e\u001a\u0004\u0018\u00010\u001f2\b\u0010\u0019\u001a\u0004\u0018\u00010\u001aH\u0016J&\u0010 \u001a\u0004\u0018\u00010!2\u0006\u0010\u001c\u001a\u00020\u001d2\b\u0010\u001e\u001a\u0004\u0018\u00010\u001f2\b\u0010\u0019\u001a\u0004\u0018\u00010\u001aH\u0016J\u001a\u0010\"\u001a\u00020\u00172\u0006\u0010#\u001a\u00020!2\b\u0010\u0019\u001a\u0004\u0018\u00010\u001aH\u0016J\b\u0010$\u001a\u00020\u0017H\u0002J\b\u0010%\u001a\u00020\u0017H\u0002J\b\u0010&\u001a\u00020\u0017H\u0002R\u0014\u0010\u0005\u001a\u00020\u00068VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0007\u0010\bR\u0010\u0010\t\u001a\u0004\u0018\u00010\u0006X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\n\u001a\u0004\u0018\u00010\u0006X\u0082\u000e¢\u0006\u0002\n\u0000R\u001b\u0010\u000b\u001a\u00020\f8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u000f\u0010\u0010\u001a\u0004\b\r\u0010\u000eR\u001b\u0010\u0011\u001a\u00020\u00128BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0015\u0010\u0010\u001a\u0004\b\u0013\u0010\u0014¨\u0006("}, m2722d2 = {"Lcom/laborbook/keep/screen/deletestaff/DeleteStaffBottomsheetFragment;", "Lcom/laborbook/base/BaseBottomsheetFragment;", "Lcom/laborbook/keep/databinding/FragmentDeleteStaffBottomsheetBinding;", "<init>", "()V", "screenName", "", "getScreenName", "()Ljava/lang/String;", "id", "name", "viewModel", "Lcom/laborbook/keep/screen/deletestaff/viewmodel/DeleteStaffViewModel;", "getViewModel", "()Lcom/laborbook/keep/screen/deletestaff/viewmodel/DeleteStaffViewModel;", "viewModel$delegate", "Lkotlin/Lazy;", "observerUtil", "Lcom/laborbook/keep/screen/calendar/utils/ObserverUtil;", "getObserverUtil", "()Lcom/laborbook/keep/screen/calendar/utils/ObserverUtil;", "observerUtil$delegate", "onStart", "", "onCreate", "savedInstanceState", "Landroid/os/Bundle;", "getViewBinding", "inflater", "Landroid/view/LayoutInflater;", "container", "Landroid/view/ViewGroup;", "onCreateView", "Landroid/view/View;", "onViewCreated", "view", "viewModelObserver", "setUpViews", "setOnClickListeners", "Companion", "keep_release"}, m2723k = 1, m2724mv = {2, 0, 0}, m2726xi = 48)
public final class DeleteStaffBottomsheetFragment extends BaseBottomsheetFragment<FragmentDeleteStaffBottomsheetBinding> {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private String id = "";
    private String name = "";

    /* JADX INFO: renamed from: observerUtil$delegate, reason: from kotlin metadata */
    private final Lazy observerUtil;

    /* JADX INFO: renamed from: viewModel$delegate, reason: from kotlin metadata */
    private final Lazy viewModel;

    @JvmStatic
    public static final DeleteStaffBottomsheetFragment newInstance(String str, String str2) {
        return INSTANCE.newInstance(str, str2);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public DeleteStaffBottomsheetFragment() {
        final DeleteStaffBottomsheetFragment deleteStaffBottomsheetFragment = this;
        LazyThreadSafetyMode lazyThreadSafetyMode = LazyThreadSafetyMode.SYNCHRONIZED;
        final Qualifier qualifier = null;
        final Object[] objArr = 0 == true ? 1 : 0;
        this.viewModel = LazyKt.lazy(lazyThreadSafetyMode, (Function0) new Function0<DeleteStaffViewModel>() { // from class: com.rebuilt.app.keep.screen.deletestaff.DeleteStaffBottomsheetFragment$special$$inlined$viewModel$default$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            /* JADX WARN: Type inference failed for: r0v1, types: [androidx.lifecycle.ViewModel, com.rebuilt.app.keep.screen.deletestaff.viewmodel.DeleteStaffViewModel] */
            @Override // kotlin.jvm.functions.Function0
            public final DeleteStaffViewModel invoke() {
                return ViewModelStoreOwnerExtKt.getViewModel(deleteStaffBottomsheetFragment, qualifier, Reflection.getOrCreateKotlinClass(DeleteStaffViewModel.class), objArr);
            }
        });
        final DeleteStaffBottomsheetFragment deleteStaffBottomsheetFragment2 = this;
        LazyThreadSafetyMode lazyThreadSafetyMode2 = LazyThreadSafetyMode.SYNCHRONIZED;
        final Object[] objArr2 = 0 == true ? 1 : 0;
        final Object[] objArr3 = 0 == true ? 1 : 0;
        this.observerUtil = LazyKt.lazy(lazyThreadSafetyMode2, (Function0) new Function0<ObserverUtil>() { // from class: com.rebuilt.app.keep.screen.deletestaff.DeleteStaffBottomsheetFragment$special$$inlined$inject$default$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX WARN: Type inference failed for: r0v2, types: [com.rebuilt.app.keep.screen.calendar.utils.ObserverUtil, java.lang.Object] */
            @Override // kotlin.jvm.functions.Function0
            public final ObserverUtil invoke() {
                ComponentCallbacks componentCallbacks = deleteStaffBottomsheetFragment2;
                return ComponentCallbackExtKt.getDefaultScope(componentCallbacks).get(Reflection.getOrCreateKotlinClass(ObserverUtil.class), objArr2, objArr3);
            }
        });
    }

    @Override // com.rebuilt.app.base.BaseBottomsheetFragment
    public String getScreenName() {
        return ConstantEventNames.DELETE_LABOR_BS;
    }

    private final DeleteStaffViewModel getViewModel() {
        return (DeleteStaffViewModel) this.viewModel.getValue();
    }

    private final ObserverUtil getObserverUtil() {
        return (ObserverUtil) this.observerUtil.getValue();
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

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        Bundle arguments = getArguments();
        if (arguments != null) {
            this.id = arguments.getString("id");
            this.name = arguments.getString("name");
        }
    }

    @Override // com.rebuilt.app.base.BaseBottomsheetFragment
    public FragmentDeleteStaffBottomsheetBinding getViewBinding(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        Intrinsics.checkNotNullParameter(inflater, "inflater");
        return FragmentDeleteStaffBottomsheetBinding.inflate(inflater, container, false);
    }

    @Override // com.rebuilt.app.base.BaseBottomsheetFragment, androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        Intrinsics.checkNotNullParameter(inflater, "inflater");
        super.onCreateView(inflater, container, savedInstanceState);
        FragmentDeleteStaffBottomsheetBinding binding = getBinding();
        return binding != null ? binding.getRoot() : null;
    }

    @Override // com.rebuilt.app.base.BaseBottomsheetFragment, androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle savedInstanceState) {
        Intrinsics.checkNotNullParameter(view, "view");
        super.onViewCreated(view, savedInstanceState);
        setUpViews();
        viewModelObserver();
        setOnClickListeners();
    }

    private final void viewModelObserver() {
        getViewModel().uiState().observe(getViewLifecycleOwner(), new C3775xe609f0fc(new Function1() { // from class: com.rebuilt.app.keep.screen.deletestaff.DeleteStaffBottomsheetFragment$$ExternalSyntheticLambda0
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return DeleteStaffBottomsheetFragment.viewModelObserver$lambda$1(this.f$0, (DeleteStaffUiState) obj);
            }
        }));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit viewModelObserver$lambda$1(DeleteStaffBottomsheetFragment this$0, DeleteStaffUiState deleteStaffUiState) {
        ProgressBar progressBar;
        ProgressBar progressBar2;
        ProgressBar progressBar3;
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        if (deleteStaffUiState instanceof DeleteStaffUiState.Loading) {
            FragmentDeleteStaffBottomsheetBinding binding = this$0.getBinding();
            if (binding != null && (progressBar3 = binding.f3452pb) != null) {
                ExtentionsKt.show$default(progressBar3, 0L, null, 3, null);
            }
        } else if (deleteStaffUiState instanceof DeleteStaffUiState.Success) {
            FragmentDeleteStaffBottomsheetBinding binding2 = this$0.getBinding();
            if (binding2 != null && (progressBar2 = binding2.f3452pb) != null) {
                ExtentionsKt.hide$default(progressBar2, 0L, null, 3, null);
            }
            this$0.dismiss();
            Function1<Boolean, Unit> goBackFromCalendar = this$0.getObserverUtil().getGoBackFromCalendar();
            if (goBackFromCalendar != null) {
                goBackFromCalendar.invoke(true);
            }
        } else if (deleteStaffUiState instanceof DeleteStaffUiState.Error) {
            FragmentDeleteStaffBottomsheetBinding binding3 = this$0.getBinding();
            if (binding3 != null && (progressBar = binding3.f3452pb) != null) {
                ExtentionsKt.hide$default(progressBar, 0L, null, 3, null);
            }
            Toast.makeText(this$0.requireContext(), ((DeleteStaffUiState.Error) deleteStaffUiState).getMessage(), 0).show();
        }
        return Unit.INSTANCE;
    }

    private final void setUpViews() {
        FragmentDeleteStaffBottomsheetBinding binding = getBinding();
        if (binding != null) {
            binding.tvName.setText(this.name);
            try {
                String str = this.name;
                if (str != null) {
                    str.length();
                    TextView textView = binding.tvInitial;
                    String str2 = this.name;
                    textView.setText(String.valueOf(str2 != null ? Character.valueOf(StringsKt.first(str2)) : null));
                }
            } catch (Exception unused) {
            }
        }
    }

    private final void setOnClickListeners() {
        SwipeButton swipeButton;
        ImageView imageView;
        FragmentDeleteStaffBottomsheetBinding binding = getBinding();
        if (binding != null && (imageView = binding.ivClose) != null) {
            imageView.setOnClickListener(new View.OnClickListener() { // from class: com.rebuilt.app.keep.screen.deletestaff.DeleteStaffBottomsheetFragment$$ExternalSyntheticLambda1
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    DeleteStaffBottomsheetFragment.setOnClickListeners$lambda$4(this.f$0, view);
                }
            });
        }
        FragmentDeleteStaffBottomsheetBinding binding2 = getBinding();
        if (binding2 == null || (swipeButton = binding2.btnDeleteStaff) == null) {
            return;
        }
        swipeButton.setOnActiveListener(new OnActiveListener() { // from class: com.rebuilt.app.keep.screen.deletestaff.DeleteStaffBottomsheetFragment$$ExternalSyntheticLambda2
            @Override // com.example.swipebutton_library.OnActiveListener
            public final void onActive() {
                DeleteStaffBottomsheetFragment.setOnClickListeners$lambda$6(this.f$0);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void setOnClickListeners$lambda$4(DeleteStaffBottomsheetFragment this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.dismiss();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void setOnClickListeners$lambda$6(DeleteStaffBottomsheetFragment this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        String str = this$0.id;
        if (str != null) {
            this$0.getViewModel().deleteStaffUser(str);
        }
    }

    /* JADX INFO: compiled from: DeleteStaffBottomSheetFragment.kt */
    @Metadata(m2721d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0018\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\u0007H\u0007¨\u0006\t"}, m2722d2 = {"Lcom/laborbook/keep/screen/deletestaff/DeleteStaffBottomsheetFragment$Companion;", "", "<init>", "()V", "newInstance", "Lcom/laborbook/keep/screen/deletestaff/DeleteStaffBottomsheetFragment;", "id", "", "name", "keep_release"}, m2723k = 1, m2724mv = {2, 0, 0}, m2726xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        @JvmStatic
        public final DeleteStaffBottomsheetFragment newInstance(String id, String name) {
            Intrinsics.checkNotNullParameter(id, "id");
            Intrinsics.checkNotNullParameter(name, "name");
            DeleteStaffBottomsheetFragment deleteStaffBottomsheetFragment = new DeleteStaffBottomsheetFragment();
            Bundle bundle = new Bundle();
            bundle.putString("id", id);
            bundle.putString("name", name);
            deleteStaffBottomsheetFragment.setArguments(bundle);
            return deleteStaffBottomsheetFragment;
        }
    }
}
