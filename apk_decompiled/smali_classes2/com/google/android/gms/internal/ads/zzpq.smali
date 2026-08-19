.class public final synthetic Lcom/google/android/gms/internal/ads/zzpq;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.2.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/ads/zzpx;

.field public final synthetic zzb:Lcom/google/android/gms/internal/ads/zzpz;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzpx;Lcom/google/android/gms/internal/ads/zzpz;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzpq;->zza:Lcom/google/android/gms/internal/ads/zzpx;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzpq;->zzb:Lcom/google/android/gms/internal/ads/zzpz;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzpq;->zza:Lcom/google/android/gms/internal/ads/zzpx;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzpq;->zzb:Lcom/google/android/gms/internal/ads/zzpz;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzpx;->zzd(Lcom/google/android/gms/internal/ads/zzpx;Lcom/google/android/gms/internal/ads/zzpz;)V

    return-void
.end method
