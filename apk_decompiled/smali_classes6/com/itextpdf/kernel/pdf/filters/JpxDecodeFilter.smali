.class public Lcom/itextpdf/kernel/pdf/filters/JpxDecodeFilter;
.super Ljava/lang/Object;
.source "JpxDecodeFilter.java"

# interfaces
.implements Lcom/itextpdf/kernel/pdf/filters/IFilterHandler;


# static fields
.field private static final LOGGER:Lorg/slf4j/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 60
    const-class v0, Lcom/itextpdf/kernel/pdf/filters/JpxDecodeFilter;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lcom/itextpdf/kernel/pdf/filters/JpxDecodeFilter;->LOGGER:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public decode([BLcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;Lcom/itextpdf/kernel/pdf/PdfDictionary;)[B
    .locals 0

    .line 64
    sget-object p2, Lcom/itextpdf/kernel/pdf/filters/JpxDecodeFilter;->LOGGER:Lorg/slf4j/Logger;

    const-string p3, "JPXDecode filter decoding into the bit map is not supported. The stream data would be left in JPEG2000 format"

    invoke-interface {p2, p3}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    return-object p1
.end method
