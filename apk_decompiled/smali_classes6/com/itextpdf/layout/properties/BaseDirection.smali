.class public final enum Lcom/itextpdf/layout/properties/BaseDirection;
.super Ljava/lang/Enum;
.source "BaseDirection.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/itextpdf/layout/properties/BaseDirection;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/itextpdf/layout/properties/BaseDirection;

.field public static final enum DEFAULT_BIDI:Lcom/itextpdf/layout/properties/BaseDirection;

.field public static final enum LEFT_TO_RIGHT:Lcom/itextpdf/layout/properties/BaseDirection;

.field public static final enum NO_BIDI:Lcom/itextpdf/layout/properties/BaseDirection;

.field public static final enum RIGHT_TO_LEFT:Lcom/itextpdf/layout/properties/BaseDirection;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 55
    new-instance v0, Lcom/itextpdf/layout/properties/BaseDirection;

    const-string v1, "NO_BIDI"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/itextpdf/layout/properties/BaseDirection;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/itextpdf/layout/properties/BaseDirection;->NO_BIDI:Lcom/itextpdf/layout/properties/BaseDirection;

    .line 56
    new-instance v1, Lcom/itextpdf/layout/properties/BaseDirection;

    const-string v2, "DEFAULT_BIDI"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/itextpdf/layout/properties/BaseDirection;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/itextpdf/layout/properties/BaseDirection;->DEFAULT_BIDI:Lcom/itextpdf/layout/properties/BaseDirection;

    .line 57
    new-instance v2, Lcom/itextpdf/layout/properties/BaseDirection;

    const-string v3, "LEFT_TO_RIGHT"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/itextpdf/layout/properties/BaseDirection;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/itextpdf/layout/properties/BaseDirection;->LEFT_TO_RIGHT:Lcom/itextpdf/layout/properties/BaseDirection;

    .line 58
    new-instance v3, Lcom/itextpdf/layout/properties/BaseDirection;

    const-string v4, "RIGHT_TO_LEFT"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lcom/itextpdf/layout/properties/BaseDirection;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/itextpdf/layout/properties/BaseDirection;->RIGHT_TO_LEFT:Lcom/itextpdf/layout/properties/BaseDirection;

    .line 54
    filled-new-array {v0, v1, v2, v3}, [Lcom/itextpdf/layout/properties/BaseDirection;

    move-result-object v0

    sput-object v0, Lcom/itextpdf/layout/properties/BaseDirection;->$VALUES:[Lcom/itextpdf/layout/properties/BaseDirection;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 54
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/itextpdf/layout/properties/BaseDirection;
    .locals 1

    .line 54
    const-class v0, Lcom/itextpdf/layout/properties/BaseDirection;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/itextpdf/layout/properties/BaseDirection;

    return-object p0
.end method

.method public static values()[Lcom/itextpdf/layout/properties/BaseDirection;
    .locals 1

    .line 54
    sget-object v0, Lcom/itextpdf/layout/properties/BaseDirection;->$VALUES:[Lcom/itextpdf/layout/properties/BaseDirection;

    invoke-virtual {v0}, [Lcom/itextpdf/layout/properties/BaseDirection;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/itextpdf/layout/properties/BaseDirection;

    return-object v0
.end method
