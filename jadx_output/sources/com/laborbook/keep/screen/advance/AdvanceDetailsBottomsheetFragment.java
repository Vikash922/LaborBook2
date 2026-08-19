package com.laborbook.keep.screen.advance;

import android.app.Dialog;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.ImageView;
import com.boilerplate.uikit.views.buttons.PrimaryButton;
import com.boilerplate.uikit.views.textviews.text12.TextViewBold12;
import com.google.android.material.C1346R;
import com.google.android.material.bottomsheet.BottomSheetBehavior;
import com.google.android.material.bottomsheet.BottomSheetDialog;
import com.google.android.material.bottomsheet.BottomSheetDialogFragment;
import com.laborbook.base.BaseBottomsheetFragment;
import com.laborbook.base.analytics.ConstantEventNames;
import com.laborbook.keep.databinding.FragmentAdvanceDetailsBottomsheetBinding;
import com.laborbook.keep.screen.advance.PayAdvanceBottomsheetFragment;
import kotlin.Metadata;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: AdvanceDetailsBottomsheetFragment.kt */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(m2721d1 = {"\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\t\n\u0002\u0010\u0006\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u0000 $2\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0001$B\u0007¢\u0006\u0004\b\u0003\u0010\u0004J\u0012\u0010\u0015\u001a\u00020\u00162\b\u0010\u0017\u001a\u0004\u0018\u00010\u0018H\u0016J&\u0010\u0019\u001a\u0004\u0018\u00010\u00022\u0006\u0010\u001a\u001a\u00020\u001b2\b\u0010\u001c\u001a\u0004\u0018\u00010\u001d2\b\u0010\u0017\u001a\u0004\u0018\u00010\u0018H\u0016J\b\u0010\u001e\u001a\u00020\u0016H\u0016J\u001a\u0010\u001f\u001a\u00020\u00162\u0006\u0010 \u001a\u00020!2\b\u0010\u0017\u001a\u0004\u0018\u00010\u0018H\u0016J\b\u0010\"\u001a\u00020\u0016H\u0002J\b\u0010#\u001a\u00020\u0016H\u0002R\u0014\u0010\u0005\u001a\u00020\u00068VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0007\u0010\bR\u0010\u0010\t\u001a\u0004\u0018\u00010\u0006X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\n\u001a\u0004\u0018\u00010\u0006X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u000b\u001a\u0004\u0018\u00010\u0006X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\f\u001a\u0004\u0018\u00010\u0006X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\r\u001a\u0004\u0018\u00010\u0006X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u000e\u001a\u0004\u0018\u00010\u0006X\u0082\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u000f\u001a\u0004\u0018\u00010\u0010X\u0082\u000e¢\u0006\u0004\n\u0002\u0010\u0011R\u0012\u0010\u0012\u001a\u0004\u0018\u00010\u0010X\u0082\u000e¢\u0006\u0004\n\u0002\u0010\u0011R\u0012\u0010\u0013\u001a\u0004\u0018\u00010\u0010X\u0082\u000e¢\u0006\u0004\n\u0002\u0010\u0011R\u0010\u0010\u0014\u001a\u0004\u0018\u00010\u0006X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006%"}, m2722d2 = {"Lcom/laborbook/keep/screen/advance/AdvanceDetailsBottomsheetFragment;", "Lcom/laborbook/base/BaseBottomsheetFragment;", "Lcom/laborbook/keep/databinding/FragmentAdvanceDetailsBottomsheetBinding;", "<init>", "()V", "screenName", "", "getScreenName", "()Ljava/lang/String;", "id", "name", "date", "advance", "reason", "attendanceStatus", "otMinutes", "", "Ljava/lang/Double;", "otPerHour", "otTotalAmount", "paymentMethod", "onCreate", "", "savedInstanceState", "Landroid/os/Bundle;", "getViewBinding", "inflater", "Landroid/view/LayoutInflater;", "container", "Landroid/view/ViewGroup;", "onStart", "onViewCreated", "view", "Landroid/view/View;", "setupViews", "setupClicks", "Companion", "keep_release"}, m2723k = 1, m2724mv = {2, 0, 0}, m2726xi = 48)
public final class AdvanceDetailsBottomsheetFragment extends BaseBottomsheetFragment<FragmentAdvanceDetailsBottomsheetBinding> {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private String advance;
    private String attendanceStatus;
    private String date;
    private String id;
    private String name;
    private Double otMinutes;
    private Double otPerHour;
    private Double otTotalAmount;
    private String paymentMethod;
    private String reason;

    @JvmStatic
    public static final AdvanceDetailsBottomsheetFragment newInstance(String str, String str2, String str3, String str4, String str5, String str6, double d, double d2, double d3, String str7) {
        return INSTANCE.newInstance(str, str2, str3, str4, str5, str6, d, d2, d3, str7);
    }

    @Override // com.laborbook.base.BaseBottomsheetFragment
    public String getScreenName() {
        return ConstantEventNames.ADVANCE_BS;
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        Bundle arguments = getArguments();
        if (arguments != null) {
            this.id = arguments.getString("id");
            this.name = arguments.getString("name");
            this.date = arguments.getString("date");
            this.advance = arguments.getString("advance");
            this.reason = arguments.getString("reason");
            this.attendanceStatus = arguments.getString("attendance_status");
            this.otMinutes = Double.valueOf(arguments.getDouble("ot_minutes", 0.0d));
            this.otPerHour = Double.valueOf(arguments.getDouble("ot_per_hour", 0.0d));
            this.otTotalAmount = Double.valueOf(arguments.getDouble("ot_total_amount", 0.0d));
            this.paymentMethod = arguments.getString("advance_payment_method");
        }
    }

    @Override // com.laborbook.base.BaseBottomsheetFragment
    public FragmentAdvanceDetailsBottomsheetBinding getViewBinding(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        Intrinsics.checkNotNullParameter(inflater, "inflater");
        return FragmentAdvanceDetailsBottomsheetBinding.inflate(inflater, container, false);
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onStart() {
        super.onStart();
        Dialog dialog = getDialog();
        Intrinsics.checkNotNull(dialog, "null cannot be cast to non-null type com.google.android.material.bottomsheet.BottomSheetDialog");
        View viewFindViewById = ((BottomSheetDialog) dialog).findViewById(C1346R.id.design_bottom_sheet);
        Intrinsics.checkNotNull(viewFindViewById, "null cannot be cast to non-null type android.view.View");
        BottomSheetBehavior bottomSheetBehaviorFrom = BottomSheetBehavior.from(viewFindViewById);
        Intrinsics.checkNotNullExpressionValue(bottomSheetBehaviorFrom, "from(...)");
        viewFindViewById.getLayoutParams().height = -1;
        bottomSheetBehaviorFrom.setState(3);
    }

    @Override // com.laborbook.base.BaseBottomsheetFragment, androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle savedInstanceState) {
        Intrinsics.checkNotNullParameter(view, "view");
        super.onViewCreated(view, savedInstanceState);
        setupViews();
        setupClicks();
    }

    /* JADX WARN: Removed duplicated region for block: B:55:0x00b1  */
    /* JADX WARN: Removed duplicated region for block: B:88:0x0146  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final void setupViews() {
        /*
            Method dump skipped, instruction units count: 592
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.laborbook.keep.screen.advance.AdvanceDetailsBottomsheetFragment.setupViews():void");
    }

    private final void setupClicks() {
        TextViewBold12 textViewBold12;
        PrimaryButton primaryButton;
        ImageView imageView;
        FragmentAdvanceDetailsBottomsheetBinding binding = getBinding();
        if (binding != null && (imageView = binding.ivClose) != null) {
            imageView.setOnClickListener(new View.OnClickListener() { // from class: com.laborbook.keep.screen.advance.AdvanceDetailsBottomsheetFragment$$ExternalSyntheticLambda0
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    AdvanceDetailsBottomsheetFragment.setupClicks$lambda$3(this.f$0, view);
                }
            });
        }
        FragmentAdvanceDetailsBottomsheetBinding binding2 = getBinding();
        if (binding2 != null && (primaryButton = binding2.btnOk) != null) {
            primaryButton.setOnClickListener(new View.OnClickListener() { // from class: com.laborbook.keep.screen.advance.AdvanceDetailsBottomsheetFragment$$ExternalSyntheticLambda1
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    AdvanceDetailsBottomsheetFragment.setupClicks$lambda$4(this.f$0, view);
                }
            });
        }
        FragmentAdvanceDetailsBottomsheetBinding binding3 = getBinding();
        if (binding3 == null || (textViewBold12 = binding3.tvEdit) == null) {
            return;
        }
        textViewBold12.setOnClickListener(new View.OnClickListener() { // from class: com.laborbook.keep.screen.advance.AdvanceDetailsBottomsheetFragment$$ExternalSyntheticLambda2
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                AdvanceDetailsBottomsheetFragment.setupClicks$lambda$6(this.f$0, view);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void setupClicks$lambda$3(AdvanceDetailsBottomsheetFragment this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.dismiss();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void setupClicks$lambda$4(AdvanceDetailsBottomsheetFragment this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.dismiss();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void setupClicks$lambda$6(final AdvanceDetailsBottomsheetFragment this$0, View view) {
        View decorView;
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        PayAdvanceBottomsheetFragment.Companion companion = PayAdvanceBottomsheetFragment.INSTANCE;
        String str = this$0.id;
        if (str == null) {
            str = "";
        }
        String str2 = this$0.name;
        if (str2 == null) {
            str2 = "";
        }
        String str3 = this$0.date;
        if (str3 == null) {
            str3 = "";
        }
        String str4 = this$0.advance;
        if (str4 == null) {
            str4 = "";
        }
        String str5 = this$0.reason;
        if (str5 == null) {
            str5 = "";
        }
        final PayAdvanceBottomsheetFragment payAdvanceBottomsheetFragmentNewInstance = companion.newInstance(str, str2, str3, str4, str5);
        this$0.dismiss();
        try {
            Window window = this$0.requireActivity().getWindow();
            if (window == null || (decorView = window.getDecorView()) == null) {
                return;
            }
            decorView.postDelayed(new Runnable() { // from class: com.laborbook.keep.screen.advance.AdvanceDetailsBottomsheetFragment$$ExternalSyntheticLambda3
                @Override // java.lang.Runnable
                public final void run() {
                    AdvanceDetailsBottomsheetFragment.setupClicks$lambda$6$lambda$5(this.f$0, payAdvanceBottomsheetFragmentNewInstance);
                }
            }, 150L);
        } catch (Exception unused) {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void setupClicks$lambda$6$lambda$5(AdvanceDetailsBottomsheetFragment this$0, PayAdvanceBottomsheetFragment fragment) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(fragment, "$fragment");
        this$0.getFragmentNavigator().start((BottomSheetDialogFragment) fragment);
    }

    /* JADX INFO: compiled from: AdvanceDetailsBottomsheetFragment.kt */
    @Metadata(m2721d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0010\u0006\n\u0002\b\u0004\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\\\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\u00072\u0006\u0010\t\u001a\u00020\u00072\u0006\u0010\n\u001a\u00020\u00072\u0006\u0010\u000b\u001a\u00020\u00072\u0006\u0010\f\u001a\u00020\u00072\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\u0010\u001a\u00020\u000e2\n\b\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u0007H\u0007¨\u0006\u0012"}, m2722d2 = {"Lcom/laborbook/keep/screen/advance/AdvanceDetailsBottomsheetFragment$Companion;", "", "<init>", "()V", "newInstance", "Lcom/laborbook/keep/screen/advance/AdvanceDetailsBottomsheetFragment;", "id", "", "name", "date", "advance", "reason", "attendanceStatus", "otMinutes", "", "otPerHour", "otTotalAmount", "paymentMethod", "keep_release"}, m2723k = 1, m2724mv = {2, 0, 0}, m2726xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        @JvmStatic
        public final AdvanceDetailsBottomsheetFragment newInstance(String id, String name, String date, String advance, String reason, String attendanceStatus, double otMinutes, double otPerHour, double otTotalAmount, String paymentMethod) {
            Intrinsics.checkNotNullParameter(id, "id");
            Intrinsics.checkNotNullParameter(name, "name");
            Intrinsics.checkNotNullParameter(date, "date");
            Intrinsics.checkNotNullParameter(advance, "advance");
            Intrinsics.checkNotNullParameter(reason, "reason");
            Intrinsics.checkNotNullParameter(attendanceStatus, "attendanceStatus");
            AdvanceDetailsBottomsheetFragment advanceDetailsBottomsheetFragment = new AdvanceDetailsBottomsheetFragment();
            Bundle bundle = new Bundle();
            bundle.putString("id", id);
            bundle.putString("name", name);
            bundle.putString("date", date);
            bundle.putString("advance", advance);
            bundle.putString("reason", reason);
            bundle.putString("attendance_status", attendanceStatus);
            bundle.putDouble("ot_minutes", otMinutes);
            bundle.putDouble("ot_per_hour", otPerHour);
            bundle.putDouble("ot_total_amount", otTotalAmount);
            bundle.putString("advance_payment_method", paymentMethod);
            advanceDetailsBottomsheetFragment.setArguments(bundle);
            return advanceDetailsBottomsheetFragment;
        }
    }
}
