.class public final synthetic Lcom/google/android/gms/internal/ads/zzxu;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.2.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzftx;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/ads/zzyn;

.field public final synthetic zzb:Lcom/google/android/gms/internal/ads/zzyb;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzyn;Lcom/google/android/gms/internal/ads/zzyb;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzxu;->zza:Lcom/google/android/gms/internal/ads/zzyn;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzxu;->zzb:Lcom/google/android/gms/internal/ads/zzyb;

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Object;)Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzxu;->zza:Lcom/google/android/gms/internal/ads/zzyn;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzxu;->zzb:Lcom/google/android/gms/internal/ads/zzyb;

    check-cast p1, Lcom/google/android/gms/internal/ads/zzz;

    invoke-static {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzyn;->zzm(Lcom/google/android/gms/internal/ads/zzyn;Lcom/google/android/gms/internal/ads/zzyb;Lcom/google/android/gms/internal/ads/zzz;)Z

    move-result p1

    return p1
.end method
