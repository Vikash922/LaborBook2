package com.boilerplate.network.model;

import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes.dex */
@Metadata(m2721d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0006\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003j\u0002\b\u0004j\u0002\b\u0005j\u0002\b\u0006¨\u0006\u0007"}, m2722d2 = {"Lcom/boilerplate/network/model/NetworkResultStatus;", "", "<init>", "(Ljava/lang/String;I)V", "SUCCESS", "ERROR", "LOADING", "network_release"}, m2723k = 1, m2724mv = {2, 0, 0}, m2726xi = 48)
public final class NetworkResultStatus {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ NetworkResultStatus[] $VALUES;
    public static final NetworkResultStatus SUCCESS = new NetworkResultStatus("SUCCESS", 0);
    public static final NetworkResultStatus ERROR = new NetworkResultStatus("ERROR", 1);
    public static final NetworkResultStatus LOADING = new NetworkResultStatus("LOADING", 2);

    private static final /* synthetic */ NetworkResultStatus[] $values() {
        return new NetworkResultStatus[]{SUCCESS, ERROR, LOADING};
    }

    static {
        NetworkResultStatus[] networkResultStatusArr$values = $values();
        $VALUES = networkResultStatusArr$values;
        $ENTRIES = EnumEntriesKt.enumEntries(networkResultStatusArr$values);
    }

    private NetworkResultStatus(String str, int i) {
    }

    public static EnumEntries<NetworkResultStatus> getEntries() {
        return $ENTRIES;
    }

    public static NetworkResultStatus valueOf(String str) {
        return (NetworkResultStatus) Enum.valueOf(NetworkResultStatus.class, str);
    }

    public static NetworkResultStatus[] values() {
        return (NetworkResultStatus[]) $VALUES.clone();
    }
}
