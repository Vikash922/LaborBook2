package com.laborbook.keep.screen.premium;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import androidx.recyclerview.widget.RecyclerView;
import com.boilerplate.uikit.views.ExtentionsKt;
import com.itextpdf.styledxmlparser.css.CommonCssConstants;
import com.laborbook.keep.databinding.ItemUpiAppBinding;
import com.laborbook.keep.screen.premium.UpiAppAdapter;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;

/* JADX INFO: compiled from: UpiAppAdapter.kt */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(m2721d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0006\u0018\u00002\f\u0012\b\u0012\u00060\u0002R\u00020\u00000\u0001:\u0001\u0016B1\u0012\f\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0012\u0010\b\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\n0\t¢\u0006\u0004\b\u000b\u0010\fJ\u001c\u0010\r\u001a\u00060\u0002R\u00020\u00002\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u0011H\u0016J\u001c\u0010\u0012\u001a\u00020\n2\n\u0010\u0013\u001a\u00060\u0002R\u00020\u00002\u0006\u0010\u0014\u001a\u00020\u0011H\u0016J\b\u0010\u0015\u001a\u00020\u0011H\u0016R\u0014\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u000e¢\u0006\u0002\n\u0000R\u001a\u0010\b\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\n0\tX\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0017"}, m2722d2 = {"Lcom/laborbook/keep/screen/premium/UpiAppAdapter;", "Landroidx/recyclerview/widget/RecyclerView$Adapter;", "Lcom/laborbook/keep/screen/premium/UpiAppAdapter$UpiAppViewHolder;", "installedApps", "", "Lcom/laborbook/keep/screen/premium/InstalledUpiApp;", "selectedPackageName", "", "onUpiSelected", "Lkotlin/Function1;", "", "<init>", "(Ljava/util/List;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V", "onCreateViewHolder", "parent", "Landroid/view/ViewGroup;", "viewType", "", "onBindViewHolder", "holder", CommonCssConstants.POSITION, "getItemCount", "UpiAppViewHolder", "keep_release"}, m2723k = 1, m2724mv = {2, 0, 0}, m2726xi = 48)
public final class UpiAppAdapter extends RecyclerView.Adapter<UpiAppViewHolder> {
    private final List<InstalledUpiApp> installedApps;
    private final Function1<InstalledUpiApp, Unit> onUpiSelected;
    private String selectedPackageName;

    /* JADX WARN: Multi-variable type inference failed */
    public UpiAppAdapter(List<InstalledUpiApp> installedApps, String selectedPackageName, Function1<? super InstalledUpiApp, Unit> onUpiSelected) {
        Intrinsics.checkNotNullParameter(installedApps, "installedApps");
        Intrinsics.checkNotNullParameter(selectedPackageName, "selectedPackageName");
        Intrinsics.checkNotNullParameter(onUpiSelected, "onUpiSelected");
        this.installedApps = installedApps;
        this.selectedPackageName = selectedPackageName;
        this.onUpiSelected = onUpiSelected;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public UpiAppViewHolder onCreateViewHolder(ViewGroup parent, int viewType) {
        Intrinsics.checkNotNullParameter(parent, "parent");
        ItemUpiAppBinding itemUpiAppBindingInflate = ItemUpiAppBinding.inflate(LayoutInflater.from(parent.getContext()), parent, false);
        Intrinsics.checkNotNullExpressionValue(itemUpiAppBindingInflate, "inflate(...)");
        return new UpiAppViewHolder(this, itemUpiAppBindingInflate);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onBindViewHolder(UpiAppViewHolder holder, int position) {
        Intrinsics.checkNotNullParameter(holder, "holder");
        holder.bind(this.installedApps.get(position));
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        return this.installedApps.size();
    }

    /* JADX INFO: compiled from: UpiAppAdapter.kt */
    @Metadata(m2721d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0086\u0004\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\u000e\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\tR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\n"}, m2722d2 = {"Lcom/laborbook/keep/screen/premium/UpiAppAdapter$UpiAppViewHolder;", "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;", "binding", "Lcom/laborbook/keep/databinding/ItemUpiAppBinding;", "<init>", "(Lcom/laborbook/keep/screen/premium/UpiAppAdapter;Lcom/laborbook/keep/databinding/ItemUpiAppBinding;)V", "bind", "", "upiApp", "Lcom/laborbook/keep/screen/premium/InstalledUpiApp;", "keep_release"}, m2723k = 1, m2724mv = {2, 0, 0}, m2726xi = 48)
    public final class UpiAppViewHolder extends RecyclerView.ViewHolder {
        private final ItemUpiAppBinding binding;
        final /* synthetic */ UpiAppAdapter this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public UpiAppViewHolder(UpiAppAdapter upiAppAdapter, ItemUpiAppBinding binding) {
            super(binding.getRoot());
            Intrinsics.checkNotNullParameter(binding, "binding");
            this.this$0 = upiAppAdapter;
            this.binding = binding;
        }

        public final void bind(final InstalledUpiApp upiApp) {
            Intrinsics.checkNotNullParameter(upiApp, "upiApp");
            this.binding.getRoot().getContext();
            ItemUpiAppBinding itemUpiAppBinding = this.binding;
            final UpiAppAdapter upiAppAdapter = this.this$0;
            itemUpiAppBinding.tvUpiName.setText(upiApp.getDisplayName());
            if (upiApp.isInstalled() && upiApp.getIcon() != null) {
                itemUpiAppBinding.ivUpiIcon.setVisibility(0);
                itemUpiAppBinding.tvUpiLetter.setVisibility(8);
                itemUpiAppBinding.ivUpiIcon.setImageDrawable(upiApp.getIcon());
            } else {
                itemUpiAppBinding.ivUpiIcon.setVisibility(8);
                itemUpiAppBinding.tvUpiLetter.setVisibility(0);
                Character chFirstOrNull = StringsKt.firstOrNull(upiApp.getDisplayName());
                itemUpiAppBinding.tvUpiLetter.setText(String.valueOf(chFirstOrNull != null ? Character.toUpperCase(chFirstOrNull.charValue()) : '?'));
            }
            if (Intrinsics.areEqual(upiApp.getPackageName(), upiAppAdapter.selectedPackageName) && upiApp.isInstalled()) {
                ImageView ivSelected = itemUpiAppBinding.ivSelected;
                Intrinsics.checkNotNullExpressionValue(ivSelected, "ivSelected");
                ExtentionsKt.show$default(ivSelected, 0L, null, 3, null);
            } else {
                ImageView ivSelected2 = itemUpiAppBinding.ivSelected;
                Intrinsics.checkNotNullExpressionValue(ivSelected2, "ivSelected");
                ExtentionsKt.hide$default(ivSelected2, 0L, null, 3, null);
            }
            itemUpiAppBinding.getRoot().setEnabled(upiApp.isInstalled());
            itemUpiAppBinding.getRoot().setAlpha(upiApp.isInstalled() ? 1.0f : 0.5f);
            itemUpiAppBinding.getRoot().setOnClickListener(new View.OnClickListener() { // from class: com.laborbook.keep.screen.premium.UpiAppAdapter$UpiAppViewHolder$$ExternalSyntheticLambda0
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    UpiAppAdapter.UpiAppViewHolder.bind$lambda$3$lambda$2(upiApp, upiAppAdapter, view);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void bind$lambda$3$lambda$2(InstalledUpiApp upiApp, UpiAppAdapter this$0, View view) {
            int i;
            Intrinsics.checkNotNullParameter(upiApp, "$upiApp");
            Intrinsics.checkNotNullParameter(this$0, "this$0");
            if (upiApp.isInstalled()) {
                String str = this$0.selectedPackageName;
                this$0.selectedPackageName = upiApp.getPackageName();
                Iterator it = this$0.installedApps.iterator();
                int i2 = 0;
                int i3 = 0;
                while (true) {
                    i = -1;
                    if (!it.hasNext()) {
                        i3 = -1;
                        break;
                    } else if (Intrinsics.areEqual(((InstalledUpiApp) it.next()).getPackageName(), str)) {
                        break;
                    } else {
                        i3++;
                    }
                }
                this$0.notifyItemChanged(i3);
                Iterator it2 = this$0.installedApps.iterator();
                while (true) {
                    if (!it2.hasNext()) {
                        break;
                    }
                    if (Intrinsics.areEqual(((InstalledUpiApp) it2.next()).getPackageName(), this$0.selectedPackageName)) {
                        i = i2;
                        break;
                    }
                    i2++;
                }
                this$0.notifyItemChanged(i);
                this$0.onUpiSelected.invoke(upiApp);
            }
        }
    }
}
