package com.razorpay;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.util.Base64;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.GridLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.razorpay.customui.lib.C3936R;
import java.util.ArrayList;

/* JADX INFO: compiled from: CustomViews.java */
/* JADX INFO: loaded from: classes5.dex */
class s$SSss {
    s$SSss() {
    }

    static View getViewToDisplayAppList(Context context, ArrayList<ApplicationDetails> arrayList, boolean z, int i, View.OnClickListener onClickListener) {
        return getViewToDisplayAppList(context, arrayList, z, i, onClickListener, null);
    }

    static View getViewToDisplayAppList(Context context, ArrayList<ApplicationDetails> arrayList, boolean z, int i, View.OnClickListener onClickListener, String str) {
        if (arrayList == null || arrayList.size() == 0) {
            return null;
        }
        if (!z || arrayList.size() == 1) {
            return $sS$$__s$S$(context, arrayList, i, onClickListener, str);
        }
        return $sS$$__s$S$(context, arrayList, i, onClickListener);
    }

    private static View $sS$$__s$S$(Context context, ArrayList<ApplicationDetails> arrayList, int i, View.OnClickListener onClickListener) {
        GridLayout gridLayout = new GridLayout(context);
        gridLayout.setColumnCount(4);
        int iDpToPixels = BaseUtils.dpToPixels(context, 12);
        int iDpToPixels2 = BaseUtils.dpToPixels(context, 16);
        int iDpToPixels3 = BaseUtils.dpToPixels(context, 6);
        GridLayout.LayoutParams layoutParams = new GridLayout.LayoutParams();
        layoutParams.height = -2;
        layoutParams.width = -1;
        layoutParams.setMargins(iDpToPixels, iDpToPixels2, iDpToPixels, iDpToPixels3);
        gridLayout.setLayoutParams(layoutParams);
        gridLayout.setOrientation(0);
        gridLayout.setBackgroundDrawable(context.getResources().getDrawable(C3936R.drawable.razorpay_card));
        RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams((int) (((i - iDpToPixels) - iDpToPixels) / 4.0f), -2);
        layoutParams2.addRule(14);
        $sS$$__s$S$(gridLayout, C3936R.layout.apps_display_grid_element, context, arrayList, i, onClickListener, layoutParams2);
        return gridLayout;
    }

    private static View $sS$$__s$S$(Context context, ArrayList<ApplicationDetails> arrayList, int i, View.OnClickListener onClickListener, String str) {
        LinearLayout linearLayout = new LinearLayout(context);
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, -2);
        int iDpToPixels = BaseUtils.dpToPixels(context, 12);
        layoutParams.setMargins(iDpToPixels, BaseUtils.dpToPixels(context, 12), iDpToPixels, BaseUtils.dpToPixels(context, 6));
        linearLayout.setLayoutParams(layoutParams);
        linearLayout.setOrientation(1);
        linearLayout.setBackgroundDrawable(context.getResources().getDrawable(C3936R.drawable.razorpay_card));
        if (str != null && str.length() != 0) {
            RelativeLayout relativeLayout = (RelativeLayout) LayoutInflater.from(context).inflate(C3936R.layout.app_display_list_heading_tv, (ViewGroup) null);
            ((TextView) relativeLayout.findViewById(C3936R.id.text_view)).setText(str);
            linearLayout.addView(relativeLayout);
        }
        $sS$$__s$S$(linearLayout, C3936R.layout.apps_display_list_element, context, arrayList, i, onClickListener, null);
        return linearLayout;
    }

    private static void $sS$$__s$S$(ViewGroup viewGroup, int i, Context context, ArrayList<ApplicationDetails> arrayList, int i2, View.OnClickListener onClickListener, ViewGroup.LayoutParams layoutParams) {
        int size = arrayList.size();
        LayoutInflater layoutInflaterFrom = LayoutInflater.from(context);
        ArrayList arrayList2 = new ArrayList();
        for (int i3 = 0; i3 < arrayList.size(); i3++) {
            ApplicationDetails applicationDetails = arrayList.get(i3);
            if (applicationDetails.getIconBase64() == null) {
                arrayList2.add(applicationDetails);
                arrayList.remove(i3);
            }
        }
        arrayList.addAll(arrayList2);
        for (int i4 = 0; i4 < size; i4++) {
            ApplicationDetails applicationDetails2 = arrayList.get(i4);
            if (applicationDetails2 != null) {
                String appName = applicationDetails2.getAppName();
                String iconBase64 = applicationDetails2.getIconBase64();
                String packageName = applicationDetails2.getPackageName();
                View viewInflate = layoutInflaterFrom.inflate(i, (ViewGroup) null);
                ImageView imageView = (ImageView) viewInflate.findViewById(C3936R.id.app_logo);
                TextView textView = (TextView) viewInflate.findViewById(C3936R.id.app_name);
                if (appName != null && packageName != null) {
                    if (iconBase64 != null) {
                        byte[] bArrDecode = Base64.decode(iconBase64.substring(iconBase64.indexOf(",") + 1), 0);
                        Bitmap bitmapDecodeByteArray = BitmapFactory.decodeByteArray(bArrDecode, 0, bArrDecode.length);
                        if (bitmapDecodeByteArray != null) {
                            imageView.setImageBitmap(bitmapDecodeByteArray);
                        }
                    }
                    textView.setText(appName);
                    viewInflate.setTag(packageName);
                    viewInflate.setClickable(true);
                    viewInflate.setOnClickListener(onClickListener);
                    if (layoutParams != null) {
                        viewInflate.setLayoutParams(layoutParams);
                    }
                    TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(new int[]{android.R.attr.selectableItemBackground});
                    viewInflate.setBackgroundResource(typedArrayObtainStyledAttributes.getResourceId(0, 0));
                    typedArrayObtainStyledAttributes.recycle();
                    viewGroup.addView(viewInflate);
                }
            }
        }
    }
}
