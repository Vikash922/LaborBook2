package com.amplitude.core.platform;

import com.amplitude.core.Amplitude;
import com.amplitude.core.events.BaseEvent;
import com.amplitude.core.platform.Plugin;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Map;
import kotlin.Metadata;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.collections.MapsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: Timeline.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(m2721d1 = {"\u0000@\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\b\u0016\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u000e\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u0012J\u001a\u0010\u0013\u001a\u00020\u00102\u0012\u0010\u0014\u001a\u000e\u0012\u0004\u0012\u00020\u0012\u0012\u0004\u0012\u00020\u00100\u0015J\u001e\u0010\u0016\u001a\u0004\u0018\u00010\u00172\b\u0010\u0018\u001a\u0004\u0018\u00010\f2\b\u0010\u0019\u001a\u0004\u0018\u00010\u0017H\u0002J\u001a\u0010\u0016\u001a\u0004\u0018\u00010\u00172\u0006\u0010\u001a\u001a\u00020\u000b2\b\u0010\u0019\u001a\u0004\u0018\u00010\u0017J\u0010\u0010\u001b\u001a\u00020\u00102\u0006\u0010\u001c\u001a\u00020\u0017H\u0016J\u000e\u0010\u001d\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u0012R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086.¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR \u0010\t\u001a\u000e\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\nX\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000e¨\u0006\u001e"}, m2722d2 = {"Lcom/amplitude/core/platform/Timeline;", "", "()V", "amplitude", "Lcom/amplitude/core/Amplitude;", "getAmplitude", "()Lcom/amplitude/core/Amplitude;", "setAmplitude", "(Lcom/amplitude/core/Amplitude;)V", "plugins", "", "Lcom/amplitude/core/platform/Plugin$Type;", "Lcom/amplitude/core/platform/Mediator;", "getPlugins$core", "()Ljava/util/Map;", "add", "", "plugin", "Lcom/amplitude/core/platform/Plugin;", "applyClosure", "closure", "Lkotlin/Function1;", "applyPlugins", "Lcom/amplitude/core/events/BaseEvent;", "mediator", "event", "type", "process", "incomingEvent", "remove", "core"}, m2723k = 1, m2724mv = {1, 5, 1}, m2726xi = 48)
public class Timeline {
    public Amplitude amplitude;
    private final Map<Plugin.Type, Mediator> plugins = MapsKt.mapOf(TuplesKt.m2729to(Plugin.Type.Before, new Mediator(new ArrayList())), TuplesKt.m2729to(Plugin.Type.Enrichment, new Mediator(new ArrayList())), TuplesKt.m2729to(Plugin.Type.Destination, new Mediator(new ArrayList())), TuplesKt.m2729to(Plugin.Type.Utility, new Mediator(new ArrayList())));

    public final Map<Plugin.Type, Mediator> getPlugins$core() {
        return this.plugins;
    }

    public final Amplitude getAmplitude() {
        Amplitude amplitude = this.amplitude;
        if (amplitude != null) {
            return amplitude;
        }
        Intrinsics.throwUninitializedPropertyAccessException("amplitude");
        return null;
    }

    public final void setAmplitude(Amplitude amplitude) {
        Intrinsics.checkNotNullParameter(amplitude, "<set-?>");
        this.amplitude = amplitude;
    }

    public void process(BaseEvent incomingEvent) {
        Intrinsics.checkNotNullParameter(incomingEvent, "incomingEvent");
        if (getAmplitude().getConfiguration().getOptOut()) {
            return;
        }
        applyPlugins(Plugin.Type.Destination, applyPlugins(Plugin.Type.Enrichment, applyPlugins(Plugin.Type.Before, incomingEvent)));
    }

    public final void add(Plugin plugin) {
        Intrinsics.checkNotNullParameter(plugin, "plugin");
        plugin.setup(getAmplitude());
        Mediator mediator = this.plugins.get(plugin.getType());
        if (mediator == null) {
            return;
        }
        mediator.add(plugin);
    }

    public final BaseEvent applyPlugins(Plugin.Type type, BaseEvent event) {
        Intrinsics.checkNotNullParameter(type, "type");
        return applyPlugins(this.plugins.get(type), event);
    }

    private final BaseEvent applyPlugins(Mediator mediator, BaseEvent event) {
        if (event == null) {
            return event;
        }
        return mediator == null ? null : mediator.execute(event);
    }

    public final void remove(Plugin plugin) {
        Intrinsics.checkNotNullParameter(plugin, "plugin");
        Iterator<Map.Entry<Plugin.Type, Mediator>> it = this.plugins.entrySet().iterator();
        while (it.hasNext()) {
            if (it.next().getValue().remove(plugin)) {
                plugin.teardown();
            }
        }
    }

    public final void applyClosure(Function1<? super Plugin, Unit> closure) {
        Intrinsics.checkNotNullParameter(closure, "closure");
        Iterator<Map.Entry<Plugin.Type, Mediator>> it = this.plugins.entrySet().iterator();
        while (it.hasNext()) {
            it.next().getValue().applyClosure(closure);
        }
    }
}
