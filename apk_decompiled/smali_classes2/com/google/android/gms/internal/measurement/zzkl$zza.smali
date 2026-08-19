.class final Lcom/google/android/gms/internal/measurement/zzkl$zza;
.super Lcom/google/android/gms/internal/measurement/zzkl;
.source "com.google.android.gms:play-services-measurement-base@@22.1.0"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/measurement/zzkl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "zza"
.end annotation


# instance fields
.field private final zzb:[B

.field private final zzc:I

.field private zzd:I


# direct methods
.method constructor <init>([BII)V
    .locals 1

    const/4 p2, 0x0

    .line 2
    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/measurement/zzkl;-><init>(Lcom/google/android/gms/internal/measurement/zzkm;)V

    if-eqz p1, :cond_1

    .line 5
    array-length p2, p1

    sub-int/2addr p2, p3

    or-int/2addr p2, p3

    const/4 v0, 0x0

    if-ltz p2, :cond_0

    .line 9
    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzkl$zza;->zzb:[B

    .line 10
    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzkl$zza;->zzd:I

    .line 11
    iput p3, p0, Lcom/google/android/gms/internal/measurement/zzkl$zza;->zzc:I

    return-void

    .line 6
    :cond_0
    new-instance p2, Ljava/lang/IllegalArgumentException;

    array-length p1, p1

    .line 7
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    filled-new-array {p1, v0, p3}, [Ljava/lang/Object;

    move-result-object p1

    .line 8
    const-string p3, "Array range is invalid. Buffer.length=%d, offset=%d, length=%d"

    invoke-static {p3, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 4
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "buffer"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private final zzc([BII)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 18
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzkl$zza;->zzb:[B

    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzkl$zza;->zzd:I

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 19
    iget p1, p0, Lcom/google/android/gms/internal/measurement/zzkl$zza;->zzd:I

    add-int/2addr p1, p3

    iput p1, p0, Lcom/google/android/gms/internal/measurement/zzkl$zza;->zzd:I
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 22
    new-instance p2, Lcom/google/android/gms/internal/measurement/zzkl$zzb;

    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzkl$zza;->zzd:I

    .line 23
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzkl$zza;->zzc:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    filled-new-array {v0, v1, p3}, [Ljava/lang/Object;

    move-result-object p3

    const-string v0, "Pos: %d, limit: %d, len: %d"

    invoke-static {v0, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3, p1}, Lcom/google/android/gms/internal/measurement/zzkl$zzb;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method


# virtual methods
.method public final zza()I
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzkl$zza;->zzc:I

    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzkl$zza;->zzd:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public final zza(B)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 13
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzkl$zza;->zzb:[B

    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzkl$zza;->zzd:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/gms/internal/measurement/zzkl$zza;->zzd:I

    aput-byte p1, v0, v1
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 16
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzkl$zzb;

    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzkl$zza;->zzd:I

    .line 17
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p0, Lcom/google/android/gms/internal/measurement/zzkl$zza;->zzc:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v1, v2, v3}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "Pos: %d, limit: %d, len: %d"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/google/android/gms/internal/measurement/zzkl$zzb;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public final zza(I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 39
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzkl$zza;->zzb:[B

    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzkl$zza;->zzd:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/gms/internal/measurement/zzkl$zza;->zzd:I

    int-to-byte v3, p1

    aput-byte v3, v0, v1

    add-int/lit8 v3, v1, 0x2

    .line 40
    iput v3, p0, Lcom/google/android/gms/internal/measurement/zzkl$zza;->zzd:I

    shr-int/lit8 v4, p1, 0x8

    int-to-byte v4, v4

    aput-byte v4, v0, v2

    add-int/lit8 v2, v1, 0x3

    .line 41
    iput v2, p0, Lcom/google/android/gms/internal/measurement/zzkl$zza;->zzd:I

    shr-int/lit8 v4, p1, 0x10

    int-to-byte v4, v4

    aput-byte v4, v0, v3

    add-int/lit8 v1, v1, 0x4

    .line 42
    iput v1, p0, Lcom/google/android/gms/internal/measurement/zzkl$zza;->zzd:I

    ushr-int/lit8 p1, p1, 0x18

    int-to-byte p1, p1

    aput-byte p1, v0, v2
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 45
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzkl$zzb;

    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzkl$zza;->zzd:I

    .line 46
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p0, Lcom/google/android/gms/internal/measurement/zzkl$zza;->zzc:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v1, v2, v3}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "Pos: %d, limit: %d, len: %d"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/google/android/gms/internal/measurement/zzkl$zzb;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public final zza(II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x5

    .line 36
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/measurement/zzkl;->zzc(II)V

    .line 37
    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/measurement/zzkl;->zza(I)V

    return-void
.end method

.method public final zza(IJ)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 47
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/measurement/zzkl;->zzc(II)V

    .line 48
    invoke-virtual {p0, p2, p3}, Lcom/google/android/gms/internal/measurement/zzkl;->zza(J)V

    return-void
.end method

.method public final zza(ILcom/google/android/gms/internal/measurement/zzjs;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x2

    .line 30
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/measurement/zzkl;->zzc(II)V

    .line 31
    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/measurement/zzkl;->zza(Lcom/google/android/gms/internal/measurement/zzjs;)V

    return-void
.end method

.method public final zza(ILcom/google/android/gms/internal/measurement/zzml;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x3

    .line 78
    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/measurement/zzkl;->zzc(II)V

    const/4 v2, 0x2

    .line 79
    invoke-virtual {p0, v2, p1}, Lcom/google/android/gms/internal/measurement/zzkl;->zzd(II)V

    .line 81
    invoke-virtual {p0, v1, v2}, Lcom/google/android/gms/internal/measurement/zzkl;->zzc(II)V

    .line 82
    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/measurement/zzkl;->zza(Lcom/google/android/gms/internal/measurement/zzml;)V

    const/4 p1, 0x4

    .line 83
    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/measurement/zzkl;->zzc(II)V

    return-void
.end method

.method final zza(ILcom/google/android/gms/internal/measurement/zzml;Lcom/google/android/gms/internal/measurement/zznd;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x2

    .line 71
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/measurement/zzkl;->zzc(II)V

    .line 72
    move-object p1, p2

    check-cast p1, Lcom/google/android/gms/internal/measurement/zzji;

    invoke-virtual {p1, p3}, Lcom/google/android/gms/internal/measurement/zzji;->zza(Lcom/google/android/gms/internal/measurement/zznd;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/measurement/zzkl;->zzc(I)V

    .line 73
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzkl$zza;->zza:Lcom/google/android/gms/internal/measurement/zzko;

    invoke-interface {p3, p2, p1}, Lcom/google/android/gms/internal/measurement/zznd;->zza(Ljava/lang/Object;Lcom/google/android/gms/internal/measurement/zzos;)V

    return-void
.end method

.method public final zza(ILjava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x2

    .line 90
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/measurement/zzkl;->zzc(II)V

    .line 91
    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/measurement/zzkl;->zza(Ljava/lang/String;)V

    return-void
.end method

.method public final zza(IZ)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 24
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/measurement/zzkl;->zzc(II)V

    int-to-byte p1, p2

    .line 25
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/measurement/zzkl;->zza(B)V

    return-void
.end method

.method public final zza(J)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 50
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzkl$zza;->zzb:[B

    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzkl$zza;->zzd:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/gms/internal/measurement/zzkl$zza;->zzd:I

    long-to-int v3, p1

    int-to-byte v3, v3

    aput-byte v3, v0, v1

    add-int/lit8 v3, v1, 0x2

    .line 51
    iput v3, p0, Lcom/google/android/gms/internal/measurement/zzkl$zza;->zzd:I

    const/16 v4, 0x8

    shr-long v5, p1, v4

    long-to-int v5, v5

    int-to-byte v5, v5

    aput-byte v5, v0, v2

    add-int/lit8 v2, v1, 0x3

    .line 52
    iput v2, p0, Lcom/google/android/gms/internal/measurement/zzkl$zza;->zzd:I

    const/16 v5, 0x10

    shr-long v5, p1, v5

    long-to-int v5, v5

    int-to-byte v5, v5

    aput-byte v5, v0, v3

    add-int/lit8 v3, v1, 0x4

    .line 53
    iput v3, p0, Lcom/google/android/gms/internal/measurement/zzkl$zza;->zzd:I

    const/16 v5, 0x18

    shr-long v5, p1, v5

    long-to-int v5, v5

    int-to-byte v5, v5

    aput-byte v5, v0, v2

    add-int/lit8 v2, v1, 0x5

    .line 54
    iput v2, p0, Lcom/google/android/gms/internal/measurement/zzkl$zza;->zzd:I

    const/16 v5, 0x20

    shr-long v5, p1, v5

    long-to-int v5, v5

    int-to-byte v5, v5

    aput-byte v5, v0, v3

    add-int/lit8 v3, v1, 0x6

    .line 55
    iput v3, p0, Lcom/google/android/gms/internal/measurement/zzkl$zza;->zzd:I

    const/16 v5, 0x28

    shr-long v5, p1, v5

    long-to-int v5, v5

    int-to-byte v5, v5

    aput-byte v5, v0, v2

    add-int/lit8 v2, v1, 0x7

    .line 56
    iput v2, p0, Lcom/google/android/gms/internal/measurement/zzkl$zza;->zzd:I

    const/16 v5, 0x30

    shr-long v5, p1, v5

    long-to-int v5, v5

    int-to-byte v5, v5

    aput-byte v5, v0, v3

    add-int/2addr v1, v4

    .line 57
    iput v1, p0, Lcom/google/android/gms/internal/measurement/zzkl$zza;->zzd:I

    const/16 v1, 0x38

    shr-long/2addr p1, v1

    long-to-int p1, p1

    int-to-byte p1, p1

    aput-byte p1, v0, v2
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 60
    new-instance p2, Lcom/google/android/gms/internal/measurement/zzkl$zzb;

    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzkl$zza;->zzd:I

    .line 61
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzkl$zza;->zzc:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "Pos: %d, limit: %d, len: %d"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Lcom/google/android/gms/internal/measurement/zzkl$zzb;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public final zza(Lcom/google/android/gms/internal/measurement/zzjs;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 33
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzjs;->zzb()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/measurement/zzkl;->zzc(I)V

    .line 34
    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/measurement/zzjs;->zza(Lcom/google/android/gms/internal/measurement/zzjp;)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/measurement/zzml;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 75
    invoke-interface {p1}, Lcom/google/android/gms/internal/measurement/zzml;->zzcb()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/measurement/zzkl;->zzc(I)V

    .line 76
    invoke-interface {p1, p0}, Lcom/google/android/gms/internal/measurement/zzml;->zza(Lcom/google/android/gms/internal/measurement/zzkl;)V

    return-void
.end method

.method public final zza(Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 93
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzkl$zza;->zzd:I

    .line 94
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    mul-int/lit8 v1, v1, 0x3

    .line 95
    invoke-static {v1}, Lcom/google/android/gms/internal/measurement/zzkl$zza;->zzj(I)I

    move-result v1

    .line 96
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {v2}, Lcom/google/android/gms/internal/measurement/zzkl$zza;->zzj(I)I

    move-result v2

    if-ne v2, v1, :cond_0

    add-int v1, v0, v2

    .line 98
    iput v1, p0, Lcom/google/android/gms/internal/measurement/zzkl$zza;->zzd:I

    .line 99
    iget-object v3, p0, Lcom/google/android/gms/internal/measurement/zzkl$zza;->zzb:[B

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzkl;->zza()I

    move-result v4

    invoke-static {p1, v3, v1, v4}, Lcom/google/android/gms/internal/measurement/zzoc;->zza(Ljava/lang/String;[BII)I

    move-result v1

    .line 100
    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzkl$zza;->zzd:I

    sub-int v3, v1, v0

    sub-int/2addr v3, v2

    .line 102
    invoke-virtual {p0, v3}, Lcom/google/android/gms/internal/measurement/zzkl;->zzc(I)V

    .line 103
    iput v1, p0, Lcom/google/android/gms/internal/measurement/zzkl$zza;->zzd:I

    return-void

    .line 105
    :cond_0
    invoke-static {p1}, Lcom/google/android/gms/internal/measurement/zzoc;->zza(Ljava/lang/String;)I

    move-result v1

    .line 106
    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/measurement/zzkl;->zzc(I)V

    .line 107
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzkl$zza;->zzb:[B

    iget v2, p0, Lcom/google/android/gms/internal/measurement/zzkl$zza;->zzd:I

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzkl;->zza()I

    move-result v3

    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/internal/measurement/zzoc;->zza(Ljava/lang/String;[BII)I

    move-result v1

    iput v1, p0, Lcom/google/android/gms/internal/measurement/zzkl$zza;->zzd:I
    :try_end_0
    .catch Lcom/google/android/gms/internal/measurement/zzog; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 114
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzkl$zzb;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/measurement/zzkl$zzb;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :catch_1
    move-exception v1

    .line 110
    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzkl$zza;->zzd:I

    .line 111
    invoke-virtual {p0, p1, v1}, Lcom/google/android/gms/internal/measurement/zzkl;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/zzog;)V

    return-void
.end method

.method public final zza([BII)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 69
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/internal/measurement/zzkl$zza;->zzc([BII)V

    return-void
.end method

.method public final zzb(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-ltz p1, :cond_0

    .line 66
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/measurement/zzkl;->zzc(I)V

    return-void

    :cond_0
    int-to-long v0, p1

    .line 67
    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/measurement/zzkl;->zzb(J)V

    return-void
.end method

.method public final zzb(II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 62
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/measurement/zzkl;->zzc(II)V

    .line 63
    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/measurement/zzkl;->zzb(I)V

    return-void
.end method

.method public final zzb(IJ)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 130
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/measurement/zzkl;->zzc(II)V

    .line 131
    invoke-virtual {p0, p2, p3}, Lcom/google/android/gms/internal/measurement/zzkl;->zzb(J)V

    return-void
.end method

.method public final zzb(ILcom/google/android/gms/internal/measurement/zzjs;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x3

    .line 85
    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/measurement/zzkl;->zzc(II)V

    const/4 v2, 0x2

    .line 86
    invoke-virtual {p0, v2, p1}, Lcom/google/android/gms/internal/measurement/zzkl;->zzd(II)V

    .line 87
    invoke-virtual {p0, v1, p2}, Lcom/google/android/gms/internal/measurement/zzkl;->zza(ILcom/google/android/gms/internal/measurement/zzjs;)V

    const/4 p1, 0x4

    .line 88
    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/measurement/zzkl;->zzc(II)V

    return-void
.end method

.method public final zzb(J)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 133
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzkl;->zzc()Z

    move-result v0

    const/4 v1, 0x7

    const-wide/16 v2, 0x0

    const-wide/16 v4, -0x80

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzkl;->zza()I

    move-result v0

    const/16 v6, 0xa

    if-lt v0, v6, :cond_1

    :goto_0
    and-long v6, p1, v4

    cmp-long v0, v6, v2

    if-nez v0, :cond_0

    .line 135
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzkl$zza;->zzb:[B

    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzkl$zza;->zzd:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/gms/internal/measurement/zzkl$zza;->zzd:I

    int-to-long v1, v1

    long-to-int p1, p1

    int-to-byte p1, p1

    invoke-static {v0, v1, v2, p1}, Lcom/google/android/gms/internal/measurement/zzny;->zza([BJB)V

    return-void

    .line 137
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzkl$zza;->zzb:[B

    iget v6, p0, Lcom/google/android/gms/internal/measurement/zzkl$zza;->zzd:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lcom/google/android/gms/internal/measurement/zzkl$zza;->zzd:I

    int-to-long v6, v6

    long-to-int v8, p1

    or-int/lit16 v8, v8, 0x80

    int-to-byte v8, v8

    invoke-static {v0, v6, v7, v8}, Lcom/google/android/gms/internal/measurement/zzny;->zza([BJB)V

    ushr-long/2addr p1, v1

    goto :goto_0

    :cond_1
    :goto_1
    and-long v6, p1, v4

    cmp-long v0, v6, v2

    if-nez v0, :cond_2

    .line 140
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzkl$zza;->zzb:[B

    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzkl$zza;->zzd:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/gms/internal/measurement/zzkl$zza;->zzd:I

    long-to-int p1, p1

    int-to-byte p1, p1

    aput-byte p1, v0, v1

    return-void

    .line 142
    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzkl$zza;->zzb:[B

    iget v6, p0, Lcom/google/android/gms/internal/measurement/zzkl$zza;->zzd:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lcom/google/android/gms/internal/measurement/zzkl$zza;->zzd:I

    long-to-int v7, p1

    or-int/lit16 v7, v7, 0x80

    int-to-byte v7, v7

    aput-byte v7, v0, v6
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    ushr-long/2addr p1, v1

    goto :goto_1

    :catch_0
    move-exception p1

    .line 145
    new-instance p2, Lcom/google/android/gms/internal/measurement/zzkl$zzb;

    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzkl$zza;->zzd:I

    .line 146
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzkl$zza;->zzc:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "Pos: %d, limit: %d, len: %d"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Lcom/google/android/gms/internal/measurement/zzkl$zzb;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public final zzb([BII)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 27
    invoke-virtual {p0, p3}, Lcom/google/android/gms/internal/measurement/zzkl;->zzc(I)V

    const/4 p2, 0x0

    .line 28
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/internal/measurement/zzkl$zza;->zzc([BII)V

    return-void
.end method

.method public final zzc(I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :goto_0
    and-int/lit8 v0, p1, -0x80

    if-nez v0, :cond_0

    .line 123
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzkl$zza;->zzb:[B

    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzkl$zza;->zzd:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/gms/internal/measurement/zzkl$zza;->zzd:I

    int-to-byte p1, p1

    aput-byte p1, v0, v1

    return-void

    .line 125
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzkl$zza;->zzb:[B

    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzkl$zza;->zzd:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/gms/internal/measurement/zzkl$zza;->zzd:I

    or-int/lit16 v2, p1, 0x80

    int-to-byte v2, v2

    aput-byte v2, v0, v1
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    ushr-int/lit8 p1, p1, 0x7

    goto :goto_0

    :catch_0
    move-exception p1

    .line 128
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzkl$zzb;

    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzkl$zza;->zzd:I

    .line 129
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p0, Lcom/google/android/gms/internal/measurement/zzkl$zza;->zzc:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v1, v2, v3}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "Pos: %d, limit: %d, len: %d"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/google/android/gms/internal/measurement/zzkl$zzb;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public final zzc(II)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    shl-int/lit8 p1, p1, 0x3

    or-int/2addr p1, p2

    .line 117
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/measurement/zzkl;->zzc(I)V

    return-void
.end method

.method public final zzd(II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 119
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/measurement/zzkl;->zzc(II)V

    .line 120
    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/measurement/zzkl;->zzc(I)V

    return-void
.end method
