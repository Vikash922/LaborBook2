package com.laborbook.income.screen.reports.adapter;

import androidx.recyclerview.widget.RecyclerView;
import com.laborbook.base.BaseExtensionKt;
import com.laborbook.income.C3621R;
import com.laborbook.income.databinding.ItemTransactionReportBinding;
import com.laborbook.income.model.Transaction;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.Locale;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;

/* JADX INFO: compiled from: TransactionReportsAdapter.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(m2721d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\u000e\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\tJ\u0010\u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\u000bH\u0002J\u0010\u0010\r\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\u000bH\u0002R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u000e"}, m2722d2 = {"Lcom/laborbook/income/screen/reports/adapter/TransactionReportViewHolder;", "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;", "binding", "Lcom/laborbook/income/databinding/ItemTransactionReportBinding;", "<init>", "(Lcom/laborbook/income/databinding/ItemTransactionReportBinding;)V", "bind", "", "transaction", "Lcom/laborbook/income/model/Transaction;", "extractDayNumber", "", "dateString", "extractDayOfWeek", "income_release"}, m2723k = 1, m2724mv = {2, 0, 0}, m2726xi = 48)
public final class TransactionReportViewHolder extends RecyclerView.ViewHolder {
    private final ItemTransactionReportBinding binding;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TransactionReportViewHolder(ItemTransactionReportBinding binding) {
        super(binding.getRoot());
        Intrinsics.checkNotNullParameter(binding, "binding");
        this.binding = binding;
    }

    public final void bind(Transaction transaction) {
        int color;
        Intrinsics.checkNotNullParameter(transaction, "transaction");
        String strExtractDayNumber = extractDayNumber(transaction.getDate());
        String strExtractDayOfWeek = extractDayOfWeek(transaction.getDate());
        this.binding.tvDate.setText(strExtractDayNumber);
        this.binding.tvDay.setText(strExtractDayOfWeek);
        this.binding.tvNotes.setText(transaction.getReason());
        this.binding.tvAmount.setText("₹ " + transaction.getAmount());
        if (Intrinsics.areEqual(transaction.getType(), "DEBIT")) {
            color = this.binding.getRoot().getContext().getColor(C3621R.color.error_state_color);
        } else {
            color = this.binding.getRoot().getContext().getColor(C3621R.color.button_green_color);
        }
        this.binding.tvAmount.setTextColor(color);
    }

    private final String extractDayNumber(String dateString) {
        try {
            Date date = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss'Z'", Locale.getDefault()).parse(dateString);
            Calendar calendar = Calendar.getInstance();
            if (date != null) {
                calendar.setTime(date);
            }
            return String.valueOf(calendar.get(5));
        } catch (Exception unused) {
            return BaseExtensionKt.toReadableDate(dateString);
        }
    }

    private final String extractDayOfWeek(String dateString) {
        try {
            Date date = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss'Z'", Locale.getDefault()).parse(dateString);
            Calendar calendar = Calendar.getInstance();
            if (date != null) {
                calendar.setTime(date);
            }
            String displayName = calendar.getDisplayName(7, 1, Locale.getDefault());
            if (displayName == null) {
                return "";
            }
            String strTake = StringsKt.take(displayName, 3);
            return strTake == null ? "" : strTake;
        } catch (Exception unused) {
            return "";
        }
    }
}
