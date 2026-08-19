package com.laborbook.base.navigator;

import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: compiled from: ModuleNavigator.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(m2721d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0006\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003j\u0002\b\u0004j\u0002\b\u0005j\u0002\b\u0006¨\u0006\u0007"}, m2722d2 = {"Lcom/laborbook/base/navigator/ActivitiesNameEnum;", "", "<init>", "(Ljava/lang/String;I)V", "LoginActivityEnum", "MainActivityEnum", "BookKeepActivityEnum", "base_release"}, m2723k = 1, m2724mv = {2, 0, 0}, m2726xi = 48)
public final class ActivitiesNameEnum {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ ActivitiesNameEnum[] $VALUES;
    public static final ActivitiesNameEnum LoginActivityEnum = new ActivitiesNameEnum("LoginActivityEnum", 0);
    public static final ActivitiesNameEnum MainActivityEnum = new ActivitiesNameEnum("MainActivityEnum", 1);
    public static final ActivitiesNameEnum BookKeepActivityEnum = new ActivitiesNameEnum("BookKeepActivityEnum", 2);

    private static final /* synthetic */ ActivitiesNameEnum[] $values() {
        return new ActivitiesNameEnum[]{LoginActivityEnum, MainActivityEnum, BookKeepActivityEnum};
    }

    public static EnumEntries<ActivitiesNameEnum> getEntries() {
        return $ENTRIES;
    }

    private ActivitiesNameEnum(String str, int i) {
    }

    static {
        ActivitiesNameEnum[] activitiesNameEnumArr$values = $values();
        $VALUES = activitiesNameEnumArr$values;
        $ENTRIES = EnumEntriesKt.enumEntries(activitiesNameEnumArr$values);
    }

    public static ActivitiesNameEnum valueOf(String str) {
        return (ActivitiesNameEnum) Enum.valueOf(ActivitiesNameEnum.class, str);
    }

    public static ActivitiesNameEnum[] values() {
        return (ActivitiesNameEnum[]) $VALUES.clone();
    }
}
