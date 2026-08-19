.class public final Lcom/itextpdf/io/font/CFFFont$Font;
.super Ljava/lang/Object;
.source "CFFFont.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itextpdf/io/font/CFFFont;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x14
    name = "Font"
.end annotation


# instance fields
.field public CharsetLength:I

.field public CharstringType:I

.field public FDArrayCount:I

.field public FDArrayOffsets:[I

.field public FDArrayOffsize:I

.field public FDSelect:[I

.field public FDSelectFormat:I

.field public FDSelectLength:I

.field public PrivateSubrsOffset:[I

.field public PrivateSubrsOffsetsArray:[[I

.field public SubrsOffsets:[I

.field public charset:[I

.field public charsetOffset:I

.field public charstringsOffset:I

.field public charstringsOffsets:[I

.field public encodingOffset:I

.field public fdarrayOffset:I

.field public fdprivateLengths:[I

.field public fdprivateOffsets:[I

.field public fdprivateSubrs:[I

.field public fdselectOffset:I

.field public fullName:Ljava/lang/String;

.field public gidToCid:[I

.field public isCID:Z

.field public name:Ljava/lang/String;

.field public nglyphs:I

.field public nstrings:I

.field public privateLength:I

.field public privateOffset:I

.field public privateSubrs:I

.field final synthetic this$0:Lcom/itextpdf/io/font/CFFFont;


# direct methods
.method protected constructor <init>(Lcom/itextpdf/io/font/CFFFont;)V
    .locals 0

    .line 991
    iput-object p1, p0, Lcom/itextpdf/io/font/CFFFont$Font;->this$0:Lcom/itextpdf/io/font/CFFFont;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 994
    iput-boolean p1, p0, Lcom/itextpdf/io/font/CFFFont$Font;->isCID:Z

    const/4 p1, -0x1

    .line 996
    iput p1, p0, Lcom/itextpdf/io/font/CFFFont$Font;->privateOffset:I

    .line 998
    iput p1, p0, Lcom/itextpdf/io/font/CFFFont$Font;->privateLength:I

    .line 999
    iput p1, p0, Lcom/itextpdf/io/font/CFFFont$Font;->privateSubrs:I

    .line 1000
    iput p1, p0, Lcom/itextpdf/io/font/CFFFont$Font;->charstringsOffset:I

    .line 1001
    iput p1, p0, Lcom/itextpdf/io/font/CFFFont$Font;->encodingOffset:I

    .line 1002
    iput p1, p0, Lcom/itextpdf/io/font/CFFFont$Font;->charsetOffset:I

    .line 1004
    iput p1, p0, Lcom/itextpdf/io/font/CFFFont$Font;->fdarrayOffset:I

    .line 1006
    iput p1, p0, Lcom/itextpdf/io/font/CFFFont$Font;->fdselectOffset:I

    const/4 p1, 0x2

    .line 1020
    iput p1, p0, Lcom/itextpdf/io/font/CFFFont$Font;->CharstringType:I

    return-void
.end method
