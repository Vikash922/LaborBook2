package org.koin.core.definition;

import com.facebook.appevents.iap.InAppPurchaseConstants;
import com.facebook.gamingservices.cloudgaming.internal.SDKConstants;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.KClass;
import org.koin.core.parameter.DefinitionParameters;
import org.koin.core.qualifier.Qualifier;
import org.koin.core.scope.Scope;
import org.koin.core.scope.ScopeDefinition;
import org.koin.ext.KClassExtKt;

/* JADX INFO: compiled from: BeanDefinition.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(m2721d1 = {"\u0000h\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0016\n\u0002\u0010\u000b\n\u0002\b\u0010\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u0000*\u0004\b\u0000\u0010\u00012\u00020\u0002B~\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\n\u0010\u0005\u001a\u0006\u0012\u0002\b\u00030\u0006\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0004\u0012'\u0010\b\u001a#\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00028\u00000\tj\b\u0012\u0004\u0012\u00028\u0000`\f¢\u0006\u0002\b\r\u0012\u0006\u0010\u000e\u001a\u00020\u000f\u0012\u0012\b\u0002\u0010\u0010\u001a\f\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u00060\u0011\u0012\b\b\u0002\u0010\u0012\u001a\u00020\u0013\u0012\b\b\u0002\u0010\u0014\u001a\u00020\u0015¢\u0006\u0002\u0010\u0016J\u001e\u0010.\u001a\u00020/2\n\u00100\u001a\u0006\u0012\u0002\b\u00030\u00062\n\u00101\u001a\u0006\u0012\u0002\b\u00030\u0006J\t\u00102\u001a\u00020\u0004HÆ\u0003J\r\u00103\u001a\u0006\u0012\u0002\b\u00030\u0006HÆ\u0003J\u000b\u00104\u001a\u0004\u0018\u00010\u0004HÆ\u0003J*\u00105\u001a#\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00028\u00000\tj\b\u0012\u0004\u0012\u00028\u0000`\f¢\u0006\u0002\b\rHÆ\u0003J\t\u00106\u001a\u00020\u000fHÆ\u0003J\u0013\u00107\u001a\f\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u00060\u0011HÆ\u0003J\t\u00108\u001a\u00020\u0013HÆ\u0003J\t\u00109\u001a\u00020\u0015HÆ\u0003J\u0090\u0001\u0010:\u001a\b\u0012\u0004\u0012\u00028\u00000\u00002\b\b\u0002\u0010\u0003\u001a\u00020\u00042\f\b\u0002\u0010\u0005\u001a\u0006\u0012\u0002\b\u00030\u00062\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00042)\b\u0002\u0010\b\u001a#\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00028\u00000\tj\b\u0012\u0004\u0012\u00028\u0000`\f¢\u0006\u0002\b\r2\b\b\u0002\u0010\u000e\u001a\u00020\u000f2\u0012\b\u0002\u0010\u0010\u001a\f\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u00060\u00112\b\b\u0002\u0010\u0012\u001a\u00020\u00132\b\b\u0002\u0010\u0014\u001a\u00020\u0015HÆ\u0001J\u0013\u0010;\u001a\u00020/2\b\u0010<\u001a\u0004\u0018\u00010\u0002H\u0096\u0002J\u0012\u0010=\u001a\u00020/2\n\u0010>\u001a\u0006\u0012\u0002\b\u00030\u0006J\b\u0010?\u001a\u00020@H\u0016J$\u0010A\u001a\u00020/2\n\u0010>\u001a\u0006\u0012\u0002\b\u00030\u00062\b\u0010\u0007\u001a\u0004\u0018\u00010\u00042\u0006\u0010B\u001a\u00020\u0004J\b\u0010C\u001a\u00020DH\u0016R \u0010\u0017\u001a\b\u0012\u0004\u0012\u00028\u00000\u0018X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0019\u0010\u001a\"\u0004\b\u001b\u0010\u001cR2\u0010\b\u001a#\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00028\u00000\tj\b\u0012\u0004\u0012\u00028\u0000`\f¢\u0006\u0002\b\r¢\u0006\b\n\u0000\u001a\u0004\b\u001d\u0010\u001eR\u0011\u0010\u000e\u001a\u00020\u000f¢\u0006\b\n\u0000\u001a\u0004\b\u001f\u0010 R\u0011\u0010\u0012\u001a\u00020\u0013¢\u0006\b\n\u0000\u001a\u0004\b!\u0010\"R\u0015\u0010\u0005\u001a\u0006\u0012\u0002\b\u00030\u0006¢\u0006\b\n\u0000\u001a\u0004\b#\u0010$R\u0011\u0010\u0014\u001a\u00020\u0015¢\u0006\b\n\u0000\u001a\u0004\b%\u0010&R\u0013\u0010\u0007\u001a\u0004\u0018\u00010\u0004¢\u0006\b\n\u0000\u001a\u0004\b'\u0010(R\u0011\u0010\u0003\u001a\u00020\u0004¢\u0006\b\n\u0000\u001a\u0004\b)\u0010(R$\u0010\u0010\u001a\f\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u00060\u0011X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b*\u0010+\"\u0004\b,\u0010-¨\u0006E"}, m2722d2 = {"Lorg/koin/core/definition/BeanDefinition;", "T", "", "scopeQualifier", "Lorg/koin/core/qualifier/Qualifier;", "primaryType", "Lkotlin/reflect/KClass;", "qualifier", "definition", "Lkotlin/Function2;", "Lorg/koin/core/scope/Scope;", "Lorg/koin/core/parameter/DefinitionParameters;", "Lorg/koin/core/definition/Definition;", "Lkotlin/ExtensionFunctionType;", "kind", "Lorg/koin/core/definition/Kind;", "secondaryTypes", "", SDKConstants.PARAM_GAME_REQUESTS_OPTIONS, "Lorg/koin/core/definition/Options;", "properties", "Lorg/koin/core/definition/Properties;", "(Lorg/koin/core/qualifier/Qualifier;Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;Ljava/util/List;Lorg/koin/core/definition/Options;Lorg/koin/core/definition/Properties;)V", "callbacks", "Lorg/koin/core/definition/Callbacks;", "getCallbacks", "()Lorg/koin/core/definition/Callbacks;", "setCallbacks", "(Lorg/koin/core/definition/Callbacks;)V", "getDefinition", "()Lkotlin/jvm/functions/Function2;", "getKind", "()Lorg/koin/core/definition/Kind;", "getOptions", "()Lorg/koin/core/definition/Options;", "getPrimaryType", "()Lkotlin/reflect/KClass;", "getProperties", "()Lorg/koin/core/definition/Properties;", "getQualifier", "()Lorg/koin/core/qualifier/Qualifier;", "getScopeQualifier", "getSecondaryTypes", "()Ljava/util/List;", "setSecondaryTypes", "(Ljava/util/List;)V", "canBind", "", "primary", "secondary", "component1", "component2", "component3", "component4", "component5", "component6", "component7", "component8", "copy", "equals", "other", "hasType", "clazz", "hashCode", "", "is", "scopeDefinition", InAppPurchaseConstants.METHOD_TO_STRING, "", "koin-core"}, m2723k = 1, m2724mv = {1, 5, 1}, m2726xi = 48)
public final /* data */ class BeanDefinition<T> {
    private Callbacks<T> callbacks;
    private final Function2<Scope, DefinitionParameters, T> definition;
    private final Kind kind;
    private final Options options;
    private final KClass<?> primaryType;
    private final Properties properties;
    private final Qualifier qualifier;
    private final Qualifier scopeQualifier;
    private List<? extends KClass<?>> secondaryTypes;

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final Qualifier getScopeQualifier() {
        return this.scopeQualifier;
    }

    public final KClass<?> component2() {
        return this.primaryType;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final Qualifier getQualifier() {
        return this.qualifier;
    }

    public final Function2<Scope, DefinitionParameters, T> component4() {
        return this.definition;
    }

    /* JADX INFO: renamed from: component5, reason: from getter */
    public final Kind getKind() {
        return this.kind;
    }

    public final List<KClass<?>> component6() {
        return this.secondaryTypes;
    }

    /* JADX INFO: renamed from: component7, reason: from getter */
    public final Options getOptions() {
        return this.options;
    }

    /* JADX INFO: renamed from: component8, reason: from getter */
    public final Properties getProperties() {
        return this.properties;
    }

    public final BeanDefinition<T> copy(Qualifier scopeQualifier, KClass<?> primaryType, Qualifier qualifier, Function2<? super Scope, ? super DefinitionParameters, ? extends T> definition, Kind kind, List<? extends KClass<?>> secondaryTypes, Options options, Properties properties) {
        Intrinsics.checkNotNullParameter(scopeQualifier, "scopeQualifier");
        Intrinsics.checkNotNullParameter(primaryType, "primaryType");
        Intrinsics.checkNotNullParameter(definition, "definition");
        Intrinsics.checkNotNullParameter(kind, "kind");
        Intrinsics.checkNotNullParameter(secondaryTypes, "secondaryTypes");
        Intrinsics.checkNotNullParameter(options, "options");
        Intrinsics.checkNotNullParameter(properties, "properties");
        return new BeanDefinition<>(scopeQualifier, primaryType, qualifier, definition, kind, secondaryTypes, options, properties);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public BeanDefinition(Qualifier scopeQualifier, KClass<?> primaryType, Qualifier qualifier, Function2<? super Scope, ? super DefinitionParameters, ? extends T> definition, Kind kind, List<? extends KClass<?>> secondaryTypes, Options options, Properties properties) {
        Intrinsics.checkNotNullParameter(scopeQualifier, "scopeQualifier");
        Intrinsics.checkNotNullParameter(primaryType, "primaryType");
        Intrinsics.checkNotNullParameter(definition, "definition");
        Intrinsics.checkNotNullParameter(kind, "kind");
        Intrinsics.checkNotNullParameter(secondaryTypes, "secondaryTypes");
        Intrinsics.checkNotNullParameter(options, "options");
        Intrinsics.checkNotNullParameter(properties, "properties");
        this.scopeQualifier = scopeQualifier;
        this.primaryType = primaryType;
        this.qualifier = qualifier;
        this.definition = definition;
        this.kind = kind;
        this.secondaryTypes = secondaryTypes;
        this.options = options;
        this.properties = properties;
        this.callbacks = new Callbacks<>(null, 1, null);
    }

    public final Qualifier getScopeQualifier() {
        return this.scopeQualifier;
    }

    public final KClass<?> getPrimaryType() {
        return this.primaryType;
    }

    public final Qualifier getQualifier() {
        return this.qualifier;
    }

    public final Function2<Scope, DefinitionParameters, T> getDefinition() {
        return this.definition;
    }

    public final Kind getKind() {
        return this.kind;
    }

    public /* synthetic */ BeanDefinition(Qualifier qualifier, KClass kClass, Qualifier qualifier2, Function2 function2, Kind kind, List list, Options options, Properties properties, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(qualifier, kClass, (i & 4) != 0 ? null : qualifier2, function2, kind, (i & 32) != 0 ? CollectionsKt.emptyList() : list, (i & 64) != 0 ? new Options(false, false, false, 7, null) : options, (i & 128) != 0 ? new Properties(null, 1, null) : properties);
    }

    public final List<KClass<?>> getSecondaryTypes() {
        return this.secondaryTypes;
    }

    public final void setSecondaryTypes(List<? extends KClass<?>> list) {
        Intrinsics.checkNotNullParameter(list, "<set-?>");
        this.secondaryTypes = list;
    }

    public final Options getOptions() {
        return this.options;
    }

    public final Properties getProperties() {
        return this.properties;
    }

    public final Callbacks<T> getCallbacks() {
        return this.callbacks;
    }

    public final void setCallbacks(Callbacks<T> callbacks) {
        Intrinsics.checkNotNullParameter(callbacks, "<set-?>");
        this.callbacks = callbacks;
    }

    public String toString() {
        String strStringPlus;
        String string = this.kind.toString();
        String str = "'" + KClassExtKt.getFullName(this.primaryType) + '\'';
        if (this.qualifier == null || (strStringPlus = Intrinsics.stringPlus(",qualifier:", getQualifier())) == null) {
            strStringPlus = "";
        }
        return "[" + string + ':' + str + strStringPlus + (Intrinsics.areEqual(this.scopeQualifier, ScopeDefinition.INSTANCE.getROOT_SCOPE_QUALIFIER()) ? "" : Intrinsics.stringPlus(",scope:", getScopeQualifier())) + (this.secondaryTypes.isEmpty() ? "" : Intrinsics.stringPlus(",binds:", CollectionsKt.joinToString$default(this.secondaryTypes, ",", null, null, 0, null, new Function1<KClass<?>, CharSequence>() { // from class: org.koin.core.definition.BeanDefinition$toString$defOtherTypes$typesAsString$1
            @Override // kotlin.jvm.functions.Function1
            public final CharSequence invoke(KClass<?> it) {
                Intrinsics.checkNotNullParameter(it, "it");
                return KClassExtKt.getFullName(it);
            }
        }, 30, null))) + ']';
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (other != null) {
            BeanDefinition beanDefinition = (BeanDefinition) other;
            return Intrinsics.areEqual(this.primaryType, beanDefinition.primaryType) && Intrinsics.areEqual(this.qualifier, beanDefinition.qualifier) && Intrinsics.areEqual(this.scopeQualifier, beanDefinition.scopeQualifier);
        }
        throw new NullPointerException("null cannot be cast to non-null type org.koin.core.definition.BeanDefinition<*>");
    }

    public final boolean hasType(KClass<?> clazz) {
        Intrinsics.checkNotNullParameter(clazz, "clazz");
        return Intrinsics.areEqual(this.primaryType, clazz) || this.secondaryTypes.contains(clazz);
    }

    /* JADX INFO: renamed from: is */
    public final boolean m2898is(KClass<?> clazz, Qualifier qualifier, Qualifier scopeDefinition) {
        Intrinsics.checkNotNullParameter(clazz, "clazz");
        Intrinsics.checkNotNullParameter(scopeDefinition, "scopeDefinition");
        return hasType(clazz) && Intrinsics.areEqual(this.qualifier, qualifier) && Intrinsics.areEqual(this.scopeQualifier, scopeDefinition);
    }

    public final boolean canBind(KClass<?> primary, KClass<?> secondary) {
        Intrinsics.checkNotNullParameter(primary, "primary");
        Intrinsics.checkNotNullParameter(secondary, "secondary");
        return Intrinsics.areEqual(this.primaryType, primary) && this.secondaryTypes.contains(secondary);
    }

    public int hashCode() {
        Qualifier qualifier = this.qualifier;
        return ((((qualifier == null ? 0 : qualifier.hashCode()) * 31) + this.primaryType.hashCode()) * 31) + this.scopeQualifier.hashCode();
    }
}
