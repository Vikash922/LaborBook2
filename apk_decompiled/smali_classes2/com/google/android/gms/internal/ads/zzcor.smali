.class public final Lcom/google/android/gms/internal/ads/zzcor;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.2.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzhey;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzcog;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzhfh;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzcog;Lcom/google/android/gms/internal/ads/zzhfh;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcor;->zza:Lcom/google/android/gms/internal/ads/zzcog;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcor;->zzb:Lcom/google/android/gms/internal/ads/zzhfh;

    return-void
.end method

.method public static zza(Lcom/google/android/gms/internal/ads/zzcog;Lcom/google/android/gms/internal/ads/zzcpt;)Lcom/google/android/gms/internal/ads/zzdcu;
    .locals 1

    .line 1
    new-instance p0, Lcom/google/android/gms/internal/ads/zzdcu;

    sget-object v0, Lcom/google/android/gms/internal/ads/zzbzk;->zzf:Lcom/google/android/gms/internal/ads/zzgcd;

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzdcu;-><init>(Ljava/lang/Object;Ljava/util/concurrent/Executor;)V

    .line 2
    move-object p1, p0

    check-cast p1, Lcom/google/android/gms/internal/ads/zzdcu;

    return-object p0
.end method


# virtual methods
.method public final bridge synthetic zzb()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcor;->zzb:Lcom/google/android/gms/internal/ads/zzhfh;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzhfh;->zzb()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzcpt;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcor;->zza:Lcom/google/android/gms/internal/ads/zzcog;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzcor;->zza(Lcom/google/android/gms/internal/ads/zzcog;Lcom/google/android/gms/internal/ads/zzcpt;)Lcom/google/android/gms/internal/ads/zzdcu;

    move-result-object v0

    return-object v0
.end method
