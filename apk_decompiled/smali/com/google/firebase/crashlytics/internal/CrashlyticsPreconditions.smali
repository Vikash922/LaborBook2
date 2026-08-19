.class public final Lcom/google/firebase/crashlytics/internal/CrashlyticsPreconditions;
.super Ljava/lang/Object;
.source "CrashlyticsPreconditions.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/crashlytics/internal/CrashlyticsPreconditions$StrictLevel;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0006\u0008\u00c0\u0002\u0018\u00002\u00020\u0001:\u0001\u001bB\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u000f\u001a\u00020\u0010H\u0007J\u0008\u0010\u0011\u001a\u00020\u0010H\u0007J\u0008\u0010\u0012\u001a\u00020\u0010H\u0007J$\u0010\u0013\u001a\u00020\u00102\u000c\u0010\u0014\u001a\u0008\u0012\u0004\u0012\u00020\u00160\u00152\u000c\u0010\u0017\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\u0015H\u0002J\u0008\u0010\u0018\u001a\u00020\u0016H\u0002J\u0008\u0010\u0019\u001a\u00020\u0016H\u0002J\u0008\u0010\u001a\u001a\u00020\u0016H\u0002R$\u0010\u0003\u001a\u00020\u00048\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0014\n\u0000\u0012\u0004\u0008\u0005\u0010\u0002\u001a\u0004\u0008\u0006\u0010\u0007\"\u0004\u0008\u0008\u0010\tR\u001c\u0010\n\u001a\n \u000c*\u0004\u0018\u00010\u000b0\u000b8BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\r\u0010\u000e\u00a8\u0006\u001c"
    }
    d2 = {
        "Lcom/google/firebase/crashlytics/internal/CrashlyticsPreconditions;",
        "",
        "()V",
        "strictLevel",
        "Lcom/google/firebase/crashlytics/internal/CrashlyticsPreconditions$StrictLevel;",
        "getStrictLevel$annotations",
        "getStrictLevel",
        "()Lcom/google/firebase/crashlytics/internal/CrashlyticsPreconditions$StrictLevel;",
        "setStrictLevel",
        "(Lcom/google/firebase/crashlytics/internal/CrashlyticsPreconditions$StrictLevel;)V",
        "threadName",
        "",
        "kotlin.jvm.PlatformType",
        "getThreadName",
        "()Ljava/lang/String;",
        "checkBackgroundThread",
        "",
        "checkBlockingThread",
        "checkMainThread",
        "checkThread",
        "isCorrectThread",
        "Lkotlin/Function0;",
        "",
        "failureMessage",
        "isBackgroundThread",
        "isBlockingThread",
        "isMainThread",
        "StrictLevel",
        "com.google.firebase-firebase-crashlytics"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final INSTANCE:Lcom/google/firebase/crashlytics/internal/CrashlyticsPreconditions;

.field private static strictLevel:Lcom/google/firebase/crashlytics/internal/CrashlyticsPreconditions$StrictLevel;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/firebase/crashlytics/internal/CrashlyticsPreconditions;

    invoke-direct {v0}, Lcom/google/firebase/crashlytics/internal/CrashlyticsPreconditions;-><init>()V

    sput-object v0, Lcom/google/firebase/crashlytics/internal/CrashlyticsPreconditions;->INSTANCE:Lcom/google/firebase/crashlytics/internal/CrashlyticsPreconditions;

    .line 36
    sget-object v0, Lcom/google/firebase/crashlytics/internal/CrashlyticsPreconditions$StrictLevel;->NONE:Lcom/google/firebase/crashlytics/internal/CrashlyticsPreconditions$StrictLevel;

    sput-object v0, Lcom/google/firebase/crashlytics/internal/CrashlyticsPreconditions;->strictLevel:Lcom/google/firebase/crashlytics/internal/CrashlyticsPreconditions$StrictLevel;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic access$getThreadName(Lcom/google/firebase/crashlytics/internal/CrashlyticsPreconditions;)Ljava/lang/String;
    .locals 0

    .line 31
    invoke-direct {p0}, Lcom/google/firebase/crashlytics/internal/CrashlyticsPreconditions;->getThreadName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$isBackgroundThread(Lcom/google/firebase/crashlytics/internal/CrashlyticsPreconditions;)Z
    .locals 0

    .line 31
    invoke-direct {p0}, Lcom/google/firebase/crashlytics/internal/CrashlyticsPreconditions;->isBackgroundThread()Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$isBlockingThread(Lcom/google/firebase/crashlytics/internal/CrashlyticsPreconditions;)Z
    .locals 0

    .line 31
    invoke-direct {p0}, Lcom/google/firebase/crashlytics/internal/CrashlyticsPreconditions;->isBlockingThread()Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$isMainThread(Lcom/google/firebase/crashlytics/internal/CrashlyticsPreconditions;)Z
    .locals 0

    .line 31
    invoke-direct {p0}, Lcom/google/firebase/crashlytics/internal/CrashlyticsPreconditions;->isMainThread()Z

    move-result p0

    return p0
.end method

.method public static final checkBackgroundThread()V
    .locals 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 50
    sget-object v0, Lcom/google/firebase/crashlytics/internal/CrashlyticsPreconditions;->INSTANCE:Lcom/google/firebase/crashlytics/internal/CrashlyticsPreconditions;

    new-instance v1, Lcom/google/firebase/crashlytics/internal/CrashlyticsPreconditions$checkBackgroundThread$1;

    invoke-direct {v1, v0}, Lcom/google/firebase/crashlytics/internal/CrashlyticsPreconditions$checkBackgroundThread$1;-><init>(Ljava/lang/Object;)V

    check-cast v1, Lkotlin/jvm/functions/Function0;

    sget-object v2, Lcom/google/firebase/crashlytics/internal/CrashlyticsPreconditions$checkBackgroundThread$2;->INSTANCE:Lcom/google/firebase/crashlytics/internal/CrashlyticsPreconditions$checkBackgroundThread$2;

    check-cast v2, Lkotlin/jvm/functions/Function0;

    invoke-direct {v0, v1, v2}, Lcom/google/firebase/crashlytics/internal/CrashlyticsPreconditions;->checkThread(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public static final checkBlockingThread()V
    .locals 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 44
    sget-object v0, Lcom/google/firebase/crashlytics/internal/CrashlyticsPreconditions;->INSTANCE:Lcom/google/firebase/crashlytics/internal/CrashlyticsPreconditions;

    new-instance v1, Lcom/google/firebase/crashlytics/internal/CrashlyticsPreconditions$checkBlockingThread$1;

    invoke-direct {v1, v0}, Lcom/google/firebase/crashlytics/internal/CrashlyticsPreconditions$checkBlockingThread$1;-><init>(Ljava/lang/Object;)V

    check-cast v1, Lkotlin/jvm/functions/Function0;

    sget-object v2, Lcom/google/firebase/crashlytics/internal/CrashlyticsPreconditions$checkBlockingThread$2;->INSTANCE:Lcom/google/firebase/crashlytics/internal/CrashlyticsPreconditions$checkBlockingThread$2;

    check-cast v2, Lkotlin/jvm/functions/Function0;

    invoke-direct {v0, v1, v2}, Lcom/google/firebase/crashlytics/internal/CrashlyticsPreconditions;->checkThread(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public static final checkMainThread()V
    .locals 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 40
    sget-object v0, Lcom/google/firebase/crashlytics/internal/CrashlyticsPreconditions;->INSTANCE:Lcom/google/firebase/crashlytics/internal/CrashlyticsPreconditions;

    new-instance v1, Lcom/google/firebase/crashlytics/internal/CrashlyticsPreconditions$checkMainThread$1;

    invoke-direct {v1, v0}, Lcom/google/firebase/crashlytics/internal/CrashlyticsPreconditions$checkMainThread$1;-><init>(Ljava/lang/Object;)V

    check-cast v1, Lkotlin/jvm/functions/Function0;

    sget-object v2, Lcom/google/firebase/crashlytics/internal/CrashlyticsPreconditions$checkMainThread$2;->INSTANCE:Lcom/google/firebase/crashlytics/internal/CrashlyticsPreconditions$checkMainThread$2;

    check-cast v2, Lkotlin/jvm/functions/Function0;

    invoke-direct {v0, v1, v2}, Lcom/google/firebase/crashlytics/internal/CrashlyticsPreconditions;->checkThread(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method private final checkThread(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/lang/Boolean;",
            ">;",
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 69
    sget-object v0, Lcom/google/firebase/crashlytics/internal/CrashlyticsPreconditions;->strictLevel:Lcom/google/firebase/crashlytics/internal/CrashlyticsPreconditions$StrictLevel;

    invoke-virtual {v0}, Lcom/google/firebase/crashlytics/internal/CrashlyticsPreconditions$StrictLevel;->getLevel()I

    move-result v0

    sget-object v1, Lcom/google/firebase/crashlytics/internal/CrashlyticsPreconditions$StrictLevel;->WARN:Lcom/google/firebase/crashlytics/internal/CrashlyticsPreconditions$StrictLevel;

    invoke-virtual {v1}, Lcom/google/firebase/crashlytics/internal/CrashlyticsPreconditions$StrictLevel;->getLevel()I

    move-result v1

    if-lt v0, v1, :cond_1

    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_1

    .line 70
    invoke-static {}, Lcom/google/firebase/crashlytics/internal/Logger;->getLogger()Lcom/google/firebase/crashlytics/internal/Logger;

    move-result-object p1

    invoke-interface {p2}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/google/firebase/crashlytics/internal/Logger;->w(Ljava/lang/String;)V

    .line 71
    sget-object p1, Lcom/google/firebase/crashlytics/internal/CrashlyticsPreconditions;->strictLevel:Lcom/google/firebase/crashlytics/internal/CrashlyticsPreconditions$StrictLevel;

    invoke-virtual {p1}, Lcom/google/firebase/crashlytics/internal/CrashlyticsPreconditions$StrictLevel;->getLevel()I

    sget-object p1, Lcom/google/firebase/crashlytics/internal/CrashlyticsPreconditions$StrictLevel;->ASSERT:Lcom/google/firebase/crashlytics/internal/CrashlyticsPreconditions$StrictLevel;

    invoke-virtual {p1}, Lcom/google/firebase/crashlytics/internal/CrashlyticsPreconditions$StrictLevel;->getLevel()I

    .line 72
    sget-object p1, Lcom/google/firebase/crashlytics/internal/CrashlyticsPreconditions;->strictLevel:Lcom/google/firebase/crashlytics/internal/CrashlyticsPreconditions$StrictLevel;

    invoke-virtual {p1}, Lcom/google/firebase/crashlytics/internal/CrashlyticsPreconditions$StrictLevel;->getLevel()I

    move-result p1

    sget-object v0, Lcom/google/firebase/crashlytics/internal/CrashlyticsPreconditions$StrictLevel;->THROW:Lcom/google/firebase/crashlytics/internal/CrashlyticsPreconditions$StrictLevel;

    invoke-virtual {v0}, Lcom/google/firebase/crashlytics/internal/CrashlyticsPreconditions$StrictLevel;->getLevel()I

    move-result v0

    if-ge p1, v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p2}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_1
    :goto_0
    return-void
.end method

.method public static final getStrictLevel()Lcom/google/firebase/crashlytics/internal/CrashlyticsPreconditions$StrictLevel;
    .locals 1

    .line 36
    sget-object v0, Lcom/google/firebase/crashlytics/internal/CrashlyticsPreconditions;->strictLevel:Lcom/google/firebase/crashlytics/internal/CrashlyticsPreconditions$StrictLevel;

    return-object v0
.end method

.method public static synthetic getStrictLevel$annotations()V
    .locals 0
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    return-void
.end method

.method private final getThreadName()Ljava/lang/String;
    .locals 1

    .line 33
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private final isBackgroundThread()Z
    .locals 6

    .line 65
    invoke-direct {p0}, Lcom/google/firebase/crashlytics/internal/CrashlyticsPreconditions;->getThreadName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "threadName"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/CharSequence;

    const-string v2, "Firebase Background Thread #"

    check-cast v2, Ljava/lang/CharSequence;

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-static {v0, v2, v3, v4, v5}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 66
    invoke-direct {p0}, Lcom/google/firebase/crashlytics/internal/CrashlyticsPreconditions;->getThreadName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/CharSequence;

    const-string v1, "Crashlytics Exception Handler"

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v0, v1, v3, v4, v5}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v3, 0x1

    :cond_1
    return v3
.end method

.method private final isBlockingThread()Z
    .locals 5

    .line 61
    invoke-direct {p0}, Lcom/google/firebase/crashlytics/internal/CrashlyticsPreconditions;->getThreadName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "threadName"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/CharSequence;

    const-string v1, "Firebase Blocking Thread #"

    check-cast v1, Ljava/lang/CharSequence;

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v0, v1, v4, v2, v3}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private final isMainThread()Z
    .locals 1

    .line 56
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->isCurrentThread()Z

    move-result v0

    return v0
.end method

.method public static final setStrictLevel(Lcom/google/firebase/crashlytics/internal/CrashlyticsPreconditions$StrictLevel;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    sput-object p0, Lcom/google/firebase/crashlytics/internal/CrashlyticsPreconditions;->strictLevel:Lcom/google/firebase/crashlytics/internal/CrashlyticsPreconditions$StrictLevel;

    return-void
.end method
