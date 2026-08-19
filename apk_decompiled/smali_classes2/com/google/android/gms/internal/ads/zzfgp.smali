.class public final synthetic Lcom/google/android/gms/internal/ads/zzfgp;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.2.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/ads/zzfgq;

.field public final synthetic zzb:Lcom/google/android/gms/internal/ads/zzfgg;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzfgq;Lcom/google/android/gms/internal/ads/zzfgg;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfgp;->zza:Lcom/google/android/gms/internal/ads/zzfgq;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzfgp;->zzb:Lcom/google/android/gms/internal/ads/zzfgg;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfgp;->zza:Lcom/google/android/gms/internal/ads/zzfgq;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfgp;->zzb:Lcom/google/android/gms/internal/ads/zzfgg;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzfgq;->zzb(Lcom/google/android/gms/internal/ads/zzfgq;Lcom/google/android/gms/internal/ads/zzfgg;)V

    return-void
.end method
