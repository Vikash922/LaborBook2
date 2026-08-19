package com.rebuilt.app.keep.screen.premium;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.gms.common.internal.ServiceSpecificExtraArgs;
import com.google.android.material.bottomsheet.BottomSheetDialogFragment;
import com.rebuilt.app.keep.databinding.BottomsheetUpiSelectionBinding;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: UpiSelectionBottomSheet.kt */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(m2721d1 = {"\u0000P\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010 \n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\b\u0018\u0000 #2\u00020\u0001:\u0001#B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u0014\u0010\u0013\u001a\u00020\u000e2\f\u0010\u0014\u001a\b\u0012\u0004\u0012\u00020\r0\u0010J&\u0010\u0015\u001a\u0004\u0018\u00010\u00162\u0006\u0010\u0017\u001a\u00020\u00182\b\u0010\u0019\u001a\u0004\u0018\u00010\u001a2\b\u0010\u001b\u001a\u0004\u0018\u00010\u001cH\u0016J\u001a\u0010\u001d\u001a\u00020\u000e2\u0006\u0010\u001e\u001a\u00020\u00162\b\u0010\u001b\u001a\u0004\u0018\u00010\u001cH\u0016J\b\u0010\u001f\u001a\u00020\u000eH\u0002J\u001a\u0010 \u001a\u00020\u000e2\u0012\u0010!\u001a\u000e\u0012\u0004\u0012\u00020\r\u0012\u0004\u0012\u00020\u000e0\fJ\b\u0010\"\u001a\u00020\u000eH\u0016R\u0010\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0082\u000e¢\u0006\u0002\n\u0000R\u0016\u0010\u0006\u001a\u0004\u0018\u00010\u00058BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b\u0007\u0010\bR\u000e\u0010\t\u001a\u00020\nX\u0082\u000e¢\u0006\u0002\n\u0000R\u001c\u0010\u000b\u001a\u0010\u0012\u0004\u0012\u00020\r\u0012\u0004\u0012\u00020\u000e\u0018\u00010\fX\u0082\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\r0\u0010X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u0012X\u0082.¢\u0006\u0002\n\u0000¨\u0006$"}, m2722d2 = {"Lcom/laborbook/keep/screen/premium/UpiSelectionBottomSheet;", "Lcom/google/android/material/bottomsheet/BottomSheetDialogFragment;", "<init>", "()V", "_binding", "Lcom/laborbook/keep/databinding/BottomsheetUpiSelectionBinding;", "binding", "getBinding", "()Lcom/laborbook/keep/databinding/BottomsheetUpiSelectionBinding;", "selectedPackageName", "", "onUpiSelectedListener", "Lkotlin/Function1;", "Lcom/laborbook/keep/screen/premium/InstalledUpiApp;", "", "installedUpiAppsList", "", "adapter", "Lcom/laborbook/keep/screen/premium/UpiAppAdapter;", "setInstalledUpiApps", "apps", "onCreateView", "Landroid/view/View;", "inflater", "Landroid/view/LayoutInflater;", "container", "Landroid/view/ViewGroup;", "savedInstanceState", "Landroid/os/Bundle;", "onViewCreated", "view", "setupRecyclerView", "setOnUpiSelectedListener", ServiceSpecificExtraArgs.CastExtraArgs.LISTENER, "onDestroyView", "Companion", "keep_release"}, m2723k = 1, m2724mv = {2, 0, 0}, m2726xi = 48)
public final class UpiSelectionBottomSheet extends BottomSheetDialogFragment {
    private static final String ARG_SELECTED_PACKAGE = "selected_package";

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    public static final String TAG = "UpiSelectionBottomSheet";
    private BottomsheetUpiSelectionBinding _binding;
    private UpiAppAdapter adapter;
    private Function1<? super InstalledUpiApp, Unit> onUpiSelectedListener;
    private String selectedPackageName = "";
    private List<InstalledUpiApp> installedUpiAppsList = CollectionsKt.emptyList();

    @JvmStatic
    public static final UpiSelectionBottomSheet newInstance(String str) {
        return INSTANCE.newInstance(str);
    }

    /* JADX INFO: renamed from: getBinding, reason: from getter */
    private final BottomsheetUpiSelectionBinding get_binding() {
        return this._binding;
    }

    public final void setInstalledUpiApps(List<InstalledUpiApp> apps) {
        Intrinsics.checkNotNullParameter(apps, "apps");
        this.installedUpiAppsList = apps;
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        Intrinsics.checkNotNullParameter(inflater, "inflater");
        this._binding = BottomsheetUpiSelectionBinding.inflate(inflater, container, false);
        BottomsheetUpiSelectionBinding bottomsheetUpiSelectionBinding = get_binding();
        return bottomsheetUpiSelectionBinding != null ? bottomsheetUpiSelectionBinding.getRoot() : null;
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle savedInstanceState) {
        String string;
        Intrinsics.checkNotNullParameter(view, "view");
        super.onViewCreated(view, savedInstanceState);
        Bundle arguments = getArguments();
        if (arguments == null || (string = arguments.getString(ARG_SELECTED_PACKAGE)) == null) {
            string = "";
        }
        this.selectedPackageName = string;
        setupRecyclerView();
    }

    private final void setupRecyclerView() {
        RecyclerView recyclerView;
        if (this.installedUpiAppsList.isEmpty()) {
            dismiss();
            return;
        }
        this.adapter = new UpiAppAdapter(this.installedUpiAppsList, this.selectedPackageName, new Function1() { // from class: com.rebuilt.app.keep.screen.premium.UpiSelectionBottomSheet$$ExternalSyntheticLambda0
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return UpiSelectionBottomSheet.setupRecyclerView$lambda$0(this.f$0, (InstalledUpiApp) obj);
            }
        });
        BottomsheetUpiSelectionBinding bottomsheetUpiSelectionBinding = get_binding();
        if (bottomsheetUpiSelectionBinding == null || (recyclerView = bottomsheetUpiSelectionBinding.rvUpiApps) == null) {
            return;
        }
        recyclerView.setLayoutManager(new LinearLayoutManager(requireContext()));
        UpiAppAdapter upiAppAdapter = this.adapter;
        if (upiAppAdapter == null) {
            Intrinsics.throwUninitializedPropertyAccessException("adapter");
            upiAppAdapter = null;
        }
        recyclerView.setAdapter(upiAppAdapter);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit setupRecyclerView$lambda$0(UpiSelectionBottomSheet this$0, InstalledUpiApp upiApp) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(upiApp, "upiApp");
        this$0.selectedPackageName = upiApp.getPackageName();
        Function1<? super InstalledUpiApp, Unit> function1 = this$0.onUpiSelectedListener;
        if (function1 != null) {
            function1.invoke(upiApp);
        }
        this$0.dismiss();
        return Unit.INSTANCE;
    }

    public final void setOnUpiSelectedListener(Function1<? super InstalledUpiApp, Unit> listener) {
        Intrinsics.checkNotNullParameter(listener, "listener");
        this.onUpiSelectedListener = listener;
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onDestroyView() {
        super.onDestroyView();
        this._binding = null;
    }

    /* JADX INFO: compiled from: UpiSelectionBottomSheet.kt */
    @Metadata(m2721d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0012\u0010\u0007\u001a\u00020\b2\b\b\u0002\u0010\t\u001a\u00020\u0005H\u0007R\u000e\u0010\u0004\u001a\u00020\u0005X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0005X\u0082T¢\u0006\u0002\n\u0000¨\u0006\n"}, m2722d2 = {"Lcom/laborbook/keep/screen/premium/UpiSelectionBottomSheet$Companion;", "", "<init>", "()V", "TAG", "", "ARG_SELECTED_PACKAGE", "newInstance", "Lcom/laborbook/keep/screen/premium/UpiSelectionBottomSheet;", "selectedPackage", "keep_release"}, m2723k = 1, m2724mv = {2, 0, 0}, m2726xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public static /* synthetic */ UpiSelectionBottomSheet newInstance$default(Companion companion, String str, int i, Object obj) {
            if ((i & 1) != 0) {
                str = "";
            }
            return companion.newInstance(str);
        }

        @JvmStatic
        public final UpiSelectionBottomSheet newInstance(String selectedPackage) {
            Intrinsics.checkNotNullParameter(selectedPackage, "selectedPackage");
            UpiSelectionBottomSheet upiSelectionBottomSheet = new UpiSelectionBottomSheet();
            Bundle bundle = new Bundle();
            bundle.putString(UpiSelectionBottomSheet.ARG_SELECTED_PACKAGE, selectedPackage);
            upiSelectionBottomSheet.setArguments(bundle);
            return upiSelectionBottomSheet;
        }
    }
}
