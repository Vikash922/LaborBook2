.class public final Lcom/google/android/gms/internal/ads/zzapp;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.2.0"


# instance fields
.field public final zza:Ljava/lang/Object;

.field public final zzb:Lcom/google/android/gms/internal/ads/zzaos;

.field public final zzc:Lcom/google/android/gms/internal/ads/zzaps;

.field public zzd:Z


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzaps;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzapp;->zzd:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzapp;->zza:Ljava/lang/Object;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzapp;->zzb:Lcom/google/android/gms/internal/ads/zzaos;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzapp;->zzc:Lcom/google/android/gms/internal/ads/zzaps;

    return-void
.end method

.method private constructor <init>(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzaos;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzapp;->zzd:Z

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzapp;->zza:Ljava/lang/Object;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzapp;->zzb:Lcom/google/android/gms/internal/ads/zzaos;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzapp;->zzc:Lcom/google/android/gms/internal/ads/zzaps;

    return-void
.end method

.method public static zza(Lcom/google/android/gms/internal/ads/zzaps;)Lcom/google/android/gms/internal/ads/zzapp;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzapp;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzapp;-><init>(Lcom/google/android/gms/internal/ads/zzaps;)V

    return-object v0
.end method

.method public static zzb(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzaos;)Lcom/google/android/gms/internal/ads/zzapp;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzapp;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/ads/zzapp;-><init>(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzaos;)V

    return-object v0
.end method


# virtual methods
.method public final zzc()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzapp;->zzc:Lcom/google/android/gms/internal/ads/zzaps;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
