package com.laborbook.base.navigator;

import android.os.Bundle;
import androidx.fragment.app.Fragment;
import com.boilerplate.navigator.MultipleStackNavigator;
import com.google.android.material.bottomsheet.BottomSheetDialogFragment;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: FragmentNavigator.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(m2721d1 = {"\u0000D\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0006\n\u0002\u0010\b\n\u0000\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u0018\u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\u00052\b\u0010\r\u001a\u0004\u0018\u00010\u000eJ\u0016\u0010\u000f\u001a\u00020\u000b2\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u0013J\u000e\u0010\u000f\u001a\u00020\u000b2\u0006\u0010\u0010\u001a\u00020\u0011J\u000e\u0010\u000f\u001a\u00020\u000b2\u0006\u0010\u0014\u001a\u00020\u0015J\r\u0010\u0016\u001a\u0004\u0018\u00010\u0017¢\u0006\u0002\u0010\u0018J\u0006\u0010\u0019\u001a\u00020\u000bJ\u000e\u0010\u001a\u001a\u00020\u000b2\u0006\u0010\u001b\u001a\u00020\u000eJ\u000e\u0010\u001c\u001a\u00020\u000b2\u0006\u0010\u001d\u001a\u00020\u001eR\u001a\u0010\u0004\u001a\u00020\u0005X\u0086.¢\u0006\u000e\n\u0000\u001a\u0004\b\u0006\u0010\u0007\"\u0004\b\b\u0010\t¨\u0006\u001f"}, m2722d2 = {"Lcom/laborbook/base/navigator/FragmentNavigator;", "", "<init>", "()V", "multipleStackNavigator", "Lcom/boilerplate/navigator/MultipleStackNavigator;", "getMultipleStackNavigator", "()Lcom/boilerplate/navigator/MultipleStackNavigator;", "setMultipleStackNavigator", "(Lcom/boilerplate/navigator/MultipleStackNavigator;)V", "initialize", "", "iMultipleStackNavigator", "savedState", "Landroid/os/Bundle;", "start", "fragment", "Landroidx/fragment/app/Fragment;", "groupName", "", "bottomSheetFragment", "Lcom/google/android/material/bottomsheet/BottomSheetDialogFragment;", "canGoBack", "", "()Ljava/lang/Boolean;", "goBack", "onSaveInstanceState", "outState", "switchTab", "tabPosition", "", "base_release"}, m2723k = 1, m2724mv = {2, 0, 0}, m2726xi = 48)
public final class FragmentNavigator {
    public MultipleStackNavigator multipleStackNavigator;

    public final MultipleStackNavigator getMultipleStackNavigator() {
        MultipleStackNavigator multipleStackNavigator = this.multipleStackNavigator;
        if (multipleStackNavigator != null) {
            return multipleStackNavigator;
        }
        Intrinsics.throwUninitializedPropertyAccessException("multipleStackNavigator");
        return null;
    }

    public final void setMultipleStackNavigator(MultipleStackNavigator multipleStackNavigator) {
        Intrinsics.checkNotNullParameter(multipleStackNavigator, "<set-?>");
        this.multipleStackNavigator = multipleStackNavigator;
    }

    public final void initialize(MultipleStackNavigator iMultipleStackNavigator, Bundle savedState) {
        Intrinsics.checkNotNullParameter(iMultipleStackNavigator, "iMultipleStackNavigator");
        setMultipleStackNavigator(iMultipleStackNavigator);
        MultipleStackNavigator multipleStackNavigator = getMultipleStackNavigator();
        if (multipleStackNavigator != null) {
            multipleStackNavigator.initialize(savedState);
        }
    }

    public final void start(Fragment fragment, String groupName) {
        Intrinsics.checkNotNullParameter(fragment, "fragment");
        Intrinsics.checkNotNullParameter(groupName, "groupName");
        MultipleStackNavigator multipleStackNavigator = getMultipleStackNavigator();
        if (multipleStackNavigator != null) {
            multipleStackNavigator.start(fragment, groupName);
        }
    }

    public final void start(Fragment fragment) {
        Intrinsics.checkNotNullParameter(fragment, "fragment");
        MultipleStackNavigator multipleStackNavigator = getMultipleStackNavigator();
        if (multipleStackNavigator != null) {
            multipleStackNavigator.start(fragment);
        }
    }

    public final void start(BottomSheetDialogFragment bottomSheetFragment) {
        Intrinsics.checkNotNullParameter(bottomSheetFragment, "bottomSheetFragment");
        MultipleStackNavigator multipleStackNavigator = getMultipleStackNavigator();
        if (multipleStackNavigator != null) {
            multipleStackNavigator.start(bottomSheetFragment);
        }
    }

    public final Boolean canGoBack() {
        MultipleStackNavigator multipleStackNavigator = getMultipleStackNavigator();
        if (multipleStackNavigator != null) {
            return Boolean.valueOf(multipleStackNavigator.canGoBack());
        }
        return null;
    }

    public final void goBack() {
        MultipleStackNavigator multipleStackNavigator = getMultipleStackNavigator();
        if (multipleStackNavigator != null) {
            multipleStackNavigator.goBack();
        }
    }

    public final void onSaveInstanceState(Bundle outState) {
        Intrinsics.checkNotNullParameter(outState, "outState");
        MultipleStackNavigator multipleStackNavigator = getMultipleStackNavigator();
        if (multipleStackNavigator != null) {
            multipleStackNavigator.onSaveInstanceState(outState);
        }
    }

    public final void switchTab(int tabPosition) {
        MultipleStackNavigator multipleStackNavigator = getMultipleStackNavigator();
        if (multipleStackNavigator != null) {
            multipleStackNavigator.switchTab(tabPosition);
        }
    }
}
