.class final Lcom/google/android/gms/internal/ads/zzfwv;
.super Lcom/google/android/gms/internal/ads/zzfww;
.source "com.google.android.gms:play-services-ads@@24.2.0"


# instance fields
.field final transient zza:I

.field final transient zzb:I

.field final synthetic zzc:Lcom/google/android/gms/internal/ads/zzfww;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzfww;II)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfwv;->zzc:Lcom/google/android/gms/internal/ads/zzfww;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzfww;-><init>()V

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzfwv;->zza:I

    iput p3, p0, Lcom/google/android/gms/internal/ads/zzfwv;->zzb:I

    return-void
.end method


# virtual methods
.method public final get(I)Ljava/lang/Object;
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzfwv;->zzb:I

    const-string v1, "index"

    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzftw;->zza(IILjava/lang/String;)I

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfwv;->zzc:Lcom/google/android/gms/internal/ads/zzfww;

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzfwv;->zza:I

    add-int/2addr p1, v1

    .line 2
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzfww;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final size()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzfwv;->zzb:I

    return v0
.end method

.method public final bridge synthetic subList(II)Ljava/util/List;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzfww;->zzh(II)Lcom/google/android/gms/internal/ads/zzfww;

    move-result-object p1

    return-object p1
.end method

.method final zzb()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfwv;->zzc:Lcom/google/android/gms/internal/ads/zzfww;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfwr;->zzc()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzfwv;->zza:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzfwv;->zzb:I

    add-int/2addr v0, v1

    return v0
.end method

.method final zzc()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfwv;->zzc:Lcom/google/android/gms/internal/ads/zzfww;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfwr;->zzc()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzfwv;->zza:I

    add-int/2addr v0, v1

    return v0
.end method

.method final zzf()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method final zzg()[Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfwv;->zzc:Lcom/google/android/gms/internal/ads/zzfww;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfwr;->zzg()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final zzh(II)Lcom/google/android/gms/internal/ads/zzfww;
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzfwv;->zzb:I

    invoke-static {p1, p2, v0}, Lcom/google/android/gms/internal/ads/zzftw;->zzk(III)V

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzfwv;->zza:I

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfwv;->zzc:Lcom/google/android/gms/internal/ads/zzfww;

    add-int/2addr p1, v0

    add-int/2addr p2, v0

    .line 2
    invoke-virtual {v1, p1, p2}, Lcom/google/android/gms/internal/ads/zzfww;->zzh(II)Lcom/google/android/gms/internal/ads/zzfww;

    move-result-object p1

    return-object p1
.end method
