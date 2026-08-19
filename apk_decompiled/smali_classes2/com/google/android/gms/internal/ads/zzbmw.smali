.class public final synthetic Lcom/google/android/gms/internal/ads/zzbmw;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.2.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/ads/zzbnm;

.field public final synthetic zzb:Lcom/google/android/gms/internal/ads/zzbnl;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzbnm;Lcom/google/android/gms/internal/ads/zzauy;Lcom/google/android/gms/internal/ads/zzbnl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbmw;->zza:Lcom/google/android/gms/internal/ads/zzbnm;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzbmw;->zzb:Lcom/google/android/gms/internal/ads/zzbnl;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbmw;->zza:Lcom/google/android/gms/internal/ads/zzbnm;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzbmw;->zzb:Lcom/google/android/gms/internal/ads/zzbnl;

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzbnm;->zzh(Lcom/google/android/gms/internal/ads/zzbnm;Lcom/google/android/gms/internal/ads/zzauy;Lcom/google/android/gms/internal/ads/zzbnl;)V

    return-void
.end method
