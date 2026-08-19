package com.rebuilt.app.expense.screen.home.decorator;

import android.graphics.Canvas;
import android.view.View;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.itextpdf.styledxmlparser.css.CommonCssConstants;
import com.itextpdf.svg.SvgConstants;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: TransactionStickyHeaderItemDecoration.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(m2721d1 = {"\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\b\u0018\u00002\u00020\u0001BO\u0012#\u0010\u0002\u001a\u001f\u0012\u0013\u0012\u00110\u0004¢\u0006\f\b\u0005\u0012\b\b\u0006\u0012\u0004\b\b(\u0007\u0012\u0006\u0012\u0004\u0018\u00010\b0\u0003\u0012!\u0010\t\u001a\u001d\u0012\u0013\u0012\u00110\u0004¢\u0006\f\b\u0005\u0012\b\b\u0006\u0012\u0004\b\b(\u0007\u0012\u0004\u0012\u00020\n0\u0003¢\u0006\u0004\b\u000b\u0010\fJ \u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u0014H\u0016J\u0010\u0010\u0015\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0004H\u0002J\u001a\u0010\u0016\u001a\u0004\u0018\u00010\b2\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0017\u001a\u00020\u0004H\u0002J\"\u0010\u0018\u001a\u00020\u00042\b\u0010\u0019\u001a\u0004\u0018\u00010\b2\u0006\u0010\u001a\u001a\u00020\b2\u0006\u0010\u001b\u001a\u00020\bH\u0002R+\u0010\u0002\u001a\u001f\u0012\u0013\u0012\u00110\u0004¢\u0006\f\b\u0005\u0012\b\b\u0006\u0012\u0004\b\b(\u0007\u0012\u0006\u0012\u0004\u0018\u00010\b0\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R)\u0010\t\u001a\u001d\u0012\u0013\u0012\u00110\u0004¢\u0006\f\b\u0005\u0012\b\b\u0006\u0012\u0004\b\b(\u0007\u0012\u0004\u0012\u00020\n0\u0003X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u001c"}, m2722d2 = {"Lcom/laborbook/expense/screen/home/decorator/TransactionStickyHeaderItemDecoration;", "Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;", "getHeaderView", "Lkotlin/Function1;", "", "Lkotlin/ParameterName;", "name", CommonCssConstants.POSITION, "Landroid/view/View;", "isHeader", "", "<init>", "(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V", "onDrawOver", "", SvgConstants.Attributes.PATH_DATA_REL_CURVE_TO, "Landroid/graphics/Canvas;", "parent", "Landroidx/recyclerview/widget/RecyclerView;", "state", "Landroidx/recyclerview/widget/RecyclerView$State;", "getStickyHeaderPosition", "getNextHeaderView", "firstVisibleItemPosition", "getHeaderOffset", "nextHeaderView", "topChild", "headerView", "expense_release"}, m2723k = 1, m2724mv = {2, 0, 0}, m2726xi = 48)
public final class TransactionStickyHeaderItemDecoration extends RecyclerView.ItemDecoration {
    private final Function1<Integer, View> getHeaderView;
    private final Function1<Integer, Boolean> isHeader;

    /* JADX WARN: Multi-variable type inference failed */
    public TransactionStickyHeaderItemDecoration(Function1<? super Integer, ? extends View> getHeaderView, Function1<? super Integer, Boolean> isHeader) {
        Intrinsics.checkNotNullParameter(getHeaderView, "getHeaderView");
        Intrinsics.checkNotNullParameter(isHeader, "isHeader");
        this.getHeaderView = getHeaderView;
        this.isHeader = isHeader;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.ItemDecoration
    public void onDrawOver(Canvas c, RecyclerView parent, RecyclerView.State state) {
        int iFindFirstVisibleItemPosition;
        int stickyHeaderPosition;
        View viewInvoke;
        RecyclerView.ViewHolder viewHolderFindViewHolderForAdapterPosition;
        View view;
        Intrinsics.checkNotNullParameter(c, "c");
        Intrinsics.checkNotNullParameter(parent, "parent");
        Intrinsics.checkNotNullParameter(state, "state");
        RecyclerView.LayoutManager layoutManager = parent.getLayoutManager();
        LinearLayoutManager linearLayoutManager = layoutManager instanceof LinearLayoutManager ? (LinearLayoutManager) layoutManager : null;
        if (linearLayoutManager == null || (iFindFirstVisibleItemPosition = linearLayoutManager.findFirstVisibleItemPosition()) == -1 || (stickyHeaderPosition = getStickyHeaderPosition(iFindFirstVisibleItemPosition)) == -1 || (viewInvoke = this.getHeaderView.invoke(Integer.valueOf(stickyHeaderPosition))) == null || (viewHolderFindViewHolderForAdapterPosition = parent.findViewHolderForAdapterPosition(iFindFirstVisibleItemPosition)) == null || (view = viewHolderFindViewHolderForAdapterPosition.itemView) == null) {
            return;
        }
        viewInvoke.measure(View.MeasureSpec.makeMeasureSpec(parent.getWidth(), 1073741824), View.MeasureSpec.makeMeasureSpec(parent.getHeight(), Integer.MIN_VALUE));
        viewInvoke.layout(0, 0, viewInvoke.getMeasuredWidth(), viewInvoke.getMeasuredHeight());
        int headerOffset = getHeaderOffset(getNextHeaderView(parent, iFindFirstVisibleItemPosition), view, viewInvoke);
        c.save();
        c.translate(0.0f, headerOffset);
        viewInvoke.draw(c);
        c.restore();
    }

    private final int getStickyHeaderPosition(int position) {
        while (-1 < position) {
            if (this.isHeader.invoke(Integer.valueOf(position)).booleanValue()) {
                return position;
            }
            position--;
        }
        return -1;
    }

    private final View getNextHeaderView(RecyclerView parent, int firstVisibleItemPosition) {
        int childCount = parent.getChildCount();
        for (int i = firstVisibleItemPosition + 1; i < childCount; i++) {
            int childAdapterPosition = parent.getChildAdapterPosition(parent.getChildAt(i));
            if (this.isHeader.invoke(Integer.valueOf(childAdapterPosition)).booleanValue()) {
                RecyclerView.ViewHolder viewHolderFindViewHolderForAdapterPosition = parent.findViewHolderForAdapterPosition(childAdapterPosition);
                if (viewHolderFindViewHolderForAdapterPosition != null) {
                    return viewHolderFindViewHolderForAdapterPosition.itemView;
                }
                return null;
            }
        }
        return null;
    }

    private final int getHeaderOffset(View nextHeaderView, View topChild, View headerView) {
        if (nextHeaderView == null || topChild.getBottom() >= nextHeaderView.getTop() - headerView.getHeight()) {
            return 0;
        }
        return nextHeaderView.getTop() - headerView.getHeight();
    }
}
