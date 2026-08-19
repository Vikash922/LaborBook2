package androidx.datastore.core;

import kotlin.Metadata;
import kotlinx.coroutines.CoroutineDispatcher;
import kotlinx.coroutines.Dispatchers;

/* JADX INFO: compiled from: Actual.jvm.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(m2721d1 = {"\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u001a\b\u0010\u0000\u001a\u00020\u0001H\u0000*\n\u0010\u0002\"\u00020\u00032\u00020\u0003¨\u0006\u0004"}, m2722d2 = {"ioDispatcher", "Lkotlinx/coroutines/CoroutineDispatcher;", "IOException", "Ljava/io/IOException;", "datastore-core_release"}, m2723k = 2, m2724mv = {1, 8, 0}, m2726xi = 48)
public final class Actual_jvmKt {
    public static final CoroutineDispatcher ioDispatcher() {
        return Dispatchers.getIO();
    }
}
