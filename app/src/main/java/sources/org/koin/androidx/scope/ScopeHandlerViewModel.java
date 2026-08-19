package org.koin.androidx.scope;

import androidx.lifecycle.ViewModel;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.koin.core.scope.Scope;

/* JADX INFO: compiled from: ScopeHandlerViewModel.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(m2721d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\b\u0010\t\u001a\u00020\nH\u0014R\u001c\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\b¨\u0006\u000b"}, m2722d2 = {"Lorg/koin/androidx/scope/ScopeHandlerViewModel;", "Landroidx/lifecycle/ViewModel;", "()V", "scope", "Lorg/koin/core/scope/Scope;", "getScope", "()Lorg/koin/core/scope/Scope;", "setScope", "(Lorg/koin/core/scope/Scope;)V", "onCleared", "", "koin-android_release"}, m2723k = 1, m2724mv = {1, 5, 1}, m2726xi = 48)
public final class ScopeHandlerViewModel extends ViewModel {
    private Scope scope;

    public final Scope getScope() {
        return this.scope;
    }

    public final void setScope(Scope scope) {
        this.scope = scope;
    }

    @Override // androidx.lifecycle.ViewModel
    protected void onCleared() {
        super.onCleared();
        Scope scope = this.scope;
        if (scope != null && scope.isNotClosed()) {
            scope.getLogger().debug(Intrinsics.stringPlus("Closing scope ", getScope()));
            scope.close();
        }
        this.scope = null;
    }
}
