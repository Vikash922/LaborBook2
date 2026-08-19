package com.amplitude.core.platform;

import com.amplitude.core.events.BaseEvent;
import com.amplitude.core.events.GroupIdentifyEvent;
import com.amplitude.core.events.IdentifyEvent;
import com.amplitude.core.events.RevenueEvent;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: Plugin.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(m2721d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\bf\u0018\u00002\u00020\u0001J\b\u0010\u0002\u001a\u00020\u0003H\u0016J\u0012\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0006\u001a\u00020\u0005H\u0016J\u0012\u0010\u0007\u001a\u0004\u0018\u00010\b2\u0006\u0010\u0006\u001a\u00020\bH\u0016J\u0012\u0010\t\u001a\u0004\u0018\u00010\n2\u0006\u0010\u0006\u001a\u00020\nH\u0016J\u0012\u0010\u000b\u001a\u0004\u0018\u00010\f2\u0006\u0010\u0006\u001a\u00020\fH\u0016ø\u0001\u0000\u0082\u0002\u0006\n\u0004\b!0\u0001¨\u0006\rÀ\u0006\u0001"}, m2722d2 = {"Lcom/amplitude/core/platform/EventPlugin;", "Lcom/amplitude/core/platform/Plugin;", "flush", "", "groupIdentify", "Lcom/amplitude/core/events/GroupIdentifyEvent;", "payload", "identify", "Lcom/amplitude/core/events/IdentifyEvent;", "revenue", "Lcom/amplitude/core/events/RevenueEvent;", "track", "Lcom/amplitude/core/events/BaseEvent;", "core"}, m2723k = 1, m2724mv = {1, 5, 1}, m2726xi = 48)
public interface EventPlugin extends Plugin {
    default void flush() {
    }

    default GroupIdentifyEvent groupIdentify(GroupIdentifyEvent payload) {
        Intrinsics.checkNotNullParameter(payload, "payload");
        return payload;
    }

    default IdentifyEvent identify(IdentifyEvent payload) {
        Intrinsics.checkNotNullParameter(payload, "payload");
        return payload;
    }

    default RevenueEvent revenue(RevenueEvent payload) {
        Intrinsics.checkNotNullParameter(payload, "payload");
        return payload;
    }

    default BaseEvent track(BaseEvent payload) {
        Intrinsics.checkNotNullParameter(payload, "payload");
        return payload;
    }
}
