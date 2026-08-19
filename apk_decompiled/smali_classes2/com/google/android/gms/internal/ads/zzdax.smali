.class public final Lcom/google/android/gms/internal/ads/zzdax;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.2.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzhey;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzdaw;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzhfh;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzdaw;Lcom/google/android/gms/internal/ads/zzhfh;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdax;->zza:Lcom/google/android/gms/internal/ads/zzdaw;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdax;->zzb:Lcom/google/android/gms/internal/ads/zzhfh;

    return-void
.end method


# virtual methods
.method public final bridge synthetic zzb()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdax;->zzb:Lcom/google/android/gms/internal/ads/zzhfh;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzhfk;

    .line 1
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzhfk;->zzc()Ljava/util/Set;

    move-result-object v0

    .line 2
    move-object v1, v0

    check-cast v1, Ljava/util/Set;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdax;->zza:Lcom/google/android/gms/internal/ads/zzdaw;

    .line 3
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzdaw;->zza(Ljava/util/Set;)Lcom/google/android/gms/internal/ads/zzcve;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzhfg;->zzb(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lcom/google/android/gms/internal/ads/zzcve;

    return-object v0
.end method
