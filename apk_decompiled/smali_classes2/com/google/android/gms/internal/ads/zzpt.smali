.class public final synthetic Lcom/google/android/gms/internal/ads/zzpt;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.2.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/ads/zzpx;

.field public final synthetic zzb:Lcom/google/android/gms/internal/ads/zzz;

.field public final synthetic zzc:Lcom/google/android/gms/internal/ads/zzhz;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzpx;Lcom/google/android/gms/internal/ads/zzz;Lcom/google/android/gms/internal/ads/zzhz;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzpt;->zza:Lcom/google/android/gms/internal/ads/zzpx;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzpt;->zzb:Lcom/google/android/gms/internal/ads/zzz;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzpt;->zzc:Lcom/google/android/gms/internal/ads/zzhz;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzpt;->zza:Lcom/google/android/gms/internal/ads/zzpx;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzpt;->zzb:Lcom/google/android/gms/internal/ads/zzz;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzpt;->zzc:Lcom/google/android/gms/internal/ads/zzhz;

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzpx;->zzh(Lcom/google/android/gms/internal/ads/zzpx;Lcom/google/android/gms/internal/ads/zzz;Lcom/google/android/gms/internal/ads/zzhz;)V

    return-void
.end method
