package org.koin.androidx.viewmodel.factory;

import androidx.lifecycle.AbstractSavedStateViewModelFactory;
import androidx.lifecycle.SavedStateHandle;
import androidx.lifecycle.ViewModel;
import androidx.savedstate.SavedStateRegistryOwner;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import org.koin.androidx.viewmodel.ViewModelParameter;
import org.koin.androidx.viewmodel.parameter.StateDefinitionParameter;
import org.koin.core.parameter.DefinitionParameters;
import org.koin.core.scope.Scope;

/* JADX INFO: compiled from: StateViewModelFactory.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(m2721d1 = {"\u00002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u0000*\b\b\u0000\u0010\u0001*\u00020\u00022\u00020\u0003B\u001b\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00028\u00000\u0007¢\u0006\u0002\u0010\bJ5\u0010\r\u001a\u0002H\u0001\"\b\b\u0001\u0010\u0001*\u00020\u00022\u0006\u0010\u000e\u001a\u00020\u000f2\f\u0010\u0010\u001a\b\u0012\u0004\u0012\u0002H\u00010\u00112\u0006\u0010\u0012\u001a\u00020\u0013H\u0014¢\u0006\u0002\u0010\u0014R\u0017\u0010\u0006\u001a\b\u0012\u0004\u0012\u00028\u00000\u0007¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\nR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\f¨\u0006\u0015"}, m2722d2 = {"Lorg/koin/androidx/viewmodel/factory/StateViewModelFactory;", "T", "Landroidx/lifecycle/ViewModel;", "Landroidx/lifecycle/AbstractSavedStateViewModelFactory;", "scope", "Lorg/koin/core/scope/Scope;", "parameters", "Lorg/koin/androidx/viewmodel/ViewModelParameter;", "(Lorg/koin/core/scope/Scope;Lorg/koin/androidx/viewmodel/ViewModelParameter;)V", "getParameters", "()Lorg/koin/androidx/viewmodel/ViewModelParameter;", "getScope", "()Lorg/koin/core/scope/Scope;", "create", "key", "", "modelClass", "Ljava/lang/Class;", "handle", "Landroidx/lifecycle/SavedStateHandle;", "(Ljava/lang/String;Ljava/lang/Class;Landroidx/lifecycle/SavedStateHandle;)Landroidx/lifecycle/ViewModel;", "koin-android_release"}, m2723k = 1, m2724mv = {1, 5, 1}, m2726xi = 48)
public final class StateViewModelFactory<T extends ViewModel> extends AbstractSavedStateViewModelFactory {
    private final ViewModelParameter<T> parameters;
    private final Scope scope;

    public final Scope getScope() {
        return this.scope;
    }

    public final ViewModelParameter<T> getParameters() {
        return this.parameters;
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public StateViewModelFactory(Scope scope, ViewModelParameter<T> parameters) {
        Intrinsics.checkNotNullParameter(scope, "scope");
        Intrinsics.checkNotNullParameter(parameters, "parameters");
        SavedStateRegistryOwner registryOwner = parameters.getRegistryOwner();
        if (registryOwner != null) {
            super(registryOwner, parameters.getInitialState());
            this.scope = scope;
            this.parameters = parameters;
            return;
        }
        throw new IllegalStateException("Can't create SavedStateViewModelFactory without a proper stateRegistryOwner".toString());
    }

    @Override // androidx.lifecycle.AbstractSavedStateViewModelFactory
    protected <T extends ViewModel> T create(String key, Class<T> modelClass, final SavedStateHandle handle) {
        Intrinsics.checkNotNullParameter(key, "key");
        Intrinsics.checkNotNullParameter(modelClass, "modelClass");
        Intrinsics.checkNotNullParameter(handle, "handle");
        return (T) this.scope.get(this.parameters.getClazz(), this.parameters.getQualifier(), new Function0<DefinitionParameters>(this) { // from class: org.koin.androidx.viewmodel.factory.StateViewModelFactory.create.1
            final /* synthetic */ StateViewModelFactory<T> this$0;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
                this.this$0 = this;
            }

            @Override // kotlin.jvm.functions.Function0
            public final DefinitionParameters invoke() {
                Function0<DefinitionParameters> parameters = this.this$0.getParameters().getParameters();
                DefinitionParameters definitionParametersInvoke = parameters == null ? null : parameters.invoke();
                if (definitionParametersInvoke == null) {
                    definitionParametersInvoke = new DefinitionParameters(null, 1, null);
                }
                return StateDefinitionParameter.INSTANCE.from(handle, definitionParametersInvoke);
            }
        });
    }
}
