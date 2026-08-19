.class public final Lcom/google/android/gms/internal/ads/zzyw;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.2.0"


# instance fields
.field public final zza:I

.field public final zzb:[Lcom/google/android/gms/internal/ads/zzly;

.field public final zzc:[Lcom/google/android/gms/internal/ads/zzyp;

.field public final zzd:Lcom/google/android/gms/internal/ads/zzbt;

.field public final zze:Ljava/lang/Object;


# direct methods
.method public constructor <init>([Lcom/google/android/gms/internal/ads/zzly;[Lcom/google/android/gms/internal/ads/zzyp;Lcom/google/android/gms/internal/ads/zzbt;Ljava/lang/Object;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    array-length v0, p1

    array-length v1, p2

    if-ne v0, v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzdc;->zzd(Z)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzyw;->zzb:[Lcom/google/android/gms/internal/ads/zzly;

    .line 2
    invoke-virtual {p2}, [Lcom/google/android/gms/internal/ads/zzyp;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/google/android/gms/internal/ads/zzyp;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzyw;->zzc:[Lcom/google/android/gms/internal/ads/zzyp;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzyw;->zzd:Lcom/google/android/gms/internal/ads/zzbt;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzyw;->zze:Ljava/lang/Object;

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzyw;->zza:I

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzyw;I)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 1
    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzyw;->zzb:[Lcom/google/android/gms/internal/ads/zzly;

    aget-object v1, v1, p2

    iget-object v2, p1, Lcom/google/android/gms/internal/ads/zzyw;->zzb:[Lcom/google/android/gms/internal/ads/zzly;

    aget-object v2, v2, p2

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzyw;->zzc:[Lcom/google/android/gms/internal/ads/zzyp;

    aget-object v1, v1, p2

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzyw;->zzc:[Lcom/google/android/gms/internal/ads/zzyp;

    aget-object p1, p1, p2

    .line 2
    invoke-static {v1, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v0
.end method

.method public final zzb(I)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzyw;->zzb:[Lcom/google/android/gms/internal/ads/zzly;

    aget-object p1, v0, p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
