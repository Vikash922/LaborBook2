.class Lcom/itextpdf/kernel/utils/DefaultSafeXmlParserFactory$SafeEmptyEntityResolver;
.super Ljava/lang/Object;
.source "DefaultSafeXmlParserFactory.java"

# interfaces
.implements Lorg/xml/sax/EntityResolver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itextpdf/kernel/utils/DefaultSafeXmlParserFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SafeEmptyEntityResolver"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 215
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public resolveEntity(Ljava/lang/String;Ljava/lang/String;)Lorg/xml/sax/InputSource;
    .locals 0

    .line 220
    new-instance p1, Lcom/itextpdf/kernel/exceptions/PdfException;

    const-string p2, "External entity element found in XML. This entity will not be parsed to prevent XML attacks."

    invoke-direct {p1, p2}, Lcom/itextpdf/kernel/exceptions/PdfException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
