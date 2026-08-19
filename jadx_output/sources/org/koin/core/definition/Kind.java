package org.koin.core.definition;

import java.util.Arrays;
import kotlin.Metadata;

/* JADX INFO: compiled from: BeanDefinition.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(m2721d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0004\b\u0086\u0001\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002j\u0002\b\u0003j\u0002\b\u0004¨\u0006\u0005"}, m2722d2 = {"Lorg/koin/core/definition/Kind;", "", "(Ljava/lang/String;I)V", "Single", "Factory", "koin-core"}, m2723k = 1, m2724mv = {1, 5, 1}, m2726xi = 48)
public enum Kind {
    Single,
    Factory;

    /* JADX INFO: renamed from: values, reason: to resolve conflict with enum method */
    public static Kind[] valuesCustom() {
        Kind[] kindArrValuesCustom = values();
        return (Kind[]) Arrays.copyOf(kindArrValuesCustom, kindArrValuesCustom.length);
    }
}
