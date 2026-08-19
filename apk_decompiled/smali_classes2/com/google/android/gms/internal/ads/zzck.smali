.class public final Lcom/google/android/gms/internal/ads/zzck;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.2.0"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzfww;

.field private final zzb:Ljava/util/List;

.field private zzc:[Ljava/nio/ByteBuffer;

.field private zzd:Z


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzfww;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzck;->zza:Lcom/google/android/gms/internal/ads/zzfww;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzck;->zzb:Ljava/util/List;

    const/4 p1, 0x0

    new-array v0, p1, [Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzck;->zzc:[Ljava/nio/ByteBuffer;

    .line 2
    sget-object v0, Lcom/google/android/gms/internal/ads/zzcl;->zza:Lcom/google/android/gms/internal/ads/zzcl;

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzck;->zzd:Z

    return-void
.end method

.method private final zzi()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzck;->zzc:[Ljava/nio/ByteBuffer;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method private final zzj(Ljava/nio/ByteBuffer;)V
    .locals 8

    const/4 v0, 0x0

    :goto_0
    move v1, v0

    move v2, v1

    .line 1
    :goto_1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzck;->zzi()I

    move-result v3

    if-gt v1, v3, :cond_6

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzck;->zzc:[Ljava/nio/ByteBuffer;

    .line 2
    aget-object v3, v3, v1

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v3

    if-nez v3, :cond_5

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzck;->zzb:Ljava/util/List;

    .line 3
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/ads/zzcn;

    .line 4
    invoke-interface {v4}, Lcom/google/android/gms/internal/ads/zzcn;->zzh()Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzck;->zzc:[Ljava/nio/ByteBuffer;

    .line 5
    aget-object v4, v4, v1

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v4

    if-nez v4, :cond_5

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzck;->zzi()I

    move-result v4

    if-ge v1, v4, :cond_5

    add-int/lit8 v4, v1, 0x1

    .line 6
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/ads/zzcn;

    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/zzcn;->zzd()V

    goto :goto_4

    :cond_0
    if-lez v1, :cond_1

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzck;->zzc:[Ljava/nio/ByteBuffer;

    add-int/lit8 v5, v1, -0x1

    .line 7
    aget-object v3, v3, v5

    goto :goto_2

    .line 8
    :cond_1
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v3

    if-eqz v3, :cond_2

    move-object v3, p1

    goto :goto_2

    :cond_2
    sget-object v3, Lcom/google/android/gms/internal/ads/zzcn;->zza:Ljava/nio/ByteBuffer;

    .line 9
    :goto_2
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v5

    int-to-long v5, v5

    .line 10
    invoke-interface {v4, v3}, Lcom/google/android/gms/internal/ads/zzcn;->zze(Ljava/nio/ByteBuffer;)V

    iget-object v7, p0, Lcom/google/android/gms/internal/ads/zzck;->zzc:[Ljava/nio/ByteBuffer;

    .line 11
    invoke-interface {v4}, Lcom/google/android/gms/internal/ads/zzcn;->zzb()Ljava/nio/ByteBuffer;

    move-result-object v4

    aput-object v4, v7, v1

    .line 12
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    int-to-long v3, v3

    sub-long/2addr v5, v3

    const-wide/16 v3, 0x0

    cmp-long v3, v5, v3

    const/4 v4, 0x1

    if-gtz v3, :cond_4

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzck;->zzc:[Ljava/nio/ByteBuffer;

    aget-object v3, v3, v1

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_3

    :cond_3
    move v4, v0

    :cond_4
    :goto_3
    or-int/2addr v2, v4

    :cond_5
    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_6
    if-eqz v2, :cond_7

    goto :goto_0

    :cond_7
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, Lcom/google/android/gms/internal/ads/zzck;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/google/android/gms/internal/ads/zzck;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzck;->zza:Lcom/google/android/gms/internal/ads/zzfww;

    .line 2
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzfww;->size()I

    move-result v3

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzck;->zza:Lcom/google/android/gms/internal/ads/zzfww;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfww;->size()I

    move-result v4

    if-ne v3, v4, :cond_4

    move v3, v2

    .line 3
    :goto_0
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzfww;->size()I

    move-result v4

    if-ge v3, v4, :cond_3

    .line 4
    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/ads/zzfww;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p1, v3}, Lcom/google/android/gms/internal/ads/zzfww;->get(I)Ljava/lang/Object;

    move-result-object v5

    if-eq v4, v5, :cond_2

    return v2

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    return v0

    :cond_4
    return v2
.end method

.method public final hashCode()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzck;->zza:Lcom/google/android/gms/internal/ads/zzfww;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfww;->hashCode()I

    move-result v0

    return v0
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzcl;)Lcom/google/android/gms/internal/ads/zzcl;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzcm;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzcl;->zza:Lcom/google/android/gms/internal/ads/zzcl;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzcl;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzck;->zza:Lcom/google/android/gms/internal/ads/zzfww;

    .line 2
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzfww;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 3
    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzfww;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/zzcn;

    .line 4
    invoke-interface {v2, p1}, Lcom/google/android/gms/internal/ads/zzcn;->zza(Lcom/google/android/gms/internal/ads/zzcl;)Lcom/google/android/gms/internal/ads/zzcl;

    move-result-object v3

    .line 5
    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/zzcn;->zzg()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 6
    invoke-virtual {v3, v0}, Lcom/google/android/gms/internal/ads/zzcl;->equals(Ljava/lang/Object;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzdc;->zzf(Z)V

    move-object p1, v3

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object p1

    :cond_2
    new-instance v0, Lcom/google/android/gms/internal/ads/zzcm;

    const-string v1, "Unhandled input format:"

    .line 7
    invoke-direct {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzcm;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzcl;)V

    .line 8
    throw v0
.end method

.method public final zzb()Ljava/nio/ByteBuffer;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzck;->zzh()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Lcom/google/android/gms/internal/ads/zzcn;->zza:Ljava/nio/ByteBuffer;

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzck;->zzc:[Ljava/nio/ByteBuffer;

    .line 3
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzck;->zzi()I

    move-result v1

    aget-object v0, v0, v1

    .line 4
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v1

    if-eqz v1, :cond_1

    return-object v0

    .line 5
    :cond_1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzcn;->zza:Ljava/nio/ByteBuffer;

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzck;->zzj(Ljava/nio/ByteBuffer;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzck;->zzc:[Ljava/nio/ByteBuffer;

    .line 6
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzck;->zzi()I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public final zzc()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzck;->zzb:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzck;->zzd:Z

    move v2, v1

    :goto_0
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzck;->zza:Lcom/google/android/gms/internal/ads/zzfww;

    .line 2
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzfww;->size()I

    move-result v4

    if-ge v2, v4, :cond_1

    .line 3
    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/ads/zzfww;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/ads/zzcn;

    .line 4
    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/zzcn;->zzc()V

    .line 5
    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/zzcn;->zzg()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 6
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 7
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Ljava/nio/ByteBuffer;

    iput-object v2, p0, Lcom/google/android/gms/internal/ads/zzck;->zzc:[Ljava/nio/ByteBuffer;

    .line 8
    :goto_1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzck;->zzi()I

    move-result v2

    if-gt v1, v2, :cond_2

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzck;->zzc:[Ljava/nio/ByteBuffer;

    .line 9
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/ads/zzcn;

    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/zzcn;->zzb()Ljava/nio/ByteBuffer;

    move-result-object v3

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method public final zzd()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzck;->zzh()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzck;->zzd:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzck;->zzd:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzck;->zzb:Ljava/util/List;

    const/4 v1, 0x0

    .line 2
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzcn;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzcn;->zzd()V

    :cond_1
    :goto_0
    return-void
.end method

.method public final zze(Ljava/nio/ByteBuffer;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzck;->zzh()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzck;->zzd:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzck;->zzj(Ljava/nio/ByteBuffer;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final zzf()V
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    .line 1
    :goto_0
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzck;->zza:Lcom/google/android/gms/internal/ads/zzfww;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzfww;->size()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 2
    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzfww;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/zzcn;

    .line 3
    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/zzcn;->zzc()V

    .line 4
    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/zzcn;->zzf()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-array v1, v0, [Ljava/nio/ByteBuffer;

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzck;->zzc:[Ljava/nio/ByteBuffer;

    .line 5
    sget-object v1, Lcom/google/android/gms/internal/ads/zzcl;->zza:Lcom/google/android/gms/internal/ads/zzcl;

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzck;->zzd:Z

    return-void
.end method

.method public final zzg()Z
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzck;->zzd:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzck;->zzb:Ljava/util/List;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzck;->zzi()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzcn;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzcn;->zzh()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzck;->zzc:[Ljava/nio/ByteBuffer;

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzck;->zzi()I

    move-result v1

    aget-object v0, v0, v1

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final zzh()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzck;->zzb:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
