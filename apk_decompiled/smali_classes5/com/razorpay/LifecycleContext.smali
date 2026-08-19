.class public final enum Lcom/razorpay/LifecycleContext;
.super Ljava/lang/Enum;
.source "LifecycleContext.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/razorpay/LifecycleContext$Companion;,
        Lcom/razorpay/LifecycleContext$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/razorpay/LifecycleContext;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\t\u0008\u0087\u0001\u0018\u0000 \u000b2\u0008\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\u000bB\u000f\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0018\u0010\u0005\u001a\u00020\u00032\u0006\u0010\u0006\u001a\u00020\u00032\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0003J\u0010\u0010\u0005\u001a\u00020\u00032\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0003J\u0006\u0010\u0008\u001a\u00020\u0003R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000j\u0002\u0008\tj\u0002\u0008\n\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/razorpay/LifecycleContext;",
        "",
        "contextTemplate",
        "",
        "(Ljava/lang/String;ILjava/lang/String;)V",
        "format",
        "tokenName",
        "value",
        "getTemplate",
        "REDIRECTING_TO_APP",
        "REDIRECTING_USING_SCHEME",
        "Companion",
        "core_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x6,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final Companion:Lcom/razorpay/LifecycleContext$Companion;

.field public static final enum REDIRECTING_TO_APP:Lcom/razorpay/LifecycleContext;

.field public static final enum REDIRECTING_USING_SCHEME:Lcom/razorpay/LifecycleContext;

.field private static final synthetic l$1_I$l$:[Lcom/razorpay/LifecycleContext;


# instance fields
.field private final contextTemplate:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 21
    new-instance v0, Lcom/razorpay/LifecycleContext;

    const/4 v1, 0x0

    const-string v2, "Redirecting to {package_name} app."

    const-string v3, "REDIRECTING_TO_APP"

    invoke-direct {v0, v3, v1, v2}, Lcom/razorpay/LifecycleContext;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/razorpay/LifecycleContext;->REDIRECTING_TO_APP:Lcom/razorpay/LifecycleContext;

    .line 27
    new-instance v0, Lcom/razorpay/LifecycleContext;

    const/4 v1, 0x1

    const-string v2, "Redirecting using {scheme} scheme."

    const-string v3, "REDIRECTING_USING_SCHEME"

    invoke-direct {v0, v3, v1, v2}, Lcom/razorpay/LifecycleContext;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/razorpay/LifecycleContext;->REDIRECTING_USING_SCHEME:Lcom/razorpay/LifecycleContext;

    invoke-static {}, Lcom/razorpay/LifecycleContext;->l$1_I$l$()[Lcom/razorpay/LifecycleContext;

    move-result-object v0

    sput-object v0, Lcom/razorpay/LifecycleContext;->l$1_I$l$:[Lcom/razorpay/LifecycleContext;

    new-instance v0, Lcom/razorpay/LifecycleContext$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/razorpay/LifecycleContext$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/razorpay/LifecycleContext;->Companion:Lcom/razorpay/LifecycleContext$Companion;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 13
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 15
    iput-object p3, p0, Lcom/razorpay/LifecycleContext;->contextTemplate:Ljava/lang/String;

    return-void
.end method

.method private static final synthetic l$1_I$l$()[Lcom/razorpay/LifecycleContext;
    .locals 2

    sget-object v0, Lcom/razorpay/LifecycleContext;->REDIRECTING_TO_APP:Lcom/razorpay/LifecycleContext;

    sget-object v1, Lcom/razorpay/LifecycleContext;->REDIRECTING_USING_SCHEME:Lcom/razorpay/LifecycleContext;

    filled-new-array {v0, v1}, [Lcom/razorpay/LifecycleContext;

    move-result-object v0

    return-object v0
.end method

.method public static final redirectingToApp(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/razorpay/LifecycleContext;->Companion:Lcom/razorpay/LifecycleContext$Companion;

    invoke-virtual {v0, p0}, Lcom/razorpay/LifecycleContext$Companion;->redirectingToApp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final redirectingUsingScheme(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/razorpay/LifecycleContext;->Companion:Lcom/razorpay/LifecycleContext$Companion;

    invoke-virtual {v0, p0}, Lcom/razorpay/LifecycleContext$Companion;->redirectingUsingScheme(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/razorpay/LifecycleContext;
    .locals 1

    const-class v0, Lcom/razorpay/LifecycleContext;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/razorpay/LifecycleContext;

    return-object p0
.end method

.method public static values()[Lcom/razorpay/LifecycleContext;
    .locals 1

    sget-object v0, Lcom/razorpay/LifecycleContext;->l$1_I$l$:[Lcom/razorpay/LifecycleContext;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/razorpay/LifecycleContext;

    return-object v0
.end method


# virtual methods
.method public final format(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    if-nez p1, :cond_0

    .line 43
    const-string p1, "null"

    :cond_0
    move-object v2, p1

    .line 44
    sget-object p1, Lcom/razorpay/LifecycleContext$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p0}, Lcom/razorpay/LifecycleContext;->ordinal()I

    move-result v0

    aget p1, p1, v0

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 46
    iget-object v0, p0, Lcom/razorpay/LifecycleContext;->contextTemplate:Ljava/lang/String;

    const/4 v4, 0x4

    const/4 v5, 0x0

    const-string v1, "{scheme}"

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    .line 45
    :cond_2
    iget-object v0, p0, Lcom/razorpay/LifecycleContext;->contextTemplate:Ljava/lang/String;

    const/4 v4, 0x4

    const/4 v5, 0x0

    const-string v1, "{package_name}"

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public final format(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    const-string v0, "tokenName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p2, :cond_0

    .line 59
    const-string p2, "null"

    :cond_0
    move-object v2, p2

    .line 60
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "{"

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const/16 p2, 0x7d

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 61
    iget-object v0, p0, Lcom/razorpay/LifecycleContext;->contextTemplate:Ljava/lang/String;

    const/4 v4, 0x4

    const/4 v5, 0x0

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final getTemplate()Ljava/lang/String;
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/razorpay/LifecycleContext;->contextTemplate:Ljava/lang/String;

    return-object v0
.end method
