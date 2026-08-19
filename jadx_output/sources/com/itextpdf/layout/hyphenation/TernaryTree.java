package com.itextpdf.layout.hyphenation;

import java.util.Enumeration;
import kotlin.jvm.internal.CharCompanionObject;

/* JADX INFO: loaded from: classes6.dex */
public class TernaryTree {
    static final /* synthetic */ boolean $assertionsDisabled = false;
    protected static final int BLOCK_SIZE = 2048;

    /* JADX INFO: renamed from: eq */
    protected char[] f3210eq;
    protected char freenode;

    /* JADX INFO: renamed from: hi */
    protected char[] f3211hi;

    /* JADX INFO: renamed from: kv */
    protected CharVector f3212kv;
    protected int length;

    /* JADX INFO: renamed from: lo */
    protected char[] f3213lo;
    protected char root;

    /* JADX INFO: renamed from: sc */
    protected char[] f3214sc;

    TernaryTree() {
        init();
    }

    TernaryTree(TernaryTree ternaryTree) {
        this.root = ternaryTree.root;
        this.freenode = ternaryTree.freenode;
        this.length = ternaryTree.length;
        this.f3213lo = (char[]) ternaryTree.f3213lo.clone();
        this.f3211hi = (char[]) ternaryTree.f3211hi.clone();
        this.f3210eq = (char[]) ternaryTree.f3210eq.clone();
        this.f3214sc = (char[]) ternaryTree.f3214sc.clone();
        this.f3212kv = new CharVector(ternaryTree.f3212kv);
    }

    protected void init() {
        this.root = (char) 0;
        this.freenode = (char) 1;
        this.length = 0;
        this.f3213lo = new char[2048];
        this.f3211hi = new char[2048];
        this.f3210eq = new char[2048];
        this.f3214sc = new char[2048];
        this.f3212kv = new CharVector();
    }

    public void insert(String str, char c) {
        int length = str.length();
        int i = length + 1;
        int i2 = this.freenode + i;
        char[] cArr = this.f3210eq;
        if (i2 > cArr.length) {
            redimNodeArrays(cArr.length + 2048);
        }
        char[] cArr2 = new char[i];
        str.getChars(0, length, cArr2, 0);
        cArr2[length] = 0;
        this.root = insert(new TreeInsertionParams(this.root, cArr2, 0, c));
    }

    public void insert(char[] cArr, int i, char c) {
        int iStrlen = this.freenode + strlen(cArr) + 1;
        char[] cArr2 = this.f3210eq;
        if (iStrlen > cArr2.length) {
            redimNodeArrays(cArr2.length + 2048);
        }
        this.root = insert(new TreeInsertionParams(this.root, cArr, i, c));
    }

    private Character insertNewBranchIfNeeded(TreeInsertionParams treeInsertionParams) {
        char c = treeInsertionParams.f3215p;
        char[] cArr = treeInsertionParams.key;
        int i = treeInsertionParams.start;
        char c2 = treeInsertionParams.val;
        int iStrlen = strlen(cArr, i);
        if (c != 0) {
            return null;
        }
        char c3 = this.freenode;
        this.freenode = (char) (c3 + 1);
        this.f3210eq[c3] = c2;
        this.length++;
        this.f3211hi[c3] = 0;
        if (iStrlen > 0) {
            this.f3214sc[c3] = CharCompanionObject.MAX_VALUE;
            this.f3213lo[c3] = (char) this.f3212kv.alloc(iStrlen + 1);
            strcpy(this.f3212kv.getArray(), this.f3213lo[c3], cArr, i);
        } else {
            this.f3214sc[c3] = 0;
            this.f3213lo[c3] = 0;
        }
        return Character.valueOf(c3);
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x008b A[PHI: r4
      0x008b: PHI (r4v3 com.itextpdf.layout.hyphenation.TernaryTree$TreeInsertionParams) = 
      (r4v2 com.itextpdf.layout.hyphenation.TernaryTree$TreeInsertionParams)
      (r4v4 com.itextpdf.layout.hyphenation.TernaryTree$TreeInsertionParams)
     binds: [B:16:0x0089, B:22:0x00a9] A[DONT_GENERATE, DONT_INLINE]] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private char insertIntoExistingBranch(com.itextpdf.layout.hyphenation.TernaryTree.TreeInsertionParams r12) {
        /*
            Method dump skipped, instruction units count: 216
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.itextpdf.layout.hyphenation.TernaryTree.insertIntoExistingBranch(com.itextpdf.layout.hyphenation.TernaryTree$TreeInsertionParams):char");
    }

    private char insert(TreeInsertionParams treeInsertionParams) {
        Character chInsertNewBranchIfNeeded = insertNewBranchIfNeeded(treeInsertionParams);
        if (chInsertNewBranchIfNeeded == null) {
            return insertIntoExistingBranch(treeInsertionParams);
        }
        return chInsertNewBranchIfNeeded.charValue();
    }

    public static int strcmp(char[] cArr, int i, char[] cArr2, int i2) {
        while (true) {
            char c = cArr[i];
            char c2 = cArr2[i2];
            if (c != c2) {
                return c - c2;
            }
            if (c == 0) {
                return 0;
            }
            i++;
            i2++;
        }
    }

    public static int strcmp(String str, char[] cArr, int i) {
        int length = str.length();
        int i2 = 0;
        while (i2 < length) {
            char cCharAt = str.charAt(i2);
            char c = cArr[i + i2];
            int i3 = cCharAt - c;
            if (i3 != 0 || c == 0) {
                return i3;
            }
            i2++;
        }
        char c2 = cArr[i + i2];
        if (c2 != 0) {
            return -c2;
        }
        return 0;
    }

    public static void strcpy(char[] cArr, int i, char[] cArr2, int i2) {
        while (true) {
            char c = cArr2[i2];
            if (c != 0) {
                i2++;
                cArr[i] = c;
                i++;
            } else {
                cArr[i] = 0;
                return;
            }
        }
    }

    public static int strlen(char[] cArr, int i) {
        int i2 = 0;
        while (i < cArr.length && cArr[i] != 0) {
            i2++;
            i++;
        }
        return i2;
    }

    public static int strlen(char[] cArr) {
        return strlen(cArr, 0);
    }

    public int find(String str) {
        int length = str.length();
        char[] cArr = new char[length + 1];
        str.getChars(0, length, cArr, 0);
        cArr[length] = 0;
        return find(cArr, 0);
    }

    public int find(char[] cArr, int i) {
        char c = this.root;
        while (c != 0) {
            char c2 = this.f3214sc[c];
            if (c2 == 65535) {
                if (strcmp(cArr, i, this.f3212kv.getArray(), this.f3213lo[c]) == 0) {
                    return this.f3210eq[c];
                }
                return -1;
            }
            char c3 = cArr[i];
            int i2 = c3 - c2;
            if (i2 == 0) {
                if (c3 == 0) {
                    return this.f3210eq[c];
                }
                i++;
                c = this.f3210eq[c];
            } else if (i2 < 0) {
                c = this.f3213lo[c];
            } else {
                c = this.f3211hi[c];
            }
        }
        return -1;
    }

    public boolean knows(String str) {
        return find(str) >= 0;
    }

    private void redimNodeArrays(int i) {
        char[] cArr = this.f3213lo;
        int length = i < cArr.length ? i : cArr.length;
        char[] cArr2 = new char[i];
        System.arraycopy(cArr, 0, cArr2, 0, length);
        this.f3213lo = cArr2;
        char[] cArr3 = new char[i];
        System.arraycopy(this.f3211hi, 0, cArr3, 0, length);
        this.f3211hi = cArr3;
        char[] cArr4 = new char[i];
        System.arraycopy(this.f3210eq, 0, cArr4, 0, length);
        this.f3210eq = cArr4;
        char[] cArr5 = new char[i];
        System.arraycopy(this.f3214sc, 0, cArr5, 0, length);
        this.f3214sc = cArr5;
    }

    public int size() {
        return this.length;
    }

    protected void insertBalanced(String[] strArr, char[] cArr, int i, int i2) {
        if (i2 < 1) {
            return;
        }
        int i3 = i2 >> 1;
        int i4 = i3 + i;
        insert(strArr[i4], cArr[i4]);
        insertBalanced(strArr, cArr, i, i3);
        insertBalanced(strArr, cArr, i4 + 1, (i2 - i3) - 1);
    }

    public void balance() {
        int i = this.length;
        String[] strArr = new String[i];
        char[] cArr = new char[i];
        TernaryTreeIterator ternaryTreeIterator = new TernaryTreeIterator(this);
        int i2 = 0;
        while (ternaryTreeIterator.hasMoreElements()) {
            cArr[i2] = ternaryTreeIterator.getValue();
            strArr[i2] = (String) ternaryTreeIterator.nextElement();
            i2++;
        }
        init();
        insertBalanced(strArr, cArr, 0, i);
    }

    public void trimToSize() {
        balance();
        redimNodeArrays(this.freenode);
        CharVector charVector = new CharVector();
        charVector.alloc(1);
        compact(charVector, new TernaryTree(), this.root);
        this.f3212kv = charVector;
        charVector.trimToSize();
    }

    private void compact(CharVector charVector, TernaryTree ternaryTree, char c) {
        if (c == 0) {
            return;
        }
        if (this.f3214sc[c] == 65535) {
            int iFind = ternaryTree.find(this.f3212kv.getArray(), this.f3213lo[c]);
            if (iFind < 0) {
                iFind = charVector.alloc(strlen(this.f3212kv.getArray(), this.f3213lo[c]) + 1);
                strcpy(charVector.getArray(), iFind, this.f3212kv.getArray(), this.f3213lo[c]);
                ternaryTree.insert(charVector.getArray(), iFind, (char) iFind);
            }
            this.f3213lo[c] = (char) iFind;
            return;
        }
        compact(charVector, ternaryTree, this.f3213lo[c]);
        if (this.f3214sc[c] != 0) {
            compact(charVector, ternaryTree, this.f3210eq[c]);
        }
        compact(charVector, ternaryTree, this.f3211hi[c]);
    }

    public Enumeration keys() {
        return new TernaryTreeIterator(this);
    }

    private static class TreeInsertionParams {
        char[] key;

        /* JADX INFO: renamed from: p */
        char f3215p;
        int start;
        char val;

        public TreeInsertionParams(char c, char[] cArr, int i, char c2) {
            this.f3215p = c;
            this.key = cArr;
            this.start = i;
            this.val = c2;
        }
    }
}
