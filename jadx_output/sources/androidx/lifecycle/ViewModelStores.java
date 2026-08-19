package androidx.lifecycle;

import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;

/* JADX INFO: loaded from: classes3.dex */
@Deprecated
public class ViewModelStores {
    private ViewModelStores() {
    }

    @Deprecated
    /* JADX INFO: renamed from: of */
    public static ViewModelStore m66of(FragmentActivity fragmentActivity) {
        return fragmentActivity.getViewModelStore();
    }

    @Deprecated
    /* JADX INFO: renamed from: of */
    public static ViewModelStore m65of(Fragment fragment) {
        return fragment.getViewModelStore();
    }
}
