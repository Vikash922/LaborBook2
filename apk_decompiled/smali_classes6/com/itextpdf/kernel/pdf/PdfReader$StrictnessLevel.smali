.class public final enum Lcom/itextpdf/kernel/pdf/PdfReader$StrictnessLevel;
.super Ljava/lang/Enum;
.source "PdfReader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itextpdf/kernel/pdf/PdfReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "StrictnessLevel"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/itextpdf/kernel/pdf/PdfReader$StrictnessLevel;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/itextpdf/kernel/pdf/PdfReader$StrictnessLevel;

.field public static final enum CONSERVATIVE:Lcom/itextpdf/kernel/pdf/PdfReader$StrictnessLevel;

.field public static final enum LENIENT:Lcom/itextpdf/kernel/pdf/PdfReader$StrictnessLevel;


# instance fields
.field private final levelValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1638
    new-instance v0, Lcom/itextpdf/kernel/pdf/PdfReader$StrictnessLevel;

    const/4 v1, 0x0

    const/16 v2, 0x1388

    const-string v3, "CONSERVATIVE"

    invoke-direct {v0, v3, v1, v2}, Lcom/itextpdf/kernel/pdf/PdfReader$StrictnessLevel;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/itextpdf/kernel/pdf/PdfReader$StrictnessLevel;->CONSERVATIVE:Lcom/itextpdf/kernel/pdf/PdfReader$StrictnessLevel;

    .line 1643
    new-instance v1, Lcom/itextpdf/kernel/pdf/PdfReader$StrictnessLevel;

    const/4 v2, 0x1

    const/16 v3, 0xbb8

    const-string v4, "LENIENT"

    invoke-direct {v1, v4, v2, v3}, Lcom/itextpdf/kernel/pdf/PdfReader$StrictnessLevel;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/itextpdf/kernel/pdf/PdfReader$StrictnessLevel;->LENIENT:Lcom/itextpdf/kernel/pdf/PdfReader$StrictnessLevel;

    .line 1632
    filled-new-array {v0, v1}, [Lcom/itextpdf/kernel/pdf/PdfReader$StrictnessLevel;

    move-result-object v0

    sput-object v0, Lcom/itextpdf/kernel/pdf/PdfReader$StrictnessLevel;->$VALUES:[Lcom/itextpdf/kernel/pdf/PdfReader$StrictnessLevel;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 1647
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 1648
    iput p3, p0, Lcom/itextpdf/kernel/pdf/PdfReader$StrictnessLevel;->levelValue:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/itextpdf/kernel/pdf/PdfReader$StrictnessLevel;
    .locals 1

    .line 1632
    const-class v0, Lcom/itextpdf/kernel/pdf/PdfReader$StrictnessLevel;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/itextpdf/kernel/pdf/PdfReader$StrictnessLevel;

    return-object p0
.end method

.method public static values()[Lcom/itextpdf/kernel/pdf/PdfReader$StrictnessLevel;
    .locals 1

    .line 1632
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfReader$StrictnessLevel;->$VALUES:[Lcom/itextpdf/kernel/pdf/PdfReader$StrictnessLevel;

    invoke-virtual {v0}, [Lcom/itextpdf/kernel/pdf/PdfReader$StrictnessLevel;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/itextpdf/kernel/pdf/PdfReader$StrictnessLevel;

    return-object v0
.end method


# virtual methods
.method public isStricter(Lcom/itextpdf/kernel/pdf/PdfReader$StrictnessLevel;)Z
    .locals 1

    if-eqz p1, :cond_1

    .line 1660
    iget v0, p0, Lcom/itextpdf/kernel/pdf/PdfReader$StrictnessLevel;->levelValue:I

    iget p1, p1, Lcom/itextpdf/kernel/pdf/PdfReader$StrictnessLevel;->levelValue:I

    if-le v0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method
