package com.inmobi.media;

import android.content.ContentValues;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
public abstract class R1 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f229a;

    public R1(String tableName, String tableSchema) {
        Intrinsics.checkNotNullParameter(tableName, "tableName");
        Intrinsics.checkNotNullParameter(tableSchema, "tableSchema");
        this.f229a = tableName;
        try {
            C0535v3.f506a.a(tableName, tableSchema);
        } catch (Exception unused) {
        }
    }

    public abstract Object a(ContentValues contentValues);

    public final void a(Object obj) {
        try {
            C0535v3.a(this.f229a, b(obj));
            Intrinsics.checkNotNullExpressionValue("R1", "TAG");
            Objects.toString(obj);
        } catch (Exception unused) {
        }
    }

    public abstract ContentValues b(Object obj);

    public final void b(Object obj, String str, String[] strArr) {
        try {
            C0535v3.b(this.f229a, b(obj), str, strArr);
            Intrinsics.checkNotNullExpressionValue("R1", "TAG");
            Objects.toString(obj);
        } catch (Exception unused) {
        }
    }

    public final void a(Object obj, String str, String[] strArr) {
        try {
            C0535v3.a(this.f229a, b(obj), str, strArr);
            Intrinsics.checkNotNullExpressionValue("R1", "TAG");
            Objects.toString(obj);
        } catch (Exception unused) {
        }
    }

    public final Object b(String str, String[] strArr) {
        try {
            List<ContentValues> listB = C0535v3.b(this.f229a, null, str, strArr, null, null, null, null);
            if (listB.isEmpty()) {
                return null;
            }
            return a(listB.get(0));
        } catch (Exception unused) {
            return null;
        }
    }

    public static ArrayList a(R1 r1, String str, String[] strArr, String str2, String str3, String str4, Integer num, int i) {
        String str5 = (i & 1) != 0 ? null : str;
        String[] strArr2 = (i & 2) != 0 ? null : strArr;
        String str6 = (i & 4) != 0 ? null : str2;
        String str7 = (i & 8) != 0 ? null : str3;
        String str8 = (i & 16) != 0 ? null : str4;
        Integer num2 = (i & 32) != 0 ? null : num;
        r1.getClass();
        try {
            ArrayList arrayList = new ArrayList();
            List<ContentValues> listB = C0535v3.b(r1.f229a, null, str5, strArr2, str6, str7, str8, num2 != null ? num2.toString() : null);
            if (listB.isEmpty()) {
                return arrayList;
            }
            Iterator<ContentValues> it = listB.iterator();
            while (it.hasNext()) {
                arrayList.add(r1.a(it.next()));
            }
            return arrayList;
        } catch (Exception unused) {
            return new ArrayList();
        }
    }

    public static int a(R1 r1) {
        r1.getClass();
        try {
            return C0535v3.a(r1.f229a, null, null, null, null, null, null, null);
        } catch (Exception unused) {
            return 0;
        }
    }

    public final int a(String str, String[] strArr) {
        try {
            return C0535v3.a(this.f229a, str, strArr);
        } catch (Exception unused) {
            return 0;
        }
    }
}
