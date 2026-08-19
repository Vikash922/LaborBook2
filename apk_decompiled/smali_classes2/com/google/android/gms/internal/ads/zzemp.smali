.class public final Lcom/google/android/gms/internal/ads/zzemp;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.2.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzesv;


# instance fields
.field final zza:Landroid/content/Context;

.field private final zzb:Ljava/lang/String;

.field private final zzc:Ljava/lang/String;

.field private final zzd:J

.field private final zze:Lcom/google/android/gms/internal/ads/zzcrw;

.field private final zzf:Lcom/google/android/gms/internal/ads/zzfcw;

.field private final zzg:Lcom/google/android/gms/internal/ads/zzfbp;

.field private final zzh:Lcom/google/android/gms/ads/internal/util/zzg;

.field private final zzi:Lcom/google/android/gms/internal/ads/zzdqy;

.field private final zzj:Lcom/google/android/gms/internal/ads/zzcsk;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzcrw;Lcom/google/android/gms/internal/ads/zzfcw;Lcom/google/android/gms/internal/ads/zzfbp;Lcom/google/android/gms/internal/ads/zzdqy;Lcom/google/android/gms/internal/ads/zzcsk;J)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzemp;->zza:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzemp;->zzb:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzemp;->zzc:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzemp;->zze:Lcom/google/android/gms/internal/ads/zzcrw;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzemp;->zzf:Lcom/google/android/gms/internal/ads/zzfcw;

    iput-object p6, p0, Lcom/google/android/gms/internal/ads/zzemp;->zzg:Lcom/google/android/gms/internal/ads/zzfbp;

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzp()Lcom/google/android/gms/internal/ads/zzbza;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbza;->zzi()Lcom/google/android/gms/ads/internal/util/zzg;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzemp;->zzh:Lcom/google/android/gms/ads/internal/util/zzg;

    iput-object p7, p0, Lcom/google/android/gms/internal/ads/zzemp;->zzi:Lcom/google/android/gms/internal/ads/zzdqy;

    iput-object p8, p0, Lcom/google/android/gms/internal/ads/zzemp;->zzj:Lcom/google/android/gms/internal/ads/zzcsk;

    iput-wide p9, p0, Lcom/google/android/gms/internal/ads/zzemp;->zzd:J

    return-void
.end method


# virtual methods
.method public final zza()I
    .locals 1

    const/16 v0, 0xc

    return v0
.end method

.method public final zzb()Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 10

    .line 1
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzemp;->zzi:Lcom/google/android/gms/internal/ads/zzdqy;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdqy;->zzb()Ljava/util/Map;

    move-result-object v1

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzemp;->zzb:Ljava/lang/String;

    const-string v4, "seq_num"

    invoke-interface {v1, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    sget-object v1, Lcom/google/android/gms/internal/ads/zzbci;->zzcq:Lcom/google/android/gms/internal/ads/zzbbz;

    .line 4
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbcg;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/google/android/gms/internal/ads/zzbcg;->zzb(Lcom/google/android/gms/internal/ads/zzbbz;)Ljava/lang/Object;

    move-result-object v1

    .line 3
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzC()Lcom/google/android/gms/common/util/Clock;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/google/android/gms/internal/ads/zzemp;->zzd:J

    sub-long/2addr v4, v6

    const-string v1, "tsacc"

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    .line 6
    invoke-virtual {v0, v1, v4}, Lcom/google/android/gms/internal/ads/zzdqy;->zzd(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzq()Lcom/google/android/gms/ads/internal/util/zzs;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzemp;->zza:Landroid/content/Context;

    invoke-static {v1}, Lcom/google/android/gms/ads/internal/util/zzs;->zzH(Landroid/content/Context;)Z

    move-result v1

    const/4 v4, 0x1

    if-eq v4, v1, :cond_0

    const-string v1, "1"

    goto :goto_0

    .line 11
    :cond_0
    const-string v1, "0"

    .line 7
    :goto_0
    const-string v4, "foreground"

    .line 8
    invoke-virtual {v0, v4, v1}, Lcom/google/android/gms/internal/ads/zzdqy;->zzd(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzemp;->zze:Lcom/google/android/gms/internal/ads/zzcrw;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzemp;->zzg:Lcom/google/android/gms/internal/ads/zzfbp;

    iget-object v4, v1, Lcom/google/android/gms/internal/ads/zzfbp;->zzd:Lcom/google/android/gms/ads/internal/client/zzm;

    .line 9
    invoke-virtual {v0, v4}, Lcom/google/android/gms/internal/ads/zzcrw;->zzk(Lcom/google/android/gms/ads/internal/client/zzm;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzemp;->zzf:Lcom/google/android/gms/internal/ads/zzfcw;

    .line 10
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfcw;->zzb()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzemp;->zza:Landroid/content/Context;

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzemp;->zzc:Ljava/lang/String;

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzemp;->zzh:Lcom/google/android/gms/ads/internal/util/zzg;

    iget-object v7, p0, Lcom/google/android/gms/internal/ads/zzemp;->zzj:Lcom/google/android/gms/internal/ads/zzcsk;

    iget-object v8, v1, Lcom/google/android/gms/internal/ads/zzfbp;->zzf:Ljava/lang/String;

    new-instance v9, Lcom/google/android/gms/internal/ads/zzemq;

    move-object v0, v9

    move-object v1, v4

    move-object v4, v5

    move-object v5, v6

    move-object v6, v8

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/internal/ads/zzemq;-><init>(Landroid/content/Context;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/ads/internal/util/zzg;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzcsk;)V

    .line 11
    invoke-static {v9}, Lcom/google/android/gms/internal/ads/zzgbs;->zzh(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method
