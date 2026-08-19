package org.koin.core.component;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.koin.core.Koin;
import org.koin.p048mp.KoinPlatformTools;

/* JADX INFO: compiled from: KoinComponent.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(m2721d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\bf\u0018\u00002\u00020\u0001J\b\u0010\u0002\u001a\u00020\u0003H\u0016¨\u0006\u0004"}, m2722d2 = {"Lorg/koin/core/component/KoinComponent;", "", "getKoin", "Lorg/koin/core/Koin;", "koin-core"}, m2723k = 1, m2724mv = {1, 5, 1}, m2726xi = 48)
public interface KoinComponent {
    Koin getKoin();

    /* JADX INFO: compiled from: KoinComponent.kt */
    @Metadata(m2723k = 3, m2724mv = {1, 5, 1}, m2726xi = 48)
    public static final class DefaultImpls {
        public static Koin getKoin(KoinComponent koinComponent) {
            Intrinsics.checkNotNullParameter(koinComponent, "this");
            return KoinPlatformTools.INSTANCE.defaultContext().get();
        }
    }
}
