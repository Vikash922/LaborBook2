package com.amplitude.core;

import com.amplitude.core.platform.ObservePlugin;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: State.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(m2721d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0016\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\f2\u0006\u0010\u0015\u001a\u00020\u0016J\u000e\u0010\u0017\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\fR(\u0010\u0005\u001a\u0004\u0018\u00010\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u0004@FX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0006\u0010\u0007\"\u0004\b\b\u0010\tR\u0017\u0010\n\u001a\b\u0012\u0004\u0012\u00020\f0\u000b¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000eR(\u0010\u000f\u001a\u0004\u0018\u00010\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u0004@FX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0010\u0010\u0007\"\u0004\b\u0011\u0010\t¨\u0006\u0018"}, m2722d2 = {"Lcom/amplitude/core/State;", "", "()V", "value", "", "deviceId", "getDeviceId", "()Ljava/lang/String;", "setDeviceId", "(Ljava/lang/String;)V", "plugins", "", "Lcom/amplitude/core/platform/ObservePlugin;", "getPlugins", "()Ljava/util/List;", "userId", "getUserId", "setUserId", "add", "", "plugin", "amplitude", "Lcom/amplitude/core/Amplitude;", "remove", "core"}, m2723k = 1, m2724mv = {1, 5, 1}, m2726xi = 48)
public final class State {
    private String deviceId;
    private final List<ObservePlugin> plugins = new ArrayList();
    private String userId;

    public final String getUserId() {
        return this.userId;
    }

    public final void setUserId(String str) {
        this.userId = str;
        Iterator<T> it = this.plugins.iterator();
        while (it.hasNext()) {
            ((ObservePlugin) it.next()).onUserIdChanged(str);
        }
    }

    public final String getDeviceId() {
        return this.deviceId;
    }

    public final void setDeviceId(String str) {
        this.deviceId = str;
        Iterator<T> it = this.plugins.iterator();
        while (it.hasNext()) {
            ((ObservePlugin) it.next()).onDeviceIdChanged(str);
        }
    }

    public final List<ObservePlugin> getPlugins() {
        return this.plugins;
    }

    public final boolean add(ObservePlugin plugin, Amplitude amplitude) {
        boolean zAdd;
        Intrinsics.checkNotNullParameter(plugin, "plugin");
        Intrinsics.checkNotNullParameter(amplitude, "amplitude");
        synchronized (this.plugins) {
            plugin.setup(amplitude);
            zAdd = getPlugins().add(plugin);
        }
        return zAdd;
    }

    public final boolean remove(final ObservePlugin plugin) {
        boolean zRemoveAll;
        Intrinsics.checkNotNullParameter(plugin, "plugin");
        synchronized (this.plugins) {
            zRemoveAll = CollectionsKt.removeAll((List) getPlugins(), (Function1) new Function1<ObservePlugin, Boolean>() { // from class: com.amplitude.core.State$remove$1$1
                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                public final Boolean invoke(ObservePlugin it) {
                    Intrinsics.checkNotNullParameter(it, "it");
                    return Boolean.valueOf(it == plugin);
                }
            });
        }
        return zRemoveAll;
    }
}
