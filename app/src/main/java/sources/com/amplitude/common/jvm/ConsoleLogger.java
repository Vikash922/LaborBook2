package com.amplitude.common.jvm;

import com.amplitude.common.Logger;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: ConsoleLogger.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(m2721d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0007\u0018\u0000 \u00122\u00020\u0001:\u0001\u0012B\u0005¢\u0006\u0002\u0010\u0002J\u0010\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\fH\u0016J\u0010\u0010\r\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\fH\u0016J\u0010\u0010\u000e\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\fH\u0016J\u0018\u0010\u000f\u001a\u00020\n2\u0006\u0010\u0010\u001a\u00020\u00042\u0006\u0010\u000b\u001a\u00020\fH\u0002J\u0010\u0010\u0011\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\fH\u0016R\u001a\u0010\u0003\u001a\u00020\u0004X\u0096\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\b¨\u0006\u0013"}, m2722d2 = {"Lcom/amplitude/common/jvm/ConsoleLogger;", "Lcom/amplitude/common/Logger;", "()V", "logMode", "Lcom/amplitude/common/Logger$LogMode;", "getLogMode", "()Lcom/amplitude/common/Logger$LogMode;", "setLogMode", "(Lcom/amplitude/common/Logger$LogMode;)V", "debug", "", "message", "", "error", "info", "log", "logLevel", "warn", "Companion", "common-jvm"}, m2723k = 1, m2724mv = {1, 5, 1}, m2726xi = 48)
public final class ConsoleLogger implements Logger {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final ConsoleLogger logger = new ConsoleLogger();
    private Logger.LogMode logMode = Logger.LogMode.INFO;

    @Override // com.amplitude.common.Logger
    public Logger.LogMode getLogMode() {
        return this.logMode;
    }

    @Override // com.amplitude.common.Logger
    public void setLogMode(Logger.LogMode logMode) {
        Intrinsics.checkNotNullParameter(logMode, "<set-?>");
        this.logMode = logMode;
    }

    @Override // com.amplitude.common.Logger
    public void debug(String message) {
        Intrinsics.checkNotNullParameter(message, "message");
        log(Logger.LogMode.DEBUG, message);
    }

    @Override // com.amplitude.common.Logger
    public void error(String message) {
        Intrinsics.checkNotNullParameter(message, "message");
        log(Logger.LogMode.ERROR, message);
    }

    @Override // com.amplitude.common.Logger
    public void info(String message) {
        Intrinsics.checkNotNullParameter(message, "message");
        log(Logger.LogMode.INFO, message);
    }

    @Override // com.amplitude.common.Logger
    public void warn(String message) {
        Intrinsics.checkNotNullParameter(message, "message");
        log(Logger.LogMode.WARN, message);
    }

    private final void log(Logger.LogMode logLevel, String message) {
        if (getLogMode().compareTo(logLevel) <= 0) {
            System.out.println((Object) message);
        }
    }

    /* JADX INFO: compiled from: ConsoleLogger.kt */
    @Metadata(m2721d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u0011\u0010\u0003\u001a\u00020\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, m2722d2 = {"Lcom/amplitude/common/jvm/ConsoleLogger$Companion;", "", "()V", "logger", "Lcom/amplitude/common/jvm/ConsoleLogger;", "getLogger", "()Lcom/amplitude/common/jvm/ConsoleLogger;", "common-jvm"}, m2723k = 1, m2724mv = {1, 5, 1}, m2726xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final ConsoleLogger getLogger() {
            return ConsoleLogger.logger;
        }
    }
}
