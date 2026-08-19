package com.amplitude.core.platform.intercept;

import com.amplitude.core.events.BaseEvent;
import com.amplitude.core.events.IdentifyOperation;
import com.amplitude.core.utilities.InMemoryStorage;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.TypeIntrinsics;

/* JADX INFO: compiled from: IdentifyInterceptInMemoryStorageHandler.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(m2721d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u0011\u0010\u0005\u001a\u00020\u0006H\u0096@ø\u0001\u0000¢\u0006\u0002\u0010\u0007J\u0013\u0010\b\u001a\u0004\u0018\u00010\tH\u0096@ø\u0001\u0000¢\u0006\u0002\u0010\u0007R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\n"}, m2722d2 = {"Lcom/amplitude/core/platform/intercept/IdentifyInterceptInMemoryStorageHandler;", "Lcom/amplitude/core/platform/intercept/IdentifyInterceptStorageHandler;", "storage", "Lcom/amplitude/core/utilities/InMemoryStorage;", "(Lcom/amplitude/core/utilities/InMemoryStorage;)V", "clearIdentifyIntercepts", "", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "getTransferIdentifyEvent", "Lcom/amplitude/core/events/BaseEvent;", "core"}, m2723k = 1, m2724mv = {1, 5, 1}, m2726xi = 48)
public final class IdentifyInterceptInMemoryStorageHandler implements IdentifyInterceptStorageHandler {
    private final InMemoryStorage storage;

    public IdentifyInterceptInMemoryStorageHandler(InMemoryStorage storage) {
        Intrinsics.checkNotNullParameter(storage, "storage");
        this.storage = storage;
    }

    @Override // com.amplitude.core.platform.intercept.IdentifyInterceptStorageHandler
    public Object getTransferIdentifyEvent(Continuation<? super BaseEvent> continuation) {
        List<Object> eventsContent = this.storage.readEventsContent();
        if (eventsContent.isEmpty() || ((List) eventsContent.get(0)).isEmpty()) {
            return null;
        }
        List list = (List) eventsContent.get(0);
        BaseEvent baseEvent = (BaseEvent) list.get(0);
        IdentifyInterceptorUtil identifyInterceptorUtil = IdentifyInterceptorUtil.INSTANCE;
        Map<String, Object> userProperties = baseEvent.getUserProperties();
        Intrinsics.checkNotNull(userProperties);
        Object obj = userProperties.get(IdentifyOperation.SET.getOperationType());
        if (obj == null) {
            throw new NullPointerException("null cannot be cast to non-null type kotlin.collections.MutableMap<kotlin.String, kotlin.Any?>");
        }
        Map<String, Object> mapFilterNonNullValues = identifyInterceptorUtil.filterNonNullValues(TypeIntrinsics.asMutableMap(obj));
        mapFilterNonNullValues.putAll(IdentifyInterceptorUtil.INSTANCE.mergeIdentifyList(list.subList(1, list.size())));
        Map<String, Object> userProperties2 = baseEvent.getUserProperties();
        Intrinsics.checkNotNull(userProperties2);
        userProperties2.put(IdentifyOperation.SET.getOperationType(), mapFilterNonNullValues);
        return baseEvent;
    }

    @Override // com.amplitude.core.platform.intercept.IdentifyInterceptStorageHandler
    public Object clearIdentifyIntercepts(Continuation<? super Unit> continuation) {
        this.storage.removeEvents();
        return Unit.INSTANCE;
    }
}
