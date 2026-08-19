.class final Lcom/google/android/gms/internal/ads/zzexq;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.2.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzfdx;


# instance fields
.field public final zza:Lcom/google/android/gms/internal/ads/zzeyk;

.field public final zzb:Lcom/google/android/gms/internal/ads/zzeym;

.field public final zzc:Lcom/google/android/gms/ads/internal/client/zzm;

.field public final zzd:Ljava/lang/String;

.field public final zze:Ljava/util/concurrent/Executor;

.field public final zzf:Lcom/google/android/gms/ads/internal/client/zzx;

.field public final zzg:Lcom/google/android/gms/internal/ads/zzfdm;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzeyk;Lcom/google/android/gms/internal/ads/zzeym;Lcom/google/android/gms/ads/internal/client/zzm;Ljava/lang/String;Ljava/util/concurrent/Executor;Lcom/google/android/gms/ads/internal/client/zzx;Lcom/google/android/gms/internal/ads/zzfdm;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzexq;->zza:Lcom/google/android/gms/internal/ads/zzeyk;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzexq;->zzb:Lcom/google/android/gms/internal/ads/zzeym;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzexq;->zzc:Lcom/google/android/gms/ads/internal/client/zzm;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzexq;->zzd:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzexq;->zze:Ljava/util/concurrent/Executor;

    iput-object p6, p0, Lcom/google/android/gms/internal/ads/zzexq;->zzf:Lcom/google/android/gms/ads/internal/client/zzx;

    iput-object p7, p0, Lcom/google/android/gms/internal/ads/zzexq;->zzg:Lcom/google/android/gms/internal/ads/zzfdm;

    return-void
.end method


# virtual methods
.method public final zza()Lcom/google/android/gms/internal/ads/zzfdm;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzexq;->zzg:Lcom/google/android/gms/internal/ads/zzfdm;

    return-object v0
.end method

.method public final zzb()Ljava/util/concurrent/Executor;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzexq;->zze:Ljava/util/concurrent/Executor;

    return-object v0
.end method
