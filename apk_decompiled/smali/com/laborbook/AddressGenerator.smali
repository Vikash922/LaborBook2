.class public final Lcom/laborbook/AddressGenerator;
.super Ljava/lang/Object;
.source "AddressGenerator.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/laborbook/AddressGenerator$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAddressGenerator.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AddressGenerator.kt\ncom/laborbook/AddressGenerator\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,25:1\n13402#2,2:26\n*S KotlinDebug\n*F\n+ 1 AddressGenerator.kt\ncom/laborbook/AddressGenerator\n*L\n13#1:26,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u000c\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005J\u001d\u0010\u0007\u001a\n \t*\u0004\u0018\u00010\u00080\u00082\u0006\u0010\n\u001a\u00020\u000bH\u0002\u00a2\u0006\u0002\u0010\u000c\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/laborbook/AddressGenerator;",
        "",
        "<init>",
        "()V",
        "generateAddressList",
        "",
        "Lcom/laborbook/base/navigator/ModuleNavigator$ActivityAddress;",
        "getClassName",
        "",
        "kotlin.jvm.PlatformType",
        "classNameEnum",
        "Lcom/laborbook/base/navigator/ActivitiesNameEnum;",
        "(Lcom/laborbook/base/navigator/ActivitiesNameEnum;)Ljava/lang/String;",
        "app_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final INSTANCE:Lcom/laborbook/AddressGenerator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/laborbook/AddressGenerator;

    invoke-direct {v0}, Lcom/laborbook/AddressGenerator;-><init>()V

    sput-object v0, Lcom/laborbook/AddressGenerator;->INSTANCE:Lcom/laborbook/AddressGenerator;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final getClassName(Lcom/laborbook/base/navigator/ActivitiesNameEnum;)Ljava/lang/String;
    .locals 1

    .line 20
    sget-object v0, Lcom/laborbook/AddressGenerator$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Lcom/laborbook/base/navigator/ActivitiesNameEnum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    .line 23
    const-class p1, Lcom/laborbook/keep/screen/BookKeepActivity;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 20
    :cond_0
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    .line 22
    :cond_1
    const-class p1, Lcom/laborbook/MainActivity;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 21
    :cond_2
    const-class p1, Lcom/laborbook/auth/screen/login/view/LoginActivity;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1
.end method


# virtual methods
.method public final generateAddressList()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/laborbook/base/navigator/ModuleNavigator$ActivityAddress;",
            ">;"
        }
    .end annotation

    .line 12
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 13
    invoke-static {}, Lcom/laborbook/base/navigator/ActivitiesNameEnum;->values()[Lcom/laborbook/base/navigator/ActivitiesNameEnum;

    move-result-object v1

    .line 26
    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    .line 14
    new-instance v5, Lcom/laborbook/base/navigator/ModuleNavigator$ActivityAddress;

    sget-object v6, Lcom/laborbook/AddressGenerator;->INSTANCE:Lcom/laborbook/AddressGenerator;

    invoke-direct {v6, v4}, Lcom/laborbook/AddressGenerator;->getClassName(Lcom/laborbook/base/navigator/ActivitiesNameEnum;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "getClassName(...)"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v5, v4, v6}, Lcom/laborbook/base/navigator/ModuleNavigator$ActivityAddress;-><init>(Lcom/laborbook/base/navigator/ActivitiesNameEnum;Ljava/lang/String;)V

    .line 15
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 17
    :cond_0
    check-cast v0, Ljava/util/List;

    return-object v0
.end method
