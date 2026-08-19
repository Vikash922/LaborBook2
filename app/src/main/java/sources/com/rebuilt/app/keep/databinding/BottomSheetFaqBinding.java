package com.rebuilt.app.keep.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.rebuilt.app.keep.C3656R;

/* JADX INFO: loaded from: classes3.dex */
public final class BottomSheetFaqBinding implements ViewBinding {
    private final LinearLayout rootView;
    public final TextView tvFaq1A;
    public final TextView tvFaq1Q;
    public final TextView tvFaq3A;
    public final TextView tvFaq3Q;
    public final TextView tvFaq4A;
    public final TextView tvFaq4Q;

    private BottomSheetFaqBinding(LinearLayout rootView, TextView tvFaq1A, TextView tvFaq1Q, TextView tvFaq3A, TextView tvFaq3Q, TextView tvFaq4A, TextView tvFaq4Q) {
        this.rootView = rootView;
        this.tvFaq1A = tvFaq1A;
        this.tvFaq1Q = tvFaq1Q;
        this.tvFaq3A = tvFaq3A;
        this.tvFaq3Q = tvFaq3Q;
        this.tvFaq4A = tvFaq4A;
        this.tvFaq4Q = tvFaq4Q;
    }

    @Override // androidx.viewbinding.ViewBinding
    public LinearLayout getRoot() {
        return this.rootView;
    }

    public static BottomSheetFaqBinding inflate(LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    public static BottomSheetFaqBinding inflate(LayoutInflater inflater, ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(C3656R.layout.bottom_sheet_faq, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public static BottomSheetFaqBinding bind(View rootView) {
        int i = C3656R.id.tv_faq1_a;
        TextView textView = (TextView) ViewBindings.findChildViewById(rootView, i);
        if (textView != null) {
            i = C3656R.id.tv_faq1_q;
            TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, i);
            if (textView2 != null) {
                i = C3656R.id.tv_faq3_a;
                TextView textView3 = (TextView) ViewBindings.findChildViewById(rootView, i);
                if (textView3 != null) {
                    i = C3656R.id.tv_faq3_q;
                    TextView textView4 = (TextView) ViewBindings.findChildViewById(rootView, i);
                    if (textView4 != null) {
                        i = C3656R.id.tv_faq4_a;
                        TextView textView5 = (TextView) ViewBindings.findChildViewById(rootView, i);
                        if (textView5 != null) {
                            i = C3656R.id.tv_faq4_q;
                            TextView textView6 = (TextView) ViewBindings.findChildViewById(rootView, i);
                            if (textView6 != null) {
                                return new BottomSheetFaqBinding((LinearLayout) rootView, textView, textView2, textView3, textView4, textView5, textView6);
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i)));
    }
}
