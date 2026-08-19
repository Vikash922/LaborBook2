package com.rebuilt.app.keep.screen.premium;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.recyclerview.widget.RecyclerView;
import com.itextpdf.styledxmlparser.css.CommonCssConstants;
import com.rebuilt.app.keep.databinding.ItemSubscriptionPlanBinding;
import com.rebuilt.app.keep.model.subscription.SubscriptionPlan;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: SubscriptionPlanAdapter.kt */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(m2721d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\b\u0018\u00002\f\u0012\b\u0012\u00060\u0002R\u00020\u00000\u0001:\u0001\u0016B9\u0012\f\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0007\u0012\u0018\u0010\b\u001a\u0014\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\n0\t¢\u0006\u0004\b\u000b\u0010\fJ\u001c\u0010\r\u001a\u00060\u0002R\u00020\u00002\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u0007H\u0016J\u001c\u0010\u0011\u001a\u00020\n2\n\u0010\u0012\u001a\u00060\u0002R\u00020\u00002\u0006\u0010\u0013\u001a\u00020\u0007H\u0016J\b\u0010\u0014\u001a\u00020\u0007H\u0016J\u000e\u0010\u0015\u001a\u00020\n2\u0006\u0010\u0013\u001a\u00020\u0007R\u0014\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u000e¢\u0006\u0002\n\u0000R \u0010\b\u001a\u0014\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\n0\tX\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0017"}, m2722d2 = {"Lcom/laborbook/keep/screen/premium/SubscriptionPlanAdapter;", "Landroidx/recyclerview/widget/RecyclerView$Adapter;", "Lcom/laborbook/keep/screen/premium/SubscriptionPlanAdapter$PlanViewHolder;", "plans", "", "Lcom/laborbook/keep/model/subscription/SubscriptionPlan;", "selectedPosition", "", "onPlanSelected", "Lkotlin/Function2;", "", "<init>", "(Ljava/util/List;ILkotlin/jvm/functions/Function2;)V", "onCreateViewHolder", "parent", "Landroid/view/ViewGroup;", "viewType", "onBindViewHolder", "holder", CommonCssConstants.POSITION, "getItemCount", "updateSelection", "PlanViewHolder", "keep_release"}, m2723k = 1, m2724mv = {2, 0, 0}, m2726xi = 48)
public final class SubscriptionPlanAdapter extends RecyclerView.Adapter<PlanViewHolder> {
    private final Function2<SubscriptionPlan, Integer, Unit> onPlanSelected;
    private final List<SubscriptionPlan> plans;
    private int selectedPosition;

    public /* synthetic */ SubscriptionPlanAdapter(List list, int i, Function2 function2, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(list, (i2 & 2) != 0 ? 0 : i, function2);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public SubscriptionPlanAdapter(List<SubscriptionPlan> plans, int i, Function2<? super SubscriptionPlan, ? super Integer, Unit> onPlanSelected) {
        Intrinsics.checkNotNullParameter(plans, "plans");
        Intrinsics.checkNotNullParameter(onPlanSelected, "onPlanSelected");
        this.plans = plans;
        this.selectedPosition = i;
        this.onPlanSelected = onPlanSelected;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public PlanViewHolder onCreateViewHolder(ViewGroup parent, int viewType) {
        Intrinsics.checkNotNullParameter(parent, "parent");
        ItemSubscriptionPlanBinding itemSubscriptionPlanBindingInflate = ItemSubscriptionPlanBinding.inflate(LayoutInflater.from(parent.getContext()), parent, false);
        Intrinsics.checkNotNullExpressionValue(itemSubscriptionPlanBindingInflate, "inflate(...)");
        return new PlanViewHolder(this, itemSubscriptionPlanBindingInflate);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onBindViewHolder(PlanViewHolder holder, int position) {
        Intrinsics.checkNotNullParameter(holder, "holder");
        holder.bind(this.plans.get(position), position == this.selectedPosition);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        return this.plans.size();
    }

    public final void updateSelection(int position) {
        int i = this.selectedPosition;
        this.selectedPosition = position;
        notifyItemChanged(i);
        notifyItemChanged(this.selectedPosition);
    }

    /* JADX INFO: compiled from: SubscriptionPlanAdapter.kt */
    @Metadata(m2721d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\b\u0086\u0004\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\u0016\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000bR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\f"}, m2722d2 = {"Lcom/laborbook/keep/screen/premium/SubscriptionPlanAdapter$PlanViewHolder;", "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;", "binding", "Lcom/laborbook/keep/databinding/ItemSubscriptionPlanBinding;", "<init>", "(Lcom/laborbook/keep/screen/premium/SubscriptionPlanAdapter;Lcom/laborbook/keep/databinding/ItemSubscriptionPlanBinding;)V", "bind", "", "plan", "Lcom/laborbook/keep/model/subscription/SubscriptionPlan;", "isSelected", "", "keep_release"}, m2723k = 1, m2724mv = {2, 0, 0}, m2726xi = 48)
    public final class PlanViewHolder extends RecyclerView.ViewHolder {
        private final ItemSubscriptionPlanBinding binding;
        final /* synthetic */ SubscriptionPlanAdapter this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public PlanViewHolder(SubscriptionPlanAdapter subscriptionPlanAdapter, ItemSubscriptionPlanBinding binding) {
            super(binding.getRoot());
            Intrinsics.checkNotNullParameter(binding, "binding");
            this.this$0 = subscriptionPlanAdapter;
            this.binding = binding;
        }

        /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
        /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
        /* JADX WARN: Removed duplicated region for block: B:30:0x00e9  */
        /* JADX WARN: Removed duplicated region for block: B:34:0x00f3  */
        /* JADX WARN: Removed duplicated region for block: B:38:0x00fc  */
        /* JADX WARN: Removed duplicated region for block: B:39:0x00ff  */
        /* JADX WARN: Removed duplicated region for block: B:61:0x0141  */
        /* JADX WARN: Removed duplicated region for block: B:65:0x014a  */
        /* JADX WARN: Removed duplicated region for block: B:69:0x0153  */
        /* JADX WARN: Removed duplicated region for block: B:70:0x0155  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final void bind(final com.rebuilt.app.keep.model.subscription.SubscriptionPlan r17, boolean r18) {
            /*
                Method dump skipped, instruction units count: 508
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.rebuilt.app.keep.screen.premium.SubscriptionPlanAdapter.PlanViewHolder.bind(com.rebuilt.app.keep.model.subscription.SubscriptionPlan, boolean):void");
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void bind$lambda$2$lambda$1(PlanViewHolder this$0, SubscriptionPlanAdapter this$1, SubscriptionPlan plan, View view) {
            Intrinsics.checkNotNullParameter(this$0, "this$0");
            Intrinsics.checkNotNullParameter(this$1, "this$1");
            Intrinsics.checkNotNullParameter(plan, "$plan");
            if (this$0.getAdapterPosition() != -1) {
                this$1.onPlanSelected.invoke(plan, Integer.valueOf(this$0.getAdapterPosition()));
                this$1.updateSelection(this$0.getAdapterPosition());
            }
        }
    }
}
