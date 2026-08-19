package com.boilerplate.navigator;

import com.boilerplate.navigator.common.extensions.StackExtensionsKt;
import com.boilerplate.navigator.data.StackItem;
import com.facebook.appevents.iap.InAppPurchaseConstants;
import com.google.firebase.analytics.FirebaseAnalytics;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Stack;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
@Metadata(m2721d1 = {"\u0000@\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\n\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\r\n\u0002\u0010 \n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0010\b\u0086\b\u0018\u00002\u00020\u0001B-\u0012\u0014\b\u0002\u0010\u0002\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00050\u00040\u0003\u0012\u000e\b\u0002\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00070\u0004¢\u0006\u0004\b\b\u0010\tJ\u0013\u0010\u000e\u001a\n \u000f*\u0004\u0018\u00010\u00070\u0007¢\u0006\u0002\u0010\u0010J\u0006\u0010\u0011\u001a\u00020\u0012J\u000e\u0010\u0013\u001a\u00020\u00122\u0006\u0010\u0014\u001a\u00020\u0007J\u0016\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u00072\u0006\u0010\u0018\u001a\u00020\u0005J\u000e\u0010\u0019\u001a\u00020\u00162\u0006\u0010\u0018\u001a\u00020\u0005J\u000e\u0010\u001a\u001a\u00020\u00162\u0006\u0010\u001b\u001a\u00020\u0007J\u0006\u0010\u001c\u001a\u00020\u0016J\u000e\u0010\u001d\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u0007J\u000e\u0010\u001e\u001a\u00020\u00122\u0006\u0010\u0017\u001a\u00020\u0007J\u000e\u0010\u001f\u001a\u00020\u00122\u0006\u0010\u0017\u001a\u00020\u0007J\u0006\u0010 \u001a\u00020\u0012J\b\u0010!\u001a\u0004\u0018\u00010\u0005J\u000e\u0010\"\u001a\u00020\u00052\u0006\u0010\u0017\u001a\u00020\u0007J\f\u0010#\u001a\b\u0012\u0004\u0012\u00020\u00050$J\u000e\u0010%\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u0007J\u0014\u0010&\u001a\b\u0012\u0004\u0012\u00020\u00050$2\u0006\u0010'\u001a\u00020(J\u0014\u0010)\u001a\b\u0012\u0004\u0012\u00020\u00050$2\u0006\u0010'\u001a\u00020\u0007J\u0006\u0010*\u001a\u00020\u0012J\u000e\u0010+\u001a\u00020\u00162\u0006\u0010,\u001a\u00020\u0000J\u001b\u0010-\u001a\n \u000f*\u0004\u0018\u00010\u00050\u00052\u0006\u0010\u0017\u001a\u00020\u0007¢\u0006\u0002\u0010.J\u0006\u0010/\u001a\u00020\u0005J\u0006\u00100\u001a\u00020\u0007J\u0015\u00101\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00050\u00040\u0003HÆ\u0003J\u000f\u00102\u001a\b\u0012\u0004\u0012\u00020\u00070\u0004HÆ\u0003J/\u00103\u001a\u00020\u00002\u0014\b\u0002\u0010\u0002\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00050\u00040\u00032\u000e\b\u0002\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00070\u0004HÆ\u0001J\u0013\u00104\u001a\u00020\u00122\b\u00105\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u00106\u001a\u00020\u0007HÖ\u0001J\t\u00107\u001a\u00020(HÖ\u0001R\u001d\u0010\u0002\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00050\u00040\u0003¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000bR\u0017\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00070\u0004¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\r¨\u00068"}, m2722d2 = {"Lcom/boilerplate/navigator/FragmentStackState;", "", "fragmentTagStack", "", "Ljava/util/Stack;", "Lcom/boilerplate/navigator/data/StackItem;", "tabIndexStack", "", "<init>", "(Ljava/util/List;Ljava/util/Stack;)V", "getFragmentTagStack", "()Ljava/util/List;", "getTabIndexStack", "()Ljava/util/Stack;", "getSelectedTabIndex", "kotlin.jvm.PlatformType", "()Ljava/lang/Integer;", "isSelectedTabEmpty", "", "isTabEmpty", FirebaseAnalytics.Param.INDEX, "notifyStackItemAdd", "", FragmentStackStateMapper.MEDUSA_TAB_INDEX, "stackItem", "notifyStackItemAddToCurrentTab", "setStackCount", "size", "clear", "switchTab", "isSelectedTab", "hasOnlyRoot", "hasSelectedTabOnlyRoot", "peekItemFromSelectedTab", "popItem", "popItemsFromNonEmptyTabs", "", "insertTabToBottom", "popItems", "groupName", "", "popItemsFromTabIndex", "hasTabStack", "setStackState", "stackState", "peekItem", "(I)Lcom/boilerplate/navigator/data/StackItem;", "popItemFromSelectedTab", "popSelectedTab", "component1", "component2", "copy", "equals", "other", "hashCode", InAppPurchaseConstants.METHOD_TO_STRING, "navigator_release"}, m2723k = 1, m2724mv = {2, 0, 0}, m2726xi = 48)
public final /* data */ class FragmentStackState {
    private final List<Stack<StackItem>> fragmentTagStack;
    private final Stack<Integer> tabIndexStack;

    /* JADX WARN: Multi-variable type inference failed */
    public FragmentStackState() {
        this(null, 0 == true ? 1 : 0, 3, 0 == true ? 1 : 0);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ FragmentStackState copy$default(FragmentStackState fragmentStackState, List list, Stack stack, int i, Object obj) {
        if ((i & 1) != 0) {
            list = fragmentStackState.fragmentTagStack;
        }
        if ((i & 2) != 0) {
            stack = fragmentStackState.tabIndexStack;
        }
        return fragmentStackState.copy(list, stack);
    }

    public final void clear() {
        this.fragmentTagStack.clear();
        this.tabIndexStack.clear();
    }

    public final List<Stack<StackItem>> component1() {
        return this.fragmentTagStack;
    }

    public final Stack<Integer> component2() {
        return this.tabIndexStack;
    }

    public final FragmentStackState copy(List<Stack<StackItem>> fragmentTagStack, Stack<Integer> tabIndexStack) {
        Intrinsics.checkNotNullParameter(fragmentTagStack, "fragmentTagStack");
        Intrinsics.checkNotNullParameter(tabIndexStack, "tabIndexStack");
        return new FragmentStackState(fragmentTagStack, tabIndexStack);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof FragmentStackState)) {
            return false;
        }
        FragmentStackState fragmentStackState = (FragmentStackState) other;
        return Intrinsics.areEqual(this.fragmentTagStack, fragmentStackState.fragmentTagStack) && Intrinsics.areEqual(this.tabIndexStack, fragmentStackState.tabIndexStack);
    }

    public final List<Stack<StackItem>> getFragmentTagStack() {
        return this.fragmentTagStack;
    }

    public final Integer getSelectedTabIndex() {
        Object objM3325constructorimpl;
        try {
            Result.Companion companion = Result.INSTANCE;
            objM3325constructorimpl = Result.m3325constructorimpl(this.tabIndexStack.peek());
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            objM3325constructorimpl = Result.m3325constructorimpl(ResultKt.createFailure(th));
        }
        if (Result.m3331isFailureimpl(objM3325constructorimpl)) {
            objM3325constructorimpl = 0;
        }
        return (Integer) objM3325constructorimpl;
    }

    public final Stack<Integer> getTabIndexStack() {
        return this.tabIndexStack;
    }

    public final boolean hasOnlyRoot(int tabIndex) {
        return this.fragmentTagStack.get(tabIndex).size() <= 1;
    }

    public final boolean hasSelectedTabOnlyRoot() {
        List<Stack<StackItem>> list = this.fragmentTagStack;
        Integer selectedTabIndex = getSelectedTabIndex();
        Intrinsics.checkNotNullExpressionValue(selectedTabIndex, "getSelectedTabIndex(...)");
        return list.get(selectedTabIndex.intValue()).size() <= 1;
    }

    public final boolean hasTabStack() {
        return this.tabIndexStack.size() == 1;
    }

    public int hashCode() {
        return this.tabIndexStack.hashCode() + (this.fragmentTagStack.hashCode() * 31);
    }

    public final void insertTabToBottom(int tabIndex) {
        StackExtensionsKt.insertToBottom(this.tabIndexStack, Integer.valueOf(tabIndex));
    }

    public final boolean isSelectedTab(int tabIndex) {
        Integer selectedTabIndex = getSelectedTabIndex();
        return selectedTabIndex != null && selectedTabIndex.intValue() == tabIndex;
    }

    public final boolean isSelectedTabEmpty() {
        Integer selectedTabIndex = getSelectedTabIndex();
        Intrinsics.checkNotNullExpressionValue(selectedTabIndex, "getSelectedTabIndex(...)");
        return isTabEmpty(selectedTabIndex.intValue());
    }

    public final boolean isTabEmpty(int index) {
        return this.fragmentTagStack.get(index).isEmpty();
    }

    public final void notifyStackItemAdd(int tabIndex, StackItem stackItem) {
        Intrinsics.checkNotNullParameter(stackItem, "stackItem");
        this.fragmentTagStack.get(tabIndex).push(stackItem);
    }

    public final void notifyStackItemAddToCurrentTab(StackItem stackItem) {
        Intrinsics.checkNotNullParameter(stackItem, "stackItem");
        Integer selectedTabIndex = getSelectedTabIndex();
        Intrinsics.checkNotNullExpressionValue(selectedTabIndex, "getSelectedTabIndex(...)");
        notifyStackItemAdd(selectedTabIndex.intValue(), stackItem);
    }

    public final StackItem peekItem(int tabIndex) {
        return this.fragmentTagStack.get(tabIndex).peek();
    }

    public final StackItem peekItemFromSelectedTab() {
        Object objM3325constructorimpl;
        try {
            Result.Companion companion = Result.INSTANCE;
            List<Stack<StackItem>> list = this.fragmentTagStack;
            Integer selectedTabIndex = getSelectedTabIndex();
            Intrinsics.checkNotNullExpressionValue(selectedTabIndex, "getSelectedTabIndex(...)");
            Stack<StackItem> stack = list.get(selectedTabIndex.intValue());
            if (stack.isEmpty()) {
                stack = null;
            }
            Stack<StackItem> stack2 = stack;
            objM3325constructorimpl = Result.m3325constructorimpl(stack2 != null ? stack2.peek() : null);
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            objM3325constructorimpl = Result.m3325constructorimpl(ResultKt.createFailure(th));
        }
        return (StackItem) (Result.m3331isFailureimpl(objM3325constructorimpl) ? null : objM3325constructorimpl);
    }

    public final StackItem popItem(int tabIndex) {
        Integer selectedTabIndex;
        StackItem stackItemPop = this.fragmentTagStack.get(tabIndex).pop();
        if (isTabEmpty(tabIndex) && (selectedTabIndex = getSelectedTabIndex()) != null && tabIndex == selectedTabIndex.intValue() && this.tabIndexStack.size() > 1) {
            popSelectedTab();
        }
        Intrinsics.checkNotNull(stackItemPop);
        return stackItemPop;
    }

    public final StackItem popItemFromSelectedTab() {
        Integer selectedTabIndex = getSelectedTabIndex();
        Intrinsics.checkNotNullExpressionValue(selectedTabIndex, "getSelectedTabIndex(...)");
        return popItem(selectedTabIndex.intValue());
    }

    public final List<StackItem> popItems(String groupName) {
        Intrinsics.checkNotNullParameter(groupName, "groupName");
        Integer selectedTabIndex = getSelectedTabIndex();
        List<Stack<StackItem>> list = this.fragmentTagStack;
        Integer selectedTabIndex2 = getSelectedTabIndex();
        Intrinsics.checkNotNullExpressionValue(selectedTabIndex2, "getSelectedTabIndex(...)");
        Stack<StackItem> stack = list.get(selectedTabIndex2.intValue());
        Stack<StackItem> stack2 = new Stack<>();
        stack2.push(stack.get(0));
        ArrayList arrayList = new ArrayList();
        int size = stack.size();
        for (int i = 1; i < size; i++) {
            StackItem stackItem = stack.get(i);
            if (Intrinsics.areEqual(groupName, stackItem.getGroupName())) {
                arrayList.add(stackItem);
            } else {
                stack2.push(stackItem);
            }
        }
        if (!arrayList.isEmpty()) {
            List<Stack<StackItem>> list2 = this.fragmentTagStack;
            Intrinsics.checkNotNull(selectedTabIndex);
            list2.set(selectedTabIndex.intValue(), stack2);
        }
        return arrayList;
    }

    public final List<StackItem> popItemsFromNonEmptyTabs() {
        List<Stack<StackItem>> list = this.fragmentTagStack;
        ArrayList<Stack> arrayList = new ArrayList();
        for (Object obj : list) {
            if (!((Stack) obj).isEmpty()) {
                arrayList.add(obj);
            }
        }
        ArrayList arrayList2 = new ArrayList();
        for (Stack stack : arrayList) {
            ArrayList arrayList3 = new ArrayList(CollectionsKt.collectionSizeOrDefault(stack, 10));
            Iterator it = stack.iterator();
            while (it.hasNext()) {
                arrayList3.add((StackItem) it.next());
            }
            CollectionsKt.addAll(arrayList2, arrayList3);
        }
        this.fragmentTagStack.clear();
        return arrayList2;
    }

    public final List<StackItem> popItemsFromTabIndex(int groupName) {
        Integer selectedTabIndex = getSelectedTabIndex();
        List<Stack<StackItem>> list = this.fragmentTagStack;
        Integer selectedTabIndex2 = getSelectedTabIndex();
        Intrinsics.checkNotNullExpressionValue(selectedTabIndex2, "getSelectedTabIndex(...)");
        Stack<StackItem> stack = list.get(selectedTabIndex2.intValue());
        Stack<StackItem> stack2 = new Stack<>();
        stack2.push(stack.get(0));
        ArrayList arrayList = new ArrayList();
        int size = stack.size();
        for (int i = 1; i < size; i++) {
            StackItem stackItem = stack.get(i);
            if (groupName == stackItem.getTabGroup()) {
                arrayList.add(stackItem);
            } else {
                stack2.push(stackItem);
            }
        }
        if (!arrayList.isEmpty()) {
            List<Stack<StackItem>> list2 = this.fragmentTagStack;
            Intrinsics.checkNotNull(selectedTabIndex);
            list2.set(selectedTabIndex.intValue(), stack2);
        }
        return arrayList;
    }

    public final int popSelectedTab() {
        Integer numPop = this.tabIndexStack.pop();
        Intrinsics.checkNotNullExpressionValue(numPop, "pop(...)");
        return numPop.intValue();
    }

    public final void setStackCount(int size) {
        for (int i = 0; i < size; i++) {
            this.fragmentTagStack.add(new Stack<>());
        }
    }

    public final void setStackState(FragmentStackState stackState) {
        Intrinsics.checkNotNullParameter(stackState, "stackState");
        this.fragmentTagStack.addAll(stackState.fragmentTagStack);
        this.tabIndexStack.addAll(stackState.tabIndexStack);
    }

    public final void switchTab(int tabIndex) {
        if (this.tabIndexStack.contains(Integer.valueOf(tabIndex))) {
            StackExtensionsKt.moveToTop(this.tabIndexStack, Integer.valueOf(tabIndex));
        } else {
            this.tabIndexStack.push(Integer.valueOf(tabIndex));
        }
    }

    public String toString() {
        return "FragmentStackState(fragmentTagStack=" + this.fragmentTagStack + ", tabIndexStack=" + this.tabIndexStack + ')';
    }

    public FragmentStackState(List<Stack<StackItem>> fragmentTagStack, Stack<Integer> tabIndexStack) {
        Intrinsics.checkNotNullParameter(fragmentTagStack, "fragmentTagStack");
        Intrinsics.checkNotNullParameter(tabIndexStack, "tabIndexStack");
        this.fragmentTagStack = fragmentTagStack;
        this.tabIndexStack = tabIndexStack;
    }

    public /* synthetic */ FragmentStackState(List list, Stack stack, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? new ArrayList() : list, (i & 2) != 0 ? new Stack() : stack);
    }
}
