package org.koin.core.logger;

import java.util.Arrays;
import kotlin.Metadata;

/* JADX INFO: compiled from: Logger.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(m2721d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0006\b\u0086\u0001\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002j\u0002\b\u0003j\u0002\b\u0004j\u0002\b\u0005j\u0002\b\u0006¨\u0006\u0007"}, m2722d2 = {"Lorg/koin/core/logger/Level;", "", "(Ljava/lang/String;I)V", "DEBUG", "INFO", "ERROR", "NONE", "koin-core"}, m2723k = 1, m2724mv = {1, 5, 1}, m2726xi = 48)
public enum Level {
    DEBUG,
    INFO,
    ERROR,
    NONE;

    /* JADX INFO: renamed from: values, reason: to resolve conflict with enum method */
    public static Level[] valuesCustom() {
        Level[] levelArrValuesCustom = values();
        return (Level[]) Arrays.copyOf(levelArrValuesCustom, levelArrValuesCustom.length);
    }
}
