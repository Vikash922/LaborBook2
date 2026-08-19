package com.google.firebase.crashlytics.internal;

import android.os.Looper;
import com.google.firebase.analytics.FirebaseAnalytics;
import kotlin.Metadata;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.FunctionReferenceImpl;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import org.shadow.apache.commons.lang3.ClassUtils;

/* JADX INFO: compiled from: CrashlyticsPreconditions.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(m2721d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u0006\bÀ\u0002\u0018\u00002\u00020\u0001:\u0001\u001bB\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\b\u0010\u000f\u001a\u00020\u0010H\u0007J\b\u0010\u0011\u001a\u00020\u0010H\u0007J\b\u0010\u0012\u001a\u00020\u0010H\u0007J$\u0010\u0013\u001a\u00020\u00102\f\u0010\u0014\u001a\b\u0012\u0004\u0012\u00020\u00160\u00152\f\u0010\u0017\u001a\b\u0012\u0004\u0012\u00020\u000b0\u0015H\u0002J\b\u0010\u0018\u001a\u00020\u0016H\u0002J\b\u0010\u0019\u001a\u00020\u0016H\u0002J\b\u0010\u001a\u001a\u00020\u0016H\u0002R$\u0010\u0003\u001a\u00020\u00048\u0006@\u0006X\u0087\u000e¢\u0006\u0014\n\u0000\u0012\u0004\b\u0005\u0010\u0002\u001a\u0004\b\u0006\u0010\u0007\"\u0004\b\b\u0010\tR\u001c\u0010\n\u001a\n \f*\u0004\u0018\u00010\u000b0\u000b8BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b\r\u0010\u000e¨\u0006\u001c"}, m2722d2 = {"Lcom/google/firebase/crashlytics/internal/CrashlyticsPreconditions;", "", "()V", "strictLevel", "Lcom/google/firebase/crashlytics/internal/CrashlyticsPreconditions$StrictLevel;", "getStrictLevel$annotations", "getStrictLevel", "()Lcom/google/firebase/crashlytics/internal/CrashlyticsPreconditions$StrictLevel;", "setStrictLevel", "(Lcom/google/firebase/crashlytics/internal/CrashlyticsPreconditions$StrictLevel;)V", "threadName", "", "kotlin.jvm.PlatformType", "getThreadName", "()Ljava/lang/String;", "checkBackgroundThread", "", "checkBlockingThread", "checkMainThread", "checkThread", "isCorrectThread", "Lkotlin/Function0;", "", "failureMessage", "isBackgroundThread", "isBlockingThread", "isMainThread", "StrictLevel", "com.google.firebase-firebase-crashlytics"}, m2723k = 1, m2724mv = {1, 8, 0}, m2726xi = 48)
public final class CrashlyticsPreconditions {
    public static final CrashlyticsPreconditions INSTANCE = new CrashlyticsPreconditions();
    private static StrictLevel strictLevel = StrictLevel.NONE;

    @JvmStatic
    public static /* synthetic */ void getStrictLevel$annotations() {
    }

    private CrashlyticsPreconditions() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final String getThreadName() {
        return Thread.currentThread().getName();
    }

    public static final StrictLevel getStrictLevel() {
        return strictLevel;
    }

    public static final void setStrictLevel(StrictLevel strictLevel2) {
        Intrinsics.checkNotNullParameter(strictLevel2, "<set-?>");
        strictLevel = strictLevel2;
    }

    /* JADX INFO: renamed from: com.google.firebase.crashlytics.internal.CrashlyticsPreconditions$checkMainThread$1 */
    /* JADX INFO: compiled from: CrashlyticsPreconditions.kt */
    /* JADX INFO: loaded from: classes6.dex */
    @Metadata(m2723k = 3, m2724mv = {1, 8, 0}, m2726xi = 48)
    /* synthetic */ class C22161 extends FunctionReferenceImpl implements Function0<Boolean> {
        C22161(Object obj) {
            super(0, obj, CrashlyticsPreconditions.class, "isMainThread", "isMainThread()Z", 0);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // kotlin.jvm.functions.Function0
        public final Boolean invoke() {
            return Boolean.valueOf(((CrashlyticsPreconditions) this.receiver).isMainThread());
        }
    }

    @JvmStatic
    public static final void checkMainThread() {
        CrashlyticsPreconditions crashlyticsPreconditions = INSTANCE;
        crashlyticsPreconditions.checkThread(new C22161(crashlyticsPreconditions), new Function0<String>() { // from class: com.google.firebase.crashlytics.internal.CrashlyticsPreconditions.checkMainThread.2
            @Override // kotlin.jvm.functions.Function0
            public final String invoke() {
                return "Must be called on the main thread, was called on " + CrashlyticsPreconditions.INSTANCE.getThreadName() + ClassUtils.PACKAGE_SEPARATOR_CHAR;
            }
        });
    }

    /* JADX INFO: renamed from: com.google.firebase.crashlytics.internal.CrashlyticsPreconditions$checkBlockingThread$1 */
    /* JADX INFO: compiled from: CrashlyticsPreconditions.kt */
    /* JADX INFO: loaded from: classes6.dex */
    @Metadata(m2723k = 3, m2724mv = {1, 8, 0}, m2726xi = 48)
    /* synthetic */ class C22141 extends FunctionReferenceImpl implements Function0<Boolean> {
        C22141(Object obj) {
            super(0, obj, CrashlyticsPreconditions.class, "isBlockingThread", "isBlockingThread()Z", 0);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // kotlin.jvm.functions.Function0
        public final Boolean invoke() {
            return Boolean.valueOf(((CrashlyticsPreconditions) this.receiver).isBlockingThread());
        }
    }

    @JvmStatic
    public static final void checkBlockingThread() {
        CrashlyticsPreconditions crashlyticsPreconditions = INSTANCE;
        crashlyticsPreconditions.checkThread(new C22141(crashlyticsPreconditions), new Function0<String>() { // from class: com.google.firebase.crashlytics.internal.CrashlyticsPreconditions.checkBlockingThread.2
            @Override // kotlin.jvm.functions.Function0
            public final String invoke() {
                return "Must be called on a blocking thread, was called on " + CrashlyticsPreconditions.INSTANCE.getThreadName() + ClassUtils.PACKAGE_SEPARATOR_CHAR;
            }
        });
    }

    /* JADX INFO: renamed from: com.google.firebase.crashlytics.internal.CrashlyticsPreconditions$checkBackgroundThread$1 */
    /* JADX INFO: compiled from: CrashlyticsPreconditions.kt */
    /* JADX INFO: loaded from: classes6.dex */
    @Metadata(m2723k = 3, m2724mv = {1, 8, 0}, m2726xi = 48)
    /* synthetic */ class C22121 extends FunctionReferenceImpl implements Function0<Boolean> {
        C22121(Object obj) {
            super(0, obj, CrashlyticsPreconditions.class, "isBackgroundThread", "isBackgroundThread()Z", 0);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // kotlin.jvm.functions.Function0
        public final Boolean invoke() {
            return Boolean.valueOf(((CrashlyticsPreconditions) this.receiver).isBackgroundThread());
        }
    }

    @JvmStatic
    public static final void checkBackgroundThread() {
        CrashlyticsPreconditions crashlyticsPreconditions = INSTANCE;
        crashlyticsPreconditions.checkThread(new C22121(crashlyticsPreconditions), new Function0<String>() { // from class: com.google.firebase.crashlytics.internal.CrashlyticsPreconditions.checkBackgroundThread.2
            @Override // kotlin.jvm.functions.Function0
            public final String invoke() {
                return "Must be called on a background thread, was called on " + CrashlyticsPreconditions.INSTANCE.getThreadName() + ClassUtils.PACKAGE_SEPARATOR_CHAR;
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean isMainThread() {
        return Looper.getMainLooper().isCurrentThread();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean isBlockingThread() {
        String threadName = getThreadName();
        Intrinsics.checkNotNullExpressionValue(threadName, "threadName");
        return StringsKt.contains$default((CharSequence) threadName, (CharSequence) "Firebase Blocking Thread #", false, 2, (Object) null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean isBackgroundThread() {
        String threadName = getThreadName();
        Intrinsics.checkNotNullExpressionValue(threadName, "threadName");
        if (!StringsKt.contains$default((CharSequence) threadName, (CharSequence) "Firebase Background Thread #", false, 2, (Object) null)) {
            String threadName2 = getThreadName();
            Intrinsics.checkNotNullExpressionValue(threadName2, "threadName");
            if (!StringsKt.contains$default((CharSequence) threadName2, (CharSequence) "Crashlytics Exception Handler", false, 2, (Object) null)) {
                return false;
            }
        }
        return true;
    }

    private final void checkThread(Function0<Boolean> isCorrectThread, Function0<String> failureMessage) {
        if (strictLevel.getLevel() < StrictLevel.WARN.getLevel() || isCorrectThread.invoke().booleanValue()) {
            return;
        }
        Logger.getLogger().m470w(failureMessage.invoke());
        strictLevel.getLevel();
        StrictLevel.ASSERT.getLevel();
        if (strictLevel.getLevel() >= StrictLevel.THROW.getLevel()) {
            throw new IllegalStateException(failureMessage.invoke().toString());
        }
    }

    /* JADX INFO: compiled from: CrashlyticsPreconditions.kt */
    @Metadata(m2721d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0010\u000f\n\u0000\n\u0002\u0010\b\n\u0002\b\b\b\u0086\u0001\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u00012\b\u0012\u0004\u0012\u00020\u00000\u0002B\u000f\b\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0004¢\u0006\u0002\u0010\u0005R\u0011\u0010\u0003\u001a\u00020\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007j\u0002\b\bj\u0002\b\tj\u0002\b\nj\u0002\b\u000b¨\u0006\f"}, m2722d2 = {"Lcom/google/firebase/crashlytics/internal/CrashlyticsPreconditions$StrictLevel;", "", "", FirebaseAnalytics.Param.LEVEL, "", "(Ljava/lang/String;II)V", "getLevel", "()I", "NONE", "WARN", "THROW", "ASSERT", "com.google.firebase-firebase-crashlytics"}, m2723k = 1, m2724mv = {1, 8, 0}, m2726xi = 48)
    public enum StrictLevel implements Comparable<StrictLevel> {
        NONE(0),
        WARN(1),
        THROW(2),
        ASSERT(3);

        private final int level;

        StrictLevel(int i) {
            this.level = i;
        }

        public final int getLevel() {
            return this.level;
        }
    }
}
