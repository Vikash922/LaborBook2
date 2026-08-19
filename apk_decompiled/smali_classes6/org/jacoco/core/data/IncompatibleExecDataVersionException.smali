.class public Lorg/jacoco/core/data/IncompatibleExecDataVersionException;
.super Ljava/io/IOException;
.source "IncompatibleExecDataVersionException.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final actualVersion:I


# direct methods
.method public constructor <init>(I)V
    .locals 2

    .line 33
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sget-char v1, Lorg/jacoco/core/data/ExecutionDataWriter;->FORMAT_VERSION:C

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "Cannot read execution data version 0x%x. This version of JaCoCo uses execution data version 0x%x."

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 37
    iput p1, p0, Lorg/jacoco/core/data/IncompatibleExecDataVersionException;->actualVersion:I

    return-void
.end method


# virtual methods
.method public getActualVersion()I
    .locals 1

    .line 56
    iget v0, p0, Lorg/jacoco/core/data/IncompatibleExecDataVersionException;->actualVersion:I

    return v0
.end method

.method public getExpectedVersion()I
    .locals 1

    .line 47
    sget-char v0, Lorg/jacoco/core/data/ExecutionDataWriter;->FORMAT_VERSION:C

    return v0
.end method
