.class public final synthetic Lcom/google/android/gms/internal/ads/zzcqq;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.2.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/ads/zzgbo;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzgbo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcqq;->zza:Lcom/google/android/gms/internal/ads/zzgbo;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzdvg;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzdvg;-><init>(I)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcqq;->zza:Lcom/google/android/gms/internal/ads/zzgbo;

    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/ads/zzgbo;->zza(Ljava/lang/Throwable;)V

    return-void
.end method
