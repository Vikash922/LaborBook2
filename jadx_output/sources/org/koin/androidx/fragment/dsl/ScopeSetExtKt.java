package org.koin.androidx.fragment.dsl;

import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import org.koin.core.definition.BeanDefinition;
import org.koin.core.definition.Definitions;
import org.koin.core.definition.Kind;
import org.koin.core.definition.Options;
import org.koin.core.module.ModuleKt;
import org.koin.core.qualifier.Qualifier;
import org.koin.dsl.ScopeDSL;

/* JADX INFO: compiled from: ScopeSetExt.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(m2721d1 = {"\u00004\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u001ac\u0010\u0000\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0001\"\n\b\u0000\u0010\u0002\u0018\u0001*\u00020\u0003*\u00020\u00042\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00062\b\b\u0002\u0010\u0007\u001a\u00020\b2)\b\b\u0010\t\u001a#\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f\u0012\u0004\u0012\u0002H\u00020\nj\b\u0012\u0004\u0012\u0002H\u0002`\r¢\u0006\u0002\b\u000eH\u0086\bø\u0001\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000f"}, m2722d2 = {"fragment", "Lorg/koin/core/definition/BeanDefinition;", "T", "Landroidx/fragment/app/Fragment;", "Lorg/koin/dsl/ScopeDSL;", "qualifier", "Lorg/koin/core/qualifier/Qualifier;", "override", "", "definition", "Lkotlin/Function2;", "Lorg/koin/core/scope/Scope;", "Lorg/koin/core/parameter/DefinitionParameters;", "Lorg/koin/core/definition/Definition;", "Lkotlin/ExtensionFunctionType;", "koin-android_release"}, m2723k = 2, m2724mv = {1, 5, 1}, m2726xi = 48)
public final class ScopeSetExtKt {
    public static /* synthetic */ BeanDefinition fragment$default(ScopeDSL scopeDSL, Qualifier qualifier, boolean z, Function2 definition, int i, Object obj) {
        Qualifier qualifier2 = (i & 1) != 0 ? null : qualifier;
        boolean z2 = (i & 2) != 0 ? false : z;
        Intrinsics.checkNotNullParameter(scopeDSL, "<this>");
        Intrinsics.checkNotNullParameter(definition, "definition");
        Definitions definitions = Definitions.INSTANCE;
        Options options = new Options(false, z2, false, 4, null);
        Qualifier scopeQualifier = scopeDSL.getScopeQualifier();
        List listEmptyList = CollectionsKt.emptyList();
        Kind kind = Kind.Factory;
        Intrinsics.reifiedOperationMarker(4, "T");
        BeanDefinition beanDefinition = new BeanDefinition(scopeQualifier, Reflection.getOrCreateKotlinClass(Object.class), qualifier2, definition, kind, listEmptyList, options, null, 128, null);
        ModuleKt.addDefinition(scopeDSL.getDefinitions(), beanDefinition);
        return beanDefinition;
    }

    public static final /* synthetic */ BeanDefinition fragment(ScopeDSL scopeDSL, Qualifier qualifier, boolean z, Function2 definition) {
        Intrinsics.checkNotNullParameter(scopeDSL, "<this>");
        Intrinsics.checkNotNullParameter(definition, "definition");
        Definitions definitions = Definitions.INSTANCE;
        Options options = new Options(false, z, false, 4, null);
        Qualifier scopeQualifier = scopeDSL.getScopeQualifier();
        List listEmptyList = CollectionsKt.emptyList();
        Kind kind = Kind.Factory;
        Intrinsics.reifiedOperationMarker(4, "T");
        BeanDefinition beanDefinition = new BeanDefinition(scopeQualifier, Reflection.getOrCreateKotlinClass(Object.class), qualifier, definition, kind, listEmptyList, options, null, 128, null);
        ModuleKt.addDefinition(scopeDSL.getDefinitions(), beanDefinition);
        return beanDefinition;
    }
}
