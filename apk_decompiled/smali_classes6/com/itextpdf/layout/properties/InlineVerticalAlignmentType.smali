.class public final enum Lcom/itextpdf/layout/properties/InlineVerticalAlignmentType;
.super Ljava/lang/Enum;
.source "InlineVerticalAlignmentType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/itextpdf/layout/properties/InlineVerticalAlignmentType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/itextpdf/layout/properties/InlineVerticalAlignmentType;

.field public static final enum BASELINE:Lcom/itextpdf/layout/properties/InlineVerticalAlignmentType;

.field public static final enum BOTTOM:Lcom/itextpdf/layout/properties/InlineVerticalAlignmentType;

.field public static final enum FIXED:Lcom/itextpdf/layout/properties/InlineVerticalAlignmentType;

.field public static final enum FRACTION:Lcom/itextpdf/layout/properties/InlineVerticalAlignmentType;

.field public static final enum MIDDLE:Lcom/itextpdf/layout/properties/InlineVerticalAlignmentType;

.field public static final enum SUB:Lcom/itextpdf/layout/properties/InlineVerticalAlignmentType;

.field public static final enum SUPER:Lcom/itextpdf/layout/properties/InlineVerticalAlignmentType;

.field public static final enum TEXT_BOTTOM:Lcom/itextpdf/layout/properties/InlineVerticalAlignmentType;

.field public static final enum TEXT_TOP:Lcom/itextpdf/layout/properties/InlineVerticalAlignmentType;

.field public static final enum TOP:Lcom/itextpdf/layout/properties/InlineVerticalAlignmentType;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .line 30
    new-instance v0, Lcom/itextpdf/layout/properties/InlineVerticalAlignmentType;

    const-string v1, "BASELINE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/itextpdf/layout/properties/InlineVerticalAlignmentType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/itextpdf/layout/properties/InlineVerticalAlignmentType;->BASELINE:Lcom/itextpdf/layout/properties/InlineVerticalAlignmentType;

    .line 31
    new-instance v1, Lcom/itextpdf/layout/properties/InlineVerticalAlignmentType;

    const-string v2, "TEXT_TOP"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/itextpdf/layout/properties/InlineVerticalAlignmentType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/itextpdf/layout/properties/InlineVerticalAlignmentType;->TEXT_TOP:Lcom/itextpdf/layout/properties/InlineVerticalAlignmentType;

    .line 32
    new-instance v2, Lcom/itextpdf/layout/properties/InlineVerticalAlignmentType;

    const-string v3, "TEXT_BOTTOM"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/itextpdf/layout/properties/InlineVerticalAlignmentType;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/itextpdf/layout/properties/InlineVerticalAlignmentType;->TEXT_BOTTOM:Lcom/itextpdf/layout/properties/InlineVerticalAlignmentType;

    .line 33
    new-instance v3, Lcom/itextpdf/layout/properties/InlineVerticalAlignmentType;

    const-string v4, "SUB"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lcom/itextpdf/layout/properties/InlineVerticalAlignmentType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/itextpdf/layout/properties/InlineVerticalAlignmentType;->SUB:Lcom/itextpdf/layout/properties/InlineVerticalAlignmentType;

    .line 34
    new-instance v4, Lcom/itextpdf/layout/properties/InlineVerticalAlignmentType;

    const-string v5, "SUPER"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Lcom/itextpdf/layout/properties/InlineVerticalAlignmentType;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/itextpdf/layout/properties/InlineVerticalAlignmentType;->SUPER:Lcom/itextpdf/layout/properties/InlineVerticalAlignmentType;

    .line 39
    new-instance v5, Lcom/itextpdf/layout/properties/InlineVerticalAlignmentType;

    const-string v6, "FIXED"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7}, Lcom/itextpdf/layout/properties/InlineVerticalAlignmentType;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/itextpdf/layout/properties/InlineVerticalAlignmentType;->FIXED:Lcom/itextpdf/layout/properties/InlineVerticalAlignmentType;

    .line 44
    new-instance v6, Lcom/itextpdf/layout/properties/InlineVerticalAlignmentType;

    const-string v7, "FRACTION"

    const/4 v8, 0x6

    invoke-direct {v6, v7, v8}, Lcom/itextpdf/layout/properties/InlineVerticalAlignmentType;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/itextpdf/layout/properties/InlineVerticalAlignmentType;->FRACTION:Lcom/itextpdf/layout/properties/InlineVerticalAlignmentType;

    .line 46
    new-instance v7, Lcom/itextpdf/layout/properties/InlineVerticalAlignmentType;

    const-string v8, "MIDDLE"

    const/4 v9, 0x7

    invoke-direct {v7, v8, v9}, Lcom/itextpdf/layout/properties/InlineVerticalAlignmentType;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/itextpdf/layout/properties/InlineVerticalAlignmentType;->MIDDLE:Lcom/itextpdf/layout/properties/InlineVerticalAlignmentType;

    .line 48
    new-instance v8, Lcom/itextpdf/layout/properties/InlineVerticalAlignmentType;

    const-string v9, "TOP"

    const/16 v10, 0x8

    invoke-direct {v8, v9, v10}, Lcom/itextpdf/layout/properties/InlineVerticalAlignmentType;-><init>(Ljava/lang/String;I)V

    sput-object v8, Lcom/itextpdf/layout/properties/InlineVerticalAlignmentType;->TOP:Lcom/itextpdf/layout/properties/InlineVerticalAlignmentType;

    .line 49
    new-instance v9, Lcom/itextpdf/layout/properties/InlineVerticalAlignmentType;

    const-string v10, "BOTTOM"

    const/16 v11, 0x9

    invoke-direct {v9, v10, v11}, Lcom/itextpdf/layout/properties/InlineVerticalAlignmentType;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/itextpdf/layout/properties/InlineVerticalAlignmentType;->BOTTOM:Lcom/itextpdf/layout/properties/InlineVerticalAlignmentType;

    .line 28
    filled-new-array/range {v0 .. v9}, [Lcom/itextpdf/layout/properties/InlineVerticalAlignmentType;

    move-result-object v0

    sput-object v0, Lcom/itextpdf/layout/properties/InlineVerticalAlignmentType;->$VALUES:[Lcom/itextpdf/layout/properties/InlineVerticalAlignmentType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/itextpdf/layout/properties/InlineVerticalAlignmentType;
    .locals 1

    .line 28
    const-class v0, Lcom/itextpdf/layout/properties/InlineVerticalAlignmentType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/itextpdf/layout/properties/InlineVerticalAlignmentType;

    return-object p0
.end method

.method public static values()[Lcom/itextpdf/layout/properties/InlineVerticalAlignmentType;
    .locals 1

    .line 28
    sget-object v0, Lcom/itextpdf/layout/properties/InlineVerticalAlignmentType;->$VALUES:[Lcom/itextpdf/layout/properties/InlineVerticalAlignmentType;

    invoke-virtual {v0}, [Lcom/itextpdf/layout/properties/InlineVerticalAlignmentType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/itextpdf/layout/properties/InlineVerticalAlignmentType;

    return-object v0
.end method
