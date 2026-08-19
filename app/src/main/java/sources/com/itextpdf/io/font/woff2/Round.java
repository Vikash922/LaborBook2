package com.itextpdf.io.font.woff2;

/* JADX INFO: loaded from: classes6.dex */
class Round {
    public static int round4(int i) {
        return Integer.MAX_VALUE - i < 3 ? i : (i + 3) & (-4);
    }

    public static long round4(long j) {
        return Long.MAX_VALUE - j < 3 ? j : (j + 3) & (-4);
    }

    Round() {
    }
}
