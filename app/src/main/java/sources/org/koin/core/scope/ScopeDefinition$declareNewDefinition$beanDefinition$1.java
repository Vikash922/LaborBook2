package org.koin.core.scope;

import kotlin.Metadata;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import org.koin.core.parameter.DefinitionParameters;

/* JADX INFO: compiled from: ScopeDefinition.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(m2721d1 = {"\u0000\u0012\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\u0004\u0018\u00010\u0001\"\u0006\b\u0000\u0010\u0002\u0018\u0001*\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\n"}, m2722d2 = {"<anonymous>", "", "T", "Lorg/koin/core/scope/Scope;", "it", "Lorg/koin/core/parameter/DefinitionParameters;"}, m2723k = 3, m2724mv = {1, 5, 1}, m2726xi = 48)
public final class ScopeDefinition$declareNewDefinition$beanDefinition$1 extends Lambda implements Function2<Scope, DefinitionParameters, Object> {
    final /* synthetic */ T $instance;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ScopeDefinition$declareNewDefinition$beanDefinition$1(T t) {
        super(2);
        this.$instance = t;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Scope createSingle, DefinitionParameters it) {
        Intrinsics.checkNotNullParameter(createSingle, "$this$createSingle");
        Intrinsics.checkNotNullParameter(it, "it");
        return this.$instance;
    }
}
