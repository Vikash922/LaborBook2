.class public final Lcom/google/android/gms/internal/ads/zzgoz;
.super Lcom/google/android/gms/internal/ads/zzgpc;
.source "com.google.android.gms:play-services-ads@@24.2.0"


# instance fields
.field private final zza:I

.field private final zzb:I

.field private final zzc:Lcom/google/android/gms/internal/ads/zzgox;

.field private final zzd:Lcom/google/android/gms/internal/ads/zzgow;


# direct methods
.method synthetic constructor <init>(IILcom/google/android/gms/internal/ads/zzgox;Lcom/google/android/gms/internal/ads/zzgow;Lcom/google/android/gms/internal/ads/zzgoy;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzgpc;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzgoz;->zza:I

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzgoz;->zzb:I

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzgoz;->zzc:Lcom/google/android/gms/internal/ads/zzgox;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzgoz;->zzd:Lcom/google/android/gms/internal/ads/zzgow;

    return-void
.end method

.method public static zze()Lcom/google/android/gms/internal/ads/zzgov;
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/ads/zzgov;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzgov;-><init>(Lcom/google/android/gms/internal/ads/zzgoy;)V

    return-object v0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    instance-of v0, p1, Lcom/google/android/gms/internal/ads/zzgoz;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lcom/google/android/gms/internal/ads/zzgoz;

    iget v0, p1, Lcom/google/android/gms/internal/ads/zzgoz;->zza:I

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzgoz;->zza:I

    if-ne v0, v2, :cond_1

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzgoz;->zzd()I

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgoz;->zzd()I

    move-result v2

    if-ne v0, v2, :cond_1

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzgoz;->zzc:Lcom/google/android/gms/internal/ads/zzgox;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzgoz;->zzc:Lcom/google/android/gms/internal/ads/zzgox;

    if-ne v0, v2, :cond_1

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzgoz;->zzd:Lcom/google/android/gms/internal/ads/zzgow;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgoz;->zzd:Lcom/google/android/gms/internal/ads/zzgow;

    if-ne p1, v0, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v1
.end method

.method public final hashCode()I
    .locals 5

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzgoz;->zza:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzgoz;->zzb:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzgoz;->zzc:Lcom/google/android/gms/internal/ads/zzgox;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzgoz;->zzd:Lcom/google/android/gms/internal/ads/zzgow;

    const-class v4, Lcom/google/android/gms/internal/ads/zzgoz;

    filled-new-array {v4, v0, v1, v2, v3}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgoz;->zzd:Lcom/google/android/gms/internal/ads/zzgow;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzgoz;->zzc:Lcom/google/android/gms/internal/ads/zzgox;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "HMAC Parameters (variant: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", hashType: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzgoz;->zzb:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "-byte tags, and "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzgoz;->zza:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "-byte key)"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zza()Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgoz;->zzc:Lcom/google/android/gms/internal/ads/zzgox;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzgox;->zzd:Lcom/google/android/gms/internal/ads/zzgox;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final zzb()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzgoz;->zzb:I

    return v0
.end method

.method public final zzc()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzgoz;->zza:I

    return v0
.end method

.method public final zzd()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgoz;->zzc:Lcom/google/android/gms/internal/ads/zzgox;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzgox;->zzd:Lcom/google/android/gms/internal/ads/zzgox;

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzgoz;->zzb:I

    return v0

    :cond_0
    sget-object v1, Lcom/google/android/gms/internal/ads/zzgox;->zza:Lcom/google/android/gms/internal/ads/zzgox;

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    sget-object v1, Lcom/google/android/gms/internal/ads/zzgox;->zzb:Lcom/google/android/gms/internal/ads/zzgox;

    if-ne v0, v1, :cond_2

    goto :goto_0

    :cond_2
    sget-object v1, Lcom/google/android/gms/internal/ads/zzgox;->zzc:Lcom/google/android/gms/internal/ads/zzgox;

    if-ne v0, v1, :cond_3

    :goto_0
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzgoz;->zzb:I

    add-int/lit8 v0, v0, 0x5

    return v0

    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unknown variant"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final zzf()Lcom/google/android/gms/internal/ads/zzgow;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgoz;->zzd:Lcom/google/android/gms/internal/ads/zzgow;

    return-object v0
.end method

.method public final zzg()Lcom/google/android/gms/internal/ads/zzgox;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgoz;->zzc:Lcom/google/android/gms/internal/ads/zzgox;

    return-object v0
.end method
