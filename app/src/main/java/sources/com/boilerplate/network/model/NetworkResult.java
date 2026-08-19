package com.boilerplate.network.model;

import com.facebook.appevents.iap.InAppPurchaseConstants;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
@Metadata(m2721d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\b\n\u0002\b\u001a\b\u0086\b\u0018\u0000 $*\u0006\b\u0000\u0010\u0001 \u00012\u00020\u0002:\u0001$B9\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\b\u0010\u0005\u001a\u0004\u0018\u00018\u0000\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\b\b\u0002\u0010\b\u001a\u00020\t\u0012\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u000b¢\u0006\u0004\b\f\u0010\rJ\t\u0010\u0019\u001a\u00020\u0004HÆ\u0003J\u0010\u0010\u001a\u001a\u0004\u0018\u00018\u0000HÆ\u0003¢\u0006\u0002\u0010\u0011J\u000b\u0010\u001b\u001a\u0004\u0018\u00010\u0007HÆ\u0003J\t\u0010\u001c\u001a\u00020\tHÆ\u0003J\u0010\u0010\u001d\u001a\u0004\u0018\u00010\u000bHÆ\u0003¢\u0006\u0002\u0010\u0017JL\u0010\u001e\u001a\b\u0012\u0004\u0012\u00028\u00000\u00002\b\b\u0002\u0010\u0003\u001a\u00020\u00042\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00018\u00002\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00072\b\b\u0002\u0010\b\u001a\u00020\t2\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u000bHÆ\u0001¢\u0006\u0002\u0010\u001fJ\u0013\u0010 \u001a\u00020\t2\b\u0010!\u001a\u0004\u0018\u00010\u0002HÖ\u0003J\t\u0010\"\u001a\u00020\u000bHÖ\u0001J\t\u0010#\u001a\u00020\u0007HÖ\u0001R\u0011\u0010\u0003\u001a\u00020\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\u000fR\u0015\u0010\u0005\u001a\u0004\u0018\u00018\u0000¢\u0006\n\n\u0002\u0010\u0012\u001a\u0004\b\u0010\u0010\u0011R\u0013\u0010\u0006\u001a\u0004\u0018\u00010\u0007¢\u0006\b\n\u0000\u001a\u0004\b\u0013\u0010\u0014R\u0011\u0010\b\u001a\u00020\t¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\u0015R\u0015\u0010\n\u001a\u0004\u0018\u00010\u000b¢\u0006\n\n\u0002\u0010\u0018\u001a\u0004\b\u0016\u0010\u0017¨\u0006%"}, m2722d2 = {"Lcom/boilerplate/network/model/NetworkResult;", "T", "", "status", "Lcom/boilerplate/network/model/NetworkResultStatus;", "data", "message", "", "isFromServer", "", "code", "", "<init>", "(Lcom/boilerplate/network/model/NetworkResultStatus;Ljava/lang/Object;Ljava/lang/String;ZLjava/lang/Integer;)V", "getStatus", "()Lcom/boilerplate/network/model/NetworkResultStatus;", "getData", "()Ljava/lang/Object;", "Ljava/lang/Object;", "getMessage", "()Ljava/lang/String;", "()Z", "getCode", "()Ljava/lang/Integer;", "Ljava/lang/Integer;", "component1", "component2", "component3", "component4", "component5", "copy", "(Lcom/boilerplate/network/model/NetworkResultStatus;Ljava/lang/Object;Ljava/lang/String;ZLjava/lang/Integer;)Lcom/boilerplate/network/model/NetworkResult;", "equals", "other", "hashCode", InAppPurchaseConstants.METHOD_TO_STRING, "Companion", "network_release"}, m2723k = 1, m2724mv = {2, 0, 0}, m2726xi = 48)
public final /* data */ class NetworkResult<T> {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private final Integer code;
    private final T data;
    private final boolean isFromServer;
    private final String message;
    private final NetworkResultStatus status;

    @Metadata(m2721d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0002\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J!\u0010\u0004\u001a\b\u0012\u0004\u0012\u0002H\u00060\u0005\"\u0004\b\u0001\u0010\u00062\b\u0010\u0007\u001a\u0004\u0018\u0001H\u0006¢\u0006\u0002\u0010\bJ5\u0010\t\u001a\b\u0012\u0004\u0012\u0002H\u00060\u0005\"\u0004\b\u0001\u0010\u00062\u0006\u0010\u0007\u001a\u0002H\u00062\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u000b2\b\b\u0002\u0010\f\u001a\u00020\r¢\u0006\u0002\u0010\u000eJ=\u0010\u000f\u001a\b\u0012\u0004\u0012\u0002H\u00060\u0005\"\u0004\b\u0001\u0010\u00062\u0006\u0010\u0007\u001a\u0002H\u00062\b\u0010\u0010\u001a\u0004\u0018\u00010\u00112\b\u0010\n\u001a\u0004\u0018\u00010\u000b2\b\b\u0002\u0010\f\u001a\u00020\r¢\u0006\u0002\u0010\u0012¨\u0006\u0013"}, m2722d2 = {"Lcom/boilerplate/network/model/NetworkResult$Companion;", "", "<init>", "()V", "loading", "Lcom/boilerplate/network/model/NetworkResult;", "T", "data", "(Ljava/lang/Object;)Lcom/boilerplate/network/model/NetworkResult;", "success", "code", "", "isFromServer", "", "(Ljava/lang/Object;Ljava/lang/Integer;Z)Lcom/boilerplate/network/model/NetworkResult;", "error", "message", "", "(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Integer;Z)Lcom/boilerplate/network/model/NetworkResult;", "network_release"}, m2723k = 1, m2724mv = {2, 0, 0}, m2726xi = 48)
    public static final class Companion {
        private Companion() {
        }

        public static /* synthetic */ NetworkResult error$default(Companion companion, Object obj, String str, Integer num, boolean z, int i, Object obj2) {
            if ((i & 8) != 0) {
                z = true;
            }
            return companion.error(obj, str, num, z);
        }

        public static /* synthetic */ NetworkResult success$default(Companion companion, Object obj, Integer num, boolean z, int i, Object obj2) {
            if ((i & 2) != 0) {
                num = 0;
            }
            if ((i & 4) != 0) {
                z = false;
            }
            return companion.success(obj, num, z);
        }

        public final <T> NetworkResult<T> error(T data, String message, Integer code, boolean isFromServer) {
            return new NetworkResult<>(NetworkResultStatus.ERROR, data, message, isFromServer, code);
        }

        public final <T> NetworkResult<T> loading(T data) {
            return new NetworkResult<>(NetworkResultStatus.LOADING, data, null, false, null, 24, null);
        }

        public final <T> NetworkResult<T> success(T data, Integer code, boolean isFromServer) {
            return new NetworkResult<>(NetworkResultStatus.SUCCESS, data, null, isFromServer, code);
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    public NetworkResult(NetworkResultStatus status, T t, String str, boolean z, Integer num) {
        Intrinsics.checkNotNullParameter(status, "status");
        this.status = status;
        this.data = t;
        this.message = str;
        this.isFromServer = z;
        this.code = num;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ NetworkResult copy$default(NetworkResult networkResult, NetworkResultStatus networkResultStatus, Object obj, String str, boolean z, Integer num, int i, Object obj2) {
        if ((i & 1) != 0) {
            networkResultStatus = networkResult.status;
        }
        if ((i & 2) != 0) {
            obj = networkResult.data;
        }
        Object obj3 = obj;
        if ((i & 4) != 0) {
            str = networkResult.message;
        }
        String str2 = str;
        if ((i & 8) != 0) {
            z = networkResult.isFromServer;
        }
        boolean z2 = z;
        if ((i & 16) != 0) {
            num = networkResult.code;
        }
        return networkResult.copy(networkResultStatus, obj3, str2, z2, num);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final NetworkResultStatus getStatus() {
        return this.status;
    }

    public final T component2() {
        return this.data;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final String getMessage() {
        return this.message;
    }

    /* JADX INFO: renamed from: component4, reason: from getter */
    public final boolean getIsFromServer() {
        return this.isFromServer;
    }

    /* JADX INFO: renamed from: component5, reason: from getter */
    public final Integer getCode() {
        return this.code;
    }

    public final NetworkResult<T> copy(NetworkResultStatus status, T data, String message, boolean isFromServer, Integer code) {
        Intrinsics.checkNotNullParameter(status, "status");
        return new NetworkResult<>(status, data, message, isFromServer, code);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof NetworkResult)) {
            return false;
        }
        NetworkResult networkResult = (NetworkResult) other;
        return this.status == networkResult.status && Intrinsics.areEqual(this.data, networkResult.data) && Intrinsics.areEqual(this.message, networkResult.message) && this.isFromServer == networkResult.isFromServer && Intrinsics.areEqual(this.code, networkResult.code);
    }

    public final Integer getCode() {
        return this.code;
    }

    public final T getData() {
        return this.data;
    }

    public final String getMessage() {
        return this.message;
    }

    public final NetworkResultStatus getStatus() {
        return this.status;
    }

    public int hashCode() {
        int iHashCode = this.status.hashCode() * 31;
        T t = this.data;
        int iHashCode2 = (iHashCode + (t == null ? 0 : t.hashCode())) * 31;
        String str = this.message;
        int iHashCode3 = (Boolean.hashCode(this.isFromServer) + ((iHashCode2 + (str == null ? 0 : str.hashCode())) * 31)) * 31;
        Integer num = this.code;
        return iHashCode3 + (num != null ? num.hashCode() : 0);
    }

    public final boolean isFromServer() {
        return this.isFromServer;
    }

    public String toString() {
        return "NetworkResult(status=" + this.status + ", data=" + this.data + ", message=" + this.message + ", isFromServer=" + this.isFromServer + ", code=" + this.code + ')';
    }

    public /* synthetic */ NetworkResult(NetworkResultStatus networkResultStatus, Object obj, String str, boolean z, Integer num, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(networkResultStatus, obj, str, (i & 8) != 0 ? false : z, (i & 16) != 0 ? 0 : num);
    }
}
