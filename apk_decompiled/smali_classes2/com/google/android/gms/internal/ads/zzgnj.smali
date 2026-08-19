.class public final Lcom/google/android/gms/internal/ads/zzgnj;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.2.0"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzglh;

.field private final zzb:Ljava/lang/Class;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzglh;Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzgni;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgnj;->zza:Lcom/google/android/gms/internal/ads/zzglh;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzgnj;->zzb:Ljava/lang/Class;

    return-void
.end method

.method public static zzb(Ljava/lang/Class;)Lcom/google/android/gms/internal/ads/zzgnf;
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzgnf;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/ads/zzgnf;-><init>(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzgni;)V

    return-object v0
.end method


# virtual methods
.method public final zza()Lcom/google/android/gms/internal/ads/zzglh;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgnj;->zza:Lcom/google/android/gms/internal/ads/zzglh;

    return-object v0
.end method

.method public final zzc()Ljava/lang/Class;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgnj;->zzb:Ljava/lang/Class;

    return-object v0
.end method
