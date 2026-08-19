.class public final synthetic Lcom/google/android/gms/internal/ads/zzqo;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.2.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/ads/zzqc;

.field public final synthetic zzb:Lcom/google/android/gms/internal/ads/zzpz;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzqc;Lcom/google/android/gms/internal/ads/zzpz;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzqo;->zza:Lcom/google/android/gms/internal/ads/zzqc;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzqo;->zzb:Lcom/google/android/gms/internal/ads/zzpz;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzqo;->zza:Lcom/google/android/gms/internal/ads/zzqc;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzrj;

    .line 1
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzrj;->zza:Lcom/google/android/gms/internal/ads/zzrl;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzrl;->zzae(Lcom/google/android/gms/internal/ads/zzrl;)Lcom/google/android/gms/internal/ads/zzpx;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzqo;->zzb:Lcom/google/android/gms/internal/ads/zzpz;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzpx;->zzp(Lcom/google/android/gms/internal/ads/zzpz;)V

    return-void
.end method
