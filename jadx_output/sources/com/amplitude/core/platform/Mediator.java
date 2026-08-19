package com.amplitude.core.platform;

import com.amplitude.core.events.BaseEvent;
import com.amplitude.core.events.GroupIdentifyEvent;
import com.amplitude.core.events.IdentifyEvent;
import com.amplitude.core.events.RevenueEvent;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: Mediator.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(m2721d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0000\u0018\u00002\u00020\u0001B\u0013\u0012\f\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003¢\u0006\u0002\u0010\u0005J\u000e\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u0004J\u001a\u0010\u000b\u001a\u00020\f2\u0012\u0010\r\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\f0\u000eJ\u0010\u0010\u000f\u001a\u0004\u0018\u00010\u00102\u0006\u0010\u0011\u001a\u00020\u0010J\u000e\u0010\u0012\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u0004R\u001a\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003X\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007¨\u0006\u0013"}, m2722d2 = {"Lcom/amplitude/core/platform/Mediator;", "", "plugins", "", "Lcom/amplitude/core/platform/Plugin;", "(Ljava/util/List;)V", "getPlugins$core", "()Ljava/util/List;", "add", "", "plugin", "applyClosure", "", "closure", "Lkotlin/Function1;", "execute", "Lcom/amplitude/core/events/BaseEvent;", "event", "remove", "core"}, m2723k = 1, m2724mv = {1, 5, 1}, m2726xi = 48)
public final class Mediator {
    private final List<Plugin> plugins;

    public Mediator(List<Plugin> plugins) {
        Intrinsics.checkNotNullParameter(plugins, "plugins");
        this.plugins = plugins;
    }

    public final List<Plugin> getPlugins$core() {
        return this.plugins;
    }

    public final boolean add(Plugin plugin) {
        boolean zAdd;
        Intrinsics.checkNotNullParameter(plugin, "plugin");
        synchronized (this.plugins) {
            zAdd = getPlugins$core().add(plugin);
        }
        return zAdd;
    }

    public final boolean remove(final Plugin plugin) {
        boolean zRemoveAll;
        Intrinsics.checkNotNullParameter(plugin, "plugin");
        synchronized (this.plugins) {
            zRemoveAll = CollectionsKt.removeAll((List) getPlugins$core(), (Function1) new Function1<Plugin, Boolean>() { // from class: com.amplitude.core.platform.Mediator$remove$1$1
                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                public final Boolean invoke(Plugin it) {
                    Intrinsics.checkNotNullParameter(it, "it");
                    return Boolean.valueOf(it == plugin);
                }
            });
        }
        return zRemoveAll;
    }

    public final BaseEvent execute(BaseEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        synchronized (this.plugins) {
            for (Plugin plugin : getPlugins$core()) {
                if (event != null) {
                    if (plugin instanceof DestinationPlugin) {
                        try {
                            BaseEvent baseEvent = event;
                            ((DestinationPlugin) plugin).process(event);
                        } catch (Exception e) {
                            e.printStackTrace();
                        }
                    } else if (plugin instanceof EventPlugin) {
                        BaseEvent baseEvent2 = event;
                        event = plugin.execute(event);
                        if (event instanceof IdentifyEvent) {
                            EventPlugin eventPlugin = (EventPlugin) plugin;
                            if (event == null) {
                                throw new NullPointerException("null cannot be cast to non-null type com.amplitude.core.events.IdentifyEvent");
                            }
                            event = eventPlugin.identify((IdentifyEvent) event);
                        } else if (event instanceof GroupIdentifyEvent) {
                            EventPlugin eventPlugin2 = (EventPlugin) plugin;
                            if (event == null) {
                                throw new NullPointerException("null cannot be cast to non-null type com.amplitude.core.events.GroupIdentifyEvent");
                            }
                            event = eventPlugin2.groupIdentify((GroupIdentifyEvent) event);
                        } else if (event instanceof RevenueEvent) {
                            EventPlugin eventPlugin3 = (EventPlugin) plugin;
                            if (event == null) {
                                throw new NullPointerException("null cannot be cast to non-null type com.amplitude.core.events.RevenueEvent");
                            }
                            event = eventPlugin3.revenue((RevenueEvent) event);
                        } else if (event != null) {
                            EventPlugin eventPlugin4 = (EventPlugin) plugin;
                            if (event == null) {
                                throw new NullPointerException("null cannot be cast to non-null type com.amplitude.core.events.BaseEvent");
                            }
                            event = eventPlugin4.track(event);
                        } else {
                            continue;
                        }
                    } else {
                        BaseEvent baseEvent3 = event;
                        event = plugin.execute(event);
                    }
                }
            }
            BaseEvent baseEvent4 = event;
        }
        return event;
    }

    public final void applyClosure(Function1<? super Plugin, Unit> closure) {
        Intrinsics.checkNotNullParameter(closure, "closure");
        synchronized (this.plugins) {
            Iterator<T> it = getPlugins$core().iterator();
            while (it.hasNext()) {
                closure.invoke((Plugin) it.next());
            }
            Unit unit = Unit.INSTANCE;
        }
    }
}
