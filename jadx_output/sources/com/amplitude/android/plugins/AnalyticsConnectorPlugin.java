package com.amplitude.android.plugins;

import com.amplitude.analytics.connector.AnalyticsConnector;
import com.amplitude.analytics.connector.AnalyticsEvent;
import com.amplitude.core.Amplitude;
import com.amplitude.core.events.BaseEvent;
import com.amplitude.core.events.EventOptions;
import com.amplitude.core.platform.Plugin;
import java.util.HashMap;
import java.util.Map;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.MapsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: AnalyticsConnectorPlugin.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(m2721d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\b\u0000\u0018\u0000 \u00142\u00020\u0001:\u0001\u0014B\u0005¢\u0006\u0002\u0010\u0002J\u0012\u0010\u000f\u001a\u0004\u0018\u00010\u00102\u0006\u0010\u0011\u001a\u00020\u0010H\u0016J\u0010\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0003\u001a\u00020\u0004H\u0016R\u001a\u0010\u0003\u001a\u00020\u0004X\u0096.¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR\u000e\u0010\t\u001a\u00020\nX\u0082.¢\u0006\u0002\n\u0000R\u0014\u0010\u000b\u001a\u00020\fX\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000e¨\u0006\u0015"}, m2722d2 = {"Lcom/amplitude/android/plugins/AnalyticsConnectorPlugin;", "Lcom/amplitude/core/platform/Plugin;", "()V", "amplitude", "Lcom/amplitude/core/Amplitude;", "getAmplitude", "()Lcom/amplitude/core/Amplitude;", "setAmplitude", "(Lcom/amplitude/core/Amplitude;)V", "connector", "Lcom/amplitude/analytics/connector/AnalyticsConnector;", "type", "Lcom/amplitude/core/platform/Plugin$Type;", "getType", "()Lcom/amplitude/core/platform/Plugin$Type;", "execute", "Lcom/amplitude/core/events/BaseEvent;", "event", "setup", "", "Companion", "android_release"}, m2723k = 1, m2724mv = {1, 5, 1}, m2726xi = 48)
public final class AnalyticsConnectorPlugin implements Plugin {
    public static final String EXPOSURE_EVENT = "$exposure";
    public Amplitude amplitude;
    private AnalyticsConnector connector;
    private final Plugin.Type type = Plugin.Type.Before;

    @Override // com.amplitude.core.platform.Plugin
    public Plugin.Type getType() {
        return this.type;
    }

    @Override // com.amplitude.core.platform.Plugin
    public Amplitude getAmplitude() {
        Amplitude amplitude = this.amplitude;
        if (amplitude != null) {
            return amplitude;
        }
        Intrinsics.throwUninitializedPropertyAccessException("amplitude");
        return null;
    }

    @Override // com.amplitude.core.platform.Plugin
    public void setAmplitude(Amplitude amplitude) {
        Intrinsics.checkNotNullParameter(amplitude, "<set-?>");
        this.amplitude = amplitude;
    }

    @Override // com.amplitude.core.platform.Plugin
    public void setup(final Amplitude amplitude) {
        Intrinsics.checkNotNullParameter(amplitude, "amplitude");
        super.setup(amplitude);
        AnalyticsConnector companion = AnalyticsConnector.INSTANCE.getInstance(amplitude.getConfiguration().getInstanceName());
        this.connector = companion;
        if (companion == null) {
            Intrinsics.throwUninitializedPropertyAccessException("connector");
            companion = null;
        }
        companion.getEventBridge().setEventReceiver(new Function1<AnalyticsEvent, Unit>() { // from class: com.amplitude.android.plugins.AnalyticsConnectorPlugin.setup.1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(AnalyticsEvent analyticsEvent) {
                invoke2(analyticsEvent);
                return Unit.INSTANCE;
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(AnalyticsEvent dstr$eventType$eventProperties$userProperties) {
                Intrinsics.checkNotNullParameter(dstr$eventType$eventProperties$userProperties, "$dstr$eventType$eventProperties$userProperties");
                String eventType = dstr$eventType$eventProperties$userProperties.getEventType();
                Map<String, Object> mapComponent2 = dstr$eventType$eventProperties$userProperties.component2();
                Map<String, Map<String, Object>> mapComponent3 = dstr$eventType$eventProperties$userProperties.component3();
                BaseEvent baseEvent = new BaseEvent();
                baseEvent.setEventType(eventType);
                baseEvent.setEventProperties(mapComponent2 == null ? null : MapsKt.toMutableMap(mapComponent2));
                baseEvent.setUserProperties(mapComponent3 != null ? MapsKt.toMutableMap(mapComponent3) : null);
                Amplitude.track$default(amplitude, baseEvent, (EventOptions) null, (Function3) null, 6, (Object) null);
            }
        });
    }

    @Override // com.amplitude.core.platform.Plugin
    public BaseEvent execute(BaseEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        Map<String, Object> userProperties = event.getUserProperties();
        if (userProperties != null && !userProperties.isEmpty() && !Intrinsics.areEqual(event.getEventType(), EXPOSURE_EVENT)) {
            HashMap map = new HashMap();
            for (Map.Entry<String, Object> entry : userProperties.entrySet()) {
                String key = entry.getKey();
                Object value = entry.getValue();
                if (value instanceof Map) {
                    try {
                        map.put(key, (Map) value);
                    } catch (ClassCastException e) {
                        e.printStackTrace();
                    }
                }
            }
            AnalyticsConnector analyticsConnector = this.connector;
            if (analyticsConnector == null) {
                Intrinsics.throwUninitializedPropertyAccessException("connector");
                analyticsConnector = null;
            }
            analyticsConnector.getIdentityStore().editIdentity().updateUserProperties(map).commit();
        }
        return event;
    }
}
