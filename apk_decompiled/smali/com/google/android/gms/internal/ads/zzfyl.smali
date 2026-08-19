.class final Lcom/google/android/gms/internal/ads/zzfyl;
.super Lcom/google/android/gms/internal/ads/zzfxb;
.source "com.google.android.gms:play-services-ads@@24.2.0"


# instance fields
.field private final transient zza:Lcom/google/android/gms/internal/ads/zzfwz;

.field private final transient zzb:Lcom/google/android/gms/internal/ads/zzfww;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzfwz;Lcom/google/android/gms/internal/ads/zzfww;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzfxb;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfyl;->zza:Lcom/google/android/gms/internal/ads/zzfwz;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzfyl;->zzb:Lcom/google/android/gms/internal/ads/zzfww;

    return-void
.end method


# virtual methods
.method public final contains(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfyl;->zza:Lcom/google/android/gms/internal/ads/zzfwz;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzfwz;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final synthetic iterator()Ljava/util/Iterator;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfyl;->zzb:Lcom/google/android/gms/internal/ads/zzfww;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzfww;->zzu(I)Lcom/google/android/gms/internal/ads/zzfzd;

    move-result-object v0

    return-object v0
.end method

.method public final size()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfyl;->zza:Lcom/google/android/gms/internal/ads/zzfwz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfwz;->size()I

    move-result v0

    return v0
.end method

.method final zza([Ljava/lang/Object;I)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfyl;->zzb:Lcom/google/android/gms/internal/ads/zzfww;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzfwr;->zza([Ljava/lang/Object;I)I

    move-result p1

    return p1
.end method

.method public final zzd()Lcom/google/android/gms/internal/ads/zzfww;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfyl;->zzb:Lcom/google/android/gms/internal/ads/zzfww;

    return-object v0
.end method

.method public final zze()Lcom/google/android/gms/internal/ads/zzfzc;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfyl;->zzb:Lcom/google/android/gms/internal/ads/zzfww;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzfww;->zzu(I)Lcom/google/android/gms/internal/ads/zzfzd;

    move-result-object v0

    return-object v0
.end method

.method final zzf()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
