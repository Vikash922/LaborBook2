package com.rebuilt.app.income.screen.home.adapter;

import androidx.recyclerview.widget.DiffUtil;
import com.rebuilt.app.income.model.TransactionItem;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: TransactionListAdapter.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(m2721d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0004\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0007¢\u0006\u0004\b\u0003\u0010\u0004J\u0018\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00022\u0006\u0010\b\u001a\u00020\u0002H\u0016J\u0018\u0010\t\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00022\u0006\u0010\b\u001a\u00020\u0002H\u0016¨\u0006\n"}, m2722d2 = {"Lcom/laborbook/income/screen/home/adapter/ExpenseDiffCallback;", "Landroidx/recyclerview/widget/DiffUtil$ItemCallback;", "Lcom/laborbook/income/model/TransactionItem;", "<init>", "()V", "areItemsTheSame", "", "oldItem", "newItem", "areContentsTheSame", "income_release"}, m2723k = 1, m2724mv = {2, 0, 0}, m2726xi = 48)
public final class ExpenseDiffCallback extends DiffUtil.ItemCallback<TransactionItem> {
    @Override // androidx.recyclerview.widget.DiffUtil.ItemCallback
    public boolean areItemsTheSame(TransactionItem oldItem, TransactionItem newItem) {
        Intrinsics.checkNotNullParameter(oldItem, "oldItem");
        Intrinsics.checkNotNullParameter(newItem, "newItem");
        if ((oldItem instanceof TransactionItem.TransactionItemView) && (newItem instanceof TransactionItem.TransactionItemView)) {
            return Intrinsics.areEqual(((TransactionItem.TransactionItemView) oldItem).getTransaction().getId(), ((TransactionItem.TransactionItemView) newItem).getTransaction().getId());
        }
        return (oldItem instanceof TransactionItem.AdItem) && (newItem instanceof TransactionItem.AdItem) && ((TransactionItem.AdItem) oldItem).getAdPosition() == ((TransactionItem.AdItem) newItem).getAdPosition();
    }

    @Override // androidx.recyclerview.widget.DiffUtil.ItemCallback
    public boolean areContentsTheSame(TransactionItem oldItem, TransactionItem newItem) {
        Intrinsics.checkNotNullParameter(oldItem, "oldItem");
        Intrinsics.checkNotNullParameter(newItem, "newItem");
        return Intrinsics.areEqual(oldItem, newItem);
    }
}
