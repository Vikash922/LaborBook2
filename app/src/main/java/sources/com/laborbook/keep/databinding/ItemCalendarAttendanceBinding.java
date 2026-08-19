package com.laborbook.keep.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.boilerplate.uikit.views.textviews.text12.TextViewHintRegular12;
import com.boilerplate.uikit.views.textviews.text14.TextViewBold14;
import com.boilerplate.uikit.views.textviews.text14.TextViewBoldPrimaryColor14;
import com.boilerplate.uikit.views.textviews.text14.TextViewRegular14;
import com.boilerplate.uikit.views.textviews.text14.TextViewRegularPrimaryColor14;
import com.laborbook.keep.C3656R;

/* JADX INFO: loaded from: classes3.dex */
public final class ItemCalendarAttendanceBinding implements ViewBinding {
    public final View divider1;
    public final View divider2;
    public final View divider3;
    public final ImageView ivAttendanceOne;
    public final ImageView ivAttendanceTwo;
    public final ImageView ivEdit;
    public final ImageView ivMore;
    public final ImageView ivOtPill;
    public final LinearLayout llAttendance;
    private final LinearLayout rootView;
    public final TextViewHintRegular12 tvAddAdvance;
    public final TextViewBoldPrimaryColor14 tvCurrentDate;
    public final TextViewRegularPrimaryColor14 tvCurrentDay;
    public final TextViewBold14 tvDate;
    public final TextViewRegular14 tvDay;

    private ItemCalendarAttendanceBinding(LinearLayout rootView, View divider1, View divider2, View divider3, ImageView ivAttendanceOne, ImageView ivAttendanceTwo, ImageView ivEdit, ImageView ivMore, ImageView ivOtPill, LinearLayout llAttendance, TextViewHintRegular12 tvAddAdvance, TextViewBoldPrimaryColor14 tvCurrentDate, TextViewRegularPrimaryColor14 tvCurrentDay, TextViewBold14 tvDate, TextViewRegular14 tvDay) {
        this.rootView = rootView;
        this.divider1 = divider1;
        this.divider2 = divider2;
        this.divider3 = divider3;
        this.ivAttendanceOne = ivAttendanceOne;
        this.ivAttendanceTwo = ivAttendanceTwo;
        this.ivEdit = ivEdit;
        this.ivMore = ivMore;
        this.ivOtPill = ivOtPill;
        this.llAttendance = llAttendance;
        this.tvAddAdvance = tvAddAdvance;
        this.tvCurrentDate = tvCurrentDate;
        this.tvCurrentDay = tvCurrentDay;
        this.tvDate = tvDate;
        this.tvDay = tvDay;
    }

    @Override // androidx.viewbinding.ViewBinding
    public LinearLayout getRoot() {
        return this.rootView;
    }

    public static ItemCalendarAttendanceBinding inflate(LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    public static ItemCalendarAttendanceBinding inflate(LayoutInflater inflater, ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(C3656R.layout.item_calendar_attendance, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public static ItemCalendarAttendanceBinding bind(View rootView) {
        View viewFindChildViewById;
        View viewFindChildViewById2;
        int i = C3656R.id.divider_1;
        View viewFindChildViewById3 = ViewBindings.findChildViewById(rootView, i);
        if (viewFindChildViewById3 != null && (viewFindChildViewById = ViewBindings.findChildViewById(rootView, (i = C3656R.id.divider_2))) != null && (viewFindChildViewById2 = ViewBindings.findChildViewById(rootView, (i = C3656R.id.divider_3))) != null) {
            i = C3656R.id.iv_attendance_one;
            ImageView imageView = (ImageView) ViewBindings.findChildViewById(rootView, i);
            if (imageView != null) {
                i = C3656R.id.iv_attendance_two;
                ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(rootView, i);
                if (imageView2 != null) {
                    i = C3656R.id.iv_edit;
                    ImageView imageView3 = (ImageView) ViewBindings.findChildViewById(rootView, i);
                    if (imageView3 != null) {
                        i = C3656R.id.iv_more;
                        ImageView imageView4 = (ImageView) ViewBindings.findChildViewById(rootView, i);
                        if (imageView4 != null) {
                            i = C3656R.id.iv_ot_pill;
                            ImageView imageView5 = (ImageView) ViewBindings.findChildViewById(rootView, i);
                            if (imageView5 != null) {
                                i = C3656R.id.ll_attendance;
                                LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(rootView, i);
                                if (linearLayout != null) {
                                    i = C3656R.id.tv_add_advance;
                                    TextViewHintRegular12 textViewHintRegular12 = (TextViewHintRegular12) ViewBindings.findChildViewById(rootView, i);
                                    if (textViewHintRegular12 != null) {
                                        i = C3656R.id.tv_current_date;
                                        TextViewBoldPrimaryColor14 textViewBoldPrimaryColor14 = (TextViewBoldPrimaryColor14) ViewBindings.findChildViewById(rootView, i);
                                        if (textViewBoldPrimaryColor14 != null) {
                                            i = C3656R.id.tv_current_day;
                                            TextViewRegularPrimaryColor14 textViewRegularPrimaryColor14 = (TextViewRegularPrimaryColor14) ViewBindings.findChildViewById(rootView, i);
                                            if (textViewRegularPrimaryColor14 != null) {
                                                i = C3656R.id.tv_date;
                                                TextViewBold14 textViewBold14 = (TextViewBold14) ViewBindings.findChildViewById(rootView, i);
                                                if (textViewBold14 != null) {
                                                    i = C3656R.id.tv_day;
                                                    TextViewRegular14 textViewRegular14 = (TextViewRegular14) ViewBindings.findChildViewById(rootView, i);
                                                    if (textViewRegular14 != null) {
                                                        return new ItemCalendarAttendanceBinding((LinearLayout) rootView, viewFindChildViewById3, viewFindChildViewById, viewFindChildViewById2, imageView, imageView2, imageView3, imageView4, imageView5, linearLayout, textViewHintRegular12, textViewBoldPrimaryColor14, textViewRegularPrimaryColor14, textViewBold14, textViewRegular14);
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
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i)));
    }
}
