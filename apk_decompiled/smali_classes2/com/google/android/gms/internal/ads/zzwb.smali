.class final Lcom/google/android/gms/internal/ads/zzwb;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.2.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzws;


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/ads/zzwe;

.field private final zzb:I


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzwe;I)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzwb;->zza:Lcom/google/android/gms/internal/ads/zzwe;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzwb;->zzb:I

    return-void
.end method

.method static bridge synthetic zzc(Lcom/google/android/gms/internal/ads/zzwb;)I
    .locals 0

    iget p0, p0, Lcom/google/android/gms/internal/ads/zzwb;->zzb:I

    return p0
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzkp;Lcom/google/android/gms/internal/ads/zzhn;I)I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzwb;->zza:Lcom/google/android/gms/internal/ads/zzwe;

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzwb;->zzb:I

    invoke-virtual {v0, v1, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzwe;->zzj(ILcom/google/android/gms/internal/ads/zzkp;Lcom/google/android/gms/internal/ads/zzhn;I)I

    move-result p1

    return p1
.end method

.method public final zzb(J)I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzwb;->zza:Lcom/google/android/gms/internal/ads/zzwe;

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzwb;->zzb:I

    invoke-virtual {v0, v1, p1, p2}, Lcom/google/android/gms/internal/ads/zzwe;->zzl(IJ)I

    move-result p1

    return p1
.end method

.method public final zzd()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzwb;->zza:Lcom/google/android/gms/internal/ads/zzwe;

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzwb;->zzb:I

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzwe;->zzI(I)V

    return-void
.end method

.method public final zze()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzwb;->zza:Lcom/google/android/gms/internal/ads/zzwe;

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzwb;->zzb:I

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzwe;->zzQ(I)Z

    move-result v0

    return v0
.end method
