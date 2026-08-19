.class public final synthetic Lcom/google/android/gms/internal/ads/zzcmn;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.2.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/ads/zzcmo;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzcmo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcmn;->zza:Lcom/google/android/gms/internal/ads/zzcmo;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcmn;->zza:Lcom/google/android/gms/internal/ads/zzcmo;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzcmo;->zza:Lcom/google/android/gms/internal/ads/zzcmp;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzcmp;->zza(Lcom/google/android/gms/internal/ads/zzcmp;)Lcom/google/android/gms/internal/ads/zzcmu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcmu;->zzj()V

    return-void
.end method
