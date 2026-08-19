package com.amplitude.core.platform;

import com.amplitude.core.Amplitude;
import com.amplitude.core.events.BaseEvent;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: Plugin.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(m2721d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0003\bf\u0018\u00002\u00020\u0001:\u0001\u0012J\u0012\u0010\f\u001a\u0004\u0018\u00010\r2\u0006\u0010\u000e\u001a\u00020\rH\u0016J\u0010\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0002\u001a\u00020\u0003H\u0016J\b\u0010\u0011\u001a\u00020\u0010H\u0016R\u0018\u0010\u0002\u001a\u00020\u0003X¦\u000e¢\u0006\f\u001a\u0004\b\u0004\u0010\u0005\"\u0004\b\u0006\u0010\u0007R\u0012\u0010\b\u001a\u00020\tX¦\u0004¢\u0006\u0006\u001a\u0004\b\n\u0010\u000bø\u0001\u0000\u0082\u0002\u0006\n\u0004\b!0\u0001¨\u0006\u0013À\u0006\u0001"}, m2722d2 = {"Lcom/amplitude/core/platform/Plugin;", "", "amplitude", "Lcom/amplitude/core/Amplitude;", "getAmplitude", "()Lcom/amplitude/core/Amplitude;", "setAmplitude", "(Lcom/amplitude/core/Amplitude;)V", "type", "Lcom/amplitude/core/platform/Plugin$Type;", "getType", "()Lcom/amplitude/core/platform/Plugin$Type;", "execute", "Lcom/amplitude/core/events/BaseEvent;", "event", "setup", "", "teardown", "Type", "core"}, m2723k = 1, m2724mv = {1, 5, 1}, m2726xi = 48)
public interface Plugin {

    /* JADX INFO: compiled from: Plugin.kt */
    @Metadata(m2721d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0007\b\u0086\u0001\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002j\u0002\b\u0003j\u0002\b\u0004j\u0002\b\u0005j\u0002\b\u0006j\u0002\b\u0007¨\u0006\b"}, m2722d2 = {"Lcom/amplitude/core/platform/Plugin$Type;", "", "(Ljava/lang/String;I)V", "Before", "Enrichment", "Destination", "Utility", "Observe", "core"}, m2723k = 1, m2724mv = {1, 5, 1}, m2726xi = 48)
    public enum Type {
        Before,
        Enrichment,
        Destination,
        Utility,
        Observe
    }

    default BaseEvent execute(BaseEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        return event;
    }

    Amplitude getAmplitude();

    Type getType();

    void setAmplitude(Amplitude amplitude);

    default void teardown() {
    }

    default void setup(Amplitude amplitude) {
        Intrinsics.checkNotNullParameter(amplitude, "amplitude");
        setAmplitude(amplitude);
    }
}
