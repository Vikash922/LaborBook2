.class public final Lcom/google/android/gms/internal/ads/zzgln;
.super Lcom/google/android/gms/internal/ads/zzgdv;
.source "com.google.android.gms:play-services-ads@@24.2.0"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzgnm;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzgnm;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzgdv;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgln;->zza:Lcom/google/android/gms/internal/ads/zzgnm;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    instance-of v0, p1, Lcom/google/android/gms/internal/ads/zzgln;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lcom/google/android/gms/internal/ads/zzgln;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzgln;->zza:Lcom/google/android/gms/internal/ads/zzgnm;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgln;->zza:Lcom/google/android/gms/internal/ads/zzgnm;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgnm;->zzc()Lcom/google/android/gms/internal/ads/zzgst;

    move-result-object v2

    .line 2
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzgst;->zzg()Lcom/google/android/gms/internal/ads/zzgtt;

    move-result-object v2

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzgnm;->zzc()Lcom/google/android/gms/internal/ads/zzgst;

    move-result-object v3

    .line 3
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzgst;->zzg()Lcom/google/android/gms/internal/ads/zzgtt;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzgtt;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgnm;->zzc()Lcom/google/android/gms/internal/ads/zzgst;

    move-result-object v2

    .line 4
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzgst;->zzi()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzgnm;->zzc()Lcom/google/android/gms/internal/ads/zzgst;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzgst;->zzi()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgnm;->zzc()Lcom/google/android/gms/internal/ads/zzgst;

    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgst;->zzh()Lcom/google/android/gms/internal/ads/zzgwn;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzgnm;->zzc()Lcom/google/android/gms/internal/ads/zzgst;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzgst;->zzh()Lcom/google/android/gms/internal/ads/zzgwn;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzgwn;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v1
.end method

.method public final hashCode()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgln;->zza:Lcom/google/android/gms/internal/ads/zzgnm;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgnm;->zzc()Lcom/google/android/gms/internal/ads/zzgst;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgnm;->zzd()Lcom/google/android/gms/internal/ads/zzgvs;

    move-result-object v0

    filled-new-array {v1, v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgln;->zza:Lcom/google/android/gms/internal/ads/zzgnm;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgnm;->zzc()Lcom/google/android/gms/internal/ads/zzgst;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzgst;->zzi()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgnm;->zzc()Lcom/google/android/gms/internal/ads/zzgst;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgst;->zzg()Lcom/google/android/gms/internal/ads/zzgtt;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgtt;->ordinal()I

    move-result v0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_3

    const/4 v2, 0x2

    if-eq v0, v2, :cond_2

    const/4 v2, 0x3

    if-eq v0, v2, :cond_1

    const/4 v2, 0x4

    if-eq v0, v2, :cond_0

    const-string v0, "UNKNOWN"

    goto :goto_0

    .line 4
    :cond_0
    const-string v0, "CRUNCHY"

    goto :goto_0

    :cond_1
    const-string v0, "RAW"

    goto :goto_0

    :cond_2
    const-string v0, "LEGACY"

    goto :goto_0

    :cond_3
    const-string v0, "TINK"

    .line 3
    :goto_0
    filled-new-array {v1, v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "(typeUrl=%s, outputPrefixType=%s)"

    .line 4
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zza()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgln;->zza:Lcom/google/android/gms/internal/ads/zzgnm;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgnm;->zzc()Lcom/google/android/gms/internal/ads/zzgst;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgst;->zzg()Lcom/google/android/gms/internal/ads/zzgtt;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/ads/zzgtt;->zzd:Lcom/google/android/gms/internal/ads/zzgtt;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final zzb()Lcom/google/android/gms/internal/ads/zzgnm;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgln;->zza:Lcom/google/android/gms/internal/ads/zzgnm;

    return-object v0
.end method
