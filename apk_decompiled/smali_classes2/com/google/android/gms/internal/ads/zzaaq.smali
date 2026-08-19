.class public final synthetic Lcom/google/android/gms/internal/ads/zzaaq;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.2.0"

# interfaces
.implements Ljava/util/concurrent/Executor;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/ads/zzdq;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzdq;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaaq;->zza:Lcom/google/android/gms/internal/ads/zzdq;

    return-void
.end method


# virtual methods
.method public final execute(Ljava/lang/Runnable;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaaq;->zza:Lcom/google/android/gms/internal/ads/zzdq;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzdq;->zzi(Ljava/lang/Runnable;)Z

    return-void
.end method
