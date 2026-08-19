package com.boilerplate.navigator.transitionanimation;

import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes.dex */
@Metadata(m2721d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\b\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003j\u0002\b\u0004j\u0002\b\u0005j\u0002\b\u0006j\u0002\b\u0007j\u0002\b\b¨\u0006\t"}, m2722d2 = {"Lcom/boilerplate/navigator/transitionanimation/TransitionAnimationType;", "", "<init>", "(Ljava/lang/String;I)V", "LEFT_TO_RIGHT", "RIGHT_TO_LEFT", "BOTTOM_TO_TOP", "TOP_TO_BOTTOM", "FADE_IN_OUT", "navigator_release"}, m2723k = 1, m2724mv = {2, 0, 0}, m2726xi = 48)
public final class TransitionAnimationType {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ TransitionAnimationType[] $VALUES;
    public static final TransitionAnimationType LEFT_TO_RIGHT = new TransitionAnimationType("LEFT_TO_RIGHT", 0);
    public static final TransitionAnimationType RIGHT_TO_LEFT = new TransitionAnimationType("RIGHT_TO_LEFT", 1);
    public static final TransitionAnimationType BOTTOM_TO_TOP = new TransitionAnimationType("BOTTOM_TO_TOP", 2);
    public static final TransitionAnimationType TOP_TO_BOTTOM = new TransitionAnimationType("TOP_TO_BOTTOM", 3);
    public static final TransitionAnimationType FADE_IN_OUT = new TransitionAnimationType("FADE_IN_OUT", 4);

    private static final /* synthetic */ TransitionAnimationType[] $values() {
        return new TransitionAnimationType[]{LEFT_TO_RIGHT, RIGHT_TO_LEFT, BOTTOM_TO_TOP, TOP_TO_BOTTOM, FADE_IN_OUT};
    }

    static {
        TransitionAnimationType[] transitionAnimationTypeArr$values = $values();
        $VALUES = transitionAnimationTypeArr$values;
        $ENTRIES = EnumEntriesKt.enumEntries(transitionAnimationTypeArr$values);
    }

    private TransitionAnimationType(String str, int i) {
    }

    public static EnumEntries<TransitionAnimationType> getEntries() {
        return $ENTRIES;
    }

    public static TransitionAnimationType valueOf(String str) {
        return (TransitionAnimationType) Enum.valueOf(TransitionAnimationType.class, str);
    }

    public static TransitionAnimationType[] values() {
        return (TransitionAnimationType[]) $VALUES.clone();
    }
}
