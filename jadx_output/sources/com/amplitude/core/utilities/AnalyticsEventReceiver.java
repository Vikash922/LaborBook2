package com.amplitude.core.utilities;

import com.amplitude.core.Amplitude;
import com.amplitude.core.events.EventOptions;
import com.amplitude.eventbridge.Event;
import com.amplitude.eventbridge.EventChannel;
import com.amplitude.eventbridge.EventReceiver;
import kotlin.Metadata;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: AnalyticsEventReceiver.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(m2721d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0000\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u0018\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\fH\u0016R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006¨\u0006\r"}, m2722d2 = {"Lcom/amplitude/core/utilities/AnalyticsEventReceiver;", "Lcom/amplitude/eventbridge/EventReceiver;", "amplitude", "Lcom/amplitude/core/Amplitude;", "(Lcom/amplitude/core/Amplitude;)V", "getAmplitude", "()Lcom/amplitude/core/Amplitude;", "receive", "", "channel", "Lcom/amplitude/eventbridge/EventChannel;", "event", "Lcom/amplitude/eventbridge/Event;", "core"}, m2723k = 1, m2724mv = {1, 5, 1}, m2726xi = 48)
public final class AnalyticsEventReceiver implements EventReceiver {
    private final Amplitude amplitude;

    public AnalyticsEventReceiver(Amplitude amplitude) {
        Intrinsics.checkNotNullParameter(amplitude, "amplitude");
        this.amplitude = amplitude;
    }

    public final Amplitude getAmplitude() {
        return this.amplitude;
    }

    @Override // com.amplitude.eventbridge.EventReceiver
    public void receive(EventChannel channel, Event event) {
        Intrinsics.checkNotNullParameter(channel, "channel");
        Intrinsics.checkNotNullParameter(event, "event");
        this.amplitude.getLogger().debug(Intrinsics.stringPlus("Receive event from event bridge ", event.getEventType()));
        Amplitude.track$default(this.amplitude, AnalyticsEventReceiverKt.toBaseEvent(event), (EventOptions) null, (Function3) null, 6, (Object) null);
    }
}
