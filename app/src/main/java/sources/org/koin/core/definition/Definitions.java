package org.koin.core.definition;

import com.facebook.gamingservices.cloudgaming.internal.SDKConstants;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KClass;
import org.koin.core.parameter.DefinitionParameters;
import org.koin.core.qualifier.Qualifier;
import org.koin.core.scope.Scope;

/* JADX INFO: compiled from: Definitions.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(m2721d1 = {"\u0000B\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0004\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002Ju\u0010\u0003\u001a\b\u0012\u0004\u0012\u0002H\u00050\u0004\"\u0006\b\u0000\u0010\u0005\u0018\u00012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00072)\b\b\u0010\b\u001a#\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u0002H\u00050\tj\b\u0012\u0004\u0012\u0002H\u0005`\f¢\u0006\u0002\b\r2\u0006\u0010\u000e\u001a\u00020\u000f2\u0012\b\u0002\u0010\u0010\u001a\f\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u00120\u00112\u0006\u0010\u0013\u001a\u00020\u0007H\u0086\bø\u0001\u0000Jk\u0010\u0014\u001a\u0006\u0012\u0002\b\u00030\u00042\n\u0010\u0015\u001a\u0006\u0012\u0002\b\u00030\u00122\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00072#\u0010\b\u001a\u001f\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\u000b\u0012\u0002\b\u00030\tj\u0006\u0012\u0002\b\u0003`\f¢\u0006\u0002\b\r2\u0006\u0010\u000e\u001a\u00020\u000f2\u0012\b\u0002\u0010\u0010\u001a\f\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u00120\u00112\u0006\u0010\u0013\u001a\u00020\u0007Ju\u0010\u0014\u001a\b\u0012\u0004\u0012\u0002H\u00050\u0004\"\u0006\b\u0000\u0010\u0005\u0018\u00012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00072)\b\b\u0010\b\u001a#\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u0002H\u00050\tj\b\u0012\u0004\u0012\u0002H\u0005`\f¢\u0006\u0002\b\r2\u0006\u0010\u000e\u001a\u00020\u000f2\u0012\b\u0002\u0010\u0010\u001a\f\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u00120\u00112\u0006\u0010\u0013\u001a\u00020\u0007H\u0086\bø\u0001\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u0016"}, m2722d2 = {"Lorg/koin/core/definition/Definitions;", "", "()V", "createFactory", "Lorg/koin/core/definition/BeanDefinition;", "T", "qualifier", "Lorg/koin/core/qualifier/Qualifier;", "definition", "Lkotlin/Function2;", "Lorg/koin/core/scope/Scope;", "Lorg/koin/core/parameter/DefinitionParameters;", "Lorg/koin/core/definition/Definition;", "Lkotlin/ExtensionFunctionType;", SDKConstants.PARAM_GAME_REQUESTS_OPTIONS, "Lorg/koin/core/definition/Options;", "secondaryTypes", "", "Lkotlin/reflect/KClass;", "scopeQualifier", "createSingle", "clazz", "koin-core"}, m2723k = 1, m2724mv = {1, 5, 1}, m2726xi = 48)
public final class Definitions {
    public static final Definitions INSTANCE = new Definitions();

    private Definitions() {
    }

    public static /* synthetic */ BeanDefinition createSingle$default(Definitions definitions, Qualifier qualifier, Function2 definition, Options options, List list, Qualifier scopeQualifier, int i, Object obj) {
        Qualifier qualifier2 = (i & 1) != 0 ? null : qualifier;
        List secondaryTypes = (i & 8) != 0 ? CollectionsKt.emptyList() : list;
        Intrinsics.checkNotNullParameter(definition, "definition");
        Intrinsics.checkNotNullParameter(options, "options");
        Intrinsics.checkNotNullParameter(secondaryTypes, "secondaryTypes");
        Intrinsics.checkNotNullParameter(scopeQualifier, "scopeQualifier");
        Kind kind = Kind.Single;
        Intrinsics.reifiedOperationMarker(4, "T");
        return new BeanDefinition(scopeQualifier, Reflection.getOrCreateKotlinClass(Object.class), qualifier2, definition, kind, secondaryTypes, options, null, 128, null);
    }

    public final /* synthetic */ BeanDefinition createSingle(Qualifier qualifier, Function2 definition, Options options, List secondaryTypes, Qualifier scopeQualifier) {
        Intrinsics.checkNotNullParameter(definition, "definition");
        Intrinsics.checkNotNullParameter(options, "options");
        Intrinsics.checkNotNullParameter(secondaryTypes, "secondaryTypes");
        Intrinsics.checkNotNullParameter(scopeQualifier, "scopeQualifier");
        Kind kind = Kind.Single;
        Intrinsics.reifiedOperationMarker(4, "T");
        return new BeanDefinition(scopeQualifier, Reflection.getOrCreateKotlinClass(Object.class), qualifier, definition, kind, secondaryTypes, options, null, 128, null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ BeanDefinition createSingle$default(Definitions definitions, KClass kClass, Qualifier qualifier, Function2 function2, Options options, List list, Qualifier qualifier2, int i, Object obj) {
        if ((i & 2) != 0) {
            qualifier = null;
        }
        Qualifier qualifier3 = qualifier;
        if ((i & 16) != 0) {
            list = CollectionsKt.emptyList();
        }
        return definitions.createSingle(kClass, qualifier3, function2, options, list, qualifier2);
    }

    public final BeanDefinition<?> createSingle(KClass<?> clazz, Qualifier qualifier, Function2<? super Scope, ? super DefinitionParameters, ?> definition, Options options, List<? extends KClass<?>> secondaryTypes, Qualifier scopeQualifier) {
        Intrinsics.checkNotNullParameter(clazz, "clazz");
        Intrinsics.checkNotNullParameter(definition, "definition");
        Intrinsics.checkNotNullParameter(options, "options");
        Intrinsics.checkNotNullParameter(secondaryTypes, "secondaryTypes");
        Intrinsics.checkNotNullParameter(scopeQualifier, "scopeQualifier");
        return new BeanDefinition<>(scopeQualifier, clazz, qualifier, definition, Kind.Single, secondaryTypes, options, null, 128, null);
    }

    public static /* synthetic */ BeanDefinition createFactory$default(Definitions definitions, Qualifier qualifier, Function2 definition, Options options, List list, Qualifier scopeQualifier, int i, Object obj) {
        Qualifier qualifier2 = (i & 1) != 0 ? null : qualifier;
        List secondaryTypes = (i & 8) != 0 ? CollectionsKt.emptyList() : list;
        Intrinsics.checkNotNullParameter(definition, "definition");
        Intrinsics.checkNotNullParameter(options, "options");
        Intrinsics.checkNotNullParameter(secondaryTypes, "secondaryTypes");
        Intrinsics.checkNotNullParameter(scopeQualifier, "scopeQualifier");
        Kind kind = Kind.Factory;
        Intrinsics.reifiedOperationMarker(4, "T");
        return new BeanDefinition(scopeQualifier, Reflection.getOrCreateKotlinClass(Object.class), qualifier2, definition, kind, secondaryTypes, options, null, 128, null);
    }

    public final /* synthetic */ BeanDefinition createFactory(Qualifier qualifier, Function2 definition, Options options, List secondaryTypes, Qualifier scopeQualifier) {
        Intrinsics.checkNotNullParameter(definition, "definition");
        Intrinsics.checkNotNullParameter(options, "options");
        Intrinsics.checkNotNullParameter(secondaryTypes, "secondaryTypes");
        Intrinsics.checkNotNullParameter(scopeQualifier, "scopeQualifier");
        Kind kind = Kind.Factory;
        Intrinsics.reifiedOperationMarker(4, "T");
        return new BeanDefinition(scopeQualifier, Reflection.getOrCreateKotlinClass(Object.class), qualifier, definition, kind, secondaryTypes, options, null, 128, null);
    }
}
