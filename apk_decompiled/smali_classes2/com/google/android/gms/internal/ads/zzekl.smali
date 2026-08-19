.class public final synthetic Lcom/google/android/gms/internal/ads/zzekl;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.2.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/ads/zzekn;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzekn;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzekl;->zza:Lcom/google/android/gms/internal/ads/zzekn;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzekl;->zza:Lcom/google/android/gms/internal/ads/zzekn;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzekn;->zze:Lcom/google/android/gms/internal/ads/zzeko;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzeko;->zzd(Lcom/google/android/gms/internal/ads/zzeko;)Lcom/google/android/gms/internal/ads/zzeke;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzeke;->zzb()Lcom/google/android/gms/internal/ads/zzcwq;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzcwq;->zzt()V

    return-void
.end method
