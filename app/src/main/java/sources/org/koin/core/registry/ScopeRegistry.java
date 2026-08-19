package org.koin.core.registry;

import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import org.koin.core.Koin;
import org.koin.core.definition.BeanDefinition;
import org.koin.core.error.DefinitionOverrideException;
import org.koin.core.error.NoScopeDefFoundException;
import org.koin.core.error.ScopeAlreadyCreatedException;
import org.koin.core.module.Module;
import org.koin.core.qualifier.Qualifier;
import org.koin.core.scope.Scope;
import org.koin.core.scope.ScopeDefinition;

/* JADX INFO: compiled from: ScopeRegistry.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(m2721d1 = {"\u0000\u0080\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010$\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010 \n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u001c\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\b\u0010\u0017\u001a\u00020\u0018H\u0002J\r\u0010\u0019\u001a\u00020\u0018H\u0000¢\u0006\u0002\b\u001aJ\r\u0010\u001b\u001a\u00020\u0018H\u0000¢\u0006\u0002\b\u001cJ\r\u0010\u001d\u001a\u00020\u0018H\u0000¢\u0006\u0002\b\u001eJ&\u0010\u001f\u001a\u00020\u00062\n\u0010 \u001a\u00060\u000bj\u0002`\u000f2\u0006\u0010!\u001a\u00020\"2\n\b\u0002\u0010#\u001a\u0004\u0018\u00010\u0001J&\u0010\u001f\u001a\u00020\u00062\n\u0010 \u001a\u00060\u000bj\u0002`\u000f2\u0006\u0010$\u001a\u00020\b2\b\u0010#\u001a\u0004\u0018\u00010\u0001H\u0002J\u0010\u0010%\u001a\u00020\u00182\u0006\u0010!\u001a\u00020\"H\u0002J(\u0010&\u001a\u00020\u00182\u001e\u0010'\u001a\u001a\u0012\b\u0012\u0006\u0012\u0002\b\u00030)0(j\f\u0012\b\u0012\u0006\u0012\u0002\b\u00030)`*H\u0002J\u0012\u0010+\u001a\u00020\u00182\n\u0010,\u001a\u0006\u0012\u0002\b\u00030)J\u0016\u0010-\u001a\u00020\u00182\f\u0010.\u001a\b\u0012\u0004\u0012\u00020\"0/H\u0002J\u000e\u00100\u001a\u00020\u00182\u0006\u00101\u001a\u00020\u0006J\u0012\u00100\u001a\u00020\u00182\n\u0010 \u001a\u00060\u000bj\u0002`\u000fJ\u0014\u00102\u001a\u0004\u0018\u00010\u00062\n\u0010 \u001a\u00060\u000bj\u0002`\u000fJ\u0010\u00103\u001a\u00020\u00182\u0006\u00104\u001a\u000205H\u0002J\u001b\u00106\u001a\u00020\u00182\f\u00107\u001a\b\u0012\u0004\u0012\u00020508H\u0000¢\u0006\u0002\b9J\u0006\u0010:\u001a\u00020;J\u0014\u0010<\u001a\u00020\u00182\f\u00107\u001a\b\u0012\u0004\u0012\u00020508J\u000e\u0010<\u001a\u00020\u00182\u0006\u00104\u001a\u000205R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u0007\u001a\u0004\u0018\u00010\bX\u0082\u000e¢\u0006\u0002\n\u0000R2\u0010\t\u001a&\u0012\b\u0012\u00060\u000bj\u0002`\f\u0012\u0004\u0012\u00020\b0\nj\u0012\u0012\b\u0012\u00060\u000bj\u0002`\f\u0012\u0004\u0012\u00020\b`\rX\u0082\u0004¢\u0006\u0002\n\u0000R2\u0010\u000e\u001a&\u0012\b\u0012\u00060\u000bj\u0002`\u000f\u0012\u0004\u0012\u00020\u00060\nj\u0012\u0012\b\u0012\u00060\u000bj\u0002`\u000f\u0012\u0004\u0012\u00020\u0006`\rX\u0082\u0004¢\u0006\u0002\n\u0000R\u0011\u0010\u0010\u001a\u00020\u00068F¢\u0006\u0006\u001a\u0004\b\u0011\u0010\u0012R!\u0010\u0013\u001a\u0012\u0012\b\u0012\u00060\u000bj\u0002`\f\u0012\u0004\u0012\u00020\b0\u00148F¢\u0006\u0006\u001a\u0004\b\u0015\u0010\u0016¨\u0006="}, m2722d2 = {"Lorg/koin/core/registry/ScopeRegistry;", "", "_koin", "Lorg/koin/core/Koin;", "(Lorg/koin/core/Koin;)V", "_rootScope", "Lorg/koin/core/scope/Scope;", "_rootScopeDefinition", "Lorg/koin/core/scope/ScopeDefinition;", "_scopeDefinitions", "Ljava/util/HashMap;", "", "Lorg/koin/core/qualifier/QualifierValue;", "Lkotlin/collections/HashMap;", "_scopes", "Lorg/koin/core/scope/ScopeID;", "rootScope", "getRootScope", "()Lorg/koin/core/scope/Scope;", "scopeDefinitions", "", "getScopeDefinitions", "()Ljava/util/Map;", "clearScopes", "", "close", "close$koin_core", "createRootScope", "createRootScope$koin_core", "createRootScopeDefinition", "createRootScopeDefinition$koin_core", "createScope", "scopeId", "qualifier", "Lorg/koin/core/qualifier/Qualifier;", "source", "scopeDefinition", "createScopeDefinition", "declareBeanDefinitions", "definitions", "Ljava/util/HashSet;", "Lorg/koin/core/definition/BeanDefinition;", "Lkotlin/collections/HashSet;", "declareDefinition", "bean", "declareScopeDefinitions", "scopes", "", "deleteScope", "scope", "getScopeOrNull", "loadModule", "module", "Lorg/koin/core/module/Module;", "loadModules", "modules", "", "loadModules$koin_core", "size", "", "unloadModules", "koin-core"}, m2723k = 1, m2724mv = {1, 5, 1}, m2726xi = 48)
public final class ScopeRegistry {
    private final Koin _koin;
    private Scope _rootScope;
    private ScopeDefinition _rootScopeDefinition;
    private final HashMap<String, ScopeDefinition> _scopeDefinitions;
    private final HashMap<String, Scope> _scopes;

    public ScopeRegistry(Koin _koin) {
        Intrinsics.checkNotNullParameter(_koin, "_koin");
        this._koin = _koin;
        this._scopeDefinitions = new HashMap<>();
        this._scopes = new HashMap<>();
    }

    public final Map<String, ScopeDefinition> getScopeDefinitions() {
        return this._scopeDefinitions;
    }

    public final Scope getRootScope() {
        Scope scope = this._rootScope;
        if (scope != null) {
            return scope;
        }
        throw new IllegalStateException("No root scope".toString());
    }

    public final int size() {
        Collection<ScopeDefinition> collectionValues = this._scopeDefinitions.values();
        Intrinsics.checkNotNullExpressionValue(collectionValues, "_scopeDefinitions.values");
        Collection<ScopeDefinition> collection = collectionValues;
        ArrayList arrayList = new ArrayList(CollectionsKt.collectionSizeOrDefault(collection, 10));
        Iterator<T> it = collection.iterator();
        while (it.hasNext()) {
            arrayList.add(Integer.valueOf(((ScopeDefinition) it.next()).size$koin_core()));
        }
        return CollectionsKt.sumOfInt(arrayList);
    }

    private final void loadModule(Module module) throws DefinitionOverrideException {
        declareScopeDefinitions(module.getScopes());
        declareBeanDefinitions(module.getDefinitions());
        module.setLoaded$koin_core(true);
    }

    private final void declareScopeDefinitions(List<? extends Qualifier> scopes) {
        Iterator<T> it = scopes.iterator();
        while (it.hasNext()) {
            createScopeDefinition((Qualifier) it.next());
        }
    }

    private final void declareBeanDefinitions(HashSet<BeanDefinition<?>> definitions) throws DefinitionOverrideException {
        Iterator<T> it = definitions.iterator();
        while (it.hasNext()) {
            declareDefinition((BeanDefinition) it.next());
        }
    }

    public final void declareDefinition(BeanDefinition<?> bean) throws DefinitionOverrideException {
        Intrinsics.checkNotNullParameter(bean, "bean");
        ScopeDefinition scopeDefinition = this._scopeDefinitions.get(bean.getScopeQualifier().getValue());
        if (scopeDefinition == null) {
            throw new IllegalStateException(Intrinsics.stringPlus("Undeclared scope definition for definition: ", bean).toString());
        }
        ScopeDefinition.save$default(scopeDefinition, bean, false, 2, null);
        Collection<Scope> collectionValues = this._scopes.values();
        Intrinsics.checkNotNullExpressionValue(collectionValues, "_scopes.values");
        ArrayList arrayList = new ArrayList();
        for (Object obj : collectionValues) {
            if (Intrinsics.areEqual(((Scope) obj).get_scopeDefinition(), scopeDefinition)) {
                arrayList.add(obj);
            }
        }
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            ((Scope) it.next()).loadDefinition(bean);
        }
    }

    private final void createScopeDefinition(Qualifier qualifier) {
        ScopeDefinition scopeDefinition = new ScopeDefinition(qualifier, false, 2, null);
        if (this._scopeDefinitions.get(qualifier.getValue()) == null) {
            this._scopeDefinitions.put(qualifier.getValue(), scopeDefinition);
        }
    }

    public final void createRootScopeDefinition$koin_core() {
        if (this._rootScopeDefinition == null) {
            ScopeDefinition scopeDefinitionRootDefinition$koin_core = ScopeDefinition.INSTANCE.rootDefinition$koin_core();
            this._scopeDefinitions.put(ScopeDefinition.INSTANCE.getROOT_SCOPE_QUALIFIER().getValue(), scopeDefinitionRootDefinition$koin_core);
            this._rootScopeDefinition = scopeDefinitionRootDefinition$koin_core;
            return;
        }
        throw new IllegalStateException("Try to recreate Root scope definition".toString());
    }

    public final void createRootScope$koin_core() {
        if (this._rootScope == null) {
            this._rootScope = createScope(ScopeDefinition.ROOT_SCOPE_ID, ScopeDefinition.INSTANCE.getROOT_SCOPE_QUALIFIER(), (Object) null);
            return;
        }
        throw new IllegalStateException("Try to recreate Root scope".toString());
    }

    public final Scope getScopeOrNull(String scopeId) {
        Intrinsics.checkNotNullParameter(scopeId, "scopeId");
        return this._scopes.get(scopeId);
    }

    public static /* synthetic */ Scope createScope$default(ScopeRegistry scopeRegistry, String str, Qualifier qualifier, Object obj, int i, Object obj2) {
        if ((i & 4) != 0) {
            obj = null;
        }
        return scopeRegistry.createScope(str, qualifier, obj);
    }

    public final Scope createScope(String scopeId, Qualifier qualifier, Object source) throws ScopeAlreadyCreatedException, NoScopeDefFoundException {
        Intrinsics.checkNotNullParameter(scopeId, "scopeId");
        Intrinsics.checkNotNullParameter(qualifier, "qualifier");
        if (this._scopes.containsKey(scopeId)) {
            throw new ScopeAlreadyCreatedException("Scope with id '" + scopeId + "' is already created");
        }
        ScopeDefinition scopeDefinition = this._scopeDefinitions.get(qualifier.getValue());
        if (scopeDefinition != null) {
            Scope scopeCreateScope = createScope(scopeId, scopeDefinition, source);
            this._scopes.put(scopeId, scopeCreateScope);
            return scopeCreateScope;
        }
        throw new NoScopeDefFoundException("No Scope Definition found for qualifer '" + qualifier.getValue() + '\'');
    }

    private final Scope createScope(String scopeId, ScopeDefinition scopeDefinition, Object source) {
        Scope scope = new Scope(scopeId, scopeDefinition, this._koin);
        scope.set_source(source);
        Scope scope2 = this._rootScope;
        List<Scope> listListOf = scope2 == null ? null : CollectionsKt.listOf(scope2);
        if (listListOf == null) {
            listListOf = CollectionsKt.emptyList();
        }
        scope.create$koin_core(listListOf);
        return scope;
    }

    public final void deleteScope(String scopeId) {
        Intrinsics.checkNotNullParameter(scopeId, "scopeId");
        this._scopes.remove(scopeId);
    }

    public final void deleteScope(Scope scope) {
        Intrinsics.checkNotNullParameter(scope, "scope");
        scope.get_scopeDefinition().removeExtras$koin_core();
        this._scopes.remove(scope.getId());
    }

    public final void close$koin_core() {
        clearScopes();
        this._scopes.clear();
        this._scopeDefinitions.clear();
        this._rootScopeDefinition = null;
        this._rootScope = null;
    }

    private final void clearScopes() {
        Collection<Scope> collectionValues = this._scopes.values();
        Intrinsics.checkNotNullExpressionValue(collectionValues, "_scopes.values");
        Iterator<T> it = collectionValues.iterator();
        while (it.hasNext()) {
            ((Scope) it.next()).clear$koin_core();
        }
    }

    public final void unloadModules(Module module) {
        Intrinsics.checkNotNullParameter(module, "module");
        for (BeanDefinition<?> beanDefinition : module.getDefinitions()) {
            ScopeDefinition scopeDefinition = this._scopeDefinitions.get(beanDefinition.getScopeQualifier().getValue());
            if (scopeDefinition == null) {
                throw new IllegalStateException(Intrinsics.stringPlus("Can't find scope for definition ", beanDefinition).toString());
            }
            scopeDefinition.unloadDefinition$koin_core(beanDefinition);
            Collection<Scope> collectionValues = this._scopes.values();
            Intrinsics.checkNotNullExpressionValue(collectionValues, "_scopes.values");
            ArrayList arrayList = new ArrayList();
            for (Object obj : collectionValues) {
                if (Intrinsics.areEqual(((Scope) obj).get_scopeDefinition().getQualifier(), scopeDefinition.getQualifier())) {
                    arrayList.add(obj);
                }
            }
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                ((Scope) it.next()).dropInstance(beanDefinition);
            }
        }
        module.setLoaded$koin_core(false);
    }

    public final void loadModules$koin_core(Iterable<Module> modules) {
        Intrinsics.checkNotNullParameter(modules, "modules");
        for (Module module : modules) {
            if (!module.getIsLoaded()) {
                loadModule(module);
            } else {
                this._koin.getLogger().error("module '" + module + "' already loaded!");
            }
        }
    }

    public final void unloadModules(Iterable<Module> modules) {
        Intrinsics.checkNotNullParameter(modules, "modules");
        Iterator<Module> it = modules.iterator();
        while (it.hasNext()) {
            unloadModules(it.next());
        }
    }
}
