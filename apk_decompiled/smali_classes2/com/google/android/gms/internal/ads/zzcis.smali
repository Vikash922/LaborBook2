.class final Lcom/google/android/gms/internal/ads/zzcis;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.2.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzfao;


# instance fields
.field final zza:Lcom/google/android/gms/internal/ads/zzhfh;

.field final zzb:Lcom/google/android/gms/internal/ads/zzhfh;

.field final zzc:Lcom/google/android/gms/internal/ads/zzhfh;

.field final zzd:Lcom/google/android/gms/internal/ads/zzhfh;

.field final zze:Lcom/google/android/gms/internal/ads/zzhfh;

.field final zzf:Lcom/google/android/gms/internal/ads/zzhfh;

.field final zzg:Lcom/google/android/gms/internal/ads/zzhfh;

.field final zzh:Lcom/google/android/gms/internal/ads/zzhfh;

.field private final zzi:Lcom/google/android/gms/internal/ads/zzchv;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzchv;Landroid/content/Context;Ljava/lang/String;)V
    .locals 11

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcis;->zzi:Lcom/google/android/gms/internal/ads/zzchv;

    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzhez;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzhey;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcis;->zza:Lcom/google/android/gms/internal/ads/zzhfh;

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzchv;->zzbf:Lcom/google/android/gms/internal/ads/zzhfh;

    iget-object v1, p1, Lcom/google/android/gms/internal/ads/zzchv;->zzbg:Lcom/google/android/gms/internal/ads/zzhfh;

    new-instance v4, Lcom/google/android/gms/internal/ads/zzeyo;

    invoke-direct {v4, p2, v0, v1}, Lcom/google/android/gms/internal/ads/zzeyo;-><init>(Lcom/google/android/gms/internal/ads/zzhfh;Lcom/google/android/gms/internal/ads/zzhfh;Lcom/google/android/gms/internal/ads/zzhfh;)V

    iput-object v4, p0, Lcom/google/android/gms/internal/ads/zzcis;->zzb:Lcom/google/android/gms/internal/ads/zzhfh;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzezy;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ads/zzezy;-><init>(Lcom/google/android/gms/internal/ads/zzhfh;)V

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzhex;->zzc(Lcom/google/android/gms/internal/ads/zzhfh;)Lcom/google/android/gms/internal/ads/zzhfh;

    move-result-object v8

    iput-object v8, p0, Lcom/google/android/gms/internal/ads/zzcis;->zzc:Lcom/google/android/gms/internal/ads/zzhfh;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfbm;->zza()Lcom/google/android/gms/internal/ads/zzfbm;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzhex;->zzc(Lcom/google/android/gms/internal/ads/zzhfh;)Lcom/google/android/gms/internal/ads/zzhfh;

    move-result-object v9

    iput-object v9, p0, Lcom/google/android/gms/internal/ads/zzcis;->zzd:Lcom/google/android/gms/internal/ads/zzhfh;

    iget-object v2, p1, Lcom/google/android/gms/internal/ads/zzchv;->zza:Lcom/google/android/gms/internal/ads/zzhfh;

    iget-object v3, p1, Lcom/google/android/gms/internal/ads/zzchv;->zzQ:Lcom/google/android/gms/internal/ads/zzhfh;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfbr;->zza()Lcom/google/android/gms/internal/ads/zzfbr;

    move-result-object v6

    new-instance v10, Lcom/google/android/gms/internal/ads/zzfai;

    move-object v0, v10

    move-object v1, p2

    move-object v5, v8

    move-object v7, v9

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/internal/ads/zzfai;-><init>(Lcom/google/android/gms/internal/ads/zzhfh;Lcom/google/android/gms/internal/ads/zzhfh;Lcom/google/android/gms/internal/ads/zzhfh;Lcom/google/android/gms/internal/ads/zzhfh;Lcom/google/android/gms/internal/ads/zzhfh;Lcom/google/android/gms/internal/ads/zzhfh;Lcom/google/android/gms/internal/ads/zzhfh;)V

    invoke-static {v10}, Lcom/google/android/gms/internal/ads/zzhex;->zzc(Lcom/google/android/gms/internal/ads/zzhfh;)Lcom/google/android/gms/internal/ads/zzhfh;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/gms/internal/ads/zzcis;->zze:Lcom/google/android/gms/internal/ads/zzhfh;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzfas;

    invoke-direct {v0, v2, v8, v9}, Lcom/google/android/gms/internal/ads/zzfas;-><init>(Lcom/google/android/gms/internal/ads/zzhfh;Lcom/google/android/gms/internal/ads/zzhfh;Lcom/google/android/gms/internal/ads/zzhfh;)V

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzhex;->zzc(Lcom/google/android/gms/internal/ads/zzhfh;)Lcom/google/android/gms/internal/ads/zzhfh;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzcis;->zzf:Lcom/google/android/gms/internal/ads/zzhfh;

    invoke-static {p3}, Lcom/google/android/gms/internal/ads/zzhez;->zzc(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzhey;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzcis;->zzg:Lcom/google/android/gms/internal/ads/zzhfh;

    iget-object v6, p1, Lcom/google/android/gms/internal/ads/zzchv;->zzj:Lcom/google/android/gms/internal/ads/zzhfh;

    iget-object v7, p1, Lcom/google/android/gms/internal/ads/zzchv;->zzS:Lcom/google/android/gms/internal/ads/zzhfh;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzchv;->zzK:Lcom/google/android/gms/internal/ads/zzhfh;

    new-instance p3, Lcom/google/android/gms/internal/ads/zzfam;

    move-object v0, p3

    move-object v3, p2

    move-object v4, v8

    move-object v5, v9

    move-object v8, p1

    invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/internal/ads/zzfam;-><init>(Lcom/google/android/gms/internal/ads/zzhfh;Lcom/google/android/gms/internal/ads/zzhfh;Lcom/google/android/gms/internal/ads/zzhfh;Lcom/google/android/gms/internal/ads/zzhfh;Lcom/google/android/gms/internal/ads/zzhfh;Lcom/google/android/gms/internal/ads/zzhfh;Lcom/google/android/gms/internal/ads/zzhfh;Lcom/google/android/gms/internal/ads/zzhfh;)V

    invoke-static {p3}, Lcom/google/android/gms/internal/ads/zzhex;->zzc(Lcom/google/android/gms/internal/ads/zzhfh;)Lcom/google/android/gms/internal/ads/zzhfh;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcis;->zzh:Lcom/google/android/gms/internal/ads/zzhfh;

    return-void
.end method


# virtual methods
.method public final zza()Lcom/google/android/gms/internal/ads/zzfal;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcis;->zzh:Lcom/google/android/gms/internal/ads/zzhfh;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzhfh;->zzb()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzfal;

    return-object v0
.end method

.method public final zzb()Lcom/google/android/gms/internal/ads/zzfar;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcis;->zzf:Lcom/google/android/gms/internal/ads/zzhfh;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzhfh;->zzb()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzfar;

    return-object v0
.end method
