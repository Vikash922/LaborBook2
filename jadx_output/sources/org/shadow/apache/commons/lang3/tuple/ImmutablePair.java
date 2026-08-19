package org.shadow.apache.commons.lang3.tuple;

/* JADX INFO: loaded from: classes4.dex */
public final class ImmutablePair<L, R> extends Pair<L, R> {
    private static final long serialVersionUID = 4954918890077093841L;
    public final L left;
    public final R right;

    /* JADX INFO: renamed from: of */
    public static <L, R> ImmutablePair<L, R> m2907of(L l, R r) {
        return new ImmutablePair<>(l, r);
    }

    public ImmutablePair(L l, R r) {
        this.left = l;
        this.right = r;
    }

    @Override // org.shadow.apache.commons.lang3.tuple.Pair
    public L getLeft() {
        return this.left;
    }

    @Override // org.shadow.apache.commons.lang3.tuple.Pair
    public R getRight() {
        return this.right;
    }

    @Override // java.util.Map.Entry
    public R setValue(R r) {
        throw new UnsupportedOperationException();
    }
}
