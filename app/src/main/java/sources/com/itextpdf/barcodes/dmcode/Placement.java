package com.itextpdf.barcodes.dmcode;

import java.util.Arrays;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: loaded from: classes6.dex */
public class Placement {
    private static final Map<Integer, short[]> cache = new ConcurrentHashMap();
    private final short[] array;
    private final int ncol;
    private final int nrow;

    private Placement(int i, int i2) {
        this.nrow = i;
        this.ncol = i2;
        this.array = new short[i * i2];
    }

    public static short[] doPlacement(int i, int i2) {
        int i3 = (i * 1000) + i2;
        Map<Integer, short[]> map = cache;
        short[] sArr = map.get(Integer.valueOf(i3));
        if (sArr != null) {
            return sArr;
        }
        Placement placement = new Placement(i, i2);
        placement.ecc200();
        map.put(Integer.valueOf(i3), placement.array);
        return placement.array;
    }

    private void module(int i, int i2, int i3, int i4) {
        if (i < 0) {
            int i5 = this.nrow;
            i += i5;
            i2 += 4 - ((i5 + 4) % 8);
        }
        if (i2 < 0) {
            int i6 = this.ncol;
            i2 += i6;
            i += 4 - ((i6 + 4) % 8);
        }
        this.array[(i * this.ncol) + i2] = (short) ((i3 * 8) + i4);
    }

    private void utah(int i, int i2, int i3) {
        int i4 = i - 2;
        int i5 = i2 - 2;
        module(i4, i5, i3, 0);
        int i6 = i2 - 1;
        module(i4, i6, i3, 1);
        int i7 = i - 1;
        module(i7, i5, i3, 2);
        module(i7, i6, i3, 3);
        module(i7, i2, i3, 4);
        module(i, i5, i3, 5);
        module(i, i6, i3, 6);
        module(i, i2, i3, 7);
    }

    private void corner1(int i) {
        module(this.nrow - 1, 0, i, 0);
        module(this.nrow - 1, 1, i, 1);
        module(this.nrow - 1, 2, i, 2);
        module(0, this.ncol - 2, i, 3);
        module(0, this.ncol - 1, i, 4);
        module(1, this.ncol - 1, i, 5);
        module(2, this.ncol - 1, i, 6);
        module(3, this.ncol - 1, i, 7);
    }

    private void corner2(int i) {
        module(this.nrow - 3, 0, i, 0);
        module(this.nrow - 2, 0, i, 1);
        module(this.nrow - 1, 0, i, 2);
        module(0, this.ncol - 4, i, 3);
        module(0, this.ncol - 3, i, 4);
        module(0, this.ncol - 2, i, 5);
        module(0, this.ncol - 1, i, 6);
        module(1, this.ncol - 1, i, 7);
    }

    private void corner3(int i) {
        module(this.nrow - 3, 0, i, 0);
        module(this.nrow - 2, 0, i, 1);
        module(this.nrow - 1, 0, i, 2);
        module(0, this.ncol - 2, i, 3);
        module(0, this.ncol - 1, i, 4);
        module(1, this.ncol - 1, i, 5);
        module(2, this.ncol - 1, i, 6);
        module(3, this.ncol - 1, i, 7);
    }

    private void corner4(int i) {
        module(this.nrow - 1, 0, i, 0);
        module(this.nrow - 1, this.ncol - 1, i, 1);
        module(0, this.ncol - 3, i, 2);
        module(0, this.ncol - 2, i, 3);
        module(0, this.ncol - 1, i, 4);
        module(1, this.ncol - 3, i, 5);
        module(1, this.ncol - 2, i, 6);
        module(1, this.ncol - 1, i, 7);
    }

    private void ecc200() {
        int i;
        int i2;
        int i3 = 0;
        Arrays.fill(this.array, (short) 0);
        int i4 = 1;
        int i5 = 4;
        while (true) {
            if (i5 == this.nrow && i3 == 0) {
                corner1(i4);
                i4++;
            }
            if (i5 == this.nrow - 2 && i3 == 0 && this.ncol % 4 != 0) {
                corner2(i4);
                i4++;
            }
            if (i5 == this.nrow - 2 && i3 == 0 && this.ncol % 8 == 4) {
                corner3(i4);
                i4++;
            }
            if (i5 == this.nrow + 4 && i3 == 2 && this.ncol % 8 == 0) {
                corner4(i4);
                i4++;
            }
            while (true) {
                if (i5 < this.nrow && i3 >= 0 && this.array[(this.ncol * i5) + i3] == 0) {
                    utah(i5, i3, i4);
                    i4++;
                }
                int i6 = i5 - 2;
                int i7 = i3 + 2;
                if (i6 < 0 || i7 >= this.ncol) {
                    break;
                }
                i5 = i6;
                i3 = i7;
            }
            int i8 = i5 - 1;
            int i9 = i3 + 5;
            while (true) {
                if (i8 >= 0) {
                    int i10 = this.ncol;
                    if (i9 < i10 && this.array[(i10 * i8) + i9] == 0) {
                        utah(i8, i9, i4);
                        i4++;
                    }
                }
                int i11 = i8 + 2;
                int i12 = i9 - 2;
                i = this.nrow;
                if (i11 >= i || i12 < 0) {
                    break;
                }
                i8 = i11;
                i9 = i12;
            }
            i5 = i8 + 5;
            i3 = i9 - 1;
            if (i5 >= i && i3 >= (i2 = this.ncol)) {
                break;
            }
        }
        short[] sArr = this.array;
        if (sArr[(i * i2) - 1] == 0) {
            sArr[((i * i2) - i2) - 2] = 1;
            sArr[(i * i2) - 1] = 1;
        }
    }
}
