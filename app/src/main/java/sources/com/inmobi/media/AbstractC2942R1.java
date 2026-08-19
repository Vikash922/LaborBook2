package com.inmobi.media;

import android.content.ContentValues;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.inmobi.media.R1 */
/* JADX INFO: loaded from: classes6.dex */
public abstract class AbstractC2942R1 {

    /* JADX INFO: renamed from: a */
    public final String f1489a;

    public AbstractC2942R1(String tableName, String tableSchema) {
        Intrinsics.checkNotNullParameter(tableName, "tableName");
        Intrinsics.checkNotNullParameter(tableSchema, "tableSchema");
        this.f1489a = tableName;
        try {
            C3385v3.f2680a.m2506a(tableName, tableSchema);
        } catch (Exception unused) {
        }
    }

    /* JADX INFO: renamed from: a */
    public abstract Object mo836a(ContentValues contentValues);

    /* JADX INFO: renamed from: a */
    public final void m1753a(Object obj) {
        try {
            C3385v3.m2502a(this.f1489a, mo838b(obj));
            Intrinsics.checkNotNullExpressionValue("R1", "TAG");
            Objects.toString(obj);
        } catch (Exception unused) {
        }
    }

    /* JADX INFO: renamed from: b */
    public abstract ContentValues mo838b(Object obj);

    /* JADX INFO: renamed from: b */
    public final void m1756b(Object obj, String str, String[] strArr) {
        try {
            C3385v3.m2504b(this.f1489a, mo838b(obj), str, strArr);
            Intrinsics.checkNotNullExpressionValue("R1", "TAG");
            Objects.toString(obj);
        } catch (Exception unused) {
        }
    }

    /* JADX INFO: renamed from: a */
    public final void m1754a(Object obj, String str, String[] strArr) {
        try {
            C3385v3.m2499a(this.f1489a, mo838b(obj), str, strArr);
            Intrinsics.checkNotNullExpressionValue("R1", "TAG");
            Objects.toString(obj);
        } catch (Exception unused) {
        }
    }

    /* JADX INFO: renamed from: b */
    public final Object m1755b(String str, String[] strArr) {
        try {
            List<ContentValues> listM2505b = C3385v3.m2505b(this.f1489a, null, str, strArr, null, null, null, null);
            if (listM2505b.isEmpty()) {
                return null;
            }
            return mo836a(listM2505b.get(0));
        } catch (Exception unused) {
            return null;
        }
    }

    /* JADX INFO: renamed from: a */
    public static ArrayList m1751a(AbstractC2942R1 abstractC2942R1, String str, String[] strArr, String str2, String str3, String str4, Integer num, int i) {
        String str5 = (i & 1) != 0 ? null : str;
        String[] strArr2 = (i & 2) != 0 ? null : strArr;
        String str6 = (i & 4) != 0 ? null : str2;
        String str7 = (i & 8) != 0 ? null : str3;
        String str8 = (i & 16) != 0 ? null : str4;
        Integer num2 = (i & 32) != 0 ? null : num;
        abstractC2942R1.getClass();
        try {
            ArrayList arrayList = new ArrayList();
            List<ContentValues> listM2505b = C3385v3.m2505b(abstractC2942R1.f1489a, null, str5, strArr2, str6, str7, str8, num2 != null ? num2.toString() : null);
            if (listM2505b.isEmpty()) {
                return arrayList;
            }
            Iterator<ContentValues> it = listM2505b.iterator();
            while (it.hasNext()) {
                arrayList.add(abstractC2942R1.mo836a(it.next()));
            }
            return arrayList;
        } catch (Exception unused) {
            return new ArrayList();
        }
    }

    /* JADX INFO: renamed from: a */
    public static int m1750a(AbstractC2942R1 abstractC2942R1) {
        abstractC2942R1.getClass();
        try {
            return C3385v3.m2501a(abstractC2942R1.f1489a, null, null, null, null, null, null, null);
        } catch (Exception unused) {
            return 0;
        }
    }

    /* JADX INFO: renamed from: a */
    public final int m1752a(String str, String[] strArr) {
        try {
            return C3385v3.m2500a(this.f1489a, str, strArr);
        } catch (Exception unused) {
            return 0;
        }
    }
}
