package com.itextpdf.layout.hyphenation;

import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public interface IPatternConsumer {
    void addClass(String str);

    void addException(String str, List list);

    void addPattern(String str, String str2);
}
