.class public final Lcom/google/android/gms/internal/ads/zzgfe;
.super Lcom/google/android/gms/internal/ads/zzgen;
.source "com.google.android.gms:play-services-ads@@24.2.0"


# instance fields
.field private final zza:I

.field private final zzb:I

.field private final zzc:I

.field private final zzd:I

.field private final zze:Lcom/google/android/gms/internal/ads/zzgfc;

.field private final zzf:Lcom/google/android/gms/internal/ads/zzgfb;


# direct methods
.method synthetic constructor <init>(IIIILcom/google/android/gms/internal/ads/zzgfc;Lcom/google/android/gms/internal/ads/zzgfb;Lcom/google/android/gms/internal/ads/zzgfd;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzgen;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzgfe;->zza:I

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzgfe;->zzb:I

    iput p3, p0, Lcom/google/android/gms/internal/ads/zzgfe;->zzc:I

    iput p4, p0, Lcom/google/android/gms/internal/ads/zzgfe;->zzd:I

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzgfe;->zze:Lcom/google/android/gms/internal/ads/zzgfc;

    iput-object p6, p0, Lcom/google/android/gms/internal/ads/zzgfe;->zzf:Lcom/google/android/gms/internal/ads/zzgfb;

    return-void
.end method

.method public static zzf()Lcom/google/android/gms/internal/ads/zzgfa;
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/ads/zzgfa;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzgfa;-><init>(Lcom/google/android/gms/internal/ads/zzgfd;)V

    return-object v0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    instance-of v0, p1, Lcom/google/android/gms/internal/ads/zzgfe;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lcom/google/android/gms/internal/ads/zzgfe;

    iget v0, p1, Lcom/google/android/gms/internal/ads/zzgfe;->zza:I

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzgfe;->zza:I

    if-ne v0, v2, :cond_1

    iget v0, p1, Lcom/google/android/gms/internal/ads/zzgfe;->zzb:I

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzgfe;->zzb:I

    if-ne v0, v2, :cond_1

    iget v0, p1, Lcom/google/android/gms/internal/ads/zzgfe;->zzc:I

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzgfe;->zzc:I

    if-ne v0, v2, :cond_1

    iget v0, p1, Lcom/google/android/gms/internal/ads/zzgfe;->zzd:I

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzgfe;->zzd:I

    if-ne v0, v2, :cond_1

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzgfe;->zze:Lcom/google/android/gms/internal/ads/zzgfc;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzgfe;->zze:Lcom/google/android/gms/internal/ads/zzgfc;

    if-ne v0, v2, :cond_1

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzgfe;->zzf:Lcom/google/android/gms/internal/ads/zzgfb;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgfe;->zzf:Lcom/google/android/gms/internal/ads/zzgfb;

    if-ne p1, v0, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v1
.end method

.method public final hashCode()I
    .locals 8

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzgfe;->zza:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzgfe;->zzb:I

    .line 2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzgfe;->zzc:I

    .line 3
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzgfe;->zzd:I

    .line 4
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzgfe;->zze:Lcom/google/android/gms/internal/ads/zzgfc;

    iget-object v7, p0, Lcom/google/android/gms/internal/ads/zzgfe;->zzf:Lcom/google/android/gms/internal/ads/zzgfb;

    const-class v1, Lcom/google/android/gms/internal/ads/zzgfe;

    filled-new-array/range {v1 .. v7}, [Ljava/lang/Object;

    move-result-object v0

    .line 5
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgfe;->zzf:Lcom/google/android/gms/internal/ads/zzgfb;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzgfe;->zze:Lcom/google/android/gms/internal/ads/zzgfc;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "AesCtrHmacAead Parameters (variant: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", hashType: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzgfe;->zzc:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "-byte IV, and "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzgfe;->zzd:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "-byte tags, and "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzgfe;->zza:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "-byte AES key, and "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzgfe;->zzb:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "-byte HMAC key)"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zza()Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgfe;->zze:Lcom/google/android/gms/internal/ads/zzgfc;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzgfc;->zzc:Lcom/google/android/gms/internal/ads/zzgfc;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final zzb()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzgfe;->zza:I

    return v0
.end method

.method public final zzc()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzgfe;->zzb:I

    return v0
.end method

.method public final zzd()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzgfe;->zzc:I

    return v0
.end method

.method public final zze()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzgfe;->zzd:I

    return v0
.end method

.method public final zzg()Lcom/google/android/gms/internal/ads/zzgfb;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgfe;->zzf:Lcom/google/android/gms/internal/ads/zzgfb;

    return-object v0
.end method

.method public final zzh()Lcom/google/android/gms/internal/ads/zzgfc;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgfe;->zze:Lcom/google/android/gms/internal/ads/zzgfc;

    return-object v0
.end method
