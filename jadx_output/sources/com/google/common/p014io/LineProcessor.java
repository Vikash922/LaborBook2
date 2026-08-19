package com.google.common.p014io;

import java.io.IOException;

/* JADX INFO: loaded from: classes6.dex */
@ElementTypesAreNonnullByDefault
public interface LineProcessor<T> {
    @ParametricNullness
    T getResult();

    boolean processLine(String str) throws IOException;
}
