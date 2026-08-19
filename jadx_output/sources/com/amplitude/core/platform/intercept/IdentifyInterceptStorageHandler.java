package com.amplitude.core.platform.intercept;

import com.amplitude.common.Logger;
import com.amplitude.core.Amplitude;
import com.amplitude.core.Storage;
import com.amplitude.core.events.BaseEvent;
import com.amplitude.core.utilities.EventsFileStorage;
import com.amplitude.core.utilities.InMemoryStorage;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: IdentifyInterceptStorageHandler.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(m2721d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\bf\u0018\u0000 \u00072\u00020\u0001:\u0001\u0007J\u0011\u0010\u0002\u001a\u00020\u0003H¦@ø\u0001\u0000¢\u0006\u0002\u0010\u0004J\u0013\u0010\u0005\u001a\u0004\u0018\u00010\u0006H¦@ø\u0001\u0000¢\u0006\u0002\u0010\u0004ø\u0001\u0001\u0082\u0002\n\n\u0002\b\u0019\n\u0004\b!0\u0001¨\u0006\bÀ\u0006\u0001"}, m2722d2 = {"Lcom/amplitude/core/platform/intercept/IdentifyInterceptStorageHandler;", "", "clearIdentifyIntercepts", "", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "getTransferIdentifyEvent", "Lcom/amplitude/core/events/BaseEvent;", "Companion", "core"}, m2723k = 1, m2724mv = {1, 5, 1}, m2726xi = 48)
public interface IdentifyInterceptStorageHandler {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = Companion.$$INSTANCE;

    Object clearIdentifyIntercepts(Continuation<? super Unit> continuation);

    Object getTransferIdentifyEvent(Continuation<? super BaseEvent> continuation);

    /* JADX INFO: compiled from: IdentifyInterceptStorageHandler.kt */
    @Metadata(m2721d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J \u0010\u0003\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\n¨\u0006\u000b"}, m2722d2 = {"Lcom/amplitude/core/platform/intercept/IdentifyInterceptStorageHandler$Companion;", "", "()V", "getIdentifyInterceptStorageHandler", "Lcom/amplitude/core/platform/intercept/IdentifyInterceptStorageHandler;", "storage", "Lcom/amplitude/core/Storage;", "logger", "Lcom/amplitude/common/Logger;", "amplitude", "Lcom/amplitude/core/Amplitude;", "core"}, m2723k = 1, m2724mv = {1, 5, 1}, m2726xi = 48)
    public static final class Companion {
        static final /* synthetic */ Companion $$INSTANCE = new Companion();

        private Companion() {
        }

        public final IdentifyInterceptStorageHandler getIdentifyInterceptStorageHandler(Storage storage, Logger logger, Amplitude amplitude) {
            Intrinsics.checkNotNullParameter(storage, "storage");
            Intrinsics.checkNotNullParameter(logger, "logger");
            Intrinsics.checkNotNullParameter(amplitude, "amplitude");
            if (storage instanceof EventsFileStorage) {
                return new IdentifyInterceptFileStorageHandler((EventsFileStorage) storage, logger, amplitude);
            }
            if (storage instanceof InMemoryStorage) {
                return new IdentifyInterceptInMemoryStorageHandler((InMemoryStorage) storage);
            }
            logger.warn("Custom storage, identify intercept not started");
            return null;
        }
    }
}
