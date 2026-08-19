package com.boilerplate.network;

import com.google.android.gms.common.internal.ServiceSpecificExtraArgs;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.concurrent.TimeUnit;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
@Metadata(m2721d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\t\u0018\u0000 \u001e2\u00020\u0001:\u0002\u001e\u001fB\u001d\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\u0004\b\u0006\u0010\u0007J\u0016\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u0017H\u0096@¢\u0006\u0002\u0010\u0018J\u0006\u0010\u0019\u001a\u00020\u0000J\u000e\u0010\u001a\u001a\u00020\u00152\u0006\u0010\u001b\u001a\u00020\nJ\u0006\u0010\u001c\u001a\u00020\u0015J\u0006\u0010\u001d\u001a\u00020\u0017R\u0010\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0082\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\b\u001a\b\u0012\u0004\u0012\u00020\n0\tX\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\u00000\tX\u0082\u0004¢\u0006\u0002\n\u0000R\u001a\u0010\f\u001a\u00020\u0003X\u0096\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\r\u0010\u000e\"\u0004\b\u000f\u0010\u0010R\u0016\u0010\u0011\u001a\u0004\u0018\u00010\u00058VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0012\u0010\u0013¨\u0006 "}, m2722d2 = {"Lcom/boilerplate/network/RefreshControl;", "Lcom/boilerplate/network/ITimeLimitedResource;", "rate", "", "lastUpdateDate", "Ljava/util/Date;", "<init>", "(JLjava/util/Date;)V", "listeners", "", "Lcom/boilerplate/network/RefreshControl$Listener;", "children", "refreshRate", "getRefreshRate", "()J", "setRefreshRate", "(J)V", "lastUpdate", "getLastUpdate", "()Ljava/util/Date;", "evict", "", "cleanup", "", "(ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;", "createChild", "addListener", ServiceSpecificExtraArgs.CastExtraArgs.LISTENER, "refresh", "isExpired", "Companion", "Listener", "network_release"}, m2723k = 1, m2724mv = {2, 0, 0}, m2726xi = 48)
public final class RefreshControl implements ITimeLimitedResource {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final long DEFAULT_REFRESH_RATE_MS = TimeUnit.MINUTES.toMillis(5);
    private final List<RefreshControl> children;
    private Date lastUpdateDate;
    private final List<Listener> listeners;
    private long refreshRate;

    @Metadata(m2721d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\t\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003R\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007¨\u0006\b"}, m2722d2 = {"Lcom/boilerplate/network/RefreshControl$Companion;", "", "<init>", "()V", "DEFAULT_REFRESH_RATE_MS", "", "getDEFAULT_REFRESH_RATE_MS", "()J", "network_release"}, m2723k = 1, m2724mv = {2, 0, 0}, m2726xi = 48)
    public static final class Companion {
        private Companion() {
        }

        public final long getDEFAULT_REFRESH_RATE_MS() {
            return RefreshControl.DEFAULT_REFRESH_RATE_MS;
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    @Metadata(m2721d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\bf\u0018\u00002\u00020\u0001J\u000e\u0010\u0002\u001a\u00020\u0003H¦@¢\u0006\u0002\u0010\u0004¨\u0006\u0005"}, m2722d2 = {"Lcom/boilerplate/network/RefreshControl$Listener;", "", "cleanup", "", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "network_release"}, m2723k = 1, m2724mv = {2, 0, 0}, m2726xi = 48)
    public interface Listener {
        Object cleanup(Continuation<? super Unit> continuation);
    }

    public RefreshControl() {
        this(0L, null, 3, null);
    }

    public final void addListener(Listener listener) {
        Intrinsics.checkNotNullParameter(listener, "listener");
        this.listeners.add(listener);
    }

    public final RefreshControl createChild() {
        RefreshControl refreshControl = new RefreshControl(getRefreshRate(), this.lastUpdateDate);
        this.children.add(refreshControl);
        return refreshControl;
    }

    /* JADX WARN: Removed duplicated region for block: B:26:0x007c  */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    @Override // com.boilerplate.network.ITimeLimitedResource
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object evict(boolean r8, kotlin.coroutines.Continuation<? super kotlin.Unit> r9) {
        /*
            r7 = this;
            boolean r0 = r9 instanceof com.boilerplate.network.C1109k
            if (r0 == 0) goto L13
            r0 = r9
            com.boilerplate.network.k r0 = (com.boilerplate.network.C1109k) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            com.boilerplate.network.k r0 = new com.boilerplate.network.k
            r0.<init>(r7, r9)
        L18:
            java.lang.Object r9 = r0.result
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.label
            r3 = 2
            r4 = 1
            r5 = 0
            if (r2 == 0) goto L47
            if (r2 == r4) goto L39
            if (r2 != r3) goto L31
            java.lang.Object r8 = r0.L$0
            java.util.Iterator r8 = (java.util.Iterator) r8
            kotlin.ResultKt.throwOnFailure(r9)
            goto L76
        L31:
            java.lang.IllegalStateException r8 = new java.lang.IllegalStateException
            java.lang.String r9 = "call to 'resume' before 'invoke' with coroutine"
            r8.<init>(r9)
            throw r8
        L39:
            boolean r8 = r0.Z$0
            java.lang.Object r2 = r0.L$1
            java.util.Iterator r2 = (java.util.Iterator) r2
            java.lang.Object r6 = r0.L$0
            com.boilerplate.network.RefreshControl r6 = (com.boilerplate.network.RefreshControl) r6
            kotlin.ResultKt.throwOnFailure(r9)
            goto L53
        L47:
            kotlin.ResultKt.throwOnFailure(r9)
            r7.lastUpdateDate = r5
            java.util.List<com.boilerplate.network.RefreshControl> r9 = r7.children
            java.util.Iterator r2 = r9.iterator()
            r6 = r7
        L53:
            boolean r9 = r2.hasNext()
            if (r9 == 0) goto L6e
            java.lang.Object r9 = r2.next()
            com.boilerplate.network.RefreshControl r9 = (com.boilerplate.network.RefreshControl) r9
            r0.L$0 = r6
            r0.L$1 = r2
            r0.Z$0 = r8
            r0.label = r4
            java.lang.Object r9 = r9.evict(r8, r0)
            if (r9 != r1) goto L53
            return r1
        L6e:
            if (r8 == 0) goto L8f
            java.util.List<com.boilerplate.network.RefreshControl$Listener> r8 = r6.listeners
            java.util.Iterator r8 = r8.iterator()
        L76:
            boolean r9 = r8.hasNext()
            if (r9 == 0) goto L8f
            java.lang.Object r9 = r8.next()
            com.boilerplate.network.RefreshControl$Listener r9 = (com.boilerplate.network.RefreshControl.Listener) r9
            r0.L$0 = r8
            r0.L$1 = r5
            r0.label = r3
            java.lang.Object r9 = r9.cleanup(r0)
            if (r9 != r1) goto L76
            return r1
        L8f:
            kotlin.Unit r8 = kotlin.Unit.INSTANCE
            return r8
        */
        throw new UnsupportedOperationException("Method not decompiled: com.boilerplate.network.RefreshControl.evict(boolean, kotlin.coroutines.Continuation):java.lang.Object");
    }

    @Override // com.boilerplate.network.ITimeLimitedResource
    /* JADX INFO: renamed from: getLastUpdate, reason: from getter */
    public Date getLastUpdateDate() {
        return this.lastUpdateDate;
    }

    @Override // com.boilerplate.network.ITimeLimitedResource
    public long getRefreshRate() {
        return this.refreshRate;
    }

    public final boolean isExpired() {
        Date date = this.lastUpdateDate;
        return date == null || new Date().getTime() - date.getTime() > getRefreshRate();
    }

    public final void refresh() {
        this.lastUpdateDate = new Date();
    }

    @Override // com.boilerplate.network.ITimeLimitedResource
    public void setRefreshRate(long j) {
        this.refreshRate = j;
    }

    public RefreshControl(long j, Date date) {
        this.lastUpdateDate = date;
        this.listeners = new ArrayList();
        this.children = new ArrayList();
        this.refreshRate = j;
    }

    public /* synthetic */ RefreshControl(long j, Date date, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? DEFAULT_REFRESH_RATE_MS : j, (i & 2) != 0 ? null : date);
    }
}
