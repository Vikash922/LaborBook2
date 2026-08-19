package com.laborbook.base.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.WebView;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.laborbook.base.C3577R;

/* JADX INFO: loaded from: classes6.dex */
public final class ActivityWebviewBinding implements ViewBinding {
    public final ImageView ivBack;
    public final ProgressBar progress;
    private final ConstraintLayout rootView;
    public final LinearLayout toolbar;
    public final TextView tvTitle;
    public final WebView webview;

    private ActivityWebviewBinding(ConstraintLayout constraintLayout, ImageView imageView, ProgressBar progressBar, LinearLayout linearLayout, TextView textView, WebView webView) {
        this.rootView = constraintLayout;
        this.ivBack = imageView;
        this.progress = progressBar;
        this.toolbar = linearLayout;
        this.tvTitle = textView;
        this.webview = webView;
    }

    @Override // androidx.viewbinding.ViewBinding
    public ConstraintLayout getRoot() {
        return this.rootView;
    }

    public static ActivityWebviewBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static ActivityWebviewBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(C3577R.layout.activity_webview, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public static ActivityWebviewBinding bind(View view) {
        int i = C3577R.id.iv_back;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, i);
        if (imageView != null) {
            i = C3577R.id.progress;
            ProgressBar progressBar = (ProgressBar) ViewBindings.findChildViewById(view, i);
            if (progressBar != null) {
                i = C3577R.id.toolbar;
                LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, i);
                if (linearLayout != null) {
                    i = C3577R.id.tv_title;
                    TextView textView = (TextView) ViewBindings.findChildViewById(view, i);
                    if (textView != null) {
                        i = C3577R.id.webview;
                        WebView webView = (WebView) ViewBindings.findChildViewById(view, i);
                        if (webView != null) {
                            return new ActivityWebviewBinding((ConstraintLayout) view, imageView, progressBar, linearLayout, textView, webView);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }
}
