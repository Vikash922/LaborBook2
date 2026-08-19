.class final Lcom/google/android/gms/internal/ads/zzxx;
.super Lcom/google/android/gms/internal/ads/zzyi;
.source "com.google.android.gms:play-services-ads@@24.2.0"

# interfaces
.implements Ljava/lang/Comparable;


# instance fields
.field private final zze:I

.field private final zzf:Z

.field private final zzg:Ljava/lang/String;

.field private final zzh:Lcom/google/android/gms/internal/ads/zzyb;

.field private final zzi:Z

.field private final zzj:I

.field private final zzk:I

.field private final zzl:I

.field private final zzm:Z

.field private final zzn:I

.field private final zzo:I

.field private final zzp:Z

.field private final zzq:I

.field private final zzr:I

.field private final zzs:I

.field private final zzt:I

.field private final zzu:Z

.field private final zzv:Z

.field private final zzw:Z


# direct methods
.method public constructor <init>(ILcom/google/android/gms/internal/ads/zzbm;ILcom/google/android/gms/internal/ads/zzyb;IZLcom/google/android/gms/internal/ads/zzftx;I)V
    .locals 7

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzyi;-><init>(ILcom/google/android/gms/internal/ads/zzbm;I)V

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzxx;->zzh:Lcom/google/android/gms/internal/ads/zzyb;

    .line 2
    iget-boolean p1, p4, Lcom/google/android/gms/internal/ads/zzyb;->zzP:Z

    const/16 p2, 0x18

    const/4 p3, 0x1

    if-eq p3, p1, :cond_0

    const/16 p1, 0x10

    goto :goto_0

    :cond_0
    move p1, p2

    .line 3
    :goto_0
    iget-boolean p8, p4, Lcom/google/android/gms/internal/ads/zzyb;->zzL:Z

    iget-object p8, p0, Lcom/google/android/gms/internal/ads/zzxx;->zzd:Lcom/google/android/gms/internal/ads/zzz;

    .line 4
    iget-object p8, p8, Lcom/google/android/gms/internal/ads/zzz;->zzd:Ljava/lang/String;

    invoke-static {p8}, Lcom/google/android/gms/internal/ads/zzyn;->zzh(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p8

    iput-object p8, p0, Lcom/google/android/gms/internal/ads/zzxx;->zzg:Ljava/lang/String;

    const/4 p8, 0x0

    invoke-static {p5, p8}, Lcom/google/android/gms/internal/ads/zzlv;->zza(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzxx;->zzi:Z

    move v0, p8

    .line 5
    :goto_1
    iget-object v1, p4, Lcom/google/android/gms/internal/ads/zzyb;->zzp:Lcom/google/android/gms/internal/ads/zzfww;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzfww;->size()I

    move-result v1

    const v2, 0x7fffffff

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzxx;->zzd:Lcom/google/android/gms/internal/ads/zzz;

    .line 6
    iget-object v3, p4, Lcom/google/android/gms/internal/ads/zzyb;->zzp:Lcom/google/android/gms/internal/ads/zzfww;

    .line 7
    invoke-virtual {v3, v0}, Lcom/google/android/gms/internal/ads/zzfww;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 8
    invoke-static {v1, v3, p8}, Lcom/google/android/gms/internal/ads/zzyn;->zzc(Lcom/google/android/gms/internal/ads/zzz;Ljava/lang/String;Z)I

    move-result v1

    if-lez v1, :cond_1

    goto :goto_2

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    move v1, p8

    move v0, v2

    :goto_2
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzxx;->zzk:I

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzxx;->zzj:I

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzxx;->zzd:Lcom/google/android/gms/internal/ads/zzz;

    .line 9
    iget v0, v0, Lcom/google/android/gms/internal/ads/zzz;->zzf:I

    iget v1, p4, Lcom/google/android/gms/internal/ads/zzyb;->zzq:I

    .line 10
    invoke-static {v0, p8}, Lcom/google/android/gms/internal/ads/zzyn;->zzb(II)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzxx;->zzl:I

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzxx;->zzd:Lcom/google/android/gms/internal/ads/zzz;

    .line 11
    iget v1, v0, Lcom/google/android/gms/internal/ads/zzz;->zzf:I

    if-eqz v1, :cond_4

    and-int/2addr v1, p3

    if-eqz v1, :cond_3

    goto :goto_3

    :cond_3
    move v1, p8

    goto :goto_4

    :cond_4
    :goto_3
    move v1, p3

    :goto_4
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzxx;->zzm:Z

    .line 12
    iget v1, v0, Lcom/google/android/gms/internal/ads/zzz;->zze:I

    and-int/2addr v1, p3

    if-eq p3, v1, :cond_5

    move v1, p8

    goto :goto_5

    :cond_5
    move v1, p3

    :goto_5
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzxx;->zzp:Z

    .line 13
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzz;->zzo:Ljava/lang/String;

    const/4 v3, 0x2

    const/4 v4, -0x1

    if-nez v1, :cond_6

    :goto_6
    move v1, p8

    goto :goto_9

    .line 24
    :cond_6
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v5

    const v6, -0x7e929daa

    if-eq v5, v6, :cond_9

    const v6, 0xb269699

    if-eq v5, v6, :cond_8

    const v6, 0x59afdf4a

    if-eq v5, v6, :cond_7

    goto :goto_7

    :cond_7
    const-string v5, "audio/iamf"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    move v1, v3

    goto :goto_8

    :cond_8
    const-string v5, "audio/ac4"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    move v1, p3

    goto :goto_8

    :cond_9
    const-string v5, "audio/eac3-joc"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    move v1, p8

    goto :goto_8

    :cond_a
    :goto_7
    move v1, v4

    :goto_8
    if-eqz v1, :cond_b

    if-eq v1, p3, :cond_b

    if-eq v1, v3, :cond_b

    goto :goto_6

    :cond_b
    move v1, p3

    .line 13
    :goto_9
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzxx;->zzw:Z

    .line 14
    iget v1, v0, Lcom/google/android/gms/internal/ads/zzz;->zzE:I

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzxx;->zzq:I

    .line 15
    iget v1, v0, Lcom/google/android/gms/internal/ads/zzz;->zzF:I

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzxx;->zzr:I

    .line 16
    iget v1, v0, Lcom/google/android/gms/internal/ads/zzz;->zzj:I

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzxx;->zzs:I

    .line 17
    iget v1, v0, Lcom/google/android/gms/internal/ads/zzz;->zzj:I

    if-eq v1, v4, :cond_d

    iget v5, p4, Lcom/google/android/gms/internal/ads/zzyb;->zzs:I

    if-gt v1, v5, :cond_c

    goto :goto_a

    :cond_c
    move p7, p8

    goto :goto_b

    :cond_d
    :goto_a
    iget v1, v0, Lcom/google/android/gms/internal/ads/zzz;->zzE:I

    if-eq v1, v4, :cond_e

    iget v5, p4, Lcom/google/android/gms/internal/ads/zzyb;->zzr:I

    if-gt v1, v5, :cond_c

    .line 18
    :cond_e
    invoke-interface {p7, v0}, Lcom/google/android/gms/internal/ads/zzftx;->zza(Ljava/lang/Object;)Z

    move-result p7

    if-eqz p7, :cond_c

    move p7, p3

    :goto_b
    iput-boolean p7, p0, Lcom/google/android/gms/internal/ads/zzxx;->zzf:Z

    .line 19
    sget p7, Lcom/google/android/gms/internal/ads/zzeu;->zza:I

    .line 20
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object p7

    invoke-virtual {p7}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p7

    sget v0, Lcom/google/android/gms/internal/ads/zzeu;->zza:I

    if-lt v0, p2, :cond_f

    .line 21
    invoke-virtual {p7}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object p2

    invoke-virtual {p2}, Landroid/os/LocaleList;->toLanguageTags()Ljava/lang/String;

    move-result-object p2

    const-string p7, ","

    .line 22
    invoke-virtual {p2, p7, v4}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object p2

    goto :goto_c

    .line 36
    :cond_f
    new-array p2, p3, [Ljava/lang/String;

    .line 23
    iget-object p7, p7, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 24
    invoke-virtual {p7}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object p7

    aput-object p7, p2, p8

    :goto_c
    move p7, p8

    .line 25
    :goto_d
    array-length v0, p2

    if-ge p7, v0, :cond_10

    .line 26
    aget-object v0, p2, p7

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzeu;->zzE(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, p2, p7

    add-int/lit8 p7, p7, 0x1

    goto :goto_d

    :cond_10
    move p7, p8

    .line 27
    :goto_e
    array-length v0, p2

    if-ge p7, v0, :cond_12

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzxx;->zzd:Lcom/google/android/gms/internal/ads/zzz;

    .line 28
    aget-object v1, p2, p7

    .line 29
    invoke-static {v0, v1, p8}, Lcom/google/android/gms/internal/ads/zzyn;->zzc(Lcom/google/android/gms/internal/ads/zzz;Ljava/lang/String;Z)I

    move-result v0

    if-lez v0, :cond_11

    goto :goto_f

    :cond_11
    add-int/lit8 p7, p7, 0x1

    goto :goto_e

    :cond_12
    move v0, p8

    move p7, v2

    :goto_f
    iput p7, p0, Lcom/google/android/gms/internal/ads/zzxx;->zzn:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzxx;->zzo:I

    move p2, p8

    .line 30
    :goto_10
    iget-object p7, p4, Lcom/google/android/gms/internal/ads/zzyb;->zzt:Lcom/google/android/gms/internal/ads/zzfww;

    invoke-virtual {p7}, Lcom/google/android/gms/internal/ads/zzfww;->size()I

    move-result p7

    if-ge p2, p7, :cond_14

    iget-object p7, p0, Lcom/google/android/gms/internal/ads/zzxx;->zzd:Lcom/google/android/gms/internal/ads/zzz;

    .line 31
    iget-object p7, p7, Lcom/google/android/gms/internal/ads/zzz;->zzo:Ljava/lang/String;

    if-eqz p7, :cond_13

    iget-object v0, p4, Lcom/google/android/gms/internal/ads/zzyb;->zzt:Lcom/google/android/gms/internal/ads/zzfww;

    .line 32
    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/ads/zzfww;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p7

    if-eqz p7, :cond_13

    move v2, p2

    goto :goto_11

    :cond_13
    add-int/lit8 p2, p2, 0x1

    goto :goto_10

    :cond_14
    :goto_11
    iput v2, p0, Lcom/google/android/gms/internal/ads/zzxx;->zzt:I

    and-int/lit16 p2, p5, 0x180

    const/16 p4, 0x80

    if-ne p2, p4, :cond_15

    move p2, p3

    goto :goto_12

    :cond_15
    move p2, p8

    :goto_12
    iput-boolean p2, p0, Lcom/google/android/gms/internal/ads/zzxx;->zzu:Z

    and-int/lit8 p2, p5, 0x40

    const/16 p4, 0x40

    if-ne p2, p4, :cond_16

    move p2, p3

    goto :goto_13

    :cond_16
    move p2, p8

    :goto_13
    iput-boolean p2, p0, Lcom/google/android/gms/internal/ads/zzxx;->zzv:Z

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzxx;->zzh:Lcom/google/android/gms/internal/ads/zzyb;

    .line 33
    iget-boolean p4, p2, Lcom/google/android/gms/internal/ads/zzyb;->zzR:Z

    invoke-static {p5, p4}, Lcom/google/android/gms/internal/ads/zzlv;->zza(IZ)Z

    move-result p4

    if-nez p4, :cond_17

    :goto_14
    move p3, p8

    goto :goto_15

    :cond_17
    iget-boolean p4, p0, Lcom/google/android/gms/internal/ads/zzxx;->zzf:Z

    if-nez p4, :cond_18

    .line 34
    iget-boolean p7, p2, Lcom/google/android/gms/internal/ads/zzyb;->zzK:Z

    if-nez p7, :cond_18

    goto :goto_14

    .line 35
    :cond_18
    iget-object p7, p2, Lcom/google/android/gms/internal/ads/zzyb;->zzu:Lcom/google/android/gms/internal/ads/zzbp;

    iget p7, p7, Lcom/google/android/gms/internal/ads/zzbp;->zzb:I

    invoke-static {p5, p8}, Lcom/google/android/gms/internal/ads/zzlv;->zza(IZ)Z

    move-result p7

    if-eqz p7, :cond_1a

    if-eqz p4, :cond_1a

    iget-object p4, p0, Lcom/google/android/gms/internal/ads/zzxx;->zzd:Lcom/google/android/gms/internal/ads/zzz;

    .line 36
    iget p4, p4, Lcom/google/android/gms/internal/ads/zzz;->zzj:I

    if-eq p4, v4, :cond_1a

    iget-boolean p4, p2, Lcom/google/android/gms/internal/ads/zzyb;->zzC:Z

    iget-boolean p4, p2, Lcom/google/android/gms/internal/ads/zzyb;->zzB:Z

    iget-boolean p2, p2, Lcom/google/android/gms/internal/ads/zzyb;->zzT:Z

    if-nez p2, :cond_19

    if-nez p6, :cond_1a

    :cond_19
    and-int/2addr p1, p5

    if-eqz p1, :cond_1a

    move p3, v3

    .line 33
    :cond_1a
    :goto_15
    iput p3, p0, Lcom/google/android/gms/internal/ads/zzxx;->zze:I

    return-void
.end method


# virtual methods
.method public final bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/ads/zzxx;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzxx;->zza(Lcom/google/android/gms/internal/ads/zzxx;)I

    move-result p1

    return p1
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzxx;)I
    .locals 6

    .line 2
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzxx;->zzf:Z

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzxx;->zzi:Z

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzyn;->zzg()Lcom/google/android/gms/internal/ads/zzfyh;

    move-result-object v1

    goto :goto_0

    .line 1
    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzyn;->zzg()Lcom/google/android/gms/internal/ads/zzfyh;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzfyh;->zza()Lcom/google/android/gms/internal/ads/zzfyh;

    move-result-object v1

    .line 2
    :goto_0
    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzxx;->zzi:Z

    .line 3
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfwl;->zzj()Lcom/google/android/gms/internal/ads/zzfwl;

    move-result-object v3

    iget-boolean v4, p1, Lcom/google/android/gms/internal/ads/zzxx;->zzi:Z

    .line 4
    invoke-virtual {v3, v2, v4}, Lcom/google/android/gms/internal/ads/zzfwl;->zzd(ZZ)Lcom/google/android/gms/internal/ads/zzfwl;

    move-result-object v2

    iget v3, p0, Lcom/google/android/gms/internal/ads/zzxx;->zzk:I

    .line 5
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v4, p1, Lcom/google/android/gms/internal/ads/zzxx;->zzk:I

    .line 6
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfyh;->zzc()Lcom/google/android/gms/internal/ads/zzfyh;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzfyh;->zza()Lcom/google/android/gms/internal/ads/zzfyh;

    move-result-object v5

    .line 7
    invoke-virtual {v2, v3, v4, v5}, Lcom/google/android/gms/internal/ads/zzfwl;->zzc(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lcom/google/android/gms/internal/ads/zzfwl;

    move-result-object v2

    iget v3, p0, Lcom/google/android/gms/internal/ads/zzxx;->zzj:I

    iget v4, p1, Lcom/google/android/gms/internal/ads/zzxx;->zzj:I

    .line 8
    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzfwl;->zzb(II)Lcom/google/android/gms/internal/ads/zzfwl;

    move-result-object v2

    iget v3, p0, Lcom/google/android/gms/internal/ads/zzxx;->zzl:I

    iget v4, p1, Lcom/google/android/gms/internal/ads/zzxx;->zzl:I

    .line 9
    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzfwl;->zzb(II)Lcom/google/android/gms/internal/ads/zzfwl;

    move-result-object v2

    iget-boolean v3, p0, Lcom/google/android/gms/internal/ads/zzxx;->zzp:Z

    iget-boolean v4, p1, Lcom/google/android/gms/internal/ads/zzxx;->zzp:Z

    .line 10
    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzfwl;->zzd(ZZ)Lcom/google/android/gms/internal/ads/zzfwl;

    move-result-object v2

    iget-boolean v3, p0, Lcom/google/android/gms/internal/ads/zzxx;->zzm:Z

    iget-boolean v4, p1, Lcom/google/android/gms/internal/ads/zzxx;->zzm:Z

    .line 11
    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzfwl;->zzd(ZZ)Lcom/google/android/gms/internal/ads/zzfwl;

    move-result-object v2

    iget v3, p0, Lcom/google/android/gms/internal/ads/zzxx;->zzn:I

    .line 12
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v4, p1, Lcom/google/android/gms/internal/ads/zzxx;->zzn:I

    .line 13
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfyh;->zzc()Lcom/google/android/gms/internal/ads/zzfyh;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzfyh;->zza()Lcom/google/android/gms/internal/ads/zzfyh;

    move-result-object v5

    .line 14
    invoke-virtual {v2, v3, v4, v5}, Lcom/google/android/gms/internal/ads/zzfwl;->zzc(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lcom/google/android/gms/internal/ads/zzfwl;

    move-result-object v2

    iget v3, p0, Lcom/google/android/gms/internal/ads/zzxx;->zzo:I

    iget v4, p1, Lcom/google/android/gms/internal/ads/zzxx;->zzo:I

    .line 15
    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzfwl;->zzb(II)Lcom/google/android/gms/internal/ads/zzfwl;

    move-result-object v2

    iget-boolean v3, p1, Lcom/google/android/gms/internal/ads/zzxx;->zzf:Z

    .line 16
    invoke-virtual {v2, v0, v3}, Lcom/google/android/gms/internal/ads/zzfwl;->zzd(ZZ)Lcom/google/android/gms/internal/ads/zzfwl;

    move-result-object v0

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzxx;->zzt:I

    .line 17
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lcom/google/android/gms/internal/ads/zzxx;->zzt:I

    .line 18
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfyh;->zzc()Lcom/google/android/gms/internal/ads/zzfyh;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzfyh;->zza()Lcom/google/android/gms/internal/ads/zzfyh;

    move-result-object v4

    .line 19
    invoke-virtual {v0, v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzfwl;->zzc(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lcom/google/android/gms/internal/ads/zzfwl;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzxx;->zzh:Lcom/google/android/gms/internal/ads/zzyb;

    .line 20
    iget-boolean v2, v2, Lcom/google/android/gms/internal/ads/zzyb;->zzB:Z

    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzxx;->zzu:Z

    .line 21
    iget-boolean v3, p1, Lcom/google/android/gms/internal/ads/zzxx;->zzu:Z

    .line 22
    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/ads/zzfwl;->zzd(ZZ)Lcom/google/android/gms/internal/ads/zzfwl;

    move-result-object v0

    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzxx;->zzv:Z

    iget-boolean v3, p1, Lcom/google/android/gms/internal/ads/zzxx;->zzv:Z

    .line 23
    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/ads/zzfwl;->zzd(ZZ)Lcom/google/android/gms/internal/ads/zzfwl;

    move-result-object v0

    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzxx;->zzw:Z

    iget-boolean v3, p1, Lcom/google/android/gms/internal/ads/zzxx;->zzw:Z

    .line 24
    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/ads/zzfwl;->zzd(ZZ)Lcom/google/android/gms/internal/ads/zzfwl;

    move-result-object v0

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzxx;->zzq:I

    .line 25
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lcom/google/android/gms/internal/ads/zzxx;->zzq:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3, v1}, Lcom/google/android/gms/internal/ads/zzfwl;->zzc(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lcom/google/android/gms/internal/ads/zzfwl;

    move-result-object v0

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzxx;->zzr:I

    .line 26
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lcom/google/android/gms/internal/ads/zzxx;->zzr:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3, v1}, Lcom/google/android/gms/internal/ads/zzfwl;->zzc(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lcom/google/android/gms/internal/ads/zzfwl;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzxx;->zzg:Ljava/lang/String;

    .line 27
    iget-object v3, p1, Lcom/google/android/gms/internal/ads/zzxx;->zzg:Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzxx;->zzs:I

    .line 28
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget p1, p1, Lcom/google/android/gms/internal/ads/zzxx;->zzs:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, v2, p1, v1}, Lcom/google/android/gms/internal/ads/zzfwl;->zzc(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lcom/google/android/gms/internal/ads/zzfwl;

    move-result-object v0

    :cond_1
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfwl;->zza()I

    move-result p1

    return p1
.end method

.method public final zzb()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzxx;->zze:I

    return v0
.end method

.method public final bridge synthetic zzc(Lcom/google/android/gms/internal/ads/zzyi;)Z
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzxx;->zzh:Lcom/google/android/gms/internal/ads/zzyb;

    check-cast p1, Lcom/google/android/gms/internal/ads/zzxx;

    .line 2
    iget-boolean v1, v0, Lcom/google/android/gms/internal/ads/zzyb;->zzN:Z

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzxx;->zzd:Lcom/google/android/gms/internal/ads/zzz;

    iget v2, v1, Lcom/google/android/gms/internal/ads/zzz;->zzE:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    iget-object v4, p1, Lcom/google/android/gms/internal/ads/zzxx;->zzd:Lcom/google/android/gms/internal/ads/zzz;

    iget v5, v4, Lcom/google/android/gms/internal/ads/zzz;->zzE:I

    if-ne v2, v5, :cond_0

    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzz;->zzo:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v5, v4, Lcom/google/android/gms/internal/ads/zzz;->zzo:Ljava/lang/String;

    .line 3
    invoke-static {v2, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-boolean v2, v0, Lcom/google/android/gms/internal/ads/zzyb;->zzM:Z

    iget v1, v1, Lcom/google/android/gms/internal/ads/zzz;->zzF:I

    if-eq v1, v3, :cond_0

    iget v2, v4, Lcom/google/android/gms/internal/ads/zzz;->zzF:I

    if-ne v1, v2, :cond_0

    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/zzyb;->zzO:Z

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzxx;->zzu:Z

    iget-boolean v1, p1, Lcom/google/android/gms/internal/ads/zzxx;->zzu:Z

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzxx;->zzv:Z

    iget-boolean p1, p1, Lcom/google/android/gms/internal/ads/zzxx;->zzv:Z

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
