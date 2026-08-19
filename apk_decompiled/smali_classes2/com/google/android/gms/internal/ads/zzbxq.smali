.class final Lcom/google/android/gms/internal/ads/zzbxq;
.super Lcom/google/android/gms/internal/ads/zzbxx;
.source "com.google.android.gms:play-services-ads@@24.2.0"


# instance fields
.field final zza:Lcom/google/android/gms/internal/ads/zzhfh;

.field final zzb:Lcom/google/android/gms/internal/ads/zzhfh;

.field final zzc:Lcom/google/android/gms/internal/ads/zzhfh;

.field final zzd:Lcom/google/android/gms/internal/ads/zzhfh;

.field final zze:Lcom/google/android/gms/internal/ads/zzhfh;

.field final zzf:Lcom/google/android/gms/internal/ads/zzhfh;

.field final zzg:Lcom/google/android/gms/internal/ads/zzhfh;

.field final zzh:Lcom/google/android/gms/internal/ads/zzhfh;

.field private final zzj:Lcom/google/android/gms/common/util/Clock;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/google/android/gms/common/util/Clock;Lcom/google/android/gms/ads/internal/util/zzg;Lcom/google/android/gms/internal/ads/zzbxw;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbxx;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbxq;->zzj:Lcom/google/android/gms/common/util/Clock;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzhez;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzhey;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbxq;->zza:Lcom/google/android/gms/internal/ads/zzhfh;

    .line 2
    invoke-static {p3}, Lcom/google/android/gms/internal/ads/zzhez;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzhey;

    move-result-object p3

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzbxq;->zzb:Lcom/google/android/gms/internal/ads/zzhfh;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzbxk;

    invoke-direct {v0, p1, p3}, Lcom/google/android/gms/internal/ads/zzbxk;-><init>(Lcom/google/android/gms/internal/ads/zzhfh;Lcom/google/android/gms/internal/ads/zzhfh;)V

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzhex;->zzc(Lcom/google/android/gms/internal/ads/zzhfh;)Lcom/google/android/gms/internal/ads/zzhfh;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbxq;->zzc:Lcom/google/android/gms/internal/ads/zzhfh;

    .line 3
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzhez;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzhey;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbxq;->zzd:Lcom/google/android/gms/internal/ads/zzhfh;

    .line 4
    invoke-static {p4}, Lcom/google/android/gms/internal/ads/zzhez;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzhey;

    move-result-object p4

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzbxq;->zze:Lcom/google/android/gms/internal/ads/zzhfh;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzbxm;

    invoke-direct {v0, p2, p3, p4}, Lcom/google/android/gms/internal/ads/zzbxm;-><init>(Lcom/google/android/gms/internal/ads/zzhfh;Lcom/google/android/gms/internal/ads/zzhfh;Lcom/google/android/gms/internal/ads/zzhfh;)V

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzhex;->zzc(Lcom/google/android/gms/internal/ads/zzhfh;)Lcom/google/android/gms/internal/ads/zzhfh;

    move-result-object p3

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzbxq;->zzf:Lcom/google/android/gms/internal/ads/zzhfh;

    new-instance p4, Lcom/google/android/gms/internal/ads/zzbxo;

    invoke-direct {p4, p2, p3}, Lcom/google/android/gms/internal/ads/zzbxo;-><init>(Lcom/google/android/gms/internal/ads/zzhfh;Lcom/google/android/gms/internal/ads/zzhfh;)V

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzbxq;->zzg:Lcom/google/android/gms/internal/ads/zzhfh;

    new-instance p2, Lcom/google/android/gms/internal/ads/zzbyc;

    invoke-direct {p2, p1, p4}, Lcom/google/android/gms/internal/ads/zzbyc;-><init>(Lcom/google/android/gms/internal/ads/zzhfh;Lcom/google/android/gms/internal/ads/zzhfh;)V

    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzhex;->zzc(Lcom/google/android/gms/internal/ads/zzhfh;)Lcom/google/android/gms/internal/ads/zzhfh;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbxq;->zzh:Lcom/google/android/gms/internal/ads/zzhfh;

    return-void
.end method


# virtual methods
.method final zza()Lcom/google/android/gms/internal/ads/zzbxn;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbxq;->zzf:Lcom/google/android/gms/internal/ads/zzhfh;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzbxn;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzhfh;->zzb()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzbxl;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzbxq;->zzj:Lcom/google/android/gms/common/util/Clock;

    invoke-direct {v1, v2, v0}, Lcom/google/android/gms/internal/ads/zzbxn;-><init>(Lcom/google/android/gms/common/util/Clock;Lcom/google/android/gms/internal/ads/zzbxl;)V

    return-object v1
.end method
