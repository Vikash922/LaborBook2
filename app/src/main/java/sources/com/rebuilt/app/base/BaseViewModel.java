package com.rebuilt.app.base;

import androidx.lifecycle.LiveData;
import androidx.lifecycle.MutableLiveData;
import androidx.lifecycle.ViewModel;
import kotlin.Metadata;

/* JADX INFO: compiled from: BaseViewModel.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(m2721d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0016\u0018\u0000*\u0004\b\u0000\u0010\u00012\u00020\u0002B\u0007¢\u0006\u0004\b\u0003\u0010\u0004J\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00028\u00000\u0006R\u001a\u0010\u0005\u001a\b\u0012\u0004\u0012\u00028\u00000\u0007X\u0084\u0004¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\t¨\u0006\n"}, m2722d2 = {"Lcom/laborbook/base/BaseViewModel;", "T", "Landroidx/lifecycle/ViewModel;", "<init>", "()V", "uiState", "Landroidx/lifecycle/LiveData;", "Landroidx/lifecycle/MutableLiveData;", "getUiState", "()Landroidx/lifecycle/MutableLiveData;", "base_release"}, m2723k = 1, m2724mv = {2, 0, 0}, m2726xi = 48)
public class BaseViewModel<T> extends ViewModel {
    private final MutableLiveData<T> uiState = new MutableLiveData<>();

    public final LiveData<T> uiState() {
        return this.uiState;
    }

    protected final MutableLiveData<T> getUiState() {
        return this.uiState;
    }
}
