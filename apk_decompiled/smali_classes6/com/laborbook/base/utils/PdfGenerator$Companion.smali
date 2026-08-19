.class public final Lcom/laborbook/base/utils/PdfGenerator$Companion;
.super Ljava/lang/Object;
.source "PdfGenerator.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/laborbook/base/utils/PdfGenerator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000L\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u0006\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u000c\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003Jh\u0010\u0006\u001a\u0004\u0018\u00010\u00072\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u00052\u0006\u0010\u000b\u001a\u00020\u00052\u0006\u0010\u000c\u001a\u00020\u00052\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u000e2\u0006\u0010\u0013\u001a\u00020\u00052\u0006\u0010\u0014\u001a\u00020\u00052\u0006\u0010\u0015\u001a\u00020\u00112\u0006\u0010\u0016\u001a\u00020\u0011J\u0018\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00020\u00052\u0006\u0010\u001a\u001a\u00020\u001bH\u0002J \u0010\u001c\u001a\u00020\u00182\u0006\u0010\u001d\u001a\u00020\u00052\u0006\u0010\u001e\u001a\u00020\u00052\u0006\u0010\u001f\u001a\u00020\u001bH\u0002J\u0018\u0010 \u001a\u00020\u00182\u0006\u0010\u001d\u001a\u00020\u00052\u0006\u0010\u001e\u001a\u00020\u0005H\u0002J\u0018\u0010!\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00020\u00052\u0006\u0010\"\u001a\u00020\u001bH\u0002J \u0010#\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00020\u00052\u0006\u0010$\u001a\u00020\u00052\u0006\u0010\"\u001a\u00020\u001bH\u0002J\u0010\u0010%\u001a\u00020\u00052\u0006\u0010&\u001a\u00020\u0011H\u0002J\u0010\u0010\'\u001a\u0004\u0018\u00010(2\u0006\u0010)\u001a\u00020*R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000\u00a8\u0006+"
    }
    d2 = {
        "Lcom/laborbook/base/utils/PdfGenerator$Companion;",
        "",
        "<init>",
        "()V",
        "TAG",
        "",
        "generateStaffReport",
        "Ljava/io/File;",
        "context",
        "Landroid/content/Context;",
        "staffName",
        "staffPhone",
        "monthYear",
        "presentCount",
        "",
        "absentCount",
        "overtimeCount",
        "",
        "halfdayCount",
        "pPlusHalf",
        "pPlusP",
        "advanceAmount",
        "totalEarnings",
        "createInfoCell",
        "Lcom/itextpdf/layout/element/Cell;",
        "text",
        "isLabel",
        "",
        "createAttendanceCell",
        "label",
        "value",
        "isBold",
        "createPaymentCell",
        "createFooterCell",
        "isLeft",
        "createFooterCellWithLink",
        "url",
        "formatCurrency",
        "amount",
        "captureViewAsBitmap",
        "Landroid/graphics/Bitmap;",
        "view",
        "Landroid/view/View;",
        "base_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/laborbook/base/utils/PdfGenerator$Companion;-><init>()V

    return-void
.end method

.method private final createAttendanceCell(Ljava/lang/String;Ljava/lang/String;Z)Lcom/itextpdf/layout/element/Cell;
    .locals 3

    .line 285
    :try_start_0
    new-instance v0, Lcom/itextpdf/layout/element/Cell;

    invoke-direct {v0}, Lcom/itextpdf/layout/element/Cell;-><init>()V

    .line 286
    new-instance v1, Lcom/itextpdf/layout/element/Paragraph;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, ": "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Lcom/itextpdf/layout/element/Paragraph;-><init>(Ljava/lang/String;)V

    check-cast v1, Lcom/itextpdf/layout/element/IBlockElement;

    invoke-virtual {v0, v1}, Lcom/itextpdf/layout/element/Cell;->add(Lcom/itextpdf/layout/element/IBlockElement;)Lcom/itextpdf/layout/element/Cell;

    move-result-object p1

    const/high16 p2, 0x41200000    # 10.0f

    .line 287
    invoke-virtual {p1, p2}, Lcom/itextpdf/layout/element/Cell;->setPadding(F)Lcom/itextpdf/layout/element/IElement;

    move-result-object p1

    check-cast p1, Lcom/itextpdf/layout/element/Cell;

    const/4 p2, 0x0

    .line 288
    invoke-virtual {p1, p2}, Lcom/itextpdf/layout/element/Cell;->setBorder(Lcom/itextpdf/layout/borders/Border;)Lcom/itextpdf/layout/IPropertyContainer;

    move-result-object p1

    check-cast p1, Lcom/itextpdf/layout/element/Cell;

    .line 289
    sget-object p2, Lcom/itextpdf/layout/properties/TextAlignment;->LEFT:Lcom/itextpdf/layout/properties/TextAlignment;

    invoke-virtual {p1, p2}, Lcom/itextpdf/layout/element/Cell;->setTextAlignment(Lcom/itextpdf/layout/properties/TextAlignment;)Lcom/itextpdf/layout/IPropertyContainer;

    move-result-object p1

    check-cast p1, Lcom/itextpdf/layout/element/Cell;

    if-eqz p3, :cond_0

    .line 292
    invoke-virtual {p1}, Lcom/itextpdf/layout/element/Cell;->setBold()Lcom/itextpdf/layout/IPropertyContainer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 297
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Error creating attendance cell: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    check-cast p1, Ljava/lang/Throwable;

    const-string p3, "PdfGenerator"

    invoke-static {p3, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 298
    new-instance p1, Lcom/itextpdf/layout/element/Cell;

    invoke-direct {p1}, Lcom/itextpdf/layout/element/Cell;-><init>()V

    new-instance p2, Lcom/itextpdf/layout/element/Paragraph;

    const-string p3, "Error"

    invoke-direct {p2, p3}, Lcom/itextpdf/layout/element/Paragraph;-><init>(Ljava/lang/String;)V

    check-cast p2, Lcom/itextpdf/layout/element/IBlockElement;

    invoke-virtual {p1, p2}, Lcom/itextpdf/layout/element/Cell;->add(Lcom/itextpdf/layout/element/IBlockElement;)Lcom/itextpdf/layout/element/Cell;

    move-result-object p1

    :cond_0
    :goto_0
    return-object p1
.end method

.method private final createFooterCell(Ljava/lang/String;Z)Lcom/itextpdf/layout/element/Cell;
    .locals 2

    .line 319
    :try_start_0
    new-instance v0, Lcom/itextpdf/layout/element/Cell;

    invoke-direct {v0}, Lcom/itextpdf/layout/element/Cell;-><init>()V

    .line 320
    new-instance v1, Lcom/itextpdf/layout/element/Paragraph;

    invoke-direct {v1, p1}, Lcom/itextpdf/layout/element/Paragraph;-><init>(Ljava/lang/String;)V

    check-cast v1, Lcom/itextpdf/layout/element/IBlockElement;

    invoke-virtual {v0, v1}, Lcom/itextpdf/layout/element/Cell;->add(Lcom/itextpdf/layout/element/IBlockElement;)Lcom/itextpdf/layout/element/Cell;

    move-result-object p1

    const/high16 v0, 0x41200000    # 10.0f

    .line 321
    invoke-virtual {p1, v0}, Lcom/itextpdf/layout/element/Cell;->setPadding(F)Lcom/itextpdf/layout/element/IElement;

    move-result-object p1

    check-cast p1, Lcom/itextpdf/layout/element/Cell;

    const/4 v0, 0x0

    .line 322
    invoke-virtual {p1, v0}, Lcom/itextpdf/layout/element/Cell;->setBorder(Lcom/itextpdf/layout/borders/Border;)Lcom/itextpdf/layout/IPropertyContainer;

    move-result-object p1

    check-cast p1, Lcom/itextpdf/layout/element/Cell;

    if-eqz p2, :cond_0

    .line 323
    sget-object p2, Lcom/itextpdf/layout/properties/TextAlignment;->LEFT:Lcom/itextpdf/layout/properties/TextAlignment;

    goto :goto_0

    :cond_0
    sget-object p2, Lcom/itextpdf/layout/properties/TextAlignment;->RIGHT:Lcom/itextpdf/layout/properties/TextAlignment;

    :goto_0
    invoke-virtual {p1, p2}, Lcom/itextpdf/layout/element/Cell;->setTextAlignment(Lcom/itextpdf/layout/properties/TextAlignment;)Lcom/itextpdf/layout/IPropertyContainer;

    move-result-object p1

    check-cast p1, Lcom/itextpdf/layout/element/Cell;

    .line 324
    sget-object p2, Lcom/itextpdf/kernel/colors/ColorConstants;->WHITE:Lcom/itextpdf/kernel/colors/Color;

    invoke-virtual {p1, p2}, Lcom/itextpdf/layout/element/Cell;->setFontColor(Lcom/itextpdf/kernel/colors/Color;)Lcom/itextpdf/layout/IPropertyContainer;

    move-result-object p1

    check-cast p1, Lcom/itextpdf/layout/element/Cell;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 328
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Error creating footer cell: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    check-cast p1, Ljava/lang/Throwable;

    const-string v0, "PdfGenerator"

    invoke-static {v0, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 329
    new-instance p1, Lcom/itextpdf/layout/element/Cell;

    invoke-direct {p1}, Lcom/itextpdf/layout/element/Cell;-><init>()V

    new-instance p2, Lcom/itextpdf/layout/element/Paragraph;

    const-string v0, "Error"

    invoke-direct {p2, v0}, Lcom/itextpdf/layout/element/Paragraph;-><init>(Ljava/lang/String;)V

    check-cast p2, Lcom/itextpdf/layout/element/IBlockElement;

    invoke-virtual {p1, p2}, Lcom/itextpdf/layout/element/Cell;->add(Lcom/itextpdf/layout/element/IBlockElement;)Lcom/itextpdf/layout/element/Cell;

    move-result-object p1

    :goto_1
    return-object p1
.end method

.method private final createFooterCellWithLink(Ljava/lang/String;Ljava/lang/String;Z)Lcom/itextpdf/layout/element/Cell;
    .locals 1

    .line 335
    :try_start_0
    new-instance v0, Lcom/itextpdf/layout/element/Link;

    invoke-static {p2}, Lcom/itextpdf/kernel/pdf/action/PdfAction;->createURI(Ljava/lang/String;)Lcom/itextpdf/kernel/pdf/action/PdfAction;

    move-result-object p2

    invoke-direct {v0, p1, p2}, Lcom/itextpdf/layout/element/Link;-><init>(Ljava/lang/String;Lcom/itextpdf/kernel/pdf/action/PdfAction;)V

    .line 336
    new-instance p1, Lcom/itextpdf/layout/element/Paragraph;

    check-cast v0, Lcom/itextpdf/layout/element/Text;

    invoke-direct {p1, v0}, Lcom/itextpdf/layout/element/Paragraph;-><init>(Lcom/itextpdf/layout/element/Text;)V

    .line 337
    sget-object p2, Lcom/itextpdf/kernel/colors/ColorConstants;->WHITE:Lcom/itextpdf/kernel/colors/Color;

    invoke-virtual {p1, p2}, Lcom/itextpdf/layout/element/Paragraph;->setFontColor(Lcom/itextpdf/kernel/colors/Color;)Lcom/itextpdf/layout/IPropertyContainer;

    move-result-object p1

    check-cast p1, Lcom/itextpdf/layout/element/Paragraph;

    .line 339
    new-instance p2, Lcom/itextpdf/layout/element/Cell;

    invoke-direct {p2}, Lcom/itextpdf/layout/element/Cell;-><init>()V

    .line 340
    check-cast p1, Lcom/itextpdf/layout/element/IBlockElement;

    invoke-virtual {p2, p1}, Lcom/itextpdf/layout/element/Cell;->add(Lcom/itextpdf/layout/element/IBlockElement;)Lcom/itextpdf/layout/element/Cell;

    move-result-object p1

    const/high16 p2, 0x41200000    # 10.0f

    .line 341
    invoke-virtual {p1, p2}, Lcom/itextpdf/layout/element/Cell;->setPadding(F)Lcom/itextpdf/layout/element/IElement;

    move-result-object p1

    check-cast p1, Lcom/itextpdf/layout/element/Cell;

    const/4 p2, 0x0

    .line 342
    invoke-virtual {p1, p2}, Lcom/itextpdf/layout/element/Cell;->setBorder(Lcom/itextpdf/layout/borders/Border;)Lcom/itextpdf/layout/IPropertyContainer;

    move-result-object p1

    check-cast p1, Lcom/itextpdf/layout/element/Cell;

    if-eqz p3, :cond_0

    .line 343
    sget-object p2, Lcom/itextpdf/layout/properties/TextAlignment;->LEFT:Lcom/itextpdf/layout/properties/TextAlignment;

    goto :goto_0

    :cond_0
    sget-object p2, Lcom/itextpdf/layout/properties/TextAlignment;->RIGHT:Lcom/itextpdf/layout/properties/TextAlignment;

    :goto_0
    invoke-virtual {p1, p2}, Lcom/itextpdf/layout/element/Cell;->setTextAlignment(Lcom/itextpdf/layout/properties/TextAlignment;)Lcom/itextpdf/layout/IPropertyContainer;

    move-result-object p1

    check-cast p1, Lcom/itextpdf/layout/element/Cell;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 347
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Error creating footer cell with link: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    check-cast p1, Ljava/lang/Throwable;

    const-string p3, "PdfGenerator"

    invoke-static {p3, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 348
    new-instance p1, Lcom/itextpdf/layout/element/Cell;

    invoke-direct {p1}, Lcom/itextpdf/layout/element/Cell;-><init>()V

    new-instance p2, Lcom/itextpdf/layout/element/Paragraph;

    const-string p3, "Error"

    invoke-direct {p2, p3}, Lcom/itextpdf/layout/element/Paragraph;-><init>(Ljava/lang/String;)V

    check-cast p2, Lcom/itextpdf/layout/element/IBlockElement;

    invoke-virtual {p1, p2}, Lcom/itextpdf/layout/element/Cell;->add(Lcom/itextpdf/layout/element/IBlockElement;)Lcom/itextpdf/layout/element/Cell;

    move-result-object p1

    :goto_1
    return-object p1
.end method

.method private final createInfoCell(Ljava/lang/String;Z)Lcom/itextpdf/layout/element/Cell;
    .locals 2

    .line 267
    :try_start_0
    new-instance v0, Lcom/itextpdf/layout/element/Cell;

    invoke-direct {v0}, Lcom/itextpdf/layout/element/Cell;-><init>()V

    .line 268
    new-instance v1, Lcom/itextpdf/layout/element/Paragraph;

    invoke-direct {v1, p1}, Lcom/itextpdf/layout/element/Paragraph;-><init>(Ljava/lang/String;)V

    check-cast v1, Lcom/itextpdf/layout/element/IBlockElement;

    invoke-virtual {v0, v1}, Lcom/itextpdf/layout/element/Cell;->add(Lcom/itextpdf/layout/element/IBlockElement;)Lcom/itextpdf/layout/element/Cell;

    move-result-object p1

    const/high16 v0, 0x41000000    # 8.0f

    .line 269
    invoke-virtual {p1, v0}, Lcom/itextpdf/layout/element/Cell;->setPadding(F)Lcom/itextpdf/layout/element/IElement;

    move-result-object p1

    check-cast p1, Lcom/itextpdf/layout/element/Cell;

    const/4 v0, 0x0

    .line 270
    invoke-virtual {p1, v0}, Lcom/itextpdf/layout/element/Cell;->setBorder(Lcom/itextpdf/layout/borders/Border;)Lcom/itextpdf/layout/IPropertyContainer;

    move-result-object p1

    check-cast p1, Lcom/itextpdf/layout/element/Cell;

    if-eqz p2, :cond_0

    .line 273
    invoke-virtual {p1}, Lcom/itextpdf/layout/element/Cell;->setBold()Lcom/itextpdf/layout/IPropertyContainer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 278
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Error creating info cell: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    check-cast p1, Ljava/lang/Throwable;

    const-string v0, "PdfGenerator"

    invoke-static {v0, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 279
    new-instance p1, Lcom/itextpdf/layout/element/Cell;

    invoke-direct {p1}, Lcom/itextpdf/layout/element/Cell;-><init>()V

    new-instance p2, Lcom/itextpdf/layout/element/Paragraph;

    const-string v0, "Error"

    invoke-direct {p2, v0}, Lcom/itextpdf/layout/element/Paragraph;-><init>(Ljava/lang/String;)V

    check-cast p2, Lcom/itextpdf/layout/element/IBlockElement;

    invoke-virtual {p1, p2}, Lcom/itextpdf/layout/element/Cell;->add(Lcom/itextpdf/layout/element/IBlockElement;)Lcom/itextpdf/layout/element/Cell;

    move-result-object p1

    :cond_0
    :goto_0
    return-object p1
.end method

.method private final createPaymentCell(Ljava/lang/String;Ljava/lang/String;)Lcom/itextpdf/layout/element/Cell;
    .locals 3

    .line 304
    :try_start_0
    new-instance v0, Lcom/itextpdf/layout/element/Cell;

    invoke-direct {v0}, Lcom/itextpdf/layout/element/Cell;-><init>()V

    .line 305
    new-instance v1, Lcom/itextpdf/layout/element/Paragraph;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const/16 v2, 0x20

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Lcom/itextpdf/layout/element/Paragraph;-><init>(Ljava/lang/String;)V

    check-cast v1, Lcom/itextpdf/layout/element/IBlockElement;

    invoke-virtual {v0, v1}, Lcom/itextpdf/layout/element/Cell;->add(Lcom/itextpdf/layout/element/IBlockElement;)Lcom/itextpdf/layout/element/Cell;

    move-result-object p1

    const/high16 p2, 0x41000000    # 8.0f

    .line 306
    invoke-virtual {p1, p2}, Lcom/itextpdf/layout/element/Cell;->setPadding(F)Lcom/itextpdf/layout/element/IElement;

    move-result-object p1

    check-cast p1, Lcom/itextpdf/layout/element/Cell;

    const/4 p2, 0x0

    .line 307
    invoke-virtual {p1, p2}, Lcom/itextpdf/layout/element/Cell;->setBorder(Lcom/itextpdf/layout/borders/Border;)Lcom/itextpdf/layout/IPropertyContainer;

    move-result-object p1

    check-cast p1, Lcom/itextpdf/layout/element/Cell;

    .line 308
    sget-object p2, Lcom/itextpdf/layout/properties/TextAlignment;->LEFT:Lcom/itextpdf/layout/properties/TextAlignment;

    invoke-virtual {p1, p2}, Lcom/itextpdf/layout/element/Cell;->setTextAlignment(Lcom/itextpdf/layout/properties/TextAlignment;)Lcom/itextpdf/layout/IPropertyContainer;

    move-result-object p1

    check-cast p1, Lcom/itextpdf/layout/element/Cell;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 312
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Error creating payment cell: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    check-cast p1, Ljava/lang/Throwable;

    const-string v0, "PdfGenerator"

    invoke-static {v0, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 313
    new-instance p1, Lcom/itextpdf/layout/element/Cell;

    invoke-direct {p1}, Lcom/itextpdf/layout/element/Cell;-><init>()V

    new-instance p2, Lcom/itextpdf/layout/element/Paragraph;

    const-string v0, "Error"

    invoke-direct {p2, v0}, Lcom/itextpdf/layout/element/Paragraph;-><init>(Ljava/lang/String;)V

    check-cast p2, Lcom/itextpdf/layout/element/IBlockElement;

    invoke-virtual {p1, p2}, Lcom/itextpdf/layout/element/Cell;->add(Lcom/itextpdf/layout/element/IBlockElement;)Lcom/itextpdf/layout/element/Cell;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method private final formatCurrency(D)Ljava/lang/String;
    .locals 3

    .line 354
    :try_start_0
    new-instance v0, Ljava/util/Locale;

    const-string v1, "en"

    const-string v2, "IN"

    invoke-direct {v0, v1, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Ljava/text/NumberFormat;->getCurrencyInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 356
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Error formatting currency: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    check-cast v0, Ljava/lang/Throwable;

    const-string v2, "PdfGenerator"

    invoke-static {v2, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 357
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u20b9"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1
.end method


# virtual methods
.method public final captureViewAsBitmap(Landroid/view/View;)Landroid/graphics/Bitmap;
    .locals 5

    const-string v0, "PdfGenerator"

    const-string v1, "View dimensions are invalid: "

    const-string v2, "view"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 363
    :try_start_0
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v3

    if-lez v3, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v3

    if-gtz v3, :cond_0

    goto :goto_0

    .line 369
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    .line 370
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v3

    .line 371
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 368
    invoke-static {v1, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    const-string v3, "createBitmap(...)"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 373
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 374
    invoke-virtual {p1, v3}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    move-object v2, v1

    goto :goto_1

    .line 364
    :cond_1
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v3, 0x78

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :catch_0
    move-exception p1

    .line 377
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Error capturing view as bitmap: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    check-cast p1, Ljava/lang/Throwable;

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    return-object v2
.end method

.method public final generateStaffReport(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIDILjava/lang/String;Ljava/lang/String;DD)Ljava/io/File;
    .locals 37

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-wide/from16 v6, p7

    move-object/from16 v8, p10

    move-object/from16 v9, p11

    const-string v10, "_"

    const-string v11, "[^a-zA-Z0-9\\s_-]"

    const-string v12, "Error closing document: "

    const-string v13, " ("

    const-string v14, "Error closing PDF: "

    const-string v15, "Error closing writer: "

    move-object/from16 v16, v15

    const-string v15, "Deleted corrupted PDF file"

    move-object/from16 v17, v15

    const-string v15, "Error deleting corrupted file: "

    move-object/from16 v18, v15

    const-string v15, "getString(...)"

    move-object/from16 v19, v14

    const-string v14, "PdfGenerator"

    move-object/from16 v20, v12

    const-string v12, "PDF generated successfully: "

    move-object/from16 v21, v12

    const-string v12, "Failed to add footer: "

    move-object/from16 v22, v12

    const-string v12, "Failed to add payment summary: "

    move-object/from16 v23, v12

    const-string v12, "Failed to add attendance summary: "

    move-object/from16 v24, v12

    const-string v12, "Failed to add staff information: "

    const-string v6, "Failed to add title: "

    const-string v7, "Failed to create document: "

    move-object/from16 v25, v7

    const-string v7, "Failed to create PDF document: "

    move-object/from16 v26, v7

    const-string v7, "Failed to create PDF writer: "

    move-object/from16 v27, v7

    const-string v7, "Staff_Report_"

    move-object/from16 v28, v13

    const-string v13, "Unexpected error during PDF generation: "

    move-object/from16 v29, v13

    const-string v13, "context"

    invoke-static {v2, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v13, "staffName"

    invoke-static {v3, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v13, "staffPhone"

    invoke-static {v4, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v13, "monthYear"

    invoke-static {v5, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v13, "pPlusHalf"

    invoke-static {v8, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v13, "pPlusP"

    invoke-static {v9, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v13

    .line 48
    sget-object v9, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v13, v9}, Landroid/content/res/Configuration;->setLocale(Ljava/util/Locale;)V

    .line 46
    invoke-virtual {v2, v13}, Landroid/content/Context;->createConfigurationContext(Landroid/content/res/Configuration;)Landroid/content/Context;

    move-result-object v9

    const/4 v13, 0x0

    .line 59
    :try_start_0
    move-object/from16 v30, v3

    check-cast v30, Ljava/lang/CharSequence;

    invoke-static/range {v30 .. v30}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v30
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1f
    .catchall {:try_start_0 .. :try_end_0} :catchall_14

    if-eqz v30, :cond_0

    .line 60
    :try_start_1
    const-string v2, "Staff name is blank"

    invoke-static {v14, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v13

    :catchall_0
    move-exception v0

    move-object v4, v0

    move-object v7, v13

    move-object/from16 v27, v7

    move-object/from16 v31, v27

    :goto_0
    move-object v3, v14

    move-object/from16 v8, v16

    move-object/from16 v2, v17

    move-object/from16 v9, v18

    move-object/from16 v6, v19

    move-object/from16 v5, v20

    goto/16 :goto_2a

    :catch_0
    move-exception v0

    move-object v4, v0

    move-object v7, v13

    move-object v10, v7

    move-object v11, v10

    move-object/from16 v31, v11

    move-object v3, v14

    move-object/from16 v8, v16

    move-object/from16 v2, v17

    move-object/from16 v9, v18

    move-object/from16 v6, v19

    move-object/from16 v5, v20

    goto/16 :goto_25

    .line 64
    :cond_0
    :try_start_2
    move-object/from16 v30, v5

    check-cast v30, Ljava/lang/CharSequence;

    invoke-static/range {v30 .. v30}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v30
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1f
    .catchall {:try_start_2 .. :try_end_2} :catchall_14

    if-eqz v30, :cond_1

    .line 65
    :try_start_3
    const-string v2, "Month year is blank"

    invoke-static {v14, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    return-object v13

    .line 70
    :cond_1
    :try_start_4
    move-object v13, v3

    check-cast v13, Ljava/lang/CharSequence;

    new-instance v2, Lkotlin/text/Regex;

    invoke-direct {v2, v11}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v13, v10}, Lkotlin/text/Regex;->replace(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    .line 71
    move-object v2, v5

    check-cast v2, Ljava/lang/CharSequence;

    new-instance v13, Lkotlin/text/Regex;

    invoke-direct {v13, v11}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v2, v10}, Lkotlin/text/Regex;->replace(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 72
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v32, " "

    const-string v33, "_"

    const/16 v35, 0x4

    const/16 v36, 0x0

    const/16 v34, 0x0

    invoke-static/range {v31 .. v36}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/16 v10, 0x5f

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v7, ".pdf"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 73
    new-instance v7, Ljava/io/File;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v10

    invoke-direct {v7, v10, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1f
    .catchall {:try_start_4 .. :try_end_4} :catchall_14

    .line 76
    :try_start_5
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1e
    .catchall {:try_start_5 .. :try_end_5} :catchall_13

    if-nez v2, :cond_2

    .line 77
    :try_start_6
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    move-object v4, v0

    move-object v3, v14

    move-object/from16 v8, v16

    move-object/from16 v2, v17

    move-object/from16 v9, v18

    move-object/from16 v6, v19

    move-object/from16 v5, v20

    goto/16 :goto_23

    :catch_1
    move-exception v0

    move-object v4, v0

    move-object v3, v14

    move-object/from16 v8, v16

    move-object/from16 v2, v17

    move-object/from16 v9, v18

    move-object/from16 v6, v19

    move-object/from16 v5, v20

    goto/16 :goto_24

    .line 82
    :cond_2
    :goto_1
    :try_start_7
    new-instance v2, Lcom/itextpdf/kernel/pdf/PdfWriter;

    new-instance v10, Ljava/io/FileOutputStream;

    invoke-direct {v10, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    check-cast v10, Ljava/io/OutputStream;

    invoke-direct {v2, v10}, Lcom/itextpdf/kernel/pdf/PdfWriter;-><init>(Ljava/io/OutputStream;)V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1b
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1e
    .catchall {:try_start_7 .. :try_end_7} :catchall_13

    .line 90
    :try_start_8
    new-instance v10, Lcom/itextpdf/kernel/pdf/PdfDocument;

    invoke-direct {v10, v2}, Lcom/itextpdf/kernel/pdf/PdfDocument;-><init>(Lcom/itextpdf/kernel/pdf/PdfWriter;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_17
    .catchall {:try_start_8 .. :try_end_8} :catchall_10

    .line 98
    :try_start_9
    new-instance v11, Lcom/itextpdf/layout/Document;

    invoke-direct {v11, v10}, Lcom/itextpdf/layout/Document;-><init>(Lcom/itextpdf/kernel/pdf/PdfDocument;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_12
    .catchall {:try_start_9 .. :try_end_9} :catchall_e

    const/high16 v13, 0x42480000    # 50.0f

    .line 105
    :try_start_a
    invoke-virtual {v11, v13, v13, v13, v13}, Lcom/itextpdf/layout/Document;->setMargins(FFFF)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_11
    .catchall {:try_start_a .. :try_end_a} :catchall_d

    .line 109
    :try_start_b
    new-instance v13, Lcom/itextpdf/layout/element/Paragraph;
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_3
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    move-object/from16 v31, v2

    :try_start_c
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " Report"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v13, v2}, Lcom/itextpdf/layout/element/Paragraph;-><init>(Ljava/lang/String;)V

    const/high16 v2, 0x41c00000    # 24.0f

    .line 110
    invoke-virtual {v13, v2}, Lcom/itextpdf/layout/element/Paragraph;->setFontSize(F)Lcom/itextpdf/layout/IPropertyContainer;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/layout/element/Paragraph;

    .line 111
    invoke-virtual {v2}, Lcom/itextpdf/layout/element/Paragraph;->setBold()Lcom/itextpdf/layout/IPropertyContainer;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/layout/element/Paragraph;

    .line 112
    sget-object v5, Lcom/itextpdf/layout/properties/TextAlignment;->CENTER:Lcom/itextpdf/layout/properties/TextAlignment;

    invoke-virtual {v2, v5}, Lcom/itextpdf/layout/element/Paragraph;->setTextAlignment(Lcom/itextpdf/layout/properties/TextAlignment;)Lcom/itextpdf/layout/IPropertyContainer;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/layout/element/Paragraph;

    const/high16 v5, 0x41f00000    # 30.0f

    .line 113
    invoke-virtual {v2, v5}, Lcom/itextpdf/layout/element/Paragraph;->setMarginBottom(F)Lcom/itextpdf/layout/element/IElement;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/layout/element/Paragraph;

    .line 114
    check-cast v2, Lcom/itextpdf/layout/element/IBlockElement;

    invoke-virtual {v11, v2}, Lcom/itextpdf/layout/Document;->add(Lcom/itextpdf/layout/element/IBlockElement;)Lcom/itextpdf/layout/Document;
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_2
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    goto :goto_5

    :catchall_2
    move-exception v0

    goto :goto_2

    :catch_2
    move-exception v0

    goto :goto_4

    :catchall_3
    move-exception v0

    move-object/from16 v31, v2

    :goto_2
    move-object v4, v0

    :goto_3
    move-object/from16 v27, v10

    move-object v13, v11

    goto/16 :goto_0

    :catch_3
    move-exception v0

    move-object/from16 v31, v2

    :goto_4
    move-object v2, v0

    .line 116
    :try_start_d
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    check-cast v2, Ljava/lang/Throwable;

    invoke-static {v14, v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_10
    .catchall {:try_start_d .. :try_end_d} :catchall_c

    :goto_5
    const/high16 v2, 0x41c80000    # 25.0f

    const/4 v13, 0x2

    .line 121
    :try_start_e
    new-instance v5, Lcom/itextpdf/layout/element/Table;
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_4
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    :try_start_f
    new-array v6, v13, [F

    fill-array-data v6, :array_0
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_4
    .catchall {:try_start_f .. :try_end_f} :catchall_4

    :try_start_10
    invoke-static {v6}, Lcom/itextpdf/layout/properties/UnitValue;->createPercentArray([F)[Lcom/itextpdf/layout/properties/UnitValue;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/itextpdf/layout/element/Table;-><init>([Lcom/itextpdf/layout/properties/UnitValue;)V

    .line 122
    invoke-virtual {v5, v2}, Lcom/itextpdf/layout/element/Table;->setMarginBottom(F)Lcom/itextpdf/layout/element/IElement;

    move-result-object v5

    check-cast v5, Lcom/itextpdf/layout/element/Table;

    const/high16 v6, 0x42c80000    # 100.0f

    .line 123
    invoke-static {v6}, Lcom/itextpdf/layout/properties/UnitValue;->createPercentValue(F)Lcom/itextpdf/layout/properties/UnitValue;

    move-result-object v2

    invoke-virtual {v5, v2}, Lcom/itextpdf/layout/element/Table;->setWidth(Lcom/itextpdf/layout/properties/UnitValue;)Lcom/itextpdf/layout/element/IElement;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/layout/element/Table;

    .line 125
    sget v5, Lcom/laborbook/base/R$string;->name:I

    invoke-virtual {v9, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v6, 0x1

    invoke-direct {v1, v5, v6}, Lcom/laborbook/base/utils/PdfGenerator$Companion;->createInfoCell(Ljava/lang/String;Z)Lcom/itextpdf/layout/element/Cell;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/itextpdf/layout/element/Table;->addCell(Lcom/itextpdf/layout/element/Cell;)Lcom/itextpdf/layout/element/Table;

    const/4 v5, 0x0

    .line 126
    invoke-direct {v1, v3, v5}, Lcom/laborbook/base/utils/PdfGenerator$Companion;->createInfoCell(Ljava/lang/String;Z)Lcom/itextpdf/layout/element/Cell;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/itextpdf/layout/element/Table;->addCell(Lcom/itextpdf/layout/element/Cell;)Lcom/itextpdf/layout/element/Table;

    .line 127
    sget v3, Lcom/laborbook/base/R$string;->phone_number_label:I

    invoke-virtual {v9, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x1

    invoke-direct {v1, v3, v5}, Lcom/laborbook/base/utils/PdfGenerator$Companion;->createInfoCell(Ljava/lang/String;Z)Lcom/itextpdf/layout/element/Cell;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/itextpdf/layout/element/Table;->addCell(Lcom/itextpdf/layout/element/Cell;)Lcom/itextpdf/layout/element/Table;

    const/4 v3, 0x0

    .line 128
    invoke-direct {v1, v4, v3}, Lcom/laborbook/base/utils/PdfGenerator$Companion;->createInfoCell(Ljava/lang/String;Z)Lcom/itextpdf/layout/element/Cell;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/itextpdf/layout/element/Table;->addCell(Lcom/itextpdf/layout/element/Cell;)Lcom/itextpdf/layout/element/Table;

    .line 130
    check-cast v2, Lcom/itextpdf/layout/element/IBlockElement;

    invoke-virtual {v11, v2}, Lcom/itextpdf/layout/Document;->add(Lcom/itextpdf/layout/element/IBlockElement;)Lcom/itextpdf/layout/Document;
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_4
    .catchall {:try_start_10 .. :try_end_10} :catchall_2

    goto :goto_6

    :catchall_4
    move-exception v0

    move-object v2, v0

    move-object v4, v2

    goto :goto_3

    :catch_4
    move-exception v0

    move-object v2, v0

    .line 132
    :try_start_11
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    check-cast v2, Ljava/lang/Throwable;

    invoke-static {v14, v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_10
    .catchall {:try_start_11 .. :try_end_11} :catchall_c

    .line 137
    :goto_6
    :try_start_12
    new-instance v2, Lcom/itextpdf/layout/element/Paragraph;

    sget v3, Lcom/laborbook/base/R$string;->attendance_summary:I

    invoke-virtual {v9, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/itextpdf/layout/element/Paragraph;-><init>(Ljava/lang/String;)V

    const/high16 v3, 0x41a00000    # 20.0f

    .line 138
    invoke-virtual {v2, v3}, Lcom/itextpdf/layout/element/Paragraph;->setFontSize(F)Lcom/itextpdf/layout/IPropertyContainer;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/layout/element/Paragraph;

    .line 139
    invoke-virtual {v2}, Lcom/itextpdf/layout/element/Paragraph;->setBold()Lcom/itextpdf/layout/IPropertyContainer;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/layout/element/Paragraph;

    const/high16 v3, 0x41700000    # 15.0f

    .line 140
    invoke-virtual {v2, v3}, Lcom/itextpdf/layout/element/Paragraph;->setMarginBottom(F)Lcom/itextpdf/layout/element/IElement;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/layout/element/Paragraph;

    .line 141
    check-cast v2, Lcom/itextpdf/layout/element/IBlockElement;

    invoke-virtual {v11, v2}, Lcom/itextpdf/layout/Document;->add(Lcom/itextpdf/layout/element/IBlockElement;)Lcom/itextpdf/layout/Document;

    .line 144
    new-instance v2, Lcom/itextpdf/layout/element/Table;
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_8
    .catchall {:try_start_12 .. :try_end_12} :catchall_8

    :try_start_13
    new-array v3, v13, [F

    fill-array-data v3, :array_1
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_8
    .catchall {:try_start_13 .. :try_end_13} :catchall_7

    :try_start_14
    invoke-static {v3}, Lcom/itextpdf/layout/properties/UnitValue;->createPercentArray([F)[Lcom/itextpdf/layout/properties/UnitValue;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/itextpdf/layout/element/Table;-><init>([Lcom/itextpdf/layout/properties/UnitValue;)V

    const/high16 v3, 0x41c80000    # 25.0f

    .line 145
    invoke-virtual {v2, v3}, Lcom/itextpdf/layout/element/Table;->setMarginBottom(F)Lcom/itextpdf/layout/element/IElement;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/layout/element/Table;

    const/high16 v3, 0x42c80000    # 100.0f

    .line 146
    invoke-static {v3}, Lcom/itextpdf/layout/properties/UnitValue;->createPercentValue(F)Lcom/itextpdf/layout/properties/UnitValue;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/itextpdf/layout/element/Table;->setWidth(Lcom/itextpdf/layout/properties/UnitValue;)Lcom/itextpdf/layout/element/IElement;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/layout/element/Table;

    const/4 v3, 0x0

    .line 147
    invoke-virtual {v2, v3}, Lcom/itextpdf/layout/element/Table;->setBorder(Lcom/itextpdf/layout/borders/Border;)Lcom/itextpdf/layout/IPropertyContainer;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/layout/element/Table;

    .line 150
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget v4, Lcom/laborbook/base/R$string;->present_label:I

    invoke-virtual {v9, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v4, v28

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v5, Lcom/laborbook/base/R$string;->p:I

    invoke-virtual {v9, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v5, 0x29

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static/range {p5 .. p5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    const/4 v12, 0x1

    invoke-direct {v1, v3, v6, v12}, Lcom/laborbook/base/utils/PdfGenerator$Companion;->createAttendanceCell(Ljava/lang/String;Ljava/lang/String;Z)Lcom/itextpdf/layout/element/Cell;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/itextpdf/layout/element/Table;->addCell(Lcom/itextpdf/layout/element/Cell;)Lcom/itextpdf/layout/element/Table;

    .line 151
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget v6, Lcom/laborbook/base/R$string;->absent_label:I

    invoke-virtual {v9, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v6, Lcom/laborbook/base/R$string;->a:I

    invoke-virtual {v9, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static/range {p6 .. p6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    const/4 v12, 0x1

    invoke-direct {v1, v3, v6, v12}, Lcom/laborbook/base/utils/PdfGenerator$Companion;->createAttendanceCell(Ljava/lang/String;Ljava/lang/String;Z)Lcom/itextpdf/layout/element/Cell;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/itextpdf/layout/element/Table;->addCell(Lcom/itextpdf/layout/element/Cell;)Lcom/itextpdf/layout/element/Table;
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_8
    .catchall {:try_start_14 .. :try_end_14} :catchall_8

    const-wide/16 v27, 0x0

    move-object v3, v14

    move-wide/from16 v13, p7

    cmpl-double v12, v13, v27

    if-lez v12, :cond_7

    const-wide/high16 v27, 0x3ff0000000000000L    # 1.0

    cmpl-double v12, v13, v27

    const/16 v5, 0x68

    const/16 v6, 0x3c

    if-ltz v12, :cond_4

    double-to-int v12, v13

    move-object/from16 v27, v10

    move-object/from16 v28, v11

    int-to-double v10, v12

    sub-double v10, v13, v10

    int-to-double v13, v6

    mul-double/2addr v10, v13

    double-to-int v6, v10

    if-lez v6, :cond_3

    .line 160
    :try_start_15
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v6, 0x6d

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_7

    .line 162
    :cond_3
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_7

    :cond_4
    move-object/from16 v27, v10

    move-object/from16 v28, v11

    int-to-double v10, v6

    mul-double/2addr v10, v13

    double-to-int v10, v10

    .line 167
    div-int/lit8 v11, v10, 0x3c

    .line 168
    rem-int/2addr v10, v6

    if-lez v11, :cond_6

    if-lez v10, :cond_5

    .line 171
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v6, 0x6d

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_7

    .line 173
    :cond_5
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_7

    .line 176
    :cond_6
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v6, 0x6d

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_5
    .catchall {:try_start_15 .. :try_end_15} :catchall_5

    goto :goto_7

    :catchall_5
    move-exception v0

    move-object v4, v0

    move-object/from16 v8, v16

    move-object/from16 v2, v17

    move-object/from16 v9, v18

    move-object/from16 v6, v19

    move-object/from16 v5, v20

    move-object/from16 v13, v28

    goto/16 :goto_2a

    :catch_5
    move-exception v0

    move-object v2, v0

    move-object/from16 v4, v28

    goto/16 :goto_b

    :cond_7
    move-object/from16 v27, v10

    move-object/from16 v28, v11

    .line 180
    :try_start_16
    const-string v5, "0h"

    .line 182
    :goto_7
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget v10, Lcom/laborbook/base/R$string;->overtime_label:I

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget v10, Lcom/laborbook/base/R$string;->ot:I

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/16 v10, 0x29

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v10, 0x1

    invoke-direct {v1, v6, v5, v10}, Lcom/laborbook/base/utils/PdfGenerator$Companion;->createAttendanceCell(Ljava/lang/String;Ljava/lang/String;Z)Lcom/itextpdf/layout/element/Cell;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/itextpdf/layout/element/Table;->addCell(Lcom/itextpdf/layout/element/Cell;)Lcom/itextpdf/layout/element/Table;

    .line 183
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget v6, Lcom/laborbook/base/R$string;->half_day_label:I

    invoke-virtual {v9, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lcom/laborbook/base/R$string;->_1_2:I

    invoke-virtual {v9, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0x29

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static/range {p9 .. p9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    invoke-direct {v1, v4, v5, v6}, Lcom/laborbook/base/utils/PdfGenerator$Companion;->createAttendanceCell(Ljava/lang/String;Ljava/lang/String;Z)Lcom/itextpdf/layout/element/Cell;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/itextpdf/layout/element/Table;->addCell(Lcom/itextpdf/layout/element/Cell;)Lcom/itextpdf/layout/element/Table;

    .line 184
    sget v4, Lcom/laborbook/base/R$string;->p_plus_half_label:I

    invoke-virtual {v9, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v1, v4, v8, v6}, Lcom/laborbook/base/utils/PdfGenerator$Companion;->createAttendanceCell(Ljava/lang/String;Ljava/lang/String;Z)Lcom/itextpdf/layout/element/Cell;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/itextpdf/layout/element/Table;->addCell(Lcom/itextpdf/layout/element/Cell;)Lcom/itextpdf/layout/element/Table;

    .line 185
    sget v4, Lcom/laborbook/base/R$string;->p_plus_p_label:I

    invoke-virtual {v9, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v5, p11

    invoke-direct {v1, v4, v5, v6}, Lcom/laborbook/base/utils/PdfGenerator$Companion;->createAttendanceCell(Ljava/lang/String;Ljava/lang/String;Z)Lcom/itextpdf/layout/element/Cell;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/itextpdf/layout/element/Table;->addCell(Lcom/itextpdf/layout/element/Cell;)Lcom/itextpdf/layout/element/Table;

    .line 187
    check-cast v2, Lcom/itextpdf/layout/element/IBlockElement;
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_7
    .catchall {:try_start_16 .. :try_end_16} :catchall_6

    move-object/from16 v4, v28

    :try_start_17
    invoke-virtual {v4, v2}, Lcom/itextpdf/layout/Document;->add(Lcom/itextpdf/layout/element/IBlockElement;)Lcom/itextpdf/layout/Document;
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_17} :catch_6
    .catchall {:try_start_17 .. :try_end_17} :catchall_a

    goto :goto_c

    :catch_6
    move-exception v0

    goto :goto_a

    :catchall_6
    move-exception v0

    move-object/from16 v4, v28

    goto :goto_9

    :catch_7
    move-exception v0

    move-object/from16 v4, v28

    goto :goto_a

    :catchall_7
    move-exception v0

    move-object/from16 v27, v10

    move-object v4, v11

    move-object v3, v14

    :goto_8
    move-object v2, v0

    move-object v13, v4

    move-object/from16 v8, v16

    move-object/from16 v9, v18

    move-object/from16 v6, v19

    move-object/from16 v5, v20

    move-object v4, v2

    move-object/from16 v2, v17

    goto/16 :goto_2a

    :catchall_8
    move-exception v0

    move-object/from16 v27, v10

    move-object v4, v11

    move-object v3, v14

    :goto_9
    move-object v13, v4

    move-object/from16 v8, v16

    move-object/from16 v2, v17

    move-object/from16 v9, v18

    move-object/from16 v6, v19

    move-object/from16 v5, v20

    goto/16 :goto_15

    :catch_8
    move-exception v0

    move-object/from16 v27, v10

    move-object v4, v11

    move-object v3, v14

    :goto_a
    move-object v2, v0

    .line 189
    :goto_b
    :try_start_18
    new-instance v5, Ljava/lang/StringBuilder;

    move-object/from16 v6, v24

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    check-cast v2, Ljava/lang/Throwable;

    invoke-static {v3, v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_18} :catch_f
    .catchall {:try_start_18 .. :try_end_18} :catchall_b

    .line 194
    :goto_c
    :try_start_19
    new-instance v2, Lcom/itextpdf/layout/element/Paragraph;

    sget v5, Lcom/laborbook/base/R$string;->payment_summary:I

    invoke-virtual {v9, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Lcom/itextpdf/layout/element/Paragraph;-><init>(Ljava/lang/String;)V

    const/high16 v5, 0x41900000    # 18.0f

    .line 195
    invoke-virtual {v2, v5}, Lcom/itextpdf/layout/element/Paragraph;->setFontSize(F)Lcom/itextpdf/layout/IPropertyContainer;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/layout/element/Paragraph;

    .line 196
    invoke-virtual {v2}, Lcom/itextpdf/layout/element/Paragraph;->setBold()Lcom/itextpdf/layout/IPropertyContainer;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/layout/element/Paragraph;

    const/high16 v5, 0x41700000    # 15.0f

    .line 197
    invoke-virtual {v2, v5}, Lcom/itextpdf/layout/element/Paragraph;->setMarginBottom(F)Lcom/itextpdf/layout/element/IElement;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/layout/element/Paragraph;

    .line 198
    check-cast v2, Lcom/itextpdf/layout/element/IBlockElement;

    invoke-virtual {v4, v2}, Lcom/itextpdf/layout/Document;->add(Lcom/itextpdf/layout/element/IBlockElement;)Lcom/itextpdf/layout/Document;

    .line 200
    new-instance v2, Lcom/itextpdf/layout/element/Table;
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_19} :catch_9
    .catchall {:try_start_19 .. :try_end_19} :catchall_a

    const/4 v5, 0x2

    :try_start_1a
    new-array v8, v5, [F

    fill-array-data v8, :array_2
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1a} :catch_9
    .catchall {:try_start_1a .. :try_end_1a} :catchall_9

    :try_start_1b
    invoke-static {v8}, Lcom/itextpdf/layout/properties/UnitValue;->createPercentArray([F)[Lcom/itextpdf/layout/properties/UnitValue;

    move-result-object v5

    invoke-direct {v2, v5}, Lcom/itextpdf/layout/element/Table;-><init>([Lcom/itextpdf/layout/properties/UnitValue;)V

    const/high16 v5, 0x41f00000    # 30.0f

    .line 201
    invoke-virtual {v2, v5}, Lcom/itextpdf/layout/element/Table;->setMarginBottom(F)Lcom/itextpdf/layout/element/IElement;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/layout/element/Table;

    const/high16 v5, 0x42c80000    # 100.0f

    .line 202
    invoke-static {v5}, Lcom/itextpdf/layout/properties/UnitValue;->createPercentValue(F)Lcom/itextpdf/layout/properties/UnitValue;

    move-result-object v8

    invoke-virtual {v2, v8}, Lcom/itextpdf/layout/element/Table;->setWidth(Lcom/itextpdf/layout/properties/UnitValue;)Lcom/itextpdf/layout/element/IElement;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/layout/element/Table;

    .line 204
    sget v5, Lcom/laborbook/base/R$string;->advance_amount_label:I

    invoke-virtual {v9, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-wide/from16 v10, p12

    invoke-direct {v1, v10, v11}, Lcom/laborbook/base/utils/PdfGenerator$Companion;->formatCurrency(D)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v1, v5, v8}, Lcom/laborbook/base/utils/PdfGenerator$Companion;->createPaymentCell(Ljava/lang/String;Ljava/lang/String;)Lcom/itextpdf/layout/element/Cell;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/itextpdf/layout/element/Table;->addCell(Lcom/itextpdf/layout/element/Cell;)Lcom/itextpdf/layout/element/Table;

    .line 205
    sget v5, Lcom/laborbook/base/R$string;->total_earnings_label:I

    invoke-virtual {v9, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-wide/from16 v10, p14

    invoke-direct {v1, v10, v11}, Lcom/laborbook/base/utils/PdfGenerator$Companion;->formatCurrency(D)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v1, v5, v8}, Lcom/laborbook/base/utils/PdfGenerator$Companion;->createPaymentCell(Ljava/lang/String;Ljava/lang/String;)Lcom/itextpdf/layout/element/Cell;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/itextpdf/layout/element/Table;->addCell(Lcom/itextpdf/layout/element/Cell;)Lcom/itextpdf/layout/element/Table;

    .line 207
    check-cast v2, Lcom/itextpdf/layout/element/IBlockElement;

    invoke-virtual {v4, v2}, Lcom/itextpdf/layout/Document;->add(Lcom/itextpdf/layout/element/IBlockElement;)Lcom/itextpdf/layout/Document;
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_1b} :catch_9
    .catchall {:try_start_1b .. :try_end_1b} :catchall_a

    goto :goto_d

    :catchall_9
    move-exception v0

    goto/16 :goto_8

    :catchall_a
    move-exception v0

    goto/16 :goto_9

    :catch_9
    move-exception v0

    move-object v2, v0

    .line 209
    :try_start_1c
    new-instance v5, Ljava/lang/StringBuilder;

    move-object/from16 v8, v23

    invoke-direct {v5, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    check-cast v2, Ljava/lang/Throwable;

    invoke-static {v3, v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_1c} :catch_f
    .catchall {:try_start_1c .. :try_end_1c} :catchall_b

    .line 214
    :goto_d
    :try_start_1d
    new-instance v2, Lcom/itextpdf/layout/element/Table;
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_1d} :catch_a
    .catchall {:try_start_1d .. :try_end_1d} :catchall_a

    const/4 v5, 0x2

    :try_start_1e
    new-array v5, v5, [F

    fill-array-data v5, :array_3
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_1e} :catch_a
    .catchall {:try_start_1e .. :try_end_1e} :catchall_9

    :try_start_1f
    invoke-static {v5}, Lcom/itextpdf/layout/properties/UnitValue;->createPercentArray([F)[Lcom/itextpdf/layout/properties/UnitValue;

    move-result-object v5

    invoke-direct {v2, v5}, Lcom/itextpdf/layout/element/Table;-><init>([Lcom/itextpdf/layout/properties/UnitValue;)V

    const/high16 v5, 0x42c80000    # 100.0f

    .line 215
    invoke-static {v5}, Lcom/itextpdf/layout/properties/UnitValue;->createPercentValue(F)Lcom/itextpdf/layout/properties/UnitValue;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/itextpdf/layout/element/Table;->setWidth(Lcom/itextpdf/layout/properties/UnitValue;)Lcom/itextpdf/layout/element/IElement;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/layout/element/Table;

    .line 216
    sget-object v5, Lcom/itextpdf/kernel/colors/ColorConstants;->BLUE:Lcom/itextpdf/kernel/colors/Color;

    invoke-virtual {v2, v5}, Lcom/itextpdf/layout/element/Table;->setBackgroundColor(Lcom/itextpdf/kernel/colors/Color;)Lcom/itextpdf/layout/IPropertyContainer;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/layout/element/Table;

    const/high16 v5, 0x41a00000    # 20.0f

    .line 217
    invoke-virtual {v2, v5}, Lcom/itextpdf/layout/element/Table;->setMarginBottom(F)Lcom/itextpdf/layout/element/IElement;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/layout/element/Table;

    .line 219
    sget v5, Lcom/laborbook/base/R$string;->report_generated_by_laborbook:I

    invoke-virtual {v9, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v6, 0x1

    invoke-direct {v1, v5, v6}, Lcom/laborbook/base/utils/PdfGenerator$Companion;->createFooterCell(Ljava/lang/String;Z)Lcom/itextpdf/layout/element/Cell;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/itextpdf/layout/element/Table;->addCell(Lcom/itextpdf/layout/element/Cell;)Lcom/itextpdf/layout/element/Table;

    .line 220
    sget v5, Lcom/laborbook/base/R$string;->download_app_for_free_newline:I

    invoke-virtual {v9, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "https://play.google.com/store/apps/details?id=com.laborbook"

    const/4 v8, 0x0

    invoke-direct {v1, v5, v6, v8}, Lcom/laborbook/base/utils/PdfGenerator$Companion;->createFooterCellWithLink(Ljava/lang/String;Ljava/lang/String;Z)Lcom/itextpdf/layout/element/Cell;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/itextpdf/layout/element/Table;->addCell(Lcom/itextpdf/layout/element/Cell;)Lcom/itextpdf/layout/element/Table;

    .line 222
    check-cast v2, Lcom/itextpdf/layout/element/IBlockElement;

    invoke-virtual {v4, v2}, Lcom/itextpdf/layout/Document;->add(Lcom/itextpdf/layout/element/IBlockElement;)Lcom/itextpdf/layout/Document;
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_1f} :catch_a
    .catchall {:try_start_1f .. :try_end_1f} :catchall_a

    goto :goto_e

    :catch_a
    move-exception v0

    move-object v2, v0

    .line 224
    :try_start_20
    new-instance v5, Ljava/lang/StringBuilder;

    move-object/from16 v6, v22

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    check-cast v2, Ljava/lang/Throwable;

    invoke-static {v3, v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 227
    :goto_e
    new-instance v2, Ljava/lang/StringBuilder;

    move-object/from16 v5, v21

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_20} :catch_f
    .catchall {:try_start_20 .. :try_end_20} :catchall_b

    .line 236
    :try_start_21
    invoke-virtual {v4}, Lcom/itextpdf/layout/Document;->close()V

    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_21} :catch_b

    goto :goto_f

    :catch_b
    move-exception v0

    move-object v2, v0

    .line 238
    new-instance v4, Ljava/lang/StringBuilder;

    move-object/from16 v5, v20

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    check-cast v2, Ljava/lang/Throwable;

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 242
    :goto_f
    :try_start_22
    invoke-virtual/range {v27 .. v27}, Lcom/itextpdf/kernel/pdf/PdfDocument;->close()V

    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_22} :catch_c

    goto :goto_10

    :catch_c
    move-exception v0

    move-object v2, v0

    .line 244
    new-instance v4, Ljava/lang/StringBuilder;

    move-object/from16 v6, v19

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    check-cast v2, Ljava/lang/Throwable;

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 248
    :goto_10
    :try_start_23
    invoke-virtual/range {v31 .. v31}, Lcom/itextpdf/kernel/pdf/PdfWriter;->close()V

    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_23} :catch_d

    goto :goto_11

    :catch_d
    move-exception v0

    move-object v2, v0

    .line 250
    new-instance v4, Ljava/lang/StringBuilder;

    move-object/from16 v8, v16

    invoke-direct {v4, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    check-cast v2, Ljava/lang/Throwable;

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 254
    :goto_11
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-virtual {v7}, Ljava/io/File;->canRead()Z

    move-result v2

    if-nez v2, :cond_8

    .line 256
    :try_start_24
    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    move-object/from16 v2, v17

    .line 257
    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_24} :catch_e

    goto :goto_12

    :catch_e
    move-exception v0

    move-object v2, v0

    .line 259
    new-instance v4, Ljava/lang/StringBuilder;

    move-object/from16 v9, v18

    invoke-direct {v4, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    check-cast v2, Ljava/lang/Throwable;

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_8
    :goto_12
    return-object v7

    :catchall_b
    move-exception v0

    goto :goto_14

    :catch_f
    move-exception v0

    move-object/from16 v8, v16

    move-object/from16 v2, v17

    move-object/from16 v9, v18

    move-object/from16 v6, v19

    move-object/from16 v5, v20

    move-object v11, v4

    move-object/from16 v10, v27

    goto :goto_17

    :catchall_c
    move-exception v0

    goto :goto_13

    :catch_10
    move-exception v0

    goto :goto_16

    :catchall_d
    move-exception v0

    move-object/from16 v31, v2

    :goto_13
    move-object/from16 v27, v10

    move-object v4, v11

    move-object v3, v14

    :goto_14
    move-object/from16 v8, v16

    move-object/from16 v2, v17

    move-object/from16 v9, v18

    move-object/from16 v6, v19

    move-object/from16 v5, v20

    move-object v13, v4

    :goto_15
    move-object v4, v0

    goto/16 :goto_2a

    :catch_11
    move-exception v0

    move-object/from16 v31, v2

    :goto_16
    move-object/from16 v27, v10

    move-object v4, v11

    move-object v3, v14

    move-object/from16 v8, v16

    move-object/from16 v2, v17

    move-object/from16 v9, v18

    move-object/from16 v6, v19

    move-object/from16 v5, v20

    :goto_17
    move-object v4, v0

    goto/16 :goto_25

    :catchall_e
    move-exception v0

    move-object/from16 v31, v2

    move-object/from16 v27, v10

    move-object v3, v14

    move-object/from16 v8, v16

    move-object/from16 v2, v17

    move-object/from16 v9, v18

    move-object/from16 v6, v19

    move-object/from16 v5, v20

    :goto_18
    move-object v4, v0

    const/4 v13, 0x0

    goto/16 :goto_2a

    :catch_12
    move-exception v0

    move-object/from16 v31, v2

    move-object/from16 v27, v10

    move-object v3, v14

    move-object/from16 v8, v16

    move-object/from16 v2, v17

    move-object/from16 v9, v18

    move-object/from16 v6, v19

    move-object/from16 v5, v20

    move-object v4, v0

    .line 100
    :try_start_25
    new-instance v10, Ljava/lang/StringBuilder;

    move-object/from16 v11, v25

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    check-cast v4, Ljava/lang/Throwable;

    invoke-static {v3, v10, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_25} :catch_16
    .catchall {:try_start_25 .. :try_end_25} :catchall_f

    .line 242
    :try_start_26
    invoke-virtual/range {v27 .. v27}, Lcom/itextpdf/kernel/pdf/PdfDocument;->close()V

    sget-object v4, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_26} :catch_13

    goto :goto_19

    :catch_13
    move-exception v0

    move-object v4, v0

    .line 244
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    check-cast v4, Ljava/lang/Throwable;

    invoke-static {v3, v5, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 248
    :goto_19
    :try_start_27
    invoke-virtual/range {v31 .. v31}, Lcom/itextpdf/kernel/pdf/PdfWriter;->close()V

    sget-object v4, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_27} :catch_14

    goto :goto_1a

    :catch_14
    move-exception v0

    move-object v4, v0

    .line 250
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    check-cast v4, Ljava/lang/Throwable;

    invoke-static {v3, v5, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 254
    :goto_1a
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-virtual {v7}, Ljava/io/File;->canRead()Z

    move-result v4

    if-nez v4, :cond_9

    .line 256
    :try_start_28
    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    .line 257
    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_28} :catch_15

    goto :goto_1b

    :catch_15
    move-exception v0

    move-object v2, v0

    .line 259
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    check-cast v2, Ljava/lang/Throwable;

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_9
    :goto_1b
    const/4 v2, 0x0

    return-object v2

    :catchall_f
    move-exception v0

    goto/16 :goto_18

    :catch_16
    move-exception v0

    move-object v4, v0

    move-object/from16 v10, v27

    goto/16 :goto_1f

    :catchall_10
    move-exception v0

    move-object/from16 v31, v2

    move-object v3, v14

    move-object/from16 v8, v16

    move-object/from16 v2, v17

    move-object/from16 v9, v18

    move-object/from16 v6, v19

    move-object/from16 v5, v20

    :goto_1c
    move-object v4, v0

    const/4 v13, 0x0

    const/16 v27, 0x0

    goto/16 :goto_2a

    :catch_17
    move-exception v0

    move-object/from16 v31, v2

    move-object v3, v14

    move-object/from16 v8, v16

    move-object/from16 v2, v17

    move-object/from16 v9, v18

    move-object/from16 v6, v19

    move-object/from16 v5, v20

    move-object v4, v0

    .line 92
    :try_start_29
    new-instance v10, Ljava/lang/StringBuilder;

    move-object/from16 v11, v26

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    check-cast v4, Ljava/lang/Throwable;

    invoke-static {v3, v10, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_29} :catch_1a
    .catchall {:try_start_29 .. :try_end_29} :catchall_11

    .line 248
    :try_start_2a
    invoke-virtual/range {v31 .. v31}, Lcom/itextpdf/kernel/pdf/PdfWriter;->close()V

    sget-object v4, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_2a} :catch_18

    goto :goto_1d

    :catch_18
    move-exception v0

    move-object v4, v0

    .line 250
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    check-cast v4, Ljava/lang/Throwable;

    invoke-static {v3, v5, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 254
    :goto_1d
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-virtual {v7}, Ljava/io/File;->canRead()Z

    move-result v4

    if-nez v4, :cond_a

    .line 256
    :try_start_2b
    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    .line 257
    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_2b} :catch_19

    goto :goto_1e

    :catch_19
    move-exception v0

    move-object v2, v0

    .line 259
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    check-cast v2, Ljava/lang/Throwable;

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_a
    :goto_1e
    const/4 v2, 0x0

    return-object v2

    :catchall_11
    move-exception v0

    goto :goto_1c

    :catch_1a
    move-exception v0

    move-object v4, v0

    const/4 v10, 0x0

    :goto_1f
    const/4 v11, 0x0

    goto/16 :goto_25

    :catch_1b
    move-exception v0

    move-object v3, v14

    move-object/from16 v8, v16

    move-object/from16 v2, v17

    move-object/from16 v9, v18

    move-object/from16 v6, v19

    move-object/from16 v5, v20

    move-object v4, v0

    .line 84
    :try_start_2c
    new-instance v10, Ljava/lang/StringBuilder;

    move-object/from16 v11, v27

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    check-cast v4, Ljava/lang/Throwable;

    invoke-static {v3, v10, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_2c} :catch_1d
    .catchall {:try_start_2c .. :try_end_2c} :catchall_12

    .line 254
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_b

    invoke-virtual {v7}, Ljava/io/File;->canRead()Z

    move-result v4

    if-nez v4, :cond_b

    .line 256
    :try_start_2d
    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    .line 257
    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_2d} :catch_1c

    goto :goto_20

    :catch_1c
    move-exception v0

    move-object v2, v0

    .line 259
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    check-cast v2, Ljava/lang/Throwable;

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_b
    :goto_20
    const/4 v2, 0x0

    return-object v2

    :catchall_12
    move-exception v0

    goto :goto_21

    :catch_1d
    move-exception v0

    goto :goto_22

    :catchall_13
    move-exception v0

    move-object v3, v14

    move-object/from16 v8, v16

    move-object/from16 v2, v17

    move-object/from16 v9, v18

    move-object/from16 v6, v19

    move-object/from16 v5, v20

    :goto_21
    move-object v4, v0

    goto :goto_23

    :catch_1e
    move-exception v0

    move-object v3, v14

    move-object/from16 v8, v16

    move-object/from16 v2, v17

    move-object/from16 v9, v18

    move-object/from16 v6, v19

    move-object/from16 v5, v20

    :goto_22
    move-object v4, v0

    goto :goto_24

    :catchall_14
    move-exception v0

    move-object v3, v14

    move-object/from16 v8, v16

    move-object/from16 v2, v17

    move-object/from16 v9, v18

    move-object/from16 v6, v19

    move-object/from16 v5, v20

    move-object v4, v0

    const/4 v7, 0x0

    :goto_23
    const/4 v13, 0x0

    const/16 v27, 0x0

    const/16 v31, 0x0

    goto/16 :goto_2a

    :catch_1f
    move-exception v0

    move-object v3, v14

    move-object/from16 v8, v16

    move-object/from16 v2, v17

    move-object/from16 v9, v18

    move-object/from16 v6, v19

    move-object/from16 v5, v20

    move-object v4, v0

    const/4 v7, 0x0

    :goto_24
    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v31, 0x0

    .line 231
    :goto_25
    :try_start_2e
    new-instance v12, Ljava/lang/StringBuilder;

    move-object/from16 v13, v29

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    check-cast v4, Ljava/lang/Throwable;

    invoke-static {v3, v12, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2e
    .catchall {:try_start_2e .. :try_end_2e} :catchall_15

    if-eqz v11, :cond_c

    .line 236
    :try_start_2f
    invoke-virtual {v11}, Lcom/itextpdf/layout/Document;->close()V

    sget-object v4, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_2f .. :try_end_2f} :catch_20

    goto :goto_26

    :catch_20
    move-exception v0

    move-object v4, v0

    .line 238
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    check-cast v4, Ljava/lang/Throwable;

    invoke-static {v3, v5, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_c
    :goto_26
    if-eqz v10, :cond_d

    .line 242
    :try_start_30
    invoke-virtual {v10}, Lcom/itextpdf/kernel/pdf/PdfDocument;->close()V

    sget-object v4, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_30 .. :try_end_30} :catch_21

    goto :goto_27

    :catch_21
    move-exception v0

    move-object v4, v0

    .line 244
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    check-cast v4, Ljava/lang/Throwable;

    invoke-static {v3, v5, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_d
    :goto_27
    if-eqz v31, :cond_e

    .line 248
    :try_start_31
    invoke-virtual/range {v31 .. v31}, Lcom/itextpdf/kernel/pdf/PdfWriter;->close()V

    sget-object v4, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_31 .. :try_end_31} :catch_22

    goto :goto_28

    :catch_22
    move-exception v0

    move-object v4, v0

    .line 250
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    check-cast v4, Ljava/lang/Throwable;

    invoke-static {v3, v5, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_e
    :goto_28
    if-eqz v7, :cond_f

    .line 254
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_f

    invoke-virtual {v7}, Ljava/io/File;->canRead()Z

    move-result v4

    if-nez v4, :cond_f

    .line 256
    :try_start_32
    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    .line 257
    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_32 .. :try_end_32} :catch_23

    goto :goto_29

    :catch_23
    move-exception v0

    move-object v2, v0

    .line 259
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    check-cast v2, Ljava/lang/Throwable;

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_f
    :goto_29
    const/4 v2, 0x0

    return-object v2

    :catchall_15
    move-exception v0

    move-object v4, v0

    move-object/from16 v27, v10

    move-object v13, v11

    :goto_2a
    if-eqz v13, :cond_10

    .line 236
    :try_start_33
    invoke-virtual {v13}, Lcom/itextpdf/layout/Document;->close()V

    sget-object v5, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_33 .. :try_end_33} :catch_24

    goto :goto_2b

    :catch_24
    move-exception v0

    move-object v10, v0

    .line 238
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    check-cast v10, Ljava/lang/Throwable;

    invoke-static {v3, v5, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_10
    :goto_2b
    if-eqz v27, :cond_11

    .line 242
    :try_start_34
    invoke-virtual/range {v27 .. v27}, Lcom/itextpdf/kernel/pdf/PdfDocument;->close()V

    sget-object v5, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_34 .. :try_end_34} :catch_25

    goto :goto_2c

    :catch_25
    move-exception v0

    move-object v5, v0

    .line 244
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    check-cast v5, Ljava/lang/Throwable;

    invoke-static {v3, v6, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_11
    :goto_2c
    if-eqz v31, :cond_12

    .line 248
    :try_start_35
    invoke-virtual/range {v31 .. v31}, Lcom/itextpdf/kernel/pdf/PdfWriter;->close()V

    sget-object v5, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_35 .. :try_end_35} :catch_26

    goto :goto_2d

    :catch_26
    move-exception v0

    move-object v5, v0

    .line 250
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    check-cast v5, Ljava/lang/Throwable;

    invoke-static {v3, v6, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_12
    :goto_2d
    if-eqz v7, :cond_13

    .line 254
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_13

    invoke-virtual {v7}, Ljava/io/File;->canRead()Z

    move-result v5

    if-nez v5, :cond_13

    .line 256
    :try_start_36
    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    .line 257
    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_36 .. :try_end_36} :catch_27

    goto :goto_2e

    :catch_27
    move-exception v0

    move-object v2, v0

    .line 259
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    check-cast v2, Ljava/lang/Throwable;

    invoke-static {v3, v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_13
    :goto_2e
    throw v4

    :array_0
    .array-data 4
        0x41f00000    # 30.0f
        0x428c0000    # 70.0f
    .end array-data

    :array_1
    .array-data 4
        0x42480000    # 50.0f
        0x42480000    # 50.0f
    .end array-data

    :array_2
    .array-data 4
        0x42480000    # 50.0f
        0x42480000    # 50.0f
    .end array-data

    :array_3
    .array-data 4
        0x42480000    # 50.0f
        0x42480000    # 50.0f
    .end array-data
.end method
