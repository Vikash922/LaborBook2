.class public final Lcom/itextpdf/io/exceptions/ExceptionUtil;
.super Ljava/lang/Object;
.source "ExceptionUtil.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isOutOfRange(Ljava/lang/Exception;)Z
    .locals 0

    .line 55
    instance-of p0, p0, Ljava/lang/IndexOutOfBoundsException;

    return p0
.end method
