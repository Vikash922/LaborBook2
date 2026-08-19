.class public final Lcom/google/android/gms/internal/ads/zzgfz;
.super Lcom/google/android/gms/internal/ads/zzgen;
.source "com.google.android.gms:play-services-ads@@24.2.0"


# instance fields
.field private final zza:I

.field private final zzb:I

.field private final zzc:I

.field private final zzd:Lcom/google/android/gms/internal/ads/zzgfx;


# direct methods
.method synthetic constructor <init>(IIILcom/google/android/gms/internal/ads/zzgfx;Lcom/google/android/gms/internal/ads/zzgfy;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzgen;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzgfz;->zza:I

    const/16 p1, 0xc

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzgfz;->zzb:I

    const/16 p1, 0x10

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzgfz;->zzc:I

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzgfz;->zzd:Lcom/google/android/gms/internal/ads/zzgfx;

    return-void
.end method

.method public static zzc()Lcom/google/android/gms/internal/ads/zzgfw;
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/ads/zzgfw;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzgfw;-><init>(Lcom/google/android/gms/internal/ads/zzgfy;)V

    return-object v0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    instance-of v0, p1, Lcom/google/android/gms/internal/ads/zzgfz;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lcom/google/android/gms/internal/ads/zzgfz;

    iget v0, p1, Lcom/google/android/gms/internal/ads/zzgfz;->zza:I

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzgfz;->zza:I

    if-ne v0, v2, :cond_1

    iget v0, p1, Lcom/google/android/gms/internal/ads/zzgfz;->zzb:I

    iget v0, p1, Lcom/google/android/gms/internal/ads/zzgfz;->zzc:I

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzgfz;->zzd:Lcom/google/android/gms/internal/ads/zzgfx;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgfz;->zzd:Lcom/google/android/gms/internal/ads/zzgfx;

    if-ne p1, v0, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v1
.end method

.method public final hashCode()I
    .locals 5

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzgfz;->zza:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0xc

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x10

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzgfz;->zzd:Lcom/google/android/gms/internal/ads/zzgfx;

    const-class v4, Lcom/google/android/gms/internal/ads/zzgfz;

    filled-new-array {v4, v0, v1, v2, v3}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgfz;->zzd:Lcom/google/android/gms/internal/ads/zzgfx;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "AesGcm Parameters (variant: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", 12-byte IV, 16-byte tag, and "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzgfz;->zza:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "-byte key)"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zza()Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgfz;->zzd:Lcom/google/android/gms/internal/ads/zzgfx;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzgfx;->zzc:Lcom/google/android/gms/internal/ads/zzgfx;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final zzb()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzgfz;->zza:I

    return v0
.end method

.method public final zzd()Lcom/google/android/gms/internal/ads/zzgfx;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgfz;->zzd:Lcom/google/android/gms/internal/ads/zzgfx;

    return-object v0
.end method
