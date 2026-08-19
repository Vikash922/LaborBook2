.class final Lcom/google/android/gms/internal/ads/zzbal;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.2.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzaza;


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/ads/zzbao;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzbao;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbal;->zza:Lcom/google/android/gms/internal/ads/zzbao;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbal;->zza:Lcom/google/android/gms/internal/ads/zzbao;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbao;->zzg(Lcom/google/android/gms/internal/ads/zzbao;)V

    return-void

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbal;->zza:Lcom/google/android/gms/internal/ads/zzbao;

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbao;->zzh(Lcom/google/android/gms/internal/ads/zzbao;)V

    return-void
.end method
