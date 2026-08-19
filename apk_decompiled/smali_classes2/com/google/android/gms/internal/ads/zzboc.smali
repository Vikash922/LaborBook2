.class final Lcom/google/android/gms/internal/ads/zzboc;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.2.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzbzr;


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/ads/zzbzp;

.field final synthetic zzb:Lcom/google/android/gms/internal/ads/zzbng;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzboe;Lcom/google/android/gms/internal/ads/zzbzp;Lcom/google/android/gms/internal/ads/zzbng;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzboc;->zza:Lcom/google/android/gms/internal/ads/zzbzp;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzboc;->zzb:Lcom/google/android/gms/internal/ads/zzbng;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza()V
    .locals 2

    .line 1
    const-string v0, "callJs > getEngine: Promise rejected"

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/zze;->zza(Ljava/lang/String;)V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzbnp;

    const-string v1, "Unable to obtain a JavascriptEngine."

    .line 2
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzbnp;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzboc;->zza:Lcom/google/android/gms/internal/ads/zzbzp;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbzp;->zzd(Ljava/lang/Throwable;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzboc;->zzb:Lcom/google/android/gms/internal/ads/zzbng;

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbng;->zzb()V

    return-void
.end method
