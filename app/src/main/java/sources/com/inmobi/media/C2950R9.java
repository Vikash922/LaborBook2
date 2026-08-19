package com.inmobi.media;

import android.content.Context;
import com.squareup.picasso.Callback;
import com.squareup.picasso.Picasso;
import java.lang.ref.WeakReference;
import java.lang.reflect.InvocationHandler;
import java.lang.reflect.Proxy;
import java.util.ArrayList;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.inmobi.media.R9 */
/* JADX INFO: loaded from: classes6.dex */
public final class C2950R9 {

    /* JADX INFO: renamed from: b */
    public static volatile Picasso f1504b;

    /* JADX INFO: renamed from: a */
    public static final C2950R9 f1503a = new C2950R9();

    /* JADX INFO: renamed from: c */
    public static final Object f1505c = new Object();

    /* JADX INFO: renamed from: d */
    public static final ArrayList f1506d = new ArrayList();

    /* JADX INFO: renamed from: e */
    public static final C2937Q9 f1507e = new C2937Q9();

    /* JADX INFO: renamed from: d */
    public static final /* synthetic */ String m1771d() {
        return "R9";
    }

    /* JADX INFO: renamed from: a */
    public static final WeakReference m1767a(C2950R9 c2950r9, Context context) {
        c2950r9.getClass();
        int size = f1506d.size();
        for (int i = 0; i < size; i++) {
            ArrayList arrayList = f1506d;
            Context context2 = (Context) ((WeakReference) arrayList.get(i)).get();
            if (context2 != null && Intrinsics.areEqual(context2, context)) {
                return (WeakReference) arrayList.get(i);
            }
        }
        return null;
    }

    /* JADX INFO: renamed from: a */
    public final Picasso m1772a(Context context) {
        WeakReference weakReference;
        Picasso picassoBuild;
        Intrinsics.checkNotNullParameter(context, "context");
        synchronized (f1505c) {
            int size = f1506d.size();
            int i = 0;
            while (true) {
                if (i >= size) {
                    weakReference = null;
                    break;
                }
                ArrayList arrayList = f1506d;
                Context context2 = (Context) ((WeakReference) arrayList.get(i)).get();
                if (context2 != null && Intrinsics.areEqual(context2, context)) {
                    weakReference = (WeakReference) arrayList.get(i);
                    break;
                }
                i++;
            }
            if (weakReference == null) {
                f1506d.add(new WeakReference(context));
            }
            picassoBuild = f1504b;
            if (picassoBuild == null) {
                picassoBuild = new Picasso.Builder(context).build();
                f1504b = picassoBuild;
                C2849Kb.m1245a(context, f1507e);
            }
        }
        Intrinsics.checkNotNullExpressionValue(picassoBuild, "synchronized(...)");
        return picassoBuild;
    }

    /* JADX INFO: renamed from: a */
    public final Object m1773a(InvocationHandler connectionCallbackHandler) {
        Intrinsics.checkNotNullParameter(connectionCallbackHandler, "connectionCallbackHandler");
        try {
            return Proxy.newProxyInstance(Callback.class.getClassLoader(), new Class[]{Callback.class}, connectionCallbackHandler);
        } catch (Exception unused) {
            return null;
        }
    }
}
