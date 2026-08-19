package com.rebuilt.app.keep.screen.report;

import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Toast;
import androidx.core.content.FileProvider;
import com.amplitude.core.events.Identify;
import com.google.android.material.button.MaterialButton;
import com.itextpdf.barcodes.Barcode128;
import com.rebuilt.app.base.BaseFragment;
import com.rebuilt.app.base.analytics.ConstantEventAttributes;
import com.rebuilt.app.base.analytics.ConstantEventNames;
import com.rebuilt.app.keep.C3656R;
import com.rebuilt.app.keep.databinding.FragmentReportBinding;
import java.io.File;
import java.text.NumberFormat;
import java.util.Locale;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.CoroutineScopeKt;
import kotlinx.coroutines.Dispatchers;
import org.objectweb.asm.Opcodes;

/* JADX INFO: compiled from: ReportFragment.kt */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(m2721d1 = {"\u0000P\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0006\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u0000 ,2\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0001,B\u0007¢\u0006\u0004\b\u0003\u0010\u0004J&\u0010\u0016\u001a\u0004\u0018\u00010\u00022\u0006\u0010\u0017\u001a\u00020\u00182\b\u0010\u0019\u001a\u0004\u0018\u00010\u001a2\b\u0010\u001b\u001a\u0004\u0018\u00010\u001cH\u0016J\u001a\u0010\u001d\u001a\u00020\u001e2\u0006\u0010\u001f\u001a\u00020 2\b\u0010\u001b\u001a\u0004\u0018\u00010\u001cH\u0016J\b\u0010!\u001a\u00020\u001eH\u0002J\b\u0010\"\u001a\u00020\u001eH\u0002J\u0010\u0010#\u001a\u00020\u00062\u0006\u0010$\u001a\u00020\u0010H\u0002J\u0010\u0010%\u001a\u00020\u00062\u0006\u0010&\u001a\u00020\u0010H\u0002J\b\u0010'\u001a\u00020\u001eH\u0002J\b\u0010(\u001a\u00020\u001eH\u0002J\u0010\u0010)\u001a\u00020\u001e2\u0006\u0010*\u001a\u00020+H\u0002R\u0014\u0010\u0005\u001a\u00020\u00068VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0007\u0010\bR\u000e\u0010\t\u001a\u00020\u0006X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0006X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u0006X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\f\u001a\u00020\rX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\rX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0010X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\rX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\u0006X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0013\u001a\u00020\u0006X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0014\u001a\u00020\u0010X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0015\u001a\u00020\u0010X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006-"}, m2722d2 = {"Lcom/laborbook/keep/screen/report/ReportFragment;", "Lcom/laborbook/base/BaseFragment;", "Lcom/laborbook/keep/databinding/FragmentReportBinding;", "<init>", "()V", "screenName", "", "getScreenName", "()Ljava/lang/String;", "staffName", "staffPhone", "monthYear", "presentCount", "", "absentCount", "overtimeCount", "", "halfdayCount", "pPlusHalf", "pPlusP", "advanceAmount", "totalEarnings", "getViewBinding", "inflater", "Landroid/view/LayoutInflater;", "container", "Landroid/view/ViewGroup;", "savedInstanceState", "Landroid/os/Bundle;", "onViewCreated", "", "view", "Landroid/view/View;", "setupView", "populateData", "formatCurrency", ConstantEventAttributes.AMOUNT, "formatOvertime", "overtime", "registerOnClickListeners", "generateAndSharePdf", "sharePdfFile", "pdfFile", "Ljava/io/File;", "Companion", "keep_release"}, m2723k = 1, m2724mv = {2, 0, 0}, m2726xi = 48)
public final class ReportFragment extends BaseFragment<FragmentReportBinding> {
    private static final String ARG_ABSENT_COUNT = "absent_count";
    private static final String ARG_ADVANCE_AMOUNT = "advance_amount";
    private static final String ARG_HALFDAY_COUNT = "halfday_count";
    private static final String ARG_MONTH_YEAR = "month_year";
    private static final String ARG_OVERTIME_COUNT = "overtime_count";
    private static final String ARG_PRESENT_COUNT = "present_count";
    private static final String ARG_P_PLUS_HALF = "p_plus_half";
    private static final String ARG_P_PLUS_P = "p_plus_p";
    private static final String ARG_STAFF_NAME = "staff_name";
    private static final String ARG_STAFF_PHONE = "staff_phone";
    private static final String ARG_TOTAL_EARNINGS = "total_earnings";

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private int absentCount;
    private double advanceAmount;
    private int halfdayCount;
    private double overtimeCount;
    private int presentCount;
    private double totalEarnings;
    private String staffName = "";
    private String staffPhone = "";
    private String monthYear = "";
    private String pPlusHalf = Identify.UNSET_VALUE;
    private String pPlusP = Identify.UNSET_VALUE;

    private final void setupView() {
    }

    @Override // com.rebuilt.app.base.BaseFragment
    public String getScreenName() {
        return "Report";
    }

    /* JADX INFO: compiled from: ReportFragment.kt */
    @Metadata(m2721d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0006\n\u0002\b\u0006\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003Jf\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u00052\u0006\u0010\u0013\u001a\u00020\u00052\u0006\u0010\u0014\u001a\u00020\u00052\u0006\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u00162\u0006\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020\u00162\b\b\u0002\u0010\u001b\u001a\u00020\u00052\b\b\u0002\u0010\u001c\u001a\u00020\u00052\b\b\u0002\u0010\u001d\u001a\u00020\u00192\b\b\u0002\u0010\u001e\u001a\u00020\u0019R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0005X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0005X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\u0005X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0005X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0005X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u0005X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\f\u001a\u00020\u0005X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u0005X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u0005X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0005X\u0082T¢\u0006\u0002\n\u0000¨\u0006\u001f"}, m2722d2 = {"Lcom/laborbook/keep/screen/report/ReportFragment$Companion;", "", "<init>", "()V", "ARG_STAFF_NAME", "", "ARG_STAFF_PHONE", "ARG_MONTH_YEAR", "ARG_PRESENT_COUNT", "ARG_ABSENT_COUNT", "ARG_OVERTIME_COUNT", "ARG_HALFDAY_COUNT", "ARG_P_PLUS_HALF", "ARG_P_PLUS_P", "ARG_ADVANCE_AMOUNT", "ARG_TOTAL_EARNINGS", "newInstance", "Lcom/laborbook/keep/screen/report/ReportFragment;", "staffName", "staffPhone", "monthYear", "presentCount", "", "absentCount", "overtimeCount", "", "halfdayCount", "pPlusHalf", "pPlusP", "advanceAmount", "totalEarnings", "keep_release"}, m2723k = 1, m2724mv = {2, 0, 0}, m2726xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final ReportFragment newInstance(String staffName, String staffPhone, String monthYear, int presentCount, int absentCount, double overtimeCount, int halfdayCount, String pPlusHalf, String pPlusP, double advanceAmount, double totalEarnings) {
            Intrinsics.checkNotNullParameter(staffName, "staffName");
            Intrinsics.checkNotNullParameter(staffPhone, "staffPhone");
            Intrinsics.checkNotNullParameter(monthYear, "monthYear");
            Intrinsics.checkNotNullParameter(pPlusHalf, "pPlusHalf");
            Intrinsics.checkNotNullParameter(pPlusP, "pPlusP");
            ReportFragment reportFragment = new ReportFragment();
            Bundle bundle = new Bundle();
            bundle.putString(ReportFragment.ARG_STAFF_NAME, staffName);
            bundle.putString(ReportFragment.ARG_STAFF_PHONE, staffPhone);
            bundle.putString(ReportFragment.ARG_MONTH_YEAR, monthYear);
            bundle.putInt(ReportFragment.ARG_PRESENT_COUNT, presentCount);
            bundle.putInt(ReportFragment.ARG_ABSENT_COUNT, absentCount);
            bundle.putDouble(ReportFragment.ARG_OVERTIME_COUNT, overtimeCount);
            bundle.putInt(ReportFragment.ARG_HALFDAY_COUNT, halfdayCount);
            bundle.putString(ReportFragment.ARG_P_PLUS_HALF, pPlusHalf);
            bundle.putString(ReportFragment.ARG_P_PLUS_P, pPlusP);
            bundle.putDouble(ReportFragment.ARG_ADVANCE_AMOUNT, advanceAmount);
            bundle.putDouble(ReportFragment.ARG_TOTAL_EARNINGS, totalEarnings);
            reportFragment.setArguments(bundle);
            return reportFragment;
        }
    }

    @Override // com.rebuilt.app.base.BaseFragment
    public FragmentReportBinding getViewBinding(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        Intrinsics.checkNotNullParameter(inflater, "inflater");
        return FragmentReportBinding.inflate(inflater, container, false);
    }

    @Override // com.rebuilt.app.base.BaseFragment, androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle savedInstanceState) {
        Intrinsics.checkNotNullParameter(view, "view");
        super.onViewCreated(view, savedInstanceState);
        setupView();
        registerOnClickListeners();
        populateData();
    }

    private final void populateData() {
        Bundle arguments = getArguments();
        if (arguments != null) {
            this.staffName = arguments.getString(ARG_STAFF_NAME, "N/A");
            this.staffPhone = arguments.getString(ARG_STAFF_PHONE, "N/A");
            this.monthYear = arguments.getString(ARG_MONTH_YEAR, "Monthly Report");
            this.presentCount = arguments.getInt(ARG_PRESENT_COUNT, 0);
            this.absentCount = arguments.getInt(ARG_ABSENT_COUNT, 0);
            this.overtimeCount = arguments.getDouble(ARG_OVERTIME_COUNT, 0.0d);
            this.halfdayCount = arguments.getInt(ARG_HALFDAY_COUNT, 0);
            this.pPlusHalf = arguments.getString(ARG_P_PLUS_HALF, Identify.UNSET_VALUE);
            this.pPlusP = arguments.getString(ARG_P_PLUS_P, Identify.UNSET_VALUE);
            this.advanceAmount = arguments.getDouble(ARG_ADVANCE_AMOUNT, 0.0d);
            this.totalEarnings = arguments.getDouble(ARG_TOTAL_EARNINGS, 0.0d);
            FragmentReportBinding binding = getBinding();
            if (binding != null) {
                binding.tvReportNameValue.setText(this.staffName);
                binding.tvReportPhone.setText(this.staffPhone);
                binding.tvReportMonth.setText(this.monthYear);
                binding.tvPresentCount.setText(String.valueOf(this.presentCount));
                binding.tvAbsentCount.setText(String.valueOf(this.absentCount));
                binding.tvOvertimeCount.setText(formatOvertime(this.overtimeCount));
                binding.tvHalfdayCount.setText(String.valueOf(this.halfdayCount));
                binding.tvPPlusHalf.setText(this.pPlusHalf);
                binding.tvPPlusP.setText(this.pPlusP);
                binding.tvAdvanceAmount.setText(formatCurrency(this.advanceAmount));
                binding.tvTotalEarnings.setText(formatCurrency(this.totalEarnings));
                binding.tvBalance.setText(formatCurrency(this.totalEarnings - this.advanceAmount));
            }
        }
    }

    private final String formatCurrency(double amount) {
        String str = NumberFormat.getCurrencyInstance(new Locale("en", "IN")).format(amount);
        Intrinsics.checkNotNullExpressionValue(str, "format(...)");
        return str;
    }

    private final String formatOvertime(double overtime) {
        if (overtime <= 0.0d) {
            return "0h";
        }
        if (overtime >= 1.0d) {
            int i = (int) overtime;
            int i2 = (int) ((overtime - ((double) i)) * ((double) 60));
            if (i2 > 0) {
                return new StringBuilder().append(i).append(Barcode128.START_B).append(i2).append('m').toString();
            }
            return new StringBuilder().append(i).append(Barcode128.START_B).toString();
        }
        int i3 = (int) (overtime * ((double) 60));
        int i4 = i3 / 60;
        int i5 = i3 % 60;
        if (i4 <= 0) {
            return new StringBuilder().append(i5).append('m').toString();
        }
        if (i5 > 0) {
            return new StringBuilder().append(i4).append(Barcode128.START_B).append(i5).append('m').toString();
        }
        return new StringBuilder().append(i4).append(Barcode128.START_B).toString();
    }

    private final void registerOnClickListeners() {
        FragmentReportBinding binding = getBinding();
        if (binding != null) {
            binding.ivBack.setOnClickListener(new View.OnClickListener() { // from class: com.rebuilt.app.keep.screen.report.ReportFragment$$ExternalSyntheticLambda0
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    ReportFragment.registerOnClickListeners$lambda$4$lambda$2(this.f$0, view);
                }
            });
            binding.btnSharePdf.setOnClickListener(new View.OnClickListener() { // from class: com.rebuilt.app.keep.screen.report.ReportFragment$$ExternalSyntheticLambda1
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    ReportFragment.registerOnClickListeners$lambda$4$lambda$3(this.f$0, view);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void registerOnClickListeners$lambda$4$lambda$2(ReportFragment this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.getFragmentNavigator().goBack();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void registerOnClickListeners$lambda$4$lambda$3(ReportFragment this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        BaseFragment.recordClickEvent$default(this$0, ConstantEventNames.SHARE_PDF_REPORT, null, 2, null);
        this$0.generateAndSharePdf();
    }

    /* JADX INFO: renamed from: com.rebuilt.app.keep.screen.report.ReportFragment$generateAndSharePdf$1 */
    /* JADX INFO: compiled from: ReportFragment.kt */
    @Metadata(m2721d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, m2722d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, m2723k = 3, m2724mv = {2, 0, 0}, m2726xi = 48)
    @DebugMetadata(m2734c = "com.rebuilt.app.keep.screen.report.ReportFragment$generateAndSharePdf$1", m2735f = "ReportFragment.kt", m2736i = {}, m2737l = {Opcodes.IFNONNULL}, m2738m = "invokeSuspend", m2739n = {}, m2740s = {})
    static final class C38561 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        int label;

        C38561(Continuation<? super C38561> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return ReportFragment.this.new C38561(continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((C38561) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            MaterialButton materialButton;
            MaterialButton materialButton2;
            MaterialButton materialButton3;
            MaterialButton materialButton4;
            MaterialButton materialButton5;
            MaterialButton materialButton6;
            FragmentReportBinding binding;
            MaterialButton materialButton7;
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            try {
                try {
                    if (i == 0) {
                        ResultKt.throwOnFailure(obj);
                        FragmentReportBinding binding2 = ReportFragment.this.getBinding();
                        if (binding2 != null && (materialButton6 = binding2.btnSharePdf) != null) {
                            materialButton6.setEnabled(false);
                        }
                        FragmentReportBinding binding3 = ReportFragment.this.getBinding();
                        if (binding3 != null && (materialButton5 = binding3.btnSharePdf) != null) {
                            materialButton5.setText(ReportFragment.this.getString(C3656R.string.generating_pdf));
                        }
                        this.label = 1;
                        obj = BuildersKt.withContext(Dispatchers.getIO(), new ReportFragment$generateAndSharePdf$1$pdfFile$1(ReportFragment.this, null), this);
                        if (obj == coroutine_suspended) {
                            return coroutine_suspended;
                        }
                    } else {
                        if (i != 1) {
                            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                        }
                        ResultKt.throwOnFailure(obj);
                    }
                    File file = (File) obj;
                    if (file != null && file.exists() && file.canRead()) {
                        ReportFragment.this.sharePdfFile(file);
                    } else {
                        Toast.makeText(ReportFragment.this.requireContext(), ReportFragment.this.getString(C3656R.string.failed_to_generate_pdf, "PDF generation failed"), 0).show();
                    }
                    FragmentReportBinding binding4 = ReportFragment.this.getBinding();
                    if (binding4 != null && (materialButton7 = binding4.btnSharePdf) != null) {
                        materialButton7.setEnabled(true);
                    }
                    binding = ReportFragment.this.getBinding();
                } catch (Exception e) {
                    Log.e("ReportFragment", "Error generating PDF: " + e.getMessage(), e);
                    Toast.makeText(ReportFragment.this.requireContext(), ReportFragment.this.getString(C3656R.string.failed_to_generate_pdf, e.getMessage()), 0).show();
                    FragmentReportBinding binding5 = ReportFragment.this.getBinding();
                    if (binding5 != null && (materialButton2 = binding5.btnSharePdf) != null) {
                        materialButton2.setEnabled(true);
                    }
                    FragmentReportBinding binding6 = ReportFragment.this.getBinding();
                    if (binding6 != null && (materialButton = binding6.btnSharePdf) != null) {
                    }
                }
                if (binding != null && (materialButton = binding.btnSharePdf) != null) {
                    materialButton.setText(ReportFragment.this.getString(C3656R.string.share_pdf));
                }
                return Unit.INSTANCE;
            } catch (Throwable th) {
                FragmentReportBinding binding7 = ReportFragment.this.getBinding();
                if (binding7 != null && (materialButton4 = binding7.btnSharePdf) != null) {
                    materialButton4.setEnabled(true);
                }
                FragmentReportBinding binding8 = ReportFragment.this.getBinding();
                if (binding8 != null && (materialButton3 = binding8.btnSharePdf) != null) {
                    materialButton3.setText(ReportFragment.this.getString(C3656R.string.share_pdf));
                }
                throw th;
            }
        }
    }

    private final void generateAndSharePdf() {
        BuildersKt__Builders_commonKt.launch$default(CoroutineScopeKt.CoroutineScope(Dispatchers.getMain()), null, null, new C38561(null), 3, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void sharePdfFile(File pdfFile) {
        try {
            if (!pdfFile.exists()) {
                Toast.makeText(requireContext(), getString(C3656R.string.failed_to_share_pdf, "PDF file not found"), 0).show();
                return;
            }
            if (!pdfFile.canRead()) {
                Toast.makeText(requireContext(), getString(C3656R.string.failed_to_share_pdf, "Cannot read PDF file"), 0).show();
                return;
            }
            Uri uriForFile = FileProvider.getUriForFile(requireContext(), "com.rebuilt.app.provider", pdfFile);
            Intent intent = new Intent("android.intent.action.SEND");
            intent.setType("application/pdf");
            intent.putExtra("android.intent.extra.STREAM", uriForFile);
            intent.putExtra("android.intent.extra.SUBJECT", getString(C3656R.string.staff_report_subject, this.staffName, this.monthYear));
            intent.putExtra("android.intent.extra.TEXT", getString(C3656R.string.staff_report_message, this.staffName, this.monthYear));
            intent.addFlags(1);
            startActivity(Intent.createChooser(intent, getString(C3656R.string.share_pdf_report_title)));
        } catch (Exception e) {
            Log.e("ReportFragment", "Error sharing PDF: " + e.getMessage(), e);
            Toast.makeText(requireContext(), getString(C3656R.string.failed_to_share_pdf, e.getMessage()), 0).show();
        }
    }
}
