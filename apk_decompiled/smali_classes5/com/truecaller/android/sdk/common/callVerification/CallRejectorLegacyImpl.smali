.class public final Lcom/truecaller/android/sdk/common/callVerification/CallRejectorLegacyImpl;
.super Ljava/lang/Object;
.source "CallRejector.kt"

# interfaces
.implements Lcom/truecaller/android/sdk/common/callVerification/CallRejector;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCallRejector.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CallRejector.kt\ncom/truecaller/android/sdk/common/callVerification/CallRejectorLegacyImpl\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n+ 4 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n*L\n1#1,97:1\n1#2:98\n11065#3:99\n11400#3,3:100\n37#4,2:103\n*S KotlinDebug\n*F\n+ 1 CallRejector.kt\ncom/truecaller/android/sdk/common/callVerification/CallRejectorLegacyImpl\n*L\n79#1:99\n79#1:100,3\n79#1:103,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u0011\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0008\u0010\u0007\u001a\u00020\u0008H\u0016J\u0016\u0010\t\u001a\u0004\u0018\u00010\n*\u00020\n2\u0006\u0010\u000b\u001a\u00020\u000cH\u0002J/\u0010\t\u001a\u0004\u0018\u00010\n*\u00020\n2\u0006\u0010\r\u001a\u00020\u000c2\u0012\u0010\u000e\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020\n0\u000f\"\u00020\nH\u0002\u00a2\u0006\u0002\u0010\u0010R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/truecaller/android/sdk/common/callVerification/CallRejectorLegacyImpl;",
        "Lcom/truecaller/android/sdk/common/callVerification/CallRejector;",
        "context",
        "Landroid/content/Context;",
        "(Landroid/content/Context;)V",
        "telephonyManager",
        "Landroid/telephony/TelephonyManager;",
        "reject",
        "",
        "invoke",
        "",
        "methodName",
        "",
        "name",
        "parameters",
        "",
        "(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;",
        "sdk-external_googlePlayOAuthReleasePartner"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final telephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    const-string v0, "phone"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type android.telephony.TelephonyManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/telephony/TelephonyManager;

    iput-object p1, p0, Lcom/truecaller/android/sdk/common/callVerification/CallRejectorLegacyImpl;->telephonyManager:Landroid/telephony/TelephonyManager;

    return-void
.end method

.method private final invoke(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .locals 3

    .line 73
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Class;

    invoke-virtual {v0, p2, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p2

    const/4 v0, 0x1

    .line 74
    invoke-virtual {p2, v0}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 75
    new-array v0, v1, [Ljava/lang/Object;

    invoke-virtual {p2, p1, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method private final varargs invoke(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 79
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 99
    new-instance v1, Ljava/util/ArrayList;

    array-length v2, p3

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v1, Ljava/util/Collection;

    .line 100
    array-length v2, p3

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_0

    aget-object v5, p3, v4

    .line 79
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    .line 101
    invoke-interface {v1, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 102
    :cond_0
    check-cast v1, Ljava/util/List;

    .line 99
    check-cast v1, Ljava/util/Collection;

    .line 104
    new-array v2, v3, [Ljava/lang/Class;

    invoke-interface {v1, v2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    .line 79
    check-cast v1, [Ljava/lang/Class;

    array-length v2, v1

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Class;

    invoke-virtual {v0, p2, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p2

    const/4 v0, 0x1

    .line 80
    invoke-virtual {p2, v0}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 81
    filled-new-array {p3}, [Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {p2, p1, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public reject()Z
    .locals 6

    .line 55
    const-string v0, "endCall"

    const/4 v1, 0x1

    .line 56
    :try_start_0
    iget-object v2, p0, Lcom/truecaller/android/sdk/common/callVerification/CallRejectorLegacyImpl;->telephonyManager:Landroid/telephony/TelephonyManager;

    const-string v3, "getITelephony"

    invoke-direct {p0, v2, v3}, Lcom/truecaller/android/sdk/common/callVerification/CallRejectorLegacyImpl;->invoke(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-direct {p0, v2, v0}, Lcom/truecaller/android/sdk/common/callVerification/CallRejectorLegacyImpl;->invoke(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return v1

    :catch_0
    const/4 v2, 0x0

    .line 62
    :try_start_1
    iget-object v3, p0, Lcom/truecaller/android/sdk/common/callVerification/CallRejectorLegacyImpl;->telephonyManager:Landroid/telephony/TelephonyManager;

    const-string v4, "getITelephonyMSim"

    invoke-direct {p0, v3, v4}, Lcom/truecaller/android/sdk/common/callVerification/CallRejectorLegacyImpl;->invoke(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 64
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    invoke-direct {p0, v3, v0, v4}, Lcom/truecaller/android/sdk/common/callVerification/CallRejectorLegacyImpl;->invoke(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    invoke-direct {p0, v3, v0, v4}, Lcom/truecaller/android/sdk/common/callVerification/CallRejectorLegacyImpl;->invoke(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_1
    return v1

    :catch_1
    :cond_2
    return v2
.end method
