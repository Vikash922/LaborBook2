package com.rebuilt.app.keep.screen.premium;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.google.android.material.bottomsheet.BottomSheetDialogFragment;
import com.rebuilt.app.keep.C3656R;
import com.rebuilt.app.keep.databinding.BottomsheetPaymentFailedBinding;
import kotlin.Metadata;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: PaymentFailedBottomSheet.kt */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(m2721d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\u0018\u0000 \u00152\u00020\u0001:\u0001\u0015B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J&\u0010\t\u001a\u0004\u0018\u00010\n2\u0006\u0010\u000b\u001a\u00020\f2\b\u0010\r\u001a\u0004\u0018\u00010\u000e2\b\u0010\u000f\u001a\u0004\u0018\u00010\u0010H\u0016J\u001a\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\n2\b\u0010\u000f\u001a\u0004\u0018\u00010\u0010H\u0016J\b\u0010\u0014\u001a\u00020\u0012H\u0016R\u0010\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0082\u000e¢\u0006\u0002\n\u0000R\u0016\u0010\u0006\u001a\u0004\u0018\u00010\u00058BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b\u0007\u0010\b¨\u0006\u0016"}, m2722d2 = {"Lcom/laborbook/keep/screen/premium/PaymentFailedBottomSheet;", "Lcom/google/android/material/bottomsheet/BottomSheetDialogFragment;", "<init>", "()V", "_binding", "Lcom/laborbook/keep/databinding/BottomsheetPaymentFailedBinding;", "binding", "getBinding", "()Lcom/laborbook/keep/databinding/BottomsheetPaymentFailedBinding;", "onCreateView", "Landroid/view/View;", "inflater", "Landroid/view/LayoutInflater;", "container", "Landroid/view/ViewGroup;", "savedInstanceState", "Landroid/os/Bundle;", "onViewCreated", "", "view", "onDestroyView", "Companion", "keep_release"}, m2723k = 1, m2724mv = {2, 0, 0}, m2726xi = 48)
public final class PaymentFailedBottomSheet extends BottomSheetDialogFragment {
    private static final String ARG_MESSAGE = "message";
    private static final String ARG_TITLE = "title";

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    public static final String TAG = "PaymentFailedBottomSheet";
    private BottomsheetPaymentFailedBinding _binding;

    @JvmStatic
    public static final PaymentFailedBottomSheet newInstance(String str, String str2) {
        return INSTANCE.newInstance(str, str2);
    }

    /* JADX INFO: renamed from: getBinding, reason: from getter */
    private final BottomsheetPaymentFailedBinding get_binding() {
        return this._binding;
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        Intrinsics.checkNotNullParameter(inflater, "inflater");
        this._binding = BottomsheetPaymentFailedBinding.inflate(inflater, container, false);
        BottomsheetPaymentFailedBinding bottomsheetPaymentFailedBinding = get_binding();
        return bottomsheetPaymentFailedBinding != null ? bottomsheetPaymentFailedBinding.getRoot() : null;
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle savedInstanceState) {
        String string;
        String string2;
        Intrinsics.checkNotNullParameter(view, "view");
        super.onViewCreated(view, savedInstanceState);
        Bundle arguments = getArguments();
        if (arguments == null || (string = arguments.getString("message")) == null) {
            string = getString(C3656R.string.payment_failed_try_again);
            Intrinsics.checkNotNullExpressionValue(string, "getString(...)");
        }
        Bundle arguments2 = getArguments();
        if (arguments2 == null || (string2 = arguments2.getString("title")) == null) {
            string2 = getString(C3656R.string.payment_failed_title);
            Intrinsics.checkNotNullExpressionValue(string2, "getString(...)");
        }
        BottomsheetPaymentFailedBinding bottomsheetPaymentFailedBinding = get_binding();
        if (bottomsheetPaymentFailedBinding != null) {
            bottomsheetPaymentFailedBinding.tvTitle.setText(string2);
            bottomsheetPaymentFailedBinding.tvMessage.setText(string);
            bottomsheetPaymentFailedBinding.ivClose.setOnClickListener(new View.OnClickListener() { // from class: com.rebuilt.app.keep.screen.premium.PaymentFailedBottomSheet$$ExternalSyntheticLambda0
                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    PaymentFailedBottomSheet.onViewCreated$lambda$2$lambda$0(this.f$0, view2);
                }
            });
            bottomsheetPaymentFailedBinding.btnTryAgain.setOnClickListener(new View.OnClickListener() { // from class: com.rebuilt.app.keep.screen.premium.PaymentFailedBottomSheet$$ExternalSyntheticLambda1
                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    PaymentFailedBottomSheet.onViewCreated$lambda$2$lambda$1(this.f$0, view2);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onViewCreated$lambda$2$lambda$0(PaymentFailedBottomSheet this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.dismiss();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onViewCreated$lambda$2$lambda$1(PaymentFailedBottomSheet this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.dismiss();
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onDestroyView() {
        super.onDestroyView();
        this._binding = null;
    }

    /* JADX INFO: compiled from: PaymentFailedBottomSheet.kt */
    @Metadata(m2721d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u001c\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u00052\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u0005H\u0007R\u000e\u0010\u0004\u001a\u00020\u0005X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0005X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0005X\u0082T¢\u0006\u0002\n\u0000¨\u0006\f"}, m2722d2 = {"Lcom/laborbook/keep/screen/premium/PaymentFailedBottomSheet$Companion;", "", "<init>", "()V", "TAG", "", "ARG_MESSAGE", "ARG_TITLE", "newInstance", "Lcom/laborbook/keep/screen/premium/PaymentFailedBottomSheet;", "message", "title", "keep_release"}, m2723k = 1, m2724mv = {2, 0, 0}, m2726xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public static /* synthetic */ PaymentFailedBottomSheet newInstance$default(Companion companion, String str, String str2, int i, Object obj) {
            if ((i & 2) != 0) {
                str2 = null;
            }
            return companion.newInstance(str, str2);
        }

        @JvmStatic
        public final PaymentFailedBottomSheet newInstance(String message, String title) {
            Intrinsics.checkNotNullParameter(message, "message");
            PaymentFailedBottomSheet paymentFailedBottomSheet = new PaymentFailedBottomSheet();
            Bundle bundle = new Bundle();
            bundle.putString("message", message);
            if (title != null) {
                bundle.putString("title", title);
            }
            paymentFailedBottomSheet.setArguments(bundle);
            return paymentFailedBottomSheet;
        }
    }
}
