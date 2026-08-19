package com.rebuilt.app.base.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.GridLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.boilerplate.uikit.views.textviews.text16.TextViewRegular16;
import com.boilerplate.uikit.views.textviews.text20.TextViewBold20;
import com.rebuilt.app.base.C3577R;

/* JADX INFO: loaded from: classes.dex */
public final class FragmentLanguageBottomSheetBinding implements ViewBinding {
    public final TextViewRegular16 btnBengali;
    public final TextViewRegular16 btnEnglish;
    public final TextViewRegular16 btnGujarati;
    public final TextViewRegular16 btnHindi;
    public final TextViewRegular16 btnKannada;
    public final TextViewRegular16 btnMalayalam;
    public final TextViewRegular16 btnMarathi;
    public final TextViewRegular16 btnOdia;
    public final TextViewRegular16 btnPunjabi;
    public final TextViewRegular16 btnTamil;
    public final TextViewRegular16 btnTelugu;
    public final GridLayout gridLayoutLanguages;
    public final ImageView ivClose;
    public final LinearLayout llLanguages;
    private final ConstraintLayout rootView;
    public final TextViewBold20 tvLanguageTitle;

    private FragmentLanguageBottomSheetBinding(ConstraintLayout constraintLayout, TextViewRegular16 textViewRegular16, TextViewRegular16 textViewRegular162, TextViewRegular16 textViewRegular163, TextViewRegular16 textViewRegular164, TextViewRegular16 textViewRegular165, TextViewRegular16 textViewRegular166, TextViewRegular16 textViewRegular167, TextViewRegular16 textViewRegular168, TextViewRegular16 textViewRegular169, TextViewRegular16 textViewRegular1610, TextViewRegular16 textViewRegular1611, GridLayout gridLayout, ImageView imageView, LinearLayout linearLayout, TextViewBold20 textViewBold20) {
        this.rootView = constraintLayout;
        this.btnBengali = textViewRegular16;
        this.btnEnglish = textViewRegular162;
        this.btnGujarati = textViewRegular163;
        this.btnHindi = textViewRegular164;
        this.btnKannada = textViewRegular165;
        this.btnMalayalam = textViewRegular166;
        this.btnMarathi = textViewRegular167;
        this.btnOdia = textViewRegular168;
        this.btnPunjabi = textViewRegular169;
        this.btnTamil = textViewRegular1610;
        this.btnTelugu = textViewRegular1611;
        this.gridLayoutLanguages = gridLayout;
        this.ivClose = imageView;
        this.llLanguages = linearLayout;
        this.tvLanguageTitle = textViewBold20;
    }

    @Override // androidx.viewbinding.ViewBinding
    public ConstraintLayout getRoot() {
        return this.rootView;
    }

    public static FragmentLanguageBottomSheetBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static FragmentLanguageBottomSheetBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(C3577R.layout.fragment_language_bottom_sheet, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public static FragmentLanguageBottomSheetBinding bind(View view) {
        int i = C3577R.id.btnBengali;
        TextViewRegular16 textViewRegular16 = (TextViewRegular16) ViewBindings.findChildViewById(view, i);
        if (textViewRegular16 != null) {
            i = C3577R.id.btnEnglish;
            TextViewRegular16 textViewRegular162 = (TextViewRegular16) ViewBindings.findChildViewById(view, i);
            if (textViewRegular162 != null) {
                i = C3577R.id.btnGujarati;
                TextViewRegular16 textViewRegular163 = (TextViewRegular16) ViewBindings.findChildViewById(view, i);
                if (textViewRegular163 != null) {
                    i = C3577R.id.btnHindi;
                    TextViewRegular16 textViewRegular164 = (TextViewRegular16) ViewBindings.findChildViewById(view, i);
                    if (textViewRegular164 != null) {
                        i = C3577R.id.btnKannada;
                        TextViewRegular16 textViewRegular165 = (TextViewRegular16) ViewBindings.findChildViewById(view, i);
                        if (textViewRegular165 != null) {
                            i = C3577R.id.btnMalayalam;
                            TextViewRegular16 textViewRegular166 = (TextViewRegular16) ViewBindings.findChildViewById(view, i);
                            if (textViewRegular166 != null) {
                                i = C3577R.id.btnMarathi;
                                TextViewRegular16 textViewRegular167 = (TextViewRegular16) ViewBindings.findChildViewById(view, i);
                                if (textViewRegular167 != null) {
                                    i = C3577R.id.btnOdia;
                                    TextViewRegular16 textViewRegular168 = (TextViewRegular16) ViewBindings.findChildViewById(view, i);
                                    if (textViewRegular168 != null) {
                                        i = C3577R.id.btnPunjabi;
                                        TextViewRegular16 textViewRegular169 = (TextViewRegular16) ViewBindings.findChildViewById(view, i);
                                        if (textViewRegular169 != null) {
                                            i = C3577R.id.btnTamil;
                                            TextViewRegular16 textViewRegular1610 = (TextViewRegular16) ViewBindings.findChildViewById(view, i);
                                            if (textViewRegular1610 != null) {
                                                i = C3577R.id.btnTelugu;
                                                TextViewRegular16 textViewRegular1611 = (TextViewRegular16) ViewBindings.findChildViewById(view, i);
                                                if (textViewRegular1611 != null) {
                                                    i = C3577R.id.gridLayoutLanguages;
                                                    GridLayout gridLayout = (GridLayout) ViewBindings.findChildViewById(view, i);
                                                    if (gridLayout != null) {
                                                        i = C3577R.id.iv_close;
                                                        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, i);
                                                        if (imageView != null) {
                                                            i = C3577R.id.ll_languages;
                                                            LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, i);
                                                            if (linearLayout != null) {
                                                                i = C3577R.id.tvLanguageTitle;
                                                                TextViewBold20 textViewBold20 = (TextViewBold20) ViewBindings.findChildViewById(view, i);
                                                                if (textViewBold20 != null) {
                                                                    return new FragmentLanguageBottomSheetBinding((ConstraintLayout) view, textViewRegular16, textViewRegular162, textViewRegular163, textViewRegular164, textViewRegular165, textViewRegular166, textViewRegular167, textViewRegular168, textViewRegular169, textViewRegular1610, textViewRegular1611, gridLayout, imageView, linearLayout, textViewBold20);
                                                                }
                                                            }
                                                        }
                                                    }
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }
}
