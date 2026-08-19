package com.rebuilt.app;

import com.rebuilt.app.auth.screen.login.view.LoginActivity;
import com.rebuilt.app.base.navigator.ActivitiesNameEnum;
import com.rebuilt.app.base.navigator.ModuleNavigator;
import com.rebuilt.app.keep.screen.BookKeepActivity;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: AddressGenerator.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(m2721d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005J\u001d\u0010\u0007\u001a\n \t*\u0004\u0018\u00010\b0\b2\u0006\u0010\n\u001a\u00020\u000bH\u0002¢\u0006\u0002\u0010\f¨\u0006\r"}, m2722d2 = {"Lcom/laborbook/AddressGenerator;", "", "<init>", "()V", "generateAddressList", "", "Lcom/laborbook/base/navigator/ModuleNavigator$ActivityAddress;", "getClassName", "", "kotlin.jvm.PlatformType", "classNameEnum", "Lcom/laborbook/base/navigator/ActivitiesNameEnum;", "(Lcom/laborbook/base/navigator/ActivitiesNameEnum;)Ljava/lang/String;", "app_release"}, m2723k = 1, m2724mv = {2, 0, 0}, m2726xi = 48)
public final class AddressGenerator {
    public static final AddressGenerator INSTANCE = new AddressGenerator();

    /* JADX INFO: compiled from: AddressGenerator.kt */
    @Metadata(m2723k = 3, m2724mv = {2, 0, 0}, m2726xi = 48)
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[ActivitiesNameEnum.values().length];
            try {
                iArr[ActivitiesNameEnum.LoginActivityEnum.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[ActivitiesNameEnum.MainActivityEnum.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[ActivitiesNameEnum.BookKeepActivityEnum.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    private AddressGenerator() {
    }

    public final List<ModuleNavigator.ActivityAddress> generateAddressList() {
        ArrayList arrayList = new ArrayList();
        for (ActivitiesNameEnum activitiesNameEnum : ActivitiesNameEnum.values()) {
            String className = INSTANCE.getClassName(activitiesNameEnum);
            Intrinsics.checkNotNullExpressionValue(className, "getClassName(...)");
            arrayList.add(new ModuleNavigator.ActivityAddress(activitiesNameEnum, className));
        }
        return arrayList;
    }

    private final String getClassName(ActivitiesNameEnum classNameEnum) {
        int i = WhenMappings.$EnumSwitchMapping$0[classNameEnum.ordinal()];
        if (i == 1) {
            return LoginActivity.class.getName();
        }
        if (i == 2) {
            return MainActivity.class.getName();
        }
        if (i != 3) {
            throw new NoWhenBranchMatchedException();
        }
        return BookKeepActivity.class.getName();
    }
}
