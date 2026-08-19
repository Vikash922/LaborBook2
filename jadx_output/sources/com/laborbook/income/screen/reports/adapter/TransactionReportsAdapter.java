package com.laborbook.income.screen.reports.adapter;

import android.view.LayoutInflater;
import android.view.ViewGroup;
import androidx.recyclerview.widget.ListAdapter;
import com.itextpdf.styledxmlparser.css.CommonCssConstants;
import com.laborbook.income.databinding.ItemTransactionReportBinding;
import com.laborbook.income.model.Transaction;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: TransactionReportsAdapter.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(m2721d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\u0007¢\u0006\u0004\b\u0004\u0010\u0005J\u0018\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\nH\u0016J\u0018\u0010\u000b\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\u00032\u0006\u0010\u000e\u001a\u00020\nH\u0016¨\u0006\u000f"}, m2722d2 = {"Lcom/laborbook/income/screen/reports/adapter/TransactionReportsAdapter;", "Landroidx/recyclerview/widget/ListAdapter;", "Lcom/laborbook/income/model/Transaction;", "Lcom/laborbook/income/screen/reports/adapter/TransactionReportViewHolder;", "<init>", "()V", "onCreateViewHolder", "parent", "Landroid/view/ViewGroup;", "viewType", "", "onBindViewHolder", "", "holder", CommonCssConstants.POSITION, "income_release"}, m2723k = 1, m2724mv = {2, 0, 0}, m2726xi = 48)
public final class TransactionReportsAdapter extends ListAdapter<Transaction, TransactionReportViewHolder> {
    public TransactionReportsAdapter() {
        super(new TransactionDiffCallback());
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public TransactionReportViewHolder onCreateViewHolder(ViewGroup parent, int viewType) {
        Intrinsics.checkNotNullParameter(parent, "parent");
        ItemTransactionReportBinding itemTransactionReportBindingInflate = ItemTransactionReportBinding.inflate(LayoutInflater.from(parent.getContext()), parent, false);
        Intrinsics.checkNotNullExpressionValue(itemTransactionReportBindingInflate, "inflate(...)");
        return new TransactionReportViewHolder(itemTransactionReportBindingInflate);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onBindViewHolder(TransactionReportViewHolder holder, int position) {
        Intrinsics.checkNotNullParameter(holder, "holder");
        Transaction item = getItem(position);
        Intrinsics.checkNotNullExpressionValue(item, "getItem(...)");
        holder.bind(item);
    }
}
