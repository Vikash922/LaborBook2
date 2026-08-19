.class public final enum Lcom/boilerplate/navigator/transitionanimation/TransitionAnimationType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/boilerplate/navigator/transitionanimation/TransitionAnimationType;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\u0008\u0008\u0086\u0081\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003j\u0002\u0008\u0004j\u0002\u0008\u0005j\u0002\u0008\u0006j\u0002\u0008\u0007j\u0002\u0008\u0008\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/boilerplate/navigator/transitionanimation/TransitionAnimationType;",
        "",
        "<init>",
        "(Ljava/lang/String;I)V",
        "LEFT_TO_RIGHT",
        "RIGHT_TO_LEFT",
        "BOTTOM_TO_TOP",
        "TOP_TO_BOTTOM",
        "FADE_IN_OUT",
        "navigator_release"
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

.field private static final synthetic $VALUES:[Lcom/boilerplate/navigator/transitionanimation/TransitionAnimationType;

.field public static final enum BOTTOM_TO_TOP:Lcom/boilerplate/navigator/transitionanimation/TransitionAnimationType;

.field public static final enum FADE_IN_OUT:Lcom/boilerplate/navigator/transitionanimation/TransitionAnimationType;

.field public static final enum LEFT_TO_RIGHT:Lcom/boilerplate/navigator/transitionanimation/TransitionAnimationType;

.field public static final enum RIGHT_TO_LEFT:Lcom/boilerplate/navigator/transitionanimation/TransitionAnimationType;

.field public static final enum TOP_TO_BOTTOM:Lcom/boilerplate/navigator/transitionanimation/TransitionAnimationType;


# direct methods
.method private static final synthetic $values()[Lcom/boilerplate/navigator/transitionanimation/TransitionAnimationType;
    .locals 5

    sget-object v0, Lcom/boilerplate/navigator/transitionanimation/TransitionAnimationType;->LEFT_TO_RIGHT:Lcom/boilerplate/navigator/transitionanimation/TransitionAnimationType;

    sget-object v1, Lcom/boilerplate/navigator/transitionanimation/TransitionAnimationType;->RIGHT_TO_LEFT:Lcom/boilerplate/navigator/transitionanimation/TransitionAnimationType;

    sget-object v2, Lcom/boilerplate/navigator/transitionanimation/TransitionAnimationType;->BOTTOM_TO_TOP:Lcom/boilerplate/navigator/transitionanimation/TransitionAnimationType;

    sget-object v3, Lcom/boilerplate/navigator/transitionanimation/TransitionAnimationType;->TOP_TO_BOTTOM:Lcom/boilerplate/navigator/transitionanimation/TransitionAnimationType;

    sget-object v4, Lcom/boilerplate/navigator/transitionanimation/TransitionAnimationType;->FADE_IN_OUT:Lcom/boilerplate/navigator/transitionanimation/TransitionAnimationType;

    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/boilerplate/navigator/transitionanimation/TransitionAnimationType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/boilerplate/navigator/transitionanimation/TransitionAnimationType;

    const-string v1, "LEFT_TO_RIGHT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/boilerplate/navigator/transitionanimation/TransitionAnimationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/boilerplate/navigator/transitionanimation/TransitionAnimationType;->LEFT_TO_RIGHT:Lcom/boilerplate/navigator/transitionanimation/TransitionAnimationType;

    new-instance v0, Lcom/boilerplate/navigator/transitionanimation/TransitionAnimationType;

    const-string v1, "RIGHT_TO_LEFT"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/boilerplate/navigator/transitionanimation/TransitionAnimationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/boilerplate/navigator/transitionanimation/TransitionAnimationType;->RIGHT_TO_LEFT:Lcom/boilerplate/navigator/transitionanimation/TransitionAnimationType;

    new-instance v0, Lcom/boilerplate/navigator/transitionanimation/TransitionAnimationType;

    const-string v1, "BOTTOM_TO_TOP"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/boilerplate/navigator/transitionanimation/TransitionAnimationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/boilerplate/navigator/transitionanimation/TransitionAnimationType;->BOTTOM_TO_TOP:Lcom/boilerplate/navigator/transitionanimation/TransitionAnimationType;

    new-instance v0, Lcom/boilerplate/navigator/transitionanimation/TransitionAnimationType;

    const-string v1, "TOP_TO_BOTTOM"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/boilerplate/navigator/transitionanimation/TransitionAnimationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/boilerplate/navigator/transitionanimation/TransitionAnimationType;->TOP_TO_BOTTOM:Lcom/boilerplate/navigator/transitionanimation/TransitionAnimationType;

    new-instance v0, Lcom/boilerplate/navigator/transitionanimation/TransitionAnimationType;

    const-string v1, "FADE_IN_OUT"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/boilerplate/navigator/transitionanimation/TransitionAnimationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/boilerplate/navigator/transitionanimation/TransitionAnimationType;->FADE_IN_OUT:Lcom/boilerplate/navigator/transitionanimation/TransitionAnimationType;

    invoke-static {}, Lcom/boilerplate/navigator/transitionanimation/TransitionAnimationType;->$values()[Lcom/boilerplate/navigator/transitionanimation/TransitionAnimationType;

    move-result-object v0

    sput-object v0, Lcom/boilerplate/navigator/transitionanimation/TransitionAnimationType;->$VALUES:[Lcom/boilerplate/navigator/transitionanimation/TransitionAnimationType;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lcom/boilerplate/navigator/transitionanimation/TransitionAnimationType;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static getEntries()Lkotlin/enums/EnumEntries;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/enums/EnumEntries<",
            "Lcom/boilerplate/navigator/transitionanimation/TransitionAnimationType;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/boilerplate/navigator/transitionanimation/TransitionAnimationType;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/boilerplate/navigator/transitionanimation/TransitionAnimationType;
    .locals 1

    const-class v0, Lcom/boilerplate/navigator/transitionanimation/TransitionAnimationType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/boilerplate/navigator/transitionanimation/TransitionAnimationType;

    return-object p0
.end method

.method public static values()[Lcom/boilerplate/navigator/transitionanimation/TransitionAnimationType;
    .locals 1

    sget-object v0, Lcom/boilerplate/navigator/transitionanimation/TransitionAnimationType;->$VALUES:[Lcom/boilerplate/navigator/transitionanimation/TransitionAnimationType;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/boilerplate/navigator/transitionanimation/TransitionAnimationType;

    return-object v0
.end method
