package com.razorpay;

import android.app.Activity;
import android.app.Fragment;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.view.animation.TranslateAnimation;
import android.widget.Button;
import android.widget.LinearLayout;
import com.razorpay.customui.lib.C3936R;
import java.util.ArrayList;
import java.util.HashMap;

/* JADX INFO: loaded from: classes5.dex */
public class AppSelectorFragment extends Fragment {
    HashMap<String, ApplicationDetails> filteredUpiPackageToAppDetails;
    ArrayList<String> finalOthersApps;
    OnAppSelectedListener onAppSelectedListener;
    ArrayList<String> otherAppsOrder;
    ArrayList<String> preferredAppsOrder;
    ArrayList<String> remainingApps;
    View rootView;
    String urlData;
    private View.OnClickListener $sS$$__s$S$ = new View.OnClickListener() { // from class: com.razorpay.AppSelectorFragment.1
        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            String str = (String) view.getTag();
            if (AppSelectorFragment.this.onAppSelectedListener != null) {
                AppSelectorFragment.this.onAppSelectedListener.onUpiAppLaunched(str, AppSelectorFragment.this.urlData);
            }
            AppSelectorFragment.this.onAppSelectedListener.openUpiApp(str, AppSelectorFragment.this.urlData);
        }
    };
    private ViewTreeObserver.OnGlobalLayoutListener s$SSss = new ViewTreeObserver.OnGlobalLayoutListener() { // from class: com.razorpay.AppSelectorFragment.2
        @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
        public void onGlobalLayout() {
            Activity activity = AppSelectorFragment.this.getActivity();
            LinearLayout linearLayout = (LinearLayout) activity.findViewById(C3936R.id.ll_curtain_container);
            int displayHeight = BaseUtils.getDisplayHeight(activity);
            View viewFindViewById = activity.findViewById(C3936R.id.dark_background);
            int[] iArr = new int[2];
            viewFindViewById.getLocationInWindow(iArr);
            int i = iArr[1];
            boolean z = false;
            if (AppSelectorFragment.this.preferredAppsOrder != null && AppSelectorFragment.this.preferredAppsOrder.size() > 0 && AppSelectorFragment.this.finalOthersApps != null && AppSelectorFragment.this.finalOthersApps.size() > 0) {
                View childAt = linearLayout.getChildAt(2);
                if (childAt instanceof LinearLayout) {
                    LinearLayout linearLayout2 = (LinearLayout) childAt;
                    if (linearLayout2.getChildCount() >= 2) {
                        View childAt2 = linearLayout2.getChildAt(1);
                        int[] iArr2 = new int[2];
                        linearLayout.getLocationInWindow(iArr2);
                        int i2 = iArr2[1];
                        int[] iArr3 = new int[2];
                        childAt2.getLocationInWindow(iArr3);
                        int i3 = iArr3[1];
                        boolean z2 = i3 != 0;
                        int height = ((displayHeight - (i3 - i2)) - i) - (childAt2.getHeight() / 2);
                        if (height < 0) {
                            height = 0;
                        }
                        viewFindViewById.setLayoutParams(new LinearLayout.LayoutParams(-1, height));
                        linearLayout.setVisibility(0);
                        TranslateAnimation translateAnimation = new TranslateAnimation(0.0f, 0.0f, linearLayout.getHeight(), 0.0f);
                        translateAnimation.setDuration(500L);
                        translateAnimation.setFillAfter(true);
                        linearLayout.startAnimation(translateAnimation);
                        z = z2;
                    }
                }
            } else {
                int height2 = linearLayout.getHeight();
                boolean z3 = height2 != 0;
                int i4 = displayHeight - i;
                int i5 = i4 / 2;
                int i6 = i4 - height2;
                if (i6 > i5) {
                    i5 = i6;
                }
                viewFindViewById.setLayoutParams(new LinearLayout.LayoutParams(-1, i5));
                z = z3;
            }
            if (z) {
                AppSelectorFragment.this.rootView.getViewTreeObserver().removeGlobalOnLayoutListener(this);
            }
        }
    };

    void setAppSelectListener(OnAppSelectedListener onAppSelectedListener) {
        this.onAppSelectedListener = onAppSelectedListener;
    }

    @Override // android.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        try {
            this.onAppSelectedListener = (OnAppSelectedListener) getActivity();
        } catch (Exception unused) {
        }
        Bundle arguments = getArguments();
        if (arguments != null) {
            this.urlData = arguments.getString("url_data");
            this.preferredAppsOrder = arguments.getStringArrayList("merchant_preferred_upi_apps_order");
            this.otherAppsOrder = arguments.getStringArrayList("merchant_other_upi_apps_order");
            this.remainingApps = arguments.getStringArrayList("list_remaining_apps");
            ArrayList<ApplicationDetails> parcelableArrayList = arguments.getParcelableArrayList("upi_app_details_list");
            if (parcelableArrayList != null) {
                this.filteredUpiPackageToAppDetails = new HashMap<>();
                for (ApplicationDetails applicationDetails : parcelableArrayList) {
                    this.filteredUpiPackageToAppDetails.put(applicationDetails.getPackageName(), applicationDetails);
                }
            }
        }
        if (this.preferredAppsOrder == null) {
            this.preferredAppsOrder = new ArrayList<>();
        }
        if (this.otherAppsOrder == null) {
            this.otherAppsOrder = new ArrayList<>();
        }
        if (this.remainingApps == null) {
            this.remainingApps = new ArrayList<>();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:55:0x00e1  */
    @Override // android.app.Fragment
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public android.view.View onCreateView(android.view.LayoutInflater r8, android.view.ViewGroup r9, android.os.Bundle r10) {
        /*
            Method dump skipped, instruction units count: 253
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.razorpay.AppSelectorFragment.onCreateView(android.view.LayoutInflater, android.view.ViewGroup, android.os.Bundle):android.view.View");
    }

    @Override // android.app.Fragment
    public void onActivityCreated(Bundle bundle) {
        super.onActivityCreated(bundle);
    }

    private View $sS$$__s$S$() {
        View viewInflate = getActivity().getLayoutInflater().inflate(C3936R.layout.upi_intent_no_apps_found, (ViewGroup) null);
        ((Button) viewInflate.findViewById(C3936R.id.btn_go_back)).setOnClickListener(new View.OnClickListener() { // from class: com.razorpay.AppSelectorFragment.3
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                AppSelectorFragment.this.getActivity().onBackPressed();
            }
        });
        return viewInflate;
    }

    private ArrayList<ApplicationDetails> $sS$$__s$S$(ArrayList<String> arrayList) {
        int size = arrayList.size();
        ArrayList<ApplicationDetails> arrayList2 = new ArrayList<>();
        for (int i = 0; i < size; i++) {
            ApplicationDetails applicationDetails = this.filteredUpiPackageToAppDetails.get(arrayList.get(i));
            if (applicationDetails != null) {
                String appName = applicationDetails.getAppName();
                applicationDetails.getIconBase64();
                if (appName != null) {
                    arrayList2.add(applicationDetails);
                }
            }
        }
        return arrayList2;
    }

    private ArrayList<String> s$SSss() {
        ArrayList<String> arrayList = new ArrayList<>();
        HashMap<String, ApplicationDetails> map = this.filteredUpiPackageToAppDetails;
        if (map != null) {
            for (ApplicationDetails applicationDetails : map.values()) {
                if (applicationDetails != null && applicationDetails.getAppName() != null) {
                    arrayList.add(applicationDetails.getAppName());
                }
            }
        }
        return arrayList;
    }

    private void _Ssss$() {
        try {
            HashMap map = new HashMap();
            String str = this.urlData;
            if (str != null && !str.isEmpty()) {
                map.put("url_data", this.urlData.split("\\?")[0]);
            }
            ArrayList<String> arrayList = this.preferredAppsOrder;
            if (arrayList != null && !arrayList.isEmpty()) {
                map.put("merchant_preferred_upi_apps_order", this.preferredAppsOrder);
            }
            ArrayList<String> arrayList2 = this.otherAppsOrder;
            if (arrayList2 != null && !arrayList2.isEmpty()) {
                map.put("merchant_other_upi_apps_order", this.otherAppsOrder);
            }
            ArrayList<String> arrayList3 = this.remainingApps;
            if (arrayList3 != null && !arrayList3.isEmpty()) {
                map.put("list_remaining_apps", this.remainingApps);
            }
            AnalyticsUtil.trackEvent(AnalyticsEvent.CUSTOM_UI_CUSTOM_APP_CHOOSER_SHOWN, AnalyticsUtil.getJSONResponse(map));
        } catch (Exception unused) {
        }
    }
}
