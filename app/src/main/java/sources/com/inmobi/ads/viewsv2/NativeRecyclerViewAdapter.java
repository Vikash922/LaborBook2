package com.inmobi.ads.viewsv2;

import android.util.SparseArray;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.recyclerview.widget.RecyclerView;
import com.inmobi.media.C2800H7;
import com.inmobi.media.C2920P7;
import com.inmobi.media.C3120d8;
import com.inmobi.media.C3195i8;
import com.inmobi.media.InterfaceC3240l8;
import com.itextpdf.styledxmlparser.css.CommonCssConstants;
import java.lang.ref.WeakReference;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(m2721d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\b\u0018\u00002\f\u0012\b\u0012\u00060\u0002R\u00020\u00000\u00012\u00020\u0003:\u0001\u0002B\u0019\b\u0000\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\b\u0010\tJ#\u0010\u000e\u001a\u00060\u0002R\u00020\u00002\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\r\u001a\u00020\fH\u0016¢\u0006\u0004\b\u000e\u0010\u000fJ#\u0010\u0013\u001a\u00020\u00122\n\u0010\u0010\u001a\u00060\u0002R\u00020\u00002\u0006\u0010\u0011\u001a\u00020\fH\u0016¢\u0006\u0004\b\u0013\u0010\u0014J\u001b\u0010\u0015\u001a\u00020\u00122\n\u0010\u0010\u001a\u00060\u0002R\u00020\u0000H\u0016¢\u0006\u0004\b\u0015\u0010\u0016J)\u0010\u0019\u001a\u0004\u0018\u00010\n2\u0006\u0010\u0011\u001a\u00020\f2\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\u0018\u001a\u00020\u0017H\u0016¢\u0006\u0004\b\u0019\u0010\u001aJ\u000f\u0010\u001b\u001a\u00020\fH\u0016¢\u0006\u0004\b\u001b\u0010\u001cJ\u000f\u0010\u001d\u001a\u00020\u0012H\u0016¢\u0006\u0004\b\u001d\u0010\u001e¨\u0006\u001f"}, m2722d2 = {"Lcom/inmobi/ads/viewsv2/NativeRecyclerViewAdapter;", "Landroidx/recyclerview/widget/RecyclerView$Adapter;", "Lcom/inmobi/media/i8;", "Lcom/inmobi/media/l8;", "Lcom/inmobi/media/P7;", "nativeDataModel", "Lcom/inmobi/media/d8;", "nativeLayoutInflater", "<init>", "(Lcom/inmobi/media/P7;Lcom/inmobi/media/d8;)V", "Landroid/view/ViewGroup;", "parent", "", "viewType", "onCreateViewHolder", "(Landroid/view/ViewGroup;I)Lcom/inmobi/media/i8;", "holder", CommonCssConstants.POSITION, "", "onBindViewHolder", "(Lcom/inmobi/media/i8;I)V", "onViewRecycled", "(Lcom/inmobi/media/i8;)V", "Lcom/inmobi/media/H7;", "pageContainerAsset", "buildScrollableView", "(ILandroid/view/ViewGroup;Lcom/inmobi/media/H7;)Landroid/view/ViewGroup;", "getItemCount", "()I", "destroy", "()V", "media_release"}, m2723k = 1, m2724mv = {1, 9, 0}, m2726xi = 48)
public final class NativeRecyclerViewAdapter extends RecyclerView.Adapter<C3195i8> implements InterfaceC3240l8 {

    /* JADX INFO: renamed from: a */
    public C2920P7 f800a;

    /* JADX INFO: renamed from: b */
    public C3120d8 f801b;

    /* JADX INFO: renamed from: c */
    public final SparseArray f802c;

    public NativeRecyclerViewAdapter(C2920P7 nativeDataModel, C3120d8 nativeLayoutInflater) {
        Intrinsics.checkNotNullParameter(nativeDataModel, "nativeDataModel");
        Intrinsics.checkNotNullParameter(nativeLayoutInflater, "nativeLayoutInflater");
        this.f800a = nativeDataModel;
        this.f801b = nativeLayoutInflater;
        this.f802c = new SparseArray();
    }

    public ViewGroup buildScrollableView(int position, ViewGroup parent, C2800H7 pageContainerAsset) {
        C3120d8 c3120d8;
        Intrinsics.checkNotNullParameter(parent, "parent");
        Intrinsics.checkNotNullParameter(pageContainerAsset, "pageContainerAsset");
        C3120d8 c3120d82 = this.f801b;
        ViewGroup container = c3120d82 != null ? c3120d82.m2064a(parent, pageContainerAsset) : null;
        if (container != null && (c3120d8 = this.f801b) != null) {
            Intrinsics.checkNotNullParameter(container, "container");
            Intrinsics.checkNotNullParameter(parent, "parent");
            Intrinsics.checkNotNullParameter(pageContainerAsset, "root");
            c3120d8.m2068b(container, pageContainerAsset);
        }
        return container;
    }

    @Override // com.inmobi.media.InterfaceC3240l8
    public void destroy() {
        C2920P7 c2920p7 = this.f800a;
        if (c2920p7 != null) {
            c2920p7.f1387l = null;
            c2920p7.f1382g = null;
        }
        this.f800a = null;
        this.f801b = null;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        C2920P7 c2920p7 = this.f800a;
        if (c2920p7 != null) {
            return c2920p7.m1498d();
        }
        return 0;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onBindViewHolder(C3195i8 holder, int position) {
        View viewBuildScrollableView;
        Intrinsics.checkNotNullParameter(holder, "holder");
        C2920P7 c2920p7 = this.f800a;
        C2800H7 c2800h7M1491b = c2920p7 != null ? c2920p7.m1491b(position) : null;
        WeakReference weakReference = (WeakReference) this.f802c.get(position);
        if (c2800h7M1491b != null) {
            if (weakReference == null || (viewBuildScrollableView = (View) weakReference.get()) == null) {
                viewBuildScrollableView = buildScrollableView(position, holder.f2179a, c2800h7M1491b);
            }
            if (viewBuildScrollableView != null) {
                if (position != getItemCount() - 1) {
                    holder.f2179a.setPadding(0, 0, 16, 0);
                }
                holder.f2179a.addView(viewBuildScrollableView);
                this.f802c.put(position, new WeakReference(viewBuildScrollableView));
            }
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public C3195i8 onCreateViewHolder(ViewGroup parent, int viewType) {
        Intrinsics.checkNotNullParameter(parent, "parent");
        return new C3195i8(new FrameLayout(parent.getContext()));
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onViewRecycled(C3195i8 holder) {
        Intrinsics.checkNotNullParameter(holder, "holder");
        holder.f2179a.removeAllViews();
        super.onViewRecycled(holder);
    }
}
