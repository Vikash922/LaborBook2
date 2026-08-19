.class public final synthetic Lcom/google/android/gms/internal/ads/zzcml;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.2.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/ads/zzcmm;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzcmm;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcml;->zza:Lcom/google/android/gms/internal/ads/zzcmm;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcml;->zza:Lcom/google/android/gms/internal/ads/zzcmm;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzcmm;->zza:Lcom/google/android/gms/internal/ads/zzcmp;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzcmp;->zza(Lcom/google/android/gms/internal/ads/zzcmp;)Lcom/google/android/gms/internal/ads/zzcmu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcmu;->zzg()V

    return-void
.end method
