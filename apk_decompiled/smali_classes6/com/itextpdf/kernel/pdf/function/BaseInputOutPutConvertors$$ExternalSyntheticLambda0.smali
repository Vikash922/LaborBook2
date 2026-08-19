.class public final synthetic Lcom/itextpdf/kernel/pdf/function/BaseInputOutPutConvertors$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/itextpdf/kernel/pdf/function/BaseInputOutPutConvertors$IOutputConversionFunction;


# instance fields
.field public final synthetic f$0:I

.field public final synthetic f$1:D


# direct methods
.method public synthetic constructor <init>(ID)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/itextpdf/kernel/pdf/function/BaseInputOutPutConvertors$$ExternalSyntheticLambda0;->f$0:I

    iput-wide p2, p0, Lcom/itextpdf/kernel/pdf/function/BaseInputOutPutConvertors$$ExternalSyntheticLambda0;->f$1:D

    return-void
.end method


# virtual methods
.method public final convert([D)[B
    .locals 3

    .line 0
    iget v0, p0, Lcom/itextpdf/kernel/pdf/function/BaseInputOutPutConvertors$$ExternalSyntheticLambda0;->f$0:I

    iget-wide v1, p0, Lcom/itextpdf/kernel/pdf/function/BaseInputOutPutConvertors$$ExternalSyntheticLambda0;->f$1:D

    invoke-static {v0, v1, v2, p1}, Lcom/itextpdf/kernel/pdf/function/BaseInputOutPutConvertors;->lambda$getByteBasedOutputConvertor$1(ID[D)[B

    move-result-object p1

    return-object p1
.end method
