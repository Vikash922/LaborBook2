package com.itextpdf.commons.actions.sequence;

import java.util.concurrent.atomic.AtomicLong;

/* JADX INFO: loaded from: classes6.dex */
public final class SequenceId {
    private static final AtomicLong ID_GENERATOR = new AtomicLong();

    /* JADX INFO: renamed from: id */
    private final long f2849id = ID_GENERATOR.incrementAndGet();

    public long getId() {
        return this.f2849id;
    }
}
