package com.amplitude.eventbridge;

import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: EventBridgeContainer.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(m2721d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u0000 \u00072\u00020\u0001:\u0001\u0007B\u0005¢\u0006\u0002\u0010\u0002R\u0011\u0010\u0003\u001a\u00020\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006¨\u0006\b"}, m2722d2 = {"Lcom/amplitude/eventbridge/EventBridgeContainer;", "", "()V", "eventBridge", "Lcom/amplitude/eventbridge/EventBridge;", "getEventBridge", "()Lcom/amplitude/eventbridge/EventBridge;", "Companion", "event-bridge"}, m2723k = 1, m2724mv = {1, 5, 1}, m2726xi = 48)
public final class EventBridgeContainer {
    private final EventBridge eventBridge = new EventBridgeImpl();

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final Object instancesLock = new Object();
    private static final Map<String, EventBridgeContainer> instances = new LinkedHashMap();

    @JvmStatic
    public static final EventBridgeContainer getInstance(String str) {
        return INSTANCE.getInstance(str);
    }

    /* JADX INFO: compiled from: EventBridgeContainer.kt */
    @Metadata(m2721d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010%\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0010\u0010\b\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\u0005H\u0007R\u001a\u0010\u0003\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00060\u0004X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0001X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\n"}, m2722d2 = {"Lcom/amplitude/eventbridge/EventBridgeContainer$Companion;", "", "()V", "instances", "", "", "Lcom/amplitude/eventbridge/EventBridgeContainer;", "instancesLock", "getInstance", "instanceName", "event-bridge"}, m2723k = 1, m2724mv = {1, 5, 1}, m2726xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        @JvmStatic
        public final EventBridgeContainer getInstance(String instanceName) {
            EventBridgeContainer eventBridgeContainer;
            Intrinsics.checkNotNullParameter(instanceName, "instanceName");
            synchronized (EventBridgeContainer.instancesLock) {
                Map map = EventBridgeContainer.instances;
                Object eventBridgeContainer2 = map.get(instanceName);
                if (eventBridgeContainer2 == null) {
                    eventBridgeContainer2 = new EventBridgeContainer();
                    map.put(instanceName, eventBridgeContainer2);
                }
                eventBridgeContainer = (EventBridgeContainer) eventBridgeContainer2;
            }
            return eventBridgeContainer;
        }
    }

    public final EventBridge getEventBridge() {
        return this.eventBridge;
    }
}
