package com.boilerplate.network.utils;

import java.util.Collection;
import java.util.Iterator;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KProperty1;
import kotlin.reflect.full.KClasses;

/* JADX INFO: loaded from: classes.dex */
@Metadata(m2721d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0005\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J%\u0010\u0004\u001a\u00020\u0005\"\b\b\u0000\u0010\u0006*\u00020\u00012\u0006\u0010\u0007\u001a\u0002H\u00062\u0006\u0010\b\u001a\u0002H\u0006¢\u0006\u0002\u0010\t¨\u0006\n"}, m2722d2 = {"Lcom/boilerplate/network/utils/NetworkUtils;", "", "<init>", "()V", "deepEquals", "", "T", "obj1", "obj2", "(Ljava/lang/Object;Ljava/lang/Object;)Z", "network_release"}, m2723k = 1, m2724mv = {2, 0, 0}, m2726xi = 48)
public final class NetworkUtils {
    public static final NetworkUtils INSTANCE = new NetworkUtils();

    private NetworkUtils() {
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final <T> boolean deepEquals(T obj1, T obj2) {
        T next;
        Intrinsics.checkNotNullParameter(obj1, "obj1");
        Intrinsics.checkNotNullParameter(obj2, "obj2");
        try {
            Result.Companion companion = Result.INSTANCE;
            if (!Intrinsics.areEqual(obj1, obj2)) {
                return false;
            }
            Collection<KProperty1> declaredMemberProperties = KClasses.getDeclaredMemberProperties(Reflection.getOrCreateKotlinClass(obj1.getClass()));
            Collection declaredMemberProperties2 = KClasses.getDeclaredMemberProperties(Reflection.getOrCreateKotlinClass(obj2.getClass()));
            if (declaredMemberProperties.size() != declaredMemberProperties2.size()) {
                return false;
            }
            for (KProperty1 kProperty1 : declaredMemberProperties) {
                Iterator<T> it = declaredMemberProperties2.iterator();
                while (true) {
                    if (!it.hasNext()) {
                        next = null;
                        break;
                    }
                    next = it.next();
                    if (Intrinsics.areEqual(((KProperty1) next).getName(), kProperty1.getName())) {
                        break;
                    }
                }
                KProperty1 kProperty12 = (KProperty1) next;
                if (kProperty12 == null) {
                    return false;
                }
                KProperty1 kProperty13 = kProperty1 instanceof KProperty1 ? kProperty1 : null;
                Object obj = kProperty13 != null ? kProperty13.get(obj1) : null;
                Object obj3 = kProperty12.get(obj2);
                if (!Intrinsics.areEqual(kProperty1.getName(), "primaryKey") && !Intrinsics.areEqual(kProperty1.getName(), "playlistId")) {
                    if (!Intrinsics.areEqual(obj, obj3)) {
                        return false;
                    }
                    if (obj != null && !kProperty1.getReturnType().isMarkedNullable()) {
                        NetworkUtils networkUtils = INSTANCE;
                        Intrinsics.checkNotNull(obj3, "null cannot be cast to non-null type kotlin.Any");
                        if (!networkUtils.deepEquals(obj, obj3)) {
                            return false;
                        }
                    }
                }
            }
            return true;
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            Result.m3325constructorimpl(ResultKt.createFailure(th));
            return false;
        }
    }
}
