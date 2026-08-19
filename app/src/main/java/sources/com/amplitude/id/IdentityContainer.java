package com.amplitude.id;

import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: IdentityContainer.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u0000 \u000b2\u00020\u0001:\u0001\u000bB\u000f\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006R\u0011\u0010\u0007\u001a\u00020\b¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\n¨\u0006\f"}, d2 = {"Lcom/amplitude/id/IdentityContainer;", "", "configuration", "Lcom/amplitude/id/IdentityConfiguration;", "(Lcom/amplitude/id/IdentityConfiguration;)V", "getConfiguration", "()Lcom/amplitude/id/IdentityConfiguration;", "identityManager", "Lcom/amplitude/id/IdentityManager;", "getIdentityManager", "()Lcom/amplitude/id/IdentityManager;", "Companion", "id"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class IdentityContainer {
    private final IdentityConfiguration configuration;
    private final IdentityManager identityManager;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final Object instancesLock = new Object();
    private static final Map<String, IdentityContainer> instances = new LinkedHashMap();

    public /* synthetic */ IdentityContainer(IdentityConfiguration identityConfiguration, DefaultConstructorMarker defaultConstructorMarker) {
        this(identityConfiguration);
    }

    @JvmStatic
    public static final IdentityContainer getInstance(IdentityConfiguration identityConfiguration) {
        return INSTANCE.getInstance(identityConfiguration);
    }

    private IdentityContainer(IdentityConfiguration identityConfiguration) {
        this.configuration = identityConfiguration;
        this.identityManager = new IdentityManagerImpl(identityConfiguration.getIdentityStorageProvider().getIdentityStorage(identityConfiguration));
    }

    public final IdentityConfiguration getConfiguration() {
        return this.configuration;
    }

    public final IdentityManager getIdentityManager() {
        return this.identityManager;
    }

    /* JADX INFO: compiled from: IdentityContainer.kt */
    @Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010%\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0010\u0010\b\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\nH\u0007R\u001a\u0010\u0003\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00060\u0004X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0001X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u000b"}, d2 = {"Lcom/amplitude/id/IdentityContainer$Companion;", "", "()V", "instances", "", "", "Lcom/amplitude/id/IdentityContainer;", "instancesLock", "getInstance", "configuration", "Lcom/amplitude/id/IdentityConfiguration;", "id"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        @JvmStatic
        public final IdentityContainer getInstance(IdentityConfiguration configuration) {
            IdentityContainer identityContainer;
            Intrinsics.checkNotNullParameter(configuration, "configuration");
            synchronized (IdentityContainer.instancesLock) {
                Map map = IdentityContainer.instances;
                String instanceName = configuration.getInstanceName();
                Object identityContainer2 = map.get(instanceName);
                if (identityContainer2 == null) {
                    identityContainer2 = new IdentityContainer(configuration, null);
                    map.put(instanceName, identityContainer2);
                }
                identityContainer = (IdentityContainer) identityContainer2;
            }
            return identityContainer;
        }
    }
}
