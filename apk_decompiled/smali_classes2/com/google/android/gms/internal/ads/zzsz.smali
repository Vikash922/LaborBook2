.class public final Lcom/google/android/gms/internal/ads/zzsz;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.2.0"


# instance fields
.field public final zza:Ljava/lang/String;

.field public final zzb:Ljava/lang/String;

.field public final zzc:Ljava/lang/String;

.field public final zzd:Landroid/media/MediaCodecInfo$CodecCapabilities;

.field public final zze:Z

.field public final zzf:Z

.field public final zzg:Z

.field public final zzh:Z

.field private final zzi:Z


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/media/MediaCodecInfo$CodecCapabilities;ZZZZZZZ)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1
    move-object p6, p1

    check-cast p6, Ljava/lang/String;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzsz;->zza:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzsz;->zzb:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzsz;->zzc:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzsz;->zzd:Landroid/media/MediaCodecInfo$CodecCapabilities;

    iput-boolean p5, p0, Lcom/google/android/gms/internal/ads/zzsz;->zzg:Z

    iput-boolean p8, p0, Lcom/google/android/gms/internal/ads/zzsz;->zze:Z

    iput-boolean p10, p0, Lcom/google/android/gms/internal/ads/zzsz;->zzf:Z

    iput-boolean p11, p0, Lcom/google/android/gms/internal/ads/zzsz;->zzh:Z

    .line 2
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzay;->zzj(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzsz;->zzi:Z

    return-void
.end method

.method public static zzc(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/media/MediaCodecInfo$CodecCapabilities;ZZZZZ)Lcom/google/android/gms/internal/ads/zzsz;
    .locals 13

    move-object/from16 v4, p3

    .line 1
    new-instance v12, Lcom/google/android/gms/internal/ads/zzsz;

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz v4, :cond_0

    const-string v2, "adaptive-playback"

    invoke-virtual {v4, v2}, Landroid/media/MediaCodecInfo$CodecCapabilities;->isFeatureSupported(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2
    sget v2, Lcom/google/android/gms/internal/ads/zzeu;->zza:I

    move v8, v0

    goto :goto_0

    :cond_0
    move v8, v1

    :goto_0
    if-eqz v4, :cond_1

    const-string v2, "tunneled-playback"

    .line 3
    invoke-virtual {v4, v2}, Landroid/media/MediaCodecInfo$CodecCapabilities;->isFeatureSupported(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v9, v0

    goto :goto_1

    :cond_1
    move v9, v1

    :goto_1
    if-nez p8, :cond_3

    if-eqz v4, :cond_2

    const-string v2, "secure-playback"

    .line 4
    invoke-virtual {v4, v2}, Landroid/media/MediaCodecInfo$CodecCapabilities;->isFeatureSupported(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_2

    :cond_2
    move v10, v1

    goto :goto_3

    :cond_3
    :goto_2
    move v10, v0

    .line 5
    :goto_3
    sget v2, Lcom/google/android/gms/internal/ads/zzeu;->zza:I

    const/16 v3, 0x23

    if-lt v2, v3, :cond_5

    if-eqz v4, :cond_5

    const-string v2, "detached-surface"

    .line 6
    invoke-virtual {v4, v2}, Landroid/media/MediaCodecInfo$CodecCapabilities;->isFeatureSupported(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    sget-object v2, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string v3, "Xiaomi"

    .line 7
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    sget-object v2, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string v3, "OPPO"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    goto :goto_4

    :cond_4
    move v11, v0

    goto :goto_5

    :cond_5
    :goto_4
    move v11, v1

    :goto_5
    move-object v0, v12

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    .line 8
    invoke-direct/range {v0 .. v11}, Lcom/google/android/gms/internal/ads/zzsz;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/media/MediaCodecInfo$CodecCapabilities;ZZZZZZZ)V

    return-object v12
.end method

.method private static zzi(Landroid/media/MediaCodecInfo$VideoCapabilities;II)Landroid/graphics/Point;
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/media/MediaCodecInfo$VideoCapabilities;->getWidthAlignment()I

    move-result v0

    .line 2
    invoke-virtual {p0}, Landroid/media/MediaCodecInfo$VideoCapabilities;->getHeightAlignment()I

    move-result p0

    new-instance v1, Landroid/graphics/Point;

    .line 3
    sget v2, Lcom/google/android/gms/internal/ads/zzeu;->zza:I

    add-int/2addr p1, v0

    add-int/lit8 p1, p1, -0x1

    .line 4
    div-int/2addr p1, v0

    mul-int/2addr p1, v0

    add-int/2addr p2, p0

    add-int/lit8 p2, p2, -0x1

    .line 5
    div-int/2addr p2, p0

    mul-int/2addr p2, p0

    .line 6
    invoke-direct {v1, p1, p2}, Landroid/graphics/Point;-><init>(II)V

    return-object v1
.end method

.method private final zzj(Ljava/lang/String;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzeu;->zzb:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "NoSupport ["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "] ["

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzsz;->zza:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzsz;->zzb:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MediaCodecInfo"

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzdx;->zzb(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static zzk(Landroid/media/MediaCodecInfo$VideoCapabilities;IID)Z
    .locals 2

    .line 1
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzsz;->zzi(Landroid/media/MediaCodecInfo$VideoCapabilities;II)Landroid/graphics/Point;

    move-result-object p1

    .line 2
    iget p2, p1, Landroid/graphics/Point;->x:I

    .line 3
    iget p1, p1, Landroid/graphics/Point;->y:I

    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    cmpl-double v0, p3, v0

    if-eqz v0, :cond_1

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    cmpg-double v0, p3, v0

    if-gez v0, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    invoke-static {p3, p4}, Ljava/lang/Math;->floor(D)D

    move-result-wide p3

    .line 6
    invoke-virtual {p0, p2, p1, p3, p4}, Landroid/media/MediaCodecInfo$VideoCapabilities;->areSizeAndRateSupported(IID)Z

    move-result p0

    return p0

    .line 4
    :cond_1
    :goto_0
    invoke-virtual {p0, p2, p1}, Landroid/media/MediaCodecInfo$VideoCapabilities;->isSizeSupported(II)Z

    move-result p0

    return p0
.end method

.method private final zzl(Lcom/google/android/gms/internal/ads/zzz;Z)Z
    .locals 11

    .line 1
    sget v0, Lcom/google/android/gms/internal/ads/zztt;->zza:I

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzdh;->zza(Lcom/google/android/gms/internal/ads/zzz;)Landroid/util/Pair;

    move-result-object v0

    .line 3
    iget-object v1, p1, Lcom/google/android/gms/internal/ads/zzz;->zzo:Ljava/lang/String;

    const/4 v2, -0x1

    const-string v3, "video/hevc"

    const/4 v4, 0x1

    if-eqz v1, :cond_2

    const-string v5, "video/mv-hevc"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzsz;->zzc:Ljava/lang/String;

    .line 4
    invoke-static {v6}, Lcom/google/android/gms/internal/ads/zzay;->zze(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 5
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    goto/16 :goto_7

    .line 6
    :cond_0
    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 7
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzz;->zzr:Ljava/util/List;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzfq;->zzh(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    .line 8
    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    sget v6, Lcom/google/android/gms/internal/ads/zzeu;->zza:I

    const-string v6, "\\."

    .line 9
    invoke-virtual {v5, v6, v2}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v5

    .line 10
    iget-object v6, p1, Lcom/google/android/gms/internal/ads/zzz;->zzC:Lcom/google/android/gms/internal/ads/zzk;

    invoke-static {v0, v5, v6}, Lcom/google/android/gms/internal/ads/zzdh;->zzb(Ljava/lang/String;[Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzk;)Landroid/util/Pair;

    move-result-object v0

    :cond_2
    :goto_0
    if-eqz v0, :cond_1a

    .line 11
    iget-object v5, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 12
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const-string v6, "video/dolby-vision"

    .line 13
    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/16 v6, 0x8

    const/4 v7, 0x2

    const/4 v8, 0x0

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzsz;->zzb:Ljava/lang/String;

    .line 14
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v9

    const v10, -0x631b55f6

    if-eq v9, v10, :cond_5

    const v10, -0x63185e82

    if-eq v9, v10, :cond_4

    const v10, 0x4f62373a

    if-eq v9, v10, :cond_3

    goto :goto_1

    .line 26
    :cond_3
    const-string v9, "video/avc"

    .line 14
    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    move v2, v8

    goto :goto_1

    :cond_4
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    move v2, v4

    goto :goto_1

    :cond_5
    const-string v9, "video/av01"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    move v2, v7

    :cond_6
    :goto_1
    if-eqz v2, :cond_8

    if-eq v2, v4, :cond_7

    if-eq v2, v7, :cond_7

    goto :goto_3

    :cond_7
    move v5, v7

    goto :goto_2

    :cond_8
    move v5, v6

    :goto_2
    move v0, v8

    :cond_9
    :goto_3
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzsz;->zzi:Z

    if-nez v1, :cond_a

    const/16 v1, 0x2a

    if-ne v5, v1, :cond_1a

    move v5, v1

    .line 15
    :cond_a
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzsz;->zzh()[Landroid/media/MediaCodecInfo$CodecProfileLevel;

    move-result-object v1

    .line 16
    sget v2, Lcom/google/android/gms/internal/ads/zzeu;->zza:I

    const/16 v9, 0x17

    if-gt v2, v9, :cond_16

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzsz;->zzb:Ljava/lang/String;

    const-string v9, "video/x-vnd.on2.vp9"

    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    array-length v2, v1

    if-nez v2, :cond_16

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzsz;->zzd:Landroid/media/MediaCodecInfo$CodecCapabilities;

    if-eqz v1, :cond_b

    .line 17
    invoke-virtual {v1}, Landroid/media/MediaCodecInfo$CodecCapabilities;->getVideoCapabilities()Landroid/media/MediaCodecInfo$VideoCapabilities;

    move-result-object v1

    if-eqz v1, :cond_b

    .line 18
    invoke-virtual {v1}, Landroid/media/MediaCodecInfo$VideoCapabilities;->getBitrateRange()Landroid/util/Range;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_4

    :cond_b
    move v1, v8

    :goto_4
    const v2, 0xaba9500

    if-lt v1, v2, :cond_c

    const/16 v6, 0x400

    goto :goto_5

    :cond_c
    const v2, 0x7270e00

    if-lt v1, v2, :cond_d

    const/16 v6, 0x200

    goto :goto_5

    :cond_d
    const v2, 0x3938700

    if-lt v1, v2, :cond_e

    const/16 v6, 0x100

    goto :goto_5

    :cond_e
    const v2, 0x1c9c380

    if-lt v1, v2, :cond_f

    const/16 v6, 0x80

    goto :goto_5

    :cond_f
    const v2, 0x112a880

    if-lt v1, v2, :cond_10

    const/16 v6, 0x40

    goto :goto_5

    :cond_10
    const v2, 0xb71b00

    if-lt v1, v2, :cond_11

    const/16 v6, 0x20

    goto :goto_5

    :cond_11
    const v2, 0x6ddd00

    if-lt v1, v2, :cond_12

    const/16 v6, 0x10

    goto :goto_5

    :cond_12
    const v2, 0x36ee80

    if-lt v1, v2, :cond_13

    goto :goto_5

    :cond_13
    const v2, 0x1b7740

    if-lt v1, v2, :cond_14

    const/4 v6, 0x4

    goto :goto_5

    :cond_14
    const v2, 0xc3500

    if-lt v1, v2, :cond_15

    move v6, v7

    goto :goto_5

    :cond_15
    move v6, v4

    :goto_5
    new-array v1, v4, [Landroid/media/MediaCodecInfo$CodecProfileLevel;

    .line 19
    new-instance v2, Landroid/media/MediaCodecInfo$CodecProfileLevel;

    invoke-direct {v2}, Landroid/media/MediaCodecInfo$CodecProfileLevel;-><init>()V

    .line 20
    iput v4, v2, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    .line 21
    iput v6, v2, Landroid/media/MediaCodecInfo$CodecProfileLevel;->level:I

    aput-object v2, v1, v8

    .line 22
    :cond_16
    array-length v2, v1

    move v6, v8

    :goto_6
    if-ge v6, v2, :cond_19

    aget-object v9, v1, v6

    .line 23
    iget v10, v9, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    if-ne v10, v5, :cond_18

    iget v9, v9, Landroid/media/MediaCodecInfo$CodecProfileLevel;->level:I

    if-ge v9, v0, :cond_17

    if-nez p2, :cond_18

    :cond_17
    iget-object v9, p0, Lcom/google/android/gms/internal/ads/zzsz;->zzb:Ljava/lang/String;

    .line 24
    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1a

    if-ne v5, v7, :cond_1a

    const-string v9, "sailfish"

    sget-object v10, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    .line 25
    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_18

    const-string v9, "marlin"

    sget-object v10, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1a

    :cond_18
    add-int/lit8 v6, v6, 0x1

    goto :goto_6

    .line 26
    :cond_19
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzz;->zzk:Ljava/lang/String;

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzsz;->zzc:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "codec.profileLevel, "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzsz;->zzj(Ljava/lang/String;)V

    return v8

    :cond_1a
    :goto_7
    return v4
.end method

.method private final zzm(Lcom/google/android/gms/internal/ads/zzz;)Z
    .locals 2

    .line 1
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzz;->zzo:Ljava/lang/String;

    const-string v1, "audio/flac"

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget p1, p1, Lcom/google/android/gms/internal/ads/zzz;->zzG:I

    const/16 v0, 0x16

    if-ne p1, v0, :cond_1

    sget p1, Lcom/google/android/gms/internal/ads/zzeu;->zza:I

    const/16 v0, 0x22

    if-ge p1, v0, :cond_1

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzsz;->zza:Ljava/lang/String;

    const-string v0, "c2.android.flac.decoder"

    .line 2
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method private final zzn(Lcom/google/android/gms/internal/ads/zzz;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzsz;->zzb:Ljava/lang/String;

    iget-object v1, p1, Lcom/google/android/gms/internal/ads/zzz;->zzo:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zztt;->zzb(Lcom/google/android/gms/internal/ads/zzz;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzsz;->zza:Ljava/lang/String;

    return-object v0
.end method

.method public final zza(II)Landroid/graphics/Point;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzsz;->zzd:Landroid/media/MediaCodecInfo$CodecCapabilities;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/media/MediaCodecInfo$CodecCapabilities;->getVideoCapabilities()Landroid/media/MediaCodecInfo$VideoCapabilities;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2
    invoke-static {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzsz;->zzi(Landroid/media/MediaCodecInfo$VideoCapabilities;II)Landroid/graphics/Point;

    move-result-object p1

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzz;Lcom/google/android/gms/internal/ads/zzz;)Lcom/google/android/gms/internal/ads/zzhz;
    .locals 13

    .line 1
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzz;->zzo:Ljava/lang/String;

    iget-object v1, p2, Lcom/google/android/gms/internal/ads/zzz;->zzo:Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eq v1, v0, :cond_0

    const/16 v0, 0x8

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzsz;->zzi:Z

    if-eqz v2, :cond_9

    iget v2, p1, Lcom/google/android/gms/internal/ads/zzz;->zzy:I

    .line 2
    iget v3, p2, Lcom/google/android/gms/internal/ads/zzz;->zzy:I

    if-eq v2, v3, :cond_1

    or-int/lit16 v0, v0, 0x400

    :cond_1
    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzsz;->zze:Z

    if-nez v2, :cond_3

    iget v2, p1, Lcom/google/android/gms/internal/ads/zzz;->zzv:I

    .line 3
    iget v3, p2, Lcom/google/android/gms/internal/ads/zzz;->zzv:I

    if-ne v2, v3, :cond_2

    iget v2, p1, Lcom/google/android/gms/internal/ads/zzz;->zzw:I

    iget v3, p2, Lcom/google/android/gms/internal/ads/zzz;->zzw:I

    if-eq v2, v3, :cond_3

    :cond_2
    or-int/lit16 v0, v0, 0x200

    :cond_3
    iget-object v2, p1, Lcom/google/android/gms/internal/ads/zzz;->zzC:Lcom/google/android/gms/internal/ads/zzk;

    .line 4
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzk;->zzg(Lcom/google/android/gms/internal/ads/zzk;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p2, Lcom/google/android/gms/internal/ads/zzz;->zzC:Lcom/google/android/gms/internal/ads/zzk;

    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzk;->zzg(Lcom/google/android/gms/internal/ads/zzk;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 5
    :cond_4
    iget-object v3, p2, Lcom/google/android/gms/internal/ads/zzz;->zzC:Lcom/google/android/gms/internal/ads/zzk;

    .line 6
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    or-int/lit16 v0, v0, 0x800

    :cond_5
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzsz;->zza:Ljava/lang/String;

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v4, "SM-T230"

    .line 7
    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    const-string v2, "OMX.MARVELL.VIDEO.HW.CODA7542DECODER"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 8
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzz;->zzd(Lcom/google/android/gms/internal/ads/zzz;)Z

    move-result v2

    if-nez v2, :cond_6

    or-int/lit8 v0, v0, 0x2

    :cond_6
    if-nez v0, :cond_8

    new-instance v0, Lcom/google/android/gms/internal/ads/zzhz;

    .line 9
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzz;->zzd(Lcom/google/android/gms/internal/ads/zzz;)Z

    move-result v2

    if-eq v1, v2, :cond_7

    const/4 v1, 0x2

    goto :goto_1

    :cond_7
    const/4 v1, 0x3

    :goto_1
    move v6, v1

    const/4 v7, 0x0

    move-object v2, v0

    move-object v4, p1

    move-object v5, p2

    .line 10
    invoke-direct/range {v2 .. v7}, Lcom/google/android/gms/internal/ads/zzhz;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzz;Lcom/google/android/gms/internal/ads/zzz;II)V

    return-object v0

    :cond_8
    move v12, v0

    goto/16 :goto_3

    .line 22
    :cond_9
    iget v1, p1, Lcom/google/android/gms/internal/ads/zzz;->zzE:I

    .line 11
    iget v2, p2, Lcom/google/android/gms/internal/ads/zzz;->zzE:I

    if-eq v1, v2, :cond_a

    or-int/lit16 v0, v0, 0x1000

    :cond_a
    iget v1, p1, Lcom/google/android/gms/internal/ads/zzz;->zzF:I

    .line 12
    iget v2, p2, Lcom/google/android/gms/internal/ads/zzz;->zzF:I

    if-eq v1, v2, :cond_b

    or-int/lit16 v0, v0, 0x2000

    :cond_b
    iget v1, p1, Lcom/google/android/gms/internal/ads/zzz;->zzG:I

    .line 13
    iget v2, p2, Lcom/google/android/gms/internal/ads/zzz;->zzG:I

    if-eq v1, v2, :cond_c

    or-int/lit16 v0, v0, 0x4000

    :cond_c
    if-nez v0, :cond_e

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzsz;->zzb:Ljava/lang/String;

    const-string v2, "audio/mp4a-latm"

    .line 14
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 15
    sget v1, Lcom/google/android/gms/internal/ads/zztt;->zza:I

    .line 16
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzdh;->zza(Lcom/google/android/gms/internal/ads/zzz;)Landroid/util/Pair;

    move-result-object v1

    .line 17
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzdh;->zza(Lcom/google/android/gms/internal/ads/zzz;)Landroid/util/Pair;

    move-result-object v2

    if-eqz v1, :cond_e

    if-eqz v2, :cond_e

    .line 18
    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 19
    iget-object v2, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/16 v3, 0x2a

    if-ne v1, v3, :cond_e

    if-eq v2, v3, :cond_d

    goto :goto_2

    .line 23
    :cond_d
    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzsz;->zza:Ljava/lang/String;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzhz;

    const/4 v8, 0x3

    const/4 v9, 0x0

    move-object v4, v0

    move-object v6, p1

    move-object v7, p2

    .line 24
    invoke-direct/range {v4 .. v9}, Lcom/google/android/gms/internal/ads/zzhz;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzz;Lcom/google/android/gms/internal/ads/zzz;II)V

    return-object v0

    .line 20
    :cond_e
    :goto_2
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzz;->zzd(Lcom/google/android/gms/internal/ads/zzz;)Z

    move-result v1

    if-nez v1, :cond_f

    or-int/lit8 v0, v0, 0x20

    :cond_f
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzsz;->zzb:Ljava/lang/String;

    const-string v2, "audio/opus"

    .line 21
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    or-int/lit8 v0, v0, 0x2

    :cond_10
    if-nez v0, :cond_8

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzsz;->zza:Ljava/lang/String;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzhz;

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v1, v0

    move-object v3, p1

    move-object v4, p2

    .line 23
    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/zzhz;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzz;Lcom/google/android/gms/internal/ads/zzz;II)V

    return-object v0

    .line 10
    :goto_3
    iget-object v8, p0, Lcom/google/android/gms/internal/ads/zzsz;->zza:Ljava/lang/String;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzhz;

    const/4 v11, 0x0

    move-object v7, v0

    move-object v9, p1

    move-object v10, p2

    .line 22
    invoke-direct/range {v7 .. v12}, Lcom/google/android/gms/internal/ads/zzhz;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzz;Lcom/google/android/gms/internal/ads/zzz;II)V

    return-object v0
.end method

.method public final zzd(Lcom/google/android/gms/internal/ads/zzz;)Z
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzsz;->zzn(Lcom/google/android/gms/internal/ads/zzz;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0, p1, v1}, Lcom/google/android/gms/internal/ads/zzsz;->zzl(Lcom/google/android/gms/internal/ads/zzz;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzsz;->zzm(Lcom/google/android/gms/internal/ads/zzz;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    return v1
.end method

.method public final zze(Lcom/google/android/gms/internal/ads/zzz;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zztn;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzsz;->zzn(Lcom/google/android/gms/internal/ads/zzz;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x1

    .line 2
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzsz;->zzl(Lcom/google/android/gms/internal/ads/zzz;Z)Z

    move-result v2

    if-nez v2, :cond_1

    return v1

    .line 3
    :cond_1
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzsz;->zzm(Lcom/google/android/gms/internal/ads/zzz;)Z

    move-result v2

    if-nez v2, :cond_2

    return v1

    :cond_2
    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzsz;->zzi:Z

    if-eqz v2, :cond_5

    .line 4
    iget v1, p1, Lcom/google/android/gms/internal/ads/zzz;->zzv:I

    if-lez v1, :cond_4

    iget v2, p1, Lcom/google/android/gms/internal/ads/zzz;->zzw:I

    if-gtz v2, :cond_3

    goto :goto_0

    .line 5
    :cond_3
    iget p1, p1, Lcom/google/android/gms/internal/ads/zzz;->zzx:F

    float-to-double v3, p1

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzsz;->zzg(IID)Z

    move-result p1

    return p1

    :cond_4
    :goto_0
    return v0

    .line 6
    :cond_5
    iget v2, p1, Lcom/google/android/gms/internal/ads/zzz;->zzF:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_8

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzsz;->zzd:Landroid/media/MediaCodecInfo$CodecCapabilities;

    if-nez v4, :cond_6

    const-string p1, "sampleRate.caps"

    .line 7
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzsz;->zzj(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 8
    :cond_6
    invoke-virtual {v4}, Landroid/media/MediaCodecInfo$CodecCapabilities;->getAudioCapabilities()Landroid/media/MediaCodecInfo$AudioCapabilities;

    move-result-object v4

    if-nez v4, :cond_7

    const-string p1, "sampleRate.aCaps"

    .line 9
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzsz;->zzj(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 10
    :cond_7
    invoke-virtual {v4, v2}, Landroid/media/MediaCodecInfo$AudioCapabilities;->isSampleRateSupported(I)Z

    move-result v4

    if-nez v4, :cond_8

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "sampleRate.support, "

    .line 32
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzsz;->zzj(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 11
    :cond_8
    iget p1, p1, Lcom/google/android/gms/internal/ads/zzz;->zzE:I

    if-eq p1, v3, :cond_11

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzsz;->zzd:Landroid/media/MediaCodecInfo$CodecCapabilities;

    if-nez v2, :cond_9

    const-string p1, "channelCount.caps"

    .line 12
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzsz;->zzj(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 13
    :cond_9
    invoke-virtual {v2}, Landroid/media/MediaCodecInfo$CodecCapabilities;->getAudioCapabilities()Landroid/media/MediaCodecInfo$AudioCapabilities;

    move-result-object v2

    if-nez v2, :cond_a

    const-string p1, "channelCount.aCaps"

    .line 14
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzsz;->zzj(Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_a
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzsz;->zza:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzsz;->zzb:Ljava/lang/String;

    .line 15
    invoke-virtual {v2}, Landroid/media/MediaCodecInfo$AudioCapabilities;->getMaxInputChannelCount()I

    move-result v2

    if-gt v2, v0, :cond_f

    .line 16
    sget v5, Lcom/google/android/gms/internal/ads/zzeu;->zza:I

    const/16 v6, 0x1a

    if-lt v5, v6, :cond_b

    if-lez v2, :cond_b

    goto/16 :goto_2

    .line 31
    :cond_b
    const-string v5, "audio/mpeg"

    .line 17
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_f

    const-string v5, "audio/3gpp"

    .line 18
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_f

    const-string v5, "audio/amr-wb"

    .line 19
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_f

    const-string v5, "audio/mp4a-latm"

    .line 20
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_f

    const-string v5, "audio/vorbis"

    .line 21
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_f

    const-string v5, "audio/opus"

    .line 22
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_f

    const-string v5, "audio/raw"

    .line 23
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_f

    const-string v5, "audio/flac"

    .line 24
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_f

    const-string v5, "audio/g711-alaw"

    .line 25
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_f

    const-string v5, "audio/g711-mlaw"

    .line 26
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_f

    const-string v5, "audio/gsm"

    .line 27
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c

    goto :goto_2

    :cond_c
    const-string v5, "audio/ac3"

    .line 28
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d

    const/4 v4, 0x6

    goto :goto_1

    .line 30
    :cond_d
    const-string v5, "audio/eac3"

    .line 29
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e

    const/16 v4, 0x10

    goto :goto_1

    :cond_e
    const/16 v4, 0x1e

    .line 28
    :goto_1
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "AssumedMaxChannelAdjustment: "

    .line 30
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", ["

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " to "

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "MediaCodecInfo"

    invoke-static {v3, v2}, Lcom/google/android/gms/internal/ads/zzdx;->zzf(Ljava/lang/String;Ljava/lang/String;)V

    move v2, v4

    :cond_f
    :goto_2
    if-ge v2, p1, :cond_10

    .line 16
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "channelCount.support, "

    .line 31
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzsz;->zzj(Ljava/lang/String;)V

    goto :goto_3

    :cond_10
    return v0

    :cond_11
    move v1, v0

    :goto_3
    return v1
.end method

.method public final zzf(Lcom/google/android/gms/internal/ads/zzz;)Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzsz;->zzi:Z

    if-eqz v0, :cond_0

    iget-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzsz;->zze:Z

    return p1

    :cond_0
    sget v0, Lcom/google/android/gms/internal/ads/zztt;->zza:I

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzdh;->zza(Lcom/google/android/gms/internal/ads/zzz;)Landroid/util/Pair;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 3
    iget-object p1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/16 v0, 0x2a

    if-ne p1, v0, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public final zzg(IID)Z
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzsz;->zzd:Landroid/media/MediaCodecInfo$CodecCapabilities;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string p1, "sizeAndRate.caps"

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzsz;->zzj(Ljava/lang/String;)V

    return v1

    .line 2
    :cond_0
    invoke-virtual {v0}, Landroid/media/MediaCodecInfo$CodecCapabilities;->getVideoCapabilities()Landroid/media/MediaCodecInfo$VideoCapabilities;

    move-result-object v0

    if-nez v0, :cond_1

    const-string p1, "sizeAndRate.vCaps"

    .line 3
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzsz;->zzj(Ljava/lang/String;)V

    return v1

    .line 4
    :cond_1
    sget v2, Lcom/google/android/gms/internal/ads/zzeu;->zza:I

    const/16 v3, 0x1d

    const/4 v4, 0x1

    const-string v5, "@"

    const-string v6, "x"

    if-lt v2, v3, :cond_4

    .line 5
    invoke-static {v0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/ads/zztb;->zza(Landroid/media/MediaCodecInfo$VideoCapabilities;IID)I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    goto/16 :goto_2

    :cond_2
    if-eq v2, v4, :cond_3

    goto :goto_0

    .line 10
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "sizeAndRate.cover, "

    .line 12
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzsz;->zzj(Ljava/lang/String;)V

    return v1

    .line 6
    :cond_4
    :goto_0
    invoke-static {v0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/ads/zzsz;->zzk(Landroid/media/MediaCodecInfo$VideoCapabilities;IID)Z

    move-result v2

    if-nez v2, :cond_8

    if-ge p1, p2, :cond_7

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzsz;->zza:Ljava/lang/String;

    const-string v3, "OMX.MTK.VIDEO.DECODER.HEVC"

    .line 7
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    const-string v3, "mcv5a"

    sget-object v7, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 8
    :cond_5
    invoke-static {v0, p2, p1, p3, p4}, Lcom/google/android/gms/internal/ads/zzsz;->zzk(Landroid/media/MediaCodecInfo$VideoCapabilities;IID)Z

    move-result v0

    if-nez v0, :cond_6

    goto :goto_1

    .line 11
    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "sizeAndRate.rotated, "

    .line 9
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzsz;->zzb:Ljava/lang/String;

    sget-object p3, Lcom/google/android/gms/internal/ads/zzeu;->zzb:Ljava/lang/String;

    new-instance p4, Ljava/lang/StringBuilder;

    const-string v0, "AssumedSupport ["

    .line 10
    invoke-direct {p4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "] ["

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "MediaCodecInfo"

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/zzdx;->zzb(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 8
    :cond_7
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "sizeAndRate.support, "

    .line 11
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzsz;->zzj(Ljava/lang/String;)V

    return v1

    :cond_8
    :goto_2
    return v4
.end method

.method public final zzh()[Landroid/media/MediaCodecInfo$CodecProfileLevel;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzsz;->zzd:Landroid/media/MediaCodecInfo$CodecCapabilities;

    if-eqz v0, :cond_1

    iget-object v1, v0, Landroid/media/MediaCodecInfo$CodecCapabilities;->profileLevels:[Landroid/media/MediaCodecInfo$CodecProfileLevel;

    if-nez v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, v0, Landroid/media/MediaCodecInfo$CodecCapabilities;->profileLevels:[Landroid/media/MediaCodecInfo$CodecProfileLevel;

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 1
    new-array v0, v0, [Landroid/media/MediaCodecInfo$CodecProfileLevel;

    :goto_1
    return-object v0
.end method
