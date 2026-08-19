.class final Lcom/google/android/gms/internal/ads/zzgwb;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-api@@24.2.0"


# instance fields
.field public zza:I

.field public zzb:J

.field public zzc:Ljava/lang/Object;

.field public final zzd:Lcom/google/android/gms/internal/ads/zzgxf;

.field public zze:I


# direct methods
.method constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget v0, Lcom/google/android/gms/internal/ads/zzgxf;->zzb:I

    .line 2
    sget v0, Lcom/google/android/gms/internal/ads/zzgzq;->zza:I

    sget-object v0, Lcom/google/android/gms/internal/ads/zzgxf;->zza:Lcom/google/android/gms/internal/ads/zzgxf;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzgwb;->zzd:Lcom/google/android/gms/internal/ads/zzgxf;

    return-void
.end method

.method constructor <init>(Lcom/google/android/gms/internal/ads/zzgxf;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgwb;->zzd:Lcom/google/android/gms/internal/ads/zzgxf;

    return-void
.end method
