package com.laborbook.keep.screen.home.adapter;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.core.content.ContextCompat;
import androidx.recyclerview.widget.RecyclerView;
import com.facebook.appevents.iap.InAppPurchaseConstants;
import com.google.android.gms.actions.SearchIntents;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.itextpdf.styledxmlparser.css.CommonCssConstants;
import com.itextpdf.svg.SvgConstants;
import com.laborbook.expense.model.Transaction;
import com.laborbook.keep.C3656R;
import com.laborbook.keep.databinding.ItemCashbookDateHeaderBinding;
import com.laborbook.keep.databinding.ItemCashbookTableHeaderBinding;
import com.laborbook.keep.databinding.ItemCashbookTransactionBinding;
import com.laborbook.keep.screen.home.adapter.CashbookTransactionAdapter;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;

/* JADX INFO: compiled from: CashbookTransactionAdapter.kt */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(m2721d1 = {"\u0000J\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010 \n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0002\b\u0006\u0018\u0000  2\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0005\u001f !\"#B\u001b\u0012\u0012\u0010\u0003\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00060\u0004¢\u0006\u0004\b\u0007\u0010\bJ\u0010\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u000eH\u0016J\u0018\u0010\u0010\u001a\u00020\u00022\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u000eH\u0016J\u0018\u0010\u0014\u001a\u00020\u00062\u0006\u0010\u0015\u001a\u00020\u00022\u0006\u0010\u000f\u001a\u00020\u000eH\u0016J\b\u0010\u0016\u001a\u00020\u000eH\u0016J\u0014\u0010\u0017\u001a\u00020\u00062\f\u0010\u0018\u001a\b\u0012\u0004\u0012\u00020\u00050\u0019J\f\u0010\u001a\u001a\b\u0012\u0004\u0012\u00020\u00050\u0019J\u0006\u0010\u001b\u001a\u00020\u0006J\u000e\u0010\u001c\u001a\u00020\u00062\u0006\u0010\u001d\u001a\u00020\u001eR\u001a\u0010\u0003\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00060\u0004X\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u000b0\nX\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u000b0\nX\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006$"}, m2722d2 = {"Lcom/laborbook/keep/screen/home/adapter/CashbookTransactionAdapter;", "Landroidx/recyclerview/widget/RecyclerView$Adapter;", "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;", "onTransactionClick", "Lkotlin/Function1;", "Lcom/laborbook/expense/model/Transaction;", "", "<init>", "(Lkotlin/jvm/functions/Function1;)V", FirebaseAnalytics.Param.ITEMS, "", "Lcom/laborbook/keep/screen/home/adapter/CashbookTransactionAdapter$CashbookItem;", "allItems", "getItemViewType", "", CommonCssConstants.POSITION, "onCreateViewHolder", "parent", "Landroid/view/ViewGroup;", "viewType", "onBindViewHolder", "holder", "getItemCount", "addTransactions", "transactions", "", "getAllTransactions", "clear", SvgConstants.Tags.FILTER, SearchIntents.EXTRA_QUERY, "", "CashbookItem", "Companion", "TableHeaderViewHolder", "DateHeaderViewHolder", "TransactionViewHolder", "keep_release"}, m2723k = 1, m2724mv = {2, 0, 0}, m2726xi = 48)
public final class CashbookTransactionAdapter extends RecyclerView.Adapter<RecyclerView.ViewHolder> {
    private static final int TYPE_DATE_HEADER = 1;
    private static final int TYPE_TABLE_HEADER = 0;
    private static final int TYPE_TRANSACTION = 2;
    private List<CashbookItem> allItems;
    private final List<CashbookItem> items;
    private final Function1<Transaction, Unit> onTransactionClick;
    private static final SimpleDateFormat isoFormat = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss'Z'", Locale.getDefault());
    private static final SimpleDateFormat dayFormat = new SimpleDateFormat("dd", Locale.getDefault());
    private static final SimpleDateFormat weekdayFormat = new SimpleDateFormat("EEE", Locale.getDefault());

    /* JADX WARN: Multi-variable type inference failed */
    public CashbookTransactionAdapter(Function1<? super Transaction, Unit> onTransactionClick) {
        Intrinsics.checkNotNullParameter(onTransactionClick, "onTransactionClick");
        this.onTransactionClick = onTransactionClick;
        this.items = new ArrayList();
        this.allItems = new ArrayList();
    }

    /* JADX INFO: compiled from: CashbookTransactionAdapter.kt */
    @Metadata(m2721d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b6\u0018\u00002\u00020\u0001:\u0003\u0004\u0005\u0006B\t\b\u0004¢\u0006\u0004\b\u0002\u0010\u0003\u0082\u0001\u0003\u0007\b\t¨\u0006\n"}, m2722d2 = {"Lcom/laborbook/keep/screen/home/adapter/CashbookTransactionAdapter$CashbookItem;", "", "<init>", "()V", "TableHeader", "DateHeader", "TransactionRow", "Lcom/laborbook/keep/screen/home/adapter/CashbookTransactionAdapter$CashbookItem$DateHeader;", "Lcom/laborbook/keep/screen/home/adapter/CashbookTransactionAdapter$CashbookItem$TableHeader;", "Lcom/laborbook/keep/screen/home/adapter/CashbookTransactionAdapter$CashbookItem$TransactionRow;", "keep_release"}, m2723k = 1, m2724mv = {2, 0, 0}, m2726xi = 48)
    public static abstract class CashbookItem {
        public /* synthetic */ CashbookItem(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* JADX INFO: compiled from: CashbookTransactionAdapter.kt */
        @Metadata(m2721d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, m2722d2 = {"Lcom/laborbook/keep/screen/home/adapter/CashbookTransactionAdapter$CashbookItem$TableHeader;", "Lcom/laborbook/keep/screen/home/adapter/CashbookTransactionAdapter$CashbookItem;", "<init>", "()V", "keep_release"}, m2723k = 1, m2724mv = {2, 0, 0}, m2726xi = 48)
        public static final class TableHeader extends CashbookItem {
            public static final TableHeader INSTANCE = new TableHeader();

            private TableHeader() {
                super(null);
            }
        }

        private CashbookItem() {
        }

        /* JADX INFO: compiled from: CashbookTransactionAdapter.kt */
        @Metadata(m2721d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\t\u0010\b\u001a\u00020\u0003HÆ\u0003J\u0013\u0010\t\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\n\u001a\u00020\u000b2\b\u0010\f\u001a\u0004\u0018\u00010\rHÖ\u0003J\t\u0010\u000e\u001a\u00020\u000fHÖ\u0001J\t\u0010\u0010\u001a\u00020\u0003HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007¨\u0006\u0011"}, m2722d2 = {"Lcom/laborbook/keep/screen/home/adapter/CashbookTransactionAdapter$CashbookItem$DateHeader;", "Lcom/laborbook/keep/screen/home/adapter/CashbookTransactionAdapter$CashbookItem;", "date", "", "<init>", "(Ljava/lang/String;)V", "getDate", "()Ljava/lang/String;", "component1", "copy", "equals", "", "other", "", "hashCode", "", InAppPurchaseConstants.METHOD_TO_STRING, "keep_release"}, m2723k = 1, m2724mv = {2, 0, 0}, m2726xi = 48)
        public static final /* data */ class DateHeader extends CashbookItem {
            private final String date;

            public static /* synthetic */ DateHeader copy$default(DateHeader dateHeader, String str, int i, Object obj) {
                if ((i & 1) != 0) {
                    str = dateHeader.date;
                }
                return dateHeader.copy(str);
            }

            /* JADX INFO: renamed from: component1, reason: from getter */
            public final String getDate() {
                return this.date;
            }

            public final DateHeader copy(String date) {
                Intrinsics.checkNotNullParameter(date, "date");
                return new DateHeader(date);
            }

            public boolean equals(Object other) {
                if (this == other) {
                    return true;
                }
                return (other instanceof DateHeader) && Intrinsics.areEqual(this.date, ((DateHeader) other).date);
            }

            public int hashCode() {
                return this.date.hashCode();
            }

            public String toString() {
                return "DateHeader(date=" + this.date + ')';
            }

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public DateHeader(String date) {
                super(null);
                Intrinsics.checkNotNullParameter(date, "date");
                this.date = date;
            }

            public final String getDate() {
                return this.date;
            }
        }

        /* JADX INFO: compiled from: CashbookTransactionAdapter.kt */
        @Metadata(m2721d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\t\u0010\b\u001a\u00020\u0003HÆ\u0003J\u0013\u0010\t\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\n\u001a\u00020\u000b2\b\u0010\f\u001a\u0004\u0018\u00010\rHÖ\u0003J\t\u0010\u000e\u001a\u00020\u000fHÖ\u0001J\t\u0010\u0010\u001a\u00020\u0011HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007¨\u0006\u0012"}, m2722d2 = {"Lcom/laborbook/keep/screen/home/adapter/CashbookTransactionAdapter$CashbookItem$TransactionRow;", "Lcom/laborbook/keep/screen/home/adapter/CashbookTransactionAdapter$CashbookItem;", "transaction", "Lcom/laborbook/expense/model/Transaction;", "<init>", "(Lcom/laborbook/expense/model/Transaction;)V", "getTransaction", "()Lcom/laborbook/expense/model/Transaction;", "component1", "copy", "equals", "", "other", "", "hashCode", "", InAppPurchaseConstants.METHOD_TO_STRING, "", "keep_release"}, m2723k = 1, m2724mv = {2, 0, 0}, m2726xi = 48)
        public static final /* data */ class TransactionRow extends CashbookItem {
            private final Transaction transaction;

            public static /* synthetic */ TransactionRow copy$default(TransactionRow transactionRow, Transaction transaction, int i, Object obj) {
                if ((i & 1) != 0) {
                    transaction = transactionRow.transaction;
                }
                return transactionRow.copy(transaction);
            }

            /* JADX INFO: renamed from: component1, reason: from getter */
            public final Transaction getTransaction() {
                return this.transaction;
            }

            public final TransactionRow copy(Transaction transaction) {
                Intrinsics.checkNotNullParameter(transaction, "transaction");
                return new TransactionRow(transaction);
            }

            public boolean equals(Object other) {
                if (this == other) {
                    return true;
                }
                return (other instanceof TransactionRow) && Intrinsics.areEqual(this.transaction, ((TransactionRow) other).transaction);
            }

            public int hashCode() {
                return this.transaction.hashCode();
            }

            public String toString() {
                return "TransactionRow(transaction=" + this.transaction + ')';
            }

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public TransactionRow(Transaction transaction) {
                super(null);
                Intrinsics.checkNotNullParameter(transaction, "transaction");
                this.transaction = transaction;
            }

            public final Transaction getTransaction() {
                return this.transaction;
            }
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemViewType(int position) {
        CashbookItem cashbookItem = this.items.get(position);
        if (cashbookItem instanceof CashbookItem.TableHeader) {
            return 0;
        }
        if (cashbookItem instanceof CashbookItem.DateHeader) {
            return 1;
        }
        if (cashbookItem instanceof CashbookItem.TransactionRow) {
            return 2;
        }
        throw new NoWhenBranchMatchedException();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup parent, int viewType) {
        Intrinsics.checkNotNullParameter(parent, "parent");
        if (viewType == 0) {
            ItemCashbookTableHeaderBinding itemCashbookTableHeaderBindingInflate = ItemCashbookTableHeaderBinding.inflate(LayoutInflater.from(parent.getContext()), parent, false);
            Intrinsics.checkNotNullExpressionValue(itemCashbookTableHeaderBindingInflate, "inflate(...)");
            return new TableHeaderViewHolder(this, itemCashbookTableHeaderBindingInflate);
        }
        if (viewType == 1) {
            ItemCashbookDateHeaderBinding itemCashbookDateHeaderBindingInflate = ItemCashbookDateHeaderBinding.inflate(LayoutInflater.from(parent.getContext()), parent, false);
            Intrinsics.checkNotNullExpressionValue(itemCashbookDateHeaderBindingInflate, "inflate(...)");
            return new DateHeaderViewHolder(this, itemCashbookDateHeaderBindingInflate);
        }
        ItemCashbookTransactionBinding itemCashbookTransactionBindingInflate = ItemCashbookTransactionBinding.inflate(LayoutInflater.from(parent.getContext()), parent, false);
        Intrinsics.checkNotNullExpressionValue(itemCashbookTransactionBindingInflate, "inflate(...)");
        return new TransactionViewHolder(this, itemCashbookTransactionBindingInflate);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onBindViewHolder(RecyclerView.ViewHolder holder, int position) {
        Intrinsics.checkNotNullParameter(holder, "holder");
        CashbookItem cashbookItem = this.items.get(position);
        if (cashbookItem instanceof CashbookItem.TableHeader) {
            return;
        }
        if (cashbookItem instanceof CashbookItem.DateHeader) {
            ((DateHeaderViewHolder) holder).bind((CashbookItem.DateHeader) cashbookItem);
        } else {
            if (!(cashbookItem instanceof CashbookItem.TransactionRow)) {
                throw new NoWhenBranchMatchedException();
            }
            ((TransactionViewHolder) holder).bind((CashbookItem.TransactionRow) cashbookItem);
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        return this.items.size();
    }

    public final void addTransactions(List<Transaction> transactions) {
        Intrinsics.checkNotNullParameter(transactions, "transactions");
        if (this.items.isEmpty()) {
            this.items.add(CashbookItem.TableHeader.INSTANCE);
            this.allItems.add(CashbookItem.TableHeader.INSTANCE);
        }
        for (Transaction transaction : transactions) {
            this.items.add(new CashbookItem.TransactionRow(transaction));
            this.allItems.add(new CashbookItem.TransactionRow(transaction));
        }
        notifyDataSetChanged();
    }

    public final List<Transaction> getAllTransactions() {
        List<CashbookItem> list = this.allItems;
        ArrayList arrayList = new ArrayList();
        for (Object obj : list) {
            if (obj instanceof CashbookItem.TransactionRow) {
                arrayList.add(obj);
            }
        }
        ArrayList arrayList2 = arrayList;
        ArrayList arrayList3 = new ArrayList(CollectionsKt.collectionSizeOrDefault(arrayList2, 10));
        Iterator it = arrayList2.iterator();
        while (it.hasNext()) {
            arrayList3.add(((CashbookItem.TransactionRow) it.next()).getTransaction());
        }
        return arrayList3;
    }

    public final void clear() {
        this.items.clear();
        this.allItems.clear();
        notifyDataSetChanged();
    }

    public final void filter(String query) {
        Intrinsics.checkNotNullParameter(query, "query");
        String str = query;
        if (str.length() == 0) {
            this.items.clear();
            this.items.addAll(this.allItems);
        } else {
            List<CashbookItem> list = this.allItems;
            ArrayList arrayList = new ArrayList();
            for (Object obj : list) {
                if (obj instanceof CashbookItem.TransactionRow) {
                    arrayList.add(obj);
                }
            }
            ArrayList arrayList2 = new ArrayList();
            for (Object obj2 : arrayList) {
                CashbookItem.TransactionRow transactionRow = (CashbookItem.TransactionRow) obj2;
                if (StringsKt.contains((CharSequence) transactionRow.getTransaction().getReason(), (CharSequence) str, true) || StringsKt.contains$default((CharSequence) String.valueOf((int) transactionRow.getTransaction().getAmount()), (CharSequence) str, false, 2, (Object) null)) {
                    arrayList2.add(obj2);
                }
            }
            this.items.clear();
            this.items.add(CashbookItem.TableHeader.INSTANCE);
            this.items.addAll(arrayList2);
        }
        notifyDataSetChanged();
    }

    /* JADX INFO: compiled from: CashbookTransactionAdapter.kt */
    @Metadata(m2721d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0004\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, m2722d2 = {"Lcom/laborbook/keep/screen/home/adapter/CashbookTransactionAdapter$TableHeaderViewHolder;", "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;", "binding", "Lcom/laborbook/keep/databinding/ItemCashbookTableHeaderBinding;", "<init>", "(Lcom/laborbook/keep/screen/home/adapter/CashbookTransactionAdapter;Lcom/laborbook/keep/databinding/ItemCashbookTableHeaderBinding;)V", "keep_release"}, m2723k = 1, m2724mv = {2, 0, 0}, m2726xi = 48)
    public final class TableHeaderViewHolder extends RecyclerView.ViewHolder {
        final /* synthetic */ CashbookTransactionAdapter this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public TableHeaderViewHolder(CashbookTransactionAdapter cashbookTransactionAdapter, ItemCashbookTableHeaderBinding binding) {
            super(binding.getRoot());
            Intrinsics.checkNotNullParameter(binding, "binding");
            this.this$0 = cashbookTransactionAdapter;
        }
    }

    /* JADX INFO: compiled from: CashbookTransactionAdapter.kt */
    @Metadata(m2721d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0086\u0004\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\u000e\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\tR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\n"}, m2722d2 = {"Lcom/laborbook/keep/screen/home/adapter/CashbookTransactionAdapter$DateHeaderViewHolder;", "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;", "binding", "Lcom/laborbook/keep/databinding/ItemCashbookDateHeaderBinding;", "<init>", "(Lcom/laborbook/keep/screen/home/adapter/CashbookTransactionAdapter;Lcom/laborbook/keep/databinding/ItemCashbookDateHeaderBinding;)V", "bind", "", "item", "Lcom/laborbook/keep/screen/home/adapter/CashbookTransactionAdapter$CashbookItem$DateHeader;", "keep_release"}, m2723k = 1, m2724mv = {2, 0, 0}, m2726xi = 48)
    public final class DateHeaderViewHolder extends RecyclerView.ViewHolder {
        private final ItemCashbookDateHeaderBinding binding;
        final /* synthetic */ CashbookTransactionAdapter this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public DateHeaderViewHolder(CashbookTransactionAdapter cashbookTransactionAdapter, ItemCashbookDateHeaderBinding binding) {
            super(binding.getRoot());
            Intrinsics.checkNotNullParameter(binding, "binding");
            this.this$0 = cashbookTransactionAdapter;
            this.binding = binding;
        }

        public final void bind(CashbookItem.DateHeader item) {
            Intrinsics.checkNotNullParameter(item, "item");
            this.binding.tvDate.setText(item.getDate());
        }
    }

    /* JADX INFO: compiled from: CashbookTransactionAdapter.kt */
    @Metadata(m2721d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0086\u0004\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\u000e\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\tR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\n"}, m2722d2 = {"Lcom/laborbook/keep/screen/home/adapter/CashbookTransactionAdapter$TransactionViewHolder;", "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;", "binding", "Lcom/laborbook/keep/databinding/ItemCashbookTransactionBinding;", "<init>", "(Lcom/laborbook/keep/screen/home/adapter/CashbookTransactionAdapter;Lcom/laborbook/keep/databinding/ItemCashbookTransactionBinding;)V", "bind", "", "item", "Lcom/laborbook/keep/screen/home/adapter/CashbookTransactionAdapter$CashbookItem$TransactionRow;", "keep_release"}, m2723k = 1, m2724mv = {2, 0, 0}, m2726xi = 48)
    public final class TransactionViewHolder extends RecyclerView.ViewHolder {
        private final ItemCashbookTransactionBinding binding;
        final /* synthetic */ CashbookTransactionAdapter this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public TransactionViewHolder(CashbookTransactionAdapter cashbookTransactionAdapter, ItemCashbookTransactionBinding binding) {
            super(binding.getRoot());
            Intrinsics.checkNotNullParameter(binding, "binding");
            this.this$0 = cashbookTransactionAdapter;
            this.binding = binding;
        }

        public final void bind(CashbookItem.TransactionRow item) {
            Intrinsics.checkNotNullParameter(item, "item");
            final Transaction transaction = item.getTransaction();
            boolean zAreEqual = Intrinsics.areEqual(transaction.getType(), "CREDIT");
            Context context = this.binding.getRoot().getContext();
            try {
                Date date = CashbookTransactionAdapter.isoFormat.parse(transaction.getDate());
                TextView textView = this.binding.tvDateDay;
                SimpleDateFormat simpleDateFormat = CashbookTransactionAdapter.dayFormat;
                Intrinsics.checkNotNull(date);
                textView.setText(simpleDateFormat.format(date));
                this.binding.tvDateWeekday.setText(CashbookTransactionAdapter.weekdayFormat.format(date));
            } catch (Exception unused) {
                this.binding.tvDateDay.setText("");
                this.binding.tvDateWeekday.setText("");
            }
            this.binding.tvReason.setText(transaction.getReason());
            String transactionMode = transaction.getTransactionMode();
            if (StringsKt.isBlank(transactionMode)) {
                String paymentMethod = transaction.getPaymentMethod();
                transactionMode = paymentMethod != null ? paymentMethod : "";
            }
            String str = transactionMode;
            if (!StringsKt.isBlank(str)) {
                this.binding.tvMode.setVisibility(0);
                this.binding.tvMode.setText(str);
            } else {
                this.binding.tvMode.setVisibility(8);
            }
            this.binding.tvAmount.setText("₹" + ((int) transaction.getAmount()));
            this.binding.tvAmount.setTextColor(ContextCompat.getColor(context, zAreEqual ? C3656R.color.green : C3656R.color.absent));
            LinearLayout root = this.binding.getRoot();
            final CashbookTransactionAdapter cashbookTransactionAdapter = this.this$0;
            root.setOnClickListener(new View.OnClickListener() { // from class: com.laborbook.keep.screen.home.adapter.CashbookTransactionAdapter$TransactionViewHolder$$ExternalSyntheticLambda0
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    CashbookTransactionAdapter.TransactionViewHolder.bind$lambda$1(cashbookTransactionAdapter, transaction, view);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void bind$lambda$1(CashbookTransactionAdapter this$0, Transaction txn, View view) {
            Intrinsics.checkNotNullParameter(this$0, "this$0");
            Intrinsics.checkNotNullParameter(txn, "$txn");
            this$0.onTransactionClick.invoke(txn);
        }
    }
}
