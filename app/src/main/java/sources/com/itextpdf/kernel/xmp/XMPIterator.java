package com.itextpdf.kernel.xmp;

import java.util.Iterator;

/* JADX INFO: loaded from: classes6.dex */
public interface XMPIterator extends Iterator {
    void skipSiblings();

    void skipSubtree();
}
