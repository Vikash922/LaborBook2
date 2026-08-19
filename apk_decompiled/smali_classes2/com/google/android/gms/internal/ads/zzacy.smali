.class public final Lcom/google/android/gms/internal/ads/zzacy;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.2.0"


# instance fields
.field public final zza:Ljava/lang/String;


# direct methods
.method private constructor <init>(IILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzacy;->zza:Ljava/lang/String;

    return-void
.end method

.method public static zza(Lcom/google/android/gms/internal/ads/zzek;)Lcom/google/android/gms/internal/ads/zzacy;
    .locals 6

    const/4 v0, 0x2

    .line 1
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzek;->zzM(I)V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzek;->zzm()I

    move-result v0

    shr-int/lit8 v1, v0, 0x1

    and-int/lit8 v0, v0, 0x1

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzek;->zzm()I

    move-result p0

    shr-int/lit8 p0, p0, 0x3

    const/4 v2, 0x4

    const/4 v3, 0x5

    const/16 v4, 0xa

    if-eq v1, v2, :cond_3

    if-eq v1, v3, :cond_3

    const/4 v2, 0x7

    if-eq v1, v2, :cond_3

    const/16 v2, 0x8

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/16 v2, 0x9

    if-ne v1, v2, :cond_1

    .line 4
    const-string v2, "dvav"

    goto :goto_1

    :cond_1
    if-ne v1, v4, :cond_2

    const-string v2, "dav1"

    goto :goto_1

    :cond_2
    const/4 p0, 0x0

    return-object p0

    .line 3
    :cond_3
    :goto_0
    const-string v2, "dvhe"

    :goto_1
    shl-int/2addr v0, v3

    or-int/2addr p0, v0

    new-instance v0, Ljava/lang/StringBuilder;

    .line 4
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".0"

    const-string v3, "."

    if-ge v1, v4, :cond_4

    move-object v5, v2

    goto :goto_2

    :cond_4
    move-object v5, v3

    :goto_2
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    if-ge p0, v4, :cond_5

    goto :goto_3

    :cond_5
    move-object v2, v3

    :goto_3
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lcom/google/android/gms/internal/ads/zzacy;

    invoke-direct {v2, v1, p0, v0}, Lcom/google/android/gms/internal/ads/zzacy;-><init>(IILjava/lang/String;)V

    return-object v2
.end method
