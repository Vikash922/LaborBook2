package com.laborbook.keep.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.laborbook.keep.C3656R;

/* JADX INFO: loaded from: classes3.dex */
public final class CoachMarkSimpleBinding implements ViewBinding {
    public final TextView btnGotIt;
    public final LinearLayout llCoachContent;
    private final LinearLayout rootView;
    public final TextView tvDescription;
    public final TextView tvTitle;

    private CoachMarkSimpleBinding(LinearLayout rootView, TextView btnGotIt, LinearLayout llCoachContent, TextView tvDescription, TextView tvTitle) {
        this.rootView = rootView;
        this.btnGotIt = btnGotIt;
        this.llCoachContent = llCoachContent;
        this.tvDescription = tvDescription;
        this.tvTitle = tvTitle;
    }

    @Override // androidx.viewbinding.ViewBinding
    public LinearLayout getRoot() {
        return this.rootView;
    }

    public static CoachMarkSimpleBinding inflate(LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    public static CoachMarkSimpleBinding inflate(LayoutInflater inflater, ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(C3656R.layout.coach_mark_simple, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public static CoachMarkSimpleBinding bind(View rootView) {
        int i = C3656R.id.btn_got_it;
        TextView textView = (TextView) ViewBindings.findChildViewById(rootView, i);
        if (textView != null) {
            LinearLayout linearLayout = (LinearLayout) rootView;
            i = C3656R.id.tv_description;
            TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, i);
            if (textView2 != null) {
                i = C3656R.id.tv_title;
                TextView textView3 = (TextView) ViewBindings.findChildViewById(rootView, i);
                if (textView3 != null) {
                    return new CoachMarkSimpleBinding(linearLayout, textView, linearLayout, textView2, textView3);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i)));
    }
}
