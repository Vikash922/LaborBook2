package com.boilerplate.navigator.transaction;

import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes.dex */
@Metadata(m2721d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0005\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003j\u0002\b\u0004j\u0002\b\u0005¨\u0006\u0006"}, m2722d2 = {"Lcom/boilerplate/navigator/transaction/TransactionType;", "", "<init>", "(Ljava/lang/String;I)V", "SHOW_HIDE", "ATTACH_DETACH", "navigator_release"}, m2723k = 1, m2724mv = {2, 0, 0}, m2726xi = 48)
public final class TransactionType {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ TransactionType[] $VALUES;
    public static final TransactionType SHOW_HIDE = new TransactionType("SHOW_HIDE", 0);
    public static final TransactionType ATTACH_DETACH = new TransactionType("ATTACH_DETACH", 1);

    private static final /* synthetic */ TransactionType[] $values() {
        return new TransactionType[]{SHOW_HIDE, ATTACH_DETACH};
    }

    static {
        TransactionType[] transactionTypeArr$values = $values();
        $VALUES = transactionTypeArr$values;
        $ENTRIES = EnumEntriesKt.enumEntries(transactionTypeArr$values);
    }

    private TransactionType(String str, int i) {
    }

    public static EnumEntries<TransactionType> getEntries() {
        return $ENTRIES;
    }

    public static TransactionType valueOf(String str) {
        return (TransactionType) Enum.valueOf(TransactionType.class, str);
    }

    public static TransactionType[] values() {
        return (TransactionType[]) $VALUES.clone();
    }
}
