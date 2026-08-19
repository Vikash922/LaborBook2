package com.laborbook.income.screen.reports.fragment;

import android.app.DatePickerDialog;
import android.content.ActivityNotFoundException;
import android.content.ContentValues;
import android.content.Intent;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.pdf.PdfDocument;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.provider.MediaStore;
import android.text.TextUtils;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.DatePicker;
import android.widget.LinearLayout;
import android.widget.TextView;
import android.widget.Toast;
import androidx.core.content.ContextCompat;
import androidx.core.content.FileProvider;
import androidx.core.graphics.Insets;
import androidx.core.view.OnApplyWindowInsetsListener;
import androidx.core.view.ViewCompat;
import androidx.core.view.WindowInsetsCompat;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.boilerplate.uikit.C1111R;
import com.boilerplate.uikit.views.textviews.text18.TextViewBold18;
import com.itextpdf.kernel.pdf.canvas.wmf.MetaDo;
import com.itextpdf.p017io.codec.TIFFConstants;
import com.laborbook.base.BaseExtensionKt;
import com.laborbook.base.BaseFragment;
import com.laborbook.base.C3577R;
import com.laborbook.base.analytics.ConstantEventNames;
import com.laborbook.income.C3621R;
import com.laborbook.income.databinding.FragmentTransactionReportsBinding;
import com.laborbook.income.model.Transaction;
import com.laborbook.income.screen.reports.adapter.TransactionReportsAdapter;
import java.io.File;
import java.io.FileOutputStream;
import java.io.OutputStream;
import java.text.NumberFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.Locale;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.p024io.CloseableKt;
import kotlin.text.StringsKt;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.CoroutineScopeKt;
import kotlinx.coroutines.Dispatchers;

/* JADX INFO: compiled from: TransactionReportsFragment.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(m2721d1 = {"\u0000\u008a\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u000e\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0011\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u0000 H2\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0001HB\u0007¢\u0006\u0004\b\u0003\u0010\u0004J\u0012\u0010\u0018\u001a\u00020\u00192\b\u0010\u001a\u001a\u0004\u0018\u00010\u001bH\u0016J&\u0010\u001c\u001a\u0004\u0018\u00010\u00022\u0006\u0010\u001d\u001a\u00020\u001e2\b\u0010\u001f\u001a\u0004\u0018\u00010 2\b\u0010\u001a\u001a\u0004\u0018\u00010\u001bH\u0016J\u001a\u0010!\u001a\u00020\u00192\u0006\u0010\"\u001a\u00020#2\b\u0010\u001a\u001a\u0004\u0018\u00010\u001bH\u0016J\b\u0010$\u001a\u00020\u0019H\u0002J\b\u0010%\u001a\u00020\u0019H\u0002J\b\u0010&\u001a\u00020\u0019H\u0002J\b\u0010'\u001a\u00020\u0019H\u0002J\u0010\u0010(\u001a\u00020\u00062\u0006\u0010)\u001a\u00020\u0016H\u0002J\b\u0010*\u001a\u00020\u0019H\u0002J\b\u0010+\u001a\u00020\u0019H\u0002J\b\u0010,\u001a\u00020\u0019H\u0002J\b\u0010-\u001a\u00020\u0019H\u0002J\b\u0010.\u001a\u00020\u0019H\u0002J\b\u0010/\u001a\u00020\u0019H\u0002J\u0010\u00100\u001a\u00020\u00192\u0006\u00101\u001a\u000202H\u0002J\b\u00103\u001a\u00020\u0019H\u0002J\b\u00104\u001a\u00020\u0006H\u0002J\u0010\u00105\u001a\u0004\u0018\u00010#H\u0082@¢\u0006\u0002\u00106J\u0010\u00107\u001a\u00020#2\u0006\u00108\u001a\u00020\u000bH\u0002J\b\u00109\u001a\u00020\u0019H\u0002J\u0010\u0010:\u001a\u0004\u0018\u00010;H\u0082@¢\u0006\u0002\u00106J\u000e\u0010<\u001a\u0004\u0018\u00010;*\u00020#H\u0002J\u000e\u0010=\u001a\u0004\u0018\u00010;*\u00020>H\u0002J)\u0010?\u001a\u00020;2\u0006\u0010@\u001a\u00020\u00132\u0012\u0010A\u001a\n\u0012\u0006\b\u0001\u0012\u00020;0B\"\u00020;H\u0002¢\u0006\u0002\u0010CJ\u0012\u0010D\u001a\u0004\u0018\u0001022\u0006\u0010E\u001a\u00020;H\u0002J\u0012\u0010F\u001a\u0004\u0018\u00010G2\u0006\u0010E\u001a\u00020;H\u0002R\u0014\u0010\u0005\u001a\u00020\u00068VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0007\u0010\bR \u0010\t\u001a\u0012\u0012\u0004\u0012\u00020\u000b0\fj\b\u0012\u0004\u0012\u00020\u000b`\nX\u0082\u000e¢\u0006\u0004\n\u0002\u0010\rR \u0010\u000e\u001a\u0012\u0012\u0004\u0012\u00020\u000b0\fj\b\u0012\u0004\u0012\u00020\u000b`\nX\u0082\u000e¢\u0006\u0004\n\u0002\u0010\rR\u000e\u0010\u000f\u001a\u00020\u0006X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u0010\u001a\u0004\u0018\u00010\u0011X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\u0013X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0014\u001a\u00020\u0013X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u0015\u001a\u0004\u0018\u00010\u0016X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u0017\u001a\u0004\u0018\u00010\u0016X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006I"}, m2722d2 = {"Lcom/laborbook/income/screen/reports/fragment/TransactionReportsFragment;", "Lcom/laborbook/base/BaseFragment;", "Lcom/laborbook/income/databinding/FragmentTransactionReportsBinding;", "<init>", "()V", "screenName", "", "getScreenName", "()Ljava/lang/String;", TransactionReportsFragment.ARG_TRANSACTIONS, "Lkotlin/collections/ArrayList;", "Lcom/laborbook/income/model/Transaction;", "Ljava/util/ArrayList;", "Ljava/util/ArrayList;", "filteredTransactions", "transactionType", "adapter", "Lcom/laborbook/income/screen/reports/adapter/TransactionReportsAdapter;", "selectedMonth", "", "selectedYear", "fromDate", "Ljava/util/Calendar;", "toDate", "onCreate", "", "savedInstanceState", "Landroid/os/Bundle;", "getViewBinding", "inflater", "Landroid/view/LayoutInflater;", "container", "Landroid/view/ViewGroup;", "onViewCreated", "view", "Landroid/view/View;", "setupViews", "setupEdgeToEdge", "initializeDates", "updateDateDisplay", "formatDateForPicker", ConstantEventNames.CALENDAR, "setupRecyclerView", "setupClickListeners", "openFromDatePicker", "openToDatePicker", "filterTransactions", "generateAndSharePdf", "sharePdfFile", "pdfFile", "Ljava/io/File;", "shareOnWhatsApp", "buildReportText", "createFormattedReportView", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "createTransactionItemView", "transaction", "openPlayStore", "captureFormattedReportScreenshot", "Landroid/graphics/Bitmap;", "getBitmapWithoutChanges", "getBitmapFromRecyclerView", "Landroidx/recyclerview/widget/RecyclerView;", "combineBitmapsWithBackground", "backgroundColorRes", "bitmaps", "", "(I[Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;", "convertBitmapToPdf", "bitmap", "saveBitmapToMediaStore", "Landroid/net/Uri;", "Companion", "income_release"}, m2723k = 1, m2724mv = {2, 0, 0}, m2726xi = 48)
public final class TransactionReportsFragment extends BaseFragment<FragmentTransactionReportsBinding> {
    private static final String ARG_MONTH = "month";
    private static final String ARG_TRANSACTIONS = "transactions";
    private static final String ARG_TRANSACTION_TYPE = "transaction_type";
    private static final String ARG_YEAR = "year";

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private TransactionReportsAdapter adapter;
    private Calendar fromDate;
    private Calendar toDate;
    private ArrayList<Transaction> transactions = new ArrayList<>();
    private ArrayList<Transaction> filteredTransactions = new ArrayList<>();
    private String transactionType = "CREDIT";
    private int selectedMonth = 1;
    private int selectedYear = 2024;

    /* JADX INFO: renamed from: com.laborbook.income.screen.reports.fragment.TransactionReportsFragment$captureFormattedReportScreenshot$1 */
    /* JADX INFO: compiled from: TransactionReportsFragment.kt */
    @Metadata(m2723k = 3, m2724mv = {2, 0, 0}, m2726xi = 48)
    @DebugMetadata(m2734c = "com.laborbook.income.screen.reports.fragment.TransactionReportsFragment", m2735f = "TransactionReportsFragment.kt", m2736i = {}, m2737l = {TIFFConstants.TIFFTAG_JPEGRESTARTINTERVAL, TIFFConstants.TIFFTAG_JPEGLOSSLESSPREDICTORS}, m2738m = "captureFormattedReportScreenshot", m2739n = {}, m2740s = {})
    static final class C36471 extends ContinuationImpl {
        int label;
        /* synthetic */ Object result;

        C36471(Continuation<? super C36471> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return TransactionReportsFragment.this.captureFormattedReportScreenshot(this);
        }
    }

    /* JADX INFO: renamed from: com.laborbook.income.screen.reports.fragment.TransactionReportsFragment$createFormattedReportView$1 */
    /* JADX INFO: compiled from: TransactionReportsFragment.kt */
    @Metadata(m2723k = 3, m2724mv = {2, 0, 0}, m2726xi = 48)
    @DebugMetadata(m2734c = "com.laborbook.income.screen.reports.fragment.TransactionReportsFragment", m2735f = "TransactionReportsFragment.kt", m2736i = {0, 0, 0, 1, 1, 1, 1}, m2737l = {381, 384}, m2738m = "createFormattedReportView", m2739n = {"this", "reportView", "reportBinding", "this", "reportView", "reportBinding", "userName"}, m2740s = {"L$0", "L$1", "L$2", "L$0", "L$1", "L$2", "L$3"})
    static final class C36491 extends ContinuationImpl {
        Object L$0;
        Object L$1;
        Object L$2;
        Object L$3;
        int label;
        /* synthetic */ Object result;

        C36491(Continuation<? super C36491> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return TransactionReportsFragment.this.createFormattedReportView(this);
        }
    }

    @Override // com.laborbook.base.BaseFragment
    public String getScreenName() {
        return ConstantEventNames.INCOME_TRANSACTION_DETAILS;
    }

    /* JADX INFO: compiled from: TransactionReportsFragment.kt */
    @Metadata(m2721d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J;\u0010\t\u001a\u00020\n2\u0016\u0010\u000b\u001a\u0012\u0012\u0004\u0012\u00020\r0\u000ej\b\u0012\u0004\u0012\u00020\r`\f2\u0006\u0010\u000f\u001a\u00020\u00052\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u0011¢\u0006\u0002\u0010\u0013R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0005X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0005X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\u0005X\u0082T¢\u0006\u0002\n\u0000¨\u0006\u0014"}, m2722d2 = {"Lcom/laborbook/income/screen/reports/fragment/TransactionReportsFragment$Companion;", "", "<init>", "()V", "ARG_TRANSACTIONS", "", "ARG_TRANSACTION_TYPE", "ARG_MONTH", "ARG_YEAR", "newInstance", "Lcom/laborbook/income/screen/reports/fragment/TransactionReportsFragment;", TransactionReportsFragment.ARG_TRANSACTIONS, "Lkotlin/collections/ArrayList;", "Lcom/laborbook/income/model/Transaction;", "Ljava/util/ArrayList;", "transactionType", TransactionReportsFragment.ARG_MONTH, "", TransactionReportsFragment.ARG_YEAR, "(Ljava/util/ArrayList;Ljava/lang/String;II)Lcom/laborbook/income/screen/reports/fragment/TransactionReportsFragment;", "income_release"}, m2723k = 1, m2724mv = {2, 0, 0}, m2726xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final TransactionReportsFragment newInstance(ArrayList<Transaction> transactions, String transactionType, int month, int year) {
            Intrinsics.checkNotNullParameter(transactions, "transactions");
            Intrinsics.checkNotNullParameter(transactionType, "transactionType");
            TransactionReportsFragment transactionReportsFragment = new TransactionReportsFragment();
            Bundle bundle = new Bundle();
            bundle.putParcelableArrayList(TransactionReportsFragment.ARG_TRANSACTIONS, transactions);
            bundle.putString(TransactionReportsFragment.ARG_TRANSACTION_TYPE, transactionType);
            bundle.putInt(TransactionReportsFragment.ARG_MONTH, month);
            bundle.putInt(TransactionReportsFragment.ARG_YEAR, year);
            transactionReportsFragment.setArguments(bundle);
            return transactionReportsFragment;
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        Bundle arguments = getArguments();
        if (arguments != null) {
            ArrayList<Transaction> parcelableArrayList = arguments.getParcelableArrayList(ARG_TRANSACTIONS);
            if (!(parcelableArrayList instanceof ArrayList)) {
                parcelableArrayList = null;
            }
            if (parcelableArrayList == null) {
                parcelableArrayList = new ArrayList<>();
            }
            this.transactions = parcelableArrayList;
            this.transactionType = arguments.getString(ARG_TRANSACTION_TYPE, "CREDIT");
            this.selectedMonth = arguments.getInt(ARG_MONTH, Calendar.getInstance().get(2) + 1);
            this.selectedYear = arguments.getInt(ARG_YEAR, Calendar.getInstance().get(1));
        }
    }

    @Override // com.laborbook.base.BaseFragment
    public FragmentTransactionReportsBinding getViewBinding(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        Intrinsics.checkNotNullParameter(inflater, "inflater");
        return FragmentTransactionReportsBinding.inflate(inflater, container, false);
    }

    @Override // com.laborbook.base.BaseFragment, androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle savedInstanceState) {
        Intrinsics.checkNotNullParameter(view, "view");
        super.onViewCreated(view, savedInstanceState);
        setupViews();
        setupRecyclerView();
        setupClickListeners();
        initializeDates();
        filterTransactions();
        setupEdgeToEdge();
    }

    private final void setupViews() {
        String string;
        FragmentTransactionReportsBinding binding = getBinding();
        if (binding != null) {
            TextViewBold18 textViewBold18 = binding.tvTitle;
            if (Intrinsics.areEqual(this.transactionType, "CREDIT")) {
                string = getString(C3621R.string.cash_in_reports);
            } else {
                string = getString(C3621R.string.cash_out_reports);
            }
            textViewBold18.setText(string);
        }
    }

    private final void setupEdgeToEdge() {
        LinearLayout linearLayout;
        FragmentTransactionReportsBinding binding = getBinding();
        if (binding == null || (linearLayout = binding.llShareButtons) == null) {
            return;
        }
        ViewCompat.setOnApplyWindowInsetsListener(linearLayout, new OnApplyWindowInsetsListener() { // from class: com.laborbook.income.screen.reports.fragment.TransactionReportsFragment$$ExternalSyntheticLambda5
            @Override // androidx.core.view.OnApplyWindowInsetsListener
            public final WindowInsetsCompat onApplyWindowInsets(View view, WindowInsetsCompat windowInsetsCompat) {
                return TransactionReportsFragment.setupEdgeToEdge$lambda$3$lambda$2(view, windowInsetsCompat);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final WindowInsetsCompat setupEdgeToEdge$lambda$3$lambda$2(View v, WindowInsetsCompat insets) {
        Intrinsics.checkNotNullParameter(v, "v");
        Intrinsics.checkNotNullParameter(insets, "insets");
        Insets insets2 = insets.getInsets(WindowInsetsCompat.Type.navigationBars());
        Intrinsics.checkNotNullExpressionValue(insets2, "getInsets(...)");
        v.setPadding(v.getPaddingLeft(), v.getPaddingTop(), v.getPaddingRight(), insets2.bottom);
        return insets;
    }

    private final void initializeDates() {
        Calendar calendar = Calendar.getInstance();
        calendar.set(1, this.selectedYear);
        calendar.set(2, this.selectedMonth - 1);
        calendar.set(5, 1);
        calendar.set(11, 0);
        calendar.set(12, 0);
        calendar.set(13, 0);
        calendar.set(14, 0);
        this.fromDate = calendar;
        Calendar calendar2 = Calendar.getInstance();
        calendar2.set(1, this.selectedYear);
        calendar2.set(2, this.selectedMonth - 1);
        calendar2.set(5, calendar2.getActualMaximum(5));
        calendar2.set(11, 23);
        calendar2.set(12, 59);
        calendar2.set(13, 59);
        calendar2.set(14, 999);
        this.toDate = calendar2;
        updateDateDisplay();
    }

    private final void updateDateDisplay() {
        FragmentTransactionReportsBinding binding = getBinding();
        if (binding != null) {
            Calendar calendar = this.fromDate;
            if (calendar != null) {
                binding.tvFromDate.setText(formatDateForPicker(calendar));
            }
            Calendar calendar2 = this.toDate;
            if (calendar2 != null) {
                binding.tvToDate.setText(formatDateForPicker(calendar2));
            }
        }
    }

    private final String formatDateForPicker(Calendar calendar) {
        String str = new SimpleDateFormat("EEE, dd MMM yy", Locale.getDefault()).format(calendar.getTime());
        Intrinsics.checkNotNullExpressionValue(str, "format(...)");
        return str;
    }

    private final void setupRecyclerView() {
        RecyclerView recyclerView;
        RecyclerView recyclerView2;
        this.adapter = new TransactionReportsAdapter();
        FragmentTransactionReportsBinding binding = getBinding();
        if (binding != null && (recyclerView2 = binding.rvTransactions) != null) {
            recyclerView2.setLayoutManager(new LinearLayoutManager(requireContext()));
        }
        FragmentTransactionReportsBinding binding2 = getBinding();
        if (binding2 == null || (recyclerView = binding2.rvTransactions) == null) {
            return;
        }
        recyclerView.setAdapter(this.adapter);
    }

    private final void setupClickListeners() {
        FragmentTransactionReportsBinding binding = getBinding();
        if (binding != null) {
            binding.ivBack.setOnClickListener(new View.OnClickListener() { // from class: com.laborbook.income.screen.reports.fragment.TransactionReportsFragment$$ExternalSyntheticLambda0
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    TransactionReportsFragment.setupClickListeners$lambda$12$lambda$9(this.f$0, view);
                }
            });
            binding.btnSharePdf.setOnClickListener(new View.OnClickListener() { // from class: com.laborbook.income.screen.reports.fragment.TransactionReportsFragment$$ExternalSyntheticLambda1
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    TransactionReportsFragment.setupClickListeners$lambda$12$lambda$10(this.f$0, view);
                }
            });
            binding.btnShareWhatsapp.setOnClickListener(new View.OnClickListener() { // from class: com.laborbook.income.screen.reports.fragment.TransactionReportsFragment$$ExternalSyntheticLambda2
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    TransactionReportsFragment.setupClickListeners$lambda$12$lambda$11(this.f$0, view);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void setupClickListeners$lambda$12$lambda$9(TransactionReportsFragment this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.getFragmentNavigator().goBack();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void setupClickListeners$lambda$12$lambda$10(TransactionReportsFragment this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        BaseFragment.recordClickEvent$default(this$0, ConstantEventNames.SHARE_PDF_REPORT, null, 2, null);
        this$0.generateAndSharePdf();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void setupClickListeners$lambda$12$lambda$11(TransactionReportsFragment this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        BaseFragment.recordClickEvent$default(this$0, ConstantEventNames.SHARE_WHATSAPP_REPORT, null, 2, null);
        this$0.shareOnWhatsApp();
    }

    private final void openFromDatePicker() {
        final Calendar calendar = this.fromDate;
        if (calendar == null) {
            calendar = Calendar.getInstance();
        }
        DatePickerDialog datePickerDialog = new DatePickerDialog(requireContext(), new DatePickerDialog.OnDateSetListener() { // from class: com.laborbook.income.screen.reports.fragment.TransactionReportsFragment$$ExternalSyntheticLambda4
            @Override // android.app.DatePickerDialog.OnDateSetListener
            public final void onDateSet(DatePicker datePicker, int i, int i2, int i3) {
                TransactionReportsFragment.openFromDatePicker$lambda$13(calendar, this, datePicker, i, i2, i3);
            }
        }, calendar.get(1), calendar.get(2), calendar.get(5));
        Calendar calendar2 = this.toDate;
        if (calendar2 != null) {
            datePickerDialog.getDatePicker().setMaxDate(calendar2.getTimeInMillis());
        }
        datePickerDialog.show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void openFromDatePicker$lambda$13(Calendar calendar, TransactionReportsFragment this$0, DatePicker datePicker, int i, int i2, int i3) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        calendar.set(i, i2, i3);
        this$0.fromDate = calendar;
        this$0.updateDateDisplay();
        this$0.filterTransactions();
    }

    private final void openToDatePicker() {
        final Calendar calendar = this.toDate;
        if (calendar == null) {
            calendar = Calendar.getInstance();
        }
        DatePickerDialog datePickerDialog = new DatePickerDialog(requireContext(), new DatePickerDialog.OnDateSetListener() { // from class: com.laborbook.income.screen.reports.fragment.TransactionReportsFragment$$ExternalSyntheticLambda6
            @Override // android.app.DatePickerDialog.OnDateSetListener
            public final void onDateSet(DatePicker datePicker, int i, int i2, int i3) {
                TransactionReportsFragment.openToDatePicker$lambda$16(calendar, this, datePicker, i, i2, i3);
            }
        }, calendar.get(1), calendar.get(2), calendar.get(5));
        Calendar calendar2 = this.fromDate;
        if (calendar2 != null) {
            datePickerDialog.getDatePicker().setMinDate(calendar2.getTimeInMillis());
        }
        datePickerDialog.show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void openToDatePicker$lambda$16(Calendar calendar, TransactionReportsFragment this$0, DatePicker datePicker, int i, int i2, int i3) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        calendar.set(i, i2, i3);
        this$0.toDate = calendar;
        this$0.updateDateDisplay();
        this$0.filterTransactions();
    }

    private final void filterTransactions() {
        if (this.fromDate == null || this.toDate == null) {
            return;
        }
        ArrayList<Transaction> arrayList = this.transactions;
        ArrayList arrayList2 = new ArrayList();
        for (Object obj : arrayList) {
            try {
                Date date = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss'Z'", Locale.getDefault()).parse(((Transaction) obj).getDate());
                if (date != null) {
                    Calendar calendar = Calendar.getInstance();
                    calendar.setTime(date);
                    calendar.set(11, 0);
                    calendar.set(12, 0);
                    calendar.set(13, 0);
                    calendar.set(14, 0);
                    Calendar calendar2 = this.fromDate;
                    Intrinsics.checkNotNull(calendar2);
                    Object objClone = calendar2.clone();
                    Intrinsics.checkNotNull(objClone, "null cannot be cast to non-null type java.util.Calendar");
                    Calendar calendar3 = (Calendar) objClone;
                    calendar3.set(11, 0);
                    calendar3.set(12, 0);
                    calendar3.set(13, 0);
                    calendar3.set(14, 0);
                    Calendar calendar4 = this.toDate;
                    Intrinsics.checkNotNull(calendar4);
                    Object objClone2 = calendar4.clone();
                    Intrinsics.checkNotNull(objClone2, "null cannot be cast to non-null type java.util.Calendar");
                    Calendar calendar5 = (Calendar) objClone2;
                    calendar5.set(11, 23);
                    calendar5.set(12, 59);
                    calendar5.set(13, 59);
                    calendar5.set(14, 999);
                    if (calendar.getTimeInMillis() >= calendar3.getTimeInMillis() && calendar.getTimeInMillis() <= calendar5.getTimeInMillis()) {
                        arrayList2.add(obj);
                    }
                }
            } catch (Exception unused) {
            }
        }
        ArrayList arrayList3 = arrayList2;
        this.filteredTransactions = arrayList3;
        TransactionReportsAdapter transactionReportsAdapter = this.adapter;
        if (transactionReportsAdapter != null) {
            transactionReportsAdapter.submitList(arrayList3);
        }
    }

    /* JADX INFO: renamed from: com.laborbook.income.screen.reports.fragment.TransactionReportsFragment$generateAndSharePdf$1 */
    /* JADX INFO: compiled from: TransactionReportsFragment.kt */
    @Metadata(m2721d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, m2722d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, m2723k = 3, m2724mv = {2, 0, 0}, m2726xi = 48)
    @DebugMetadata(m2734c = "com.laborbook.income.screen.reports.fragment.TransactionReportsFragment$generateAndSharePdf$1", m2735f = "TransactionReportsFragment.kt", m2736i = {}, m2737l = {MetaDo.META_RESTOREDC}, m2738m = "invokeSuspend", m2739n = {}, m2740s = {})
    static final class C36501 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        int label;

        C36501(Continuation<? super C36501> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return TransactionReportsFragment.this.new C36501(continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((C36501) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Button button;
            Button button2;
            Button button3;
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            try {
                try {
                    if (i == 0) {
                        ResultKt.throwOnFailure(obj);
                        FragmentTransactionReportsBinding binding = TransactionReportsFragment.this.getBinding();
                        if (binding != null && (button3 = binding.btnSharePdf) != null) {
                            button3.setEnabled(false);
                        }
                        FragmentTransactionReportsBinding binding2 = TransactionReportsFragment.this.getBinding();
                        Button button4 = binding2 != null ? binding2.btnSharePdf : null;
                        if (!(button4 instanceof Button)) {
                            button4 = null;
                        }
                        if (button4 != null) {
                            button4.setText(TransactionReportsFragment.this.getString(C3621R.string.generating_pdf));
                        }
                        this.label = 1;
                        obj = BuildersKt.withContext(Dispatchers.getIO(), new TransactionReportsFragment$generateAndSharePdf$1$pdfFile$1(TransactionReportsFragment.this, null), this);
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
                        TransactionReportsFragment.this.sharePdfFile(file);
                    } else {
                        Toast.makeText(TransactionReportsFragment.this.requireContext(), "Failed to generate PDF", 0).show();
                    }
                } catch (Exception e) {
                    Log.e("TransactionReportsFragment", "Error generating PDF: " + e.getMessage(), e);
                    Toast.makeText(TransactionReportsFragment.this.requireContext(), "Failed to generate PDF: " + e.getMessage(), 0).show();
                    FragmentTransactionReportsBinding binding3 = TransactionReportsFragment.this.getBinding();
                    if (binding3 != null && (button = binding3.btnSharePdf) != null) {
                        button.setEnabled(true);
                    }
                    FragmentTransactionReportsBinding binding4 = TransactionReportsFragment.this.getBinding();
                    Button button5 = binding4 != null ? binding4.btnSharePdf : null;
                    button = button5 instanceof Button ? button5 : null;
                    if (button != null) {
                    }
                }
                return Unit.INSTANCE;
            } finally {
                FragmentTransactionReportsBinding binding5 = TransactionReportsFragment.this.getBinding();
                if (binding5 != null && (button2 = binding5.btnSharePdf) != null) {
                    button2.setEnabled(true);
                }
                FragmentTransactionReportsBinding binding6 = TransactionReportsFragment.this.getBinding();
                Button button6 = binding6 != null ? binding6.btnSharePdf : null;
                button = button6 instanceof Button ? button6 : null;
                if (button != null) {
                    button.setText(TransactionReportsFragment.this.getString(C3621R.string.share_pdf));
                }
            }
        }
    }

    private final void generateAndSharePdf() {
        BuildersKt__Builders_commonKt.launch$default(CoroutineScopeKt.CoroutineScope(Dispatchers.getMain()), null, null, new C36501(null), 3, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void sharePdfFile(File pdfFile) {
        try {
            Uri uriForFile = FileProvider.getUriForFile(requireContext(), "com.laborbook.provider", pdfFile);
            Intent intent = new Intent("android.intent.action.SEND");
            intent.setType("application/pdf");
            intent.putExtra("android.intent.extra.STREAM", uriForFile);
            intent.putExtra("android.intent.extra.SUBJECT", "Transaction Report");
            intent.addFlags(1);
            startActivity(Intent.createChooser(intent, "Share PDF"));
        } catch (Exception e) {
            Log.e("TransactionReportsFragment", "Error sharing PDF: " + e.getMessage(), e);
            Toast.makeText(requireContext(), "Failed to share PDF: " + e.getMessage(), 0).show();
        }
    }

    /* JADX INFO: renamed from: com.laborbook.income.screen.reports.fragment.TransactionReportsFragment$shareOnWhatsApp$1 */
    /* JADX INFO: compiled from: TransactionReportsFragment.kt */
    @Metadata(m2721d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, m2722d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, m2723k = 3, m2724mv = {2, 0, 0}, m2726xi = 48)
    @DebugMetadata(m2734c = "com.laborbook.income.screen.reports.fragment.TransactionReportsFragment$shareOnWhatsApp$1", m2735f = "TransactionReportsFragment.kt", m2736i = {}, m2737l = {341}, m2738m = "invokeSuspend", m2739n = {}, m2740s = {})
    static final class C36511 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        int label;

        C36511(Continuation<? super C36511> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return TransactionReportsFragment.this.new C36511(continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((C36511) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) throws Throwable {
            String message;
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            try {
                if (i == 0) {
                    ResultKt.throwOnFailure(obj);
                    this.label = 1;
                    obj = BuildersKt.withContext(Dispatchers.getIO(), new TransactionReportsFragment$shareOnWhatsApp$1$screenshotUri$1(TransactionReportsFragment.this, null), this);
                    if (obj == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                } else {
                    if (i != 1) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    ResultKt.throwOnFailure(obj);
                }
                Uri uri = (Uri) obj;
                if (uri != null) {
                    Intent intent = new Intent("android.intent.action.SEND");
                    TransactionReportsFragment transactionReportsFragment = TransactionReportsFragment.this;
                    intent.setType("image/png");
                    intent.putExtra("android.intent.extra.STREAM", uri);
                    intent.putExtra("android.intent.extra.TEXT", transactionReportsFragment.buildReportText());
                    intent.addFlags(1);
                    intent.setPackage("com.whatsapp");
                    TransactionReportsFragment.this.startActivity(intent);
                } else {
                    Toast.makeText(TransactionReportsFragment.this.requireContext(), "Failed to capture screenshot", 0).show();
                }
            } catch (Exception e) {
                String message2 = e.getMessage();
                if ((message2 != null && StringsKt.contains$default((CharSequence) message2, (CharSequence) "No Activity found", false, 2, (Object) null)) || ((message = e.getMessage()) != null && StringsKt.contains$default((CharSequence) message, (CharSequence) "ActivityNotFoundException", false, 2, (Object) null))) {
                    Toast.makeText(TransactionReportsFragment.this.requireContext(), "WhatsApp is not installed", 0).show();
                } else {
                    Toast.makeText(TransactionReportsFragment.this.requireContext(), "Failed to share: " + e.getMessage(), 0).show();
                }
            }
            return Unit.INSTANCE;
        }
    }

    private final void shareOnWhatsApp() {
        BuildersKt__Builders_commonKt.launch$default(CoroutineScopeKt.CoroutineScope(Dispatchers.getMain()), null, null, new C36511(null), 3, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final String buildReportText() {
        String string = getString(C3577R.string.refer_friend_whatsapp_message);
        Intrinsics.checkNotNullExpressionValue(string, "getString(...)");
        return string;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:32:0x0100 A[Catch: Exception -> 0x0195, LOOP:0: B:30:0x00fa->B:32:0x0100, LOOP_END, TryCatch #0 {Exception -> 0x0195, blocks: (B:13:0x003e, B:29:0x00b9, B:30:0x00fa, B:32:0x0100, B:33:0x0117, B:35:0x0121, B:37:0x012e, B:36:0x0128, B:18:0x0057, B:25:0x0095, B:21:0x005e), top: B:42:0x0028 }] */
    /* JADX WARN: Removed duplicated region for block: B:35:0x0121 A[Catch: Exception -> 0x0195, TryCatch #0 {Exception -> 0x0195, blocks: (B:13:0x003e, B:29:0x00b9, B:30:0x00fa, B:32:0x0100, B:33:0x0117, B:35:0x0121, B:37:0x012e, B:36:0x0128, B:18:0x0057, B:25:0x0095, B:21:0x005e), top: B:42:0x0028 }] */
    /* JADX WARN: Removed duplicated region for block: B:36:0x0128 A[Catch: Exception -> 0x0195, TryCatch #0 {Exception -> 0x0195, blocks: (B:13:0x003e, B:29:0x00b9, B:30:0x00fa, B:32:0x0100, B:33:0x0117, B:35:0x0121, B:37:0x012e, B:36:0x0128, B:18:0x0057, B:25:0x0095, B:21:0x005e), top: B:42:0x0028 }] */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0018  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object createFormattedReportView(kotlin.coroutines.Continuation<? super android.view.View> r14) throws java.lang.Throwable {
        /*
            Method dump skipped, instruction units count: 433
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.laborbook.income.screen.reports.fragment.TransactionReportsFragment.createFormattedReportView(kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void createFormattedReportView$lambda$23(TransactionReportsFragment this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.openPlayStore();
    }

    private final View createTransactionItemView(Transaction transaction) {
        LinearLayout linearLayout = new LinearLayout(requireContext());
        linearLayout.setOrientation(0);
        linearLayout.setLayoutParams(new LinearLayout.LayoutParams(-1, -2));
        linearLayout.setPadding(0, 0, 0, 0);
        int dimensionPixelSize = getResources().getDimensionPixelSize(C1111R.dimen.margin_48);
        int dimensionPixelSize2 = getResources().getDimensionPixelSize(C1111R.dimen.margin_8);
        TextView textView = new TextView(requireContext());
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(0, dimensionPixelSize, 0.6f);
        layoutParams.gravity = 8388627;
        textView.setLayoutParams(layoutParams);
        textView.setText(BaseExtensionKt.toReadableDate(transaction.getDate()));
        textView.setTextSize(14.0f);
        textView.setPadding(dimensionPixelSize2, 0, dimensionPixelSize2, 0);
        textView.setGravity(8388627);
        textView.setMinHeight(dimensionPixelSize);
        textView.setBackground(ContextCompat.getDrawable(requireContext(), C3621R.drawable.table_cell_border_right_bottom));
        TextView textView2 = new TextView(requireContext());
        LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(0, dimensionPixelSize, 1.5f);
        layoutParams2.gravity = 8388627;
        textView2.setLayoutParams(layoutParams2);
        textView2.setText(transaction.getReason());
        textView2.setTextSize(14.0f);
        textView2.setPadding(dimensionPixelSize2, 0, dimensionPixelSize2, 0);
        textView2.setGravity(8388627);
        textView2.setMaxLines(2);
        textView2.setEllipsize(TextUtils.TruncateAt.END);
        textView2.setMinHeight(dimensionPixelSize);
        textView2.setBackground(ContextCompat.getDrawable(requireContext(), C3621R.drawable.table_cell_border_right_bottom));
        TextView textView3 = new TextView(requireContext());
        LinearLayout.LayoutParams layoutParams3 = new LinearLayout.LayoutParams(0, dimensionPixelSize, 1.2f);
        layoutParams3.gravity = 8388627;
        textView3.setLayoutParams(layoutParams3);
        textView3.setText(NumberFormat.getCurrencyInstance(new Locale("en", "IN")).format(transaction.getAmount()));
        textView3.setTextSize(14.0f);
        textView3.setPadding(dimensionPixelSize2, 0, dimensionPixelSize2, 0);
        textView3.setGravity(8388627);
        textView3.setMinHeight(dimensionPixelSize);
        textView3.setBackground(ContextCompat.getDrawable(requireContext(), C3621R.drawable.table_cell_border_bottom));
        linearLayout.addView(textView);
        linearLayout.addView(textView2);
        linearLayout.addView(textView3);
        return linearLayout;
    }

    private final void openPlayStore() {
        try {
            startActivity(new Intent("android.intent.action.VIEW", Uri.parse("market://details?id=com.laborbook")));
        } catch (ActivityNotFoundException unused) {
            startActivity(new Intent("android.intent.action.VIEW", Uri.parse("https://play.google.com/store/apps/details?id=com.laborbook")));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0014  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object captureFormattedReportScreenshot(kotlin.coroutines.Continuation<? super android.graphics.Bitmap> r7) throws java.lang.Throwable {
        /*
            r6 = this;
            boolean r0 = r7 instanceof com.laborbook.income.screen.reports.fragment.TransactionReportsFragment.C36471
            if (r0 == 0) goto L14
            r0 = r7
            com.laborbook.income.screen.reports.fragment.TransactionReportsFragment$captureFormattedReportScreenshot$1 r0 = (com.laborbook.income.screen.reports.fragment.TransactionReportsFragment.C36471) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r1 = r1 & r2
            if (r1 == 0) goto L14
            int r7 = r0.label
            int r7 = r7 - r2
            r0.label = r7
            goto L19
        L14:
            com.laborbook.income.screen.reports.fragment.TransactionReportsFragment$captureFormattedReportScreenshot$1 r0 = new com.laborbook.income.screen.reports.fragment.TransactionReportsFragment$captureFormattedReportScreenshot$1
            r0.<init>(r7)
        L19:
            java.lang.Object r7 = r0.result
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.label
            r3 = 2
            r4 = 1
            r5 = 0
            if (r2 == 0) goto L3c
            if (r2 == r4) goto L36
            if (r2 != r3) goto L2e
            kotlin.ResultKt.throwOnFailure(r7)     // Catch: java.lang.Exception -> L3a
            goto L63
        L2e:
            java.lang.IllegalStateException r7 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r7.<init>(r0)
            throw r7
        L36:
            kotlin.ResultKt.throwOnFailure(r7)     // Catch: java.lang.Exception -> L3a
            goto L48
        L3a:
            r7 = move-exception
            goto L67
        L3c:
            kotlin.ResultKt.throwOnFailure(r7)
            r0.label = r4     // Catch: java.lang.Exception -> L3a
            java.lang.Object r7 = r6.createFormattedReportView(r0)     // Catch: java.lang.Exception -> L3a
            if (r7 != r1) goto L48
            return r1
        L48:
            android.view.View r7 = (android.view.View) r7     // Catch: java.lang.Exception -> L3a
            if (r7 != 0) goto L4d
            return r5
        L4d:
            kotlinx.coroutines.MainCoroutineDispatcher r2 = kotlinx.coroutines.Dispatchers.getMain()     // Catch: java.lang.Exception -> L3a
            kotlin.coroutines.CoroutineContext r2 = (kotlin.coroutines.CoroutineContext) r2     // Catch: java.lang.Exception -> L3a
            com.laborbook.income.screen.reports.fragment.TransactionReportsFragment$captureFormattedReportScreenshot$2 r4 = new com.laborbook.income.screen.reports.fragment.TransactionReportsFragment$captureFormattedReportScreenshot$2     // Catch: java.lang.Exception -> L3a
            r4.<init>(r7, r5)     // Catch: java.lang.Exception -> L3a
            kotlin.jvm.functions.Function2 r4 = (kotlin.jvm.functions.Function2) r4     // Catch: java.lang.Exception -> L3a
            r0.label = r3     // Catch: java.lang.Exception -> L3a
            java.lang.Object r7 = kotlinx.coroutines.BuildersKt.withContext(r2, r4, r0)     // Catch: java.lang.Exception -> L3a
            if (r7 != r1) goto L63
            return r1
        L63:
            android.graphics.Bitmap r7 = (android.graphics.Bitmap) r7     // Catch: java.lang.Exception -> L3a
            r5 = r7
            goto L81
        L67:
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            java.lang.String r1 = "Error capturing screenshot: "
            r0.<init>(r1)
            java.lang.String r1 = r7.getMessage()
            java.lang.StringBuilder r0 = r0.append(r1)
            java.lang.String r0 = r0.toString()
            java.lang.Throwable r7 = (java.lang.Throwable) r7
            java.lang.String r1 = "TransactionReportsFragment"
            android.util.Log.e(r1, r0, r7)
        L81:
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.laborbook.income.screen.reports.fragment.TransactionReportsFragment.captureFormattedReportScreenshot(kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX INFO: renamed from: com.laborbook.income.screen.reports.fragment.TransactionReportsFragment$captureFormattedReportScreenshot$2 */
    /* JADX INFO: compiled from: TransactionReportsFragment.kt */
    @Metadata(m2721d1 = {"\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u0004\u0018\u00010\u0001*\u00020\u0002H\n"}, m2722d2 = {"<anonymous>", "Landroid/graphics/Bitmap;", "Lkotlinx/coroutines/CoroutineScope;"}, m2723k = 3, m2724mv = {2, 0, 0}, m2726xi = 48)
    @DebugMetadata(m2734c = "com.laborbook.income.screen.reports.fragment.TransactionReportsFragment$captureFormattedReportScreenshot$2", m2735f = "TransactionReportsFragment.kt", m2736i = {}, m2737l = {}, m2738m = "invokeSuspend", m2739n = {}, m2740s = {})
    static final class C36482 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Bitmap>, Object> {
        final /* synthetic */ View $reportView;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C36482(View view, Continuation<? super C36482> continuation) {
            super(2, continuation);
            this.$reportView = view;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new C36482(this.$reportView, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Bitmap> continuation) {
            return ((C36482) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (this.label != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(obj);
            if (this.$reportView.getWidth() <= 0 || this.$reportView.getHeight() <= 0) {
                return null;
            }
            Bitmap bitmapCreateBitmap = Bitmap.createBitmap(this.$reportView.getWidth(), this.$reportView.getHeight(), Bitmap.Config.ARGB_8888);
            Intrinsics.checkNotNullExpressionValue(bitmapCreateBitmap, "createBitmap(...)");
            this.$reportView.draw(new Canvas(bitmapCreateBitmap));
            return bitmapCreateBitmap;
        }
    }

    private final Bitmap getBitmapWithoutChanges(View view) {
        try {
            if (view.getWidth() > 0 && view.getHeight() > 0) {
                Bitmap bitmapCreateBitmap = Bitmap.createBitmap(view.getWidth(), view.getHeight(), Bitmap.Config.ARGB_8888);
                Intrinsics.checkNotNullExpressionValue(bitmapCreateBitmap, "createBitmap(...)");
                view.draw(new Canvas(bitmapCreateBitmap));
                return bitmapCreateBitmap;
            }
            return null;
        } catch (Exception e) {
            Log.e("TransactionReportsFragment", "Error getting bitmap: " + e.getMessage(), e);
            return null;
        }
    }

    private final Bitmap getBitmapFromRecyclerView(RecyclerView recyclerView) {
        int itemCount;
        try {
            RecyclerView.Adapter adapter = recyclerView.getAdapter();
            if (adapter == null || (itemCount = adapter.getItemCount()) == 0) {
                return null;
            }
            Paint paint = new Paint();
            int width = recyclerView.getWidth();
            Drawable background = recyclerView.getBackground();
            ColorDrawable colorDrawable = background instanceof ColorDrawable ? (ColorDrawable) background : null;
            int color = colorDrawable != null ? colorDrawable.getColor() : -1;
            ArrayList<Bitmap> arrayList = new ArrayList();
            int height = 0;
            int height2 = 0;
            for (int i = 0; i < itemCount; i++) {
                RecyclerView.ViewHolder viewHolderCreateViewHolder = adapter.createViewHolder(recyclerView, adapter.getItemViewType(i));
                Intrinsics.checkNotNullExpressionValue(viewHolderCreateViewHolder, "createViewHolder(...)");
                adapter.onBindViewHolder(viewHolderCreateViewHolder, i);
                viewHolderCreateViewHolder.itemView.measure(View.MeasureSpec.makeMeasureSpec(width, 1073741824), View.MeasureSpec.makeMeasureSpec(0, 0));
                viewHolderCreateViewHolder.itemView.layout(0, 0, viewHolderCreateViewHolder.itemView.getMeasuredWidth(), viewHolderCreateViewHolder.itemView.getMeasuredHeight());
                Bitmap bitmapCreateBitmap = Bitmap.createBitmap(viewHolderCreateViewHolder.itemView.getWidth(), viewHolderCreateViewHolder.itemView.getHeight(), Bitmap.Config.ARGB_8888);
                Intrinsics.checkNotNullExpressionValue(bitmapCreateBitmap, "createBitmap(...)");
                Canvas canvas = new Canvas(bitmapCreateBitmap);
                canvas.drawColor(color);
                viewHolderCreateViewHolder.itemView.draw(canvas);
                arrayList.add(bitmapCreateBitmap);
                height2 += viewHolderCreateViewHolder.itemView.getHeight();
            }
            Bitmap bitmapCreateBitmap2 = Bitmap.createBitmap(width, height2, Bitmap.Config.ARGB_8888);
            Intrinsics.checkNotNullExpressionValue(bitmapCreateBitmap2, "createBitmap(...)");
            Canvas canvas2 = new Canvas(bitmapCreateBitmap2);
            canvas2.drawColor(color);
            for (Bitmap bitmap : arrayList) {
                canvas2.drawBitmap(bitmap, 0.0f, height, paint);
                height += bitmap.getHeight();
            }
            return bitmapCreateBitmap2;
        } catch (Exception e) {
            Log.e("TransactionReportsFragment", "Error capturing RecyclerView: " + e.getMessage(), e);
            return null;
        }
    }

    private final Bitmap combineBitmapsWithBackground(int backgroundColorRes, Bitmap... bitmaps) {
        int color = ContextCompat.getColor(requireContext(), backgroundColorRes);
        int width = bitmaps[0].getWidth();
        int height = 0;
        for (Bitmap bitmap : bitmaps) {
            height += bitmap.getHeight();
        }
        Bitmap bitmapCreateBitmap = Bitmap.createBitmap(width, height, Bitmap.Config.ARGB_8888);
        Intrinsics.checkNotNullExpressionValue(bitmapCreateBitmap, "createBitmap(...)");
        Canvas canvas = new Canvas(bitmapCreateBitmap);
        canvas.drawColor(color);
        int height2 = 0;
        for (Bitmap bitmap2 : bitmaps) {
            canvas.drawBitmap(bitmap2, 0.0f, height2, (Paint) null);
            height2 += bitmap2.getHeight();
        }
        return bitmapCreateBitmap;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final File convertBitmapToPdf(Bitmap bitmap) {
        try {
            File file = new File(requireContext().getCacheDir(), "Transaction_Report_" + System.currentTimeMillis() + ".pdf");
            PdfDocument pdfDocument = new PdfDocument();
            PdfDocument.Page pageStartPage = pdfDocument.startPage(new PdfDocument.PageInfo.Builder(bitmap.getWidth(), bitmap.getHeight(), 1).create());
            pageStartPage.getCanvas().drawBitmap(bitmap, 0.0f, 0.0f, (Paint) null);
            pdfDocument.finishPage(pageStartPage);
            FileOutputStream fileOutputStream = new FileOutputStream(file);
            try {
                pdfDocument.writeTo(fileOutputStream);
                Unit unit = Unit.INSTANCE;
                CloseableKt.closeFinally(fileOutputStream, null);
                pdfDocument.close();
                return file;
            } finally {
            }
        } catch (Exception e) {
            Log.e("TransactionReportsFragment", "Error converting to PDF: " + e.getMessage(), e);
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Uri saveBitmapToMediaStore(Bitmap bitmap) {
        try {
            ContentValues contentValues = new ContentValues();
            contentValues.put("_display_name", "report_" + System.currentTimeMillis() + ".png");
            contentValues.put("mime_type", "image/png");
            if (Build.VERSION.SDK_INT >= 29) {
                contentValues.put("is_pending", (Integer) 1);
            }
            Uri uriInsert = requireContext().getContentResolver().insert(MediaStore.Images.Media.EXTERNAL_CONTENT_URI, contentValues);
            if (uriInsert != null) {
                OutputStream outputStreamOpenOutputStream = requireContext().getContentResolver().openOutputStream(uriInsert);
                try {
                    OutputStream outputStream = outputStreamOpenOutputStream;
                    if (outputStream != null) {
                        Boolean.valueOf(bitmap.compress(Bitmap.CompressFormat.PNG, 100, outputStream));
                    }
                    CloseableKt.closeFinally(outputStreamOpenOutputStream, null);
                    if (Build.VERSION.SDK_INT >= 29) {
                        contentValues.clear();
                        contentValues.put("is_pending", (Integer) 0);
                        requireContext().getContentResolver().update(uriInsert, contentValues, null, null);
                    }
                } finally {
                }
            }
            return uriInsert;
        } catch (Exception e) {
            Log.e("TransactionReportsFragment", "Error saving bitmap: " + e.getMessage(), e);
            return null;
        }
    }
}
