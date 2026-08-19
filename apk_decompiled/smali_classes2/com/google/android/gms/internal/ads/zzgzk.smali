.class final Lcom/google/android/gms/internal/ads/zzgzk;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-api@@24.2.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgzz;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzgzg;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzhal;

.field private final zzc:Z

.field private final zzd:Lcom/google/android/gms/internal/ads/zzgxg;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzhal;Lcom/google/android/gms/internal/ads/zzgxg;Lcom/google/android/gms/internal/ads/zzgzg;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgzk;->zzb:Lcom/google/android/gms/internal/ads/zzhal;

    instance-of p1, p3, Lcom/google/android/gms/internal/ads/zzgxr;

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzgzk;->zzc:Z

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzgzk;->zzd:Lcom/google/android/gms/internal/ads/zzgxg;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzgzk;->zza:Lcom/google/android/gms/internal/ads/zzgzg;

    return-void
.end method

.method static zzc(Lcom/google/android/gms/internal/ads/zzhal;Lcom/google/android/gms/internal/ads/zzgxg;Lcom/google/android/gms/internal/ads/zzgzg;)Lcom/google/android/gms/internal/ads/zzgzk;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzgzk;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzgzk;-><init>(Lcom/google/android/gms/internal/ads/zzhal;Lcom/google/android/gms/internal/ads/zzgxg;Lcom/google/android/gms/internal/ads/zzgzg;)V

    return-object v0
.end method


# virtual methods
.method public final zza(Ljava/lang/Object;)I
    .locals 2

    .line 1
    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/ads/zzgxv;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzgxv;->zzt:Lcom/google/android/gms/internal/ads/zzham;

    .line 2
    move-object v1, v0

    check-cast v1, Lcom/google/android/gms/internal/ads/zzham;

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzham;->zzb()I

    move-result v0

    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzgzk;->zzc:Z

    if-eqz v1, :cond_0

    .line 4
    check-cast p1, Lcom/google/android/gms/internal/ads/zzgxr;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzgxr;->zza:Lcom/google/android/gms/internal/ads/zzgxk;

    .line 5
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzgxk;->zzd()I

    move-result p1

    add-int/2addr v0, p1

    :cond_0
    return v0
.end method

.method public final zzb(Ljava/lang/Object;)I
    .locals 2

    .line 1
    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/ads/zzgxv;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzgxv;->zzt:Lcom/google/android/gms/internal/ads/zzham;

    .line 2
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzgzk;->zzc:Z

    if-eqz v1, :cond_0

    .line 3
    check-cast p1, Lcom/google/android/gms/internal/ads/zzgxr;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzgxr;->zza:Lcom/google/android/gms/internal/ads/zzgxk;

    mul-int/lit8 v0, v0, 0x35

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzgxk;->zza:Lcom/google/android/gms/internal/ads/zzhah;

    .line 4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzhah;->hashCode()I

    move-result p1

    add-int/2addr v0, p1

    :cond_0
    return v0
.end method

.method public final zze()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgzk;->zza:Lcom/google/android/gms/internal/ads/zzgzg;

    instance-of v1, v0, Lcom/google/android/gms/internal/ads/zzgxv;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzgxv;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgxv;->zzbj()Lcom/google/android/gms/internal/ads/zzgxv;

    move-result-object v0

    return-object v0

    .line 2
    :cond_0
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzgzg;->zzcX()Lcom/google/android/gms/internal/ads/zzgzf;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzgzf;->zzbs()Lcom/google/android/gms/internal/ads/zzgzg;

    move-result-object v0

    return-object v0
.end method

.method public final zzf(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgzk;->zzb:Lcom/google/android/gms/internal/ads/zzhal;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzhal;->zzi(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgzk;->zzd:Lcom/google/android/gms/internal/ads/zzgxg;

    .line 2
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzgxg;->zza(Ljava/lang/Object;)V

    return-void
.end method

.method public final zzg(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgzk;->zzb:Lcom/google/android/gms/internal/ads/zzhal;

    invoke-static {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzhab;->zzq(Lcom/google/android/gms/internal/ads/zzhal;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzgzk;->zzc:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgzk;->zzd:Lcom/google/android/gms/internal/ads/zzgxg;

    .line 2
    invoke-static {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzhab;->zzp(Lcom/google/android/gms/internal/ads/zzgxg;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final zzh(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzgzt;Lcom/google/android/gms/internal/ads/zzgxf;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzgzk;->zzb:Lcom/google/android/gms/internal/ads/zzhal;

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzhal;->zza(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    check-cast p1, Lcom/google/android/gms/internal/ads/zzgxr;

    const/4 p1, 0x0

    .line 3
    throw p1
.end method

.method public final zzi(Ljava/lang/Object;[BIILcom/google/android/gms/internal/ads/zzgwb;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    move-object p2, p1

    check-cast p2, Lcom/google/android/gms/internal/ads/zzgxv;

    iget-object p3, p2, Lcom/google/android/gms/internal/ads/zzgxv;->zzt:Lcom/google/android/gms/internal/ads/zzham;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzham;->zzc()Lcom/google/android/gms/internal/ads/zzham;

    move-result-object p4

    if-eq p3, p4, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzham;->zzf()Lcom/google/android/gms/internal/ads/zzham;

    move-result-object p3

    .line 2
    iput-object p3, p2, Lcom/google/android/gms/internal/ads/zzgxv;->zzt:Lcom/google/android/gms/internal/ads/zzham;

    .line 3
    :goto_0
    check-cast p1, Lcom/google/android/gms/internal/ads/zzgxr;

    const/4 p1, 0x0

    .line 4
    throw p1
.end method

.method public final zzj(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzhba;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/ads/zzgxr;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzgxr;->zza:Lcom/google/android/gms/internal/ads/zzgxk;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgxk;->zzf()Ljava/util/Iterator;

    move-result-object v0

    .line 3
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 4
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 5
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/zzgxj;

    .line 6
    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/zzgxj;->zzc()Lcom/google/android/gms/internal/ads/zzhaz;

    move-result-object v3

    sget-object v4, Lcom/google/android/gms/internal/ads/zzhaz;->zzi:Lcom/google/android/gms/internal/ads/zzhaz;

    if-ne v3, v4, :cond_1

    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/zzgxj;->zze()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/zzgxj;->zzd()Z

    move-result v3

    if-nez v3, :cond_1

    .line 13
    instance-of v3, v1, Lcom/google/android/gms/internal/ads/zzgyn;

    if-eqz v3, :cond_0

    .line 7
    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/zzgxj;->zza()I

    move-result v2

    check-cast v1, Lcom/google/android/gms/internal/ads/zzgyn;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzgyn;->zza()Lcom/google/android/gms/internal/ads/zzgyq;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzgyr;->zzb()Lcom/google/android/gms/internal/ads/zzgwn;

    move-result-object v1

    .line 8
    invoke-interface {p2, v2, v1}, Lcom/google/android/gms/internal/ads/zzhba;->zzw(ILjava/lang/Object;)V

    goto :goto_0

    .line 9
    :cond_0
    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/zzgxj;->zza()I

    move-result v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p2, v2, v1}, Lcom/google/android/gms/internal/ads/zzhba;->zzw(ILjava/lang/Object;)V

    goto :goto_0

    .line 6
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Found invalid MessageSet item."

    .line 13
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 10
    :cond_2
    check-cast p1, Lcom/google/android/gms/internal/ads/zzgxv;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzgxv;->zzt:Lcom/google/android/gms/internal/ads/zzham;

    .line 11
    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/ads/zzham;

    .line 12
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzham;->zzk(Lcom/google/android/gms/internal/ads/zzhba;)V

    return-void
.end method

.method public final zzk(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2

    .line 1
    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/ads/zzgxv;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzgxv;->zzt:Lcom/google/android/gms/internal/ads/zzham;

    .line 2
    move-object v1, p2

    check-cast v1, Lcom/google/android/gms/internal/ads/zzgxv;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzgxv;->zzt:Lcom/google/android/gms/internal/ads/zzham;

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzgzk;->zzc:Z

    if-eqz v0, :cond_1

    .line 4
    check-cast p1, Lcom/google/android/gms/internal/ads/zzgxr;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzgxr;->zza:Lcom/google/android/gms/internal/ads/zzgxk;

    .line 5
    check-cast p2, Lcom/google/android/gms/internal/ads/zzgxr;

    iget-object p2, p2, Lcom/google/android/gms/internal/ads/zzgxr;->zza:Lcom/google/android/gms/internal/ads/zzgxk;

    .line 6
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzgxk;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public final zzl(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/ads/zzgxr;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzgxr;->zza:Lcom/google/android/gms/internal/ads/zzgxk;

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzgxk;->zzi()Z

    move-result p1

    return p1
.end method
