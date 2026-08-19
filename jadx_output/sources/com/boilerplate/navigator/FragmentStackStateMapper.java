package com.boilerplate.navigator;

import android.os.Bundle;
import android.os.Parcelable;
import com.boilerplate.navigator.data.StackItem;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Stack;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
@Metadata(m2721d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0007\u0018\u0000 \u00162\u00020\u0001:\u0001\u0016B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u000e\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007J&\u0010\b\u001a\f\u0012\u0006\b\u0001\u0012\u00020\n\u0018\u00010\t2\u0012\u0010\u000b\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u000e0\r0\fH\u0002J\u001c\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\u00100\t2\f\u0010\u0011\u001a\b\u0012\u0004\u0012\u00020\u00100\rH\u0002J\u0010\u0010\u0012\u001a\u00020\u00072\b\u0010\u0013\u001a\u0004\u0018\u00010\u0005J\u0016\u0010\u0014\u001a\b\u0012\u0004\u0012\u00020\u00100\r2\u0006\u0010\u0013\u001a\u00020\u0005H\u0002J\u001c\u0010\u0015\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u000e0\r0\f2\u0006\u0010\u0013\u001a\u00020\u0005H\u0002¨\u0006\u0017"}, m2722d2 = {"Lcom/boilerplate/navigator/FragmentStackStateMapper;", "", "<init>", "()V", "toBundle", "Landroid/os/Bundle;", "fragmentStackState", "Lcom/boilerplate/navigator/FragmentStackState;", "convertTagStackToArrayListOfParcelables", "Ljava/util/ArrayList;", "Landroid/os/Parcelable;", "fragmentTagStack", "", "Ljava/util/Stack;", "Lcom/boilerplate/navigator/data/StackItem;", "convertTabIndexToArrayListOfParcelables", "", "tabIndexStack", "fromBundle", "bundle", "getTabIndexStack", "getTagStack", "Companion", "navigator_release"}, m2723k = 1, m2724mv = {2, 0, 0}, m2726xi = 48)
public final class FragmentStackStateMapper {
    public static final String MEDUSA_STACK = "stack";
    public static final String MEDUSA_STACK_ITEMS = "stackItems";
    public static final String MEDUSA_TAB_INDEX = "tabIndex";

    private final ArrayList<Integer> convertTabIndexToArrayListOfParcelables(Stack<Integer> tabIndexStack) {
        ArrayList<Integer> arrayList = new ArrayList<>();
        Iterator<T> it = tabIndexStack.iterator();
        while (it.hasNext()) {
            arrayList.add((Integer) it.next());
        }
        return arrayList;
    }

    private final ArrayList<? extends Parcelable> convertTagStackToArrayListOfParcelables(List<Stack<StackItem>> fragmentTagStack) {
        ArrayList<? extends Parcelable> arrayList = new ArrayList<>();
        Iterator<T> it = fragmentTagStack.iterator();
        while (it.hasNext()) {
            Stack stack = (Stack) it.next();
            Bundle bundle = new Bundle();
            ArrayList<? extends Parcelable> arrayList2 = new ArrayList<>();
            Iterator it2 = stack.iterator();
            while (it2.hasNext()) {
                arrayList2.add((StackItem) it2.next());
            }
            bundle.putParcelableArrayList(MEDUSA_STACK_ITEMS, arrayList2);
            arrayList.add(bundle);
        }
        return arrayList;
    }

    private final Stack<Integer> getTabIndexStack(Bundle bundle) {
        Stack<Integer> stack;
        ArrayList<Integer> integerArrayList = bundle.getIntegerArrayList(MEDUSA_TAB_INDEX);
        if (integerArrayList != null) {
            stack = new Stack<>();
            Iterator<T> it = integerArrayList.iterator();
            while (it.hasNext()) {
                stack.add((Integer) it.next());
            }
        } else {
            stack = new Stack<>();
        }
        return stack;
    }

    private final List<Stack<StackItem>> getTagStack(Bundle bundle) {
        ArrayList arrayList;
        Stack stack;
        ArrayList parcelableArrayList = bundle.getParcelableArrayList(MEDUSA_STACK);
        if (parcelableArrayList != null) {
            arrayList = new ArrayList();
            Iterator it = parcelableArrayList.iterator();
            while (it.hasNext()) {
                ArrayList parcelableArrayList2 = ((Bundle) it.next()).getParcelableArrayList(MEDUSA_STACK_ITEMS);
                if (parcelableArrayList2 != null) {
                    stack = new Stack();
                    Iterator it2 = parcelableArrayList2.iterator();
                    while (it2.hasNext()) {
                        stack.add((StackItem) it2.next());
                    }
                } else {
                    stack = null;
                }
                if (stack != null) {
                    arrayList.add(stack);
                }
            }
        } else {
            arrayList = new ArrayList();
        }
        return arrayList;
    }

    public final FragmentStackState fromBundle(Bundle bundle) {
        if (bundle == null) {
            return new FragmentStackState(null, null, 3, null);
        }
        return new FragmentStackState(getTagStack(bundle), getTabIndexStack(bundle));
    }

    public final Bundle toBundle(FragmentStackState fragmentStackState) {
        Intrinsics.checkNotNullParameter(fragmentStackState, "fragmentStackState");
        Bundle bundle = new Bundle();
        bundle.putParcelableArrayList(MEDUSA_STACK, convertTagStackToArrayListOfParcelables(fragmentStackState.getFragmentTagStack()));
        bundle.putIntegerArrayList(MEDUSA_TAB_INDEX, convertTabIndexToArrayListOfParcelables(fragmentStackState.getTabIndexStack()));
        return bundle;
    }
}
