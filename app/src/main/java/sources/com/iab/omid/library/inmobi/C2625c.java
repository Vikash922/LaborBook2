package com.iab.omid.library.inmobi;

import com.iab.omid.library.inmobi.utils.C2654g;
import java.lang.reflect.Array;
import java.util.ArrayList;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* JADX INFO: renamed from: com.iab.omid.library.inmobi.c */
/* JADX INFO: loaded from: classes6.dex */
class C2625c {

    /* JADX INFO: renamed from: a */
    private static final Pattern f613a = Pattern.compile("<(head)( [^>]*)?>", 2);

    /* JADX INFO: renamed from: b */
    private static final Pattern f614b = Pattern.compile("<(head)( [^>]*)?/>", 2);

    /* JADX INFO: renamed from: c */
    private static final Pattern f615c = Pattern.compile("<(body)( [^>]*?)?>", 2);

    /* JADX INFO: renamed from: d */
    private static final Pattern f616d = Pattern.compile("<(body)( [^>]*?)?/>", 2);

    /* JADX INFO: renamed from: e */
    private static final Pattern f617e = Pattern.compile("<(html)( [^>]*?)?>", 2);

    /* JADX INFO: renamed from: f */
    private static final Pattern f618f = Pattern.compile("<(html)( [^>]*?)?/>", 2);

    /* JADX INFO: renamed from: g */
    private static final Pattern f619g = Pattern.compile("<!DOCTYPE [^>]*>", 2);

    /* JADX INFO: renamed from: a */
    static String m566a(String str, String str2) {
        C2654g.m725a(str, "HTML is null or empty");
        int[][] iArrM569a = m569a(str);
        StringBuilder sb = new StringBuilder(str.length() + str2.length() + 16);
        if (!m571b(str, sb, f614b, str2, iArrM569a) && !m568a(str, sb, f613a, str2, iArrM569a) && !m571b(str, sb, f616d, str2, iArrM569a) && !m568a(str, sb, f615c, str2, iArrM569a) && !m571b(str, sb, f618f, str2, iArrM569a) && !m568a(str, sb, f617e, str2, iArrM569a) && !m568a(str, sb, f619g, str2, iArrM569a)) {
            return str2 + str;
        }
        return sb.toString();
    }

    /* JADX INFO: renamed from: a */
    private static boolean m567a(int i, int[][] iArr) {
        if (iArr != null) {
            for (int[] iArr2 : iArr) {
                if (i >= iArr2[0] && i <= iArr2[1]) {
                    return true;
                }
            }
        }
        return false;
    }

    /* JADX INFO: renamed from: a */
    private static boolean m568a(String str, StringBuilder sb, Pattern pattern, String str2, int[][] iArr) {
        Matcher matcher = pattern.matcher(str);
        int i = 0;
        while (matcher.find(i)) {
            int iStart = matcher.start();
            int iEnd = matcher.end();
            if (!m567a(iStart, iArr)) {
                sb.append(str.substring(0, matcher.end()));
                sb.append(str2);
                sb.append(str.substring(matcher.end()));
                return true;
            }
            i = iEnd;
        }
        return false;
    }

    /* JADX INFO: renamed from: a */
    private static int[][] m569a(String str) {
        ArrayList arrayList = new ArrayList();
        int length = str.length();
        int i = 0;
        while (i < length) {
            int iIndexOf = str.indexOf("<!--", i);
            if (iIndexOf >= 0) {
                int iIndexOf2 = str.indexOf("-->", iIndexOf);
                if (iIndexOf2 >= 0) {
                    arrayList.add(new int[]{iIndexOf, iIndexOf2});
                    i = iIndexOf2 + 3;
                } else {
                    arrayList.add(new int[]{iIndexOf, length});
                }
            }
            i = length;
        }
        return (int[][]) arrayList.toArray((int[][]) Array.newInstance((Class<?>) Integer.TYPE, 0, 2));
    }

    /* JADX INFO: renamed from: b */
    static String m570b(String str, String str2) {
        return m566a(str2, "<script type=\"text/javascript\">" + str + "</script>");
    }

    /* JADX INFO: renamed from: b */
    private static boolean m571b(String str, StringBuilder sb, Pattern pattern, String str2, int[][] iArr) {
        Matcher matcher = pattern.matcher(str);
        int i = 0;
        while (matcher.find(i)) {
            int iStart = matcher.start();
            int iEnd = matcher.end();
            if (!m567a(iStart, iArr)) {
                sb.append(str.substring(0, matcher.end() - 2));
                sb.append(">");
                sb.append(str2);
                sb.append("</");
                sb.append(matcher.group(1));
                sb.append(">");
                sb.append(str.substring(matcher.end()));
                return true;
            }
            i = iEnd;
        }
        return false;
    }
}
