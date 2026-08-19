package com.amplitude.core.utilities;

import com.amplitude.core.Amplitude;
import com.amplitude.core.Storage;
import com.amplitude.core.StorageProvider;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: InMemoryStorage.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(m2721d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u001a\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\b\u0010\u0007\u001a\u0004\u0018\u00010\bH\u0016¨\u0006\t"}, m2722d2 = {"Lcom/amplitude/core/utilities/InMemoryStorageProvider;", "Lcom/amplitude/core/StorageProvider;", "()V", "getStorage", "Lcom/amplitude/core/Storage;", "amplitude", "Lcom/amplitude/core/Amplitude;", "prefix", "", "core"}, m2723k = 1, m2724mv = {1, 5, 1}, m2726xi = 48)
public final class InMemoryStorageProvider implements StorageProvider {
    @Override // com.amplitude.core.StorageProvider
    public Storage getStorage(Amplitude amplitude, String prefix) {
        Intrinsics.checkNotNullParameter(amplitude, "amplitude");
        return new InMemoryStorage();
    }
}
