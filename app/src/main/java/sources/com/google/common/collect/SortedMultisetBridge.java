package com.google.common.collect;

import java.util.SortedSet;

/* JADX INFO: loaded from: classes6.dex */
@ElementTypesAreNonnullByDefault
interface SortedMultisetBridge<E> extends Multiset<E> {
    @Override // com.google.common.collect.Multiset
    SortedSet<E> elementSet();
}
