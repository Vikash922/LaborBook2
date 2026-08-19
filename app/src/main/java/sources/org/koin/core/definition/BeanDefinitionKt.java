package org.koin.core.definition;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.KClass;
import org.koin.core.qualifier.Qualifier;
import org.koin.ext.KClassExtKt;

/* JADX INFO: compiled from: BeanDefinition.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(m2721d1 = {"\u0000*\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u001a\u001c\u0010\u0000\u001a\u00020\u00012\n\u0010\u0002\u001a\u0006\u0012\u0002\b\u00030\u00032\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005*>\u0010\u0006\u001a\u0004\b\u0000\u0010\u0007\"\u0019\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u0002H\u00070\b¢\u0006\u0002\b\u000b2\u0019\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u0002H\u00070\b¢\u0006\u0002\b\u000b*\n\u0010\f\"\u00020\u00012\u00020\u0001¨\u0006\r"}, m2722d2 = {"indexKey", "", "clazz", "Lkotlin/reflect/KClass;", "qualifier", "Lorg/koin/core/qualifier/Qualifier;", "Definition", "T", "Lkotlin/Function2;", "Lorg/koin/core/scope/Scope;", "Lorg/koin/core/parameter/DefinitionParameters;", "Lkotlin/ExtensionFunctionType;", "IndexKey", "koin-core"}, m2723k = 2, m2724mv = {1, 5, 1}, m2726xi = 48)
public final class BeanDefinitionKt {
    public static final String indexKey(KClass<?> clazz, Qualifier qualifier) {
        Intrinsics.checkNotNullParameter(clazz, "clazz");
        if ((qualifier == null ? null : qualifier.getValue()) != null) {
            return KClassExtKt.getFullName(clazz) + "::" + qualifier.getValue();
        }
        return KClassExtKt.getFullName(clazz);
    }
}
