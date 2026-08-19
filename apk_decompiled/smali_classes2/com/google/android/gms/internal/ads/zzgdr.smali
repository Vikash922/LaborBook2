.class public final Lcom/google/android/gms/internal/ads/zzgdr;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.2.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzglh;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzgtb;

.field private final zzb:Ljava/util/List;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzglq;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzgtb;Ljava/util/List;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgdr;->zza:Lcom/google/android/gms/internal/ads/zzgtb;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzgdr;->zzb:Ljava/util/List;

    sget-object p1, Lcom/google/android/gms/internal/ads/zzglq;->zza:Lcom/google/android/gms/internal/ads/zzglq;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgdr;->zzc:Lcom/google/android/gms/internal/ads/zzglq;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzgtb;Ljava/util/List;Lcom/google/android/gms/internal/ads/zzglq;Lcom/google/android/gms/internal/ads/zzgdq;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgdr;->zza:Lcom/google/android/gms/internal/ads/zzgtb;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzgdr;->zzb:Ljava/util/List;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzgdr;->zzc:Lcom/google/android/gms/internal/ads/zzglq;

    return-void
.end method

.method static final zzb(Lcom/google/android/gms/internal/ads/zzgtb;)Lcom/google/android/gms/internal/ads/zzgdr;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzgdr;->zzj(Lcom/google/android/gms/internal/ads/zzgtb;)V

    .line 2
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzgdr;->zzi(Lcom/google/android/gms/internal/ads/zzgtb;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/ads/zzgdr;

    .line 3
    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/internal/ads/zzgdr;-><init>(Lcom/google/android/gms/internal/ads/zzgtb;Ljava/util/List;)V

    return-object v1
.end method

.method public static final zzc(Lcom/google/android/gms/internal/ads/zzgdv;)Lcom/google/android/gms/internal/ads/zzgdr;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzgdo;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzgdo;-><init>()V

    new-instance v1, Lcom/google/android/gms/internal/ads/zzgdm;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/google/android/gms/internal/ads/zzgdm;-><init>(Lcom/google/android/gms/internal/ads/zzgdv;Lcom/google/android/gms/internal/ads/zzgdq;)V

    .line 2
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzgdm;->zzd()Lcom/google/android/gms/internal/ads/zzgdm;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzgdm;->zzc()Lcom/google/android/gms/internal/ads/zzgdm;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzgdo;->zza(Lcom/google/android/gms/internal/ads/zzgdm;)Lcom/google/android/gms/internal/ads/zzgdo;

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgdo;->zzb()Lcom/google/android/gms/internal/ads/zzgdr;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic zzh(Lcom/google/android/gms/internal/ads/zzgtb;)V
    .locals 0

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzgdr;->zzj(Lcom/google/android/gms/internal/ads/zzgtb;)V

    return-void
.end method

.method private static zzi(Lcom/google/android/gms/internal/ads/zzgtb;)Ljava/util/List;
    .locals 11

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgtb;->zza()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgtb;->zzh()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/zzgsz;

    .line 3
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzgsz;->zza()I

    move-result v6

    const/4 v9, 0x0

    .line 4
    :try_start_0
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzgsz;->zza()I

    move-result v3

    .line 5
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzgsz;->zzf()Lcom/google/android/gms/internal/ads/zzgtt;

    move-result-object v4

    sget-object v5, Lcom/google/android/gms/internal/ads/zzgtt;->zzd:Lcom/google/android/gms/internal/ads/zzgtt;

    if-ne v4, v5, :cond_0

    move-object v3, v9

    goto :goto_1

    :cond_0
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 6
    :goto_1
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzgsz;->zzb()Lcom/google/android/gms/internal/ads/zzgsp;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzgsp;->zzg()Ljava/lang/String;

    move-result-object v4

    .line 7
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzgsz;->zzb()Lcom/google/android/gms/internal/ads/zzgsp;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzgsp;->zzf()Lcom/google/android/gms/internal/ads/zzgwn;

    move-result-object v5

    .line 8
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzgsz;->zzb()Lcom/google/android/gms/internal/ads/zzgsp;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/zzgsp;->zzb()Lcom/google/android/gms/internal/ads/zzgsn;

    move-result-object v7

    .line 9
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzgsz;->zzf()Lcom/google/android/gms/internal/ads/zzgtt;

    move-result-object v8

    .line 10
    invoke-static {v4, v5, v7, v8, v3}, Lcom/google/android/gms/internal/ads/zzgnl;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzgwn;Lcom/google/android/gms/internal/ads/zzgsn;Lcom/google/android/gms/internal/ads/zzgtt;Ljava/lang/Integer;)Lcom/google/android/gms/internal/ads/zzgnl;

    move-result-object v3

    .line 11
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgmi;->zzc()Lcom/google/android/gms/internal/ads/zzgmi;

    move-result-object v4

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgdz;->zza()Lcom/google/android/gms/internal/ads/zzgdz;

    move-result-object v5

    .line 12
    invoke-virtual {v4, v3}, Lcom/google/android/gms/internal/ads/zzgmi;->zzj(Lcom/google/android/gms/internal/ads/zzgnp;)Z

    move-result v7

    if-nez v7, :cond_1

    new-instance v4, Lcom/google/android/gms/internal/ads/zzglm;

    .line 13
    invoke-direct {v4, v3, v5}, Lcom/google/android/gms/internal/ads/zzglm;-><init>(Lcom/google/android/gms/internal/ads/zzgnl;Lcom/google/android/gms/internal/ads/zzgdz;)V

    goto :goto_2

    .line 14
    :cond_1
    invoke-virtual {v4, v3, v5}, Lcom/google/android/gms/internal/ads/zzgmi;->zza(Lcom/google/android/gms/internal/ads/zzgnp;Lcom/google/android/gms/internal/ads/zzgdz;)Lcom/google/android/gms/internal/ads/zzgdh;

    move-result-object v3

    move-object v4, v3

    .line 13
    :goto_2
    new-instance v10, Lcom/google/android/gms/internal/ads/zzgdp;

    .line 15
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzgsz;->zzk()I

    move-result v2

    add-int/lit8 v2, v2, -0x2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_4

    const/4 v5, 0x2

    if-eq v2, v5, :cond_3

    const/4 v5, 0x3

    if-ne v2, v5, :cond_2

    .line 16
    sget-object v2, Lcom/google/android/gms/internal/ads/zzgdj;->zzc:Lcom/google/android/gms/internal/ads/zzgdj;

    goto :goto_3

    .line 17
    :cond_2
    new-instance v2, Ljava/security/GeneralSecurityException;

    const-string v3, "Unknown key status"

    invoke-direct {v2, v3}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 16
    :cond_3
    sget-object v2, Lcom/google/android/gms/internal/ads/zzgdj;->zzb:Lcom/google/android/gms/internal/ads/zzgdj;

    goto :goto_3

    .line 15
    :cond_4
    sget-object v2, Lcom/google/android/gms/internal/ads/zzgdj;->zza:Lcom/google/android/gms/internal/ads/zzgdj;

    :goto_3
    move-object v5, v2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgtb;->zzb()I

    move-result v2

    if-ne v6, v2, :cond_5

    move v7, v3

    goto :goto_4

    :cond_5
    const/4 v2, 0x0

    move v7, v2

    :goto_4
    const/4 v8, 0x0

    move-object v3, v10

    invoke-direct/range {v3 .. v8}, Lcom/google/android/gms/internal/ads/zzgdp;-><init>(Lcom/google/android/gms/internal/ads/zzgdh;Lcom/google/android/gms/internal/ads/zzgdj;IZLcom/google/android/gms/internal/ads/zzgdq;)V

    .line 16
    invoke-interface {v0, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 18
    :catch_0
    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 19
    :cond_6
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private static zzj(Lcom/google/android/gms/internal/ads/zzgtb;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    if-eqz p0, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgtb;->zza()I

    move-result p0

    if-lez p0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string v0, "empty keyset"

    invoke-direct {p0, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 5

    .line 1
    sget v0, Lcom/google/android/gms/internal/ads/zzgec;->zza:I

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgtg;->zza()Lcom/google/android/gms/internal/ads/zzgtc;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzgdr;->zza:Lcom/google/android/gms/internal/ads/zzgtb;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzgtb;->zzb()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzgtc;->zzb(I)Lcom/google/android/gms/internal/ads/zzgtc;

    .line 3
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzgtb;->zzh()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/zzgsz;

    .line 4
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgte;->zza()Lcom/google/android/gms/internal/ads/zzgtd;

    move-result-object v3

    .line 5
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzgsz;->zzb()Lcom/google/android/gms/internal/ads/zzgsp;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzgsp;->zzg()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/ads/zzgtd;->zzc(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzgtd;

    .line 6
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzgsz;->zzk()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/ads/zzgtd;->zzd(I)Lcom/google/android/gms/internal/ads/zzgtd;

    .line 7
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzgsz;->zzf()Lcom/google/android/gms/internal/ads/zzgtt;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/ads/zzgtd;->zzb(Lcom/google/android/gms/internal/ads/zzgtt;)Lcom/google/android/gms/internal/ads/zzgtd;

    .line 8
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzgsz;->zza()I

    move-result v2

    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/ads/zzgtd;->zza(I)Lcom/google/android/gms/internal/ads/zzgtd;

    .line 9
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzgxp;->zzbn()Lcom/google/android/gms/internal/ads/zzgxv;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/zzgte;

    .line 10
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzgtc;->zza(Lcom/google/android/gms/internal/ads/zzgte;)Lcom/google/android/gms/internal/ads/zzgtc;

    goto :goto_0

    .line 11
    :cond_0
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgxp;->zzbn()Lcom/google/android/gms/internal/ads/zzgxv;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzgtg;

    .line 12
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgxv;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zza()I
    .locals 1

    const/4 v0, 0x0

    throw v0
.end method

.method public final bridge synthetic zzd(I)Lcom/google/android/gms/internal/ads/zzglg;
    .locals 0

    const/4 p1, 0x0

    throw p1
.end method

.method public final bridge synthetic zze()Lcom/google/android/gms/internal/ads/zzglg;
    .locals 1

    const/4 v0, 0x0

    throw v0
.end method

.method final zzf()Lcom/google/android/gms/internal/ads/zzgtb;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgdr;->zza:Lcom/google/android/gms/internal/ads/zzgtb;

    return-object v0
.end method

.method public final zzg(Lcom/google/android/gms/internal/ads/zzgdc;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    instance-of v0, p1, Lcom/google/android/gms/internal/ads/zzgkw;

    if-eqz v0, :cond_f

    .line 2
    check-cast p1, Lcom/google/android/gms/internal/ads/zzgkw;

    .line 3
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzgkw;->zza(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzgdr;->zza:Lcom/google/android/gms/internal/ads/zzgtb;

    .line 4
    sget v2, Lcom/google/android/gms/internal/ads/zzgec;->zza:I

    .line 5
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzgtb;->zzb()I

    move-result v2

    .line 6
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzgtb;->zzh()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    move v6, v4

    move v7, v6

    move v8, v5

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    const/4 v10, 0x3

    if-eqz v9, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/android/gms/internal/ads/zzgsz;

    .line 7
    invoke-virtual {v9}, Lcom/google/android/gms/internal/ads/zzgsz;->zzk()I

    move-result v11

    if-ne v11, v10, :cond_0

    .line 8
    invoke-virtual {v9}, Lcom/google/android/gms/internal/ads/zzgsz;->zzj()Z

    move-result v10

    if-eqz v10, :cond_6

    .line 9
    invoke-virtual {v9}, Lcom/google/android/gms/internal/ads/zzgsz;->zzf()Lcom/google/android/gms/internal/ads/zzgtt;

    move-result-object v10

    sget-object v11, Lcom/google/android/gms/internal/ads/zzgtt;->zza:Lcom/google/android/gms/internal/ads/zzgtt;

    if-eq v10, v11, :cond_5

    .line 10
    invoke-virtual {v9}, Lcom/google/android/gms/internal/ads/zzgsz;->zzk()I

    move-result v10

    const/4 v11, 0x2

    if-eq v10, v11, :cond_4

    .line 11
    invoke-virtual {v9}, Lcom/google/android/gms/internal/ads/zzgsz;->zza()I

    move-result v10

    if-ne v10, v2, :cond_2

    if-nez v7, :cond_1

    move v7, v5

    goto :goto_1

    .line 16
    :cond_1
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string p2, "keyset contains multiple primary keys"

    invoke-direct {p1, p2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 12
    :cond_2
    :goto_1
    invoke-virtual {v9}, Lcom/google/android/gms/internal/ads/zzgsz;->zzb()Lcom/google/android/gms/internal/ads/zzgsp;

    move-result-object v9

    invoke-virtual {v9}, Lcom/google/android/gms/internal/ads/zzgsp;->zzb()Lcom/google/android/gms/internal/ads/zzgsn;

    move-result-object v9

    sget-object v10, Lcom/google/android/gms/internal/ads/zzgsn;->zzd:Lcom/google/android/gms/internal/ads/zzgsn;

    if-eq v9, v10, :cond_3

    move v9, v4

    goto :goto_2

    :cond_3
    move v9, v5

    :goto_2
    and-int/2addr v8, v9

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 17
    :cond_4
    new-instance p1, Ljava/security/GeneralSecurityException;

    .line 18
    invoke-virtual {v9}, Lcom/google/android/gms/internal/ads/zzgsz;->zza()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    const-string v0, "key %d has unknown status"

    invoke-static {v0, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 14
    :cond_5
    new-instance p1, Ljava/security/GeneralSecurityException;

    .line 15
    invoke-virtual {v9}, Lcom/google/android/gms/internal/ads/zzgsz;->zza()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    const-string v0, "key %d has unknown prefix"

    invoke-static {v0, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 13
    :cond_6
    new-instance p1, Ljava/security/GeneralSecurityException;

    invoke-virtual {v9}, Lcom/google/android/gms/internal/ads/zzgsz;->zza()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    const-string v0, "key %d has no key data"

    invoke-static {v0, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_7
    if-eqz v6, :cond_e

    if-nez v7, :cond_9

    if-eqz v8, :cond_8

    goto :goto_3

    .line 32
    :cond_8
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string p2, "keyset doesn\'t contain a valid primary key"

    invoke-direct {p1, p2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 20
    :cond_9
    :goto_3
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgnj;->zzb(Ljava/lang/Class;)Lcom/google/android/gms/internal/ads/zzgnf;

    move-result-object v2

    :goto_4
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzgdr;->zzb:Ljava/util/List;

    .line 21
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_d

    .line 22
    invoke-virtual {v1, v4}, Lcom/google/android/gms/internal/ads/zzgtb;->zzd(I)Lcom/google/android/gms/internal/ads/zzgsz;

    move-result-object v5

    .line 23
    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzgsz;->zzk()I

    move-result v6

    if-ne v6, v10, :cond_c

    .line 24
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/ads/zzgdp;

    if-eqz v3, :cond_b

    .line 29
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzgdp;->zzb()Lcom/google/android/gms/internal/ads/zzgdh;

    move-result-object v3

    .line 25
    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzgsz;->zza()I

    move-result v6

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzgtb;->zzb()I

    move-result v7

    if-ne v6, v7, :cond_a

    .line 26
    invoke-virtual {v2, v3, v5}, Lcom/google/android/gms/internal/ads/zzgnf;->zzb(Lcom/google/android/gms/internal/ads/zzgdh;Lcom/google/android/gms/internal/ads/zzgsz;)Lcom/google/android/gms/internal/ads/zzgnf;

    goto :goto_5

    .line 27
    :cond_a
    invoke-virtual {v2, v3, v5}, Lcom/google/android/gms/internal/ads/zzgnf;->zza(Lcom/google/android/gms/internal/ads/zzgdh;Lcom/google/android/gms/internal/ads/zzgsz;)Lcom/google/android/gms/internal/ads/zzgnf;

    goto :goto_5

    .line 28
    :cond_b
    new-instance p1, Ljava/security/GeneralSecurityException;

    .line 29
    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzgsz;->zzb()Lcom/google/android/gms/internal/ads/zzgsp;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzgsp;->zzg()Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Key parsing of key with index "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " and type_url "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " failed, unable to get primitive"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_c
    :goto_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 30
    :cond_d
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzgnf;->zzc()Lcom/google/android/gms/internal/ads/zzgnj;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzgdr;->zzc:Lcom/google/android/gms/internal/ads/zzglq;

    new-instance v3, Lcom/google/android/gms/internal/ads/zzgdl;

    invoke-direct {v3, p1, v0}, Lcom/google/android/gms/internal/ads/zzgdl;-><init>(Lcom/google/android/gms/internal/ads/zzgkw;Ljava/lang/Class;)V

    .line 31
    invoke-virtual {p1, v1, v2, v3, p2}, Lcom/google/android/gms/internal/ads/zzgkw;->zzc(Lcom/google/android/gms/internal/ads/zzgnj;Lcom/google/android/gms/internal/ads/zzglq;Lcom/google/android/gms/internal/ads/zzgdl;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 19
    :cond_e
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string p2, "keyset must contain at least one ENABLED key"

    invoke-direct {p1, p2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1
    :cond_f
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string p2, "Currently only subclasses of InternalConfiguration are accepted"

    invoke-direct {p1, p2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
