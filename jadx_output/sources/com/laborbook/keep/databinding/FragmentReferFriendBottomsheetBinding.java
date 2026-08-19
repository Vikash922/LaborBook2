package com.laborbook.keep.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.boilerplate.uikit.views.textviews.text16.TextViewBoldGreen16;
import com.laborbook.keep.C3656R;
import com.laborbook.keep.screen.home.fragment.ConfettiView;

/* JADX INFO: loaded from: classes3.dex */
public final class FragmentReferFriendBottomsheetBinding implements ViewBinding {
    public final TextViewBoldGreen16 btnShareWhatsapp;
    public final ConfettiView confettiView;
    private final FrameLayout rootView;
    public final ImageView tvTitle;

    private FragmentReferFriendBottomsheetBinding(FrameLayout rootView, TextViewBoldGreen16 btnShareWhatsapp, ConfettiView confettiView, ImageView tvTitle) {
        this.rootView = rootView;
        this.btnShareWhatsapp = btnShareWhatsapp;
        this.confettiView = confettiView;
        this.tvTitle = tvTitle;
    }

    @Override // androidx.viewbinding.ViewBinding
    public FrameLayout getRoot() {
        return this.rootView;
    }

    public static FragmentReferFriendBottomsheetBinding inflate(LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    public static FragmentReferFriendBottomsheetBinding inflate(LayoutInflater inflater, ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(C3656R.layout.fragment_refer_friend_bottomsheet, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public static FragmentReferFriendBottomsheetBinding bind(View rootView) {
        int i = C3656R.id.btn_share_whatsapp;
        TextViewBoldGreen16 textViewBoldGreen16 = (TextViewBoldGreen16) ViewBindings.findChildViewById(rootView, i);
        if (textViewBoldGreen16 != null) {
            i = C3656R.id.confetti_view;
            ConfettiView confettiView = (ConfettiView) ViewBindings.findChildViewById(rootView, i);
            if (confettiView != null) {
                i = C3656R.id.tv_title;
                ImageView imageView = (ImageView) ViewBindings.findChildViewById(rootView, i);
                if (imageView != null) {
                    return new FragmentReferFriendBottomsheetBinding((FrameLayout) rootView, textViewBoldGreen16, confettiView, imageView);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i)));
    }
}
