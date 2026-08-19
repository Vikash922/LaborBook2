.class public final Lcom/google/android/gms/internal/ads/zzemr;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.2.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzhey;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzhfh;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzhfh;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzhfh;

.field private final zzd:Lcom/google/android/gms/internal/ads/zzhfh;

.field private final zze:Lcom/google/android/gms/internal/ads/zzhfh;

.field private final zzf:Lcom/google/android/gms/internal/ads/zzhfh;

.field private final zzg:Lcom/google/android/gms/internal/ads/zzhfh;

.field private final zzh:Lcom/google/android/gms/internal/ads/zzhfh;

.field private final zzi:Lcom/google/android/gms/internal/ads/zzhfh;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzhfh;Lcom/google/android/gms/internal/ads/zzhfh;Lcom/google/android/gms/internal/ads/zzhfh;Lcom/google/android/gms/internal/ads/zzhfh;Lcom/google/android/gms/internal/ads/zzhfh;Lcom/google/android/gms/internal/ads/zzhfh;Lcom/google/android/gms/internal/ads/zzhfh;Lcom/google/android/gms/internal/ads/zzhfh;Lcom/google/android/gms/internal/ads/zzhfh;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzemr;->zza:Lcom/google/android/gms/internal/ads/zzhfh;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzemr;->zzb:Lcom/google/android/gms/internal/ads/zzhfh;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzemr;->zzc:Lcom/google/android/gms/internal/ads/zzhfh;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzemr;->zzd:Lcom/google/android/gms/internal/ads/zzhfh;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzemr;->zze:Lcom/google/android/gms/internal/ads/zzhfh;

    iput-object p6, p0, Lcom/google/android/gms/internal/ads/zzemr;->zzf:Lcom/google/android/gms/internal/ads/zzhfh;

    iput-object p7, p0, Lcom/google/android/gms/internal/ads/zzemr;->zzg:Lcom/google/android/gms/internal/ads/zzhfh;

    iput-object p8, p0, Lcom/google/android/gms/internal/ads/zzemr;->zzh:Lcom/google/android/gms/internal/ads/zzhfh;

    iput-object p9, p0, Lcom/google/android/gms/internal/ads/zzemr;->zzi:Lcom/google/android/gms/internal/ads/zzhfh;

    return-void
.end method


# virtual methods
.method public final bridge synthetic zzb()Ljava/lang/Object;
    .locals 12

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzemr;->zza:Lcom/google/android/gms/internal/ads/zzhfh;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzcgs;

    .line 1
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcgs;->zza()Landroid/content/Context;

    move-result-object v2

    .line 2
    move-object v0, v2

    check-cast v0, Landroid/content/Context;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzemr;->zzb:Lcom/google/android/gms/internal/ads/zzhfh;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzcuq;

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcuq;->zza()Ljava/lang/String;

    move-result-object v3

    .line 2
    move-object v0, v3

    check-cast v0, Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzemr;->zzc:Lcom/google/android/gms/internal/ads/zzhfh;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzhfh;->zzb()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzemr;->zzd:Lcom/google/android/gms/internal/ads/zzhfh;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzhfh;->zzb()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/google/android/gms/internal/ads/zzcrw;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzemr;->zze:Lcom/google/android/gms/internal/ads/zzhfh;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzhfh;->zzb()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/google/android/gms/internal/ads/zzfcw;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzemr;->zzf:Lcom/google/android/gms/internal/ads/zzhfh;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzcut;

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcut;->zza()Lcom/google/android/gms/internal/ads/zzfbp;

    move-result-object v7

    .line 2
    move-object v0, v7

    check-cast v0, Lcom/google/android/gms/internal/ads/zzfbp;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzemr;->zzg:Lcom/google/android/gms/internal/ads/zzhfh;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzhfh;->zzb()Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lcom/google/android/gms/internal/ads/zzdqy;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzemr;->zzh:Lcom/google/android/gms/internal/ads/zzhfh;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzhfh;->zzb()Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Lcom/google/android/gms/internal/ads/zzcsk;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzemr;->zzi:Lcom/google/android/gms/internal/ads/zzhfh;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzhfh;->zzb()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    new-instance v0, Lcom/google/android/gms/internal/ads/zzemp;

    move-object v1, v0

    .line 5
    invoke-direct/range {v1 .. v11}, Lcom/google/android/gms/internal/ads/zzemp;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzcrw;Lcom/google/android/gms/internal/ads/zzfcw;Lcom/google/android/gms/internal/ads/zzfbp;Lcom/google/android/gms/internal/ads/zzdqy;Lcom/google/android/gms/internal/ads/zzcsk;J)V

    return-object v0
.end method
