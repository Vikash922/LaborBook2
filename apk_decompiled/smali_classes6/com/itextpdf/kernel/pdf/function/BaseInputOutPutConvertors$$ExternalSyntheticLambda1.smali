.class public final synthetic Lcom/itextpdf/kernel/pdf/function/BaseInputOutPutConvertors$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/itextpdf/kernel/pdf/function/BaseInputOutPutConvertors$IInputConversionFunction;


# instance fields
.field public final synthetic f$0:I

.field public final synthetic f$1:D


# direct methods
.method public synthetic constructor <init>(ID)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/itextpdf/kernel/pdf/function/BaseInputOutPutConvertors$$ExternalSyntheticLambda1;->f$0:I

    iput-wide p2, p0, Lcom/itextpdf/kernel/pdf/function/BaseInputOutPutConvertors$$ExternalSyntheticLambda1;->f$1:D

    return-void
.end method


# virtual methods
.method public final convert([BII)[D
    .locals 6

    .line 0
    iget v0, p0, Lcom/itextpdf/kernel/pdf/function/BaseInputOutPutConvertors$$ExternalSyntheticLambda1;->f$0:I

    iget-wide v1, p0, Lcom/itextpdf/kernel/pdf/function/BaseInputOutPutConvertors$$ExternalSyntheticLambda1;->f$1:D

    move-object v3, p1

    move v4, p2

    move v5, p3

    invoke-static/range {v0 .. v5}, Lcom/itextpdf/kernel/pdf/function/BaseInputOutPutConvertors;->lambda$getByteBasedInputConvertor$0(ID[BII)[D

    move-result-object p1

    return-object p1
.end method
