package com.amplitude.core.events;

import com.amplitude.core.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: RevenueEvent.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(m2721d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0005\b\u0016\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002R\u001a\u0010\u0003\u001a\u00020\u0004X\u0096\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\b¨\u0006\t"}, m2722d2 = {"Lcom/amplitude/core/events/RevenueEvent;", "Lcom/amplitude/core/events/BaseEvent;", "()V", "eventType", "", "getEventType", "()Ljava/lang/String;", "setEventType", "(Ljava/lang/String;)V", "core"}, m2723k = 1, m2724mv = {1, 5, 1}, m2726xi = 48)
public class RevenueEvent extends BaseEvent {
    private String eventType = Constants.AMP_REVENUE_EVENT;

    @Override // com.amplitude.core.events.BaseEvent
    public String getEventType() {
        return this.eventType;
    }

    @Override // com.amplitude.core.events.BaseEvent
    public void setEventType(String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.eventType = str;
    }
}
