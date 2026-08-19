package com.laborbook.expense.screen.monthchooser;

import android.app.AlertDialog;
import android.app.Dialog;
import android.content.DialogInterface;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import com.boilerplate.uikit.views.buttons.PrimaryButton;
import com.boilerplate.uikit.views.textviews.text14.TextViewBold14;
import com.google.android.material.C1346R;
import com.google.android.material.bottomsheet.BottomSheetBehavior;
import com.google.android.material.bottomsheet.BottomSheetDialog;
import com.laborbook.base.BaseBottomsheetFragment;
import com.laborbook.base.analytics.ConstantEventNames;
import com.laborbook.expense.C3591R;
import com.laborbook.expense.databinding.FragmentMonthYearChooserBinding;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Iterator;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.ArraysKt;
import kotlin.collections.CollectionsKt;
import kotlin.collections.IntIterator;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.IntRange;

/* JADX INFO: compiled from: MonthYearChooserFragment.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(m2721d1 = {"\u0000J\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\b\u0018\u0000 !2\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0001!B\u0007¢\u0006\u0004\b\u0003\u0010\u0004J\b\u0010\u000f\u001a\u00020\u000eH\u0016J\u0012\u0010\u0010\u001a\u00020\u000e2\b\u0010\u0011\u001a\u0004\u0018\u00010\u0012H\u0016J&\u0010\u0013\u001a\u0004\u0018\u00010\u00022\u0006\u0010\u0014\u001a\u00020\u00152\b\u0010\u0016\u001a\u0004\u0018\u00010\u00172\b\u0010\u0011\u001a\u0004\u0018\u00010\u0012H\u0016J\u001a\u0010\u0018\u001a\u00020\u000e2\u0006\u0010\u0019\u001a\u00020\u001a2\b\u0010\u0011\u001a\u0004\u0018\u00010\u0012H\u0016J\b\u0010\u001b\u001a\u00020\u000eH\u0002J\b\u0010\u001c\u001a\u00020\u000eH\u0002J \u0010\u001d\u001a\u00020\u000e2\u0018\u0010\u001e\u001a\u0014\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\u000e0\rJ\u0010\u0010\u001f\u001a\u00020\u00062\u0006\u0010 \u001a\u00020\nH\u0002R\u0014\u0010\u0005\u001a\u00020\u00068VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0007\u0010\bR\u000e\u0010\t\u001a\u00020\nX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\nX\u0082\u000e¢\u0006\u0002\n\u0000R\"\u0010\f\u001a\u0016\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\u000e\u0018\u00010\rX\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\""}, m2722d2 = {"Lcom/laborbook/expense/screen/monthchooser/MonthYearChooserFragment;", "Lcom/laborbook/base/BaseBottomsheetFragment;", "Lcom/laborbook/expense/databinding/FragmentMonthYearChooserBinding;", "<init>", "()V", "screenName", "", "getScreenName", "()Ljava/lang/String;", "selectedMonth", "", "selectedYear", "onSelectionCallback", "Lkotlin/Function2;", "", "onStart", "onCreate", "savedInstanceState", "Landroid/os/Bundle;", "getViewBinding", "inflater", "Landroid/view/LayoutInflater;", "container", "Landroid/view/ViewGroup;", "onViewCreated", "view", "Landroid/view/View;", "setupViews", "setOnClickListeners", "setOnSelectionCallback", "callback", "getMonthName", "monthIndex", "Companion", "expense_release"}, m2723k = 1, m2724mv = {2, 0, 0}, m2726xi = 48)
public final class MonthYearChooserFragment extends BaseBottomsheetFragment<FragmentMonthYearChooserBinding> {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private Function2<? super Integer, ? super Integer, Unit> onSelectionCallback;
    private int selectedMonth;
    private int selectedYear;

    @Override // com.laborbook.base.BaseBottomsheetFragment
    public String getScreenName() {
        return ConstantEventNames.MONTH_YEAR_BS;
    }

    /* JADX INFO: compiled from: MonthYearChooserFragment.kt */
    @Metadata(m2721d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0016\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\u0007¨\u0006\t"}, m2722d2 = {"Lcom/laborbook/expense/screen/monthchooser/MonthYearChooserFragment$Companion;", "", "<init>", "()V", "newInstance", "Lcom/laborbook/expense/screen/monthchooser/MonthYearChooserFragment;", "currentMonth", "", "currentYear", "expense_release"}, m2723k = 1, m2724mv = {2, 0, 0}, m2726xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final MonthYearChooserFragment newInstance(int currentMonth, int currentYear) {
            MonthYearChooserFragment monthYearChooserFragment = new MonthYearChooserFragment();
            Bundle bundle = new Bundle();
            bundle.putInt("currentMonth", currentMonth);
            bundle.putInt("currentYear", currentYear);
            monthYearChooserFragment.setArguments(bundle);
            return monthYearChooserFragment;
        }
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

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        Calendar calendar = Calendar.getInstance();
        Bundle arguments = getArguments();
        this.selectedMonth = arguments != null ? arguments.getInt("currentMonth", calendar.get(2)) : calendar.get(2);
        Bundle arguments2 = getArguments();
        this.selectedYear = arguments2 != null ? arguments2.getInt("currentYear", calendar.get(1)) : calendar.get(1);
    }

    @Override // com.laborbook.base.BaseBottomsheetFragment
    public FragmentMonthYearChooserBinding getViewBinding(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        Intrinsics.checkNotNullParameter(inflater, "inflater");
        return FragmentMonthYearChooserBinding.inflate(inflater, container, false);
    }

    @Override // com.laborbook.base.BaseBottomsheetFragment, androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle savedInstanceState) {
        Intrinsics.checkNotNullParameter(view, "view");
        super.onViewCreated(view, savedInstanceState);
        setupViews();
        setOnClickListeners();
    }

    private final void setupViews() {
        FragmentMonthYearChooserBinding binding = getBinding();
        if (binding != null) {
            binding.tvMonth.setText(getMonthName(this.selectedMonth));
            binding.tvYear.setText(String.valueOf(this.selectedYear));
        }
    }

    private final void setOnClickListeners() {
        PrimaryButton primaryButton;
        LinearLayout linearLayout;
        LinearLayout linearLayout2;
        ImageView imageView;
        FragmentMonthYearChooserBinding binding = getBinding();
        if (binding != null && (imageView = binding.ivClose) != null) {
            imageView.setOnClickListener(new View.OnClickListener() { // from class: com.laborbook.expense.screen.monthchooser.MonthYearChooserFragment$$ExternalSyntheticLambda1
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    MonthYearChooserFragment.setOnClickListeners$lambda$1(this.f$0, view);
                }
            });
        }
        FragmentMonthYearChooserBinding binding2 = getBinding();
        if (binding2 != null && (linearLayout2 = binding2.llMonth) != null) {
            linearLayout2.setOnClickListener(new View.OnClickListener() { // from class: com.laborbook.expense.screen.monthchooser.MonthYearChooserFragment$$ExternalSyntheticLambda2
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    MonthYearChooserFragment.setOnClickListeners$lambda$3(this.f$0, view);
                }
            });
        }
        FragmentMonthYearChooserBinding binding3 = getBinding();
        if (binding3 != null && (linearLayout = binding3.llYear) != null) {
            linearLayout.setOnClickListener(new View.OnClickListener() { // from class: com.laborbook.expense.screen.monthchooser.MonthYearChooserFragment$$ExternalSyntheticLambda3
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    MonthYearChooserFragment.setOnClickListeners$lambda$6(this.f$0, view);
                }
            });
        }
        FragmentMonthYearChooserBinding binding4 = getBinding();
        if (binding4 == null || (primaryButton = binding4.btnOk) == null) {
            return;
        }
        primaryButton.setOnClickListener(new View.OnClickListener() { // from class: com.laborbook.expense.screen.monthchooser.MonthYearChooserFragment$$ExternalSyntheticLambda4
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                MonthYearChooserFragment.setOnClickListeners$lambda$7(this.f$0, view);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void setOnClickListeners$lambda$1(MonthYearChooserFragment this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.dismiss();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void setOnClickListeners$lambda$3(final MonthYearChooserFragment this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        final String[] strArr = {"January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"};
        new AlertDialog.Builder(this$0.requireContext()).setTitle(this$0.getString(C3591R.string.select_month)).setSingleChoiceItems(strArr, this$0.selectedMonth, new DialogInterface.OnClickListener() { // from class: com.laborbook.expense.screen.monthchooser.MonthYearChooserFragment$$ExternalSyntheticLambda0
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i) {
                MonthYearChooserFragment.setOnClickListeners$lambda$3$lambda$2(this.f$0, strArr, dialogInterface, i);
            }
        }).create().show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void setOnClickListeners$lambda$3$lambda$2(MonthYearChooserFragment this$0, String[] months, DialogInterface dialogInterface, int i) {
        TextViewBold14 textViewBold14;
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(months, "$months");
        this$0.selectedMonth = i;
        FragmentMonthYearChooserBinding binding = this$0.getBinding();
        if (binding != null && (textViewBold14 = binding.tvMonth) != null) {
            textViewBold14.setText(months[i]);
        }
        dialogInterface.dismiss();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void setOnClickListeners$lambda$6(final MonthYearChooserFragment this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        int i = Calendar.getInstance().get(1);
        IntRange intRange = new IntRange(i - 10, i);
        ArrayList arrayList = new ArrayList(CollectionsKt.collectionSizeOrDefault(intRange, 10));
        Iterator<Integer> it = intRange.iterator();
        while (it.hasNext()) {
            arrayList.add(String.valueOf(((IntIterator) it).nextInt()));
        }
        final String[] strArr = (String[]) arrayList.toArray(new String[0]);
        new AlertDialog.Builder(this$0.requireContext()).setTitle(this$0.getString(C3591R.string.select_year)).setSingleChoiceItems(strArr, ArraysKt.indexOf(strArr, String.valueOf(this$0.selectedYear)), new DialogInterface.OnClickListener() { // from class: com.laborbook.expense.screen.monthchooser.MonthYearChooserFragment$$ExternalSyntheticLambda5
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i2) {
                MonthYearChooserFragment.setOnClickListeners$lambda$6$lambda$5(this.f$0, strArr, dialogInterface, i2);
            }
        }).create().show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void setOnClickListeners$lambda$6$lambda$5(MonthYearChooserFragment this$0, String[] years, DialogInterface dialogInterface, int i) {
        TextViewBold14 textViewBold14;
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(years, "$years");
        this$0.selectedYear = Integer.parseInt(years[i]);
        FragmentMonthYearChooserBinding binding = this$0.getBinding();
        if (binding != null && (textViewBold14 = binding.tvYear) != null) {
            textViewBold14.setText(years[i]);
        }
        dialogInterface.dismiss();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void setOnClickListeners$lambda$7(MonthYearChooserFragment this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Function2<? super Integer, ? super Integer, Unit> function2 = this$0.onSelectionCallback;
        if (function2 != null) {
            function2.invoke(Integer.valueOf(this$0.selectedMonth), Integer.valueOf(this$0.selectedYear));
        }
        this$0.dismiss();
    }

    public final void setOnSelectionCallback(Function2<? super Integer, ? super Integer, Unit> callback) {
        Intrinsics.checkNotNullParameter(callback, "callback");
        this.onSelectionCallback = callback;
    }

    private final String getMonthName(int monthIndex) {
        return new String[]{"January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"}[monthIndex];
    }
}
