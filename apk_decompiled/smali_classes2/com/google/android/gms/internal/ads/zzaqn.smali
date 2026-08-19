.class public final Lcom/google/android/gms/internal/ads/zzaqn;
.super Ljava/io/ByteArrayOutputStream;
.source "com.google.android.gms:play-services-ads@@24.2.0"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzaqa;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzaqa;I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaqn;->zza:Lcom/google/android/gms/internal/ads/zzaqa;

    const/16 v0, 0x100

    .line 2
    invoke-static {p2, v0}, Ljava/lang/Math;->max(II)I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzaqa;->zzb(I)[B

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaqn;->buf:[B

    return-void
.end method

.method private final zza(I)V
    .locals 4

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzaqn;->count:I

    add-int/2addr v0, p1

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaqn;->buf:[B

    array-length v1, v1

    if-gt v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaqn;->zza:Lcom/google/android/gms/internal/ads/zzaqa;

    .line 2
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzaqn;->count:I

    add-int/2addr v1, p1

    add-int/2addr v1, v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzaqa;->zzb(I)[B

    move-result-object p1

    .line 3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaqn;->buf:[B

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzaqn;->count:I

    const/4 v3, 0x0

    invoke-static {v1, v3, p1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaqn;->buf:[B

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzaqa;->zza([B)V

    .line 5
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaqn;->buf:[B

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaqn;->zza:Lcom/google/android/gms/internal/ads/zzaqa;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaqn;->buf:[B

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzaqa;->zza([B)V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzaqn;->buf:[B

    .line 3
    invoke-super {p0}, Ljava/io/ByteArrayOutputStream;->close()V

    return-void
.end method

.method public final finalize()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaqn;->zza:Lcom/google/android/gms/internal/ads/zzaqa;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaqn;->buf:[B

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzaqa;->zza([B)V

    return-void
.end method

.method public final declared-synchronized write(I)V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x1

    .line 1
    :try_start_0
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzaqn;->zza(I)V

    .line 2
    invoke-super {p0, p1}, Ljava/io/ByteArrayOutputStream;->write(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final declared-synchronized write([BII)V
    .locals 0

    monitor-enter p0

    .line 3
    :try_start_0
    invoke-direct {p0, p3}, Lcom/google/android/gms/internal/ads/zzaqn;->zza(I)V

    .line 4
    invoke-super {p0, p1, p2, p3}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
