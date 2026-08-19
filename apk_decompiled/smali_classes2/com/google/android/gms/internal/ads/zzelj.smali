.class public final Lcom/google/android/gms/internal/ads/zzelj;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.2.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzesv;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzesv;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzfbp;

.field private final zzc:Landroid/content/Context;

.field private final zzd:Lcom/google/android/gms/internal/ads/zzbza;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzenn;Lcom/google/android/gms/internal/ads/zzfbp;Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbza;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzelj;->zza:Lcom/google/android/gms/internal/ads/zzesv;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzelj;->zzb:Lcom/google/android/gms/internal/ads/zzfbp;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzelj;->zzc:Landroid/content/Context;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzelj;->zzd:Lcom/google/android/gms/internal/ads/zzbza;

    return-void
.end method

.method public static synthetic zzc(Lcom/google/android/gms/internal/ads/zzelj;Lcom/google/android/gms/internal/ads/zzete;)Lcom/google/android/gms/internal/ads/zzelk;
    .locals 16

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzelj;->zzb:Lcom/google/android/gms/internal/ads/zzfbp;

    iget-object v3, v1, Lcom/google/android/gms/internal/ads/zzfbp;->zze:Lcom/google/android/gms/ads/internal/client/zzr;

    iget-object v2, v3, Lcom/google/android/gms/ads/internal/client/zzr;->zzg:[Lcom/google/android/gms/ads/internal/client/zzr;

    const/4 v4, 0x0

    if-nez v2, :cond_0

    .line 5
    iget-object v7, v3, Lcom/google/android/gms/ads/internal/client/zzr;->zza:Ljava/lang/String;

    .line 6
    iget-boolean v8, v3, Lcom/google/android/gms/ads/internal/client/zzr;->zzi:Z

    move-object v10, v7

    move v11, v8

    goto :goto_2

    :cond_0
    move-object v10, v4

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x0

    .line 28
    :goto_0
    array-length v12, v2

    if-ge v7, v12, :cond_5

    .line 2
    aget-object v12, v2, v7

    .line 3
    iget-boolean v13, v12, Lcom/google/android/gms/ads/internal/client/zzr;->zzi:Z

    if-nez v13, :cond_1

    if-nez v8, :cond_1

    .line 4
    iget-object v10, v12, Lcom/google/android/gms/ads/internal/client/zzr;->zza:Ljava/lang/String;

    const/4 v8, 0x1

    :cond_1
    if-eqz v13, :cond_3

    if-nez v9, :cond_2

    const/4 v9, 0x1

    const/4 v11, 0x1

    goto :goto_1

    :cond_2
    const/4 v9, 0x1

    :cond_3
    :goto_1
    if-eqz v8, :cond_4

    if-nez v9, :cond_5

    :cond_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 6
    :cond_5
    :goto_2
    iget-object v7, v0, Lcom/google/android/gms/internal/ads/zzelj;->zzc:Landroid/content/Context;

    .line 7
    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const/4 v8, 0x0

    if-eqz v7, :cond_6

    .line 8
    invoke-virtual {v7}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v7

    if-eqz v7, :cond_6

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzelj;->zzd:Lcom/google/android/gms/internal/ads/zzbza;

    .line 9
    iget v4, v7, Landroid/util/DisplayMetrics;->density:F

    .line 10
    iget v9, v7, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 11
    iget v7, v7, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 12
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbza;->zzi()Lcom/google/android/gms/ads/internal/util/zzg;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/ads/internal/util/zzg;->zzj()Ljava/lang/String;

    move-result-object v0

    move-object v12, v0

    move v0, v7

    move v7, v4

    goto :goto_3

    :cond_6
    move-object v12, v4

    move v7, v8

    const/4 v0, 0x0

    const/4 v9, 0x0

    :goto_3
    new-instance v4, Ljava/lang/StringBuilder;

    .line 13
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz v2, :cond_f

    const/4 v13, 0x0

    const/4 v14, 0x0

    :goto_4
    array-length v15, v2

    const-string v5, "|"

    if-ge v13, v15, :cond_d

    .line 14
    aget-object v15, v2, v13

    .line 15
    iget-boolean v6, v15, Lcom/google/android/gms/ads/internal/client/zzr;->zzi:Z

    if-eqz v6, :cond_7

    const/4 v14, 0x1

    goto :goto_7

    .line 16
    :cond_7
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-eqz v6, :cond_8

    .line 17
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    :cond_8
    iget v5, v15, Lcom/google/android/gms/ads/internal/client/zzr;->zze:I

    const/4 v6, -0x1

    if-ne v5, v6, :cond_a

    cmpl-float v5, v7, v8

    if-eqz v5, :cond_9

    .line 19
    iget v5, v15, Lcom/google/android/gms/ads/internal/client/zzr;->zzf:I

    int-to-float v5, v5

    div-float/2addr v5, v7

    float-to-int v5, v5

    goto :goto_5

    :cond_9
    move v5, v6

    .line 20
    :cond_a
    :goto_5
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "x"

    .line 21
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    iget v5, v15, Lcom/google/android/gms/ads/internal/client/zzr;->zzb:I

    const/4 v6, -0x2

    if-ne v5, v6, :cond_c

    cmpl-float v5, v7, v8

    if-eqz v5, :cond_b

    .line 23
    iget v5, v15, Lcom/google/android/gms/ads/internal/client/zzr;->zzc:I

    int-to-float v5, v5

    div-float/2addr v5, v7

    float-to-int v5, v5

    goto :goto_6

    :cond_b
    move v5, v6

    .line 24
    :cond_c
    :goto_6
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :goto_7
    add-int/lit8 v13, v13, 0x1

    goto :goto_4

    :cond_d
    if-eqz v14, :cond_f

    .line 25
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-eqz v2, :cond_e

    const/4 v2, 0x0

    .line 26
    invoke-virtual {v4, v2, v5}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_8

    :cond_e
    const/4 v2, 0x0

    :goto_8
    const-string v5, "320x50"

    .line 27
    invoke-virtual {v4, v2, v5}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    :cond_f
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iget-boolean v1, v1, Lcom/google/android/gms/internal/ads/zzfbp;->zzq:Z

    new-instance v13, Lcom/google/android/gms/internal/ads/zzelk;

    move-object v2, v13

    move-object v4, v10

    move v5, v11

    move v8, v9

    move v9, v0

    move-object v10, v12

    move v11, v1

    .line 28
    invoke-direct/range {v2 .. v11}, Lcom/google/android/gms/internal/ads/zzelk;-><init>(Lcom/google/android/gms/ads/internal/client/zzr;Ljava/lang/String;ZLjava/lang/String;FIILjava/lang/String;Z)V

    return-object v13
.end method


# virtual methods
.method public final zza()I
    .locals 1

    const/4 v0, 0x7

    return v0
.end method

.method public final zzb()Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzelj;->zza:Lcom/google/android/gms/internal/ads/zzesv;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzesv;->zzb()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/ads/zzeli;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zzeli;-><init>(Lcom/google/android/gms/internal/ads/zzelj;)V

    .line 2
    sget-object v2, Lcom/google/android/gms/internal/ads/zzbzk;->zzg:Lcom/google/android/gms/internal/ads/zzgcd;

    .line 3
    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzgbs;->zzm(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/android/gms/internal/ads/zzftl;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method
