.class public final enum Lcom/itextpdf/layout/properties/TextAlignment;
.super Ljava/lang/Enum;
.source "TextAlignment.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/itextpdf/layout/properties/TextAlignment;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/itextpdf/layout/properties/TextAlignment;

.field public static final enum CENTER:Lcom/itextpdf/layout/properties/TextAlignment;

.field public static final enum JUSTIFIED:Lcom/itextpdf/layout/properties/TextAlignment;

.field public static final enum JUSTIFIED_ALL:Lcom/itextpdf/layout/properties/TextAlignment;

.field public static final enum LEFT:Lcom/itextpdf/layout/properties/TextAlignment;

.field public static final enum RIGHT:Lcom/itextpdf/layout/properties/TextAlignment;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 51
    new-instance v0, Lcom/itextpdf/layout/properties/TextAlignment;

    const-string v1, "LEFT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/itextpdf/layout/properties/TextAlignment;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/itextpdf/layout/properties/TextAlignment;->LEFT:Lcom/itextpdf/layout/properties/TextAlignment;

    .line 52
    new-instance v1, Lcom/itextpdf/layout/properties/TextAlignment;

    const-string v2, "CENTER"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/itextpdf/layout/properties/TextAlignment;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/itextpdf/layout/properties/TextAlignment;->CENTER:Lcom/itextpdf/layout/properties/TextAlignment;

    .line 53
    new-instance v2, Lcom/itextpdf/layout/properties/TextAlignment;

    const-string v3, "RIGHT"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/itextpdf/layout/properties/TextAlignment;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/itextpdf/layout/properties/TextAlignment;->RIGHT:Lcom/itextpdf/layout/properties/TextAlignment;

    .line 54
    new-instance v3, Lcom/itextpdf/layout/properties/TextAlignment;

    const-string v4, "JUSTIFIED"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lcom/itextpdf/layout/properties/TextAlignment;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/itextpdf/layout/properties/TextAlignment;->JUSTIFIED:Lcom/itextpdf/layout/properties/TextAlignment;

    .line 55
    new-instance v4, Lcom/itextpdf/layout/properties/TextAlignment;

    const-string v5, "JUSTIFIED_ALL"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Lcom/itextpdf/layout/properties/TextAlignment;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/itextpdf/layout/properties/TextAlignment;->JUSTIFIED_ALL:Lcom/itextpdf/layout/properties/TextAlignment;

    .line 50
    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/itextpdf/layout/properties/TextAlignment;

    move-result-object v0

    sput-object v0, Lcom/itextpdf/layout/properties/TextAlignment;->$VALUES:[Lcom/itextpdf/layout/properties/TextAlignment;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 50
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/itextpdf/layout/properties/TextAlignment;
    .locals 1

    .line 50
    const-class v0, Lcom/itextpdf/layout/properties/TextAlignment;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/itextpdf/layout/properties/TextAlignment;

    return-object p0
.end method

.method public static values()[Lcom/itextpdf/layout/properties/TextAlignment;
    .locals 1

    .line 50
    sget-object v0, Lcom/itextpdf/layout/properties/TextAlignment;->$VALUES:[Lcom/itextpdf/layout/properties/TextAlignment;

    invoke-virtual {v0}, [Lcom/itextpdf/layout/properties/TextAlignment;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/itextpdf/layout/properties/TextAlignment;

    return-object v0
.end method
