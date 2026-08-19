.class final Lcom/google/android/gms/internal/ads/zzue;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.2.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzvj;
.implements Lcom/google/android/gms/internal/ads/zzru;


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/ads/zzug;

.field private final zzb:Ljava/lang/Object;

.field private zzc:Lcom/google/android/gms/internal/ads/zzvi;

.field private zzd:Lcom/google/android/gms/internal/ads/zzrt;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzug;Ljava/lang/Object;)V
    .locals 2

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzue;->zza:Lcom/google/android/gms/internal/ads/zzug;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zztx;->zze(Lcom/google/android/gms/internal/ads/zzuy;)Lcom/google/android/gms/internal/ads/zzvi;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzue;->zzc:Lcom/google/android/gms/internal/ads/zzvi;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zztx;->zzc(Lcom/google/android/gms/internal/ads/zzuy;)Lcom/google/android/gms/internal/ads/zzrt;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzue;->zzd:Lcom/google/android/gms/internal/ads/zzrt;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzue;->zzb:Ljava/lang/Object;

    return-void
.end method

.method private final zzf(Lcom/google/android/gms/internal/ads/zzuu;Lcom/google/android/gms/internal/ads/zzuy;)Lcom/google/android/gms/internal/ads/zzuu;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzue;->zza:Lcom/google/android/gms/internal/ads/zzug;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzue;->zzb:Ljava/lang/Object;

    iget-wide v2, p1, Lcom/google/android/gms/internal/ads/zzuu;->zzc:J

    invoke-virtual {v0, v1, v2, v3, p2}, Lcom/google/android/gms/internal/ads/zzug;->zzx(Ljava/lang/Object;JLcom/google/android/gms/internal/ads/zzuy;)J

    iget-wide v2, p1, Lcom/google/android/gms/internal/ads/zzuu;->zzd:J

    .line 2
    invoke-virtual {v0, v1, v2, v3, p2}, Lcom/google/android/gms/internal/ads/zzug;->zzx(Ljava/lang/Object;JLcom/google/android/gms/internal/ads/zzuy;)J

    return-object p1
.end method

.method private final zzg(ILcom/google/android/gms/internal/ads/zzuy;)Z
    .locals 3

    const/4 p1, 0x0

    if-eqz p2, :cond_1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzue;->zza:Lcom/google/android/gms/internal/ads/zzug;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzue;->zzb:Ljava/lang/Object;

    invoke-virtual {v0, v1, p2}, Lcom/google/android/gms/internal/ads/zzug;->zzy(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzuy;)Lcom/google/android/gms/internal/ads/zzuy;

    move-result-object p2

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    return p1

    :cond_1
    const/4 p2, 0x0

    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzue;->zza:Lcom/google/android/gms/internal/ads/zzug;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzue;->zzb:Ljava/lang/Object;

    .line 2
    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzug;->zzw(Ljava/lang/Object;I)I

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzue;->zzc:Lcom/google/android/gms/internal/ads/zzvi;

    .line 3
    iget v2, v1, Lcom/google/android/gms/internal/ads/zzvi;->zza:I

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzvi;->zzb:Lcom/google/android/gms/internal/ads/zzuy;

    .line 4
    invoke-static {v1, p2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zztx;->zzf(ILcom/google/android/gms/internal/ads/zzuy;)Lcom/google/android/gms/internal/ads/zzvi;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzue;->zzc:Lcom/google/android/gms/internal/ads/zzvi;

    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzue;->zzd:Lcom/google/android/gms/internal/ads/zzrt;

    .line 5
    iget v2, v1, Lcom/google/android/gms/internal/ads/zzrt;->zza:I

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzrt;->zzb:Lcom/google/android/gms/internal/ads/zzuy;

    .line 6
    invoke-static {v1, p2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zztx;->zzd(ILcom/google/android/gms/internal/ads/zzuy;)Lcom/google/android/gms/internal/ads/zzrt;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzue;->zzd:Lcom/google/android/gms/internal/ads/zzrt;

    :cond_3
    const/4 p1, 0x1

    return p1
.end method


# virtual methods
.method public final zzag(ILcom/google/android/gms/internal/ads/zzuy;Lcom/google/android/gms/internal/ads/zzuu;)V
    .locals 0

    const/4 p1, 0x0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzue;->zzg(ILcom/google/android/gms/internal/ads/zzuy;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzue;->zzc:Lcom/google/android/gms/internal/ads/zzvi;

    .line 2
    invoke-direct {p0, p3, p2}, Lcom/google/android/gms/internal/ads/zzue;->zzf(Lcom/google/android/gms/internal/ads/zzuu;Lcom/google/android/gms/internal/ads/zzuy;)Lcom/google/android/gms/internal/ads/zzuu;

    .line 3
    invoke-virtual {p1, p3}, Lcom/google/android/gms/internal/ads/zzvi;->zzd(Lcom/google/android/gms/internal/ads/zzuu;)V

    :cond_0
    return-void
.end method

.method public final zzah(ILcom/google/android/gms/internal/ads/zzuy;Lcom/google/android/gms/internal/ads/zzup;Lcom/google/android/gms/internal/ads/zzuu;)V
    .locals 0

    const/4 p1, 0x0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzue;->zzg(ILcom/google/android/gms/internal/ads/zzuy;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzue;->zzc:Lcom/google/android/gms/internal/ads/zzvi;

    .line 2
    invoke-direct {p0, p4, p2}, Lcom/google/android/gms/internal/ads/zzue;->zzf(Lcom/google/android/gms/internal/ads/zzuu;Lcom/google/android/gms/internal/ads/zzuy;)Lcom/google/android/gms/internal/ads/zzuu;

    .line 3
    invoke-virtual {p1, p3, p4}, Lcom/google/android/gms/internal/ads/zzvi;->zze(Lcom/google/android/gms/internal/ads/zzup;Lcom/google/android/gms/internal/ads/zzuu;)V

    :cond_0
    return-void
.end method

.method public final zzai(ILcom/google/android/gms/internal/ads/zzuy;Lcom/google/android/gms/internal/ads/zzup;Lcom/google/android/gms/internal/ads/zzuu;)V
    .locals 0

    const/4 p1, 0x0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzue;->zzg(ILcom/google/android/gms/internal/ads/zzuy;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzue;->zzc:Lcom/google/android/gms/internal/ads/zzvi;

    .line 2
    invoke-direct {p0, p4, p2}, Lcom/google/android/gms/internal/ads/zzue;->zzf(Lcom/google/android/gms/internal/ads/zzuu;Lcom/google/android/gms/internal/ads/zzuy;)Lcom/google/android/gms/internal/ads/zzuu;

    .line 3
    invoke-virtual {p1, p3, p4}, Lcom/google/android/gms/internal/ads/zzvi;->zzf(Lcom/google/android/gms/internal/ads/zzup;Lcom/google/android/gms/internal/ads/zzuu;)V

    :cond_0
    return-void
.end method

.method public final zzaj(ILcom/google/android/gms/internal/ads/zzuy;Lcom/google/android/gms/internal/ads/zzup;Lcom/google/android/gms/internal/ads/zzuu;Ljava/io/IOException;Z)V
    .locals 0

    const/4 p1, 0x0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzue;->zzg(ILcom/google/android/gms/internal/ads/zzuy;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzue;->zzc:Lcom/google/android/gms/internal/ads/zzvi;

    .line 2
    invoke-direct {p0, p4, p2}, Lcom/google/android/gms/internal/ads/zzue;->zzf(Lcom/google/android/gms/internal/ads/zzuu;Lcom/google/android/gms/internal/ads/zzuy;)Lcom/google/android/gms/internal/ads/zzuu;

    .line 3
    invoke-virtual {p1, p3, p4, p5, p6}, Lcom/google/android/gms/internal/ads/zzvi;->zzg(Lcom/google/android/gms/internal/ads/zzup;Lcom/google/android/gms/internal/ads/zzuu;Ljava/io/IOException;Z)V

    :cond_0
    return-void
.end method

.method public final zzak(ILcom/google/android/gms/internal/ads/zzuy;Lcom/google/android/gms/internal/ads/zzup;Lcom/google/android/gms/internal/ads/zzuu;I)V
    .locals 0

    const/4 p1, 0x0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzue;->zzg(ILcom/google/android/gms/internal/ads/zzuy;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzue;->zzc:Lcom/google/android/gms/internal/ads/zzvi;

    .line 2
    invoke-direct {p0, p4, p2}, Lcom/google/android/gms/internal/ads/zzue;->zzf(Lcom/google/android/gms/internal/ads/zzuu;Lcom/google/android/gms/internal/ads/zzuy;)Lcom/google/android/gms/internal/ads/zzuu;

    .line 3
    invoke-virtual {p1, p3, p4, p5}, Lcom/google/android/gms/internal/ads/zzvi;->zzh(Lcom/google/android/gms/internal/ads/zzup;Lcom/google/android/gms/internal/ads/zzuu;I)V

    :cond_0
    return-void
.end method
