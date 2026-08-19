.class public final Lcom/google/android/gms/internal/ads/zzbtp;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-api@@24.2.0"


# static fields
.field private static zza:Lcom/google/android/gms/internal/ads/zzbyi;


# instance fields
.field private final zzb:Landroid/content/Context;

.field private final zzc:Lcom/google/android/gms/ads/AdFormat;

.field private final zzd:Lcom/google/android/gms/ads/internal/client/zzeh;

.field private final zze:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/ads/AdFormat;Lcom/google/android/gms/ads/internal/client/zzeh;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbtp;->zzb:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbtp;->zzc:Lcom/google/android/gms/ads/AdFormat;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzbtp;->zzd:Lcom/google/android/gms/ads/internal/client/zzeh;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzbtp;->zze:Ljava/lang/String;

    return-void
.end method

.method public static zza(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/zzbyi;
    .locals 3

    .line 1
    const-class v0, Lcom/google/android/gms/internal/ads/zzbtp;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/google/android/gms/internal/ads/zzbtp;->zza:Lcom/google/android/gms/internal/ads/zzbyi;

    if-nez v1, :cond_0

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbb;->zza()Lcom/google/android/gms/ads/internal/client/zzaz;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/ads/zzbou;

    invoke-direct {v2}, Lcom/google/android/gms/internal/ads/zzbou;-><init>()V

    invoke-virtual {v1, p0, v2}, Lcom/google/android/gms/ads/internal/client/zzaz;->zzt(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzboy;)Lcom/google/android/gms/internal/ads/zzbyi;

    move-result-object p0

    sput-object p0, Lcom/google/android/gms/internal/ads/zzbtp;->zza:Lcom/google/android/gms/internal/ads/zzbyi;

    :cond_0
    sget-object p0, Lcom/google/android/gms/internal/ads/zzbtp;->zza:Lcom/google/android/gms/internal/ads/zzbyi;

    .line 2
    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method


# virtual methods
.method public final zzb(Lcom/google/android/gms/ads/query/QueryInfoGenerationCallback;)V
    .locals 12

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzbtp;->zzb:Landroid/content/Context;

    .line 2
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzbtp;->zza(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/zzbyi;

    move-result-object v3

    if-nez v3, :cond_0

    const-string v0, "Internal Error, query info generator is null."

    .line 3
    invoke-virtual {p1, v0}, Lcom/google/android/gms/ads/query/QueryInfoGenerationCallback;->onFailure(Ljava/lang/String;)V

    return-void

    .line 4
    :cond_0
    invoke-static {v2}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzbtp;->zzd:Lcom/google/android/gms/ads/internal/client/zzeh;

    if-nez v5, :cond_1

    new-instance v2, Lcom/google/android/gms/ads/internal/client/zzn;

    .line 5
    invoke-direct {v2}, Lcom/google/android/gms/ads/internal/client/zzn;-><init>()V

    .line 6
    invoke-virtual {v2, v0, v1}, Lcom/google/android/gms/ads/internal/client/zzn;->zzg(J)Lcom/google/android/gms/ads/internal/client/zzn;

    invoke-virtual {v2}, Lcom/google/android/gms/ads/internal/client/zzn;->zza()Lcom/google/android/gms/ads/internal/client/zzm;

    move-result-object v0

    goto :goto_0

    .line 7
    :cond_1
    invoke-virtual {v5, v0, v1}, Lcom/google/android/gms/ads/internal/client/zzeh;->zzo(J)V

    sget-object v0, Lcom/google/android/gms/ads/internal/client/zzq;->zza:Lcom/google/android/gms/ads/internal/client/zzq;

    .line 8
    invoke-virtual {v0, v2, v5}, Lcom/google/android/gms/ads/internal/client/zzq;->zza(Landroid/content/Context;Lcom/google/android/gms/ads/internal/client/zzeh;)Lcom/google/android/gms/ads/internal/client/zzm;

    move-result-object v0

    :goto_0
    move-object v9, v0

    .line 6
    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzbtp;->zze:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbtp;->zzc:Lcom/google/android/gms/ads/AdFormat;

    .line 9
    new-instance v1, Lcom/google/android/gms/internal/ads/zzbym;

    .line 10
    invoke-virtual {v0}, Lcom/google/android/gms/ads/AdFormat;->name()Ljava/lang/String;

    move-result-object v7

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v8, 0x0

    move-object v5, v1

    invoke-direct/range {v5 .. v11}, Lcom/google/android/gms/internal/ads/zzbym;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/ads/internal/client/zzr;Lcom/google/android/gms/ads/internal/client/zzm;ILjava/lang/String;)V

    :try_start_0
    new-instance v0, Lcom/google/android/gms/internal/ads/zzbto;

    .line 11
    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/ads/zzbto;-><init>(Lcom/google/android/gms/internal/ads/zzbtp;Lcom/google/android/gms/ads/query/QueryInfoGenerationCallback;)V

    invoke-interface {v3, v4, v1, v0}, Lcom/google/android/gms/internal/ads/zzbyi;->zzf(Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/internal/ads/zzbym;Lcom/google/android/gms/internal/ads/zzbyf;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 8
    :catch_0
    const-string v0, "Internal Error."

    .line 12
    invoke-virtual {p1, v0}, Lcom/google/android/gms/ads/query/QueryInfoGenerationCallback;->onFailure(Ljava/lang/String;)V

    return-void
.end method
