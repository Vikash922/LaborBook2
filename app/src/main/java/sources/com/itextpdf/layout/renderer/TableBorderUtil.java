package com.itextpdf.layout.renderer;

import com.itextpdf.layout.borders.Border;
import com.itextpdf.layout.element.Cell;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
final class TableBorderUtil {
    private TableBorderUtil() {
    }

    public static Border getCellSideBorder(Cell cell, int i) {
        Border border = (Border) cell.getProperty(i);
        if (border != null || cell.hasProperty(i)) {
            return border;
        }
        Border border2 = (Border) cell.getProperty(9);
        return (border2 != null || cell.hasProperty(9)) ? border2 : (Border) cell.getDefaultProperty(9);
    }

    public static Border getWidestBorder(List<Border> list) {
        Border border = null;
        if (list.size() != 0) {
            for (Border border2 : list) {
                if (border2 != null && (border == null || border2.getWidth() > border.getWidth())) {
                    border = border2;
                }
            }
        }
        return border;
    }

    public static Border getWidestBorder(List<Border> list, int i, int i2) {
        Border border = null;
        if (list.size() != 0) {
            for (Border border2 : list.subList(i, i2)) {
                if (border2 != null && (border == null || border2.getWidth() > border.getWidth())) {
                    border = border2;
                }
            }
        }
        return border;
    }

    public static List<Border> createAndFillBorderList(Border border, int i) {
        ArrayList arrayList = new ArrayList();
        for (int i2 = 0; i2 < i; i2++) {
            arrayList.add(border);
        }
        return arrayList;
    }

    public static List<Border> createAndFillBorderList(List<Border> list, Border border, int i) {
        ArrayList arrayList = new ArrayList();
        if (list != null) {
            arrayList.addAll(list);
        }
        while (arrayList.size() < i) {
            arrayList.add(border);
        }
        if (list != null) {
            i = Math.min(list.size(), i);
        }
        for (int i2 = 0; i2 < i; i2++) {
            if (arrayList.get(i2) == null || (border != null && ((Border) arrayList.get(i2)).getWidth() <= border.getWidth())) {
                arrayList.set(i2, border);
            }
        }
        return arrayList;
    }
}
