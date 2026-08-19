.class public final synthetic Lcom/google/android/gms/internal/ads/zzdta;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.2.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/ads/zzdti;

.field public final synthetic zzb:Lcom/google/android/gms/internal/ads/zzbzp;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzdti;Lcom/google/android/gms/internal/ads/zzbzp;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdta;->zza:Lcom/google/android/gms/internal/ads/zzdti;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdta;->zzb:Lcom/google/android/gms/internal/ads/zzbzp;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdta;->zza:Lcom/google/android/gms/internal/ads/zzdti;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdta;->zzb:Lcom/google/android/gms/internal/ads/zzbzp;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzdti;->zzk(Lcom/google/android/gms/internal/ads/zzdti;Lcom/google/android/gms/internal/ads/zzbzp;)V

    return-void
.end method
