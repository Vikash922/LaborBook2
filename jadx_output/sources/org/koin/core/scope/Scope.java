package org.koin.core.scope;

import com.facebook.appevents.iap.InAppPurchaseConstants;
import com.itextpdf.svg.SvgConstants;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import kotlin.KotlinNothingValueException;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KClass;
import org.koin.core.Koin;
import org.koin.core.definition.BeanDefinition;
import org.koin.core.definition.BeanDefinitionKt;
import org.koin.core.definition.Definitions;
import org.koin.core.definition.Options;
import org.koin.core.error.ClosedScopeException;
import org.koin.core.error.DefinitionOverrideException;
import org.koin.core.error.MissingPropertyException;
import org.koin.core.error.NoBeanDefFoundException;
import org.koin.core.logger.Level;
import org.koin.core.logger.Logger;
import org.koin.core.parameter.DefinitionParameters;
import org.koin.core.qualifier.Qualifier;
import org.koin.core.registry.InstanceRegistry;
import org.koin.core.time.MeasureKt;
import org.koin.ext.KClassExtKt;
import org.koin.p048mp.KoinPlatformTools;

/* JADX INFO: compiled from: Scope.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(m2721d1 = {"\u0000¦\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0010\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u000e\n\u0002\u0010 \n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0014\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0011\n\u0002\b\t\n\u0002\u0010\u0001\n\u0002\b\u0003\b\u0086\b\u0018\u00002\u00020\u0001B!\u0012\n\u0010\u0002\u001a\u00060\u0003j\u0002`\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\b¢\u0006\u0002\u0010\tJ\u000e\u0010-\u001a\u00020.2\u0006\u0010/\u001a\u00020\u0013J?\u00100\u001a\u0002H1\"\u0004\b\u0000\u001012\n\u00102\u001a\u0006\u0012\u0002\b\u0003032\n\u00104\u001a\u0006\u0012\u0002\b\u0003032\u0014\u0010/\u001a\u0010\u0012\u0004\u0012\u00020\u0013\u0018\u000105j\u0004\u0018\u0001`6¢\u0006\u0002\u00107J9\u00100\u001a\u0002H1\"\u0006\b\u0000\u00101\u0018\u0001\"\u0006\b\u0001\u00108\u0018\u00012\u0016\b\n\u0010/\u001a\u0010\u0012\u0004\u0012\u00020\u0013\u0018\u000105j\u0004\u0018\u0001`6H\u0086\bø\u0001\u0000¢\u0006\u0002\u00109J\r\u0010:\u001a\u00020.H\u0000¢\u0006\u0002\b;J\u0006\u0010<\u001a\u00020.J\u0006\u0010=\u001a\u00020.J\r\u0010>\u001a\u00060\u0003j\u0002`\u0004HÆ\u0003J\t\u0010?\u001a\u00020\u0006HÆ\u0003J\u000e\u0010@\u001a\u00020\bHÀ\u0003¢\u0006\u0002\bAJ+\u0010B\u001a\u00020\u00002\f\b\u0002\u0010\u0002\u001a\u00060\u0003j\u0002`\u00042\b\b\u0002\u0010\u0005\u001a\u00020\u00062\b\b\u0002\u0010\u0007\u001a\u00020\bHÆ\u0001J\u001b\u0010C\u001a\u00020.2\f\u0010D\u001a\b\u0012\u0004\u0012\u00020\u00000EH\u0000¢\u0006\u0002\bFJ\r\u0010G\u001a\u00020.H\u0000¢\u0006\u0002\bHJJ\u0010I\u001a\u00020.\"\u0006\b\u0000\u0010J\u0018\u00012\u0006\u0010K\u001a\u0002HJ2\n\b\u0002\u0010L\u001a\u0004\u0018\u00010M2\u0014\b\u0002\u0010N\u001a\u000e\u0012\b\u0012\u0006\u0012\u0002\b\u000303\u0018\u00010E2\b\b\u0002\u0010O\u001a\u00020\u000fH\u0086\b¢\u0006\u0002\u0010PJ\u0012\u0010Q\u001a\u00020.2\n\u0010R\u001a\u0006\u0012\u0002\b\u00030SJ\u0013\u0010T\u001a\u00020\u000f2\b\u0010U\u001a\u0004\u0018\u00010\u0001HÖ\u0003JA\u0010V\u001a\u0004\u0018\u0001HJ\"\u0004\b\u0000\u0010J2\n\u0010W\u001a\u0006\u0012\u0002\b\u0003032\b\u0010L\u001a\u0004\u0018\u00010M2\u0014\u0010/\u001a\u0010\u0012\u0004\u0012\u00020\u0013\u0018\u000105j\u0004\u0018\u0001`6H\u0002¢\u0006\u0002\u0010XJA\u0010Y\u001a\u0002HJ\"\u0004\b\u0000\u0010J2\n\u0010W\u001a\u0006\u0012\u0002\b\u0003032\n\b\u0002\u0010L\u001a\u0004\u0018\u00010M2\u0016\b\u0002\u0010/\u001a\u0010\u0012\u0004\u0012\u00020\u0013\u0018\u000105j\u0004\u0018\u0001`6¢\u0006\u0002\u0010XJA\u0010Y\u001a\u0002HJ\"\n\b\u0000\u0010J\u0018\u0001*\u00020\u00012\n\b\u0002\u0010L\u001a\u0004\u0018\u00010M2\u0016\b\n\u0010/\u001a\u0010\u0012\u0004\u0012\u00020\u0013\u0018\u000105j\u0004\u0018\u0001`6H\u0086\bø\u0001\u0000¢\u0006\u0002\u0010ZJ\u001b\u0010[\u001a\b\u0012\u0004\u0012\u0002HJ0E\"\n\b\u0000\u0010J\u0018\u0001*\u00020\u0001H\u0086\bJ\u001e\u0010[\u001a\b\u0012\u0004\u0012\u0002HJ0E\"\u0004\b\u0000\u0010J2\n\u0010W\u001a\u0006\u0012\u0002\b\u000303J!\u0010\\\u001a\u0004\u0018\u0001HJ\"\u0004\b\u0000\u0010J2\n\u0010W\u001a\u0006\u0012\u0002\b\u000303H\u0002¢\u0006\u0002\u0010]J\u0006\u0010^\u001a\u00020\bJC\u0010_\u001a\u0004\u0018\u0001HJ\"\u0004\b\u0000\u0010J2\n\u0010W\u001a\u0006\u0012\u0002\b\u0003032\n\b\u0002\u0010L\u001a\u0004\u0018\u00010M2\u0016\b\u0002\u0010/\u001a\u0010\u0012\u0004\u0012\u00020\u0013\u0018\u000105j\u0004\u0018\u0001`6¢\u0006\u0002\u0010XJC\u0010_\u001a\u0004\u0018\u0001HJ\"\n\b\u0000\u0010J\u0018\u0001*\u00020\u00012\n\b\u0002\u0010L\u001a\u0004\u0018\u00010M2\u0016\b\n\u0010/\u001a\u0010\u0012\u0004\u0012\u00020\u0013\u0018\u000105j\u0004\u0018\u0001`6H\u0086\bø\u0001\u0000¢\u0006\u0002\u0010ZJ\u000e\u0010`\u001a\u00020\u00032\u0006\u0010a\u001a\u00020\u0003J\u0016\u0010`\u001a\u00020\u00032\u0006\u0010a\u001a\u00020\u00032\u0006\u0010b\u001a\u00020\u0003J\u0010\u0010c\u001a\u0004\u0018\u00010\u00032\u0006\u0010a\u001a\u00020\u0003J\u0012\u0010d\u001a\u00020\u00002\n\u0010e\u001a\u00060\u0003j\u0002`\u0004J\u001a\u0010f\u001a\u0002HJ\"\n\b\u0000\u0010J\u0018\u0001*\u00020\u0001H\u0086\b¢\u0006\u0002\u0010\u001bJ\t\u0010g\u001a\u00020hHÖ\u0001JL\u0010i\u001a\b\u0012\u0004\u0012\u0002HJ0j\"\n\b\u0000\u0010J\u0018\u0001*\u00020\u00012\n\b\u0002\u0010L\u001a\u0004\u0018\u00010M2\b\b\u0002\u0010k\u001a\u00020l2\u0016\b\n\u0010/\u001a\u0010\u0012\u0004\u0012\u00020\u0013\u0018\u000105j\u0004\u0018\u0001`6H\u0086\bø\u0001\u0000JN\u0010m\u001a\n\u0012\u0006\u0012\u0004\u0018\u0001HJ0j\"\n\b\u0000\u0010J\u0018\u0001*\u00020\u00012\n\b\u0002\u0010L\u001a\u0004\u0018\u00010M2\b\b\u0002\u0010k\u001a\u00020l2\u0016\b\n\u0010/\u001a\u0010\u0012\u0004\u0012\u00020\u0013\u0018\u000105j\u0004\u0018\u0001`6H\u0086\bø\u0001\u0000J\u0006\u0010n\u001a\u00020\u000fJ\u001f\u0010o\u001a\u00020.2\u0012\u0010p\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00000q\"\u00020\u0000¢\u0006\u0002\u0010rJ\u0012\u0010s\u001a\u00020.2\n\u0010R\u001a\u0006\u0012\u0002\b\u00030SJ\u000e\u0010t\u001a\u00020.2\u0006\u0010u\u001a\u00020\fJ?\u0010v\u001a\u0002HJ\"\u0004\b\u0000\u0010J2\b\u0010L\u001a\u0004\u0018\u00010M2\n\u0010W\u001a\u0006\u0012\u0002\b\u0003032\u0014\u0010/\u001a\u0010\u0012\u0004\u0012\u00020\u0013\u0018\u000105j\u0004\u0018\u0001`6H\u0002¢\u0006\u0002\u0010wJ\u0012\u0010x\u001a\u00020.2\b\u0010y\u001a\u0004\u0018\u00010\u0001H\u0007J\u001e\u0010z\u001a\u00020{2\b\u0010L\u001a\u0004\u0018\u00010M2\n\u0010W\u001a\u0006\u0012\u0002\b\u000303H\u0002J\b\u0010|\u001a\u00020\u0003H\u0016J\u001f\u0010}\u001a\u00020.2\u0012\u0010p\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00000q\"\u00020\u0000¢\u0006\u0002\u0010rR\u001e\u0010\n\u001a\u0012\u0012\u0004\u0012\u00020\f0\u000bj\b\u0012\u0004\u0012\u00020\f`\rX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u000fX\u0082\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0007\u001a\u00020\bX\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\u0011R\u0010\u0010\u0012\u001a\u0004\u0018\u00010\u0013X\u0082\u000e¢\u0006\u0002\n\u0000R\u001c\u0010\u0005\u001a\u00020\u00068\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b\u0014\u0010\u0015\u001a\u0004\b\u0016\u0010\u0017R&\u0010\u0018\u001a\u0004\u0018\u00010\u00018\u0000@\u0000X\u0081\u000e¢\u0006\u0014\n\u0000\u0012\u0004\b\u0019\u0010\u0015\u001a\u0004\b\u001a\u0010\u001b\"\u0004\b\u001c\u0010\u001dR\u0011\u0010\u001e\u001a\u00020\u000f8F¢\u0006\u0006\u001a\u0004\b\u001f\u0010 R\u0015\u0010\u0002\u001a\u00060\u0003j\u0002`\u0004¢\u0006\b\n\u0000\u001a\u0004\b!\u0010\"R\u001c\u0010#\u001a\u00020$8\u0000X\u0081\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b%\u0010\u0015\u001a\u0004\b&\u0010'R\u001e\u0010(\u001a\u0012\u0012\u0004\u0012\u00020\u00000\u000bj\b\u0012\u0004\u0012\u00020\u0000`\rX\u0082\u0004¢\u0006\u0002\n\u0000R\u0011\u0010)\u001a\u00020*¢\u0006\b\n\u0000\u001a\u0004\b+\u0010,\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006~"}, m2722d2 = {"Lorg/koin/core/scope/Scope;", "", "id", "", "Lorg/koin/core/scope/ScopeID;", "_scopeDefinition", "Lorg/koin/core/scope/ScopeDefinition;", "_koin", "Lorg/koin/core/Koin;", "(Ljava/lang/String;Lorg/koin/core/scope/ScopeDefinition;Lorg/koin/core/Koin;)V", "_callbacks", "Ljava/util/ArrayList;", "Lorg/koin/core/scope/ScopeCallback;", "Lkotlin/collections/ArrayList;", "_closed", "", "get_koin$koin_core", "()Lorg/koin/core/Koin;", "_parameters", "Lorg/koin/core/parameter/DefinitionParameters;", "get_scopeDefinition$annotations", "()V", "get_scopeDefinition", "()Lorg/koin/core/scope/ScopeDefinition;", "_source", "get_source$annotations", "get_source", "()Ljava/lang/Object;", "set_source", "(Ljava/lang/Object;)V", "closed", "getClosed", "()Z", "getId", "()Ljava/lang/String;", "instanceRegistry", "Lorg/koin/core/registry/InstanceRegistry;", "getInstanceRegistry$annotations", "getInstanceRegistry", "()Lorg/koin/core/registry/InstanceRegistry;", "linkedScopes", "logger", "Lorg/koin/core/logger/Logger;", "getLogger", "()Lorg/koin/core/logger/Logger;", "addParameters", "", "parameters", "bind", "S", "primaryType", "Lkotlin/reflect/KClass;", "secondaryType", "Lkotlin/Function0;", "Lorg/koin/core/parameter/ParametersDefinition;", "(Lkotlin/reflect/KClass;Lkotlin/reflect/KClass;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;", "P", "(Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;", "clear", "clear$koin_core", "clearParameters", "close", "component1", "component2", "component3", "component3$koin_core", "copy", "create", "links", "", "create$koin_core", "createEagerInstances", "createEagerInstances$koin_core", "declare", "T", "instance", "qualifier", "Lorg/koin/core/qualifier/Qualifier;", "secondaryTypes", "override", "(Ljava/lang/Object;Lorg/koin/core/qualifier/Qualifier;Ljava/util/List;Z)V", "dropInstance", "beanDefinition", "Lorg/koin/core/definition/BeanDefinition;", "equals", "other", "findInOtherScope", "clazz", "(Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;", "get", "(Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;", "getAll", "getFromSource", "(Lkotlin/reflect/KClass;)Ljava/lang/Object;", "getKoin", "getOrNull", "getProperty", "key", "defaultValue", "getPropertyOrNull", "getScope", "scopeID", "getSource", "hashCode", "", "inject", "Lkotlin/Lazy;", "mode", "Lkotlin/LazyThreadSafetyMode;", "injectOrNull", "isNotClosed", "linkTo", "scopes", "", "([Lorg/koin/core/scope/Scope;)V", "loadDefinition", "registerCallback", "callback", "resolveInstance", "(Lorg/koin/core/qualifier/Qualifier;Lkotlin/reflect/KClass;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;", "setSource", SvgConstants.Attributes.PATH_DATA_REL_SHORTHAND_CURVE_TO, "throwDefinitionNotFound", "", InAppPurchaseConstants.METHOD_TO_STRING, "unlink", "koin-core"}, m2723k = 1, m2724mv = {1, 5, 1}, m2726xi = 48)
public final /* data */ class Scope {
    private final ArrayList<ScopeCallback> _callbacks;
    private boolean _closed;
    private final Koin _koin;
    private DefinitionParameters _parameters;
    private final ScopeDefinition _scopeDefinition;
    private Object _source;
    private final String id;
    private final InstanceRegistry instanceRegistry;
    private final ArrayList<Scope> linkedScopes;
    private final Logger logger;

    public static /* synthetic */ Scope copy$default(Scope scope, String str, ScopeDefinition scopeDefinition, Koin koin, int i, Object obj) {
        if ((i & 1) != 0) {
            str = scope.id;
        }
        if ((i & 2) != 0) {
            scopeDefinition = scope._scopeDefinition;
        }
        if ((i & 4) != 0) {
            koin = scope._koin;
        }
        return scope.copy(str, scopeDefinition, koin);
    }

    public static /* synthetic */ void getInstanceRegistry$annotations() {
    }

    public static /* synthetic */ void get_scopeDefinition$annotations() {
    }

    public static /* synthetic */ void get_source$annotations() {
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getId() {
        return this.id;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final ScopeDefinition get_scopeDefinition() {
        return this._scopeDefinition;
    }

    /* JADX INFO: renamed from: component3$koin_core, reason: from getter */
    public final Koin get_koin() {
        return this._koin;
    }

    public final Scope copy(String id, ScopeDefinition _scopeDefinition, Koin _koin) {
        Intrinsics.checkNotNullParameter(id, "id");
        Intrinsics.checkNotNullParameter(_scopeDefinition, "_scopeDefinition");
        Intrinsics.checkNotNullParameter(_koin, "_koin");
        return new Scope(id, _scopeDefinition, _koin);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof Scope)) {
            return false;
        }
        Scope scope = (Scope) other;
        return Intrinsics.areEqual(this.id, scope.id) && Intrinsics.areEqual(this._scopeDefinition, scope._scopeDefinition) && Intrinsics.areEqual(this._koin, scope._koin);
    }

    public int hashCode() {
        return (((this.id.hashCode() * 31) + this._scopeDefinition.hashCode()) * 31) + this._koin.hashCode();
    }

    public Scope(String id, ScopeDefinition _scopeDefinition, Koin _koin) {
        Intrinsics.checkNotNullParameter(id, "id");
        Intrinsics.checkNotNullParameter(_scopeDefinition, "_scopeDefinition");
        Intrinsics.checkNotNullParameter(_koin, "_koin");
        this.id = id;
        this._scopeDefinition = _scopeDefinition;
        this._koin = _koin;
        this.linkedScopes = new ArrayList<>();
        this.instanceRegistry = new InstanceRegistry(_koin, this);
        this._callbacks = new ArrayList<>();
        this.logger = _koin.getLogger();
    }

    public final String getId() {
        return this.id;
    }

    public final ScopeDefinition get_scopeDefinition() {
        return this._scopeDefinition;
    }

    public final Koin get_koin$koin_core() {
        return this._koin;
    }

    public final InstanceRegistry getInstanceRegistry() {
        return this.instanceRegistry;
    }

    public final Object get_source() {
        return this._source;
    }

    public final void set_source(Object obj) {
        this._source = obj;
    }

    /* JADX INFO: renamed from: getClosed, reason: from getter */
    public final boolean get_closed() {
        return this._closed;
    }

    public final boolean isNotClosed() {
        return !get_closed();
    }

    public final Logger getLogger() {
        return this.logger;
    }

    public final void create$koin_core(List<Scope> links) {
        Intrinsics.checkNotNullParameter(links, "links");
        this.instanceRegistry.create$koin_core(this._scopeDefinition.getDefinitions());
        this.linkedScopes.addAll(links);
    }

    public final /* synthetic */ Object getSource() {
        Object obj = get_source();
        Intrinsics.reifiedOperationMarker(2, "T");
        if (obj != null) {
            return obj;
        }
        StringBuilder sb = new StringBuilder("Can't use Scope source for ");
        Intrinsics.reifiedOperationMarker(4, "T");
        throw new IllegalStateException(sb.append(KClassExtKt.getFullName(Reflection.getOrCreateKotlinClass(Object.class))).append(" - source is:").append(get_source()).toString().toString());
    }

    public final void setSource(Object t) {
        this._source = t;
    }

    public final void linkTo(Scope... scopes) {
        Intrinsics.checkNotNullParameter(scopes, "scopes");
        if (!this._scopeDefinition.isRoot()) {
            CollectionsKt.addAll(this.linkedScopes, scopes);
            return;
        }
        throw new IllegalStateException("Can't add scope link to a root scope".toString());
    }

    public final void unlink(Scope... scopes) {
        Intrinsics.checkNotNullParameter(scopes, "scopes");
        if (!this._scopeDefinition.isRoot()) {
            CollectionsKt.removeAll(this.linkedScopes, scopes);
            return;
        }
        throw new IllegalStateException("Can't remove scope link to a root scope".toString());
    }

    public static /* synthetic */ Lazy inject$default(Scope scope, Qualifier qualifier, LazyThreadSafetyMode mode, Function0 function0, int i, Object obj) {
        if ((i & 1) != 0) {
            qualifier = null;
        }
        if ((i & 2) != 0) {
            mode = LazyThreadSafetyMode.SYNCHRONIZED;
        }
        if ((i & 4) != 0) {
            function0 = null;
        }
        Intrinsics.checkNotNullParameter(mode, "mode");
        Intrinsics.needClassReification();
        return LazyKt.lazy(mode, (Function0) scope.new C48671(qualifier, function0));
    }

    /* JADX INFO: Add missing generic type declarations: [T] */
    /* JADX INFO: renamed from: org.koin.core.scope.Scope$inject$1 */
    /* JADX INFO: compiled from: Scope.kt */
    /* JADX INFO: loaded from: classes4.dex */
    @Metadata(m2721d1 = {"\u0000\b\n\u0002\b\u0002\n\u0002\u0010\u0000\u0010\u0000\u001a\u0002H\u0001\"\n\b\u0000\u0010\u0001\u0018\u0001*\u00020\u0002H\n"}, m2722d2 = {"<anonymous>", "T", ""}, m2723k = 3, m2724mv = {1, 5, 1}, m2726xi = 48)
    public static final class C48671<T> extends Lambda implements Function0<T> {
        final /* synthetic */ Function0<DefinitionParameters> $parameters;
        final /* synthetic */ Qualifier $qualifier;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        public C48671(Qualifier qualifier, Function0<? extends DefinitionParameters> function0) {
            super(0);
            this.$qualifier = qualifier;
            this.$parameters = function0;
        }

        @Override // kotlin.jvm.functions.Function0
        public final T invoke() {
            Scope scope = Scope.this;
            Qualifier qualifier = this.$qualifier;
            Function0<DefinitionParameters> function0 = this.$parameters;
            Intrinsics.reifiedOperationMarker(4, "T");
            return (T) scope.get(Reflection.getOrCreateKotlinClass(Object.class), qualifier, function0);
        }
    }

    public final /* synthetic */ Lazy inject(Qualifier qualifier, LazyThreadSafetyMode mode, Function0 parameters) {
        Intrinsics.checkNotNullParameter(mode, "mode");
        Intrinsics.needClassReification();
        return LazyKt.lazy(mode, (Function0) new C48671(qualifier, parameters));
    }

    public static /* synthetic */ Lazy injectOrNull$default(Scope scope, Qualifier qualifier, LazyThreadSafetyMode mode, Function0 function0, int i, Object obj) {
        if ((i & 1) != 0) {
            qualifier = null;
        }
        if ((i & 2) != 0) {
            mode = LazyThreadSafetyMode.SYNCHRONIZED;
        }
        if ((i & 4) != 0) {
            function0 = null;
        }
        Intrinsics.checkNotNullParameter(mode, "mode");
        Intrinsics.needClassReification();
        return LazyKt.lazy(mode, (Function0) scope.new C48681(qualifier, function0));
    }

    /* JADX INFO: Add missing generic type declarations: [T] */
    /* JADX INFO: renamed from: org.koin.core.scope.Scope$injectOrNull$1 */
    /* JADX INFO: compiled from: Scope.kt */
    /* JADX INFO: loaded from: classes4.dex */
    @Metadata(m2721d1 = {"\u0000\b\n\u0002\b\u0002\n\u0002\u0010\u0000\u0010\u0000\u001a\u0004\u0018\u0001H\u0001\"\n\b\u0000\u0010\u0001\u0018\u0001*\u00020\u0002H\n"}, m2722d2 = {"<anonymous>", "T", ""}, m2723k = 3, m2724mv = {1, 5, 1}, m2726xi = 48)
    public static final class C48681<T> extends Lambda implements Function0<T> {
        final /* synthetic */ Function0<DefinitionParameters> $parameters;
        final /* synthetic */ Qualifier $qualifier;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        public C48681(Qualifier qualifier, Function0<? extends DefinitionParameters> function0) {
            super(0);
            this.$qualifier = qualifier;
            this.$parameters = function0;
        }

        @Override // kotlin.jvm.functions.Function0
        public final T invoke() {
            Scope scope = Scope.this;
            Qualifier qualifier = this.$qualifier;
            Function0<DefinitionParameters> function0 = this.$parameters;
            Intrinsics.reifiedOperationMarker(4, "T");
            return (T) scope.getOrNull(Reflection.getOrCreateKotlinClass(Object.class), qualifier, function0);
        }
    }

    public final /* synthetic */ Lazy injectOrNull(Qualifier qualifier, LazyThreadSafetyMode mode, Function0 parameters) {
        Intrinsics.checkNotNullParameter(mode, "mode");
        Intrinsics.needClassReification();
        return LazyKt.lazy(mode, (Function0) new C48681(qualifier, parameters));
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ Object get$default(Scope scope, Qualifier qualifier, Function0 function0, int i, Object obj) {
        if ((i & 1) != 0) {
            qualifier = null;
        }
        if ((i & 2) != 0) {
            function0 = null;
        }
        Intrinsics.reifiedOperationMarker(4, "T");
        return scope.get(Reflection.getOrCreateKotlinClass(Object.class), qualifier, function0);
    }

    public final /* synthetic */ Object get(Qualifier qualifier, Function0 parameters) {
        Intrinsics.reifiedOperationMarker(4, "T");
        return get(Reflection.getOrCreateKotlinClass(Object.class), qualifier, parameters);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ Object getOrNull$default(Scope scope, Qualifier qualifier, Function0 function0, int i, Object obj) {
        if ((i & 1) != 0) {
            qualifier = null;
        }
        if ((i & 2) != 0) {
            function0 = null;
        }
        Intrinsics.reifiedOperationMarker(4, "T");
        return scope.getOrNull(Reflection.getOrCreateKotlinClass(Object.class), qualifier, function0);
    }

    public final /* synthetic */ Object getOrNull(Qualifier qualifier, Function0 parameters) {
        Intrinsics.reifiedOperationMarker(4, "T");
        return getOrNull(Reflection.getOrCreateKotlinClass(Object.class), qualifier, parameters);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ Object getOrNull$default(Scope scope, KClass kClass, Qualifier qualifier, Function0 function0, int i, Object obj) {
        if ((i & 2) != 0) {
            qualifier = null;
        }
        if ((i & 4) != 0) {
            function0 = null;
        }
        return scope.getOrNull(kClass, qualifier, function0);
    }

    public final <T> T getOrNull(KClass<?> clazz, Qualifier qualifier, Function0<? extends DefinitionParameters> parameters) {
        Intrinsics.checkNotNullParameter(clazz, "clazz");
        try {
            return (T) get(clazz, qualifier, parameters);
        } catch (ClosedScopeException unused) {
            this._koin.getLogger().debug("Koin.getOrNull - scope closed - no instance found for " + KClassExtKt.getFullName(clazz) + " on scope " + this);
            return null;
        } catch (NoBeanDefFoundException unused2) {
            this._koin.getLogger().debug("Koin.getOrNull - no instance found for " + KClassExtKt.getFullName(clazz) + " on scope " + this);
            return null;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ Object get$default(Scope scope, KClass kClass, Qualifier qualifier, Function0 function0, int i, Object obj) {
        if ((i & 2) != 0) {
            qualifier = null;
        }
        if ((i & 4) != 0) {
            function0 = null;
        }
        return scope.get(kClass, qualifier, function0);
    }

    public final <T> T get(final KClass<?> clazz, final Qualifier qualifier, final Function0<? extends DefinitionParameters> parameters) {
        String str;
        Intrinsics.checkNotNullParameter(clazz, "clazz");
        if (this._koin.getLogger().isAt(Level.DEBUG)) {
            String str2 = "";
            if (qualifier != null && (str = " with qualifier '" + qualifier + '\'') != null) {
                str2 = str;
            }
            this._koin.getLogger().debug("+- '" + KClassExtKt.getFullName(clazz) + '\'' + str2);
            Pair pairMeasureDurationForResult = MeasureKt.measureDurationForResult(new Function0<T>() { // from class: org.koin.core.scope.Scope.get.1
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                /* JADX WARN: Multi-variable type inference failed */
                {
                    super(0);
                }

                @Override // kotlin.jvm.functions.Function0
                public final T invoke() {
                    return (T) Scope.this.resolveInstance(qualifier, clazz, parameters);
                }
            });
            T t = (T) pairMeasureDurationForResult.component1();
            this._koin.getLogger().debug("|- '" + KClassExtKt.getFullName(clazz) + "' in " + ((Number) pairMeasureDurationForResult.component2()).doubleValue() + " ms");
            return t;
        }
        return (T) resolveInstance(qualifier, clazz, parameters);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final <T> T resolveInstance(Qualifier qualifier, KClass<?> clazz, Function0<? extends DefinitionParameters> parameters) throws ClosedScopeException, NoBeanDefFoundException {
        if (this._closed) {
            throw new ClosedScopeException("Scope '" + this.id + "' is closed");
        }
        Object objResolveInstance$koin_core = this.instanceRegistry.resolveInstance$koin_core(BeanDefinitionKt.indexKey(clazz, qualifier), parameters);
        if (objResolveInstance$koin_core == null) {
            get_koin$koin_core().getLogger().debug("'" + KClassExtKt.getFullName(clazz) + "' - q:'" + qualifier + "' not found in current scope");
            objResolveInstance$koin_core = (T) getFromSource(clazz);
            if (objResolveInstance$koin_core == null) {
                get_koin$koin_core().getLogger().debug("'" + KClassExtKt.getFullName(clazz) + "' - q:'" + qualifier + "' not found in current scope's source");
                DefinitionParameters definitionParameters = this._parameters;
                objResolveInstance$koin_core = definitionParameters == null ? (T) null : (T) definitionParameters.getOrNull(clazz);
            }
        }
        if (objResolveInstance$koin_core == null) {
            get_koin$koin_core().getLogger().debug("'" + KClassExtKt.getFullName(clazz) + "' - q:'" + qualifier + "' not found in injected parameters");
            objResolveInstance$koin_core = (T) findInOtherScope(clazz, qualifier, parameters);
            if (objResolveInstance$koin_core == null) {
                get_koin$koin_core().getLogger().debug("'" + KClassExtKt.getFullName(clazz) + "' - q:'" + qualifier + "' not found in linked scopes");
                throwDefinitionNotFound(qualifier, clazz);
                throw new KotlinNothingValueException();
            }
        }
        return (T) objResolveInstance$koin_core;
    }

    private final <T> T getFromSource(KClass<?> clazz) {
        if (clazz.isInstance(this._source)) {
            return (T) this._source;
        }
        return null;
    }

    private final <T> T findInOtherScope(KClass<?> clazz, Qualifier qualifier, Function0<? extends DefinitionParameters> parameters) {
        Iterator<Scope> it = this.linkedScopes.iterator();
        T t = null;
        while (it.hasNext() && (t = (T) it.next().getOrNull(clazz, qualifier, parameters)) == null) {
        }
        return t;
    }

    private final Void throwDefinitionNotFound(Qualifier qualifier, KClass<?> clazz) throws NoBeanDefFoundException {
        String str;
        String str2 = "";
        if (qualifier != null && (str = " & qualifier:'" + qualifier + '\'') != null) {
            str2 = str;
        }
        throw new NoBeanDefFoundException("No definition found for class:'" + KClassExtKt.getFullName(clazz) + '\'' + str2 + ". Check your definitions!");
    }

    public final void createEagerInstances$koin_core() {
        if (this._scopeDefinition.isRoot()) {
            this.instanceRegistry.createEagerInstances$koin_core();
        }
    }

    /* JADX INFO: renamed from: org.koin.core.scope.Scope$declare$1 */
    /* JADX INFO: compiled from: Scope.kt */
    /* JADX INFO: loaded from: classes4.dex */
    @Metadata(m2721d1 = {"\u0000\b\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001\"\u0006\b\u0000\u0010\u0002\u0018\u0001H\n"}, m2722d2 = {"<anonymous>", "", "T"}, m2723k = 3, m2724mv = {1, 5, 1}, m2726xi = 48)
    public static final class C48651 extends Lambda implements Function0<Unit> {
        final /* synthetic */ T $instance;
        final /* synthetic */ boolean $override;
        final /* synthetic */ Qualifier $qualifier;
        final /* synthetic */ List<KClass<?>> $secondaryTypes;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        public C48651(T t, Qualifier qualifier, List<? extends KClass<?>> list, boolean z) {
            super(0);
            this.$instance = t;
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
            ScopeDefinition scopeDefinition = Scope.this.get_scopeDefinition();
            T t = this.$instance;
            Qualifier qualifier = this.$qualifier;
            List<KClass<?>> listEmptyList = this.$secondaryTypes;
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
            ScopeDefinition$declareNewDefinition$beanDefinition$1 scopeDefinition$declareNewDefinition$beanDefinition$1 = new ScopeDefinition$declareNewDefinition$beanDefinition$1(t);
            Options options = new Options(false, z, true);
            if (listEmptyList == null) {
                listEmptyList = CollectionsKt.emptyList();
            }
            BeanDefinition<?> beanDefinitionCreateSingle = definitions.createSingle(orCreateKotlinClass, qualifier, scopeDefinition$declareNewDefinition$beanDefinition$1, options, listEmptyList, scopeDefinition.getQualifier());
            scopeDefinition.save(beanDefinitionCreateSingle, z);
            Scope.this.getInstanceRegistry().saveDefinition(beanDefinitionCreateSingle, true);
        }
    }

    public static /* synthetic */ void declare$default(Scope scope, Object obj, Qualifier qualifier, List list, boolean z, int i, Object obj2) {
        Qualifier qualifier2 = (i & 2) != 0 ? null : qualifier;
        List list2 = (i & 4) != 0 ? null : list;
        if ((i & 8) != 0) {
            z = false;
        }
        KoinPlatformTools koinPlatformTools = KoinPlatformTools.INSTANCE;
        Intrinsics.needClassReification();
        koinPlatformTools.m5053synchronized(scope, scope.new C48651(obj, qualifier2, list2, z));
    }

    public final /* synthetic */ void declare(Object instance, Qualifier qualifier, List secondaryTypes, boolean override) {
        KoinPlatformTools koinPlatformTools = KoinPlatformTools.INSTANCE;
        Intrinsics.needClassReification();
        koinPlatformTools.m5053synchronized(this, new C48651(instance, qualifier, secondaryTypes, override));
    }

    public final Koin getKoin() {
        return this._koin;
    }

    public final Scope getScope(String scopeID) {
        Intrinsics.checkNotNullParameter(scopeID, "scopeID");
        return getKoin().getScope(scopeID);
    }

    public final void registerCallback(ScopeCallback callback) {
        Intrinsics.checkNotNullParameter(callback, "callback");
        this._callbacks.add(callback);
    }

    public final /* synthetic */ List getAll() {
        Intrinsics.reifiedOperationMarker(4, "T");
        return getAll(Reflection.getOrCreateKotlinClass(Object.class));
    }

    public final <T> List<T> getAll(KClass<?> clazz) {
        Intrinsics.checkNotNullParameter(clazz, "clazz");
        List<T> all$koin_core = this.instanceRegistry.getAll$koin_core(clazz);
        ArrayList<Scope> arrayList = this.linkedScopes;
        ArrayList arrayList2 = new ArrayList();
        Iterator<T> it = arrayList.iterator();
        while (it.hasNext()) {
            CollectionsKt.addAll(arrayList2, ((Scope) it.next()).getAll(clazz));
        }
        return CollectionsKt.plus((Collection) all$koin_core, (Iterable) arrayList2);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ Object bind$default(Scope scope, Function0 function0, int i, Object obj) {
        if ((i & 1) != 0) {
            function0 = null;
        }
        Intrinsics.reifiedOperationMarker(4, "S");
        KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(Object.class);
        Intrinsics.reifiedOperationMarker(4, "P");
        return scope.bind(Reflection.getOrCreateKotlinClass(Object.class), orCreateKotlinClass, function0);
    }

    public final /* synthetic */ Object bind(Function0 parameters) {
        Intrinsics.reifiedOperationMarker(4, "S");
        KClass<?> orCreateKotlinClass = Reflection.getOrCreateKotlinClass(Object.class);
        Intrinsics.reifiedOperationMarker(4, "P");
        return bind(Reflection.getOrCreateKotlinClass(Object.class), orCreateKotlinClass, parameters);
    }

    public final <S> S bind(KClass<?> primaryType, KClass<?> secondaryType, Function0<? extends DefinitionParameters> parameters) throws NoBeanDefFoundException {
        Intrinsics.checkNotNullParameter(primaryType, "primaryType");
        Intrinsics.checkNotNullParameter(secondaryType, "secondaryType");
        S s = (S) this.instanceRegistry.bind$koin_core(primaryType, secondaryType, parameters);
        if (s != null) {
            return s;
        }
        throw new NoBeanDefFoundException("No definition found to bind class:'" + KClassExtKt.getFullName(primaryType) + "' & secondary type:'" + KClassExtKt.getFullName(secondaryType) + "'. Check your definitions!");
    }

    public final String getProperty(String key, String defaultValue) {
        Intrinsics.checkNotNullParameter(key, "key");
        Intrinsics.checkNotNullParameter(defaultValue, "defaultValue");
        return (String) this._koin.getProperty(key, defaultValue);
    }

    public final String getPropertyOrNull(String key) {
        Intrinsics.checkNotNullParameter(key, "key");
        return (String) this._koin.getProperty(key);
    }

    public final String getProperty(String key) throws MissingPropertyException {
        Intrinsics.checkNotNullParameter(key, "key");
        String str = (String) this._koin.getProperty(key);
        if (str != null) {
            return str;
        }
        throw new MissingPropertyException("Property '" + key + "' not found");
    }

    public final void close() {
        KoinPlatformTools.INSTANCE.m5053synchronized(this, new Function0<Unit>() { // from class: org.koin.core.scope.Scope.close.1
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public /* bridge */ /* synthetic */ Unit invoke() {
                invoke2();
                return Unit.INSTANCE;
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2() {
                Scope.this.clear$koin_core();
                Scope.this.get_koin$koin_core().getScopeRegistry().deleteScope(Scope.this);
            }
        });
    }

    public final void clear$koin_core() {
        this._closed = true;
        this._source = null;
        if (this._koin.getLogger().isAt(Level.DEBUG)) {
            this._koin.getLogger().info("closing scope:'" + this.id + '\'');
        }
        Iterator<T> it = this._callbacks.iterator();
        while (it.hasNext()) {
            ((ScopeCallback) it.next()).onScopeClose(this);
        }
        this._callbacks.clear();
        this.instanceRegistry.close$koin_core();
    }

    public String toString() {
        return "['" + this.id + "']";
    }

    public final void dropInstance(BeanDefinition<?> beanDefinition) {
        Intrinsics.checkNotNullParameter(beanDefinition, "beanDefinition");
        this.instanceRegistry.dropDefinition$koin_core(beanDefinition);
    }

    public final void loadDefinition(BeanDefinition<?> beanDefinition) {
        Intrinsics.checkNotNullParameter(beanDefinition, "beanDefinition");
        this.instanceRegistry.createDefinition$koin_core(beanDefinition);
    }

    public final void addParameters(DefinitionParameters parameters) {
        Intrinsics.checkNotNullParameter(parameters, "parameters");
        this._parameters = parameters;
    }

    public final void clearParameters() {
        this._parameters = null;
    }
}
