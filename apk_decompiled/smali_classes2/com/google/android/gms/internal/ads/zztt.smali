.class public final Lcom/google/android/gms/internal/ads/zztt;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.2.0"


# static fields
.field public static final synthetic zza:I

.field private static final zzb:Ljava/util/HashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zztt;->zzb:Ljava/util/HashMap;

    return-void
.end method

.method public static zza()Lcom/google/android/gms/internal/ads/zzsz;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zztn;
        }
    .end annotation

    .line 1
    const-string v0, "audio/raw"

    const/4 v1, 0x0

    invoke-static {v0, v1, v1}, Lcom/google/android/gms/internal/ads/zztt;->zzd(Ljava/lang/String;ZZ)Ljava/util/List;

    move-result-object v0

    .line 2
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzsz;

    return-object v0
.end method

.method public static zzb(Lcom/google/android/gms/internal/ads/zzz;)Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzz;->zzo:Ljava/lang/String;

    const-string v1, "audio/eac3-joc"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string p0, "audio/eac3"

    return-object p0

    :cond_0
    const-string v1, "video/dolby-vision"

    .line 2
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 3
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzdh;->zza(Lcom/google/android/gms/internal/ads/zzz;)Landroid/util/Pair;

    move-result-object p0

    if-eqz p0, :cond_4

    .line 4
    iget-object p0, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    const/16 v1, 0x10

    if-eq p0, v1, :cond_5

    const/16 v1, 0x100

    if-ne p0, v1, :cond_1

    goto :goto_1

    :cond_1
    const/16 v1, 0x200

    if-ne p0, v1, :cond_2

    const-string p0, "video/avc"

    return-object p0

    :cond_2
    const/16 v1, 0x400

    if-eq p0, v1, :cond_3

    goto :goto_0

    .line 5
    :cond_3
    const-string p0, "video/av01"

    return-object p0

    .line 4
    :cond_4
    :goto_0
    const-string p0, "video/mv-hevc"

    .line 5
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5

    const/4 p0, 0x0

    return-object p0

    .line 4
    :cond_5
    :goto_1
    const-string p0, "video/hevc"

    return-object p0
.end method

.method public static zzc(Lcom/google/android/gms/internal/ads/zzti;Lcom/google/android/gms/internal/ads/zzz;ZZ)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zztn;
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zztt;->zzb(Lcom/google/android/gms/internal/ads/zzz;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfww;->zzn()Lcom/google/android/gms/internal/ads/zzfww;

    move-result-object p0

    return-object p0

    .line 3
    :cond_0
    invoke-interface {p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzti;->zza(Ljava/lang/String;ZZ)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static declared-synchronized zzd(Ljava/lang/String;ZZ)Ljava/util/List;
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zztn;
        }
    .end annotation

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    const-string v3, "MediaCodecList API didn\'t list secure decoder for: "

    const-class v4, Lcom/google/android/gms/internal/ads/zztt;

    monitor-enter v4

    .line 1
    :try_start_0
    new-instance v5, Lcom/google/android/gms/internal/ads/zztm;

    invoke-direct {v5, v0, v1, v2}, Lcom/google/android/gms/internal/ads/zztm;-><init>(Ljava/lang/String;ZZ)V

    sget-object v6, Lcom/google/android/gms/internal/ads/zztt;->zzb:Ljava/util/HashMap;

    invoke-virtual {v6, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v7, :cond_0

    monitor-exit v4

    return-object v7

    :cond_0
    :try_start_1
    const-string v7, "video/mv-hevc"

    .line 2
    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    new-instance v8, Lcom/google/android/gms/internal/ads/zztq;

    invoke-direct {v8, v1, v2, v7}, Lcom/google/android/gms/internal/ads/zztq;-><init>(ZZZ)V

    .line 3
    invoke-static {v5, v8}, Lcom/google/android/gms/internal/ads/zztt;->zzg(Lcom/google/android/gms/internal/ads/zztm;Lcom/google/android/gms/internal/ads/zzto;)Ljava/util/ArrayList;

    move-result-object v2

    const/4 v7, 0x0

    if-eqz v1, :cond_1

    .line 4
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    sget v1, Lcom/google/android/gms/internal/ads/zzeu;->zza:I

    const/16 v8, 0x17

    if-gt v1, v8, :cond_1

    new-instance v1, Lcom/google/android/gms/internal/ads/zztp;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ads/zztp;-><init>(Lcom/google/android/gms/internal/ads/zzts;)V

    .line 5
    invoke-static {v5, v1}, Lcom/google/android/gms/internal/ads/zztt;->zzg(Lcom/google/android/gms/internal/ads/zztm;Lcom/google/android/gms/internal/ads/zzto;)Ljava/util/ArrayList;

    move-result-object v2

    .line 6
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 7
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzsz;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzsz;->zza:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ". Assuming: "

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "MediaCodecUtil"

    .line 8
    invoke-static {v3, v1}, Lcom/google/android/gms/internal/ads/zzdx;->zzf(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const-string v1, "audio/raw"

    .line 9
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    .line 10
    sget v0, Lcom/google/android/gms/internal/ads/zzeu;->zza:I

    const/16 v3, 0x1a

    if-ge v0, v3, :cond_2

    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v3, "R9"

    .line 11
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 12
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v1, :cond_2

    .line 13
    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzsz;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzsz;->zza:Ljava/lang/String;

    const-string v3, "OMX.MTK.AUDIO.DECODER.RAW"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v8, "OMX.google.raw.decoder"

    const-string v9, "audio/raw"

    const-string v10, "audio/raw"

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x1

    const/4 v14, 0x0

    .line 14
    invoke-static/range {v8 .. v16}, Lcom/google/android/gms/internal/ads/zzsz;->zzc(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/media/MediaCodecInfo$CodecCapabilities;ZZZZZ)Lcom/google/android/gms/internal/ads/zzsz;

    move-result-object v0

    .line 15
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    new-instance v0, Lcom/google/android/gms/internal/ads/zztk;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zztk;-><init>()V

    .line 16
    invoke-static {v2, v0}, Lcom/google/android/gms/internal/ads/zztt;->zzh(Ljava/util/List;Lcom/google/android/gms/internal/ads/zztr;)V

    .line 17
    :cond_3
    sget v0, Lcom/google/android/gms/internal/ads/zzeu;->zza:I

    const/16 v3, 0x20

    if-ge v0, v3, :cond_4

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v1, :cond_4

    .line 18
    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzsz;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzsz;->zza:Ljava/lang/String;

    const-string v1, "OMX.qti.audio.decoder.flac"

    .line 19
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 20
    invoke-interface {v2, v7}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzsz;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 21
    :cond_4
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzfww;->zzl(Ljava/util/Collection;)Lcom/google/android/gms/internal/ads/zzfww;

    move-result-object v0

    .line 22
    invoke-virtual {v6, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v4

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public static zze(Lcom/google/android/gms/internal/ads/zzti;Lcom/google/android/gms/internal/ads/zzz;ZZ)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zztn;
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/qual/RequiresNonNull;
        value = {
            "#2.sampleMimeType"
        }
    .end annotation

    .line 1
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzz;->zzo:Ljava/lang/String;

    .line 2
    invoke-interface {p0, v0, p2, p3}, Lcom/google/android/gms/internal/ads/zzti;->zza(Ljava/lang/String;ZZ)Ljava/util/List;

    move-result-object v0

    .line 3
    invoke-static {p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zztt;->zzc(Lcom/google/android/gms/internal/ads/zzti;Lcom/google/android/gms/internal/ads/zzz;ZZ)Ljava/util/List;

    move-result-object p0

    .line 4
    sget p1, Lcom/google/android/gms/internal/ads/zzfww;->zzd:I

    new-instance p1, Lcom/google/android/gms/internal/ads/zzfwt;

    .line 5
    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzfwt;-><init>()V

    .line 6
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzfwt;->zzh(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/ads/zzfwt;

    .line 7
    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/ads/zzfwt;->zzh(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/ads/zzfwt;

    .line 8
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfwt;->zzi()Lcom/google/android/gms/internal/ads/zzfww;

    move-result-object p0

    return-object p0
.end method

.method public static zzf(Ljava/util/List;Lcom/google/android/gms/internal/ads/zzz;)Ljava/util/List;
    .locals 1

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance p0, Lcom/google/android/gms/internal/ads/zztl;

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zztl;-><init>(Lcom/google/android/gms/internal/ads/zzz;)V

    .line 2
    invoke-static {v0, p0}, Lcom/google/android/gms/internal/ads/zztt;->zzh(Ljava/util/List;Lcom/google/android/gms/internal/ads/zztr;)V

    return-object v0
.end method

.method private static zzg(Lcom/google/android/gms/internal/ads/zztm;Lcom/google/android/gms/internal/ads/zzto;)Ljava/util/ArrayList;
    .locals 25
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zztn;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    .line 1
    const-string v3, "secure-playback"

    const-string v4, "tunneled-playback"

    :try_start_0
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iget-object v15, v1, Lcom/google/android/gms/internal/ads/zztm;->zza:Ljava/lang/String;

    .line 2
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzto;->zza()I

    move-result v14

    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzto;->zze()Z

    move-result v16

    const/16 v17, 0x0

    move/from16 v13, v17

    :goto_0
    if-ge v13, v14, :cond_1e

    .line 3
    invoke-interface {v2, v13}, Lcom/google/android/gms/internal/ads/zzto;->zzb(I)Landroid/media/MediaCodecInfo;

    move-result-object v0

    .line 4
    sget v7, Lcom/google/android/gms/internal/ads/zzeu;->zza:I

    const/16 v8, 0x1d

    if-lt v7, v8, :cond_2

    .line 5
    invoke-virtual {v0}, Landroid/media/MediaCodecInfo;->isAlias()Z

    move-result v9

    if-eqz v9, :cond_2

    :cond_0
    move-object/from16 v20, v4

    :cond_1
    :goto_1
    move/from16 v18, v13

    move/from16 v21, v14

    move-object v4, v15

    goto/16 :goto_c

    .line 6
    :cond_2
    invoke-virtual {v0}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    move-result-object v12

    .line 7
    invoke-virtual {v0}, Landroid/media/MediaCodecInfo;->isEncoder()Z

    move-result v9
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5

    if-nez v9, :cond_0

    const-string v9, ".secure"

    if-nez v16, :cond_3

    :try_start_1
    invoke-virtual {v12, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_0

    :cond_3
    const/16 v10, 0x18

    if-ge v7, v10, :cond_5

    const-string v7, "OMX.SEC.aac.dec"

    .line 8
    invoke-virtual {v7, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    const-string v7, "OMX.Exynos.AAC.Decoder"

    invoke-virtual {v7, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    :cond_4
    const-string v7, "samsung"

    sget-object v10, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    .line 9
    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    sget-object v7, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v10, "zeroflte"

    .line 10
    invoke-virtual {v7, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_0

    sget-object v7, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v10, "zerolte"

    .line 11
    invoke-virtual {v7, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_0

    sget-object v7, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v10, "zenlte"

    .line 12
    invoke-virtual {v7, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_0

    const-string v7, "SC-05G"

    sget-object v10, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    .line 13
    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    const-string v7, "marinelteatt"

    sget-object v10, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    .line 14
    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    const-string v7, "404SC"

    sget-object v10, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    .line 15
    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    const-string v7, "SC-04G"

    sget-object v10, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    .line 16
    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    const-string v7, "SCV31"

    sget-object v10, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    .line 17
    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    :cond_5
    sget v7, Lcom/google/android/gms/internal/ads/zzeu;->zza:I

    const/16 v11, 0x17

    if-gt v7, v11, :cond_6

    const-string v10, "audio/eac3-joc"

    .line 18
    invoke-virtual {v10, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    const-string v10, "OMX.MTK.AUDIO.DECODER.DSPAC3"

    .line 19
    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 20
    :cond_6
    invoke-virtual {v0}, Landroid/media/MediaCodecInfo;->getSupportedTypes()[Ljava/lang/String;

    move-result-object v10

    .line 21
    array-length v11, v10

    move/from16 v5, v17

    :goto_2
    if-ge v5, v11, :cond_8

    aget-object v8, v10, v5

    .line 22
    invoke-virtual {v8, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_7

    :goto_3
    move-object v5, v8

    goto/16 :goto_5

    :cond_7
    add-int/lit8 v5, v5, 0x1

    const/16 v8, 0x1d

    goto :goto_2

    .line 38
    :cond_8
    const-string v5, "video/dolby-vision"

    .line 23
    invoke-virtual {v15, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    const-string v5, "OMX.MS.HEVCDV.Decoder"

    .line 24
    invoke-virtual {v5, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    const-string v8, "video/hevcdv"

    goto :goto_3

    :cond_9
    const-string v5, "OMX.RTK.video.decoder"

    .line 25
    invoke-virtual {v5, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_a

    const-string v5, "OMX.realtek.video.decoder.tunneled"

    .line 26
    invoke-virtual {v5, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c

    :cond_a
    const-string v8, "video/dv_hevc"

    goto :goto_3

    :cond_b
    const-string v5, "video/mv-hevc"

    .line 27
    invoke-virtual {v15, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_e

    const-string v5, "c2.qti.mvhevc.decoder"

    .line 28
    invoke-virtual {v5, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_d

    const-string v5, "c2.qti.mvhevc.decoder.secure"

    invoke-virtual {v5, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c

    goto :goto_4

    :cond_c
    const/4 v5, 0x0

    goto :goto_5

    :cond_d
    :goto_4
    const-string v8, "video/x-mvhevc"

    goto :goto_3

    :cond_e
    const-string v5, "audio/alac"

    .line 29
    invoke-virtual {v15, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_f

    const-string v5, "OMX.lge.alac.decoder"

    invoke-virtual {v5, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_f

    const-string v8, "audio/x-lg-alac"

    goto :goto_3

    :cond_f
    const-string v5, "audio/flac"

    .line 30
    invoke-virtual {v15, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_10

    const-string v5, "OMX.lge.flac.decoder"

    invoke-virtual {v5, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_10

    const-string v8, "audio/x-lg-flac"

    goto :goto_3

    :cond_10
    const-string v5, "audio/ac3"

    .line 31
    invoke-virtual {v15, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c

    const-string v5, "OMX.lge.ac3.decoder"

    invoke-virtual {v5, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c

    const-string v8, "audio/lg-ac3"
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5

    goto/16 :goto_3

    :goto_5
    if-eqz v5, :cond_0

    .line 32
    :try_start_2
    invoke-virtual {v0, v5}, Landroid/media/MediaCodecInfo;->getCapabilitiesForType(Ljava/lang/String;)Landroid/media/MediaCodecInfo$CodecCapabilities;

    move-result-object v10

    .line 33
    invoke-interface {v2, v4, v5, v10}, Lcom/google/android/gms/internal/ads/zzto;->zzd(Ljava/lang/String;Ljava/lang/String;Landroid/media/MediaCodecInfo$CodecCapabilities;)Z

    move-result v8

    .line 34
    invoke-interface {v2, v4, v5, v10}, Lcom/google/android/gms/internal/ads/zzto;->zzc(Ljava/lang/String;Ljava/lang/String;Landroid/media/MediaCodecInfo$CodecCapabilities;)Z

    move-result v11
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4

    move-object/from16 v20, v4

    :try_start_3
    iget-boolean v4, v1, Lcom/google/android/gms/internal/ads/zztm;->zzc:Z

    if-nez v4, :cond_11

    if-nez v11, :cond_1

    goto :goto_6

    :cond_11
    if-nez v8, :cond_12

    goto/16 :goto_1

    .line 35
    :cond_12
    :goto_6
    invoke-interface {v2, v3, v5, v10}, Lcom/google/android/gms/internal/ads/zzto;->zzd(Ljava/lang/String;Ljava/lang/String;Landroid/media/MediaCodecInfo$CodecCapabilities;)Z

    move-result v4

    .line 36
    invoke-interface {v2, v3, v5, v10}, Lcom/google/android/gms/internal/ads/zzto;->zzc(Ljava/lang/String;Ljava/lang/String;Landroid/media/MediaCodecInfo$CodecCapabilities;)Z

    move-result v8

    iget-boolean v11, v1, Lcom/google/android/gms/internal/ads/zztm;->zzb:Z

    if-nez v11, :cond_13

    if-nez v8, :cond_1

    :cond_13
    if-eqz v11, :cond_14

    if-eqz v4, :cond_1

    const/4 v4, 0x1

    :cond_14
    const/16 v8, 0x1d

    if-lt v7, v8, :cond_15

    .line 37
    invoke-virtual {v0}, Landroid/media/MediaCodecInfo;->isHardwareAccelerated()Z

    move-result v8

    move/from16 v22, v8

    goto :goto_7

    .line 38
    :cond_15
    invoke-static {v0, v15}, Lcom/google/android/gms/internal/ads/zztt;->zzi(Landroid/media/MediaCodecInfo;Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_16

    const/16 v22, 0x1

    goto :goto_7

    :cond_16
    move/from16 v22, v17

    .line 39
    :goto_7
    invoke-static {v0, v15}, Lcom/google/android/gms/internal/ads/zztt;->zzi(Landroid/media/MediaCodecInfo;Ljava/lang/String;)Z

    move-result v23

    const/16 v8, 0x1d

    if-lt v7, v8, :cond_17

    .line 40
    invoke-virtual {v0}, Landroid/media/MediaCodecInfo;->isVendor()Z

    move-result v0

    goto :goto_8

    .line 41
    :cond_17
    invoke-virtual {v0}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzftc;->zza(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v7, "omx.google."

    .line 42
    invoke-virtual {v0, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_18

    const-string v7, "c2.android."

    .line 43
    invoke-virtual {v0, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_18

    const-string v7, "c2.google."

    .line 44
    invoke-virtual {v0, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    if-nez v0, :cond_18

    const/4 v0, 0x1

    goto :goto_8

    :cond_18
    move/from16 v0, v17

    :goto_8
    if-eqz v16, :cond_19

    if-eq v11, v4, :cond_1a

    const/4 v8, 0x1

    goto :goto_9

    :cond_19
    move v8, v4

    :goto_9
    if-nez v16, :cond_1b

    if-nez v11, :cond_1b

    :cond_1a
    const/4 v4, 0x0

    const/16 v19, 0x0

    move-object v7, v12

    move-object v8, v15

    move-object v9, v5

    move/from16 v11, v22

    move-object/from16 v24, v12

    move/from16 v12, v23

    move/from16 v18, v13

    move v13, v0

    move/from16 v21, v14

    move v14, v4

    move-object v4, v15

    move/from16 v15, v19

    .line 47
    :try_start_4
    invoke-static/range {v7 .. v15}, Lcom/google/android/gms/internal/ads/zzsz;->zzc(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/media/MediaCodecInfo$CodecCapabilities;ZZZZZ)Lcom/google/android/gms/internal/ads/zzsz;

    move-result-object v0

    .line 48
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_c

    :catch_0
    move-exception v0

    move-object/from16 v1, v24

    goto :goto_b

    :cond_1b
    move-object/from16 v24, v12

    move/from16 v18, v13

    move/from16 v21, v14

    move-object v4, v15

    if-nez v16, :cond_1d

    if-eqz v8, :cond_1d

    new-instance v7, Ljava/lang/StringBuilder;

    .line 45
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    move-object/from16 v15, v24

    :try_start_5
    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    const/4 v14, 0x0

    const/16 v19, 0x1

    move-object v8, v4

    move-object v9, v5

    move/from16 v11, v22

    move/from16 v12, v23

    move v13, v0

    move-object v1, v15

    move/from16 v15, v19

    .line 46
    :try_start_6
    invoke-static/range {v7 .. v15}, Lcom/google/android/gms/internal/ads/zzsz;->zzc(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/media/MediaCodecInfo$CodecCapabilities;ZZZZZ)Lcom/google/android/gms/internal/ads/zzsz;

    move-result-object v0

    .line 45
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    goto/16 :goto_d

    :catch_1
    move-exception v0

    goto :goto_b

    :catch_2
    move-exception v0

    move-object v1, v15

    goto :goto_b

    :catch_3
    move-exception v0

    goto :goto_a

    :catch_4
    move-exception v0

    move-object/from16 v20, v4

    :goto_a
    move-object v1, v12

    move/from16 v18, v13

    move/from16 v21, v14

    move-object v4, v15

    .line 53
    :goto_b
    :try_start_7
    sget v7, Lcom/google/android/gms/internal/ads/zzeu;->zza:I
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_5

    const-string v8, "MediaCodecUtil"

    const/16 v9, 0x17

    if-gt v7, v9, :cond_1c

    .line 49
    :try_start_8
    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_1c

    new-instance v0, Ljava/lang/StringBuilder;

    .line 50
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Skipping codec "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " (failed to query capabilities)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Lcom/google/android/gms/internal/ads/zzdx;->zzc(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_c

    :cond_1c
    new-instance v2, Ljava/lang/StringBuilder;

    .line 51
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to query codec "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ("

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v8, v1}, Lcom/google/android/gms/internal/ads/zzdx;->zzc(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    throw v0
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_5

    :cond_1d
    :goto_c
    add-int/lit8 v13, v18, 0x1

    move-object/from16 v1, p0

    move-object v15, v4

    move-object/from16 v4, v20

    move/from16 v14, v21

    goto/16 :goto_0

    :cond_1e
    :goto_d
    return-object v6

    :catch_5
    move-exception v0

    .line 31
    new-instance v1, Lcom/google/android/gms/internal/ads/zztn;

    const/4 v2, 0x0

    .line 53
    invoke-direct {v1, v0, v2}, Lcom/google/android/gms/internal/ads/zztn;-><init>(Ljava/lang/Throwable;Lcom/google/android/gms/internal/ads/zzts;)V

    throw v1
.end method

.method private static zzh(Ljava/util/List;Lcom/google/android/gms/internal/ads/zztr;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zztj;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/zztj;-><init>(Lcom/google/android/gms/internal/ads/zztr;)V

    invoke-static {p0, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-void
.end method

.method private static zzi(Landroid/media/MediaCodecInfo;Ljava/lang/String;)Z
    .locals 2

    .line 1
    sget v0, Lcom/google/android/gms/internal/ads/zzeu;->zza:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/media/MediaCodecInfo;->isSoftwareOnly()Z

    move-result p0

    return p0

    .line 3
    :cond_0
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzay;->zzh(Ljava/lang/String;)Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    return v0

    .line 4
    :cond_1
    invoke-virtual {p0}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzftc;->zza(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "arc."

    .line 5
    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    const/4 v1, 0x0

    if-eqz p1, :cond_2

    return v1

    :cond_2
    const-string p1, "omx.google."

    .line 6
    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_6

    const-string p1, "omx.ffmpeg."

    .line 7
    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_6

    const-string p1, "omx.sec."

    .line 8
    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    const-string p1, ".sw."

    invoke-virtual {p0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_6

    :cond_3
    const-string p1, "omx.qcom.video.decoder.hevcswvdec"

    .line 9
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    const-string p1, "c2.android."

    .line 10
    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_6

    const-string p1, "c2.google."

    .line 11
    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_6

    const-string p1, "omx."

    .line 12
    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_5

    const-string p1, "c2."

    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_4

    goto :goto_0

    :cond_4
    return v1

    :cond_5
    move v0, v1

    :cond_6
    :goto_0
    return v0
.end method
