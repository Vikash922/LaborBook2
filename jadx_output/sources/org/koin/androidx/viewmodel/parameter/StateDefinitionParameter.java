package org.koin.androidx.viewmodel.parameter;

import androidx.lifecycle.SavedStateHandle;
import com.facebook.internal.NativeProtocol;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KClass;
import org.koin.core.parameter.DefinitionParameters;

/* JADX INFO: compiled from: StateDefinitionParameter.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(m2721d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010!\n\u0002\u0010\u0000\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u0000 \u000f2\u00020\u0001:\u0001\u000fB\u001f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0010\b\u0002\u0010\u0004\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00060\u0005¢\u0006\u0002\u0010\u0007J!\u0010\n\u001a\u0004\u0018\u0001H\u000b\"\u0004\b\u0000\u0010\u000b2\n\u0010\f\u001a\u0006\u0012\u0002\b\u00030\rH\u0016¢\u0006\u0002\u0010\u000eR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\t¨\u0006\u0010"}, m2722d2 = {"Lorg/koin/androidx/viewmodel/parameter/StateDefinitionParameter;", "Lorg/koin/core/parameter/DefinitionParameters;", "state", "Landroidx/lifecycle/SavedStateHandle;", "values", "", "", "(Landroidx/lifecycle/SavedStateHandle;Ljava/util/List;)V", "getState", "()Landroidx/lifecycle/SavedStateHandle;", "getOrNull", "T", "clazz", "Lkotlin/reflect/KClass;", "(Lkotlin/reflect/KClass;)Ljava/lang/Object;", "Companion", "koin-android_release"}, m2723k = 1, m2724mv = {1, 5, 1}, m2726xi = 48)
public final class StateDefinitionParameter extends DefinitionParameters {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private final SavedStateHandle state;

    public /* synthetic */ StateDefinitionParameter(SavedStateHandle savedStateHandle, ArrayList arrayList, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(savedStateHandle, (i & 2) != 0 ? new ArrayList() : arrayList);
    }

    public final SavedStateHandle getState() {
        return this.state;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public StateDefinitionParameter(SavedStateHandle state, List<Object> values) {
        super(values);
        Intrinsics.checkNotNullParameter(state, "state");
        Intrinsics.checkNotNullParameter(values, "values");
        this.state = state;
    }

    @Override // org.koin.core.parameter.DefinitionParameters
    public <T> T getOrNull(KClass<?> clazz) {
        Intrinsics.checkNotNullParameter(clazz, "clazz");
        if (Intrinsics.areEqual(clazz, Reflection.getOrCreateKotlinClass(SavedStateHandle.class))) {
            return (T) this.state;
        }
        return (T) super.getOrNull(clazz);
    }

    /* JADX INFO: compiled from: StateDefinitionParameter.kt */
    @Metadata(m2721d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0016\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\b¨\u0006\t"}, m2722d2 = {"Lorg/koin/androidx/viewmodel/parameter/StateDefinitionParameter$Companion;", "", "()V", "from", "Lorg/koin/androidx/viewmodel/parameter/StateDefinitionParameter;", "state", "Landroidx/lifecycle/SavedStateHandle;", NativeProtocol.WEB_DIALOG_PARAMS, "Lorg/koin/core/parameter/DefinitionParameters;", "koin-android_release"}, m2723k = 1, m2724mv = {1, 5, 1}, m2726xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final StateDefinitionParameter from(SavedStateHandle state, DefinitionParameters params) {
            Intrinsics.checkNotNullParameter(state, "state");
            Intrinsics.checkNotNullParameter(params, "params");
            return new StateDefinitionParameter(state, CollectionsKt.toMutableList((Collection) params.getValues()));
        }
    }
}
