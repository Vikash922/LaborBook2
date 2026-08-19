.class public final Lcom/google/android/gms/internal/ads/zzyn;
.super Lcom/google/android/gms/internal/ads/zzys;
.source "com.google.android.gms:play-services-ads@@24.2.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzlw;


# static fields
.field public static final synthetic zzb:I

.field private static final zzc:Lcom/google/android/gms/internal/ads/zzfyh;


# instance fields
.field public final zza:Landroid/content/Context;

.field private final zzd:Ljava/lang/Object;

.field private zze:Lcom/google/android/gms/internal/ads/zzyb;

.field private zzf:Lcom/google/android/gms/internal/ads/zzyf;

.field private zzg:Lcom/google/android/gms/internal/ads/zze;

.field private final zzh:Lcom/google/android/gms/internal/ads/zzxj;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzxn;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzxn;-><init>()V

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzfyh;->zzb(Ljava/util/Comparator;)Lcom/google/android/gms/internal/ads/zzfyh;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzyn;->zzc:Lcom/google/android/gms/internal/ads/zzfyh;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzxj;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzxj;-><init>()V

    sget-object v1, Lcom/google/android/gms/internal/ads/zzyb;->zzF:Lcom/google/android/gms/internal/ads/zzyb;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzys;-><init>()V

    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/google/android/gms/internal/ads/zzyn;->zzd:Ljava/lang/Object;

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    goto :goto_0

    :cond_0
    move-object v3, v2

    :goto_0
    iput-object v3, p0, Lcom/google/android/gms/internal/ads/zzyn;->zza:Landroid/content/Context;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzyn;->zzh:Lcom/google/android/gms/internal/ads/zzxj;

    instance-of v0, v1, Lcom/google/android/gms/internal/ads/zzyb;

    if-eqz v0, :cond_1

    .line 3
    move-object v0, v1

    check-cast v0, Lcom/google/android/gms/internal/ads/zzyb;

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzyn;->zze:Lcom/google/android/gms/internal/ads/zzyb;

    goto :goto_1

    .line 9
    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzya;

    .line 4
    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzya;-><init>(Lcom/google/android/gms/internal/ads/zzyb;Lcom/google/android/gms/internal/ads/zzym;)V

    .line 5
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzya;->zzw(Lcom/google/android/gms/internal/ads/zzbr;)Lcom/google/android/gms/internal/ads/zzya;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzyb;

    .line 6
    invoke-direct {v1, v0, v2}, Lcom/google/android/gms/internal/ads/zzyb;-><init>(Lcom/google/android/gms/internal/ads/zzya;Lcom/google/android/gms/internal/ads/zzym;)V

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzyn;->zze:Lcom/google/android/gms/internal/ads/zzyb;

    .line 7
    :goto_1
    sget-object v0, Lcom/google/android/gms/internal/ads/zze;->zza:Lcom/google/android/gms/internal/ads/zze;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzyn;->zzg:Lcom/google/android/gms/internal/ads/zze;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzyn;->zze:Lcom/google/android/gms/internal/ads/zzyb;

    .line 8
    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/zzyb;->zzQ:Z

    if-eqz v0, :cond_2

    if-nez p1, :cond_2

    const-string p1, "DefaultTrackSelector"

    const-string v0, "Audio channel count constraints cannot be applied without reference to Context. Build the track selector instance with one of the non-deprecated constructors that take a Context argument."

    .line 9
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/zzdx;->zzf(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method static bridge synthetic zzb(II)I
    .locals 0

    if-eqz p0, :cond_0

    if-ne p0, p1, :cond_0

    const p0, 0x7fffffff

    return p0

    :cond_0
    and-int/2addr p0, p1

    .line 1
    invoke-static {p0}, Ljava/lang/Integer;->bitCount(I)I

    move-result p0

    return p0
.end method

.method protected static zzc(Lcom/google/android/gms/internal/ads/zzz;Ljava/lang/String;Z)I
    .locals 2

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzz;->zzd:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x4

    return p0

    .line 2
    :cond_1
    :goto_0
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzyn;->zzh(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 3
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzz;->zzd:Ljava/lang/String;

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzyn;->zzh(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_6

    if-nez p1, :cond_2

    goto :goto_2

    .line 4
    :cond_2
    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_5

    invoke-virtual {p1, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_3

    goto :goto_1

    .line 5
    :cond_3
    sget p2, Lcom/google/android/gms/internal/ads/zzeu;->zza:I

    .line 6
    const-string p2, "-"

    const/4 v1, 0x2

    invoke-virtual {p0, p2, v1}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object p0

    .line 5
    aget-object p0, p0, v0

    .line 7
    invoke-virtual {p1, p2, v1}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object p1

    .line 8
    aget-object p1, p1, v0

    .line 9
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    return v1

    :cond_4
    return v0

    :cond_5
    :goto_1
    const/4 p0, 0x3

    return p0

    :cond_6
    :goto_2
    if-eqz p2, :cond_7

    if-nez p0, :cond_7

    const/4 p0, 0x1

    return p0

    :cond_7
    return v0
.end method

.method static bridge synthetic zzg()Lcom/google/android/gms/internal/ads/zzfyh;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzyn;->zzc:Lcom/google/android/gms/internal/ads/zzfyh;

    return-object v0
.end method

.method protected static zzh(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "und"

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method static bridge synthetic zzi(Lcom/google/android/gms/internal/ads/zzyn;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzyn;->zzu()V

    return-void
.end method

.method public static synthetic zzm(Lcom/google/android/gms/internal/ads/zzyn;Lcom/google/android/gms/internal/ads/zzyb;Lcom/google/android/gms/internal/ads/zzz;)Z
    .locals 7

    .line 1
    iget-boolean p1, p1, Lcom/google/android/gms/internal/ads/zzyb;->zzQ:Z

    const/4 v0, 0x1

    if-eqz p1, :cond_6

    iget p1, p2, Lcom/google/android/gms/internal/ads/zzz;->zzE:I

    const/4 v1, -0x1

    if-eq p1, v1, :cond_6

    const/4 v2, 0x2

    if-le p1, v2, :cond_6

    .line 2
    iget-object p1, p2, Lcom/google/android/gms/internal/ads/zzz;->zzo:Ljava/lang/String;

    const/16 v3, 0x20

    const/4 v4, 0x0

    if-nez p1, :cond_0

    goto :goto_1

    .line 7
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v5

    const/4 v6, 0x3

    sparse-switch v5, :sswitch_data_0

    goto :goto_0

    .line 3
    :sswitch_0
    const-string v5, "audio/eac3"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    move v1, v0

    goto :goto_0

    :sswitch_1
    const-string v5, "audio/ac4"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    move v1, v6

    goto :goto_0

    :sswitch_2
    const-string v5, "audio/ac3"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    move v1, v4

    goto :goto_0

    :sswitch_3
    const-string v5, "audio/eac3-joc"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    move v1, v2

    :cond_1
    :goto_0
    if-eqz v1, :cond_2

    if-eq v1, v0, :cond_2

    if-eq v1, v2, :cond_2

    if-eq v1, v6, :cond_2

    goto :goto_1

    :cond_2
    sget p1, Lcom/google/android/gms/internal/ads/zzeu;->zza:I

    if-lt p1, v3, :cond_6

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzyn;->zzf:Lcom/google/android/gms/internal/ads/zzyf;

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzyf;->zze()Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_2

    .line 4
    :cond_3
    :goto_1
    sget p1, Lcom/google/android/gms/internal/ads/zzeu;->zza:I

    if-lt p1, v3, :cond_5

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzyn;->zzf:Lcom/google/android/gms/internal/ads/zzyf;

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzyf;->zze()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 5
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzyf;->zzc()Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzyn;->zzf:Lcom/google/android/gms/internal/ads/zzyf;

    .line 6
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzyf;->zzd()Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzyn;->zzf:Lcom/google/android/gms/internal/ads/zzyf;

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzyn;->zzg:Lcom/google/android/gms/internal/ads/zze;

    .line 7
    invoke-virtual {p1, p0, p2}, Lcom/google/android/gms/internal/ads/zzyf;->zzb(Lcom/google/android/gms/internal/ads/zze;Lcom/google/android/gms/internal/ads/zzz;)Z

    move-result p0

    if-eqz p0, :cond_4

    goto :goto_2

    :cond_4
    return v4

    :cond_5
    move v0, v4

    :cond_6
    :goto_2
    return v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7e929daa -> :sswitch_3
        0xb269698 -> :sswitch_2
        0xb269699 -> :sswitch_1
        0x59ae0c65 -> :sswitch_0
    .end sparse-switch
.end method

.method private static zzt(Lcom/google/android/gms/internal/ads/zzxd;Lcom/google/android/gms/internal/ads/zzbr;Ljava/util/Map;)V
    .locals 2

    const/4 p2, 0x0

    .line 1
    :goto_0
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzxd;->zzb:I

    if-ge p2, v0, :cond_1

    .line 2
    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/ads/zzxd;->zzb(I)Lcom/google/android/gms/internal/ads/zzbm;

    move-result-object v0

    .line 3
    iget-object v1, p1, Lcom/google/android/gms/internal/ads/zzbr;->zzD:Lcom/google/android/gms/internal/ads/zzfwz;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzfwz;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzbn;

    if-nez v0, :cond_0

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 4
    throw p0

    :cond_1
    return-void
.end method

.method private final zzu()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzyn;->zzd:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzyn;->zze:Lcom/google/android/gms/internal/ads/zzyb;

    iget-boolean v1, v1, Lcom/google/android/gms/internal/ads/zzyb;->zzQ:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    sget v1, Lcom/google/android/gms/internal/ads/zzeu;->zza:I

    const/16 v3, 0x20

    if-lt v1, v3, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzyn;->zzf:Lcom/google/android/gms/internal/ads/zzyf;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzyf;->zze()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    .line 2
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_1

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzyv;->zzs()V

    :cond_1
    return-void

    :catchall_0
    move-exception v1

    .line 2
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private static final zzv(ILcom/google/android/gms/internal/ads/zzyr;[[[ILcom/google/android/gms/internal/ads/zzyh;Ljava/util/Comparator;)Landroid/util/Pair;
    .locals 17

    move-object/from16 v0, p1

    .line 1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    :goto_0
    const/4 v4, 0x2

    if-ge v3, v4, :cond_7

    .line 2
    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/zzyr;->zzc(I)I

    move-result v5

    move/from16 v6, p0

    if-ne v6, v5, :cond_6

    .line 3
    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/zzyr;->zzd(I)Lcom/google/android/gms/internal/ads/zzxd;

    move-result-object v5

    const/4 v7, 0x0

    .line 4
    :goto_1
    iget v8, v5, Lcom/google/android/gms/internal/ads/zzxd;->zzb:I

    if-ge v7, v8, :cond_6

    .line 5
    invoke-virtual {v5, v7}, Lcom/google/android/gms/internal/ads/zzxd;->zzb(I)Lcom/google/android/gms/internal/ads/zzbm;

    move-result-object v8

    .line 6
    aget-object v9, p2, v3

    aget-object v9, v9, v7

    move-object/from16 v10, p3

    .line 7
    invoke-interface {v10, v3, v8, v9}, Lcom/google/android/gms/internal/ads/zzyh;->zza(ILcom/google/android/gms/internal/ads/zzbm;[I)Ljava/util/List;

    move-result-object v9

    .line 8
    iget v8, v8, Lcom/google/android/gms/internal/ads/zzbm;->zza:I

    new-array v11, v8, [Z

    const/4 v12, 0x0

    :goto_2
    if-ge v12, v8, :cond_5

    add-int/lit8 v13, v12, 0x1

    .line 9
    invoke-interface {v9, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/google/android/gms/internal/ads/zzyi;

    .line 10
    invoke-virtual {v14}, Lcom/google/android/gms/internal/ads/zzyi;->zzb()I

    move-result v15

    .line 11
    aget-boolean v12, v11, v12

    if-nez v12, :cond_4

    if-nez v15, :cond_0

    goto :goto_6

    :cond_0
    const/4 v12, 0x1

    if-ne v15, v12, :cond_1

    .line 12
    invoke-static {v14}, Lcom/google/android/gms/internal/ads/zzfww;->zzo(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfww;

    move-result-object v12

    goto :goto_5

    .line 20
    :cond_1
    new-instance v15, Ljava/util/ArrayList;

    .line 13
    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 14
    invoke-interface {v15, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v2, v13

    :goto_3
    if-ge v2, v8, :cond_3

    .line 15
    invoke-interface {v9, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v12, v16

    check-cast v12, Lcom/google/android/gms/internal/ads/zzyi;

    .line 16
    invoke-virtual {v12}, Lcom/google/android/gms/internal/ads/zzyi;->zzb()I

    move-result v0

    if-ne v0, v4, :cond_2

    .line 17
    invoke-virtual {v14, v12}, Lcom/google/android/gms/internal/ads/zzyi;->zzc(Lcom/google/android/gms/internal/ads/zzyi;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 18
    invoke-interface {v15, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x1

    .line 19
    aput-boolean v0, v11, v2

    goto :goto_4

    :cond_2
    const/4 v0, 0x1

    :goto_4
    add-int/lit8 v2, v2, 0x1

    move v12, v0

    move-object/from16 v0, p1

    goto :goto_3

    :cond_3
    move-object v12, v15

    .line 20
    :goto_5
    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    :goto_6
    move-object/from16 v0, p1

    move v12, v13

    goto :goto_2

    :cond_5
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v0, p1

    goto :goto_1

    :cond_6
    move-object/from16 v10, p3

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, p1

    goto/16 :goto_0

    .line 21
    :cond_7
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x0

    return-object v0

    :cond_8
    move-object/from16 v0, p4

    .line 22
    invoke-static {v1, v0}, Ljava/util/Collections;->max(Ljava/util/Collection;Ljava/util/Comparator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 23
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [I

    const/4 v2, 0x0

    .line 24
    :goto_7
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_9

    .line 25
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/ads/zzyi;

    iget v3, v3, Lcom/google/android/gms/internal/ads/zzyi;->zzc:I

    aput v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_9
    const/4 v2, 0x0

    .line 26
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzyi;

    new-instance v3, Lcom/google/android/gms/internal/ads/zzyo;

    .line 27
    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzyi;->zzb:Lcom/google/android/gms/internal/ads/zzbm;

    .line 28
    invoke-direct {v3, v4, v1, v2}, Lcom/google/android/gms/internal/ads/zzyo;-><init>(Lcom/google/android/gms/internal/ads/zzbm;[II)V

    .line 27
    iget v0, v0, Lcom/google/android/gms/internal/ads/zzyi;->zza:I

    .line 29
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 27
    invoke-static {v3, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzlu;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzyn;->zzd:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzyn;->zze:Lcom/google/android/gms/internal/ads/zzyb;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/zzyb;->zzU:Z

    .line 2
    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected final zzd(Lcom/google/android/gms/internal/ads/zzyr;[[[I[ILcom/google/android/gms/internal/ads/zzuy;Lcom/google/android/gms/internal/ads/zzbl;)Landroid/util/Pair;
    .locals 26
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzii;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    .line 1
    iget-object v4, v1, Lcom/google/android/gms/internal/ads/zzyn;->zzd:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    iget-object v5, v1, Lcom/google/android/gms/internal/ads/zzyn;->zze:Lcom/google/android/gms/internal/ads/zzyb;

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    iget-boolean v4, v5, Lcom/google/android/gms/internal/ads/zzyb;->zzQ:Z

    if-eqz v4, :cond_0

    sget v4, Lcom/google/android/gms/internal/ads/zzeu;->zza:I

    const/16 v6, 0x20

    if-lt v4, v6, :cond_0

    iget-object v4, v1, Lcom/google/android/gms/internal/ads/zzyn;->zzf:Lcom/google/android/gms/internal/ads/zzyf;

    if-nez v4, :cond_0

    iget-object v4, v1, Lcom/google/android/gms/internal/ads/zzyn;->zza:Landroid/content/Context;

    new-instance v6, Lcom/google/android/gms/internal/ads/zzyf;

    .line 3
    invoke-direct {v6, v4, v1}, Lcom/google/android/gms/internal/ads/zzyf;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzyn;)V

    iput-object v6, v1, Lcom/google/android/gms/internal/ads/zzyn;->zzf:Lcom/google/android/gms/internal/ads/zzyf;

    :cond_0
    const/4 v4, 0x2

    new-array v6, v4, [Lcom/google/android/gms/internal/ads/zzyo;

    const/4 v7, 0x0

    move v8, v7

    :goto_0
    const/4 v9, 0x1

    if-ge v8, v4, :cond_2

    .line 4
    invoke-virtual {v0, v8}, Lcom/google/android/gms/internal/ads/zzyr;->zzc(I)I

    move-result v10

    if-ne v10, v4, :cond_1

    .line 5
    invoke-virtual {v0, v8}, Lcom/google/android/gms/internal/ads/zzyr;->zzd(I)Lcom/google/android/gms/internal/ads/zzxd;

    move-result-object v10

    iget v10, v10, Lcom/google/android/gms/internal/ads/zzxd;->zzb:I

    if-lez v10, :cond_1

    move v8, v9

    goto :goto_1

    :cond_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_2
    move v8, v7

    :goto_1
    new-instance v10, Lcom/google/android/gms/internal/ads/zzxs;

    invoke-direct {v10, v1, v5, v8, v3}, Lcom/google/android/gms/internal/ads/zzxs;-><init>(Lcom/google/android/gms/internal/ads/zzyn;Lcom/google/android/gms/internal/ads/zzyb;Z[I)V

    new-instance v8, Lcom/google/android/gms/internal/ads/zzxt;

    invoke-direct {v8}, Lcom/google/android/gms/internal/ads/zzxt;-><init>()V

    .line 6
    invoke-static {v9, v0, v2, v10, v8}, Lcom/google/android/gms/internal/ads/zzyn;->zzv(ILcom/google/android/gms/internal/ads/zzyr;[[[ILcom/google/android/gms/internal/ads/zzyh;Ljava/util/Comparator;)Landroid/util/Pair;

    move-result-object v8

    if-eqz v8, :cond_3

    .line 7
    iget-object v10, v8, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    iget-object v11, v8, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v11, Lcom/google/android/gms/internal/ads/zzyo;

    aput-object v11, v6, v10

    :cond_3
    if-nez v8, :cond_4

    const/4 v8, 0x0

    goto :goto_2

    .line 8
    :cond_4
    iget-object v11, v8, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v11, Lcom/google/android/gms/internal/ads/zzyo;

    iget-object v11, v11, Lcom/google/android/gms/internal/ads/zzyo;->zza:Lcom/google/android/gms/internal/ads/zzbm;

    iget-object v8, v8, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v8, Lcom/google/android/gms/internal/ads/zzyo;

    iget-object v8, v8, Lcom/google/android/gms/internal/ads/zzyo;->zzb:[I

    aget v8, v8, v7

    invoke-virtual {v11, v8}, Lcom/google/android/gms/internal/ads/zzbm;->zzb(I)Lcom/google/android/gms/internal/ads/zzz;

    move-result-object v8

    iget-object v8, v8, Lcom/google/android/gms/internal/ads/zzz;->zzd:Ljava/lang/String;

    .line 9
    :goto_2
    iget-object v11, v5, Lcom/google/android/gms/internal/ads/zzyb;->zzu:Lcom/google/android/gms/internal/ads/zzbp;

    iget v11, v11, Lcom/google/android/gms/internal/ads/zzbp;->zzb:I

    .line 10
    iget-boolean v11, v5, Lcom/google/android/gms/internal/ads/zzyb;->zzk:Z

    if-eqz v11, :cond_5

    iget-object v11, v1, Lcom/google/android/gms/internal/ads/zzyn;->zza:Landroid/content/Context;

    if-eqz v11, :cond_5

    .line 11
    invoke-static {v11}, Lcom/google/android/gms/internal/ads/zzeu;->zzw(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object v11

    goto :goto_3

    :cond_5
    const/4 v11, 0x0

    :goto_3
    new-instance v12, Lcom/google/android/gms/internal/ads/zzxq;

    invoke-direct {v12, v5, v8, v3, v11}, Lcom/google/android/gms/internal/ads/zzxq;-><init>(Lcom/google/android/gms/internal/ads/zzyb;Ljava/lang/String;[ILandroid/graphics/Point;)V

    new-instance v3, Lcom/google/android/gms/internal/ads/zzxr;

    invoke-direct {v3}, Lcom/google/android/gms/internal/ads/zzxr;-><init>()V

    .line 12
    invoke-static {v4, v0, v2, v12, v3}, Lcom/google/android/gms/internal/ads/zzyn;->zzv(ILcom/google/android/gms/internal/ads/zzyr;[[[ILcom/google/android/gms/internal/ads/zzyh;Ljava/util/Comparator;)Landroid/util/Pair;

    move-result-object v3

    .line 13
    iget-boolean v11, v5, Lcom/google/android/gms/internal/ads/zzyb;->zzA:Z

    const/4 v11, 0x4

    if-nez v3, :cond_6

    new-instance v12, Lcom/google/android/gms/internal/ads/zzxo;

    invoke-direct {v12, v5}, Lcom/google/android/gms/internal/ads/zzxo;-><init>(Lcom/google/android/gms/internal/ads/zzyb;)V

    new-instance v13, Lcom/google/android/gms/internal/ads/zzxp;

    invoke-direct {v13}, Lcom/google/android/gms/internal/ads/zzxp;-><init>()V

    .line 14
    invoke-static {v11, v0, v2, v12, v13}, Lcom/google/android/gms/internal/ads/zzyn;->zzv(ILcom/google/android/gms/internal/ads/zzyr;[[[ILcom/google/android/gms/internal/ads/zzyh;Ljava/util/Comparator;)Landroid/util/Pair;

    move-result-object v12

    goto :goto_4

    :cond_6
    const/4 v12, 0x0

    :goto_4
    if-eqz v12, :cond_7

    .line 15
    iget-object v3, v12, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v12, v12, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v12, Lcom/google/android/gms/internal/ads/zzyo;

    aput-object v12, v6, v3

    goto :goto_5

    :cond_7
    if-eqz v3, :cond_8

    .line 16
    iget-object v12, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    iget-object v3, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Lcom/google/android/gms/internal/ads/zzyo;

    aput-object v3, v6, v12

    .line 17
    :cond_8
    :goto_5
    iget-boolean v3, v5, Lcom/google/android/gms/internal/ads/zzyb;->zzx:Z

    if-eqz v3, :cond_c

    iget-object v3, v1, Lcom/google/android/gms/internal/ads/zzyn;->zza:Landroid/content/Context;

    if-nez v3, :cond_9

    goto :goto_6

    .line 66
    :cond_9
    const-string v12, "captioning"

    .line 18
    invoke-virtual {v3, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/accessibility/CaptioningManager;

    if-eqz v3, :cond_c

    .line 19
    invoke-virtual {v3}, Landroid/view/accessibility/CaptioningManager;->isEnabled()Z

    move-result v12

    if-nez v12, :cond_a

    goto :goto_6

    .line 20
    :cond_a
    invoke-virtual {v3}, Landroid/view/accessibility/CaptioningManager;->getLocale()Ljava/util/Locale;

    move-result-object v3

    if-nez v3, :cond_b

    goto :goto_6

    .line 21
    :cond_b
    sget v12, Lcom/google/android/gms/internal/ads/zzeu;->zza:I

    .line 22
    invoke-virtual {v3}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v3

    goto :goto_7

    :cond_c
    :goto_6
    const/4 v3, 0x0

    .line 17
    :goto_7
    new-instance v12, Lcom/google/android/gms/internal/ads/zzxv;

    invoke-direct {v12, v5, v8, v3}, Lcom/google/android/gms/internal/ads/zzxv;-><init>(Lcom/google/android/gms/internal/ads/zzyb;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Lcom/google/android/gms/internal/ads/zzxw;

    invoke-direct {v3}, Lcom/google/android/gms/internal/ads/zzxw;-><init>()V

    const/4 v8, 0x3

    .line 23
    invoke-static {v8, v0, v2, v12, v3}, Lcom/google/android/gms/internal/ads/zzyn;->zzv(ILcom/google/android/gms/internal/ads/zzyr;[[[ILcom/google/android/gms/internal/ads/zzyh;Ljava/util/Comparator;)Landroid/util/Pair;

    move-result-object v3

    if-eqz v3, :cond_d

    .line 24
    iget-object v12, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    iget-object v3, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Lcom/google/android/gms/internal/ads/zzyo;

    aput-object v3, v6, v12

    :cond_d
    move v3, v7

    :goto_8
    if-ge v3, v4, :cond_14

    .line 25
    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/zzyr;->zzc(I)I

    move-result v12

    if-eq v12, v4, :cond_13

    if-eq v12, v9, :cond_13

    if-eq v12, v8, :cond_13

    if-eq v12, v11, :cond_13

    .line 26
    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/zzyr;->zzd(I)Lcom/google/android/gms/internal/ads/zzxd;

    move-result-object v12

    aget-object v13, v2, v3

    move v14, v7

    move/from16 v16, v14

    const/4 v15, 0x0

    const/16 v17, 0x0

    .line 27
    :goto_9
    iget v8, v12, Lcom/google/android/gms/internal/ads/zzxd;->zzb:I

    if-ge v14, v8, :cond_11

    .line 28
    invoke-virtual {v12, v14}, Lcom/google/android/gms/internal/ads/zzxd;->zzb(I)Lcom/google/android/gms/internal/ads/zzbm;

    move-result-object v8

    .line 29
    aget-object v18, v13, v14

    move v9, v7

    move-object/from16 v11, v17

    .line 30
    :goto_a
    iget v10, v8, Lcom/google/android/gms/internal/ads/zzbm;->zza:I

    if-ge v9, v10, :cond_10

    .line 31
    aget v10, v18, v9

    iget-boolean v4, v5, Lcom/google/android/gms/internal/ads/zzyb;->zzR:Z

    invoke-static {v10, v4}, Lcom/google/android/gms/internal/ads/zzlv;->zza(IZ)Z

    move-result v4

    if-eqz v4, :cond_f

    .line 32
    invoke-virtual {v8, v9}, Lcom/google/android/gms/internal/ads/zzbm;->zzb(I)Lcom/google/android/gms/internal/ads/zzz;

    move-result-object v4

    new-instance v10, Lcom/google/android/gms/internal/ads/zzxz;

    .line 33
    aget v7, v18, v9

    invoke-direct {v10, v4, v7}, Lcom/google/android/gms/internal/ads/zzxz;-><init>(Lcom/google/android/gms/internal/ads/zzz;I)V

    if-eqz v11, :cond_e

    .line 34
    invoke-virtual {v10, v11}, Lcom/google/android/gms/internal/ads/zzxz;->zza(Lcom/google/android/gms/internal/ads/zzxz;)I

    move-result v4

    if-lez v4, :cond_f

    :cond_e
    move-object v15, v8

    move/from16 v16, v9

    move-object v11, v10

    :cond_f
    add-int/lit8 v9, v9, 0x1

    const/4 v4, 0x2

    const/4 v7, 0x0

    goto :goto_a

    :cond_10
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v17, v11

    const/4 v4, 0x2

    const/4 v7, 0x0

    const/4 v9, 0x1

    const/4 v11, 0x4

    goto :goto_9

    :cond_11
    if-nez v15, :cond_12

    const/4 v4, 0x0

    goto :goto_b

    .line 36
    :cond_12
    new-instance v4, Lcom/google/android/gms/internal/ads/zzyo;

    filled-new-array/range {v16 .. v16}, [I

    move-result-object v7

    const/4 v8, 0x0

    .line 35
    invoke-direct {v4, v15, v7, v8}, Lcom/google/android/gms/internal/ads/zzyo;-><init>(Lcom/google/android/gms/internal/ads/zzbm;[II)V

    .line 36
    :goto_b
    aput-object v4, v6, v3

    :cond_13
    add-int/lit8 v3, v3, 0x1

    const/4 v4, 0x2

    const/4 v7, 0x0

    const/4 v8, 0x3

    const/4 v9, 0x1

    const/4 v11, 0x4

    goto :goto_8

    .line 35
    :cond_14
    new-instance v2, Ljava/util/HashMap;

    .line 37
    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const/4 v3, 0x2

    const/4 v8, 0x0

    :goto_c
    if-ge v8, v3, :cond_15

    .line 38
    invoke-virtual {v0, v8}, Lcom/google/android/gms/internal/ads/zzyr;->zzd(I)Lcom/google/android/gms/internal/ads/zzxd;

    move-result-object v4

    .line 39
    invoke-static {v4, v5, v2}, Lcom/google/android/gms/internal/ads/zzyn;->zzt(Lcom/google/android/gms/internal/ads/zzxd;Lcom/google/android/gms/internal/ads/zzbr;Ljava/util/Map;)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_c

    :cond_15
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzyr;->zze()Lcom/google/android/gms/internal/ads/zzxd;

    move-result-object v4

    .line 40
    invoke-static {v4, v5, v2}, Lcom/google/android/gms/internal/ads/zzyn;->zzt(Lcom/google/android/gms/internal/ads/zzxd;Lcom/google/android/gms/internal/ads/zzbr;Ljava/util/Map;)V

    const/4 v8, 0x0

    :goto_d
    if-ge v8, v3, :cond_17

    .line 41
    invoke-virtual {v0, v8}, Lcom/google/android/gms/internal/ads/zzyr;->zzc(I)I

    move-result v4

    .line 42
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/ads/zzbn;

    if-nez v4, :cond_16

    add-int/lit8 v8, v8, 0x1

    goto :goto_d

    :cond_16
    const/4 v4, 0x0

    .line 67
    throw v4

    :cond_17
    const/4 v4, 0x0

    const/4 v8, 0x0

    :goto_e
    if-ge v8, v3, :cond_1a

    .line 43
    invoke-virtual {v0, v8}, Lcom/google/android/gms/internal/ads/zzyr;->zzd(I)Lcom/google/android/gms/internal/ads/zzxd;

    move-result-object v2

    .line 44
    invoke-virtual {v5, v8, v2}, Lcom/google/android/gms/internal/ads/zzyb;->zzf(ILcom/google/android/gms/internal/ads/zzxd;)Z

    move-result v3

    if-nez v3, :cond_18

    goto :goto_f

    .line 45
    :cond_18
    invoke-virtual {v5, v8, v2}, Lcom/google/android/gms/internal/ads/zzyb;->zzd(ILcom/google/android/gms/internal/ads/zzxd;)Lcom/google/android/gms/internal/ads/zzyc;

    move-result-object v2

    if-nez v2, :cond_19

    .line 48
    aput-object v4, v6, v8

    :goto_f
    add-int/lit8 v8, v8, 0x1

    const/4 v3, 0x2

    goto :goto_e

    .line 46
    :cond_19
    throw v4

    :cond_1a
    move v2, v3

    const/4 v8, 0x0

    :goto_10
    if-ge v8, v2, :cond_1d

    .line 49
    invoke-virtual {v0, v8}, Lcom/google/android/gms/internal/ads/zzyr;->zzc(I)I

    move-result v2

    .line 50
    invoke-virtual {v5, v8}, Lcom/google/android/gms/internal/ads/zzyb;->zze(I)Z

    move-result v3

    if-nez v3, :cond_1c

    iget-object v3, v5, Lcom/google/android/gms/internal/ads/zzyb;->zzE:Lcom/google/android/gms/internal/ads/zzfxb;

    .line 51
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/ads/zzfxb;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1b

    goto :goto_11

    :cond_1b
    const/4 v4, 0x0

    goto :goto_12

    :cond_1c
    :goto_11
    const/4 v4, 0x0

    .line 52
    aput-object v4, v6, v8

    :goto_12
    add-int/lit8 v8, v8, 0x1

    const/4 v2, 0x2

    goto :goto_10

    :cond_1d
    const/4 v4, 0x0

    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzyn;->zzh:Lcom/google/android/gms/internal/ads/zzxj;

    .line 53
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzyv;->zzq()Lcom/google/android/gms/internal/ads/zzzd;

    move-result-object v3

    .line 54
    invoke-static {v6}, Lcom/google/android/gms/internal/ads/zzxk;->zzh([Lcom/google/android/gms/internal/ads/zzyo;)Lcom/google/android/gms/internal/ads/zzfww;

    move-result-object v7

    const/4 v8, 0x2

    new-array v15, v8, [Lcom/google/android/gms/internal/ads/zzyp;

    const/4 v14, 0x0

    :goto_13
    if-ge v14, v8, :cond_21

    .line 55
    aget-object v8, v6, v14

    if-eqz v8, :cond_20

    iget-object v11, v8, Lcom/google/android/gms/internal/ads/zzyo;->zzb:[I

    .line 56
    array-length v9, v11

    if-nez v9, :cond_1e

    goto :goto_15

    :cond_1e
    const/4 v13, 0x1

    if-ne v9, v13, :cond_1f

    iget-object v8, v8, Lcom/google/android/gms/internal/ads/zzyo;->zza:Lcom/google/android/gms/internal/ads/zzbm;

    new-instance v9, Lcom/google/android/gms/internal/ads/zzyq;

    const/16 v16, 0x0

    .line 57
    aget v22, v11, v16

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v23, 0x0

    move-object/from16 v20, v9

    move-object/from16 v21, v8

    .line 58
    invoke-direct/range {v20 .. v25}, Lcom/google/android/gms/internal/ads/zzyq;-><init>(Lcom/google/android/gms/internal/ads/zzbm;IIILjava/lang/Object;)V

    move/from16 v17, v13

    move/from16 v19, v14

    goto :goto_14

    :cond_1f
    const/16 v16, 0x0

    .line 60
    iget-object v10, v8, Lcom/google/android/gms/internal/ads/zzyo;->zza:Lcom/google/android/gms/internal/ads/zzbm;

    .line 59
    invoke-virtual {v7, v14}, Lcom/google/android/gms/internal/ads/zzfww;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/android/gms/internal/ads/zzfww;

    const/4 v12, 0x0

    move-object v9, v2

    move/from16 v17, v13

    move-object v13, v3

    move/from16 v19, v14

    move-object v14, v8

    .line 60
    invoke-virtual/range {v9 .. v14}, Lcom/google/android/gms/internal/ads/zzxj;->zza(Lcom/google/android/gms/internal/ads/zzbm;[IILcom/google/android/gms/internal/ads/zzzd;Lcom/google/android/gms/internal/ads/zzfww;)Lcom/google/android/gms/internal/ads/zzxk;

    move-result-object v9

    :goto_14
    aput-object v9, v15, v19

    goto :goto_16

    :cond_20
    :goto_15
    move/from16 v19, v14

    const/16 v16, 0x0

    const/16 v17, 0x1

    :goto_16
    add-int/lit8 v14, v19, 0x1

    const/4 v8, 0x2

    goto :goto_13

    :cond_21
    const/16 v16, 0x0

    new-array v2, v8, [Lcom/google/android/gms/internal/ads/zzly;

    move/from16 v7, v16

    :goto_17
    if-ge v7, v8, :cond_25

    .line 61
    invoke-virtual {v0, v7}, Lcom/google/android/gms/internal/ads/zzyr;->zzc(I)I

    move-result v3

    .line 62
    invoke-virtual {v5, v7}, Lcom/google/android/gms/internal/ads/zzyb;->zze(I)Z

    move-result v6

    if-nez v6, :cond_24

    iget-object v6, v5, Lcom/google/android/gms/internal/ads/zzyb;->zzE:Lcom/google/android/gms/internal/ads/zzfxb;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v6, v3}, Lcom/google/android/gms/internal/ads/zzfxb;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_22

    goto :goto_18

    .line 63
    :cond_22
    invoke-virtual {v0, v7}, Lcom/google/android/gms/internal/ads/zzyr;->zzc(I)I

    move-result v3

    const/4 v6, -0x2

    if-eq v3, v6, :cond_23

    aget-object v3, v15, v7

    if-eqz v3, :cond_24

    :cond_23
    sget-object v3, Lcom/google/android/gms/internal/ads/zzly;->zza:Lcom/google/android/gms/internal/ads/zzly;

    goto :goto_19

    :cond_24
    :goto_18
    move-object v3, v4

    .line 64
    :goto_19
    aput-object v3, v2, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_17

    .line 65
    :cond_25
    iget-boolean v0, v5, Lcom/google/android/gms/internal/ads/zzyb;->zzS:Z

    .line 66
    invoke-static {v2, v15}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    return-object v0

    :catchall_0
    move-exception v0

    .line 1
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final zze()Lcom/google/android/gms/internal/ads/zzlw;
    .locals 0

    return-object p0
.end method

.method public final zzf()Lcom/google/android/gms/internal/ads/zzyb;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzyn;->zzd:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzyn;->zze:Lcom/google/android/gms/internal/ads/zzyb;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final zzj()V
    .locals 2

    .line 1
    sget v0, Lcom/google/android/gms/internal/ads/zzeu;->zza:I

    const/16 v1, 0x20

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzyn;->zzf:Lcom/google/android/gms/internal/ads/zzyf;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzyf;->zza()V

    .line 3
    :cond_0
    invoke-super {p0}, Lcom/google/android/gms/internal/ads/zzys;->zzj()V

    return-void
.end method

.method public final zzk(Lcom/google/android/gms/internal/ads/zze;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzyn;->zzg:Lcom/google/android/gms/internal/ads/zze;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zze;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzyn;->zzg:Lcom/google/android/gms/internal/ads/zze;

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzyn;->zzu()V

    return-void
.end method

.method public final zzl(Lcom/google/android/gms/internal/ads/zzya;)V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzyb;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/google/android/gms/internal/ads/zzyb;-><init>(Lcom/google/android/gms/internal/ads/zzya;Lcom/google/android/gms/internal/ads/zzym;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzyn;->zzd:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzyn;->zze:Lcom/google/android/gms/internal/ads/zzyb;

    .line 2
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbr;->equals(Ljava/lang/Object;)Z

    move-result v1

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzyn;->zze:Lcom/google/android/gms/internal/ads/zzyb;

    .line 3
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_1

    iget-boolean p1, v0, Lcom/google/android/gms/internal/ads/zzyb;->zzQ:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzyn;->zza:Landroid/content/Context;

    if-nez p1, :cond_0

    const-string p1, "DefaultTrackSelector"

    const-string v0, "Audio channel count constraints cannot be applied without reference to Context. Build the track selector instance with one of the non-deprecated constructors that take a Context argument."

    .line 4
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/zzdx;->zzf(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzyv;->zzs()V

    :cond_1
    return-void

    :catchall_0
    move-exception v0

    .line 3
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final zzn()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
