package com.rebuilt.app.keep.screen.home.fragment;

import android.app.Dialog;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import androidx.lifecycle.LifecycleOwnerKt;
import com.google.android.material.C1346R;
import com.google.android.material.bottomsheet.BottomSheetBehavior;
import com.google.android.material.bottomsheet.BottomSheetDialog;
import com.rebuilt.app.base.BaseBottomsheetFragment;
import com.rebuilt.app.keep.databinding.FragmentLogoutBottomsheetBinding;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: compiled from: LogoutBottomSheetFragment.kt */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(m2721d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u0000 \u00182\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0001\u0018B\u0007¢\u0006\u0004\b\u0003\u0010\u0004J\b\u0010\t\u001a\u00020\nH\u0016J&\u0010\u000b\u001a\u0004\u0018\u00010\u00022\u0006\u0010\f\u001a\u00020\r2\b\u0010\u000e\u001a\u0004\u0018\u00010\u000f2\b\u0010\u0010\u001a\u0004\u0018\u00010\u0011H\u0016J&\u0010\u0012\u001a\u0004\u0018\u00010\u00132\u0006\u0010\f\u001a\u00020\r2\b\u0010\u000e\u001a\u0004\u0018\u00010\u000f2\b\u0010\u0010\u001a\u0004\u0018\u00010\u0011H\u0016J\u001a\u0010\u0014\u001a\u00020\n2\u0006\u0010\u0015\u001a\u00020\u00132\b\u0010\u0010\u001a\u0004\u0018\u00010\u0011H\u0016J\b\u0010\u0016\u001a\u00020\nH\u0002J\b\u0010\u0017\u001a\u00020\nH\u0002R\u0014\u0010\u0005\u001a\u00020\u00068VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0007\u0010\b¨\u0006\u0019"}, m2722d2 = {"Lcom/laborbook/keep/screen/home/fragment/LogoutBottomSheetFragment;", "Lcom/laborbook/base/BaseBottomsheetFragment;", "Lcom/laborbook/keep/databinding/FragmentLogoutBottomsheetBinding;", "<init>", "()V", "screenName", "", "getScreenName", "()Ljava/lang/String;", "onStart", "", "getViewBinding", "inflater", "Landroid/view/LayoutInflater;", "container", "Landroid/view/ViewGroup;", "savedInstanceState", "Landroid/os/Bundle;", "onCreateView", "Landroid/view/View;", "onViewCreated", "view", "setOnClickListeners", "handleLogout", "Companion", "keep_release"}, m2723k = 1, m2724mv = {2, 0, 0}, m2726xi = 48)
public final class LogoutBottomSheetFragment extends BaseBottomsheetFragment<FragmentLogoutBottomsheetBinding> {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    @JvmStatic
    public static final LogoutBottomSheetFragment newInstance() {
        return INSTANCE.newInstance();
    }

    @Override // com.rebuilt.app.base.BaseBottomsheetFragment
    public String getScreenName() {
        return "settings";
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
        viewFindViewById.getLayoutParams().height = -2;
        bottomSheetBehaviorFrom.setState(4);
        Window window = bottomSheetDialog.getWindow();
        if (window != null) {
            window.setSoftInputMode(16);
        }
    }

    @Override // com.rebuilt.app.base.BaseBottomsheetFragment
    public FragmentLogoutBottomsheetBinding getViewBinding(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        Intrinsics.checkNotNullParameter(inflater, "inflater");
        return FragmentLogoutBottomsheetBinding.inflate(inflater, container, false);
    }

    @Override // com.rebuilt.app.base.BaseBottomsheetFragment, androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        Intrinsics.checkNotNullParameter(inflater, "inflater");
        super.onCreateView(inflater, container, savedInstanceState);
        FragmentLogoutBottomsheetBinding binding = getBinding();
        return binding != null ? binding.getRoot() : null;
    }

    @Override // com.rebuilt.app.base.BaseBottomsheetFragment, androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle savedInstanceState) {
        Intrinsics.checkNotNullParameter(view, "view");
        super.onViewCreated(view, savedInstanceState);
        setOnClickListeners();
    }

    private final void setOnClickListeners() {
        FragmentLogoutBottomsheetBinding binding = getBinding();
        if (binding != null) {
            binding.ivClose.setOnClickListener(new View.OnClickListener() { // from class: com.rebuilt.app.keep.screen.home.fragment.LogoutBottomSheetFragment$$ExternalSyntheticLambda0
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    LogoutBottomSheetFragment.setOnClickListeners$lambda$3$lambda$0(this.f$0, view);
                }
            });
            binding.btnNo.setOnClickListener(new View.OnClickListener() { // from class: com.rebuilt.app.keep.screen.home.fragment.LogoutBottomSheetFragment$$ExternalSyntheticLambda1
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    LogoutBottomSheetFragment.setOnClickListeners$lambda$3$lambda$1(this.f$0, view);
                }
            });
            binding.btnYes.setOnClickListener(new View.OnClickListener() { // from class: com.rebuilt.app.keep.screen.home.fragment.LogoutBottomSheetFragment$$ExternalSyntheticLambda2
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    LogoutBottomSheetFragment.setOnClickListeners$lambda$3$lambda$2(this.f$0, view);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void setOnClickListeners$lambda$3$lambda$0(LogoutBottomSheetFragment this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.dismiss();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void setOnClickListeners$lambda$3$lambda$1(LogoutBottomSheetFragment this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.dismiss();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void setOnClickListeners$lambda$3$lambda$2(LogoutBottomSheetFragment this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.handleLogout();
    }

    /* JADX INFO: renamed from: com.rebuilt.app.keep.screen.home.fragment.LogoutBottomSheetFragment$handleLogout$1 */
    /* JADX INFO: compiled from: LogoutBottomSheetFragment.kt */
    @Metadata(m2721d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, m2722d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, m2723k = 3, m2724mv = {2, 0, 0}, m2726xi = 48)
    @DebugMetadata(m2734c = "com.rebuilt.app.keep.screen.home.fragment.LogoutBottomSheetFragment$handleLogout$1", m2735f = "LogoutBottomSheetFragment.kt", m2736i = {1, 2}, m2737l = {76, 80, 81, 82, 85}, m2738m = "invokeSuspend", m2739n = {"database", "database"}, m2740s = {"L$0", "L$0"})
    static final class C37931 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        Object L$0;
        int label;

        C37931(Continuation<? super C37931> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return LogoutBottomSheetFragment.this.new C37931(continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((C37931) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        /* JADX WARN: Removed duplicated region for block: B:25:0x0086 A[RETURN] */
        /* JADX WARN: Removed duplicated region for block: B:28:0x0099 A[RETURN] */
        /* JADX WARN: Removed duplicated region for block: B:31:0x00b8 A[RETURN] */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.lang.Object invokeSuspend(java.lang.Object r9) {
            /*
                Method dump skipped, instruction units count: 225
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.rebuilt.app.keep.screen.home.fragment.LogoutBottomSheetFragment.C37931.invokeSuspend(java.lang.Object):java.lang.Object");
        }
    }

    private final void handleLogout() {
        BuildersKt__Builders_commonKt.launch$default(LifecycleOwnerKt.getLifecycleScope(this), null, null, new C37931(null), 3, null);
    }

    /* JADX INFO: compiled from: LogoutBottomSheetFragment.kt */
    @Metadata(m2721d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\b\u0010\u0004\u001a\u00020\u0005H\u0007¨\u0006\u0006"}, m2722d2 = {"Lcom/laborbook/keep/screen/home/fragment/LogoutBottomSheetFragment$Companion;", "", "<init>", "()V", "newInstance", "Lcom/laborbook/keep/screen/home/fragment/LogoutBottomSheetFragment;", "keep_release"}, m2723k = 1, m2724mv = {2, 0, 0}, m2726xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        @JvmStatic
        public final LogoutBottomSheetFragment newInstance() {
            return new LogoutBottomSheetFragment();
        }
    }
}
