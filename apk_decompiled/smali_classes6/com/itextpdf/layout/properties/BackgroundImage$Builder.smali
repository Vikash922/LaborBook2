.class public Lcom/itextpdf/layout/properties/BackgroundImage$Builder;
.super Ljava/lang/Object;
.source "BackgroundImage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itextpdf/layout/properties/BackgroundImage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private backgroundSize:Lcom/itextpdf/layout/properties/BackgroundSize;

.field private blendMode:Lcom/itextpdf/layout/properties/BlendMode;

.field private clip:Lcom/itextpdf/layout/properties/BackgroundBox;

.field private image:Lcom/itextpdf/kernel/pdf/xobject/PdfXObject;

.field private linearGradientBuilder:Lcom/itextpdf/kernel/colors/gradients/AbstractLinearGradientBuilder;

.field private origin:Lcom/itextpdf/layout/properties/BackgroundBox;

.field private position:Lcom/itextpdf/layout/properties/BackgroundPosition;

.field private repeat:Lcom/itextpdf/layout/properties/BackgroundRepeat;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 242
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 232
    new-instance v0, Lcom/itextpdf/layout/properties/BackgroundPosition;

    invoke-direct {v0}, Lcom/itextpdf/layout/properties/BackgroundPosition;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/layout/properties/BackgroundImage$Builder;->position:Lcom/itextpdf/layout/properties/BackgroundPosition;

    .line 233
    new-instance v0, Lcom/itextpdf/layout/properties/BackgroundRepeat;

    invoke-direct {v0}, Lcom/itextpdf/layout/properties/BackgroundRepeat;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/layout/properties/BackgroundImage$Builder;->repeat:Lcom/itextpdf/layout/properties/BackgroundRepeat;

    .line 234
    invoke-static {}, Lcom/itextpdf/layout/properties/BackgroundImage;->access$000()Lcom/itextpdf/layout/properties/BlendMode;

    move-result-object v0

    iput-object v0, p0, Lcom/itextpdf/layout/properties/BackgroundImage$Builder;->blendMode:Lcom/itextpdf/layout/properties/BlendMode;

    .line 235
    new-instance v0, Lcom/itextpdf/layout/properties/BackgroundSize;

    invoke-direct {v0}, Lcom/itextpdf/layout/properties/BackgroundSize;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/layout/properties/BackgroundImage$Builder;->backgroundSize:Lcom/itextpdf/layout/properties/BackgroundSize;

    .line 236
    sget-object v0, Lcom/itextpdf/layout/properties/BackgroundBox;->BORDER_BOX:Lcom/itextpdf/layout/properties/BackgroundBox;

    iput-object v0, p0, Lcom/itextpdf/layout/properties/BackgroundImage$Builder;->clip:Lcom/itextpdf/layout/properties/BackgroundBox;

    .line 237
    sget-object v0, Lcom/itextpdf/layout/properties/BackgroundBox;->PADDING_BOX:Lcom/itextpdf/layout/properties/BackgroundBox;

    iput-object v0, p0, Lcom/itextpdf/layout/properties/BackgroundImage$Builder;->origin:Lcom/itextpdf/layout/properties/BackgroundBox;

    return-void
.end method


# virtual methods
.method public build()Lcom/itextpdf/layout/properties/BackgroundImage;
    .locals 11

    .line 350
    new-instance v10, Lcom/itextpdf/layout/properties/BackgroundImage;

    iget-object v1, p0, Lcom/itextpdf/layout/properties/BackgroundImage$Builder;->image:Lcom/itextpdf/kernel/pdf/xobject/PdfXObject;

    iget-object v2, p0, Lcom/itextpdf/layout/properties/BackgroundImage$Builder;->repeat:Lcom/itextpdf/layout/properties/BackgroundRepeat;

    iget-object v3, p0, Lcom/itextpdf/layout/properties/BackgroundImage$Builder;->position:Lcom/itextpdf/layout/properties/BackgroundPosition;

    iget-object v4, p0, Lcom/itextpdf/layout/properties/BackgroundImage$Builder;->backgroundSize:Lcom/itextpdf/layout/properties/BackgroundSize;

    iget-object v5, p0, Lcom/itextpdf/layout/properties/BackgroundImage$Builder;->linearGradientBuilder:Lcom/itextpdf/kernel/colors/gradients/AbstractLinearGradientBuilder;

    iget-object v6, p0, Lcom/itextpdf/layout/properties/BackgroundImage$Builder;->blendMode:Lcom/itextpdf/layout/properties/BlendMode;

    iget-object v7, p0, Lcom/itextpdf/layout/properties/BackgroundImage$Builder;->clip:Lcom/itextpdf/layout/properties/BackgroundBox;

    iget-object v8, p0, Lcom/itextpdf/layout/properties/BackgroundImage$Builder;->origin:Lcom/itextpdf/layout/properties/BackgroundBox;

    const/4 v9, 0x0

    move-object v0, v10

    invoke-direct/range {v0 .. v9}, Lcom/itextpdf/layout/properties/BackgroundImage;-><init>(Lcom/itextpdf/kernel/pdf/xobject/PdfXObject;Lcom/itextpdf/layout/properties/BackgroundRepeat;Lcom/itextpdf/layout/properties/BackgroundPosition;Lcom/itextpdf/layout/properties/BackgroundSize;Lcom/itextpdf/kernel/colors/gradients/AbstractLinearGradientBuilder;Lcom/itextpdf/layout/properties/BlendMode;Lcom/itextpdf/layout/properties/BackgroundBox;Lcom/itextpdf/layout/properties/BackgroundBox;Lcom/itextpdf/layout/properties/BackgroundImage$1;)V

    return-object v10
.end method

.method public setBackgroundBlendMode(Lcom/itextpdf/layout/properties/BlendMode;)Lcom/itextpdf/layout/properties/BackgroundImage$Builder;
    .locals 0

    if-eqz p1, :cond_0

    .line 304
    iput-object p1, p0, Lcom/itextpdf/layout/properties/BackgroundImage$Builder;->blendMode:Lcom/itextpdf/layout/properties/BlendMode;

    :cond_0
    return-object p0
.end method

.method public setBackgroundClip(Lcom/itextpdf/layout/properties/BackgroundBox;)Lcom/itextpdf/layout/properties/BackgroundImage$Builder;
    .locals 0

    .line 329
    iput-object p1, p0, Lcom/itextpdf/layout/properties/BackgroundImage$Builder;->clip:Lcom/itextpdf/layout/properties/BackgroundBox;

    return-object p0
.end method

.method public setBackgroundOrigin(Lcom/itextpdf/layout/properties/BackgroundBox;)Lcom/itextpdf/layout/properties/BackgroundImage$Builder;
    .locals 0

    .line 340
    iput-object p1, p0, Lcom/itextpdf/layout/properties/BackgroundImage$Builder;->origin:Lcom/itextpdf/layout/properties/BackgroundBox;

    return-object p0
.end method

.method public setBackgroundPosition(Lcom/itextpdf/layout/properties/BackgroundPosition;)Lcom/itextpdf/layout/properties/BackgroundImage$Builder;
    .locals 0

    .line 292
    iput-object p1, p0, Lcom/itextpdf/layout/properties/BackgroundImage$Builder;->position:Lcom/itextpdf/layout/properties/BackgroundPosition;

    return-object p0
.end method

.method public setBackgroundRepeat(Lcom/itextpdf/layout/properties/BackgroundRepeat;)Lcom/itextpdf/layout/properties/BackgroundImage$Builder;
    .locals 0

    .line 281
    iput-object p1, p0, Lcom/itextpdf/layout/properties/BackgroundImage$Builder;->repeat:Lcom/itextpdf/layout/properties/BackgroundRepeat;

    return-object p0
.end method

.method public setBackgroundSize(Lcom/itextpdf/layout/properties/BackgroundSize;)Lcom/itextpdf/layout/properties/BackgroundImage$Builder;
    .locals 0

    if-eqz p1, :cond_0

    .line 317
    iput-object p1, p0, Lcom/itextpdf/layout/properties/BackgroundImage$Builder;->backgroundSize:Lcom/itextpdf/layout/properties/BackgroundSize;

    :cond_0
    return-object p0
.end method

.method public setImage(Lcom/itextpdf/kernel/pdf/xobject/PdfXObject;)Lcom/itextpdf/layout/properties/BackgroundImage$Builder;
    .locals 0

    .line 254
    iput-object p1, p0, Lcom/itextpdf/layout/properties/BackgroundImage$Builder;->image:Lcom/itextpdf/kernel/pdf/xobject/PdfXObject;

    const/4 p1, 0x0

    .line 255
    iput-object p1, p0, Lcom/itextpdf/layout/properties/BackgroundImage$Builder;->linearGradientBuilder:Lcom/itextpdf/kernel/colors/gradients/AbstractLinearGradientBuilder;

    return-object p0
.end method

.method public setLinearGradientBuilder(Lcom/itextpdf/kernel/colors/gradients/AbstractLinearGradientBuilder;)Lcom/itextpdf/layout/properties/BackgroundImage$Builder;
    .locals 1

    .line 268
    iput-object p1, p0, Lcom/itextpdf/layout/properties/BackgroundImage$Builder;->linearGradientBuilder:Lcom/itextpdf/kernel/colors/gradients/AbstractLinearGradientBuilder;

    .line 269
    new-instance p1, Lcom/itextpdf/layout/properties/BackgroundRepeat;

    sget-object v0, Lcom/itextpdf/layout/properties/BackgroundRepeat$BackgroundRepeatValue;->NO_REPEAT:Lcom/itextpdf/layout/properties/BackgroundRepeat$BackgroundRepeatValue;

    invoke-direct {p1, v0}, Lcom/itextpdf/layout/properties/BackgroundRepeat;-><init>(Lcom/itextpdf/layout/properties/BackgroundRepeat$BackgroundRepeatValue;)V

    iput-object p1, p0, Lcom/itextpdf/layout/properties/BackgroundImage$Builder;->repeat:Lcom/itextpdf/layout/properties/BackgroundRepeat;

    const/4 p1, 0x0

    .line 270
    iput-object p1, p0, Lcom/itextpdf/layout/properties/BackgroundImage$Builder;->image:Lcom/itextpdf/kernel/pdf/xobject/PdfXObject;

    return-object p0
.end method
