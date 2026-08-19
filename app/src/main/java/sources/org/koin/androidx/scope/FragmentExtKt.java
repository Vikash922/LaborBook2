package org.koin.androidx.scope;

import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import org.koin.android.ext.android.ComponentCallbackExtKt;
import org.koin.core.Koin;
import org.koin.core.component.KoinScopeComponentKt;
import org.koin.core.scope.Scope;

/* JADX INFO: compiled from: FragmentExt.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(m2721d1 = {"\u0000\"\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\u001a\u0016\u0010\u0005\u001a\u00020\u0006*\u00020\u00022\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\b\u001a\n\u0010\t\u001a\u00020\n*\u00020\u0002\u001a\f\u0010\u000b\u001a\u0004\u0018\u00010\u0006*\u00020\u0002\u001a\u001e\u0010\f\u001a\u0002H\r\"\n\b\u0000\u0010\r\u0018\u0001*\u00020\u0001*\u00020\u0002H\u0086\b¢\u0006\u0002\u0010\u0004\"\u0017\u0010\u0000\u001a\u0004\u0018\u00010\u0001*\u00020\u00028F¢\u0006\u0006\u001a\u0004\b\u0003\u0010\u0004¨\u0006\u000e"}, m2722d2 = {"scopeActivity", "Lorg/koin/androidx/scope/ScopeActivity;", "Landroidx/fragment/app/Fragment;", "getScopeActivity", "(Landroidx/fragment/app/Fragment;)Lorg/koin/androidx/scope/ScopeActivity;", "createScope", "Lorg/koin/core/scope/Scope;", "source", "", "fragmentScope", "Lorg/koin/androidx/scope/LifecycleScopeDelegate;", "getScopeOrNull", "requireScopeActivity", "T", "koin-android_release"}, m2723k = 2, m2724mv = {1, 5, 1}, m2726xi = 48)
public final class FragmentExtKt {
    public static final LifecycleScopeDelegate fragmentScope(final Fragment fragment) {
        Intrinsics.checkNotNullParameter(fragment, "<this>");
        return new LifecycleScopeDelegate(fragment, null, new Function1<Koin, Scope>() { // from class: org.koin.androidx.scope.FragmentExtKt.fragmentScope.1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final Scope invoke(Koin koin) {
                Intrinsics.checkNotNullParameter(koin, "koin");
                Scope scopeCreateScope$default = Koin.createScope$default(koin, KoinScopeComponentKt.getScopeId(fragment), KoinScopeComponentKt.getScopeName(fragment), null, 4, null);
                FragmentActivity activity = fragment.getActivity();
                Scope scopeOrNull = activity == null ? null : ComponentActivityExtKt.getScopeOrNull(activity);
                if (scopeOrNull != null) {
                    scopeCreateScope$default.linkTo(scopeOrNull);
                }
                return scopeCreateScope$default;
            }
        }, 2, null);
    }

    public static final Scope createScope(Fragment fragment, Object obj) {
        Intrinsics.checkNotNullParameter(fragment, "<this>");
        return ComponentCallbackExtKt.getKoin(fragment).createScope(KoinScopeComponentKt.getScopeId(fragment), KoinScopeComponentKt.getScopeName(fragment), obj);
    }

    public static /* synthetic */ Scope createScope$default(Fragment fragment, Object obj, int i, Object obj2) {
        if ((i & 1) != 0) {
            obj = null;
        }
        return createScope(fragment, obj);
    }

    public static final Scope getScopeOrNull(Fragment fragment) {
        Intrinsics.checkNotNullParameter(fragment, "<this>");
        return ComponentCallbackExtKt.getKoin(fragment).getScopeOrNull(KoinScopeComponentKt.getScopeId(fragment));
    }

    public static final ScopeActivity getScopeActivity(Fragment fragment) {
        Intrinsics.checkNotNullParameter(fragment, "<this>");
        FragmentActivity activity = fragment.getActivity();
        if (activity instanceof ScopeActivity) {
            return (ScopeActivity) activity;
        }
        return null;
    }

    public static final /* synthetic */ ScopeActivity requireScopeActivity(Fragment fragment) {
        Intrinsics.checkNotNullParameter(fragment, "<this>");
        FragmentActivity activity = fragment.getActivity();
        Intrinsics.reifiedOperationMarker(2, "T");
        ScopeActivity scopeActivity = (ScopeActivity) activity;
        if (scopeActivity != null) {
            return scopeActivity;
        }
        Intrinsics.reifiedOperationMarker(4, "T");
        throw new IllegalStateException(Intrinsics.stringPlus("can't get ScopeActivity for class ", Reflection.getOrCreateKotlinClass(ScopeActivity.class)).toString());
    }
}
