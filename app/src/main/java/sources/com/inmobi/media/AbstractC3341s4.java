package com.inmobi.media;

import android.content.Context;
import java.io.File;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.concurrent.ConcurrentHashMap;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.Regex;

/* JADX INFO: renamed from: com.inmobi.media.s4 */
/* JADX INFO: loaded from: classes6.dex */
public abstract class AbstractC3341s4 {

    /* JADX INFO: renamed from: a */
    public static final /* synthetic */ int f2527a = 0;

    /* JADX INFO: renamed from: a */
    public static final ArrayList m2399a(Context context) {
        File databasePath;
        Intrinsics.checkNotNullParameter(context, "context");
        ArrayList arrayList = new ArrayList();
        String[] strArrDatabaseList = context.databaseList();
        if (strArrDatabaseList != null && strArrDatabaseList.length != 0) {
            for (String str : strArrDatabaseList) {
                Intrinsics.checkNotNull(str);
                if (new Regex("com\\.im_([0-9]+\\.){3}db").matches(str)) {
                    int i = C3370u3.f2640a;
                    if (!Intrinsics.areEqual(str, "com.im_10.8.3.db") && (databasePath = context.getDatabasePath(str)) != null && databasePath.exists() && !context.deleteDatabase(str)) {
                        arrayList.add(str);
                    }
                }
            }
        }
        return arrayList;
    }

    /* JADX INFO: renamed from: b */
    public static final boolean m2401b(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        ConcurrentHashMap concurrentHashMap = C3133e6.f2044b;
        Intrinsics.checkNotNullParameter("carb_store", "fileKey");
        Intrinsics.checkNotNullParameter("aes_key_store", "fileKey");
        Intrinsics.checkNotNullParameter("mraid_js_store", "fileKey");
        Intrinsics.checkNotNullParameter("omid_js_store", "fileKey");
        Intrinsics.checkNotNullParameter("user_info_store", "fileKey");
        Intrinsics.checkNotNullParameter("coppa_store", "fileKey");
        Intrinsics.checkNotNullParameter("gesture_info_store", "fileKey");
        Intrinsics.checkNotNullParameter("display_info_store", "fileKey");
        Intrinsics.checkNotNullParameter("unified_id_info_store", "fileKey");
        Intrinsics.checkNotNullParameter("app_bundle_store", "fileKey");
        Intrinsics.checkNotNullParameter("pub_signals_store", "fileKey");
        Intrinsics.checkNotNullParameter("CrashSession-store", "fileKey");
        Iterator it = CollectionsKt.listOf((Object[]) new String[]{"com.im.keyValueStore.carb_store", "com.im.keyValueStore.aes_key_store", "com.im.keyValueStore.mraid_js_store", "com.im.keyValueStore.omid_js_store", "com.im.keyValueStore.user_info_store", "com.im.keyValueStore.coppa_store", "com.im.keyValueStore.gesture_info_store", "com.im.keyValueStore.display_info_store", "com.im.keyValueStore.unified_id_info_store", "com.im.keyValueStore.app_bundle_store", "com.im.keyValueStore.pub_signals_store", "com.im.keyValueStore.CrashSession-store"}).iterator();
        while (it.hasNext()) {
            context.deleteSharedPreferences((String) it.next());
        }
        return !m2399a(context).isEmpty();
    }

    /* JADX INFO: renamed from: a */
    public static final void m2400a(File path) {
        Intrinsics.checkNotNullParameter(path, "path");
        try {
            if (path.exists()) {
                File[] fileArrListFiles = path.listFiles();
                if (fileArrListFiles != null) {
                    for (File file : fileArrListFiles) {
                        if (file.isDirectory()) {
                            Intrinsics.checkNotNull(file);
                            m2400a(file);
                        } else if (file.delete()) {
                            Intrinsics.checkNotNullExpressionValue("s4", "TAG");
                            file.getName();
                        }
                    }
                }
                if (path.delete()) {
                    Intrinsics.checkNotNullExpressionValue("s4", "TAG");
                    path.getName();
                }
            }
        } catch (Exception unused) {
            Intrinsics.checkNotNullExpressionValue("s4", "TAG");
        }
    }
}
