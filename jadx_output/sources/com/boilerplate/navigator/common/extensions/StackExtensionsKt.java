package com.boilerplate.navigator.common.extensions;

import java.util.Stack;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(m2721d1 = {"\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\u001a%\u0010\u0000\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u0002*\b\u0012\u0004\u0012\u0002H\u00020\u00032\u0006\u0010\u0004\u001a\u0002H\u0002H\u0000¢\u0006\u0002\u0010\u0005\u001a%\u0010\u0006\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u0002*\b\u0012\u0004\u0012\u0002H\u00020\u00032\u0006\u0010\u0004\u001a\u0002H\u0002H\u0000¢\u0006\u0002\u0010\u0005¨\u0006\u0007"}, m2722d2 = {"moveToTop", "", "T", "Ljava/util/Stack;", "data", "(Ljava/util/Stack;Ljava/lang/Object;)V", "insertToBottom", "navigator_release"}, m2723k = 2, m2724mv = {2, 0, 0}, m2726xi = 48)
public final class StackExtensionsKt {
    public static final <T> void insertToBottom(Stack<T> stack, T t) {
        Intrinsics.checkNotNullParameter(stack, "<this>");
        stack.insertElementAt(t, 0);
    }

    public static final <T> void moveToTop(Stack<T> stack, T t) {
        Intrinsics.checkNotNullParameter(stack, "<this>");
        if (stack.contains(t)) {
            stack.remove(t);
            stack.push(t);
        }
    }
}
