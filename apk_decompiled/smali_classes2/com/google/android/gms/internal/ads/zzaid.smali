.class final Lcom/google/android/gms/internal/ads/zzaid;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.2.0"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzahv;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzahv;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaid;->zza:Lcom/google/android/gms/internal/ads/zzahv;

    return-void
.end method

.method static bridge synthetic zza(Lcom/google/android/gms/internal/ads/zzaid;)Lcom/google/android/gms/internal/ads/zzahv;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzaid;->zza:Lcom/google/android/gms/internal/ads/zzahv;

    return-object p0
.end method


# virtual methods
.method public final zzb()Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaid;->zza:Lcom/google/android/gms/internal/ads/zzahv;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzahv;->zza(Lcom/google/android/gms/internal/ads/zzahv;)Lcom/google/android/gms/internal/ads/zzahy;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzahy;->zzb(Lcom/google/android/gms/internal/ads/zzahy;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzahv;->zza(Lcom/google/android/gms/internal/ads/zzahv;)Lcom/google/android/gms/internal/ads/zzahy;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzahy;->zzc(Lcom/google/android/gms/internal/ads/zzahy;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
