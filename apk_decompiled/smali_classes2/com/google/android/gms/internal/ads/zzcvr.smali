.class public final Lcom/google/android/gms/internal/ads/zzcvr;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.2.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzhey;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzhfh;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzhfh;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzhfh;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzhfh;Lcom/google/android/gms/internal/ads/zzhfh;Lcom/google/android/gms/internal/ads/zzhfh;Lcom/google/android/gms/internal/ads/zzhfh;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcvr;->zza:Lcom/google/android/gms/internal/ads/zzhfh;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcvr;->zzb:Lcom/google/android/gms/internal/ads/zzhfh;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzcvr;->zzc:Lcom/google/android/gms/internal/ads/zzhfh;

    return-void
.end method


# virtual methods
.method public final bridge synthetic zzb()Ljava/lang/Object;
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcvr;->zza:Lcom/google/android/gms/internal/ads/zzhfh;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzcvq;

    .line 1
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcvq;->zza()Lcom/google/android/gms/internal/ads/zzcvo;

    move-result-object v0

    .line 2
    move-object v1, v0

    check-cast v1, Lcom/google/android/gms/internal/ads/zzcvo;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcvr;->zzb:Lcom/google/android/gms/internal/ads/zzhfh;

    check-cast v1, Lcom/google/android/gms/internal/ads/zzhfk;

    .line 3
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzhfk;->zzc()Ljava/util/Set;

    move-result-object v1

    .line 2
    move-object v2, v1

    check-cast v2, Ljava/util/Set;

    .line 4
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfen;->zzc()Lcom/google/android/gms/internal/ads/zzgcd;

    move-result-object v2

    .line 2
    check-cast v2, Ljava/util/concurrent/Executor;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzcvr;->zzc:Lcom/google/android/gms/internal/ads/zzhfh;

    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/zzhfh;->zzb()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v4, Lcom/google/android/gms/internal/ads/zzcvp;

    .line 5
    invoke-direct {v4, v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzcvp;-><init>(Lcom/google/android/gms/internal/ads/zzcvo;Ljava/util/Set;Ljava/util/concurrent/Executor;Ljava/util/concurrent/ScheduledExecutorService;)V

    return-object v4
.end method
