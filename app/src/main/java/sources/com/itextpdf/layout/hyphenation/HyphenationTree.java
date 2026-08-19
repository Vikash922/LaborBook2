package com.itextpdf.layout.hyphenation;

import com.google.common.base.Ascii;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.shadow.apache.commons.lang3.ClassUtils;

/* JADX INFO: loaded from: classes6.dex */
public class HyphenationTree extends TernaryTree implements IPatternConsumer {
    private TernaryTree ivalues;
    protected ByteVector vspace;
    protected Map<String, List> stoplist = new HashMap(23);
    protected TernaryTree classmap = new TernaryTree();

    public HyphenationTree() {
        ByteVector byteVector = new ByteVector();
        this.vspace = byteVector;
        byteVector.alloc(1);
    }

    protected int packValues(String str) {
        int length = str.length();
        int i = (length & 1) == 1 ? (length >> 1) + 2 : (length >> 1) + 1;
        int iAlloc = this.vspace.alloc(i);
        byte[] array = this.vspace.getArray();
        for (int i2 = 0; i2 < length; i2++) {
            int i3 = i2 >> 1;
            byte bCharAt = (byte) ((str.charAt(i2) - '/') & 15);
            if ((i2 & 1) == 1) {
                int i4 = i3 + iAlloc;
                array[i4] = (byte) (bCharAt | array[i4]);
            } else {
                array[i3 + iAlloc] = (byte) (bCharAt << 4);
            }
        }
        array[(i - 1) + iAlloc] = 0;
        return iAlloc;
    }

    protected String unpackValues(int i) {
        StringBuffer stringBuffer = new StringBuffer();
        int i2 = i + 1;
        byte b = this.vspace.get(i);
        while (b != 0) {
            stringBuffer.append((char) ((b >>> 4) + 47));
            char c = (char) (b & Ascii.f393SI);
            if (c == 0) {
                break;
            }
            stringBuffer.append((char) (c + '/'));
            b = this.vspace.get(i2);
            i2++;
        }
        return stringBuffer.toString();
    }

    public void loadPatterns(String str) throws HyphenationException, FileNotFoundException {
        loadPatterns(new FileInputStream(str), str);
    }

    public void loadPatterns(InputStream inputStream, String str) throws HyphenationException {
        PatternParser patternParser = new PatternParser(this);
        this.ivalues = new TernaryTree();
        patternParser.parse(inputStream, str);
        trimToSize();
        this.vspace.trimToSize();
        this.classmap.trimToSize();
        this.ivalues = null;
    }

    public String findPattern(String str) {
        int iFind = super.find(str);
        if (iFind >= 0) {
            return unpackValues(iFind);
        }
        return "";
    }

    protected int hstrcmp(char[] cArr, int i, char[] cArr2, int i2) {
        while (true) {
            char c = cArr[i];
            char c2 = cArr2[i2];
            if (c != c2) {
                if (c2 == 0) {
                    return 0;
                }
                return c - c2;
            }
            if (c == 0) {
                return 0;
            }
            i++;
            i2++;
        }
    }

    protected byte[] getValues(int i) {
        StringBuffer stringBuffer = new StringBuffer();
        int i2 = i + 1;
        byte b = this.vspace.get(i);
        while (b != 0) {
            stringBuffer.append((char) ((b >>> 4) - 1));
            char c = (char) (b & Ascii.f393SI);
            if (c == 0) {
                break;
            }
            stringBuffer.append((char) (c - 1));
            b = this.vspace.get(i2);
            i2++;
        }
        int length = stringBuffer.length();
        byte[] bArr = new byte[length];
        for (int i3 = 0; i3 < length; i3++) {
            bArr[i3] = (byte) stringBuffer.charAt(i3);
        }
        return bArr;
    }

    protected void searchPatterns(char[] cArr, int i, byte[] bArr) {
        byte b;
        byte b2;
        char c = cArr[i];
        char c2 = this.root;
        int i2 = i;
        while (c2 > 0 && c2 < this.f3214sc.length) {
            int i3 = 0;
            if (this.f3214sc[c2] == 65535) {
                if (hstrcmp(cArr, i2, this.f3212kv.getArray(), this.f3213lo[c2]) == 0) {
                    byte[] values = getValues(this.f3210eq[c2]);
                    while (i3 < values.length) {
                        if (i < bArr.length && (b = values[i3]) > bArr[i]) {
                            bArr[i] = b;
                        }
                        i++;
                        i3++;
                    }
                    return;
                }
                return;
            }
            int i4 = c - this.f3214sc[c2];
            if (i4 != 0) {
                c2 = i4 < 0 ? this.f3213lo[c2] : this.f3211hi[c2];
            } else {
                if (c == 0) {
                    return;
                }
                i2++;
                c = cArr[i2];
                c2 = this.f3210eq[c2];
                char c3 = c2;
                while (true) {
                    if (c3 <= 0 || c3 >= this.f3214sc.length || this.f3214sc[c3] == 65535) {
                        break;
                    }
                    if (this.f3214sc[c3] == 0) {
                        byte[] values2 = getValues(this.f3210eq[c3]);
                        int i5 = i;
                        while (i3 < values2.length) {
                            if (i5 < bArr.length && (b2 = values2[i3]) > bArr[i5]) {
                                bArr[i5] = b2;
                            }
                            i5++;
                            i3++;
                        }
                    } else {
                        c3 = this.f3213lo[c3];
                    }
                }
            }
        }
    }

    public Hyphenation hyphenate(String str, int i, int i2) {
        char[] charArray = str.toCharArray();
        if (isMultiPartWord(charArray, charArray.length)) {
            return new Hyphenation(new String(charArray), getHyphPointsForWords(splitOnNonCharacters(charArray), i, i2));
        }
        return hyphenate(charArray, 0, charArray.length, i, i2);
    }

    private boolean isMultiPartWord(char[] cArr, int i) {
        int i2 = 0;
        for (int i3 = 0; i3 < i; i3++) {
            if (this.classmap.find(new char[]{cArr[i3], 0}, 0) > 0) {
                if (i2 > 1) {
                    return true;
                }
                i2 = 1;
            } else if (i2 == 1) {
                i2++;
            }
        }
        return false;
    }

    private List<char[]> splitOnNonCharacters(char[] cArr) {
        List<Integer> nonLetterBreaks = getNonLetterBreaks(cArr);
        if (nonLetterBreaks.size() == 0) {
            return Collections.emptyList();
        }
        ArrayList arrayList = new ArrayList();
        int i = 0;
        while (i < nonLetterBreaks.size()) {
            arrayList.add(getWordFromCharArray(cArr, i == 0 ? 0 : nonLetterBreaks.get(i - 1).intValue(), nonLetterBreaks.get(i).intValue()));
            i++;
        }
        if ((cArr.length - nonLetterBreaks.get(nonLetterBreaks.size() - 1).intValue()) - 1 > 1) {
            arrayList.add(getWordFromCharArray(cArr, nonLetterBreaks.get(nonLetterBreaks.size() - 1).intValue(), cArr.length));
        }
        return arrayList;
    }

    private List<Integer> getNonLetterBreaks(char[] cArr) {
        char[] cArr2 = new char[2];
        ArrayList arrayList = new ArrayList();
        boolean z = false;
        for (int i = 0; i < cArr.length; i++) {
            cArr2[0] = cArr[i];
            if (this.classmap.find(cArr2, 0) >= 0) {
                z = true;
            } else if (z) {
                arrayList.add(Integer.valueOf(i));
            }
        }
        return arrayList;
    }

    private char[] getWordFromCharArray(char[] cArr, int i, int i2) {
        char[] cArr2 = new char[i2 - (i == 0 ? i : i + 1)];
        int i3 = 0;
        int i4 = i == 0 ? 0 : i + 1;
        while (i4 < i2) {
            cArr2[i3] = cArr[i4];
            i4++;
            i3++;
        }
        return cArr2;
    }

    private int[] getHyphPointsForWords(List<char[]> list, int i, int i2) {
        int[] iArr = new int[0];
        int i3 = 0;
        while (i3 < list.size()) {
            char[] cArr = list.get(i3);
            Hyphenation hyphenationHyphenate = hyphenate(cArr, 0, cArr.length, i3 == 0 ? i : 1, i3 == list.size() - 1 ? i2 : 1);
            if (hyphenationHyphenate != null) {
                int[] iArr2 = new int[iArr.length + hyphenationHyphenate.getHyphenationPoints().length];
                int[] hyphenationPoints = hyphenationHyphenate.getHyphenationPoints();
                int iCalcForeWordsSize = calcForeWordsSize(list, i3);
                for (int i4 = 0; i4 < hyphenationPoints.length; i4++) {
                    hyphenationPoints[i4] = hyphenationPoints[i4] + iCalcForeWordsSize;
                }
                System.arraycopy(iArr, 0, iArr2, 0, iArr.length);
                System.arraycopy(hyphenationPoints, 0, iArr2, iArr.length, hyphenationPoints.length);
                iArr = iArr2;
            }
            i3++;
        }
        return iArr;
    }

    private int calcForeWordsSize(List<char[]> list, int i) {
        int length = 0;
        for (int i2 = 0; i2 < i; i2++) {
            length += list.get(i2).length + 1;
        }
        return length;
    }

    public Hyphenation hyphenate(char[] cArr, int i, int i2, int i3, int i4) {
        int i5;
        char[] cArr2 = new char[i2 + 3];
        char[] cArr3 = new char[2];
        int i6 = i2;
        boolean z = false;
        int i7 = 0;
        for (int i8 = 1; i8 <= i2; i8++) {
            cArr3[0] = cArr[(i + i8) - 1];
            int iFind = this.classmap.find(cArr3, 0);
            if (iFind < 0) {
                int i9 = i7 + 1;
                if (i8 == i9) {
                    i7 = i9;
                } else {
                    z = true;
                }
                i6--;
            } else {
                if (z) {
                    return null;
                }
                cArr2[i8 - i7] = (char) iFind;
            }
        }
        if (i6 < i3 + i4) {
            return null;
        }
        int i10 = i6 + 1;
        int[] iArr = new int[i10];
        String str = new String(cArr2, 1, i6);
        if (this.stoplist.containsKey(str)) {
            ArrayList arrayList = (ArrayList) this.stoplist.get(str);
            int length = 0;
            i5 = 0;
            for (int i11 = 0; i11 < arrayList.size(); i11++) {
                Object obj = arrayList.get(i11);
                if ((obj instanceof String) && (length = length + ((String) obj).length()) >= i3 && length < i6 - i4) {
                    iArr[i5] = length + i7;
                    i5++;
                }
            }
        } else {
            cArr2[0] = ClassUtils.PACKAGE_SEPARATOR_CHAR;
            cArr2[i10] = ClassUtils.PACKAGE_SEPARATOR_CHAR;
            cArr2[i6 + 2] = 0;
            byte[] bArr = new byte[i6 + 3];
            for (int i12 = 0; i12 < i10; i12++) {
                searchPatterns(cArr2, i12, bArr);
            }
            int i13 = 0;
            int i14 = 0;
            while (i14 < i6) {
                int i15 = i14 + 1;
                if ((bArr[i15] & 1) == 1 && i14 >= i3 && i14 <= i6 - i4) {
                    iArr[i13] = i14;
                    i13++;
                }
                i14 = i15;
            }
            i5 = i13;
        }
        if (i5 <= 0) {
            return null;
        }
        int[] iArr2 = new int[i5];
        System.arraycopy(iArr, 0, iArr2, 0, i5);
        return new Hyphenation(new String(cArr, i7, i6), iArr2);
    }

    @Override // com.itextpdf.layout.hyphenation.IPatternConsumer
    public void addClass(String str) {
        if (str.length() > 0) {
            char cCharAt = str.charAt(0);
            char[] cArr = new char[2];
            cArr[1] = 0;
            for (int i = 0; i < str.length(); i++) {
                cArr[0] = str.charAt(i);
                this.classmap.insert(cArr, 0, cCharAt);
            }
        }
    }

    @Override // com.itextpdf.layout.hyphenation.IPatternConsumer
    public void addException(String str, List list) {
        this.stoplist.put(str, list);
    }

    @Override // com.itextpdf.layout.hyphenation.IPatternConsumer
    public void addPattern(String str, String str2) {
        int iFind = this.ivalues.find(str2);
        if (iFind <= 0) {
            iFind = packValues(str2);
            this.ivalues.insert(str2, (char) iFind);
        }
        insert(str, (char) iFind);
    }
}
