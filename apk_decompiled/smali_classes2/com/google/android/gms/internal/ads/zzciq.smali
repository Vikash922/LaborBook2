.class final Lcom/google/android/gms/internal/ads/zzciq;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.2.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzeza;


# instance fields
.field final zza:Lcom/google/android/gms/internal/ads/zzhfh;

.field final zzb:Lcom/google/android/gms/internal/ads/zzhfh;

.field final zzc:Lcom/google/android/gms/internal/ads/zzhfh;

.field final zzd:Lcom/google/android/gms/internal/ads/zzhfh;

.field final zze:Lcom/google/android/gms/internal/ads/zzhfh;

.field final zzf:Lcom/google/android/gms/internal/ads/zzhfh;

.field final zzg:Lcom/google/android/gms/internal/ads/zzhfh;

.field private final zzh:Lcom/google/android/gms/internal/ads/zzchv;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzchv;Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/ads/internal/client/zzr;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzciq;->zzh:Lcom/google/android/gms/internal/ads/zzchv;

    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/internal/ads/zzhez;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzhey;

    move-result-object v9

    iput-object v9, v0, Lcom/google/android/gms/internal/ads/zzciq;->zza:Lcom/google/android/gms/internal/ads/zzhfh;

    .line 2
    invoke-static/range {p4 .. p4}, Lcom/google/android/gms/internal/ads/zzhez;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzhey;

    move-result-object v10

    iput-object v10, v0, Lcom/google/android/gms/internal/ads/zzciq;->zzb:Lcom/google/android/gms/internal/ads/zzhfh;

    .line 3
    invoke-static/range {p3 .. p3}, Lcom/google/android/gms/internal/ads/zzhez;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzhey;

    move-result-object v11

    iput-object v11, v0, Lcom/google/android/gms/internal/ads/zzciq;->zzc:Lcom/google/android/gms/internal/ads/zzhfh;

    iget-object v12, v1, Lcom/google/android/gms/internal/ads/zzchv;->zzK:Lcom/google/android/gms/internal/ads/zzhfh;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzejs;

    invoke-direct {v2, v12}, Lcom/google/android/gms/internal/ads/zzejs;-><init>(Lcom/google/android/gms/internal/ads/zzhfh;)V

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzhex;->zzc(Lcom/google/android/gms/internal/ads/zzhfh;)Lcom/google/android/gms/internal/ads/zzhfh;

    move-result-object v13

    iput-object v13, v0, Lcom/google/android/gms/internal/ads/zzciq;->zzd:Lcom/google/android/gms/internal/ads/zzhfh;

    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzchv;->zzbf:Lcom/google/android/gms/internal/ads/zzhfh;

    new-instance v3, Lcom/google/android/gms/internal/ads/zzezy;

    invoke-direct {v3, v2}, Lcom/google/android/gms/internal/ads/zzezy;-><init>(Lcom/google/android/gms/internal/ads/zzhfh;)V

    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzhex;->zzc(Lcom/google/android/gms/internal/ads/zzhfh;)Lcom/google/android/gms/internal/ads/zzhfh;

    move-result-object v14

    iput-object v14, v0, Lcom/google/android/gms/internal/ads/zzciq;->zze:Lcom/google/android/gms/internal/ads/zzhfh;

    iget-object v4, v1, Lcom/google/android/gms/internal/ads/zzchv;->zza:Lcom/google/android/gms/internal/ads/zzhfh;

    iget-object v5, v1, Lcom/google/android/gms/internal/ads/zzchv;->zzQ:Lcom/google/android/gms/internal/ads/zzhfh;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfbr;->zza()Lcom/google/android/gms/internal/ads/zzfbr;

    move-result-object v8

    new-instance v15, Lcom/google/android/gms/internal/ads/zzeyy;

    move-object v2, v15

    move-object v3, v9

    move-object v6, v13

    move-object v7, v14

    invoke-direct/range {v2 .. v8}, Lcom/google/android/gms/internal/ads/zzeyy;-><init>(Lcom/google/android/gms/internal/ads/zzhfh;Lcom/google/android/gms/internal/ads/zzhfh;Lcom/google/android/gms/internal/ads/zzhfh;Lcom/google/android/gms/internal/ads/zzhfh;Lcom/google/android/gms/internal/ads/zzhfh;Lcom/google/android/gms/internal/ads/zzhfh;)V

    invoke-static {v15}, Lcom/google/android/gms/internal/ads/zzhex;->zzc(Lcom/google/android/gms/internal/ads/zzhfh;)Lcom/google/android/gms/internal/ads/zzhfh;

    move-result-object v5

    iput-object v5, v0, Lcom/google/android/gms/internal/ads/zzciq;->zzf:Lcom/google/android/gms/internal/ads/zzhfh;

    iget-object v8, v1, Lcom/google/android/gms/internal/ads/zzchv;->zzj:Lcom/google/android/gms/internal/ads/zzhfh;

    iget-object v15, v1, Lcom/google/android/gms/internal/ads/zzchv;->zzS:Lcom/google/android/gms/internal/ads/zzhfh;

    new-instance v16, Lcom/google/android/gms/internal/ads/zzeka;

    move-object/from16 v1, v16

    move-object v2, v9

    move-object v3, v10

    move-object v4, v11

    move-object v9, v15

    move-object v10, v12

    invoke-direct/range {v1 .. v10}, Lcom/google/android/gms/internal/ads/zzeka;-><init>(Lcom/google/android/gms/internal/ads/zzhfh;Lcom/google/android/gms/internal/ads/zzhfh;Lcom/google/android/gms/internal/ads/zzhfh;Lcom/google/android/gms/internal/ads/zzhfh;Lcom/google/android/gms/internal/ads/zzhfh;Lcom/google/android/gms/internal/ads/zzhfh;Lcom/google/android/gms/internal/ads/zzhfh;Lcom/google/android/gms/internal/ads/zzhfh;Lcom/google/android/gms/internal/ads/zzhfh;)V

    invoke-static/range {v16 .. v16}, Lcom/google/android/gms/internal/ads/zzhex;->zzc(Lcom/google/android/gms/internal/ads/zzhfh;)Lcom/google/android/gms/internal/ads/zzhfh;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzciq;->zzg:Lcom/google/android/gms/internal/ads/zzhfh;

    return-void
.end method


# virtual methods
.method public final zza()Lcom/google/android/gms/internal/ads/zzejz;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzciq;->zzg:Lcom/google/android/gms/internal/ads/zzhfh;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzhfh;->zzb()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzejz;

    return-object v0
.end method
