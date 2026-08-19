.class public final enum Lcom/itextpdf/barcodes/Barcode128$Barcode128CodeSet;
.super Ljava/lang/Enum;
.source "Barcode128.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itextpdf/barcodes/Barcode128;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Barcode128CodeSet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/itextpdf/barcodes/Barcode128$Barcode128CodeSet;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/itextpdf/barcodes/Barcode128$Barcode128CodeSet;

.field public static final enum A:Lcom/itextpdf/barcodes/Barcode128$Barcode128CodeSet;

.field public static final enum AUTO:Lcom/itextpdf/barcodes/Barcode128$Barcode128CodeSet;

.field public static final enum B:Lcom/itextpdf/barcodes/Barcode128$Barcode128CodeSet;

.field public static final enum C:Lcom/itextpdf/barcodes/Barcode128$Barcode128CodeSet;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 253
    new-instance v0, Lcom/itextpdf/barcodes/Barcode128$Barcode128CodeSet;

    const-string v1, "A"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/itextpdf/barcodes/Barcode128$Barcode128CodeSet;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/itextpdf/barcodes/Barcode128$Barcode128CodeSet;->A:Lcom/itextpdf/barcodes/Barcode128$Barcode128CodeSet;

    .line 254
    new-instance v1, Lcom/itextpdf/barcodes/Barcode128$Barcode128CodeSet;

    const-string v2, "B"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/itextpdf/barcodes/Barcode128$Barcode128CodeSet;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/itextpdf/barcodes/Barcode128$Barcode128CodeSet;->B:Lcom/itextpdf/barcodes/Barcode128$Barcode128CodeSet;

    .line 255
    new-instance v2, Lcom/itextpdf/barcodes/Barcode128$Barcode128CodeSet;

    const-string v3, "C"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/itextpdf/barcodes/Barcode128$Barcode128CodeSet;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/itextpdf/barcodes/Barcode128$Barcode128CodeSet;->C:Lcom/itextpdf/barcodes/Barcode128$Barcode128CodeSet;

    .line 256
    new-instance v3, Lcom/itextpdf/barcodes/Barcode128$Barcode128CodeSet;

    const-string v4, "AUTO"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lcom/itextpdf/barcodes/Barcode128$Barcode128CodeSet;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/itextpdf/barcodes/Barcode128$Barcode128CodeSet;->AUTO:Lcom/itextpdf/barcodes/Barcode128$Barcode128CodeSet;

    .line 252
    filled-new-array {v0, v1, v2, v3}, [Lcom/itextpdf/barcodes/Barcode128$Barcode128CodeSet;

    move-result-object v0

    sput-object v0, Lcom/itextpdf/barcodes/Barcode128$Barcode128CodeSet;->$VALUES:[Lcom/itextpdf/barcodes/Barcode128$Barcode128CodeSet;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 252
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/itextpdf/barcodes/Barcode128$Barcode128CodeSet;
    .locals 1

    .line 252
    const-class v0, Lcom/itextpdf/barcodes/Barcode128$Barcode128CodeSet;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/itextpdf/barcodes/Barcode128$Barcode128CodeSet;

    return-object p0
.end method

.method public static values()[Lcom/itextpdf/barcodes/Barcode128$Barcode128CodeSet;
    .locals 1

    .line 252
    sget-object v0, Lcom/itextpdf/barcodes/Barcode128$Barcode128CodeSet;->$VALUES:[Lcom/itextpdf/barcodes/Barcode128$Barcode128CodeSet;

    invoke-virtual {v0}, [Lcom/itextpdf/barcodes/Barcode128$Barcode128CodeSet;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/itextpdf/barcodes/Barcode128$Barcode128CodeSet;

    return-object v0
.end method
