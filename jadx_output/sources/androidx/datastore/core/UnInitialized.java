package androidx.datastore.core;

import kotlin.Metadata;

/* JADX INFO: compiled from: State.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(m2721d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\bÀ\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0003¨\u0006\u0004"}, m2722d2 = {"Landroidx/datastore/core/UnInitialized;", "Landroidx/datastore/core/State;", "", "()V", "datastore-core_release"}, m2723k = 1, m2724mv = {1, 8, 0}, m2726xi = 48)
public final class UnInitialized extends State<Object> {
    public static final UnInitialized INSTANCE = new UnInitialized();

    private UnInitialized() {
        super(-1, null);
    }
}
