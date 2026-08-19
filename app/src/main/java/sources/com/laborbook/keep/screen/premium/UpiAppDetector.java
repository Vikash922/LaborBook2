package com.laborbook.keep.screen.premium;

import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import com.razorpay.BaseConstants;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.TuplesKt;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;

/* JADX INFO: compiled from: UpiAppDetector.kt */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(m2721d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0014\u0010\b\u001a\b\u0012\u0004\u0012\u00020\t0\u00052\u0006\u0010\n\u001a\u00020\u000bJ\u0018\u0010\f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u0007H\u0002J\u0014\u0010\u0011\u001a\b\u0012\u0004\u0012\u00020\t0\u00052\u0006\u0010\n\u001a\u00020\u000bJ\u000e\u0010\u0012\u001a\u00020\u00072\u0006\u0010\u0010\u001a\u00020\u0007R&\u0010\u0004\u001a\u001a\u0012\u0016\u0012\u0014\u0012\u0004\u0012\u00020\u0007\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00070\u00050\u00060\u0005X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0013"}, m2722d2 = {"Lcom/laborbook/keep/screen/premium/UpiAppDetector;", "", "<init>", "()V", "ALL_UPI_APPS_ORDERED", "", "Lkotlin/Pair;", "", "getAllUpiAppsWithInstalledState", "Lcom/laborbook/keep/screen/premium/InstalledUpiApp;", "context", "Landroid/content/Context;", "isPackageInstalled", "", "pm", "Landroid/content/pm/PackageManager;", "packageName", "getInstalledUpiApps", "getUpiSuffix", "keep_release"}, m2723k = 1, m2724mv = {2, 0, 0}, m2726xi = 48)
public final class UpiAppDetector {
    public static final UpiAppDetector INSTANCE = new UpiAppDetector();
    private static final List<Pair<String, List<String>>> ALL_UPI_APPS_ORDERED = CollectionsKt.listOf((Object[]) new Pair[]{TuplesKt.m2729to("PhonePe", CollectionsKt.listOf("com.phonepe.app")), TuplesKt.m2729to("Google Pay", CollectionsKt.listOf((Object[]) new String[]{"com.google.android.apps.nbu.paisa.user", "com.google.android.apps.navi.market.activity", "com.google.android.apps.walletnfcrel"})), TuplesKt.m2729to("Paytm", CollectionsKt.listOf("net.one97.paytm")), TuplesKt.m2729to("BHIM UPI", CollectionsKt.listOf(BaseConstants.BHIM_PACKAGE_NAME)), TuplesKt.m2729to("Amazon Pay", CollectionsKt.listOf("in.amazon.mShop.android.shopping")), TuplesKt.m2729to("Freecharge", CollectionsKt.listOf("com.freecharge.android")), TuplesKt.m2729to("MobiKwik", CollectionsKt.listOf("com.mobikwik_new")), TuplesKt.m2729to("Airtel Payments Bank", CollectionsKt.listOf("com.myairtelapp"))});

    private UpiAppDetector() {
    }

    public final List<InstalledUpiApp> getAllUpiAppsWithInstalledState(Context context) {
        Drawable applicationIcon;
        Object next;
        String string;
        String str;
        Object next2;
        Intrinsics.checkNotNullParameter(context, "context");
        PackageManager packageManager = context.getPackageManager();
        Intent intent = new Intent("android.intent.action.VIEW");
        intent.setData(Uri.parse("upi://pay?pa=test@paytm&pn=Test"));
        List<ResolveInfo> listQueryIntentActivities = packageManager.queryIntentActivities(intent, 0);
        Intrinsics.checkNotNullExpressionValue(listQueryIntentActivities, "queryIntentActivities(...)");
        List<ResolveInfo> list = listQueryIntentActivities;
        ArrayList arrayList = new ArrayList(CollectionsKt.collectionSizeOrDefault(list, 10));
        Iterator<T> it = list.iterator();
        while (it.hasNext()) {
            arrayList.add(((ResolveInfo) it.next()).activityInfo.packageName);
        }
        Set set = CollectionsKt.toSet(arrayList);
        List<Pair<String, List<String>>> list2 = ALL_UPI_APPS_ORDERED;
        ArrayList arrayList2 = new ArrayList(CollectionsKt.collectionSizeOrDefault(list2, 10));
        int i = 0;
        for (Object obj : list2) {
            int i2 = i + 1;
            if (i < 0) {
                CollectionsKt.throwIndexOverflow();
            }
            Pair pair = (Pair) obj;
            String str2 = (String) pair.component1();
            List list3 = (List) pair.component2();
            List list4 = list3;
            Iterator it2 = list4.iterator();
            while (true) {
                applicationIcon = null;
                if (!it2.hasNext()) {
                    next = null;
                    break;
                }
                next = it2.next();
                if (set.contains((String) next)) {
                    break;
                }
            }
            String str3 = (String) next;
            if (str3 == null) {
                Iterator it3 = list4.iterator();
                while (true) {
                    if (!it3.hasNext()) {
                        next2 = null;
                        break;
                    }
                    next2 = it3.next();
                    UpiAppDetector upiAppDetector = INSTANCE;
                    Intrinsics.checkNotNull(packageManager);
                    if (upiAppDetector.isPackageInstalled(packageManager, (String) next2)) {
                        break;
                    }
                }
                str3 = (String) next2;
            }
            boolean z = str3 != null;
            if (str3 == null) {
                str3 = (String) CollectionsKt.first(list3);
            }
            if (z) {
                try {
                    applicationIcon = packageManager.getApplicationIcon(str3);
                } catch (Exception unused) {
                }
            }
            Drawable drawable = applicationIcon;
            if (z) {
                try {
                    string = packageManager.getApplicationInfo(str3, 0).loadLabel(packageManager).toString();
                } catch (Exception unused2) {
                    string = str2;
                }
                str = string;
            } else {
                str = str2;
            }
            arrayList2.add(new InstalledUpiApp(str3, str2, str, drawable, z));
            i = i2;
        }
        return arrayList2;
    }

    private final boolean isPackageInstalled(PackageManager pm, String packageName) {
        try {
            pm.getPackageInfo(packageName, 0);
            return true;
        } catch (Exception unused) {
            return false;
        }
    }

    public final List<InstalledUpiApp> getInstalledUpiApps(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        List<InstalledUpiApp> allUpiAppsWithInstalledState = getAllUpiAppsWithInstalledState(context);
        ArrayList arrayList = new ArrayList();
        for (Object obj : allUpiAppsWithInstalledState) {
            if (((InstalledUpiApp) obj).isInstalled()) {
                arrayList.add(obj);
            }
        }
        return arrayList;
    }

    public final String getUpiSuffix(String packageName) {
        Intrinsics.checkNotNullParameter(packageName, "packageName");
        if (Intrinsics.areEqual(packageName, "com.phonepe.app")) {
            return "ybl";
        }
        String str = packageName;
        if (StringsKt.contains$default((CharSequence) str, (CharSequence) "google", false, 2, (Object) null)) {
            return "okhdfcbank";
        }
        if (Intrinsics.areEqual(packageName, "net.one97.paytm")) {
            return "paytm";
        }
        if (Intrinsics.areEqual(packageName, BaseConstants.BHIM_PACKAGE_NAME)) {
            return "upi";
        }
        if (StringsKt.contains$default((CharSequence) str, (CharSequence) "amazon", false, 2, (Object) null)) {
            return "apl";
        }
        String str2 = "freecharge";
        if (!StringsKt.contains$default((CharSequence) str, (CharSequence) "freecharge", false, 2, (Object) null)) {
            str2 = "mobikwik";
            if (!StringsKt.contains$default((CharSequence) str, (CharSequence) "mobikwik", false, 2, (Object) null)) {
                str2 = "airtel";
                if (!StringsKt.contains$default((CharSequence) str, (CharSequence) "airtel", false, 2, (Object) null)) {
                    return "ybl";
                }
            }
        }
        return str2;
    }
}
