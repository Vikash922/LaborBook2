.class public Lcom/itextpdf/svg/renderers/path/impl/QuadraticSmoothCurveTo;
.super Lcom/itextpdf/svg/renderers/path/impl/QuadraticCurveTo;
.source "QuadraticSmoothCurveTo.java"


# static fields
.field static final ARGUMENT_SIZE:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 54
    invoke-direct {p0, v0}, Lcom/itextpdf/svg/renderers/path/impl/QuadraticSmoothCurveTo;-><init>(Z)V

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1

    .line 58
    new-instance v0, Lcom/itextpdf/svg/renderers/path/impl/SmoothOperatorConverter;

    invoke-direct {v0}, Lcom/itextpdf/svg/renderers/path/impl/SmoothOperatorConverter;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/itextpdf/svg/renderers/path/impl/QuadraticCurveTo;-><init>(ZLcom/itextpdf/svg/renderers/path/impl/IOperatorConverter;)V

    return-void
.end method
