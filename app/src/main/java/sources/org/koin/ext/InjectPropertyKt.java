package org.koin.ext;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KMutableProperty0;
import org.koin.core.Koin;
import org.koin.core.scope.Scope;
import org.koin.p048mp.KoinPlatformTools;

/* JADX INFO: compiled from: InjectProperty.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(m2721d1 = {"\u0000\u001a\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u001a\u001b\u0010\u0000\u001a\u00020\u0001\"\u0006\b\u0000\u0010\u0002\u0018\u0001*\b\u0012\u0004\u0012\u0002H\u00020\u0003H\u0086\b\u001a#\u0010\u0000\u001a\u00020\u0001\"\u0006\b\u0000\u0010\u0002\u0018\u0001*\b\u0012\u0004\u0012\u0002H\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0086\b\u001a#\u0010\u0000\u001a\u00020\u0001\"\u0006\b\u0000\u0010\u0002\u0018\u0001*\b\u0012\u0004\u0012\u0002H\u00020\u00032\u0006\u0010\u0006\u001a\u00020\u0007H\u0086\b¨\u0006\b"}, m2722d2 = {"inject", "", "T", "Lkotlin/reflect/KMutableProperty0;", "koin", "Lorg/koin/core/Koin;", "scope", "Lorg/koin/core/scope/Scope;", "koin-core"}, m2723k = 2, m2724mv = {1, 5, 1}, m2726xi = 48)
public final class InjectPropertyKt {
    public static final /* synthetic */ void inject(KMutableProperty0 kMutableProperty0) {
        Intrinsics.checkNotNullParameter(kMutableProperty0, "<this>");
        Scope rootScope = KoinPlatformTools.INSTANCE.defaultContext().get().getScopeRegistry().getRootScope();
        Intrinsics.reifiedOperationMarker(4, "T");
        kMutableProperty0.set(rootScope.get(Reflection.getOrCreateKotlinClass(Object.class), null, null));
    }

    public static final /* synthetic */ void inject(KMutableProperty0 kMutableProperty0, Koin koin) {
        Intrinsics.checkNotNullParameter(kMutableProperty0, "<this>");
        Intrinsics.checkNotNullParameter(koin, "koin");
        Scope rootScope = koin.getScopeRegistry().getRootScope();
        Intrinsics.reifiedOperationMarker(4, "T");
        kMutableProperty0.set(rootScope.get(Reflection.getOrCreateKotlinClass(Object.class), null, null));
    }

    public static final /* synthetic */ void inject(KMutableProperty0 kMutableProperty0, Scope scope) {
        Intrinsics.checkNotNullParameter(kMutableProperty0, "<this>");
        Intrinsics.checkNotNullParameter(scope, "scope");
        Intrinsics.reifiedOperationMarker(4, "T");
        kMutableProperty0.set(scope.get(Reflection.getOrCreateKotlinClass(Object.class), null, null));
    }
}
