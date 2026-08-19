package com.boilerplate.network;

import java.util.Date;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;

/* JADX INFO: loaded from: classes.dex */
@Metadata(m2721d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\t\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\bf\u0018\u00002\u00020\u0001J\u0018\u0010\f\u001a\u00020\r2\b\b\u0002\u0010\u000e\u001a\u00020\u000fH¦@¢\u0006\u0002\u0010\u0010R\u0018\u0010\u0002\u001a\u00020\u0003X¦\u000e¢\u0006\f\u001a\u0004\b\u0004\u0010\u0005\"\u0004\b\u0006\u0010\u0007R\u0014\u0010\b\u001a\u0004\u0018\u00010\tX¦\u0004¢\u0006\u0006\u001a\u0004\b\n\u0010\u000b¨\u0006\u0011"}, m2722d2 = {"Lcom/boilerplate/network/ITimeLimitedResource;", "", "refreshRate", "", "getRefreshRate", "()J", "setRefreshRate", "(J)V", "lastUpdate", "Ljava/util/Date;", "getLastUpdate", "()Ljava/util/Date;", "evict", "", "cleanup", "", "(ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;", "network_release"}, m2723k = 1, m2724mv = {2, 0, 0}, m2726xi = 48)
public interface ITimeLimitedResource {

    /* JADX INFO: loaded from: classes3.dex */
    @Metadata(m2723k = 3, m2724mv = {2, 0, 0}, m2726xi = 48)
    public static final class DefaultImpls {
        public static /* synthetic */ Object evict$default(ITimeLimitedResource iTimeLimitedResource, boolean z, Continuation continuation, int i, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: evict");
            }
            if ((i & 1) != 0) {
                z = false;
            }
            return iTimeLimitedResource.evict(z, continuation);
        }
    }

    Object evict(boolean z, Continuation<? super Unit> continuation);

    Date getLastUpdate();

    long getRefreshRate();

    void setRefreshRate(long j);
}
