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

/* JADX INFO: loaded from: classes6.dex */
public final class Q8 implements InvocationHandler {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final D7 f224a;
    public final WeakReference b;
    public final WeakReference c;

    public Q8(Context context, ImageView imageView, D7 imageAsset) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(imageView, "imageView");
        Intrinsics.checkNotNullParameter(imageAsset, "imageAsset");
        this.f224a = imageAsset;
        this.b = new WeakReference(context);
        this.c = new WeakReference(imageView);
    }

    @Override // java.lang.reflect.InvocationHandler
    public final Object invoke(Object obj, Method method, Object[] objArr) {
        String strA;
        HashMap map = C0271d9.c;
        Intrinsics.checkNotNullExpressionValue("d9", "access$getTAG$cp(...)");
        Objects.toString(method);
        if (StringsKt.equals("onError", method != null ? method.getName() : null, true)) {
            HashMap map2 = C0271d9.c;
            Context context = (Context) this.b.get();
            ImageView imageView = (ImageView) this.c.get();
            D7 d7 = this.f224a;
            if (context != null && imageView != null) {
                String str = d7.p;
                if (StringsKt.equals("cross_button", d7.b, true)) {
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
                        strA = AbstractC0348i7.a(length, 1, str, i);
                    } else {
                        strA = null;
                    }
                    if (strA == null || strA.length() == 0) {
                        N8.a(context, imageView);
                    }
                }
            }
            HashMap map3 = new HashMap();
            map3.put("[ERRORCODE]", "603");
            d7.a("error", map3, (C0395l7) null, (InterfaceC0298f5) null);
        }
        return null;
    }
}
