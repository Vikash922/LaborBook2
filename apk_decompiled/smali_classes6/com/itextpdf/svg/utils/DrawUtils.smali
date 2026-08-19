.class public Lcom/itextpdf/svg/utils/DrawUtils;
.super Ljava/lang/Object;
.source "DrawUtils.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static arc(DDDDDDLcom/itextpdf/kernel/pdf/canvas/PdfCanvas;)V
    .locals 16

    .line 69
    invoke-static/range {p0 .. p11}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->bezierArc(DDDDDD)Ljava/util/List;

    move-result-object v0

    .line 70
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 71
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [D

    const/4 v2, 0x2

    .line 72
    aget-wide v4, v1, v2

    const/4 v2, 0x3

    aget-wide v6, v1, v2

    const/4 v2, 0x4

    aget-wide v8, v1, v2

    const/4 v2, 0x5

    aget-wide v10, v1, v2

    const/4 v2, 0x6

    aget-wide v12, v1, v2

    const/4 v2, 0x7

    aget-wide v14, v1, v2

    move-object/from16 v3, p12

    invoke-virtual/range {v3 .. v15}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->curveTo(DDDDDD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    goto :goto_0

    :cond_0
    return-void
.end method
