.class public final Lcom/google/android/gms/internal/ads/zzap;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.2.0"


# instance fields
.field public final zza:Ljava/lang/String;

.field public final zzb:Lcom/google/android/gms/internal/ads/zzak;

.field public final zzc:Lcom/google/android/gms/internal/ads/zzaj;

.field public final zzd:Lcom/google/android/gms/internal/ads/zzat;

.field public final zze:Lcom/google/android/gms/internal/ads/zzaf;

.field public final zzf:Lcom/google/android/gms/internal/ads/zzam;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzad;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzad;-><init>()V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzad;->zzc()Lcom/google/android/gms/internal/ads/zzap;

    .line 2
    sget v0, Lcom/google/android/gms/internal/ads/zzeu;->zza:I

    const/4 v0, 0x0

    const/16 v1, 0x24

    .line 3
    invoke-static {v0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    const/4 v0, 0x1

    .line 4
    invoke-static {v0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    const/4 v0, 0x2

    .line 5
    invoke-static {v0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    const/4 v0, 0x3

    .line 6
    invoke-static {v0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    const/4 v0, 0x4

    .line 7
    invoke-static {v0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    const/4 v0, 0x5

    .line 8
    invoke-static {v0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzag;Lcom/google/android/gms/internal/ads/zzak;Lcom/google/android/gms/internal/ads/zzaj;Lcom/google/android/gms/internal/ads/zzat;Lcom/google/android/gms/internal/ads/zzam;Lcom/google/android/gms/internal/ads/zzao;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzap;->zza:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzap;->zzb:Lcom/google/android/gms/internal/ads/zzak;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzap;->zzc:Lcom/google/android/gms/internal/ads/zzaj;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzap;->zzd:Lcom/google/android/gms/internal/ads/zzat;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzap;->zze:Lcom/google/android/gms/internal/ads/zzaf;

    iput-object p6, p0, Lcom/google/android/gms/internal/ads/zzap;->zzf:Lcom/google/android/gms/internal/ads/zzam;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, Lcom/google/android/gms/internal/ads/zzap;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/google/android/gms/internal/ads/zzap;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzap;->zza:Ljava/lang/String;

    .line 2
    iget-object v3, p1, Lcom/google/android/gms/internal/ads/zzap;->zza:Ljava/lang/String;

    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzap;->zze:Lcom/google/android/gms/internal/ads/zzaf;

    iget-object v3, p1, Lcom/google/android/gms/internal/ads/zzap;->zze:Lcom/google/android/gms/internal/ads/zzaf;

    .line 3
    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/ads/zzaf;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzap;->zzb:Lcom/google/android/gms/internal/ads/zzak;

    iget-object v3, p1, Lcom/google/android/gms/internal/ads/zzap;->zzb:Lcom/google/android/gms/internal/ads/zzak;

    .line 4
    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzap;->zzc:Lcom/google/android/gms/internal/ads/zzaj;

    iget-object v3, p1, Lcom/google/android/gms/internal/ads/zzap;->zzc:Lcom/google/android/gms/internal/ads/zzaj;

    .line 5
    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzap;->zzd:Lcom/google/android/gms/internal/ads/zzat;

    iget-object v3, p1, Lcom/google/android/gms/internal/ads/zzap;->zzd:Lcom/google/android/gms/internal/ads/zzat;

    .line 6
    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzap;->zzf:Lcom/google/android/gms/internal/ads/zzam;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzap;->zzf:Lcom/google/android/gms/internal/ads/zzam;

    .line 7
    invoke-static {v1, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v0

    :cond_2
    return v2
.end method

.method public final hashCode()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzap;->zza:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzap;->zzb:Lcom/google/android/gms/internal/ads/zzak;

    if-eqz v1, :cond_0

    .line 2
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzak;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzap;->zzc:Lcom/google/android/gms/internal/ads/zzaj;

    .line 3
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzaj;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzap;->zze:Lcom/google/android/gms/internal/ads/zzaf;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzaf;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzap;->zzd:Lcom/google/android/gms/internal/ads/zzat;

    .line 4
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzat;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    return v0
.end method
