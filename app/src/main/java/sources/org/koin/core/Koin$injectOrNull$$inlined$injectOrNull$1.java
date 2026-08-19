package org.koin.core;

import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlin.jvm.internal.Reflection;
import org.koin.core.parameter.DefinitionParameters;
import org.koin.core.qualifier.Qualifier;
import org.koin.core.scope.Scope;

/* JADX INFO: Add missing generic type declarations: [T] */
/* JADX INFO: compiled from: Scope.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(m2721d1 = {"\u0000\n\n\u0002\b\u0002\n\u0002\u0010\u0000\n\u0000\u0010\u0000\u001a\u0004\u0018\u0001H\u0001\"\n\b\u0000\u0010\u0001\u0018\u0001*\u00020\u0002H\n¨\u0006\u0003"}, m2722d2 = {"<anonymous>", "T", "", "org/koin/core/scope/Scope$injectOrNull$1"}, m2723k = 3, m2724mv = {1, 5, 1}, m2726xi = 48)
public final class Koin$injectOrNull$$inlined$injectOrNull$1<T> extends Lambda implements Function0<T> {
    final /* synthetic */ Function0 $parameters;
    final /* synthetic */ Qualifier $qualifier;
    final /* synthetic */ Scope this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public Koin$injectOrNull$$inlined$injectOrNull$1(Scope scope, Qualifier qualifier, Function0 function0) {
        super(0);
        this.this$0 = scope;
        this.$qualifier = qualifier;
        this.$parameters = function0;
    }

    @Override // kotlin.jvm.functions.Function0
    public final T invoke() {
        Scope scope = this.this$0;
        Qualifier qualifier = this.$qualifier;
        Function0<? extends DefinitionParameters> function0 = this.$parameters;
        Intrinsics.reifiedOperationMarker(4, "T");
        return (T) scope.getOrNull(Reflection.getOrCreateKotlinClass(Object.class), qualifier, function0);
    }
}
