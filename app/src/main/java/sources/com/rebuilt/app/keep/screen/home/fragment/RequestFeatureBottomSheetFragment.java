package com.rebuilt.app.keep.screen.home.fragment;

import android.app.Dialog;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.EditText;
import android.widget.Toast;
import androidx.fragment.app.FragmentActivity;
import androidx.lifecycle.LifecycleOwnerKt;
import com.boilerplate.analytics.AnalyticsPlatforms;
import com.google.android.material.C1346R;
import com.google.android.material.bottomsheet.BottomSheetBehavior;
import com.google.android.material.bottomsheet.BottomSheetDialog;
import com.rebuilt.app.base.BaseBottomsheetFragment;
import com.rebuilt.app.base.BaseExtensionKt;
import com.rebuilt.app.base.analytics.Analytics;
import com.rebuilt.app.base.analytics.ConstantEventNames;
import com.rebuilt.app.keep.C3656R;
import com.rebuilt.app.keep.databinding.FragmentRequestFeatureBinding;
import java.util.List;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.collections.MapsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.DelayKt;

/* JADX INFO: compiled from: RequestFeatureBottomSheetFragment.kt */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(m2721d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u0000 \u00182\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0001\u0018B\u0007¢\u0006\u0004\b\u0003\u0010\u0004J\b\u0010\t\u001a\u00020\nH\u0016J\u0012\u0010\u000b\u001a\u00020\n2\b\u0010\f\u001a\u0004\u0018\u00010\rH\u0016J&\u0010\u000e\u001a\u0004\u0018\u00010\u00022\u0006\u0010\u000f\u001a\u00020\u00102\b\u0010\u0011\u001a\u0004\u0018\u00010\u00122\b\u0010\f\u001a\u0004\u0018\u00010\rH\u0016J&\u0010\u0013\u001a\u0004\u0018\u00010\u00142\u0006\u0010\u000f\u001a\u00020\u00102\b\u0010\u0011\u001a\u0004\u0018\u00010\u00122\b\u0010\f\u001a\u0004\u0018\u00010\rH\u0016J\u001a\u0010\u0015\u001a\u00020\n2\u0006\u0010\u0016\u001a\u00020\u00142\b\u0010\f\u001a\u0004\u0018\u00010\rH\u0016J\b\u0010\u0017\u001a\u00020\nH\u0002R\u0014\u0010\u0005\u001a\u00020\u00068VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0007\u0010\b¨\u0006\u0019"}, m2722d2 = {"Lcom/laborbook/keep/screen/home/fragment/RequestFeatureBottomSheetFragment;", "Lcom/laborbook/base/BaseBottomsheetFragment;", "Lcom/laborbook/keep/databinding/FragmentRequestFeatureBinding;", "<init>", "()V", "screenName", "", "getScreenName", "()Ljava/lang/String;", "onStart", "", "onCreate", "savedInstanceState", "Landroid/os/Bundle;", "getViewBinding", "inflater", "Landroid/view/LayoutInflater;", "container", "Landroid/view/ViewGroup;", "onCreateView", "Landroid/view/View;", "onViewCreated", "view", "setOnClickListeners", "Companion", "keep_release"}, m2723k = 1, m2724mv = {2, 0, 0}, m2726xi = 48)
public final class RequestFeatureBottomSheetFragment extends BaseBottomsheetFragment<FragmentRequestFeatureBinding> {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    @JvmStatic
    public static final RequestFeatureBottomSheetFragment newInstance() {
        return INSTANCE.newInstance();
    }

    @Override // com.rebuilt.app.base.BaseBottomsheetFragment
    public String getScreenName() {
        return ConstantEventNames.REQUEST_FEATURE;
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
    }

    @Override // com.rebuilt.app.base.BaseBottomsheetFragment
    public FragmentRequestFeatureBinding getViewBinding(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        Intrinsics.checkNotNullParameter(inflater, "inflater");
        return FragmentRequestFeatureBinding.inflate(inflater, container, false);
    }

    @Override // com.rebuilt.app.base.BaseBottomsheetFragment, androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        Intrinsics.checkNotNullParameter(inflater, "inflater");
        super.onCreateView(inflater, container, savedInstanceState);
        FragmentRequestFeatureBinding binding = getBinding();
        return binding != null ? binding.getRoot() : null;
    }

    @Override // com.rebuilt.app.base.BaseBottomsheetFragment, androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle savedInstanceState) {
        Intrinsics.checkNotNullParameter(view, "view");
        super.onViewCreated(view, savedInstanceState);
        setOnClickListeners();
        BuildersKt__Builders_commonKt.launch$default(LifecycleOwnerKt.getLifecycleScope(this), null, null, new C37941(null), 3, null);
    }

    /* JADX INFO: renamed from: com.rebuilt.app.keep.screen.home.fragment.RequestFeatureBottomSheetFragment$onViewCreated$1 */
    /* JADX INFO: compiled from: RequestFeatureBottomSheetFragment.kt */
    @Metadata(m2721d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, m2722d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, m2723k = 3, m2724mv = {2, 0, 0}, m2726xi = 48)
    @DebugMetadata(m2734c = "com.rebuilt.app.keep.screen.home.fragment.RequestFeatureBottomSheetFragment$onViewCreated$1", m2735f = "RequestFeatureBottomSheetFragment.kt", m2736i = {}, m2737l = {61}, m2738m = "invokeSuspend", m2739n = {}, m2740s = {})
    static final class C37941 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        int label;

        C37941(Continuation<? super C37941> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return RequestFeatureBottomSheetFragment.this.new C37941(continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((C37941) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            EditText editText;
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                this.label = 1;
                if (DelayKt.delay(500L, this) == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(obj);
            }
            FragmentRequestFeatureBinding binding = RequestFeatureBottomSheetFragment.this.getBinding();
            if (binding != null && (editText = binding.etDescription) != null) {
                FragmentActivity fragmentActivityRequireActivity = RequestFeatureBottomSheetFragment.this.requireActivity();
                Intrinsics.checkNotNullExpressionValue(fragmentActivityRequireActivity, "requireActivity(...)");
                BaseExtensionKt.toggleKeyboard(editText, fragmentActivityRequireActivity);
            }
            return Unit.INSTANCE;
        }
    }

    private final void setOnClickListeners() {
        FragmentRequestFeatureBinding binding = getBinding();
        if (binding != null) {
            binding.btnSubmit.setOnClickListener(new View.OnClickListener() { // from class: com.rebuilt.app.keep.screen.home.fragment.RequestFeatureBottomSheetFragment$$ExternalSyntheticLambda0
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    RequestFeatureBottomSheetFragment.setOnClickListeners$lambda$2$lambda$0(this.f$0, view);
                }
            });
            binding.ivClose.setOnClickListener(new View.OnClickListener() { // from class: com.rebuilt.app.keep.screen.home.fragment.RequestFeatureBottomSheetFragment$$ExternalSyntheticLambda1
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    RequestFeatureBottomSheetFragment.setOnClickListeners$lambda$2$lambda$1(this.f$0, view);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void setOnClickListeners$lambda$2$lambda$0(RequestFeatureBottomSheetFragment this$0, View view) {
        EditText editText;
        EditText editText2;
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        FragmentRequestFeatureBinding binding = this$0.getBinding();
        if (String.valueOf((binding == null || (editText2 = binding.etDescription) == null) ? null : editText2.getText()).length() > 0) {
            Analytics analytics = this$0.getAnalytics();
            List<String> listListOf = CollectionsKt.listOf((Object[]) new String[]{AnalyticsPlatforms.MIXPANEL, AnalyticsPlatforms.FIREBASE});
            Pair[] pairArr = new Pair[1];
            FragmentRequestFeatureBinding binding2 = this$0.getBinding();
            pairArr[0] = new Pair("message", String.valueOf((binding2 == null || (editText = binding2.etDescription) == null) ? null : editText.getText()));
            analytics.logEvent(ConstantEventNames.REQUEST_FEATURE_SUBMIT, "click", listListOf, MapsKt.hashMapOf(pairArr));
            Toast.makeText(this$0.requireContext(), this$0.getString(C3656R.string.request_sent_successfully), 0).show();
            BaseBottomsheetFragment.recordClickEvent$default(this$0, ConstantEventNames.FEATURE_REQUEST_SENT, null, 2, null);
            this$0.dismiss();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void setOnClickListeners$lambda$2$lambda$1(RequestFeatureBottomSheetFragment this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.dismiss();
    }

    /* JADX INFO: compiled from: RequestFeatureBottomSheetFragment.kt */
    @Metadata(m2721d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\b\u0010\u0004\u001a\u00020\u0005H\u0007¨\u0006\u0006"}, m2722d2 = {"Lcom/laborbook/keep/screen/home/fragment/RequestFeatureBottomSheetFragment$Companion;", "", "<init>", "()V", "newInstance", "Lcom/laborbook/keep/screen/home/fragment/RequestFeatureBottomSheetFragment;", "keep_release"}, m2723k = 1, m2724mv = {2, 0, 0}, m2726xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        @JvmStatic
        public final RequestFeatureBottomSheetFragment newInstance() {
            return new RequestFeatureBottomSheetFragment();
        }
    }
}
