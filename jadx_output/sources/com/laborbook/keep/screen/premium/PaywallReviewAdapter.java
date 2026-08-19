package com.laborbook.keep.screen.premium;

import android.view.LayoutInflater;
import android.view.ViewGroup;
import androidx.recyclerview.widget.RecyclerView;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.itextpdf.styledxmlparser.css.CommonCssConstants;
import com.laborbook.keep.databinding.ItemPaywallReviewBinding;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.RangesKt;
import kotlin.text.StringsKt;

/* JADX INFO: compiled from: PaywallReviewAdapter.kt */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(m2721d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0005\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0001\u0012B\u0015\u0012\f\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004¢\u0006\u0004\b\u0006\u0010\u0007J\u0018\u0010\b\u001a\u00020\u00022\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\fH\u0016J\u0018\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u00022\u0006\u0010\u0010\u001a\u00020\fH\u0016J\b\u0010\u0011\u001a\u00020\fH\u0016R\u0014\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0013"}, m2722d2 = {"Lcom/laborbook/keep/screen/premium/PaywallReviewAdapter;", "Landroidx/recyclerview/widget/RecyclerView$Adapter;", "Lcom/laborbook/keep/screen/premium/PaywallReviewAdapter$ReviewViewHolder;", FirebaseAnalytics.Param.ITEMS, "", "Lcom/laborbook/keep/screen/premium/PaywallReviewItem;", "<init>", "(Ljava/util/List;)V", "onCreateViewHolder", "parent", "Landroid/view/ViewGroup;", "viewType", "", "onBindViewHolder", "", "holder", CommonCssConstants.POSITION, "getItemCount", "ReviewViewHolder", "keep_release"}, m2723k = 1, m2724mv = {2, 0, 0}, m2726xi = 48)
public final class PaywallReviewAdapter extends RecyclerView.Adapter<ReviewViewHolder> {
    private final List<PaywallReviewItem> items;

    public PaywallReviewAdapter(List<PaywallReviewItem> items) {
        Intrinsics.checkNotNullParameter(items, "items");
        this.items = items;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public ReviewViewHolder onCreateViewHolder(ViewGroup parent, int viewType) {
        Intrinsics.checkNotNullParameter(parent, "parent");
        ItemPaywallReviewBinding itemPaywallReviewBindingInflate = ItemPaywallReviewBinding.inflate(LayoutInflater.from(parent.getContext()), parent, false);
        Intrinsics.checkNotNullExpressionValue(itemPaywallReviewBindingInflate, "inflate(...)");
        return new ReviewViewHolder(itemPaywallReviewBindingInflate);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onBindViewHolder(ReviewViewHolder holder, int position) {
        Intrinsics.checkNotNullParameter(holder, "holder");
        holder.bind(this.items.get(position));
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        return this.items.size();
    }

    /* JADX INFO: compiled from: PaywallReviewAdapter.kt */
    @Metadata(m2721d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\u000e\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\tR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\n"}, m2722d2 = {"Lcom/laborbook/keep/screen/premium/PaywallReviewAdapter$ReviewViewHolder;", "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;", "binding", "Lcom/laborbook/keep/databinding/ItemPaywallReviewBinding;", "<init>", "(Lcom/laborbook/keep/databinding/ItemPaywallReviewBinding;)V", "bind", "", "item", "Lcom/laborbook/keep/screen/premium/PaywallReviewItem;", "keep_release"}, m2723k = 1, m2724mv = {2, 0, 0}, m2726xi = 48)
    public static final class ReviewViewHolder extends RecyclerView.ViewHolder {
        private final ItemPaywallReviewBinding binding;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public ReviewViewHolder(ItemPaywallReviewBinding binding) {
            super(binding.getRoot());
            Intrinsics.checkNotNullParameter(binding, "binding");
            this.binding = binding;
        }

        public final void bind(PaywallReviewItem item) {
            Intrinsics.checkNotNullParameter(item, "item");
            this.binding.tvReviewName.setText(item.getName());
            this.binding.tvReviewText.setText(item.getReviewText());
            this.binding.tvReviewStars.setText(StringsKt.repeat("★", RangesKt.coerceIn(item.getRatingStars(), 1, 5)));
            Integer avatarResId = item.getAvatarResId();
            if (avatarResId != null) {
                this.binding.ivReviewAvatar.setImageResource(avatarResId.intValue());
            }
        }
    }
}
