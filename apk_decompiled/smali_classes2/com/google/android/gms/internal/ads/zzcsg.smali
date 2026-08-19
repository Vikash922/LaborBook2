.class public final Lcom/google/android/gms/internal/ads/zzcsg;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.2.0"

# interfaces
.implements Lcom/google/android/gms/ads/internal/client/zza;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzcsk;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzfbp;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzcsk;Lcom/google/android/gms/internal/ads/zzfbp;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcsg;->zza:Lcom/google/android/gms/internal/ads/zzcsk;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcsg;->zzb:Lcom/google/android/gms/internal/ads/zzfbp;

    return-void
.end method


# virtual methods
.method public final onAdClicked()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcsg;->zzb:Lcom/google/android/gms/internal/ads/zzfbp;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcsg;->zza:Lcom/google/android/gms/internal/ads/zzcsk;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzfbp;->zzf:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzcsk;->zzc(Ljava/lang/String;)V

    return-void
.end method
