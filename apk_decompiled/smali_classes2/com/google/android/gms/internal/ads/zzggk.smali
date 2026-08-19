.class public final Lcom/google/android/gms/internal/ads/zzggk;
.super Lcom/google/android/gms/internal/ads/zzgen;
.source "com.google.android.gms:play-services-ads@@24.2.0"


# instance fields
.field private final zza:I

.field private final zzb:Lcom/google/android/gms/internal/ads/zzggi;


# direct methods
.method synthetic constructor <init>(ILcom/google/android/gms/internal/ads/zzggi;Lcom/google/android/gms/internal/ads/zzggj;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzgen;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzggk;->zza:I

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzggk;->zzb:Lcom/google/android/gms/internal/ads/zzggi;

    return-void
.end method

.method public static zzc()Lcom/google/android/gms/internal/ads/zzggh;
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/ads/zzggh;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzggh;-><init>(Lcom/google/android/gms/internal/ads/zzggj;)V

    return-object v0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    instance-of v0, p1, Lcom/google/android/gms/internal/ads/zzggk;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lcom/google/android/gms/internal/ads/zzggk;

    iget v0, p1, Lcom/google/android/gms/internal/ads/zzggk;->zza:I

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzggk;->zza:I

    if-ne v0, v2, :cond_1

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzggk;->zzb:Lcom/google/android/gms/internal/ads/zzggi;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzggk;->zzb:Lcom/google/android/gms/internal/ads/zzggi;

    if-ne p1, v0, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v1
.end method

.method public final hashCode()I
    .locals 3

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzggk;->zza:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzggk;->zzb:Lcom/google/android/gms/internal/ads/zzggi;

    const-class v2, Lcom/google/android/gms/internal/ads/zzggk;

    filled-new-array {v2, v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzggk;->zzb:Lcom/google/android/gms/internal/ads/zzggi;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "AesGcmSiv Parameters (variant: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzggk;->zza:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "-byte key)"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zza()Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzggk;->zzb:Lcom/google/android/gms/internal/ads/zzggi;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzggi;->zzc:Lcom/google/android/gms/internal/ads/zzggi;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final zzb()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzggk;->zza:I

    return v0
.end method

.method public final zzd()Lcom/google/android/gms/internal/ads/zzggi;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzggk;->zzb:Lcom/google/android/gms/internal/ads/zzggi;

    return-object v0
.end method
