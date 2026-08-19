package org.koin.androidx.viewmodel;

import androidx.lifecycle.ViewModelStore;
import androidx.lifecycle.ViewModelStoreOwner;
import androidx.savedstate.SavedStateRegistryOwner;
import com.amplitude.android.migration.DatabaseConstants;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: ViewModelOwner.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(m2721d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\u0018\u0000 \u000b2\u00020\u0001:\u0001\u000bB\u0019\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\u0002\u0010\u0006R\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\bR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\n¨\u0006\f"}, m2722d2 = {"Lorg/koin/androidx/viewmodel/ViewModelOwner;", "", DatabaseConstants.STORE_TABLE_NAME, "Landroidx/lifecycle/ViewModelStore;", "stateRegistry", "Landroidx/savedstate/SavedStateRegistryOwner;", "(Landroidx/lifecycle/ViewModelStore;Landroidx/savedstate/SavedStateRegistryOwner;)V", "getStateRegistry", "()Landroidx/savedstate/SavedStateRegistryOwner;", "getStore", "()Landroidx/lifecycle/ViewModelStore;", "Companion", "koin-android_release"}, m2723k = 1, m2724mv = {1, 5, 1}, m2726xi = 48)
public final class ViewModelOwner {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private final SavedStateRegistryOwner stateRegistry;
    private final ViewModelStore store;

    public ViewModelOwner(ViewModelStore store, SavedStateRegistryOwner savedStateRegistryOwner) {
        Intrinsics.checkNotNullParameter(store, "store");
        this.store = store;
        this.stateRegistry = savedStateRegistryOwner;
    }

    public /* synthetic */ ViewModelOwner(ViewModelStore viewModelStore, SavedStateRegistryOwner savedStateRegistryOwner, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(viewModelStore, (i & 2) != 0 ? null : savedStateRegistryOwner);
    }

    public final ViewModelStore getStore() {
        return this.store;
    }

    public final SavedStateRegistryOwner getStateRegistry() {
        return this.stateRegistry;
    }

    /* JADX INFO: compiled from: ViewModelOwner.kt */
    @Metadata(m2721d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u000e\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006J\u001a\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\bJ\u000e\u0010\t\u001a\u00020\u00042\u0006\u0010\n\u001a\u00020\u0001¨\u0006\u000b"}, m2722d2 = {"Lorg/koin/androidx/viewmodel/ViewModelOwner$Companion;", "", "()V", "from", "Lorg/koin/androidx/viewmodel/ViewModelOwner;", "storeOwner", "Landroidx/lifecycle/ViewModelStoreOwner;", "stateRegistry", "Landroidx/savedstate/SavedStateRegistryOwner;", "fromAny", "owner", "koin-android_release"}, m2723k = 1, m2724mv = {1, 5, 1}, m2726xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public static /* synthetic */ ViewModelOwner from$default(Companion companion, ViewModelStoreOwner viewModelStoreOwner, SavedStateRegistryOwner savedStateRegistryOwner, int i, Object obj) {
            if ((i & 2) != 0) {
                savedStateRegistryOwner = null;
            }
            return companion.from(viewModelStoreOwner, savedStateRegistryOwner);
        }

        public final ViewModelOwner from(ViewModelStoreOwner storeOwner, SavedStateRegistryOwner stateRegistry) {
            Intrinsics.checkNotNullParameter(storeOwner, "storeOwner");
            ViewModelStore viewModelStore = storeOwner.getViewModelStore();
            Intrinsics.checkNotNullExpressionValue(viewModelStore, "storeOwner.viewModelStore");
            return new ViewModelOwner(viewModelStore, stateRegistry);
        }

        /* JADX WARN: Multi-variable type inference failed */
        public final ViewModelOwner from(ViewModelStoreOwner storeOwner) {
            Intrinsics.checkNotNullParameter(storeOwner, "storeOwner");
            ViewModelStore viewModelStore = storeOwner.getViewModelStore();
            Intrinsics.checkNotNullExpressionValue(viewModelStore, "storeOwner.viewModelStore");
            return new ViewModelOwner(viewModelStore, null, 2, 0 == true ? 1 : 0);
        }

        public final ViewModelOwner fromAny(Object owner) {
            Intrinsics.checkNotNullParameter(owner, "owner");
            ViewModelStore viewModelStore = ((ViewModelStoreOwner) owner).getViewModelStore();
            Intrinsics.checkNotNullExpressionValue(viewModelStore, "owner as ViewModelStoreOwner).viewModelStore");
            return new ViewModelOwner(viewModelStore, owner instanceof SavedStateRegistryOwner ? (SavedStateRegistryOwner) owner : null);
        }
    }
}
