.class final Lcom/google/android/gms/internal/ads/zzgag$zza;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.2.0"


# static fields
.field static final zza:Lcom/google/android/gms/internal/ads/zzgag$zza;

.field static final zzb:Lcom/google/android/gms/internal/ads/zzgag$zza;


# instance fields
.field final zzc:Z

.field final zzd:Ljava/lang/Throwable;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    sget-boolean v0, Lcom/google/android/gms/internal/ads/zzgah;->zzg:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    sput-object v1, Lcom/google/android/gms/internal/ads/zzgag$zza;->zzb:Lcom/google/android/gms/internal/ads/zzgag$zza;

    sput-object v1, Lcom/google/android/gms/internal/ads/zzgag$zza;->zza:Lcom/google/android/gms/internal/ads/zzgag$zza;

    return-void

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/ads/zzgag$zza;

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1}, Lcom/google/android/gms/internal/ads/zzgag$zza;-><init>(ZLjava/lang/Throwable;)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzgag$zza;->zzb:Lcom/google/android/gms/internal/ads/zzgag$zza;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzgag$zza;

    const/4 v2, 0x1

    invoke-direct {v0, v2, v1}, Lcom/google/android/gms/internal/ads/zzgag$zza;-><init>(ZLjava/lang/Throwable;)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzgag$zza;->zza:Lcom/google/android/gms/internal/ads/zzgag$zza;

    return-void
.end method

.method constructor <init>(ZLjava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzgag$zza;->zzc:Z

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzgag$zza;->zzd:Ljava/lang/Throwable;

    return-void
.end method
