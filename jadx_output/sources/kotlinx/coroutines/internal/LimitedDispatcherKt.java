package kotlinx.coroutines.internal;

import kotlin.Metadata;

/* JADX INFO: compiled from: LimitedDispatcher.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(m2721d1 = {"\u0000\f\n\u0000\n\u0002\u0010\u0002\n\u0002\u0010\b\n\u0000\u001a\f\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u0000¨\u0006\u0003"}, m2722d2 = {"checkParallelism", "", "", "kotlinx-coroutines-core"}, m2723k = 2, m2724mv = {1, 9, 0}, m2726xi = 48)
public final class LimitedDispatcherKt {
    public static final void checkParallelism(int i) {
        if (i < 1) {
            throw new IllegalArgumentException(("Expected positive parallelism level, but got " + i).toString());
        }
    }
}
