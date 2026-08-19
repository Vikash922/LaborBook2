.class final Lcom/google/android/gms/internal/ads/zzaip;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.2.0"


# instance fields
.field public final zza:Lcom/google/android/gms/internal/ads/zzaiw;

.field public final zzb:Lcom/google/android/gms/internal/ads/zzaiz;

.field public final zzc:Lcom/google/android/gms/internal/ads/zzaei;

.field public final zzd:Lcom/google/android/gms/internal/ads/zzaej;

.field public zze:I


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzaiw;Lcom/google/android/gms/internal/ads/zzaiz;Lcom/google/android/gms/internal/ads/zzaei;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaip;->zza:Lcom/google/android/gms/internal/ads/zzaiw;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzaip;->zzb:Lcom/google/android/gms/internal/ads/zzaiz;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzaip;->zzc:Lcom/google/android/gms/internal/ads/zzaei;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzaiw;->zzg:Lcom/google/android/gms/internal/ads/zzz;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzz;->zzo:Ljava/lang/String;

    const-string p2, "audio/true-hd"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Lcom/google/android/gms/internal/ads/zzaej;

    .line 2
    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzaej;-><init>()V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaip;->zzd:Lcom/google/android/gms/internal/ads/zzaej;

    return-void
.end method
