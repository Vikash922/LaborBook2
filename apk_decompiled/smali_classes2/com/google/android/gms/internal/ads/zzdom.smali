.class public final Lcom/google/android/gms/internal/ads/zzdom;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.2.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzcvx;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzcel;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzcel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdom;->zza:Lcom/google/android/gms/internal/ads/zzcel;

    return-void
.end method


# virtual methods
.method public final zzdh(Landroid/content/Context;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdom;->zza:Lcom/google/android/gms/internal/ads/zzcel;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzcel;->destroy()V

    :cond_0
    return-void
.end method

.method public final zzdj(Landroid/content/Context;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdom;->zza:Lcom/google/android/gms/internal/ads/zzcel;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzcel;->onPause()V

    :cond_0
    return-void
.end method

.method public final zzdk(Landroid/content/Context;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdom;->zza:Lcom/google/android/gms/internal/ads/zzcel;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzcel;->onResume()V

    :cond_0
    return-void
.end method
