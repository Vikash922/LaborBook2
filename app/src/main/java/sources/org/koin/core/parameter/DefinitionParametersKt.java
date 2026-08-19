package org.koin.core.parameter;

import kotlin.Metadata;
import kotlin.collections.ArraysKt;
import kotlin.jvm.internal.Intrinsics;
import org.koin.core.error.DefinitionParameterException;

/* JADX INFO: compiled from: DefinitionParameters.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(m2721d1 = {"\u0000\u001c\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0011\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\u001a\u0006\u0010\u0000\u001a\u00020\u0001\u001a#\u0010\u0002\u001a\u00020\u00012\u0016\u0010\u0003\u001a\f\u0012\b\b\u0001\u0012\u0004\u0018\u00010\u00050\u0004\"\u0004\u0018\u00010\u0005¢\u0006\u0002\u0010\u0006*\u0016\u0010\u0007\"\b\u0012\u0004\u0012\u00020\u00010\b2\b\u0012\u0004\u0012\u00020\u00010\b¨\u0006\t"}, m2722d2 = {"emptyParametersHolder", "Lorg/koin/core/parameter/DefinitionParameters;", "parametersOf", "parameters", "", "", "([Ljava/lang/Object;)Lorg/koin/core/parameter/DefinitionParameters;", "ParametersDefinition", "Lkotlin/Function0;", "koin-core"}, m2723k = 2, m2724mv = {1, 5, 1}, m2726xi = 48)
public final class DefinitionParametersKt {
    public static final DefinitionParameters parametersOf(Object... parameters) throws DefinitionParameterException {
        Intrinsics.checkNotNullParameter(parameters, "parameters");
        if (parameters.length <= 5) {
            return new DefinitionParameters(ArraysKt.toMutableList(parameters));
        }
        throw new DefinitionParameterException("Can't build DefinitionParameters for more than 5 arguments");
    }

    public static final DefinitionParameters emptyParametersHolder() {
        return new DefinitionParameters(null, 1, null);
    }
}
