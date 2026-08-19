package org.koin.core.scope;

import com.facebook.appevents.iap.InAppPurchaseConstants;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KClass;
import org.koin.core.definition.BeanDefinition;
import org.koin.core.definition.Definitions;
import org.koin.core.definition.Options;
import org.koin.core.error.DefinitionOverrideException;
import org.koin.core.qualifier.Qualifier;
import org.koin.core.qualifier.QualifierKt;
import org.koin.core.qualifier.StringQualifier;

/* JADX INFO: compiled from: ScopeDefinition.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(m2721d1 = {"\u0000J\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u000f\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\b\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0086\b\u0018\u0000 /2\u00020\u0001:\u0001/B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\t\u0010\u0012\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0013\u001a\u00020\u0005HÆ\u0003J\u001d\u0010\u0014\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u0005HÆ\u0001JT\u0010\u0015\u001a\f\u0012\b\b\u0001\u0012\u0004\u0018\u00010\u00010\t\"\u0006\b\u0000\u0010\u0016\u0018\u00012\u0006\u0010\u0017\u001a\u0002H\u00162\n\b\u0002\u0010\u0018\u001a\u0004\u0018\u00010\u00032\u0014\b\u0002\u0010\u0019\u001a\u000e\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u001b\u0018\u00010\u001a2\b\b\u0002\u0010\u001c\u001a\u00020\u0005H\u0086\b¢\u0006\u0002\u0010\u001dJ\u0013\u0010\u001e\u001a\u00020\u00052\b\u0010\u001f\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010 \u001a\u00020!HÖ\u0001J\u0012\u0010\"\u001a\u00020#2\n\u0010$\u001a\u0006\u0012\u0002\b\u00030\tJ\r\u0010%\u001a\u00020#H\u0000¢\u0006\u0002\b&J\u001c\u0010'\u001a\u00020#2\n\u0010$\u001a\u0006\u0012\u0002\b\u00030\t2\b\b\u0002\u0010(\u001a\u00020\u0005J\r\u0010)\u001a\u00020!H\u0000¢\u0006\u0002\b*J\t\u0010+\u001a\u00020,HÖ\u0001J\u0019\u0010-\u001a\u00020#2\n\u0010$\u001a\u0006\u0012\u0002\b\u00030\tH\u0000¢\u0006\u0002\b.R/\u0010\u0007\u001a\u001a\u0012\b\u0012\u0006\u0012\u0002\b\u00030\t0\bj\f\u0012\b\u0012\u0006\u0012\u0002\b\u00030\t`\n¢\u0006\u000e\n\u0000\u0012\u0004\b\u000b\u0010\f\u001a\u0004\b\r\u0010\u000eR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0004\u0010\u000fR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\u0011¨\u00060"}, m2722d2 = {"Lorg/koin/core/scope/ScopeDefinition;", "", "qualifier", "Lorg/koin/core/qualifier/Qualifier;", "isRoot", "", "(Lorg/koin/core/qualifier/Qualifier;Z)V", "definitions", "Ljava/util/HashSet;", "Lorg/koin/core/definition/BeanDefinition;", "Lkotlin/collections/HashSet;", "getDefinitions$annotations", "()V", "getDefinitions", "()Ljava/util/HashSet;", "()Z", "getQualifier", "()Lorg/koin/core/qualifier/Qualifier;", "component1", "component2", "copy", "declareNewDefinition", "T", "instance", "defQualifier", "secondaryTypes", "", "Lkotlin/reflect/KClass;", "override", "(Ljava/lang/Object;Lorg/koin/core/qualifier/Qualifier;Ljava/util/List;Z)Lorg/koin/core/definition/BeanDefinition;", "equals", "other", "hashCode", "", "remove", "", "beanDefinition", "removeExtras", "removeExtras$koin_core", "save", "forceOverride", "size", "size$koin_core", InAppPurchaseConstants.METHOD_TO_STRING, "", "unloadDefinition", "unloadDefinition$koin_core", "Companion", "koin-core"}, m2723k = 1, m2724mv = {1, 5, 1}, m2726xi = 48)
public final /* data */ class ScopeDefinition {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    public static final String ROOT_SCOPE_ID = "-Root-";
    private static final StringQualifier ROOT_SCOPE_QUALIFIER = QualifierKt.m2899_q(ROOT_SCOPE_ID);
    private final HashSet<BeanDefinition<?>> definitions;
    private final boolean isRoot;
    private final Qualifier qualifier;

    public static /* synthetic */ ScopeDefinition copy$default(ScopeDefinition scopeDefinition, Qualifier qualifier, boolean z, int i, Object obj) {
        if ((i & 1) != 0) {
            qualifier = scopeDefinition.qualifier;
        }
        if ((i & 2) != 0) {
            z = scopeDefinition.isRoot;
        }
        return scopeDefinition.copy(qualifier, z);
    }

    public static /* synthetic */ void getDefinitions$annotations() {
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final Qualifier getQualifier() {
        return this.qualifier;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final boolean getIsRoot() {
        return this.isRoot;
    }

    public final ScopeDefinition copy(Qualifier qualifier, boolean isRoot) {
        Intrinsics.checkNotNullParameter(qualifier, "qualifier");
        return new ScopeDefinition(qualifier, isRoot);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof ScopeDefinition)) {
            return false;
        }
        ScopeDefinition scopeDefinition = (ScopeDefinition) other;
        return Intrinsics.areEqual(this.qualifier, scopeDefinition.qualifier) && this.isRoot == scopeDefinition.isRoot;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v1, types: [int] */
    /* JADX WARN: Type inference failed for: r1v2 */
    /* JADX WARN: Type inference failed for: r1v3 */
    public int hashCode() {
        int iHashCode = this.qualifier.hashCode() * 31;
        boolean z = this.isRoot;
        ?? r1 = z;
        if (z) {
            r1 = 1;
        }
        return iHashCode + r1;
    }

    public String toString() {
        return "ScopeDefinition(qualifier=" + this.qualifier + ", isRoot=" + this.isRoot + ')';
    }

    public ScopeDefinition(Qualifier qualifier, boolean z) {
        Intrinsics.checkNotNullParameter(qualifier, "qualifier");
        this.qualifier = qualifier;
        this.isRoot = z;
        this.definitions = new HashSet<>();
    }

    public /* synthetic */ ScopeDefinition(Qualifier qualifier, boolean z, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(qualifier, (i & 2) != 0 ? false : z);
    }

    public final Qualifier getQualifier() {
        return this.qualifier;
    }

    public final boolean isRoot() {
        return this.isRoot;
    }

    public final HashSet<BeanDefinition<?>> getDefinitions() {
        return this.definitions;
    }

    public static /* synthetic */ void save$default(ScopeDefinition scopeDefinition, BeanDefinition beanDefinition, boolean z, int i, Object obj) throws DefinitionOverrideException {
        if ((i & 2) != 0) {
            z = false;
        }
        scopeDefinition.save(beanDefinition, z);
    }

    public final void save(BeanDefinition<?> beanDefinition, boolean forceOverride) throws DefinitionOverrideException {
        Object next;
        Intrinsics.checkNotNullParameter(beanDefinition, "beanDefinition");
        if (this.definitions.contains(beanDefinition)) {
            if (beanDefinition.getOptions().getOverride() || forceOverride) {
                this.definitions.remove(beanDefinition);
            } else {
                Iterator<T> it = this.definitions.iterator();
                while (true) {
                    if (!it.hasNext()) {
                        next = null;
                        break;
                    } else {
                        next = it.next();
                        if (Intrinsics.areEqual((BeanDefinition) next, beanDefinition)) {
                            break;
                        }
                    }
                }
                throw new DefinitionOverrideException("Definition '" + beanDefinition + "' try to override existing definition. Please use override option or check for definition '" + ((BeanDefinition) next) + '\'');
            }
        }
        this.definitions.add(beanDefinition);
    }

    public final void remove(BeanDefinition<?> beanDefinition) {
        Intrinsics.checkNotNullParameter(beanDefinition, "beanDefinition");
        this.definitions.remove(beanDefinition);
    }

    public final int size$koin_core() {
        return this.definitions.size();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ BeanDefinition declareNewDefinition$default(ScopeDefinition scopeDefinition, Object obj, Qualifier qualifier, List list, boolean z, int i, Object obj2) throws DefinitionOverrideException {
        Object obj3 = null;
        Qualifier qualifier2 = (i & 2) != 0 ? null : qualifier;
        if ((i & 4) != 0) {
            list = null;
        }
        if ((i & 8) != 0) {
            z = false;
        }
        Intrinsics.reifiedOperationMarker(4, "T");
        KClass<?> orCreateKotlinClass = Reflection.getOrCreateKotlinClass(Object.class);
        Iterator<T> it = scopeDefinition.getDefinitions().iterator();
        while (true) {
            if (!it.hasNext()) {
                break;
            }
            Object next = it.next();
            if (((BeanDefinition) next).m2898is(orCreateKotlinClass, qualifier2, scopeDefinition.getQualifier())) {
                obj3 = next;
                break;
            }
        }
        BeanDefinition<?> beanDefinition = (BeanDefinition) obj3;
        if (beanDefinition != null) {
            if (z) {
                scopeDefinition.remove(beanDefinition);
            } else {
                throw new DefinitionOverrideException("Trying to override existing definition '" + beanDefinition + "' with new definition typed '" + orCreateKotlinClass + '\'');
            }
        }
        BeanDefinition<?> beanDefinitionCreateSingle = Definitions.INSTANCE.createSingle(orCreateKotlinClass, qualifier2, new ScopeDefinition$declareNewDefinition$beanDefinition$1(obj), new Options(false, z, true), list == null ? CollectionsKt.emptyList() : list, scopeDefinition.getQualifier());
        scopeDefinition.save(beanDefinitionCreateSingle, z);
        return beanDefinitionCreateSingle;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final /* synthetic */ BeanDefinition declareNewDefinition(Object instance, Qualifier defQualifier, List secondaryTypes, boolean override) throws DefinitionOverrideException {
        Object next;
        Intrinsics.reifiedOperationMarker(4, "T");
        KClass<?> orCreateKotlinClass = Reflection.getOrCreateKotlinClass(Object.class);
        Iterator<T> it = getDefinitions().iterator();
        while (true) {
            if (!it.hasNext()) {
                next = null;
                break;
            }
            next = it.next();
            if (((BeanDefinition) next).m2898is(orCreateKotlinClass, defQualifier, getQualifier())) {
                break;
            }
        }
        BeanDefinition<?> beanDefinition = (BeanDefinition) next;
        if (beanDefinition != null) {
            if (override) {
                remove(beanDefinition);
            } else {
                throw new DefinitionOverrideException("Trying to override existing definition '" + beanDefinition + "' with new definition typed '" + orCreateKotlinClass + '\'');
            }
        }
        Definitions definitions = Definitions.INSTANCE;
        ScopeDefinition$declareNewDefinition$beanDefinition$1 scopeDefinition$declareNewDefinition$beanDefinition$1 = new ScopeDefinition$declareNewDefinition$beanDefinition$1(instance);
        Options options = new Options(false, override, true);
        if (secondaryTypes == null) {
            secondaryTypes = CollectionsKt.emptyList();
        }
        BeanDefinition<?> beanDefinitionCreateSingle = definitions.createSingle(orCreateKotlinClass, defQualifier, scopeDefinition$declareNewDefinition$beanDefinition$1, options, secondaryTypes, getQualifier());
        save(beanDefinitionCreateSingle, override);
        return beanDefinitionCreateSingle;
    }

    public final void unloadDefinition$koin_core(BeanDefinition<?> beanDefinition) {
        Intrinsics.checkNotNullParameter(beanDefinition, "beanDefinition");
        this.definitions.remove(beanDefinition);
    }

    public final void removeExtras$koin_core() {
        HashSet<BeanDefinition<?>> hashSet = this.definitions;
        ArrayList arrayList = new ArrayList();
        for (Object obj : hashSet) {
            if (((BeanDefinition) obj).getOptions().isExtraDefinition()) {
                arrayList.add(obj);
            }
        }
        this.definitions.removeAll(arrayList);
    }

    /* JADX INFO: compiled from: ScopeDefinition.kt */
    @Metadata(m2721d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\r\u0010\t\u001a\u00020\nH\u0000¢\u0006\u0002\b\u000bR\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u0011\u0010\u0005\u001a\u00020\u0006¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\b¨\u0006\f"}, m2722d2 = {"Lorg/koin/core/scope/ScopeDefinition$Companion;", "", "()V", "ROOT_SCOPE_ID", "", "ROOT_SCOPE_QUALIFIER", "Lorg/koin/core/qualifier/StringQualifier;", "getROOT_SCOPE_QUALIFIER", "()Lorg/koin/core/qualifier/StringQualifier;", "rootDefinition", "Lorg/koin/core/scope/ScopeDefinition;", "rootDefinition$koin_core", "koin-core"}, m2723k = 1, m2724mv = {1, 5, 1}, m2726xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final StringQualifier getROOT_SCOPE_QUALIFIER() {
            return ScopeDefinition.ROOT_SCOPE_QUALIFIER;
        }

        public final ScopeDefinition rootDefinition$koin_core() {
            return new ScopeDefinition(getROOT_SCOPE_QUALIFIER(), true);
        }
    }
}
