.class public final Lcom/google/android/gms/internal/ads/zzdcx;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.2.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzhey;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzhfh;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzhfh;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzhfh;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzhfh;Lcom/google/android/gms/internal/ads/zzhfh;Lcom/google/android/gms/internal/ads/zzhfh;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdcx;->zza:Lcom/google/android/gms/internal/ads/zzhfh;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdcx;->zzb:Lcom/google/android/gms/internal/ads/zzhfh;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzdcx;->zzc:Lcom/google/android/gms/internal/ads/zzhfh;

    return-void
.end method


# virtual methods
.method public final bridge synthetic zzb()Ljava/lang/Object;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdcx;->zza:Lcom/google/android/gms/internal/ads/zzhfh;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzhfh;->zzb()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdcx;->zzb:Lcom/google/android/gms/internal/ads/zzhfh;

    check-cast v1, Lcom/google/android/gms/internal/ads/zzhfk;

    .line 2
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzhfk;->zzc()Ljava/util/Set;

    move-result-object v1

    .line 1
    move-object v2, v1

    check-cast v2, Ljava/util/Set;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzdcx;->zzc:Lcom/google/android/gms/internal/ads/zzhfh;

    check-cast v2, Lcom/google/android/gms/internal/ads/zzcqx;

    .line 3
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzcqx;->zza()Lcom/google/android/gms/internal/ads/zzfau;

    move-result-object v2

    .line 1
    move-object v3, v2

    check-cast v3, Lcom/google/android/gms/internal/ads/zzfau;

    new-instance v3, Lcom/google/android/gms/internal/ads/zzdcw;

    .line 4
    invoke-direct {v3, v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzdcw;-><init>(Landroid/content/Context;Ljava/util/Set;Lcom/google/android/gms/internal/ads/zzfau;)V

    return-object v3
.end method
