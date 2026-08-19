package org.koin.android.scope;

import android.app.Service;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import org.koin.android.ext.android.ComponentCallbackExtKt;
import org.koin.core.component.KoinScopeComponentKt;
import org.koin.core.scope.Scope;

/* JADX INFO: compiled from: ServiceExt.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(m2721d1 = {"\u0000\u001a\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\u001a\u0016\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0004\u001a\f\u0010\u0005\u001a\u0004\u0018\u00010\u0001*\u00020\u0002\u001a\u0010\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00010\u0007*\u00020\u0002¨\u0006\b"}, m2722d2 = {"createScope", "Lorg/koin/core/scope/Scope;", "Landroid/app/Service;", "source", "", "getScopeOrNull", "serviceScope", "Lkotlin/Lazy;", "koin-android_release"}, m2723k = 2, m2724mv = {1, 5, 1}, m2726xi = 48)
public final class ServiceExtKt {
    public static final Lazy<Scope> serviceScope(final Service service) {
        Intrinsics.checkNotNullParameter(service, "<this>");
        return LazyKt.lazy(new Function0<Scope>() { // from class: org.koin.android.scope.ServiceExtKt.serviceScope.1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final Scope invoke() {
                Scope scopeOrNull = ServiceExtKt.getScopeOrNull(service);
                return scopeOrNull == null ? ServiceExtKt.createScope$default(service, null, 1, null) : scopeOrNull;
            }
        });
    }

    public static final Scope createScope(Service service, Object obj) {
        Intrinsics.checkNotNullParameter(service, "<this>");
        return ComponentCallbackExtKt.getKoin(service).createScope(KoinScopeComponentKt.getScopeId(service), KoinScopeComponentKt.getScopeName(service), obj);
    }

    public static /* synthetic */ Scope createScope$default(Service service, Object obj, int i, Object obj2) {
        if ((i & 1) != 0) {
            obj = null;
        }
        return createScope(service, obj);
    }

    public static final Scope getScopeOrNull(Service service) {
        Intrinsics.checkNotNullParameter(service, "<this>");
        return ComponentCallbackExtKt.getKoin(service).getScopeOrNull(KoinScopeComponentKt.getScopeId(service));
    }
}
