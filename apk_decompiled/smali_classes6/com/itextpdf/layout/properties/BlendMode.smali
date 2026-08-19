.class public final enum Lcom/itextpdf/layout/properties/BlendMode;
.super Ljava/lang/Enum;
.source "BlendMode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/itextpdf/layout/properties/BlendMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/itextpdf/layout/properties/BlendMode;

.field public static final enum COLOR:Lcom/itextpdf/layout/properties/BlendMode;

.field public static final enum COLOR_BURN:Lcom/itextpdf/layout/properties/BlendMode;

.field public static final enum COLOR_DODGE:Lcom/itextpdf/layout/properties/BlendMode;

.field public static final enum DARKEN:Lcom/itextpdf/layout/properties/BlendMode;

.field public static final enum DIFFERENCE:Lcom/itextpdf/layout/properties/BlendMode;

.field public static final enum EXCLUSION:Lcom/itextpdf/layout/properties/BlendMode;

.field public static final enum HARD_LIGHT:Lcom/itextpdf/layout/properties/BlendMode;

.field public static final enum HUE:Lcom/itextpdf/layout/properties/BlendMode;

.field public static final enum LIGHTEN:Lcom/itextpdf/layout/properties/BlendMode;

.field public static final enum LUMINOSITY:Lcom/itextpdf/layout/properties/BlendMode;

.field public static final enum MULTIPLY:Lcom/itextpdf/layout/properties/BlendMode;

.field public static final enum NORMAL:Lcom/itextpdf/layout/properties/BlendMode;

.field public static final enum OVERLAY:Lcom/itextpdf/layout/properties/BlendMode;

.field public static final enum SATURATION:Lcom/itextpdf/layout/properties/BlendMode;

.field public static final enum SCREEN:Lcom/itextpdf/layout/properties/BlendMode;

.field public static final enum SOFT_LIGHT:Lcom/itextpdf/layout/properties/BlendMode;


# instance fields
.field private final pdfRepresentation:Lcom/itextpdf/kernel/pdf/PdfName;


# direct methods
.method static constructor <clinit>()V
    .locals 19

    .line 55
    new-instance v0, Lcom/itextpdf/layout/properties/BlendMode;

    const/4 v1, 0x0

    sget-object v2, Lcom/itextpdf/kernel/pdf/extgstate/PdfExtGState;->BM_NORMAL:Lcom/itextpdf/kernel/pdf/PdfName;

    const-string v3, "NORMAL"

    invoke-direct {v0, v3, v1, v2}, Lcom/itextpdf/layout/properties/BlendMode;-><init>(Ljava/lang/String;ILcom/itextpdf/kernel/pdf/PdfName;)V

    sput-object v0, Lcom/itextpdf/layout/properties/BlendMode;->NORMAL:Lcom/itextpdf/layout/properties/BlendMode;

    .line 56
    new-instance v1, Lcom/itextpdf/layout/properties/BlendMode;

    const/4 v2, 0x1

    sget-object v3, Lcom/itextpdf/kernel/pdf/extgstate/PdfExtGState;->BM_MULTIPLY:Lcom/itextpdf/kernel/pdf/PdfName;

    const-string v4, "MULTIPLY"

    invoke-direct {v1, v4, v2, v3}, Lcom/itextpdf/layout/properties/BlendMode;-><init>(Ljava/lang/String;ILcom/itextpdf/kernel/pdf/PdfName;)V

    sput-object v1, Lcom/itextpdf/layout/properties/BlendMode;->MULTIPLY:Lcom/itextpdf/layout/properties/BlendMode;

    .line 57
    new-instance v2, Lcom/itextpdf/layout/properties/BlendMode;

    const/4 v3, 0x2

    sget-object v4, Lcom/itextpdf/kernel/pdf/extgstate/PdfExtGState;->BM_SCREEN:Lcom/itextpdf/kernel/pdf/PdfName;

    const-string v5, "SCREEN"

    invoke-direct {v2, v5, v3, v4}, Lcom/itextpdf/layout/properties/BlendMode;-><init>(Ljava/lang/String;ILcom/itextpdf/kernel/pdf/PdfName;)V

    sput-object v2, Lcom/itextpdf/layout/properties/BlendMode;->SCREEN:Lcom/itextpdf/layout/properties/BlendMode;

    .line 58
    new-instance v3, Lcom/itextpdf/layout/properties/BlendMode;

    const/4 v4, 0x3

    sget-object v5, Lcom/itextpdf/kernel/pdf/extgstate/PdfExtGState;->BM_OVERLAY:Lcom/itextpdf/kernel/pdf/PdfName;

    const-string v6, "OVERLAY"

    invoke-direct {v3, v6, v4, v5}, Lcom/itextpdf/layout/properties/BlendMode;-><init>(Ljava/lang/String;ILcom/itextpdf/kernel/pdf/PdfName;)V

    sput-object v3, Lcom/itextpdf/layout/properties/BlendMode;->OVERLAY:Lcom/itextpdf/layout/properties/BlendMode;

    .line 59
    new-instance v4, Lcom/itextpdf/layout/properties/BlendMode;

    const/4 v5, 0x4

    sget-object v6, Lcom/itextpdf/kernel/pdf/extgstate/PdfExtGState;->BM_DARKEN:Lcom/itextpdf/kernel/pdf/PdfName;

    const-string v7, "DARKEN"

    invoke-direct {v4, v7, v5, v6}, Lcom/itextpdf/layout/properties/BlendMode;-><init>(Ljava/lang/String;ILcom/itextpdf/kernel/pdf/PdfName;)V

    sput-object v4, Lcom/itextpdf/layout/properties/BlendMode;->DARKEN:Lcom/itextpdf/layout/properties/BlendMode;

    .line 60
    new-instance v5, Lcom/itextpdf/layout/properties/BlendMode;

    const/4 v6, 0x5

    sget-object v7, Lcom/itextpdf/kernel/pdf/extgstate/PdfExtGState;->BM_LIGHTEN:Lcom/itextpdf/kernel/pdf/PdfName;

    const-string v8, "LIGHTEN"

    invoke-direct {v5, v8, v6, v7}, Lcom/itextpdf/layout/properties/BlendMode;-><init>(Ljava/lang/String;ILcom/itextpdf/kernel/pdf/PdfName;)V

    sput-object v5, Lcom/itextpdf/layout/properties/BlendMode;->LIGHTEN:Lcom/itextpdf/layout/properties/BlendMode;

    .line 61
    new-instance v6, Lcom/itextpdf/layout/properties/BlendMode;

    const/4 v7, 0x6

    sget-object v8, Lcom/itextpdf/kernel/pdf/extgstate/PdfExtGState;->BM_COLOR_DODGE:Lcom/itextpdf/kernel/pdf/PdfName;

    const-string v9, "COLOR_DODGE"

    invoke-direct {v6, v9, v7, v8}, Lcom/itextpdf/layout/properties/BlendMode;-><init>(Ljava/lang/String;ILcom/itextpdf/kernel/pdf/PdfName;)V

    sput-object v6, Lcom/itextpdf/layout/properties/BlendMode;->COLOR_DODGE:Lcom/itextpdf/layout/properties/BlendMode;

    .line 62
    new-instance v7, Lcom/itextpdf/layout/properties/BlendMode;

    const/4 v8, 0x7

    sget-object v9, Lcom/itextpdf/kernel/pdf/extgstate/PdfExtGState;->BM_COLOR_BURN:Lcom/itextpdf/kernel/pdf/PdfName;

    const-string v10, "COLOR_BURN"

    invoke-direct {v7, v10, v8, v9}, Lcom/itextpdf/layout/properties/BlendMode;-><init>(Ljava/lang/String;ILcom/itextpdf/kernel/pdf/PdfName;)V

    sput-object v7, Lcom/itextpdf/layout/properties/BlendMode;->COLOR_BURN:Lcom/itextpdf/layout/properties/BlendMode;

    .line 63
    new-instance v8, Lcom/itextpdf/layout/properties/BlendMode;

    const/16 v9, 0x8

    sget-object v10, Lcom/itextpdf/kernel/pdf/extgstate/PdfExtGState;->BM_HARD_LIGHT:Lcom/itextpdf/kernel/pdf/PdfName;

    const-string v11, "HARD_LIGHT"

    invoke-direct {v8, v11, v9, v10}, Lcom/itextpdf/layout/properties/BlendMode;-><init>(Ljava/lang/String;ILcom/itextpdf/kernel/pdf/PdfName;)V

    sput-object v8, Lcom/itextpdf/layout/properties/BlendMode;->HARD_LIGHT:Lcom/itextpdf/layout/properties/BlendMode;

    .line 64
    new-instance v9, Lcom/itextpdf/layout/properties/BlendMode;

    const/16 v10, 0x9

    sget-object v11, Lcom/itextpdf/kernel/pdf/extgstate/PdfExtGState;->BM_SOFT_LIGHT:Lcom/itextpdf/kernel/pdf/PdfName;

    const-string v12, "SOFT_LIGHT"

    invoke-direct {v9, v12, v10, v11}, Lcom/itextpdf/layout/properties/BlendMode;-><init>(Ljava/lang/String;ILcom/itextpdf/kernel/pdf/PdfName;)V

    sput-object v9, Lcom/itextpdf/layout/properties/BlendMode;->SOFT_LIGHT:Lcom/itextpdf/layout/properties/BlendMode;

    .line 65
    new-instance v10, Lcom/itextpdf/layout/properties/BlendMode;

    const/16 v11, 0xa

    sget-object v12, Lcom/itextpdf/kernel/pdf/extgstate/PdfExtGState;->BM_DIFFERENCE:Lcom/itextpdf/kernel/pdf/PdfName;

    const-string v13, "DIFFERENCE"

    invoke-direct {v10, v13, v11, v12}, Lcom/itextpdf/layout/properties/BlendMode;-><init>(Ljava/lang/String;ILcom/itextpdf/kernel/pdf/PdfName;)V

    sput-object v10, Lcom/itextpdf/layout/properties/BlendMode;->DIFFERENCE:Lcom/itextpdf/layout/properties/BlendMode;

    .line 66
    new-instance v11, Lcom/itextpdf/layout/properties/BlendMode;

    const/16 v12, 0xb

    sget-object v13, Lcom/itextpdf/kernel/pdf/extgstate/PdfExtGState;->BM_EXCLUSION:Lcom/itextpdf/kernel/pdf/PdfName;

    const-string v14, "EXCLUSION"

    invoke-direct {v11, v14, v12, v13}, Lcom/itextpdf/layout/properties/BlendMode;-><init>(Ljava/lang/String;ILcom/itextpdf/kernel/pdf/PdfName;)V

    sput-object v11, Lcom/itextpdf/layout/properties/BlendMode;->EXCLUSION:Lcom/itextpdf/layout/properties/BlendMode;

    .line 68
    new-instance v12, Lcom/itextpdf/layout/properties/BlendMode;

    const/16 v13, 0xc

    sget-object v14, Lcom/itextpdf/kernel/pdf/extgstate/PdfExtGState;->BM_HUE:Lcom/itextpdf/kernel/pdf/PdfName;

    const-string v15, "HUE"

    invoke-direct {v12, v15, v13, v14}, Lcom/itextpdf/layout/properties/BlendMode;-><init>(Ljava/lang/String;ILcom/itextpdf/kernel/pdf/PdfName;)V

    sput-object v12, Lcom/itextpdf/layout/properties/BlendMode;->HUE:Lcom/itextpdf/layout/properties/BlendMode;

    .line 69
    new-instance v13, Lcom/itextpdf/layout/properties/BlendMode;

    const/16 v14, 0xd

    sget-object v15, Lcom/itextpdf/kernel/pdf/extgstate/PdfExtGState;->BM_SATURATION:Lcom/itextpdf/kernel/pdf/PdfName;

    move-object/from16 v16, v12

    const-string v12, "SATURATION"

    invoke-direct {v13, v12, v14, v15}, Lcom/itextpdf/layout/properties/BlendMode;-><init>(Ljava/lang/String;ILcom/itextpdf/kernel/pdf/PdfName;)V

    sput-object v13, Lcom/itextpdf/layout/properties/BlendMode;->SATURATION:Lcom/itextpdf/layout/properties/BlendMode;

    .line 70
    new-instance v14, Lcom/itextpdf/layout/properties/BlendMode;

    const/16 v12, 0xe

    sget-object v15, Lcom/itextpdf/kernel/pdf/extgstate/PdfExtGState;->BM_COLOR:Lcom/itextpdf/kernel/pdf/PdfName;

    move-object/from16 v17, v13

    const-string v13, "COLOR"

    invoke-direct {v14, v13, v12, v15}, Lcom/itextpdf/layout/properties/BlendMode;-><init>(Ljava/lang/String;ILcom/itextpdf/kernel/pdf/PdfName;)V

    sput-object v14, Lcom/itextpdf/layout/properties/BlendMode;->COLOR:Lcom/itextpdf/layout/properties/BlendMode;

    .line 71
    new-instance v15, Lcom/itextpdf/layout/properties/BlendMode;

    const/16 v12, 0xf

    sget-object v13, Lcom/itextpdf/kernel/pdf/extgstate/PdfExtGState;->BM_LUMINOSITY:Lcom/itextpdf/kernel/pdf/PdfName;

    move-object/from16 v18, v14

    const-string v14, "LUMINOSITY"

    invoke-direct {v15, v14, v12, v13}, Lcom/itextpdf/layout/properties/BlendMode;-><init>(Ljava/lang/String;ILcom/itextpdf/kernel/pdf/PdfName;)V

    sput-object v15, Lcom/itextpdf/layout/properties/BlendMode;->LUMINOSITY:Lcom/itextpdf/layout/properties/BlendMode;

    move-object/from16 v12, v16

    move-object/from16 v13, v17

    move-object/from16 v14, v18

    .line 52
    filled-new-array/range {v0 .. v15}, [Lcom/itextpdf/layout/properties/BlendMode;

    move-result-object v0

    sput-object v0, Lcom/itextpdf/layout/properties/BlendMode;->$VALUES:[Lcom/itextpdf/layout/properties/BlendMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILcom/itextpdf/kernel/pdf/PdfName;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/itextpdf/kernel/pdf/PdfName;",
            ")V"
        }
    .end annotation

    .line 75
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 76
    iput-object p3, p0, Lcom/itextpdf/layout/properties/BlendMode;->pdfRepresentation:Lcom/itextpdf/kernel/pdf/PdfName;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/itextpdf/layout/properties/BlendMode;
    .locals 1

    .line 52
    const-class v0, Lcom/itextpdf/layout/properties/BlendMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/itextpdf/layout/properties/BlendMode;

    return-object p0
.end method

.method public static values()[Lcom/itextpdf/layout/properties/BlendMode;
    .locals 1

    .line 52
    sget-object v0, Lcom/itextpdf/layout/properties/BlendMode;->$VALUES:[Lcom/itextpdf/layout/properties/BlendMode;

    invoke-virtual {v0}, [Lcom/itextpdf/layout/properties/BlendMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/itextpdf/layout/properties/BlendMode;

    return-object v0
.end method


# virtual methods
.method public getPdfRepresentation()Lcom/itextpdf/kernel/pdf/PdfName;
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/itextpdf/layout/properties/BlendMode;->pdfRepresentation:Lcom/itextpdf/kernel/pdf/PdfName;

    return-object v0
.end method
