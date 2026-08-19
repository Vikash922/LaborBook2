package org.koin.androidx.scope;

import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.LifecycleObserver;
import androidx.lifecycle.LifecycleOwner;
import androidx.lifecycle.OnLifecycleEvent;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.properties.ReadOnlyProperty;
import kotlin.reflect.KProperty;
import org.koin.core.Koin;
import org.koin.core.component.KoinScopeComponentKt;
import org.koin.core.context.GlobalContext;
import org.koin.core.context.KoinContext;
import org.koin.core.logger.Logger;
import org.koin.core.scope.Scope;

/* JADX INFO: compiled from: LifecycleScopeDelegate.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(m2721d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B-\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0006\u0012\u0014\b\u0002\u0010\u0007\u001a\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\u00030\b¢\u0006\u0002\u0010\nJ\u001d\u0010\u000e\u001a\u00020\u00032\u0006\u0010\u000f\u001a\u00020\u00022\n\u0010\u0010\u001a\u0006\u0012\u0002\b\u00030\u0011H\u0096\u0002R\u0010\u0010\u000b\u001a\u0004\u0018\u00010\u0003X\u0082\u000e¢\u0006\u0002\n\u0000R\u0011\u0010\u0004\u001a\u00020\u0002¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\r¨\u0006\u0012"}, m2722d2 = {"Lorg/koin/androidx/scope/LifecycleScopeDelegate;", "Lkotlin/properties/ReadOnlyProperty;", "Landroidx/lifecycle/LifecycleOwner;", "Lorg/koin/core/scope/Scope;", "lifecycleOwner", "koinContext", "Lorg/koin/core/context/KoinContext;", "createScope", "Lkotlin/Function1;", "Lorg/koin/core/Koin;", "(Landroidx/lifecycle/LifecycleOwner;Lorg/koin/core/context/KoinContext;Lkotlin/jvm/functions/Function1;)V", "_scope", "getLifecycleOwner", "()Landroidx/lifecycle/LifecycleOwner;", "getValue", "thisRef", "property", "Lkotlin/reflect/KProperty;", "koin-android_release"}, m2723k = 1, m2724mv = {1, 5, 1}, m2726xi = 48)
public final class LifecycleScopeDelegate implements ReadOnlyProperty<LifecycleOwner, Scope> {
    private Scope _scope;
    private final LifecycleOwner lifecycleOwner;

    public LifecycleScopeDelegate(LifecycleOwner lifecycleOwner, KoinContext koinContext, Function1<? super Koin, Scope> createScope) {
        Intrinsics.checkNotNullParameter(lifecycleOwner, "lifecycleOwner");
        Intrinsics.checkNotNullParameter(koinContext, "koinContext");
        Intrinsics.checkNotNullParameter(createScope, "createScope");
        this.lifecycleOwner = lifecycleOwner;
        Koin koin = koinContext.get();
        final Logger logger = koin.getLogger();
        logger.debug("setup scope: " + this._scope + " for " + lifecycleOwner);
        Scope scopeOrNull = koin.getScopeOrNull(KoinScopeComponentKt.getScopeId(lifecycleOwner));
        this._scope = scopeOrNull == null ? createScope.invoke(koin) : scopeOrNull;
        logger.debug("got scope: " + this._scope + " for " + lifecycleOwner);
        lifecycleOwner.getLifecycle().addObserver(new LifecycleObserver() { // from class: org.koin.androidx.scope.LifecycleScopeDelegate.2
            @OnLifecycleEvent(Lifecycle.Event.ON_DESTROY)
            public final void onDestroy(LifecycleOwner owner) {
                Scope scope;
                Intrinsics.checkNotNullParameter(owner, "owner");
                logger.debug("Closing scope: " + this._scope + " for " + this.getLifecycleOwner());
                Scope scope2 = this._scope;
                if (Intrinsics.areEqual((Object) (scope2 == null ? null : Boolean.valueOf(scope2.get_closed())), (Object) false) && (scope = this._scope) != null) {
                    scope.close();
                }
                this._scope = null;
            }
        });
    }

    @Override // kotlin.properties.ReadOnlyProperty
    public /* bridge */ /* synthetic */ Scope getValue(LifecycleOwner lifecycleOwner, KProperty kProperty) {
        return getValue2(lifecycleOwner, (KProperty<?>) kProperty);
    }

    public final LifecycleOwner getLifecycleOwner() {
        return this.lifecycleOwner;
    }

    public /* synthetic */ LifecycleScopeDelegate(final LifecycleOwner lifecycleOwner, GlobalContext globalContext, Function1 function1, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(lifecycleOwner, (i & 2) != 0 ? GlobalContext.INSTANCE : globalContext, (i & 4) != 0 ? new Function1<Koin, Scope>() { // from class: org.koin.androidx.scope.LifecycleScopeDelegate.1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final Scope invoke(Koin koin) {
                Intrinsics.checkNotNullParameter(koin, "koin");
                return Koin.createScope$default(koin, KoinScopeComponentKt.getScopeId(lifecycleOwner), KoinScopeComponentKt.getScopeName(lifecycleOwner), null, 4, null);
            }
        } : function1);
    }

    /* JADX INFO: renamed from: getValue, reason: avoid collision after fix types in other method */
    public Scope getValue2(LifecycleOwner thisRef, KProperty<?> property) {
        Intrinsics.checkNotNullParameter(thisRef, "thisRef");
        Intrinsics.checkNotNullParameter(property, "property");
        Scope scope = this._scope;
        if (scope != null) {
            return scope;
        }
        throw new IllegalStateException(Intrinsics.stringPlus("can't get Scope for ", this.lifecycleOwner).toString());
    }
}
