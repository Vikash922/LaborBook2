package org.koin.core.registry;

import com.itextpdf.layout.element.List;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Set;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.KClass;
import org.koin.core.Koin;
import org.koin.core.definition.BeanDefinition;
import org.koin.core.definition.BeanDefinitionKt;
import org.koin.core.definition.Kind;
import org.koin.core.instance.FactoryInstanceFactory;
import org.koin.core.instance.InstanceContext;
import org.koin.core.instance.InstanceFactory;
import org.koin.core.instance.SingleInstanceFactory;
import org.koin.core.logger.Level;
import org.koin.core.parameter.DefinitionParameters;
import org.koin.core.scope.Scope;

/* JADX INFO: compiled from: InstanceRegistry.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(m2721d1 = {"\u0000|\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010$\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0010\"\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\b\t\n\u0002\u0010\u000b\n\u0002\b\u0005\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006JE\u0010\u0015\u001a\u0004\u0018\u0001H\u0016\"\u0004\b\u0000\u0010\u00162\n\u0010\u0017\u001a\u0006\u0012\u0002\b\u00030\u00182\n\u0010\u0019\u001a\u0006\u0012\u0002\b\u00030\u00182\u0014\u0010\u001a\u001a\u0010\u0012\u0004\u0012\u00020\u001c\u0018\u00010\u001bj\u0004\u0018\u0001`\u001dH\u0000¢\u0006\u0004\b\u001e\u0010\u001fJ\r\u0010 \u001a\u00020!H\u0000¢\u0006\u0002\b\"J\u001f\u0010#\u001a\u00020!2\u0010\u0010$\u001a\f\u0012\b\u0012\u0006\u0012\u0002\b\u00030&0%H\u0000¢\u0006\u0002\b'J\u0019\u0010(\u001a\u00020!2\n\u0010)\u001a\u0006\u0012\u0002\b\u00030&H\u0000¢\u0006\u0002\b*J\r\u0010+\u001a\u00020!H\u0000¢\u0006\u0002\b,J \u0010-\u001a\u0006\u0012\u0002\b\u00030\u000b2\u0006\u0010\u0002\u001a\u00020\u00032\n\u0010)\u001a\u0006\u0012\u0002\b\u00030&H\u0002J\u001e\u0010.\u001a\u00020/2\u0014\u0010\u001a\u001a\u0010\u0012\u0004\u0012\u00020\u001c\u0018\u00010\u001bj\u0004\u0018\u0001`\u001dH\u0002J\u0019\u00100\u001a\u00020!2\n\u0010)\u001a\u0006\u0012\u0002\b\u00030&H\u0000¢\u0006\u0002\b1J%\u00102\u001a\b\u0012\u0004\u0012\u0002H403\"\u0004\b\u0000\u001042\n\u00105\u001a\u0006\u0012\u0002\b\u00030\u0018H\u0000¢\u0006\u0002\b6J9\u00107\u001a\u0004\u0018\u0001H4\"\u0004\b\u0000\u001042\n\u00108\u001a\u00060\tj\u0002`\n2\u0014\u0010\u001a\u001a\u0010\u0012\u0004\u0012\u00020\u001c\u0018\u00010\u001bj\u0004\u0018\u0001`\u001dH\u0000¢\u0006\u0004\b9\u0010:J\u001a\u0010;\u001a\u00020!2\n\u0010)\u001a\u0006\u0012\u0002\b\u00030&2\u0006\u0010<\u001a\u00020=J(\u0010>\u001a\u00020!2\n\u0010?\u001a\u00060\tj\u0002`\n2\n\u0010@\u001a\u0006\u0012\u0002\b\u00030\u000b2\u0006\u0010<\u001a\u00020=H\u0002J \u0010A\u001a\u00020!2\n\u0010?\u001a\u00060\tj\u0002`\n2\n\u0010@\u001a\u0006\u0012\u0002\b\u00030\u000bH\u0002R:\u0010\u0007\u001a.\u0012\b\u0012\u00060\tj\u0002`\n\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u000b0\bj\u0016\u0012\b\u0012\u00060\tj\u0002`\n\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u000b`\fX\u0082\u0004¢\u0006\u0002\n\u0000R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000eR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u0010R%\u0010\u0011\u001a\u0016\u0012\b\u0012\u00060\tj\u0002`\n\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u000b0\u00128F¢\u0006\u0006\u001a\u0004\b\u0013\u0010\u0014¨\u0006B"}, m2722d2 = {"Lorg/koin/core/registry/InstanceRegistry;", "", "_koin", "Lorg/koin/core/Koin;", "_scope", "Lorg/koin/core/scope/Scope;", "(Lorg/koin/core/Koin;Lorg/koin/core/scope/Scope;)V", "_instances", "Ljava/util/HashMap;", "", "Lorg/koin/core/definition/IndexKey;", "Lorg/koin/core/instance/InstanceFactory;", "Lkotlin/collections/HashMap;", "get_koin", "()Lorg/koin/core/Koin;", "get_scope", "()Lorg/koin/core/scope/Scope;", "instances", "", "getInstances", "()Ljava/util/Map;", "bind", "S", "primaryType", "Lkotlin/reflect/KClass;", "secondaryType", "parameters", "Lkotlin/Function0;", "Lorg/koin/core/parameter/DefinitionParameters;", "Lorg/koin/core/parameter/ParametersDefinition;", "bind$koin_core", "(Lkotlin/reflect/KClass;Lkotlin/reflect/KClass;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;", "close", "", "close$koin_core", "create", "definitions", "", "Lorg/koin/core/definition/BeanDefinition;", "create$koin_core", "createDefinition", "definition", "createDefinition$koin_core", "createEagerInstances", "createEagerInstances$koin_core", "createInstanceFactory", "defaultInstanceContext", "Lorg/koin/core/instance/InstanceContext;", "dropDefinition", "dropDefinition$koin_core", "getAll", "", "T", "clazz", "getAll$koin_core", "resolveInstance", "indexKey", "resolveInstance$koin_core", "(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;", "saveDefinition", "override", "", "saveInstance", "key", "factory", "saveInstanceIfPossible", "koin-core"}, m2723k = 1, m2724mv = {1, 5, 1}, m2726xi = 48)
public final class InstanceRegistry {
    private final HashMap<String, InstanceFactory<?>> _instances;
    private final Koin _koin;
    private final Scope _scope;

    /* JADX INFO: compiled from: InstanceRegistry.kt */
    @Metadata(m2723k = 3, m2724mv = {1, 5, 1}, m2726xi = 48)
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[Kind.valuesCustom().length];
            iArr[Kind.Single.ordinal()] = 1;
            iArr[Kind.Factory.ordinal()] = 2;
            $EnumSwitchMapping$0 = iArr;
        }
    }

    public InstanceRegistry(Koin _koin, Scope _scope) {
        Intrinsics.checkNotNullParameter(_koin, "_koin");
        Intrinsics.checkNotNullParameter(_scope, "_scope");
        this._koin = _koin;
        this._scope = _scope;
        this._instances = new HashMap<>();
    }

    public final Koin get_koin() {
        return this._koin;
    }

    public final Scope get_scope() {
        return this._scope;
    }

    public final Map<String, InstanceFactory<?>> getInstances() {
        return this._instances;
    }

    public final void create$koin_core(Set<? extends BeanDefinition<?>> definitions) {
        Intrinsics.checkNotNullParameter(definitions, "definitions");
        for (BeanDefinition<?> beanDefinition : definitions) {
            if (get_koin().getLogger().isAt(Level.DEBUG)) {
                if (get_scope().get_scopeDefinition().isRoot()) {
                    get_koin().getLogger().debug(Intrinsics.stringPlus(List.DEFAULT_LIST_SYMBOL, beanDefinition));
                } else {
                    get_koin().getLogger().debug(get_scope() + " -> " + beanDefinition);
                }
            }
            saveDefinition(beanDefinition, false);
        }
    }

    public final void saveDefinition(BeanDefinition<?> definition, boolean override) {
        Intrinsics.checkNotNullParameter(definition, "definition");
        boolean z = definition.getOptions().getOverride() || override;
        InstanceFactory<?> instanceFactoryCreateInstanceFactory = createInstanceFactory(this._koin, definition);
        saveInstance(BeanDefinitionKt.indexKey(definition.getPrimaryType(), definition.getQualifier()), instanceFactoryCreateInstanceFactory, z);
        Iterator<T> it = definition.getSecondaryTypes().iterator();
        while (it.hasNext()) {
            KClass kClass = (KClass) it.next();
            if (z) {
                saveInstance(BeanDefinitionKt.indexKey(kClass, definition.getQualifier()), instanceFactoryCreateInstanceFactory, z);
            } else {
                saveInstanceIfPossible(BeanDefinitionKt.indexKey(kClass, definition.getQualifier()), instanceFactoryCreateInstanceFactory);
            }
        }
    }

    private final InstanceFactory<?> createInstanceFactory(Koin _koin, BeanDefinition<?> definition) {
        int i = WhenMappings.$EnumSwitchMapping$0[definition.getKind().ordinal()];
        if (i == 1) {
            return new SingleInstanceFactory(_koin, definition);
        }
        if (i == 2) {
            return new FactoryInstanceFactory(_koin, definition);
        }
        throw new NoWhenBranchMatchedException();
    }

    private final void saveInstance(String key, InstanceFactory<?> factory, boolean override) {
        if (this._instances.containsKey(key) && !override) {
            throw new IllegalStateException(("InstanceRegistry already contains index '" + key + '\'').toString());
        }
        this._instances.put(key, factory);
    }

    private final void saveInstanceIfPossible(String key, InstanceFactory<?> factory) {
        if (this._instances.containsKey(key)) {
            return;
        }
        this._instances.put(key, factory);
    }

    public final <T> T resolveInstance$koin_core(String indexKey, Function0<? extends DefinitionParameters> parameters) {
        Intrinsics.checkNotNullParameter(indexKey, "indexKey");
        InstanceFactory<?> instanceFactory = this._instances.get(indexKey);
        if (instanceFactory == null) {
            return null;
        }
        return (T) instanceFactory.get(defaultInstanceContext(parameters));
    }

    private final InstanceContext defaultInstanceContext(Function0<? extends DefinitionParameters> parameters) {
        return new InstanceContext(this._koin, this._scope, parameters);
    }

    public final void close$koin_core() {
        Collection<InstanceFactory<?>> collectionValues = this._instances.values();
        Intrinsics.checkNotNullExpressionValue(collectionValues, "_instances.values");
        Iterator<T> it = collectionValues.iterator();
        while (it.hasNext()) {
            ((InstanceFactory) it.next()).drop();
        }
        this._instances.clear();
    }

    public final void createEagerInstances$koin_core() {
        Collection<InstanceFactory<?>> collectionValues = getInstances().values();
        ArrayList arrayList = new ArrayList();
        for (Object obj : collectionValues) {
            if (obj instanceof SingleInstanceFactory) {
                arrayList.add(obj);
            }
        }
        ArrayList arrayList2 = new ArrayList();
        for (Object obj2 : arrayList) {
            if (((SingleInstanceFactory) obj2).getBeanDefinition().getOptions().isCreatedAtStart()) {
                arrayList2.add(obj2);
            }
        }
        Iterator it = arrayList2.iterator();
        while (it.hasNext()) {
            ((SingleInstanceFactory) it.next()).get(new InstanceContext(get_koin(), get_scope(), null, 4, null));
        }
    }

    public final <T> java.util.List<T> getAll$koin_core(KClass<?> clazz) {
        Intrinsics.checkNotNullParameter(clazz, "clazz");
        Set set = CollectionsKt.toSet(getInstances().values());
        ArrayList arrayList = new ArrayList();
        for (T t : set) {
            if (((InstanceFactory) t).getBeanDefinition().hasType(clazz)) {
                arrayList.add(t);
            }
        }
        ArrayList arrayList2 = new ArrayList();
        Iterator<T> it = arrayList.iterator();
        while (it.hasNext()) {
            Object obj = ((InstanceFactory) it.next()).get(defaultInstanceContext(null));
            if (obj != null) {
                arrayList2.add(obj);
            }
        }
        return arrayList2;
    }

    public final <S> S bind$koin_core(KClass<?> primaryType, KClass<?> secondaryType, Function0<? extends DefinitionParameters> parameters) {
        Object next;
        Intrinsics.checkNotNullParameter(primaryType, "primaryType");
        Intrinsics.checkNotNullParameter(secondaryType, "secondaryType");
        Iterator<T> it = getInstances().values().iterator();
        while (true) {
            if (!it.hasNext()) {
                next = null;
                break;
            }
            next = it.next();
            if (((InstanceFactory) next).getBeanDefinition().canBind(primaryType, secondaryType)) {
                break;
            }
        }
        InstanceFactory instanceFactory = (InstanceFactory) next;
        if (instanceFactory == null) {
            return null;
        }
        return (S) instanceFactory.get(defaultInstanceContext(parameters));
    }

    public final void dropDefinition$koin_core(BeanDefinition<?> definition) {
        Intrinsics.checkNotNullParameter(definition, "definition");
        HashMap<String, InstanceFactory<?>> map = this._instances;
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        for (Map.Entry<String, InstanceFactory<?>> entry : map.entrySet()) {
            if (Intrinsics.areEqual(entry.getValue().getBeanDefinition(), definition)) {
                linkedHashMap.put(entry.getKey(), entry.getValue());
            }
        }
        ArrayList arrayList = new ArrayList(linkedHashMap.size());
        Iterator it = linkedHashMap.entrySet().iterator();
        while (it.hasNext()) {
            arrayList.add((String) ((Map.Entry) it.next()).getKey());
        }
        Iterator it2 = arrayList.iterator();
        while (it2.hasNext()) {
            this._instances.remove((String) it2.next());
        }
    }

    public final void createDefinition$koin_core(BeanDefinition<?> definition) {
        Intrinsics.checkNotNullParameter(definition, "definition");
        saveDefinition(definition, definition.getOptions().getOverride());
    }
}
