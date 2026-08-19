package com.itextpdf.kernel.utils;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes6.dex */
public class PageRange {
    private static final Pattern SEQUENCE_PATTERN = Pattern.compile("(\\d+)-(\\d+)?");
    private static final Pattern SINGLE_PAGE_PATTERN = Pattern.compile("(\\d+)");
    private List<IPageRangePart> sequences = new ArrayList();

    public interface IPageRangePart {
        List<Integer> getAllPagesInRange(int i);

        boolean isPageInRange(int i);
    }

    public PageRange() {
    }

    public PageRange(String str) {
        for (String str2 : str.replaceAll("\\s+", "").split(",")) {
            IPageRangePart rangeObject = getRangeObject(str2);
            if (rangeObject != null) {
                this.sequences.add(rangeObject);
            }
        }
    }

    private static IPageRangePart getRangeObject(String str) {
        if (str.contains("&")) {
            ArrayList arrayList = new ArrayList();
            for (String str2 : str.split("&")) {
                IPageRangePart rangeObject = getRangeObject(str2);
                if (rangeObject != null) {
                    arrayList.add(rangeObject);
                }
            }
            if (arrayList.size() > 0) {
                return new PageRangePartAnd((IPageRangePart[]) arrayList.toArray(new IPageRangePart[0]));
            }
            return null;
        }
        Matcher matcher = SEQUENCE_PATTERN.matcher(str);
        if (matcher.matches()) {
            int i = Integer.parseInt(matcher.group(1));
            if (matcher.group(2) != null) {
                return new PageRangePartSequence(i, Integer.parseInt(matcher.group(2)));
            }
            return new PageRangePartAfter(i);
        }
        Matcher matcher2 = SINGLE_PAGE_PATTERN.matcher(str);
        if (matcher2.matches()) {
            return new PageRangePartSingle(Integer.parseInt(matcher2.group(1)));
        }
        if ("odd".equalsIgnoreCase(str)) {
            return PageRangePartOddEven.ODD;
        }
        if ("even".equalsIgnoreCase(str)) {
            return PageRangePartOddEven.EVEN;
        }
        return null;
    }

    public PageRange addPageRangePart(IPageRangePart iPageRangePart) {
        this.sequences.add(iPageRangePart);
        return this;
    }

    public PageRange addPageSequence(int i, int i2) {
        return addPageRangePart(new PageRangePartSequence(i, i2));
    }

    public PageRange addSinglePage(int i) {
        return addPageRangePart(new PageRangePartSingle(i));
    }

    public List<Integer> getQualifyingPageNums(int i) {
        ArrayList arrayList = new ArrayList();
        Iterator<IPageRangePart> it = this.sequences.iterator();
        while (it.hasNext()) {
            arrayList.addAll(it.next().getAllPagesInRange(i));
        }
        return arrayList;
    }

    public boolean isPageInRange(int i) {
        Iterator<IPageRangePart> it = this.sequences.iterator();
        while (it.hasNext()) {
            if (it.next().isPageInRange(i)) {
                return true;
            }
        }
        return false;
    }

    public boolean equals(Object obj) {
        if (obj instanceof PageRange) {
            return this.sequences.equals(((PageRange) obj).sequences);
        }
        return false;
    }

    public int hashCode() {
        Iterator<IPageRangePart> it = this.sequences.iterator();
        int iHashCode = 0;
        while (it.hasNext()) {
            iHashCode += it.next().hashCode();
        }
        return iHashCode;
    }

    public static class PageRangePartSingle implements IPageRangePart {
        private final int page;

        public PageRangePartSingle(int i) {
            this.page = i;
        }

        @Override // com.itextpdf.kernel.utils.PageRange.IPageRangePart
        public List<Integer> getAllPagesInRange(int i) {
            int i2 = this.page;
            if (i2 <= i) {
                return Collections.singletonList(Integer.valueOf(i2));
            }
            return Collections.emptyList();
        }

        @Override // com.itextpdf.kernel.utils.PageRange.IPageRangePart
        public boolean isPageInRange(int i) {
            return this.page == i;
        }

        public boolean equals(Object obj) {
            return (obj instanceof PageRangePartSingle) && this.page == ((PageRangePartSingle) obj).page;
        }

        public int hashCode() {
            return this.page;
        }
    }

    public static class PageRangePartSequence implements IPageRangePart {
        private final int end;
        private final int start;

        public PageRangePartSequence(int i, int i2) {
            this.start = i;
            this.end = i2;
        }

        @Override // com.itextpdf.kernel.utils.PageRange.IPageRangePart
        public List<Integer> getAllPagesInRange(int i) {
            ArrayList arrayList = new ArrayList();
            for (int i2 = this.start; i2 <= this.end && i2 <= i; i2++) {
                arrayList.add(Integer.valueOf(i2));
            }
            return arrayList;
        }

        @Override // com.itextpdf.kernel.utils.PageRange.IPageRangePart
        public boolean isPageInRange(int i) {
            return this.start <= i && i <= this.end;
        }

        public boolean equals(Object obj) {
            if (!(obj instanceof PageRangePartSequence)) {
                return false;
            }
            PageRangePartSequence pageRangePartSequence = (PageRangePartSequence) obj;
            return this.start == pageRangePartSequence.start && this.end == pageRangePartSequence.end;
        }

        public int hashCode() {
            return (this.start * 31) + this.end;
        }
    }

    public static class PageRangePartAfter implements IPageRangePart {
        private final int start;

        public PageRangePartAfter(int i) {
            this.start = i;
        }

        @Override // com.itextpdf.kernel.utils.PageRange.IPageRangePart
        public List<Integer> getAllPagesInRange(int i) {
            ArrayList arrayList = new ArrayList();
            for (int i2 = this.start; i2 <= i; i2++) {
                arrayList.add(Integer.valueOf(i2));
            }
            return arrayList;
        }

        @Override // com.itextpdf.kernel.utils.PageRange.IPageRangePart
        public boolean isPageInRange(int i) {
            return this.start <= i;
        }

        public boolean equals(Object obj) {
            return (obj instanceof PageRangePartAfter) && this.start == ((PageRangePartAfter) obj).start;
        }

        public int hashCode() {
            return (this.start * 31) - 1;
        }
    }

    public static class PageRangePartOddEven implements IPageRangePart {
        private final boolean isOdd;
        private final int mod;
        public static final PageRangePartOddEven ODD = new PageRangePartOddEven(true);
        public static final PageRangePartOddEven EVEN = new PageRangePartOddEven(false);

        private PageRangePartOddEven(boolean z) {
            this.isOdd = z;
            if (z) {
                this.mod = 1;
            } else {
                this.mod = 0;
            }
        }

        @Override // com.itextpdf.kernel.utils.PageRange.IPageRangePart
        public List<Integer> getAllPagesInRange(int i) {
            ArrayList arrayList = new ArrayList();
            int i2 = this.mod;
            if (i2 == 0) {
                i2 = 2;
            }
            while (i2 <= i) {
                arrayList.add(Integer.valueOf(i2));
                i2 += 2;
            }
            return arrayList;
        }

        @Override // com.itextpdf.kernel.utils.PageRange.IPageRangePart
        public boolean isPageInRange(int i) {
            return i % 2 == this.mod;
        }

        public boolean equals(Object obj) {
            return (obj instanceof PageRangePartOddEven) && this.isOdd == ((PageRangePartOddEven) obj).isOdd;
        }

        public int hashCode() {
            return this.isOdd ? 127 : 128;
        }
    }

    public static class PageRangePartAnd implements IPageRangePart {
        private final List<IPageRangePart> conditions;

        public PageRangePartAnd(IPageRangePart... iPageRangePartArr) {
            ArrayList arrayList = new ArrayList();
            this.conditions = arrayList;
            arrayList.addAll(Arrays.asList(iPageRangePartArr));
        }

        @Override // com.itextpdf.kernel.utils.PageRange.IPageRangePart
        public List<Integer> getAllPagesInRange(int i) {
            ArrayList arrayList = new ArrayList();
            if (!this.conditions.isEmpty()) {
                arrayList.addAll(this.conditions.get(0).getAllPagesInRange(i));
            }
            Iterator<IPageRangePart> it = this.conditions.iterator();
            while (it.hasNext()) {
                arrayList.retainAll(it.next().getAllPagesInRange(i));
            }
            return arrayList;
        }

        @Override // com.itextpdf.kernel.utils.PageRange.IPageRangePart
        public boolean isPageInRange(int i) {
            Iterator<IPageRangePart> it = this.conditions.iterator();
            while (it.hasNext()) {
                if (!it.next().isPageInRange(i)) {
                    return false;
                }
            }
            return true;
        }

        public boolean equals(Object obj) {
            if (obj instanceof PageRangePartAnd) {
                return this.conditions.equals(((PageRangePartAnd) obj).conditions);
            }
            return false;
        }

        public int hashCode() {
            Iterator<IPageRangePart> it = this.conditions.iterator();
            int iHashCode = 0;
            while (it.hasNext()) {
                iHashCode += it.next().hashCode();
            }
            return iHashCode;
        }
    }
}
