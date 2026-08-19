.class public final enum Lcom/truecaller/android/sdk/common/callVerification/RequestPermissionHandler$Status;
.super Ljava/lang/Enum;
.source "RequestPermissionHandler.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/truecaller/android/sdk/common/callVerification/RequestPermissionHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Status"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/truecaller/android/sdk/common/callVerification/RequestPermissionHandler$Status;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\u0006\u0008\u0086\u0081\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002j\u0002\u0008\u0003j\u0002\u0008\u0004j\u0002\u0008\u0005j\u0002\u0008\u0006\u00a8\u0006\u0007"
    }
    d2 = {
        "Lcom/truecaller/android/sdk/common/callVerification/RequestPermissionHandler$Status;",
        "",
        "(Ljava/lang/String;I)V",
        "GRANTED",
        "UN_GRANTED",
        "TEMPORARY_DENIED",
        "PERMANENT_DENIED",
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


# static fields
.field private static final synthetic $ENTRIES:Lkotlin/enums/EnumEntries;

.field private static final synthetic $VALUES:[Lcom/truecaller/android/sdk/common/callVerification/RequestPermissionHandler$Status;

.field public static final enum GRANTED:Lcom/truecaller/android/sdk/common/callVerification/RequestPermissionHandler$Status;

.field public static final enum PERMANENT_DENIED:Lcom/truecaller/android/sdk/common/callVerification/RequestPermissionHandler$Status;

.field public static final enum TEMPORARY_DENIED:Lcom/truecaller/android/sdk/common/callVerification/RequestPermissionHandler$Status;

.field public static final enum UN_GRANTED:Lcom/truecaller/android/sdk/common/callVerification/RequestPermissionHandler$Status;


# direct methods
.method private static final synthetic $values()[Lcom/truecaller/android/sdk/common/callVerification/RequestPermissionHandler$Status;
    .locals 4

    sget-object v0, Lcom/truecaller/android/sdk/common/callVerification/RequestPermissionHandler$Status;->GRANTED:Lcom/truecaller/android/sdk/common/callVerification/RequestPermissionHandler$Status;

    sget-object v1, Lcom/truecaller/android/sdk/common/callVerification/RequestPermissionHandler$Status;->UN_GRANTED:Lcom/truecaller/android/sdk/common/callVerification/RequestPermissionHandler$Status;

    sget-object v2, Lcom/truecaller/android/sdk/common/callVerification/RequestPermissionHandler$Status;->TEMPORARY_DENIED:Lcom/truecaller/android/sdk/common/callVerification/RequestPermissionHandler$Status;

    sget-object v3, Lcom/truecaller/android/sdk/common/callVerification/RequestPermissionHandler$Status;->PERMANENT_DENIED:Lcom/truecaller/android/sdk/common/callVerification/RequestPermissionHandler$Status;

    filled-new-array {v0, v1, v2, v3}, [Lcom/truecaller/android/sdk/common/callVerification/RequestPermissionHandler$Status;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 245
    new-instance v0, Lcom/truecaller/android/sdk/common/callVerification/RequestPermissionHandler$Status;

    const-string v1, "GRANTED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/truecaller/android/sdk/common/callVerification/RequestPermissionHandler$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/truecaller/android/sdk/common/callVerification/RequestPermissionHandler$Status;->GRANTED:Lcom/truecaller/android/sdk/common/callVerification/RequestPermissionHandler$Status;

    new-instance v0, Lcom/truecaller/android/sdk/common/callVerification/RequestPermissionHandler$Status;

    const-string v1, "UN_GRANTED"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/truecaller/android/sdk/common/callVerification/RequestPermissionHandler$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/truecaller/android/sdk/common/callVerification/RequestPermissionHandler$Status;->UN_GRANTED:Lcom/truecaller/android/sdk/common/callVerification/RequestPermissionHandler$Status;

    new-instance v0, Lcom/truecaller/android/sdk/common/callVerification/RequestPermissionHandler$Status;

    const-string v1, "TEMPORARY_DENIED"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/truecaller/android/sdk/common/callVerification/RequestPermissionHandler$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/truecaller/android/sdk/common/callVerification/RequestPermissionHandler$Status;->TEMPORARY_DENIED:Lcom/truecaller/android/sdk/common/callVerification/RequestPermissionHandler$Status;

    new-instance v0, Lcom/truecaller/android/sdk/common/callVerification/RequestPermissionHandler$Status;

    const-string v1, "PERMANENT_DENIED"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/truecaller/android/sdk/common/callVerification/RequestPermissionHandler$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/truecaller/android/sdk/common/callVerification/RequestPermissionHandler$Status;->PERMANENT_DENIED:Lcom/truecaller/android/sdk/common/callVerification/RequestPermissionHandler$Status;

    invoke-static {}, Lcom/truecaller/android/sdk/common/callVerification/RequestPermissionHandler$Status;->$values()[Lcom/truecaller/android/sdk/common/callVerification/RequestPermissionHandler$Status;

    move-result-object v0

    sput-object v0, Lcom/truecaller/android/sdk/common/callVerification/RequestPermissionHandler$Status;->$VALUES:[Lcom/truecaller/android/sdk/common/callVerification/RequestPermissionHandler$Status;

    check-cast v0, [Ljava/lang/Enum;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lcom/truecaller/android/sdk/common/callVerification/RequestPermissionHandler$Status;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 244
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static getEntries()Lkotlin/enums/EnumEntries;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/enums/EnumEntries<",
            "Lcom/truecaller/android/sdk/common/callVerification/RequestPermissionHandler$Status;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/truecaller/android/sdk/common/callVerification/RequestPermissionHandler$Status;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/truecaller/android/sdk/common/callVerification/RequestPermissionHandler$Status;
    .locals 1

    const-class v0, Lcom/truecaller/android/sdk/common/callVerification/RequestPermissionHandler$Status;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/truecaller/android/sdk/common/callVerification/RequestPermissionHandler$Status;

    return-object p0
.end method

.method public static values()[Lcom/truecaller/android/sdk/common/callVerification/RequestPermissionHandler$Status;
    .locals 1

    sget-object v0, Lcom/truecaller/android/sdk/common/callVerification/RequestPermissionHandler$Status;->$VALUES:[Lcom/truecaller/android/sdk/common/callVerification/RequestPermissionHandler$Status;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/truecaller/android/sdk/common/callVerification/RequestPermissionHandler$Status;

    return-object v0
.end method
