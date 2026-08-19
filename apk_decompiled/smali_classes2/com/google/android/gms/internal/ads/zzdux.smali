.class final Lcom/google/android/gms/internal/ads/zzdux;
.super Lcom/google/android/gms/ads/AdListener;
.source "com.google.android.gms:play-services-ads@@24.2.0"


# instance fields
.field final synthetic zza:Ljava/lang/String;

.field final synthetic zzb:Lcom/google/android/gms/internal/ads/zzdva;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzdva;Ljava/lang/String;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdux;->zza:Ljava/lang/String;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdux;->zzb:Lcom/google/android/gms/internal/ads/zzdva;

    invoke-direct {p0}, Lcom/google/android/gms/ads/AdListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAdFailedToLoad(Lcom/google/android/gms/ads/LoadAdError;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdux;->zzb:Lcom/google/android/gms/internal/ads/zzdva;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzdva;->zzc(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdux;->zza:Ljava/lang/String;

    invoke-static {v0, p1, v1}, Lcom/google/android/gms/internal/ads/zzdva;->zzd(Lcom/google/android/gms/internal/ads/zzdva;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
