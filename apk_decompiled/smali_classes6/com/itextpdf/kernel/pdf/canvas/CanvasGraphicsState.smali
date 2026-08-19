.class public Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;
.super Ljava/lang/Object;
.source "CanvasGraphicsState.java"


# instance fields
.field private alphaIsShape:Z

.field private automaticStrokeAdjustment:Z

.field private blackGenerationFunction:Lcom/itextpdf/kernel/pdf/PdfObject;

.field private blackGenerationFunction2:Lcom/itextpdf/kernel/pdf/PdfObject;

.field private blendMode:Lcom/itextpdf/kernel/pdf/PdfObject;

.field private charSpacing:F

.field private ctm:Lcom/itextpdf/kernel/geom/Matrix;

.field private dashPattern:Lcom/itextpdf/kernel/pdf/PdfArray;

.field private fillAlpha:F

.field private fillColor:Lcom/itextpdf/kernel/colors/Color;

.field private fillOverprint:Z

.field private flatnessTolerance:F

.field private font:Lcom/itextpdf/kernel/font/PdfFont;

.field private fontSize:F

.field private halftone:Lcom/itextpdf/kernel/pdf/PdfObject;

.field private htp:Lcom/itextpdf/kernel/pdf/PdfObject;

.field private leading:F

.field private lineCapStyle:I

.field private lineJoinStyle:I

.field private lineWidth:F

.field private miterLimit:F

.field private overprintMode:I

.field private renderingIntent:Lcom/itextpdf/kernel/pdf/PdfName;

.field private scale:F

.field private smoothnessTolerance:Ljava/lang/Float;

.field private softMask:Lcom/itextpdf/kernel/pdf/PdfObject;

.field private strokeAlpha:F

.field private strokeColor:Lcom/itextpdf/kernel/colors/Color;

.field private strokeOverprint:Z

.field private textKnockout:Z

.field private textRenderingMode:I

.field private textRise:F

.field private transferFunction:Lcom/itextpdf/kernel/pdf/PdfObject;

.field private transferFunction2:Lcom/itextpdf/kernel/pdf/PdfObject;

.field private underColorRemovalFunction:Lcom/itextpdf/kernel/pdf/PdfObject;

.field private underColorRemovalFunction2:Lcom/itextpdf/kernel/pdf/PdfObject;

.field private wordSpacing:F


# direct methods
.method protected constructor <init>()V
    .locals 6

    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    new-instance v0, Lcom/itextpdf/kernel/geom/Matrix;

    invoke-direct {v0}, Lcom/itextpdf/kernel/geom/Matrix;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->ctm:Lcom/itextpdf/kernel/geom/Matrix;

    .line 75
    sget-object v0, Lcom/itextpdf/kernel/colors/DeviceGray;->BLACK:Lcom/itextpdf/kernel/colors/DeviceGray;

    iput-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->strokeColor:Lcom/itextpdf/kernel/colors/Color;

    .line 76
    sget-object v0, Lcom/itextpdf/kernel/colors/DeviceGray;->BLACK:Lcom/itextpdf/kernel/colors/DeviceGray;

    iput-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->fillColor:Lcom/itextpdf/kernel/colors/Color;

    const/4 v0, 0x0

    .line 79
    iput v0, p0, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->charSpacing:F

    .line 80
    iput v0, p0, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->wordSpacing:F

    const/high16 v1, 0x42c80000    # 100.0f

    .line 82
    iput v1, p0, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->scale:F

    .line 83
    iput v0, p0, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->leading:F

    const/4 v1, 0x0

    .line 86
    iput v1, p0, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->textRenderingMode:I

    .line 87
    iput v0, p0, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->textRise:F

    const/4 v0, 0x1

    .line 88
    iput-boolean v0, p0, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->textKnockout:Z

    const/high16 v2, 0x3f800000    # 1.0f

    .line 90
    iput v2, p0, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->lineWidth:F

    .line 91
    iput v1, p0, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->lineCapStyle:I

    .line 92
    iput v1, p0, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->lineJoinStyle:I

    const/high16 v3, 0x41200000    # 10.0f

    .line 93
    iput v3, p0, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->miterLimit:F

    .line 104
    new-instance v3, Lcom/itextpdf/kernel/pdf/PdfArray;

    const/4 v4, 0x2

    new-array v4, v4, [Lcom/itextpdf/kernel/pdf/PdfObject;

    new-instance v5, Lcom/itextpdf/kernel/pdf/PdfArray;

    invoke-direct {v5}, Lcom/itextpdf/kernel/pdf/PdfArray;-><init>()V

    aput-object v5, v4, v1

    new-instance v5, Lcom/itextpdf/kernel/pdf/PdfNumber;

    invoke-direct {v5, v1}, Lcom/itextpdf/kernel/pdf/PdfNumber;-><init>(I)V

    aput-object v5, v4, v0

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v3, v0}, Lcom/itextpdf/kernel/pdf/PdfArray;-><init>(Ljava/util/List;)V

    iput-object v3, p0, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->dashPattern:Lcom/itextpdf/kernel/pdf/PdfArray;

    .line 106
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->RelativeColorimetric:Lcom/itextpdf/kernel/pdf/PdfName;

    iput-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->renderingIntent:Lcom/itextpdf/kernel/pdf/PdfName;

    .line 107
    iput-boolean v1, p0, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->automaticStrokeAdjustment:Z

    .line 108
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->Normal:Lcom/itextpdf/kernel/pdf/PdfName;

    iput-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->blendMode:Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 109
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->None:Lcom/itextpdf/kernel/pdf/PdfName;

    iput-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->softMask:Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 112
    iput v2, p0, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->strokeAlpha:F

    .line 113
    iput v2, p0, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->fillAlpha:F

    .line 115
    iput-boolean v1, p0, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->alphaIsShape:Z

    .line 117
    iput-boolean v1, p0, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->strokeOverprint:Z

    .line 118
    iput-boolean v1, p0, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->fillOverprint:Z

    .line 119
    iput v1, p0, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->overprintMode:I

    .line 127
    iput v2, p0, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->flatnessTolerance:F

    return-void
.end method

.method public constructor <init>(Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;)V
    .locals 6

    .line 143
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    new-instance v0, Lcom/itextpdf/kernel/geom/Matrix;

    invoke-direct {v0}, Lcom/itextpdf/kernel/geom/Matrix;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->ctm:Lcom/itextpdf/kernel/geom/Matrix;

    .line 75
    sget-object v0, Lcom/itextpdf/kernel/colors/DeviceGray;->BLACK:Lcom/itextpdf/kernel/colors/DeviceGray;

    iput-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->strokeColor:Lcom/itextpdf/kernel/colors/Color;

    .line 76
    sget-object v0, Lcom/itextpdf/kernel/colors/DeviceGray;->BLACK:Lcom/itextpdf/kernel/colors/DeviceGray;

    iput-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->fillColor:Lcom/itextpdf/kernel/colors/Color;

    const/4 v0, 0x0

    .line 79
    iput v0, p0, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->charSpacing:F

    .line 80
    iput v0, p0, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->wordSpacing:F

    const/high16 v1, 0x42c80000    # 100.0f

    .line 82
    iput v1, p0, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->scale:F

    .line 83
    iput v0, p0, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->leading:F

    const/4 v1, 0x0

    .line 86
    iput v1, p0, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->textRenderingMode:I

    .line 87
    iput v0, p0, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->textRise:F

    const/4 v0, 0x1

    .line 88
    iput-boolean v0, p0, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->textKnockout:Z

    const/high16 v2, 0x3f800000    # 1.0f

    .line 90
    iput v2, p0, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->lineWidth:F

    .line 91
    iput v1, p0, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->lineCapStyle:I

    .line 92
    iput v1, p0, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->lineJoinStyle:I

    const/high16 v3, 0x41200000    # 10.0f

    .line 93
    iput v3, p0, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->miterLimit:F

    .line 104
    new-instance v3, Lcom/itextpdf/kernel/pdf/PdfArray;

    const/4 v4, 0x2

    new-array v4, v4, [Lcom/itextpdf/kernel/pdf/PdfObject;

    new-instance v5, Lcom/itextpdf/kernel/pdf/PdfArray;

    invoke-direct {v5}, Lcom/itextpdf/kernel/pdf/PdfArray;-><init>()V

    aput-object v5, v4, v1

    new-instance v5, Lcom/itextpdf/kernel/pdf/PdfNumber;

    invoke-direct {v5, v1}, Lcom/itextpdf/kernel/pdf/PdfNumber;-><init>(I)V

    aput-object v5, v4, v0

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v3, v0}, Lcom/itextpdf/kernel/pdf/PdfArray;-><init>(Ljava/util/List;)V

    iput-object v3, p0, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->dashPattern:Lcom/itextpdf/kernel/pdf/PdfArray;

    .line 106
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->RelativeColorimetric:Lcom/itextpdf/kernel/pdf/PdfName;

    iput-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->renderingIntent:Lcom/itextpdf/kernel/pdf/PdfName;

    .line 107
    iput-boolean v1, p0, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->automaticStrokeAdjustment:Z

    .line 108
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->Normal:Lcom/itextpdf/kernel/pdf/PdfName;

    iput-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->blendMode:Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 109
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->None:Lcom/itextpdf/kernel/pdf/PdfName;

    iput-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->softMask:Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 112
    iput v2, p0, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->strokeAlpha:F

    .line 113
    iput v2, p0, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->fillAlpha:F

    .line 115
    iput-boolean v1, p0, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->alphaIsShape:Z

    .line 117
    iput-boolean v1, p0, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->strokeOverprint:Z

    .line 118
    iput-boolean v1, p0, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->fillOverprint:Z

    .line 119
    iput v1, p0, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->overprintMode:I

    .line 127
    iput v2, p0, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->flatnessTolerance:F

    .line 144
    invoke-direct {p0, p1}, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->copyFrom(Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;)V

    return-void
.end method

.method private copyFrom(Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;)V
    .locals 1

    .line 832
    iget-object v0, p1, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->ctm:Lcom/itextpdf/kernel/geom/Matrix;

    iput-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->ctm:Lcom/itextpdf/kernel/geom/Matrix;

    .line 833
    iget-object v0, p1, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->strokeColor:Lcom/itextpdf/kernel/colors/Color;

    iput-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->strokeColor:Lcom/itextpdf/kernel/colors/Color;

    .line 834
    iget-object v0, p1, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->fillColor:Lcom/itextpdf/kernel/colors/Color;

    iput-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->fillColor:Lcom/itextpdf/kernel/colors/Color;

    .line 835
    iget v0, p1, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->charSpacing:F

    iput v0, p0, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->charSpacing:F

    .line 836
    iget v0, p1, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->wordSpacing:F

    iput v0, p0, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->wordSpacing:F

    .line 837
    iget v0, p1, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->scale:F

    iput v0, p0, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->scale:F

    .line 838
    iget v0, p1, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->leading:F

    iput v0, p0, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->leading:F

    .line 839
    iget-object v0, p1, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->font:Lcom/itextpdf/kernel/font/PdfFont;

    iput-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->font:Lcom/itextpdf/kernel/font/PdfFont;

    .line 840
    iget v0, p1, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->fontSize:F

    iput v0, p0, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->fontSize:F

    .line 841
    iget v0, p1, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->textRenderingMode:I

    iput v0, p0, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->textRenderingMode:I

    .line 842
    iget v0, p1, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->textRise:F

    iput v0, p0, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->textRise:F

    .line 843
    iget-boolean v0, p1, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->textKnockout:Z

    iput-boolean v0, p0, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->textKnockout:Z

    .line 844
    iget v0, p1, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->lineWidth:F

    iput v0, p0, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->lineWidth:F

    .line 845
    iget v0, p1, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->lineCapStyle:I

    iput v0, p0, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->lineCapStyle:I

    .line 846
    iget v0, p1, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->lineJoinStyle:I

    iput v0, p0, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->lineJoinStyle:I

    .line 847
    iget v0, p1, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->miterLimit:F

    iput v0, p0, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->miterLimit:F

    .line 848
    iget-object v0, p1, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->dashPattern:Lcom/itextpdf/kernel/pdf/PdfArray;

    iput-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->dashPattern:Lcom/itextpdf/kernel/pdf/PdfArray;

    .line 849
    iget-object v0, p1, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->renderingIntent:Lcom/itextpdf/kernel/pdf/PdfName;

    iput-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->renderingIntent:Lcom/itextpdf/kernel/pdf/PdfName;

    .line 850
    iget-boolean v0, p1, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->automaticStrokeAdjustment:Z

    iput-boolean v0, p0, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->automaticStrokeAdjustment:Z

    .line 851
    iget-object v0, p1, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->blendMode:Lcom/itextpdf/kernel/pdf/PdfObject;

    iput-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->blendMode:Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 852
    iget-object v0, p1, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->softMask:Lcom/itextpdf/kernel/pdf/PdfObject;

    iput-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->softMask:Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 853
    iget v0, p1, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->strokeAlpha:F

    iput v0, p0, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->strokeAlpha:F

    .line 854
    iget v0, p1, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->fillAlpha:F

    iput v0, p0, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->fillAlpha:F

    .line 855
    iget-boolean v0, p1, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->alphaIsShape:Z

    iput-boolean v0, p0, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->alphaIsShape:Z

    .line 856
    iget-boolean v0, p1, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->strokeOverprint:Z

    iput-boolean v0, p0, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->strokeOverprint:Z

    .line 857
    iget-boolean v0, p1, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->fillOverprint:Z

    iput-boolean v0, p0, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->fillOverprint:Z

    .line 858
    iget v0, p1, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->overprintMode:I

    iput v0, p0, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->overprintMode:I

    .line 859
    iget-object v0, p1, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->blackGenerationFunction:Lcom/itextpdf/kernel/pdf/PdfObject;

    iput-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->blackGenerationFunction:Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 860
    iget-object v0, p1, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->blackGenerationFunction2:Lcom/itextpdf/kernel/pdf/PdfObject;

    iput-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->blackGenerationFunction2:Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 861
    iget-object v0, p1, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->underColorRemovalFunction:Lcom/itextpdf/kernel/pdf/PdfObject;

    iput-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->underColorRemovalFunction:Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 862
    iget-object v0, p1, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->underColorRemovalFunction2:Lcom/itextpdf/kernel/pdf/PdfObject;

    iput-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->underColorRemovalFunction2:Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 863
    iget-object v0, p1, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->transferFunction:Lcom/itextpdf/kernel/pdf/PdfObject;

    iput-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->transferFunction:Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 864
    iget-object v0, p1, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->transferFunction2:Lcom/itextpdf/kernel/pdf/PdfObject;

    iput-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->transferFunction2:Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 865
    iget-object v0, p1, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->halftone:Lcom/itextpdf/kernel/pdf/PdfObject;

    iput-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->halftone:Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 866
    iget v0, p1, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->flatnessTolerance:F

    iput v0, p0, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->flatnessTolerance:F

    .line 867
    iget-object v0, p1, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->smoothnessTolerance:Ljava/lang/Float;

    iput-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->smoothnessTolerance:Ljava/lang/Float;

    .line 868
    iget-object p1, p1, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->htp:Lcom/itextpdf/kernel/pdf/PdfObject;

    iput-object p1, p0, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->htp:Lcom/itextpdf/kernel/pdf/PdfObject;

    return-void
.end method


# virtual methods
.method public getAlphaIsShape()Z
    .locals 1

    .line 701
    iget-boolean v0, p0, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->alphaIsShape:Z

    return v0
.end method

.method public getAutomaticStrokeAdjustment()Z
    .locals 1

    .line 649
    iget-boolean v0, p0, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->automaticStrokeAdjustment:Z

    return v0
.end method

.method public getBlackGenerationFunction()Lcom/itextpdf/kernel/pdf/PdfObject;
    .locals 1

    .line 556
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->blackGenerationFunction:Lcom/itextpdf/kernel/pdf/PdfObject;

    return-object v0
.end method

.method public getBlackGenerationFunction2()Lcom/itextpdf/kernel/pdf/PdfObject;
    .locals 1

    .line 568
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->blackGenerationFunction2:Lcom/itextpdf/kernel/pdf/PdfObject;

    return-object v0
.end method

.method public getBlendMode()Lcom/itextpdf/kernel/pdf/PdfObject;
    .locals 1

    .line 660
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->blendMode:Lcom/itextpdf/kernel/pdf/PdfObject;

    return-object v0
.end method

.method public getCharSpacing()F
    .locals 1

    .line 474
    iget v0, p0, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->charSpacing:F

    return v0
.end method

.method public getCtm()Lcom/itextpdf/kernel/geom/Matrix;
    .locals 1

    .line 160
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->ctm:Lcom/itextpdf/kernel/geom/Matrix;

    return-object v0
.end method

.method public getDashPattern()Lcom/itextpdf/kernel/pdf/PdfArray;
    .locals 1

    .line 310
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->dashPattern:Lcom/itextpdf/kernel/pdf/PdfArray;

    return-object v0
.end method

.method public getFillColor()Lcom/itextpdf/kernel/colors/Color;
    .locals 1

    .line 193
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->fillColor:Lcom/itextpdf/kernel/colors/Color;

    return-object v0
.end method

.method public getFillOpacity()F
    .locals 1

    .line 691
    iget v0, p0, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->fillAlpha:F

    return v0
.end method

.method public getFillOverprint()Z
    .locals 1

    .line 534
    iget-boolean v0, p0, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->fillOverprint:Z

    return v0
.end method

.method public getFlatnessTolerance()F
    .locals 1

    .line 424
    iget v0, p0, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->flatnessTolerance:F

    return v0
.end method

.method public getFont()Lcom/itextpdf/kernel/font/PdfFont;
    .locals 1

    .line 365
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->font:Lcom/itextpdf/kernel/font/PdfFont;

    return-object v0
.end method

.method public getFontSize()F
    .locals 1

    .line 346
    iget v0, p0, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->fontSize:F

    return v0
.end method

.method public getHTP()Lcom/itextpdf/kernel/pdf/PdfObject;
    .locals 1

    .line 722
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->htp:Lcom/itextpdf/kernel/pdf/PdfObject;

    return-object v0
.end method

.method public getHalftone()Lcom/itextpdf/kernel/pdf/PdfObject;
    .locals 1

    .line 627
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->halftone:Lcom/itextpdf/kernel/pdf/PdfObject;

    return-object v0
.end method

.method public getHorizontalScaling()F
    .locals 1

    .line 504
    iget v0, p0, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->scale:F

    return v0
.end method

.method public getLeading()F
    .locals 1

    .line 484
    iget v0, p0, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->leading:F

    return v0
.end method

.method public getLineCapStyle()I
    .locals 1

    .line 249
    iget v0, p0, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->lineCapStyle:I

    return v0
.end method

.method public getLineJoinStyle()I
    .locals 1

    .line 269
    iget v0, p0, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->lineJoinStyle:I

    return v0
.end method

.method public getLineWidth()F
    .locals 1

    .line 229
    iget v0, p0, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->lineWidth:F

    return v0
.end method

.method public getMiterLimit()F
    .locals 1

    .line 289
    iget v0, p0, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->miterLimit:F

    return v0
.end method

.method public getOverprintMode()I
    .locals 1

    .line 545
    iget v0, p0, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->overprintMode:I

    return v0
.end method

.method public getRenderingIntent()Lcom/itextpdf/kernel/pdf/PdfName;
    .locals 1

    .line 329
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->renderingIntent:Lcom/itextpdf/kernel/pdf/PdfName;

    return-object v0
.end method

.method public getSmoothnessTolerance()Ljava/lang/Float;
    .locals 1

    .line 639
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->smoothnessTolerance:Ljava/lang/Float;

    return-object v0
.end method

.method public getSoftMask()Lcom/itextpdf/kernel/pdf/PdfObject;
    .locals 1

    .line 671
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->softMask:Lcom/itextpdf/kernel/pdf/PdfObject;

    return-object v0
.end method

.method public getStrokeColor()Lcom/itextpdf/kernel/colors/Color;
    .locals 1

    .line 211
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->strokeColor:Lcom/itextpdf/kernel/colors/Color;

    return-object v0
.end method

.method public getStrokeOpacity()F
    .locals 1

    .line 681
    iget v0, p0, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->strokeAlpha:F

    return v0
.end method

.method public getStrokeOverprint()Z
    .locals 1

    .line 524
    iget-boolean v0, p0, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->strokeOverprint:Z

    return v0
.end method

.method public getTextKnockout()Z
    .locals 1

    .line 711
    iget-boolean v0, p0, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->textKnockout:Z

    return v0
.end method

.method public getTextRenderingMode()I
    .locals 1

    .line 384
    iget v0, p0, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->textRenderingMode:I

    return v0
.end method

.method public getTextRise()F
    .locals 1

    .line 404
    iget v0, p0, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->textRise:F

    return v0
.end method

.method public getTransferFunction()Lcom/itextpdf/kernel/pdf/PdfObject;
    .locals 1

    .line 604
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->transferFunction:Lcom/itextpdf/kernel/pdf/PdfObject;

    return-object v0
.end method

.method public getTransferFunction2()Lcom/itextpdf/kernel/pdf/PdfObject;
    .locals 1

    .line 616
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->transferFunction2:Lcom/itextpdf/kernel/pdf/PdfObject;

    return-object v0
.end method

.method public getUnderColorRemovalFunction()Lcom/itextpdf/kernel/pdf/PdfObject;
    .locals 1

    .line 580
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->underColorRemovalFunction:Lcom/itextpdf/kernel/pdf/PdfObject;

    return-object v0
.end method

.method public getUnderColorRemovalFunction2()Lcom/itextpdf/kernel/pdf/PdfObject;
    .locals 1

    .line 592
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->underColorRemovalFunction2:Lcom/itextpdf/kernel/pdf/PdfObject;

    return-object v0
.end method

.method public getWordSpacing()F
    .locals 1

    .line 454
    iget v0, p0, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->wordSpacing:F

    return v0
.end method

.method public setCharSpacing(F)V
    .locals 0

    .line 464
    iput p1, p0, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->charSpacing:F

    return-void
.end method

.method public setDashPattern(Lcom/itextpdf/kernel/pdf/PdfArray;)V
    .locals 0

    .line 320
    iput-object p1, p0, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->dashPattern:Lcom/itextpdf/kernel/pdf/PdfArray;

    return-void
.end method

.method public setFillColor(Lcom/itextpdf/kernel/colors/Color;)V
    .locals 0

    .line 202
    iput-object p1, p0, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->fillColor:Lcom/itextpdf/kernel/colors/Color;

    return-void
.end method

.method public setFlatnessTolerance(F)V
    .locals 0

    .line 434
    iput p1, p0, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->flatnessTolerance:F

    return-void
.end method

.method public setFont(Lcom/itextpdf/kernel/font/PdfFont;)V
    .locals 0

    .line 374
    iput-object p1, p0, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->font:Lcom/itextpdf/kernel/font/PdfFont;

    return-void
.end method

.method public setFontSize(F)V
    .locals 0

    .line 356
    iput p1, p0, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->fontSize:F

    return-void
.end method

.method public setHorizontalScaling(F)V
    .locals 0

    .line 514
    iput p1, p0, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->scale:F

    return-void
.end method

.method public setLeading(F)V
    .locals 0

    .line 494
    iput p1, p0, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->leading:F

    return-void
.end method

.method public setLineCapStyle(I)V
    .locals 0

    .line 259
    iput p1, p0, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->lineCapStyle:I

    return-void
.end method

.method public setLineJoinStyle(I)V
    .locals 0

    .line 279
    iput p1, p0, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->lineJoinStyle:I

    return-void
.end method

.method public setLineWidth(F)V
    .locals 0

    .line 238
    iput p1, p0, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->lineWidth:F

    return-void
.end method

.method public setMiterLimit(F)V
    .locals 0

    .line 299
    iput p1, p0, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->miterLimit:F

    return-void
.end method

.method public setRenderingIntent(Lcom/itextpdf/kernel/pdf/PdfName;)V
    .locals 0

    .line 337
    iput-object p1, p0, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->renderingIntent:Lcom/itextpdf/kernel/pdf/PdfName;

    return-void
.end method

.method public setStrokeColor(Lcom/itextpdf/kernel/colors/Color;)V
    .locals 0

    .line 220
    iput-object p1, p0, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->strokeColor:Lcom/itextpdf/kernel/colors/Color;

    return-void
.end method

.method public setTextRenderingMode(I)V
    .locals 0

    .line 394
    iput p1, p0, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->textRenderingMode:I

    return-void
.end method

.method public setTextRise(F)V
    .locals 0

    .line 414
    iput p1, p0, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->textRise:F

    return-void
.end method

.method public setWordSpacing(F)V
    .locals 0

    .line 444
    iput p1, p0, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->wordSpacing:F

    return-void
.end method

.method public updateCtm(FFFFFF)V
    .locals 8

    .line 175
    new-instance v7, Lcom/itextpdf/kernel/geom/Matrix;

    move-object v0, v7

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/itextpdf/kernel/geom/Matrix;-><init>(FFFFFF)V

    invoke-virtual {p0, v7}, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->updateCtm(Lcom/itextpdf/kernel/geom/Matrix;)V

    return-void
.end method

.method public updateCtm(Lcom/itextpdf/kernel/geom/Matrix;)V
    .locals 1

    .line 184
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->ctm:Lcom/itextpdf/kernel/geom/Matrix;

    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/geom/Matrix;->multiply(Lcom/itextpdf/kernel/geom/Matrix;)Lcom/itextpdf/kernel/geom/Matrix;

    move-result-object p1

    iput-object p1, p0, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->ctm:Lcom/itextpdf/kernel/geom/Matrix;

    return-void
.end method

.method public updateFromExtGState(Lcom/itextpdf/kernel/pdf/PdfDictionary;)V
    .locals 2

    .line 153
    new-instance v0, Lcom/itextpdf/kernel/pdf/extgstate/PdfExtGState;

    invoke-direct {v0, p1}, Lcom/itextpdf/kernel/pdf/extgstate/PdfExtGState;-><init>(Lcom/itextpdf/kernel/pdf/PdfDictionary;)V

    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getIndirectReference()Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getIndirectReference()Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    move-result-object p1

    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->getDocument()Lcom/itextpdf/kernel/pdf/PdfDocument;

    move-result-object p1

    :goto_0
    invoke-virtual {p0, v0, p1}, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->updateFromExtGState(Lcom/itextpdf/kernel/pdf/extgstate/PdfExtGState;Lcom/itextpdf/kernel/pdf/PdfDocument;)V

    return-void
.end method

.method public updateFromExtGState(Lcom/itextpdf/kernel/pdf/extgstate/PdfExtGState;)V
    .locals 1

    const/4 v0, 0x0

    .line 731
    invoke-virtual {p0, p1, v0}, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->updateFromExtGState(Lcom/itextpdf/kernel/pdf/extgstate/PdfExtGState;Lcom/itextpdf/kernel/pdf/PdfDocument;)V

    return-void
.end method

.method updateFromExtGState(Lcom/itextpdf/kernel/pdf/extgstate/PdfExtGState;Lcom/itextpdf/kernel/pdf/PdfDocument;)V
    .locals 3

    .line 741
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/extgstate/PdfExtGState;->getLineWidth()Ljava/lang/Float;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 743
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iput v0, p0, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->lineWidth:F

    .line 744
    :cond_0
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/extgstate/PdfExtGState;->getLineCapStyle()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 746
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->lineCapStyle:I

    .line 747
    :cond_1
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/extgstate/PdfExtGState;->getLineJoinStyle()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 749
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->lineJoinStyle:I

    .line 750
    :cond_2
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/extgstate/PdfExtGState;->getMiterLimit()Ljava/lang/Float;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 752
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iput v0, p0, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->miterLimit:F

    .line 753
    :cond_3
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/extgstate/PdfExtGState;->getDashPattern()Lcom/itextpdf/kernel/pdf/PdfArray;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 755
    iput-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->dashPattern:Lcom/itextpdf/kernel/pdf/PdfArray;

    .line 756
    :cond_4
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/extgstate/PdfExtGState;->getRenderingIntent()Lcom/itextpdf/kernel/pdf/PdfName;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 758
    iput-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->renderingIntent:Lcom/itextpdf/kernel/pdf/PdfName;

    .line 759
    :cond_5
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/extgstate/PdfExtGState;->getStrokeOverprintFlag()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 761
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->strokeOverprint:Z

    .line 762
    :cond_6
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/extgstate/PdfExtGState;->getFillOverprintFlag()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 764
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->fillOverprint:Z

    .line 765
    :cond_7
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/extgstate/PdfExtGState;->getOverprintMode()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 767
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->overprintMode:I

    .line 768
    :cond_8
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/extgstate/PdfExtGState;->getFont()Lcom/itextpdf/kernel/pdf/PdfArray;

    move-result-object v0

    if-eqz v0, :cond_b

    const/4 v1, 0x0

    .line 770
    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfArray;->getAsDictionary(I)Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v1

    .line 771
    iget-object v2, p0, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->font:Lcom/itextpdf/kernel/font/PdfFont;

    if-eqz v2, :cond_9

    invoke-virtual {v2}, Lcom/itextpdf/kernel/font/PdfFont;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v2

    if-eq v2, v1, :cond_a

    .line 772
    :cond_9
    invoke-virtual {p2, v1}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getFont(Lcom/itextpdf/kernel/pdf/PdfDictionary;)Lcom/itextpdf/kernel/font/PdfFont;

    move-result-object p2

    iput-object p2, p0, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->font:Lcom/itextpdf/kernel/font/PdfFont;

    :cond_a
    const/4 p2, 0x1

    .line 774
    invoke-virtual {v0, p2}, Lcom/itextpdf/kernel/pdf/PdfArray;->getAsNumber(I)Lcom/itextpdf/kernel/pdf/PdfNumber;

    move-result-object p2

    if-eqz p2, :cond_b

    .line 776
    invoke-virtual {p2}, Lcom/itextpdf/kernel/pdf/PdfNumber;->floatValue()F

    move-result p2

    iput p2, p0, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->fontSize:F

    .line 778
    :cond_b
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/extgstate/PdfExtGState;->getBlackGenerationFunction()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object p2

    if-eqz p2, :cond_c

    .line 780
    iput-object p2, p0, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->blackGenerationFunction:Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 781
    :cond_c
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/extgstate/PdfExtGState;->getBlackGenerationFunction2()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object p2

    if-eqz p2, :cond_d

    .line 783
    iput-object p2, p0, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->blackGenerationFunction2:Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 784
    :cond_d
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/extgstate/PdfExtGState;->getUndercolorRemovalFunction()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object p2

    if-eqz p2, :cond_e

    .line 786
    iput-object p2, p0, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->underColorRemovalFunction:Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 787
    :cond_e
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/extgstate/PdfExtGState;->getUndercolorRemovalFunction2()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object p2

    if-eqz p2, :cond_f

    .line 789
    iput-object p2, p0, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->underColorRemovalFunction2:Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 790
    :cond_f
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/extgstate/PdfExtGState;->getTransferFunction()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object p2

    if-eqz p2, :cond_10

    .line 792
    iput-object p2, p0, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->transferFunction:Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 793
    :cond_10
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/extgstate/PdfExtGState;->getTransferFunction2()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object p2

    if-eqz p2, :cond_11

    .line 795
    iput-object p2, p0, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->transferFunction2:Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 796
    :cond_11
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/extgstate/PdfExtGState;->getHalftone()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object p2

    if-eqz p2, :cond_12

    .line 798
    iput-object p2, p0, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->halftone:Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 799
    :cond_12
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/extgstate/PdfExtGState;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object p2

    check-cast p2, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->HTP:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p2, v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->get(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object p2

    if-eqz p2, :cond_13

    .line 801
    iput-object p2, p0, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->htp:Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 802
    :cond_13
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/extgstate/PdfExtGState;->getFlatnessTolerance()Ljava/lang/Float;

    move-result-object p2

    if-eqz p2, :cond_14

    .line 804
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    iput p2, p0, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->flatnessTolerance:F

    .line 805
    :cond_14
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/extgstate/PdfExtGState;->getSmothnessTolerance()Ljava/lang/Float;

    move-result-object p2

    if-eqz p2, :cond_15

    .line 807
    iput-object p2, p0, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->smoothnessTolerance:Ljava/lang/Float;

    .line 808
    :cond_15
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/extgstate/PdfExtGState;->getAutomaticStrokeAdjustmentFlag()Ljava/lang/Boolean;

    move-result-object p2

    if-eqz p2, :cond_16

    .line 810
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    iput-boolean p2, p0, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->automaticStrokeAdjustment:Z

    .line 811
    :cond_16
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/extgstate/PdfExtGState;->getBlendMode()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object p2

    if-eqz p2, :cond_17

    .line 813
    iput-object p2, p0, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->blendMode:Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 814
    :cond_17
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/extgstate/PdfExtGState;->getSoftMask()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object p2

    if-eqz p2, :cond_18

    .line 816
    iput-object p2, p0, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->softMask:Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 817
    :cond_18
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/extgstate/PdfExtGState;->getStrokeOpacity()Ljava/lang/Float;

    move-result-object p2

    if-eqz p2, :cond_19

    .line 819
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    iput p2, p0, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->strokeAlpha:F

    .line 820
    :cond_19
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/extgstate/PdfExtGState;->getFillOpacity()Ljava/lang/Float;

    move-result-object p2

    if-eqz p2, :cond_1a

    .line 822
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    iput p2, p0, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->fillAlpha:F

    .line 823
    :cond_1a
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/extgstate/PdfExtGState;->getAlphaSourceFlag()Ljava/lang/Boolean;

    move-result-object p2

    if-eqz p2, :cond_1b

    .line 825
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    iput-boolean p2, p0, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->alphaIsShape:Z

    .line 826
    :cond_1b
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/extgstate/PdfExtGState;->getTextKnockoutFlag()Ljava/lang/Boolean;

    move-result-object p1

    if-eqz p1, :cond_1c

    .line 828
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->textKnockout:Z

    :cond_1c
    return-void
.end method
