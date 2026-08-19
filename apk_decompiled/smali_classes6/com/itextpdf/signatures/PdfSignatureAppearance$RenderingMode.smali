.class public final enum Lcom/itextpdf/signatures/PdfSignatureAppearance$RenderingMode;
.super Ljava/lang/Enum;
.source "PdfSignatureAppearance.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itextpdf/signatures/PdfSignatureAppearance;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "RenderingMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/itextpdf/signatures/PdfSignatureAppearance$RenderingMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/itextpdf/signatures/PdfSignatureAppearance$RenderingMode;

.field public static final enum DESCRIPTION:Lcom/itextpdf/signatures/PdfSignatureAppearance$RenderingMode;

.field public static final enum GRAPHIC:Lcom/itextpdf/signatures/PdfSignatureAppearance$RenderingMode;

.field public static final enum GRAPHIC_AND_DESCRIPTION:Lcom/itextpdf/signatures/PdfSignatureAppearance$RenderingMode;

.field public static final enum NAME_AND_DESCRIPTION:Lcom/itextpdf/signatures/PdfSignatureAppearance$RenderingMode;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 997
    new-instance v0, Lcom/itextpdf/signatures/PdfSignatureAppearance$RenderingMode;

    const-string v1, "DESCRIPTION"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/itextpdf/signatures/PdfSignatureAppearance$RenderingMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/itextpdf/signatures/PdfSignatureAppearance$RenderingMode;->DESCRIPTION:Lcom/itextpdf/signatures/PdfSignatureAppearance$RenderingMode;

    .line 1001
    new-instance v1, Lcom/itextpdf/signatures/PdfSignatureAppearance$RenderingMode;

    const-string v2, "NAME_AND_DESCRIPTION"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/itextpdf/signatures/PdfSignatureAppearance$RenderingMode;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/itextpdf/signatures/PdfSignatureAppearance$RenderingMode;->NAME_AND_DESCRIPTION:Lcom/itextpdf/signatures/PdfSignatureAppearance$RenderingMode;

    .line 1005
    new-instance v2, Lcom/itextpdf/signatures/PdfSignatureAppearance$RenderingMode;

    const-string v3, "GRAPHIC_AND_DESCRIPTION"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/itextpdf/signatures/PdfSignatureAppearance$RenderingMode;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/itextpdf/signatures/PdfSignatureAppearance$RenderingMode;->GRAPHIC_AND_DESCRIPTION:Lcom/itextpdf/signatures/PdfSignatureAppearance$RenderingMode;

    .line 1009
    new-instance v3, Lcom/itextpdf/signatures/PdfSignatureAppearance$RenderingMode;

    const-string v4, "GRAPHIC"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lcom/itextpdf/signatures/PdfSignatureAppearance$RenderingMode;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/itextpdf/signatures/PdfSignatureAppearance$RenderingMode;->GRAPHIC:Lcom/itextpdf/signatures/PdfSignatureAppearance$RenderingMode;

    .line 993
    filled-new-array {v0, v1, v2, v3}, [Lcom/itextpdf/signatures/PdfSignatureAppearance$RenderingMode;

    move-result-object v0

    sput-object v0, Lcom/itextpdf/signatures/PdfSignatureAppearance$RenderingMode;->$VALUES:[Lcom/itextpdf/signatures/PdfSignatureAppearance$RenderingMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 993
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/itextpdf/signatures/PdfSignatureAppearance$RenderingMode;
    .locals 1

    .line 993
    const-class v0, Lcom/itextpdf/signatures/PdfSignatureAppearance$RenderingMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/itextpdf/signatures/PdfSignatureAppearance$RenderingMode;

    return-object p0
.end method

.method public static values()[Lcom/itextpdf/signatures/PdfSignatureAppearance$RenderingMode;
    .locals 1

    .line 993
    sget-object v0, Lcom/itextpdf/signatures/PdfSignatureAppearance$RenderingMode;->$VALUES:[Lcom/itextpdf/signatures/PdfSignatureAppearance$RenderingMode;

    invoke-virtual {v0}, [Lcom/itextpdf/signatures/PdfSignatureAppearance$RenderingMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/itextpdf/signatures/PdfSignatureAppearance$RenderingMode;

    return-object v0
.end method
