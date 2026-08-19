package org.koin.core;

import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KClass;
import org.koin.core.definition.BeanDefinition;
import org.koin.core.definition.Definitions;
import org.koin.core.definition.Options;
import org.koin.core.error.DefinitionOverrideException;
import org.koin.core.parameter.DefinitionParameters;
import org.koin.core.qualifier.Qualifier;
import org.koin.core.scope.Scope;
import org.koin.core.scope.ScopeDefinition;

/* JADX INFO: compiled from: Scope.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(m2721d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0000\u001a\u00020\u0001\"\u0006\b\u0000\u0010\u0002\u0018\u0001H\n¨\u0006\u0003"}, m2722d2 = {"<anonymous>", "", "T", "org/koin/core/scope/Scope$declare$1"}, m2723k = 3, m2724mv = {1, 5, 1}, m2726xi = 48)
public final class Koin$declare$$inlined$declare$1 extends Lambda implements Function0<Unit> {
    final /* synthetic */ Object $instance;
    final /* synthetic */ boolean $override;
    final /* synthetic */ Qualifier $qualifier;
    final /* synthetic */ List $secondaryTypes;
    final /* synthetic */ Scope this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public Koin$declare$$inlined$declare$1(Scope scope, Object obj, Qualifier qualifier, List list, boolean z) {
        super(0);
        this.this$0 = scope;
        this.$instance = obj;
        this.$qualifier = qualifier;
        this.$secondaryTypes = list;
        this.$override = z;
    }

    @Override // kotlin.jvm.functions.Function0
    public /* bridge */ /* synthetic */ Unit invoke() throws DefinitionOverrideException {
        invoke2();
        return Unit.INSTANCE;
    }

    /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
    public final void invoke2() throws DefinitionOverrideException {
        Object next;
        ScopeDefinition scopeDefinition = this.this$0.get_scopeDefinition();
        final Object obj = this.$instance;
        Qualifier qualifier = this.$qualifier;
        List<? extends KClass<?>> listEmptyList = this.$secondaryTypes;
        boolean z = this.$override;
        Intrinsics.reifiedOperationMarker(4, "T");
        KClass<?> orCreateKotlinClass = Reflection.getOrCreateKotlinClass(Object.class);
        Iterator<T> it = scopeDefinition.getDefinitions().iterator();
        while (true) {
            if (!it.hasNext()) {
                next = null;
                break;
            } else {
                next = it.next();
                if (((BeanDefinition) next).m2898is(orCreateKotlinClass, qualifier, scopeDefinition.getQualifier())) {
                    break;
                }
            }
        }
        BeanDefinition<?> beanDefinition = (BeanDefinition) next;
        if (beanDefinition != null) {
            if (z) {
                scopeDefinition.remove(beanDefinition);
            } else {
                throw new DefinitionOverrideException("Trying to override existing definition '" + beanDefinition + "' with new definition typed '" + orCreateKotlinClass + '\'');
            }
        }
        Definitions definitions = Definitions.INSTANCE;
        Function2<Scope, DefinitionParameters, Object> function2 = new Function2<Scope, DefinitionParameters, Object>() { // from class: org.koin.core.Koin$declare$$inlined$declare$1.1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(2);
            }

            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(Scope createSingle, DefinitionParameters it2) {
                Intrinsics.checkNotNullParameter(createSingle, "$this$createSingle");
                Intrinsics.checkNotNullParameter(it2, "it");
                return obj;
            }
        };
        Options options = new Options(false, z, true);
        if (listEmptyList == null) {
            listEmptyList = CollectionsKt.emptyList();
        }
        BeanDefinition<?> beanDefinitionCreateSingle = definitions.createSingle(orCreateKotlinClass, qualifier, function2, options, listEmptyList, scopeDefinition.getQualifier());
        scopeDefinition.save(beanDefinitionCreateSingle, z);
        this.this$0.getInstanceRegistry().saveDefinition(beanDefinitionCreateSingle, true);
    }
}
