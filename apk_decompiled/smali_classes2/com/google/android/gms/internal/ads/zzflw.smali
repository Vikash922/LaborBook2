.class final Lcom/google/android/gms/internal/ads/zzflw;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.2.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/ads/zzfmb;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzfmb;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzflw;->zza:Lcom/google/android/gms/internal/ads/zzfmb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzflw;->zza:Lcom/google/android/gms/internal/ads/zzfmb;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzfmb;->zzc(Lcom/google/android/gms/internal/ads/zzfmb;)Lcom/google/android/gms/internal/ads/zzflv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzflv;->zzb()V

    return-void
.end method
