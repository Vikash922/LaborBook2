.class public final Lcom/google/android/gms/internal/ads/zzfqe;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-api@@24.2.0"


# static fields
.field private static final zza:Lcom/google/android/gms/internal/ads/zzfqb;

.field private static volatile zzb:Lcom/google/android/gms/internal/ads/zzfqb;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/ads/zzfqc;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzfqc;-><init>(Lcom/google/android/gms/internal/ads/zzfqd;)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzfqe;->zza:Lcom/google/android/gms/internal/ads/zzfqb;

    sput-object v0, Lcom/google/android/gms/internal/ads/zzfqe;->zzb:Lcom/google/android/gms/internal/ads/zzfqb;

    return-void
.end method

.method public static zza()Lcom/google/android/gms/internal/ads/zzfqb;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzfqe;->zzb:Lcom/google/android/gms/internal/ads/zzfqb;

    return-object v0
.end method
