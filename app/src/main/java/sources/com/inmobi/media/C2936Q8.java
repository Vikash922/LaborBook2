package com.inmobi.media;

import android.content.Context;
import android.widget.ImageView;
import java.lang.ref.WeakReference;
import java.lang.reflect.InvocationHandler;
import java.lang.reflect.Method;
import java.util.HashMap;
import java.util.Objects;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;

/* JADX INFO: renamed from: com.inmobi.media.Q8 */
/* JADX INFO: loaded from: classes6.dex */
public final class C2936Q8 implements InvocationHandler {

    /* JADX INFO: renamed from: a */
    public final C2740D7 f1481a;

    /* JADX INFO: renamed from: b */
    public final WeakReference f1482b;

    /* JADX INFO: renamed from: c */
    public final WeakReference f1483c;

    public C2936Q8(Context context, ImageView imageView, C2740D7 imageAsset) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(imageView, "imageView");
        Intrinsics.checkNotNullParameter(imageAsset, "imageAsset");
        this.f1481a = imageAsset;
        this.f1482b = new WeakReference(context);
        this.f1483c = new WeakReference(imageView);
    }

    @Override // java.lang.reflect.InvocationHandler
    public final Object invoke(Object obj, Method method, Object[] objArr) {
        String strM2246a;
        HashMap map = C3121d9.f2016c;
        Intrinsics.checkNotNullExpressionValue("d9", "access$getTAG$cp(...)");
        Objects.toString(method);
        if (StringsKt.equals("onError", method != null ? method.getName() : null, true)) {
            HashMap map2 = C3121d9.f2016c;
            Context context = (Context) this.f1482b.get();
            ImageView imageView = (ImageView) this.f1483c.get();
            C2740D7 c2740d7 = this.f1481a;
            if (context != null && imageView != null) {
                String str = c2740d7.f934p;
                if (StringsKt.equals("cross_button", c2740d7.f920b, true)) {
                    if (str != null) {
                        int length = str.length() - 1;
                        int i = 0;
                        boolean z = false;
                        while (i <= length) {
                            boolean z2 = Intrinsics.compare((int) str.charAt(!z ? i : length), 32) <= 0;
                            if (z) {
                                if (!z2) {
                                    break;
                                }
                                length--;
                            } else if (z2) {
                                i++;
                            } else {
                                z = true;
                            }
                        }
                        strM2246a = AbstractC3194i7.m2246a(length, 1, str, i);
                    } else {
                        strM2246a = null;
                    }
                    if (strM2246a == null || strM2246a.length() == 0) {
                        C2891N8.m1398a(context, imageView);
                    }
                }
            }
            HashMap map3 = new HashMap();
            map3.put("[ERRORCODE]", "603");
            c2740d7.m951a("error", map3, (C3239l7) null, (InterfaceC3147f5) null);
        }
        return null;
    }
}
