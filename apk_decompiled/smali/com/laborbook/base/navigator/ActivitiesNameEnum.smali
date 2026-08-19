.class public final enum Lcom/laborbook/base/navigator/ActivitiesNameEnum;
.super Ljava/lang/Enum;
.source "ModuleNavigator.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/laborbook/base/navigator/ActivitiesNameEnum;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\u0006\u0008\u0086\u0081\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003j\u0002\u0008\u0004j\u0002\u0008\u0005j\u0002\u0008\u0006\u00a8\u0006\u0007"
    }
    d2 = {
        "Lcom/laborbook/base/navigator/ActivitiesNameEnum;",
        "",
        "<init>",
        "(Ljava/lang/String;I)V",
        "LoginActivityEnum",
        "MainActivityEnum",
        "BookKeepActivityEnum",
        "base_release"
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
.field private static final synthetic $ENTRIES:Lkotlin/enums/EnumEntries;

.field private static final synthetic $VALUES:[Lcom/laborbook/base/navigator/ActivitiesNameEnum;

.field public static final enum BookKeepActivityEnum:Lcom/laborbook/base/navigator/ActivitiesNameEnum;

.field public static final enum LoginActivityEnum:Lcom/laborbook/base/navigator/ActivitiesNameEnum;

.field public static final enum MainActivityEnum:Lcom/laborbook/base/navigator/ActivitiesNameEnum;


# direct methods
.method private static final synthetic $values()[Lcom/laborbook/base/navigator/ActivitiesNameEnum;
    .locals 3

    sget-object v0, Lcom/laborbook/base/navigator/ActivitiesNameEnum;->LoginActivityEnum:Lcom/laborbook/base/navigator/ActivitiesNameEnum;

    sget-object v1, Lcom/laborbook/base/navigator/ActivitiesNameEnum;->MainActivityEnum:Lcom/laborbook/base/navigator/ActivitiesNameEnum;

    sget-object v2, Lcom/laborbook/base/navigator/ActivitiesNameEnum;->BookKeepActivityEnum:Lcom/laborbook/base/navigator/ActivitiesNameEnum;

    filled-new-array {v0, v1, v2}, [Lcom/laborbook/base/navigator/ActivitiesNameEnum;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 29
    new-instance v0, Lcom/laborbook/base/navigator/ActivitiesNameEnum;

    const-string v1, "LoginActivityEnum"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/laborbook/base/navigator/ActivitiesNameEnum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/laborbook/base/navigator/ActivitiesNameEnum;->LoginActivityEnum:Lcom/laborbook/base/navigator/ActivitiesNameEnum;

    .line 30
    new-instance v0, Lcom/laborbook/base/navigator/ActivitiesNameEnum;

    const-string v1, "MainActivityEnum"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/laborbook/base/navigator/ActivitiesNameEnum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/laborbook/base/navigator/ActivitiesNameEnum;->MainActivityEnum:Lcom/laborbook/base/navigator/ActivitiesNameEnum;

    .line 31
    new-instance v0, Lcom/laborbook/base/navigator/ActivitiesNameEnum;

    const-string v1, "BookKeepActivityEnum"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/laborbook/base/navigator/ActivitiesNameEnum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/laborbook/base/navigator/ActivitiesNameEnum;->BookKeepActivityEnum:Lcom/laborbook/base/navigator/ActivitiesNameEnum;

    invoke-static {}, Lcom/laborbook/base/navigator/ActivitiesNameEnum;->$values()[Lcom/laborbook/base/navigator/ActivitiesNameEnum;

    move-result-object v0

    sput-object v0, Lcom/laborbook/base/navigator/ActivitiesNameEnum;->$VALUES:[Lcom/laborbook/base/navigator/ActivitiesNameEnum;

    check-cast v0, [Ljava/lang/Enum;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lcom/laborbook/base/navigator/ActivitiesNameEnum;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 28
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static getEntries()Lkotlin/enums/EnumEntries;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/enums/EnumEntries<",
            "Lcom/laborbook/base/navigator/ActivitiesNameEnum;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/laborbook/base/navigator/ActivitiesNameEnum;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/laborbook/base/navigator/ActivitiesNameEnum;
    .locals 1

    const-class v0, Lcom/laborbook/base/navigator/ActivitiesNameEnum;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .line 32
    check-cast p0, Lcom/laborbook/base/navigator/ActivitiesNameEnum;

    return-object p0
.end method

.method public static values()[Lcom/laborbook/base/navigator/ActivitiesNameEnum;
    .locals 1

    sget-object v0, Lcom/laborbook/base/navigator/ActivitiesNameEnum;->$VALUES:[Lcom/laborbook/base/navigator/ActivitiesNameEnum;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    .line 32
    check-cast v0, [Lcom/laborbook/base/navigator/ActivitiesNameEnum;

    return-object v0
.end method
