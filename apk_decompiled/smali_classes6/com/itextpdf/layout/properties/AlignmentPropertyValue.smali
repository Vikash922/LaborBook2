.class public final enum Lcom/itextpdf/layout/properties/AlignmentPropertyValue;
.super Ljava/lang/Enum;
.source "AlignmentPropertyValue.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/itextpdf/layout/properties/AlignmentPropertyValue;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/itextpdf/layout/properties/AlignmentPropertyValue;

.field public static final enum BASELINE:Lcom/itextpdf/layout/properties/AlignmentPropertyValue;

.field public static final enum CENTER:Lcom/itextpdf/layout/properties/AlignmentPropertyValue;

.field public static final enum END:Lcom/itextpdf/layout/properties/AlignmentPropertyValue;

.field public static final enum FLEX_END:Lcom/itextpdf/layout/properties/AlignmentPropertyValue;

.field public static final enum FLEX_START:Lcom/itextpdf/layout/properties/AlignmentPropertyValue;

.field public static final enum NORMAL:Lcom/itextpdf/layout/properties/AlignmentPropertyValue;

.field public static final enum SELF_END:Lcom/itextpdf/layout/properties/AlignmentPropertyValue;

.field public static final enum SELF_START:Lcom/itextpdf/layout/properties/AlignmentPropertyValue;

.field public static final enum START:Lcom/itextpdf/layout/properties/AlignmentPropertyValue;

.field public static final enum STRETCH:Lcom/itextpdf/layout/properties/AlignmentPropertyValue;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .line 50
    new-instance v0, Lcom/itextpdf/layout/properties/AlignmentPropertyValue;

    const-string v1, "CENTER"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/itextpdf/layout/properties/AlignmentPropertyValue;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/itextpdf/layout/properties/AlignmentPropertyValue;->CENTER:Lcom/itextpdf/layout/properties/AlignmentPropertyValue;

    .line 51
    new-instance v1, Lcom/itextpdf/layout/properties/AlignmentPropertyValue;

    const-string v2, "START"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/itextpdf/layout/properties/AlignmentPropertyValue;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/itextpdf/layout/properties/AlignmentPropertyValue;->START:Lcom/itextpdf/layout/properties/AlignmentPropertyValue;

    .line 52
    new-instance v2, Lcom/itextpdf/layout/properties/AlignmentPropertyValue;

    const-string v3, "END"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/itextpdf/layout/properties/AlignmentPropertyValue;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/itextpdf/layout/properties/AlignmentPropertyValue;->END:Lcom/itextpdf/layout/properties/AlignmentPropertyValue;

    .line 53
    new-instance v3, Lcom/itextpdf/layout/properties/AlignmentPropertyValue;

    const-string v4, "SELF_START"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lcom/itextpdf/layout/properties/AlignmentPropertyValue;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/itextpdf/layout/properties/AlignmentPropertyValue;->SELF_START:Lcom/itextpdf/layout/properties/AlignmentPropertyValue;

    .line 54
    new-instance v4, Lcom/itextpdf/layout/properties/AlignmentPropertyValue;

    const-string v5, "SELF_END"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Lcom/itextpdf/layout/properties/AlignmentPropertyValue;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/itextpdf/layout/properties/AlignmentPropertyValue;->SELF_END:Lcom/itextpdf/layout/properties/AlignmentPropertyValue;

    .line 55
    new-instance v5, Lcom/itextpdf/layout/properties/AlignmentPropertyValue;

    const-string v6, "FLEX_START"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7}, Lcom/itextpdf/layout/properties/AlignmentPropertyValue;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/itextpdf/layout/properties/AlignmentPropertyValue;->FLEX_START:Lcom/itextpdf/layout/properties/AlignmentPropertyValue;

    .line 56
    new-instance v6, Lcom/itextpdf/layout/properties/AlignmentPropertyValue;

    const-string v7, "FLEX_END"

    const/4 v8, 0x6

    invoke-direct {v6, v7, v8}, Lcom/itextpdf/layout/properties/AlignmentPropertyValue;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/itextpdf/layout/properties/AlignmentPropertyValue;->FLEX_END:Lcom/itextpdf/layout/properties/AlignmentPropertyValue;

    .line 57
    new-instance v7, Lcom/itextpdf/layout/properties/AlignmentPropertyValue;

    const-string v8, "BASELINE"

    const/4 v9, 0x7

    invoke-direct {v7, v8, v9}, Lcom/itextpdf/layout/properties/AlignmentPropertyValue;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/itextpdf/layout/properties/AlignmentPropertyValue;->BASELINE:Lcom/itextpdf/layout/properties/AlignmentPropertyValue;

    .line 58
    new-instance v8, Lcom/itextpdf/layout/properties/AlignmentPropertyValue;

    const-string v9, "STRETCH"

    const/16 v10, 0x8

    invoke-direct {v8, v9, v10}, Lcom/itextpdf/layout/properties/AlignmentPropertyValue;-><init>(Ljava/lang/String;I)V

    sput-object v8, Lcom/itextpdf/layout/properties/AlignmentPropertyValue;->STRETCH:Lcom/itextpdf/layout/properties/AlignmentPropertyValue;

    .line 59
    new-instance v9, Lcom/itextpdf/layout/properties/AlignmentPropertyValue;

    const-string v10, "NORMAL"

    const/16 v11, 0x9

    invoke-direct {v9, v10, v11}, Lcom/itextpdf/layout/properties/AlignmentPropertyValue;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/itextpdf/layout/properties/AlignmentPropertyValue;->NORMAL:Lcom/itextpdf/layout/properties/AlignmentPropertyValue;

    .line 49
    filled-new-array/range {v0 .. v9}, [Lcom/itextpdf/layout/properties/AlignmentPropertyValue;

    move-result-object v0

    sput-object v0, Lcom/itextpdf/layout/properties/AlignmentPropertyValue;->$VALUES:[Lcom/itextpdf/layout/properties/AlignmentPropertyValue;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 49
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/itextpdf/layout/properties/AlignmentPropertyValue;
    .locals 1

    .line 49
    const-class v0, Lcom/itextpdf/layout/properties/AlignmentPropertyValue;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/itextpdf/layout/properties/AlignmentPropertyValue;

    return-object p0
.end method

.method public static values()[Lcom/itextpdf/layout/properties/AlignmentPropertyValue;
    .locals 1

    .line 49
    sget-object v0, Lcom/itextpdf/layout/properties/AlignmentPropertyValue;->$VALUES:[Lcom/itextpdf/layout/properties/AlignmentPropertyValue;

    invoke-virtual {v0}, [Lcom/itextpdf/layout/properties/AlignmentPropertyValue;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/itextpdf/layout/properties/AlignmentPropertyValue;

    return-object v0
.end method
