package com.amplitude.core.utilities;

import com.amplitude.core.Configuration;
import com.amplitude.core.Storage;
import com.amplitude.core.events.BaseEvent;
import com.amplitude.core.platform.EventPipeline;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.ConcurrentHashMap;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CoroutineDispatcher;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: compiled from: InMemoryStorage.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(m2721d1 = {"\u0000\\\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0000\n\u0002\u0010\u0002\n\u0002\b\u000b\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0019\u0010\u000b\u001a\u00020\n2\u0006\u0010\f\u001a\u00020\u0007H\u0096@ø\u0001\u0000¢\u0006\u0002\u0010\rJ(\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u0017H\u0016J\u0012\u0010\u0018\u001a\u0004\u0018\u00010\n2\u0006\u0010\u0019\u001a\u00020\u001aH\u0016J\u000e\u0010\u001b\u001a\b\u0012\u0004\u0012\u00020\u00070\u001cH\u0016J\u0019\u0010\u001d\u001a\u00020\u001e2\u0006\u0010\u0019\u001a\u00020\u001aH\u0096@ø\u0001\u0000¢\u0006\u0002\u0010\u001fJ\u0006\u0010 \u001a\u00020\u001eJ\u0011\u0010!\u001a\u00020\u001eH\u0096@ø\u0001\u0000¢\u0006\u0002\u0010\"J!\u0010#\u001a\u00020\u001e2\u0006\u0010\u0019\u001a\u00020\u001a2\u0006\u0010$\u001a\u00020\nH\u0096@ø\u0001\u0000¢\u0006\u0002\u0010%J\u0019\u0010&\u001a\u00020\u001e2\u0006\u0010'\u001a\u00020\u0005H\u0096@ø\u0001\u0000¢\u0006\u0002\u0010(R\u0014\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n\u0000R\u001a\u0010\b\u001a\u000e\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\n0\tX\u0082\u0004¢\u0006\u0002\n\u0000\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006)"}, m2722d2 = {"Lcom/amplitude/core/utilities/InMemoryStorage;", "Lcom/amplitude/core/Storage;", "()V", "eventsBuffer", "", "Lcom/amplitude/core/events/BaseEvent;", "eventsListLock", "", "valuesMap", "Ljava/util/concurrent/ConcurrentHashMap;", "", "getEventsString", "content", "(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "getResponseHandler", "Lcom/amplitude/core/utilities/ResponseHandler;", "eventPipeline", "Lcom/amplitude/core/platform/EventPipeline;", "configuration", "Lcom/amplitude/core/Configuration;", "scope", "Lkotlinx/coroutines/CoroutineScope;", "dispatcher", "Lkotlinx/coroutines/CoroutineDispatcher;", "read", "key", "Lcom/amplitude/core/Storage$Constants;", "readEventsContent", "", "remove", "", "(Lcom/amplitude/core/Storage$Constants;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "removeEvents", "rollover", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "write", "value", "(Lcom/amplitude/core/Storage$Constants;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "writeEvent", "event", "(Lcom/amplitude/core/events/BaseEvent;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "core"}, m2723k = 1, m2724mv = {1, 5, 1}, m2726xi = 48)
public final class InMemoryStorage implements Storage {
    private final List<BaseEvent> eventsBuffer = new ArrayList();
    private final Object eventsListLock = new Object();
    private final ConcurrentHashMap<String, String> valuesMap = new ConcurrentHashMap<>();

    @Override // com.amplitude.core.Storage
    public Object writeEvent(BaseEvent baseEvent, Continuation<? super Unit> continuation) {
        Boolean boolBoxBoolean;
        synchronized (this.eventsListLock) {
            boolBoxBoolean = Boxing.boxBoolean(this.eventsBuffer.add(baseEvent));
        }
        return boolBoxBoolean == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? boolBoxBoolean : Unit.INSTANCE;
    }

    @Override // com.amplitude.core.Storage
    public Object write(Storage.Constants constants, String str, Continuation<? super Unit> continuation) {
        String strPut = this.valuesMap.put(constants.getRawVal(), str);
        return strPut == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? strPut : Unit.INSTANCE;
    }

    @Override // com.amplitude.core.Storage
    public Object remove(Storage.Constants constants, Continuation<? super Unit> continuation) {
        String strRemove = this.valuesMap.remove(constants.getRawVal());
        return strRemove == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? strRemove : Unit.INSTANCE;
    }

    @Override // com.amplitude.core.Storage, com.amplitude.core.utilities.EventsFileStorage
    public Object rollover(Continuation<? super Unit> continuation) {
        return Unit.INSTANCE;
    }

    @Override // com.amplitude.core.Storage
    public String read(Storage.Constants key) {
        Intrinsics.checkNotNullParameter(key, "key");
        return this.valuesMap.get(key.getRawVal());
    }

    @Override // com.amplitude.core.Storage, com.amplitude.core.utilities.EventsFileStorage
    public List<Object> readEventsContent() {
        List list;
        synchronized (this.eventsListLock) {
            list = CollectionsKt.toList(this.eventsBuffer);
            this.eventsBuffer.clear();
            Unit unit = Unit.INSTANCE;
        }
        return CollectionsKt.listOf(list);
    }

    @Override // com.amplitude.core.Storage, com.amplitude.core.utilities.EventsFileStorage
    public Object getEventsString(Object obj, Continuation<? super String> continuation) {
        return JSONUtil.INSTANCE.eventsToString((List) obj);
    }

    @Override // com.amplitude.core.Storage
    public ResponseHandler getResponseHandler(EventPipeline eventPipeline, Configuration configuration, CoroutineScope scope, CoroutineDispatcher dispatcher) {
        Intrinsics.checkNotNullParameter(eventPipeline, "eventPipeline");
        Intrinsics.checkNotNullParameter(configuration, "configuration");
        Intrinsics.checkNotNullParameter(scope, "scope");
        Intrinsics.checkNotNullParameter(dispatcher, "dispatcher");
        return new InMemoryResponseHandler(eventPipeline, configuration, scope, dispatcher);
    }

    public final void removeEvents() {
        synchronized (this.eventsListLock) {
            this.eventsBuffer.clear();
            Unit unit = Unit.INSTANCE;
        }
    }
}
