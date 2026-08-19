package org.shadow.apache.commons.lang3.tuple;

/* JADX INFO: loaded from: classes4.dex */
public final class ImmutableTriple<L, M, R> extends Triple<L, M, R> {
    private static final long serialVersionUID = 1;
    public final L left;
    public final M middle;
    public final R right;

    /* JADX INFO: renamed from: of */
    public static <L, M, R> ImmutableTriple<L, M, R> m2908of(L l, M m, R r) {
        return new ImmutableTriple<>(l, m, r);
    }

    public ImmutableTriple(L l, M m, R r) {
        this.left = l;
        this.middle = m;
        this.right = r;
    }

    @Override // org.shadow.apache.commons.lang3.tuple.Triple
    public L getLeft() {
        return this.left;
    }

    @Override // org.shadow.apache.commons.lang3.tuple.Triple
    public M getMiddle() {
        return this.middle;
    }

    @Override // org.shadow.apache.commons.lang3.tuple.Triple
    public R getRight() {
        return this.right;
    }
}
