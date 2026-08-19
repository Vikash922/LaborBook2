.class public final Lcom/google/android/gms/internal/ads/zzaal;
.super Lcom/google/android/gms/internal/ads/zztg;
.source "com.google.android.gms:play-services-ads@@24.2.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzaba;


# static fields
.field private static final zzb:[I

.field private static zzc:Z

.field private static zzd:Z


# instance fields
.field private zzA:I

.field private zzB:I

.field private zzC:J

.field private zzD:I

.field private zzE:J

.field private zzF:Lcom/google/android/gms/internal/ads/zzcd;

.field private zzG:Lcom/google/android/gms/internal/ads/zzcd;

.field private zzH:I

.field private zzI:I

.field private zzJ:Lcom/google/android/gms/internal/ads/zzaay;

.field private zzK:J

.field private zzL:J

.field private zzM:Z

.field private zzN:Z

.field private zzO:I

.field private final zze:Landroid/content/Context;

.field private final zzf:Z

.field private final zzg:Lcom/google/android/gms/internal/ads/zzabr;

.field private final zzh:Z

.field private final zzi:Lcom/google/android/gms/internal/ads/zzabb;

.field private final zzj:Lcom/google/android/gms/internal/ads/zzaaz;

.field private final zzk:J

.field private final zzl:Ljava/util/PriorityQueue;

.field private zzm:Lcom/google/android/gms/internal/ads/zzaak;

.field private zzn:Z

.field private zzo:Z

.field private zzp:Lcom/google/android/gms/internal/ads/zzabv;

.field private zzq:Z

.field private zzr:Ljava/util/List;

.field private zzs:Landroid/view/Surface;

.field private zzt:Lcom/google/android/gms/internal/ads/zzaao;

.field private zzu:Lcom/google/android/gms/internal/ads/zzel;

.field private zzv:Z

.field private zzw:I

.field private zzx:I

.field private zzy:J

.field private zzz:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x9

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzaal;->zzb:[I

    return-void

    :array_0
    .array-data 4
        0x780
        0x640
        0x5a0
        0x500
        0x3c0
        0x356
        0x280
        0x21c
        0x1e0
    .end array-data
.end method

.method protected constructor <init>(Lcom/google/android/gms/internal/ads/zzaaj;)V
    .locals 6

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzaaj;->zzc(Lcom/google/android/gms/internal/ads/zzaaj;)Lcom/google/android/gms/internal/ads/zzsu;

    move-result-object v2

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzaaj;->zzd(Lcom/google/android/gms/internal/ads/zzaaj;)Lcom/google/android/gms/internal/ads/zzti;

    move-result-object v3

    const/4 v4, 0x0

    const/high16 v5, 0x41f00000    # 30.0f

    const/4 v1, 0x2

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zztg;-><init>(ILcom/google/android/gms/internal/ads/zzsu;Lcom/google/android/gms/internal/ads/zzti;ZF)V

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzaaj;->zza(Lcom/google/android/gms/internal/ads/zzaaj;)Landroid/content/Context;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzaal;->zze:Landroid/content/Context;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzaal;->zzp:Lcom/google/android/gms/internal/ads/zzabv;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzabr;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzaaj;->zzb(Lcom/google/android/gms/internal/ads/zzaaj;)Landroid/os/Handler;

    move-result-object v3

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzaaj;->zzi(Lcom/google/android/gms/internal/ads/zzaaj;)Lcom/google/android/gms/internal/ads/zzabs;

    move-result-object p1

    .line 3
    invoke-direct {v2, v3, p1}, Lcom/google/android/gms/internal/ads/zzabr;-><init>(Landroid/os/Handler;Lcom/google/android/gms/internal/ads/zzabs;)V

    iput-object v2, p0, Lcom/google/android/gms/internal/ads/zzaal;->zzg:Lcom/google/android/gms/internal/ads/zzabr;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaal;->zzp:Lcom/google/android/gms/internal/ads/zzabv;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez p1, :cond_0

    move p1, v2

    goto :goto_0

    :cond_0
    move p1, v3

    :goto_0
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzaal;->zzf:Z

    new-instance p1, Lcom/google/android/gms/internal/ads/zzabb;

    const-wide/16 v4, 0x0

    .line 4
    invoke-direct {p1, v0, p0, v4, v5}, Lcom/google/android/gms/internal/ads/zzabb;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzaba;J)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaal;->zzi:Lcom/google/android/gms/internal/ads/zzabb;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzaaz;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzaaz;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaal;->zzj:Lcom/google/android/gms/internal/ads/zzaaz;

    const-string p1, "NVIDIA"

    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    .line 5
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzaal;->zzh:Z

    .line 6
    sget-object p1, Lcom/google/android/gms/internal/ads/zzel;->zza:Lcom/google/android/gms/internal/ads/zzel;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaal;->zzu:Lcom/google/android/gms/internal/ads/zzel;

    iput v2, p0, Lcom/google/android/gms/internal/ads/zzaal;->zzw:I

    iput v3, p0, Lcom/google/android/gms/internal/ads/zzaal;->zzx:I

    .line 7
    sget-object p1, Lcom/google/android/gms/internal/ads/zzcd;->zza:Lcom/google/android/gms/internal/ads/zzcd;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaal;->zzF:Lcom/google/android/gms/internal/ads/zzcd;

    iput v3, p0, Lcom/google/android/gms/internal/ads/zzaal;->zzI:I

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzaal;->zzG:Lcom/google/android/gms/internal/ads/zzcd;

    const/16 p1, -0x3e8

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzaal;->zzH:I

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzaal;->zzK:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzaal;->zzL:J

    new-instance p1, Ljava/util/PriorityQueue;

    .line 8
    invoke-direct {p1}, Ljava/util/PriorityQueue;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaal;->zzl:Ljava/util/PriorityQueue;

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzaal;->zzk:J

    return-void
.end method

.method protected static final zzaU(Ljava/lang/String;)Z
    .locals 15

    .line 1
    const-string v0, "OMX.google"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    return v0

    :cond_0
    const-class p0, Lcom/google/android/gms/internal/ads/zzaal;

    monitor-enter p0

    :try_start_0
    sget-boolean v1, Lcom/google/android/gms/internal/ads/zzaal;->zzc:Z

    if-nez v1, :cond_8

    .line 2
    sget v1, Lcom/google/android/gms/internal/ads/zzeu;->zza:I

    const/16 v2, 0x1c

    const/4 v3, 0x5

    const/4 v4, 0x6

    const/4 v5, 0x4

    const/4 v6, 0x7

    const/4 v7, 0x2

    const/4 v8, 0x3

    const/4 v9, -0x1

    const/4 v10, 0x1

    if-gt v1, v2, :cond_2

    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    .line 3
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sparse-switch v11, :sswitch_data_0

    goto :goto_0

    .line 5
    :sswitch_0
    const-string v11, "machuca"

    .line 3
    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    move v1, v3

    goto :goto_1

    :sswitch_1
    const-string v11, "once"

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    move v1, v4

    goto :goto_1

    :sswitch_2
    const-string v11, "magnolia"

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    move v1, v5

    goto :goto_1

    :sswitch_3
    const-string v11, "aquaman"

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    move v1, v0

    goto :goto_1

    :sswitch_4
    const-string v11, "oneday"

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    move v1, v6

    goto :goto_1

    :sswitch_5
    const-string v11, "dangalUHD"

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    move v1, v7

    goto :goto_1

    :sswitch_6
    const-string v11, "dangalFHD"

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    move v1, v8

    goto :goto_1

    :sswitch_7
    const-string v11, "dangal"

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    move v1, v10

    goto :goto_1

    :cond_1
    :goto_0
    move v1, v9

    :goto_1
    packed-switch v1, :pswitch_data_0

    goto :goto_3

    :goto_2
    :pswitch_0
    move v0, v10

    goto/16 :goto_8

    :cond_2
    :goto_3
    :try_start_1
    sget v1, Lcom/google/android/gms/internal/ads/zzeu;->zza:I

    const/16 v11, 0x1b

    if-gt v1, v11, :cond_3

    const-string v12, "HWEML"

    sget-object v13, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    .line 4
    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_3

    goto :goto_2

    .line 8
    :cond_3
    sget-object v12, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 5
    invoke-virtual {v12}, Ljava/lang/String;->hashCode()I

    move-result v13
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/16 v14, 0x8

    sparse-switch v13, :sswitch_data_1

    goto/16 :goto_4

    .line 6
    :sswitch_8
    const-string v13, "AFTEUFF014"

    .line 5
    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_4

    move v12, v3

    goto :goto_5

    :sswitch_9
    const-string v13, "AFTSO001"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_4

    move v12, v14

    goto :goto_5

    :sswitch_a
    const-string v13, "AFTEU014"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_4

    move v12, v5

    goto :goto_5

    :sswitch_b
    const-string v13, "AFTEU011"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_4

    move v12, v8

    goto :goto_5

    :sswitch_c
    const-string v13, "AFTR"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_4

    move v12, v7

    goto :goto_5

    :sswitch_d
    const-string v13, "AFTN"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_4

    move v12, v10

    goto :goto_5

    :sswitch_e
    const-string v13, "AFTA"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_4

    move v12, v0

    goto :goto_5

    :sswitch_f
    const-string v13, "AFTKMST12"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_4

    move v12, v6

    goto :goto_5

    :sswitch_10
    const-string v13, "AFTJMST12"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_4

    move v12, v4

    goto :goto_5

    :cond_4
    :goto_4
    move v12, v9

    :goto_5
    packed-switch v12, :pswitch_data_1

    const/16 v12, 0x1a

    if-gt v1, v12, :cond_7

    :try_start_2
    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    .line 6
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v13
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    sparse-switch v13, :sswitch_data_2

    goto/16 :goto_6

    .line 7
    :sswitch_11
    const-string v2, "HWWAS-H"

    .line 6
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v2, 0x42

    goto/16 :goto_7

    :sswitch_12
    const-string v2, "HWVNS-H"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v2, 0x41

    goto/16 :goto_7

    :sswitch_13
    const-string v2, "ELUGA_Prim"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v2, 0x21

    goto/16 :goto_7

    :sswitch_14
    const-string v2, "ELUGA_Note"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v2, 0x20

    goto/16 :goto_7

    :sswitch_15
    const-string v2, "ASUS_X00AD_2"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v2, 0xe

    goto/16 :goto_7

    :sswitch_16
    const-string v2, "HWCAM-H"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v2, 0x40

    goto/16 :goto_7

    :sswitch_17
    const-string v2, "HWBLN-H"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v2, 0x3f

    goto/16 :goto_7

    :sswitch_18
    const-string v2, "DM-01K"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v2, 0x1d

    goto/16 :goto_7

    :sswitch_19
    const-string v2, "BRAVIA_ATV3_4K"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v2, 0x13

    goto/16 :goto_7

    :sswitch_1a
    const-string v2, "Infinix-X572"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v2, 0x45

    goto/16 :goto_7

    :sswitch_1b
    const-string v2, "PB2-670M"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v2, 0x64

    goto/16 :goto_7

    :sswitch_1c
    const-string v2, "santoni"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v2, 0x75

    goto/16 :goto_7

    :sswitch_1d
    const-string v2, "iball8735_9806"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v2, 0x44

    goto/16 :goto_7

    :sswitch_1e
    const-string v2, "CPH1715"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v2, 0x18

    goto/16 :goto_7

    :sswitch_1f
    const-string v2, "CPH1609"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v2, 0x17

    goto/16 :goto_7

    :sswitch_20
    const-string v2, "woods_f"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v2, 0x85

    goto/16 :goto_7

    :sswitch_21
    const-string v2, "htc_e56ml_dtul"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v2, 0x3d

    goto/16 :goto_7

    :sswitch_22
    const-string v2, "EverStar_S"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v2, 0x23

    goto/16 :goto_7

    :sswitch_23
    const-string v2, "hwALE-H"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v2, 0x3e

    goto/16 :goto_7

    :sswitch_24
    const-string v2, "itel_S41"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v2, 0x47

    goto/16 :goto_7

    :sswitch_25
    const-string v2, "LS-5017"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v2, 0x4e

    goto/16 :goto_7

    :sswitch_26
    const-string v2, "panell_d"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v2, 0x60

    goto/16 :goto_7

    :sswitch_27
    const-string v2, "j2xlteins"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v2, 0x48

    goto/16 :goto_7

    :sswitch_28
    const-string v2, "A7000plus"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v2, 0xa

    goto/16 :goto_7

    :sswitch_29
    const-string v2, "manning"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v2, 0x51

    goto/16 :goto_7

    :sswitch_2a
    const-string v2, "GIONEE_WBL7519"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v2, 0x3b

    goto/16 :goto_7

    :sswitch_2b
    const-string v2, "GIONEE_WBL7365"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v2, 0x3a

    goto/16 :goto_7

    :sswitch_2c
    const-string v2, "GIONEE_WBL5708"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v2, 0x39

    goto/16 :goto_7

    :sswitch_2d
    const-string v2, "QM16XE_U"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v2, 0x72

    goto/16 :goto_7

    :sswitch_2e
    const-string v2, "Pixi5-10_4G"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v2, 0x6a

    goto/16 :goto_7

    :sswitch_2f
    const-string v2, "TB3-850M"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v2, 0x7d

    goto/16 :goto_7

    :sswitch_30
    const-string v2, "TB3-850F"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v2, 0x7c

    goto/16 :goto_7

    :sswitch_31
    const-string v2, "TB3-730X"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v2, 0x7b

    goto/16 :goto_7

    :sswitch_32
    const-string v2, "TB3-730F"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v2, 0x7a

    goto/16 :goto_7

    :sswitch_33
    const-string v2, "A7020a48"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v2, 0xc

    goto/16 :goto_7

    :sswitch_34
    const-string v2, "A7010a48"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v2, 0xb

    goto/16 :goto_7

    :sswitch_35
    const-string v2, "griffin"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v2, 0x3c

    goto/16 :goto_7

    :sswitch_36
    const-string v2, "marino_f"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v2, 0x52

    goto/16 :goto_7

    :sswitch_37
    const-string v2, "CPY83_I00"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v2, 0x19

    goto/16 :goto_7

    :sswitch_38
    const-string v2, "A2016a40"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    move v2, v14

    goto/16 :goto_7

    :sswitch_39
    const-string v2, "le_x6"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v2, 0x4d

    goto/16 :goto_7

    :sswitch_3a
    const-string v2, "l5460"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v2, 0x4c

    goto/16 :goto_7

    :sswitch_3b
    const-string v2, "i9031"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v2, 0x43

    goto/16 :goto_7

    :sswitch_3c
    const-string v2, "X3_HK"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v2, 0x87

    goto/16 :goto_7

    :sswitch_3d
    const-string v2, "V23GB"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v2, 0x80

    goto/16 :goto_7

    :sswitch_3e
    const-string v2, "Q4310"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v2, 0x70

    goto/16 :goto_7

    :sswitch_3f
    const-string v2, "Q4260"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v2, 0x6e

    goto/16 :goto_7

    :sswitch_40
    const-string v2, "PRO7S"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v2, 0x6c

    goto/16 :goto_7

    :sswitch_41
    const-string v2, "F3311"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v2, 0x30

    goto/16 :goto_7

    :sswitch_42
    const-string v2, "F3215"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v2, 0x2f

    goto/16 :goto_7

    :sswitch_43
    const-string v2, "F3213"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v2, 0x2e

    goto/16 :goto_7

    :sswitch_44
    const-string v2, "F3211"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v2, 0x2d

    goto/16 :goto_7

    :sswitch_45
    const-string v2, "F3116"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v2, 0x2c

    goto/16 :goto_7

    :sswitch_46
    const-string v2, "F3113"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v2, 0x2b

    goto/16 :goto_7

    :sswitch_47
    const-string v2, "F3111"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v2, 0x2a

    goto/16 :goto_7

    :sswitch_48
    const-string v2, "E5643"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v2, 0x1e

    goto/16 :goto_7

    :sswitch_49
    const-string v2, "A1601"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    move v2, v6

    goto/16 :goto_7

    :sswitch_4a
    const-string v2, "Aura_Note_2"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v2, 0xf

    goto/16 :goto_7

    :sswitch_4b
    const-string v2, "602LV"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    move v2, v5

    goto/16 :goto_7

    :sswitch_4c
    const-string v2, "601LV"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    move v2, v8

    goto/16 :goto_7

    :sswitch_4d
    const-string v2, "MEIZU_M5"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v2, 0x53

    goto/16 :goto_7

    :sswitch_4e
    const-string v2, "p212"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v2, 0x5c

    goto/16 :goto_7

    :sswitch_4f
    const-string v2, "mido"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v2, 0x55

    goto/16 :goto_7

    :sswitch_50
    const-string v2, "kate"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v2, 0x4b

    goto/16 :goto_7

    :sswitch_51
    const-string v2, "fugu"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v2, 0x32

    goto/16 :goto_7

    :sswitch_52
    const-string v2, "XE2X"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v2, 0x88

    goto/16 :goto_7

    :sswitch_53
    const-string v2, "Q427"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v2, 0x6f

    goto/16 :goto_7

    :sswitch_54
    const-string v2, "Q350"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v2, 0x6d

    goto/16 :goto_7

    :sswitch_55
    const-string v2, "P681"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v2, 0x5d

    goto/16 :goto_7

    :sswitch_56
    const-string v2, "F04J"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v2, 0x29

    goto/16 :goto_7

    :sswitch_57
    const-string v2, "F04H"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v2, 0x28

    goto/16 :goto_7

    :sswitch_58
    const-string v2, "F03H"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v2, 0x27

    goto/16 :goto_7

    :sswitch_59
    const-string v2, "F02H"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v2, 0x26

    goto/16 :goto_7

    :sswitch_5a
    const-string v2, "F01J"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v2, 0x25

    goto/16 :goto_7

    :sswitch_5b
    const-string v2, "F01H"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v2, 0x24

    goto/16 :goto_7

    :sswitch_5c
    const-string v2, "1714"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    move v2, v7

    goto/16 :goto_7

    :sswitch_5d
    const-string v2, "1713"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    move v2, v10

    goto/16 :goto_7

    :sswitch_5e
    const-string v2, "1601"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    move v2, v0

    goto/16 :goto_7

    :sswitch_5f
    const-string v2, "flo"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v2, 0x31

    goto/16 :goto_7

    :sswitch_60
    const-string v3, "deb"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    goto/16 :goto_7

    :sswitch_61
    const-string v2, "cv3"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    move v2, v11

    goto/16 :goto_7

    :sswitch_62
    const-string v2, "cv1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    move v2, v12

    goto/16 :goto_7

    :sswitch_63
    const-string v2, "Z80"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v2, 0x8b

    goto/16 :goto_7

    :sswitch_64
    const-string v2, "QX1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v2, 0x73

    goto/16 :goto_7

    :sswitch_65
    const-string v2, "PLE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v2, 0x6b

    goto/16 :goto_7

    :sswitch_66
    const-string v2, "P85"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v2, 0x5e

    goto/16 :goto_7

    :sswitch_67
    const-string v2, "MX6"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v2, 0x56

    goto/16 :goto_7

    :sswitch_68
    const-string v2, "M5c"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v2, 0x50

    goto/16 :goto_7

    :sswitch_69
    const-string v2, "M04"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v2, 0x4f

    goto/16 :goto_7

    :sswitch_6a
    const-string v2, "JGZ"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v2, 0x49

    goto/16 :goto_7

    :sswitch_6b
    const-string v2, "mh"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v2, 0x54

    goto/16 :goto_7

    :sswitch_6c
    const-string v2, "b5"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v2, 0x10

    goto/16 :goto_7

    :sswitch_6d
    const-string v2, "V5"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v2, 0x81

    goto/16 :goto_7

    :sswitch_6e
    const-string v2, "V1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v2, 0x7f

    goto/16 :goto_7

    :sswitch_6f
    const-string v2, "Q5"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v2, 0x71

    goto/16 :goto_7

    :sswitch_70
    const-string v2, "C1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v2, 0x14

    goto/16 :goto_7

    :sswitch_71
    const-string v2, "woods_fn"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v2, 0x86

    goto/16 :goto_7

    :sswitch_72
    const-string v2, "ELUGA_A3_Pro"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v2, 0x1f

    goto/16 :goto_7

    :sswitch_73
    const-string v2, "Z12_PRO"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v2, 0x8a

    goto/16 :goto_7

    :sswitch_74
    const-string v2, "BLACK-1X"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v2, 0x11

    goto/16 :goto_7

    :sswitch_75
    const-string v2, "taido_row"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v2, 0x79

    goto/16 :goto_7

    :sswitch_76
    const-string v2, "Pixi4-7_3G"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v2, 0x69

    goto/16 :goto_7

    :sswitch_77
    const-string v2, "GIONEE_GBL7360"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v2, 0x35

    goto/16 :goto_7

    :sswitch_78
    const-string v2, "GiONEE_CBL7513"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v2, 0x33

    goto/16 :goto_7

    :sswitch_79
    const-string v2, "OnePlus5T"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v2, 0x5b

    goto/16 :goto_7

    :sswitch_7a
    const-string v2, "whyred"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v2, 0x84

    goto/16 :goto_7

    :sswitch_7b
    const-string v2, "watson"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v2, 0x83

    goto/16 :goto_7

    :sswitch_7c
    const-string v2, "SVP-DTV15"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v2, 0x77

    goto/16 :goto_7

    :sswitch_7d
    const-string v2, "A7000-a"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v2, 0x9

    goto/16 :goto_7

    :sswitch_7e
    const-string v2, "nicklaus_f"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v2, 0x58

    goto/16 :goto_7

    :sswitch_7f
    const-string v2, "tcl_eu"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v2, 0x7e

    goto/16 :goto_7

    :sswitch_80
    const-string v2, "ELUGA_Ray_X"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v2, 0x22

    goto/16 :goto_7

    :sswitch_81
    const-string v2, "s905x018"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v2, 0x78

    goto/16 :goto_7

    :sswitch_82
    const-string v2, "A10-70L"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    move v2, v4

    goto/16 :goto_7

    :sswitch_83
    const-string v2, "A10-70F"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    move v2, v3

    goto/16 :goto_7

    :sswitch_84
    const-string v2, "namath"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v2, 0x57

    goto/16 :goto_7

    :sswitch_85
    const-string v2, "Slate_Pro"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v2, 0x76

    goto/16 :goto_7

    :sswitch_86
    const-string v2, "iris60"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v2, 0x46

    goto/16 :goto_7

    :sswitch_87
    const-string v2, "BRAVIA_ATV2"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v2, 0x12

    goto/16 :goto_7

    :sswitch_88
    const-string v2, "GiONEE_GBL7319"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v2, 0x34

    goto/16 :goto_7

    :sswitch_89
    const-string v2, "panell_dt"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v2, 0x63

    goto/16 :goto_7

    :sswitch_8a
    const-string v2, "panell_ds"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v2, 0x62

    goto/16 :goto_7

    :sswitch_8b
    const-string v2, "panell_dl"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v2, 0x61

    goto/16 :goto_7

    :sswitch_8c
    const-string v2, "vernee_M5"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v2, 0x82

    goto/16 :goto_7

    :sswitch_8d
    const-string v2, "pacificrim"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v2, 0x5f

    goto/16 :goto_7

    :sswitch_8e
    const-string v2, "Phantom6"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v2, 0x68

    goto/16 :goto_7

    :sswitch_8f
    const-string v2, "ComioS1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v2, 0x15

    goto/16 :goto_7

    :sswitch_90
    const-string v2, "XT1663"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v2, 0x89

    goto/16 :goto_7

    :sswitch_91
    const-string v2, "RAIJIN"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v2, 0x74

    goto/16 :goto_7

    :sswitch_92
    const-string v2, "AquaPowerM"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v2, 0xd

    goto/16 :goto_7

    :sswitch_93
    const-string v2, "PGN611"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v2, 0x67

    goto/16 :goto_7

    :sswitch_94
    const-string v2, "PGN610"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v2, 0x66

    goto :goto_7

    :sswitch_95
    const-string v2, "PGN528"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v2, 0x65

    goto :goto_7

    :sswitch_96
    const-string v2, "NX573J"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v2, 0x5a

    goto :goto_7

    :sswitch_97
    const-string v2, "NX541J"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v2, 0x59

    goto :goto_7

    :sswitch_98
    const-string v2, "CP8676_I02"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v2, 0x16

    goto :goto_7

    :sswitch_99
    const-string v2, "K50a40"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v2, 0x4a

    goto :goto_7

    :sswitch_9a
    const-string v2, "GIONEE_SWW1631"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v2, 0x38

    goto :goto_7

    :sswitch_9b
    const-string v2, "GIONEE_SWW1627"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v2, 0x37

    goto :goto_7

    :sswitch_9c
    const-string v2, "GIONEE_SWW1609"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v2, 0x36

    goto :goto_7

    :cond_5
    :goto_6
    move v2, v9

    :goto_7
    packed-switch v2, :pswitch_data_2

    :try_start_3
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 7
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const v3, -0x236fe21d

    if-eq v2, v3, :cond_6

    goto :goto_8

    :cond_6
    const-string v2, "JSN-L21"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    goto/16 :goto_2

    .line 4
    :cond_7
    :goto_8
    :try_start_4
    sput-boolean v0, Lcom/google/android/gms/internal/ads/zzaal;->zzd:Z

    sput-boolean v10, Lcom/google/android/gms/internal/ads/zzaal;->zzc:Z

    .line 8
    :cond_8
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    sget-boolean p0, Lcom/google/android/gms/internal/ads/zzaal;->zzd:Z

    return p0

    :catchall_0
    move-exception v0

    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x4fd0ea5f -> :sswitch_7
        -0x48b8f57f -> :sswitch_6
        -0x48b8bd30 -> :sswitch_5
        -0x3c588c8a -> :sswitch_4
        -0x2d5172e2 -> :sswitch_3
        -0x3de1850 -> :sswitch_2
        0x341e81 -> :sswitch_1
        0x31316ffa -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :sswitch_data_1
    .sparse-switch
        -0x14d76e6c -> :sswitch_10
        -0x132295cd -> :sswitch_f
        0x1e9d52 -> :sswitch_e
        0x1e9d5f -> :sswitch_d
        0x1e9d63 -> :sswitch_c
        0x6a6b6031 -> :sswitch_b
        0x6a6b6034 -> :sswitch_a
        0x6b2deee6 -> :sswitch_9
        0x7e53ab34 -> :sswitch_8
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :sswitch_data_2
    .sparse-switch
        -0x7fd6c3bd -> :sswitch_9c
        -0x7fd6c381 -> :sswitch_9b
        -0x7fd6c368 -> :sswitch_9a
        -0x7d026749 -> :sswitch_99
        -0x78929d6a -> :sswitch_98
        -0x75f50a1e -> :sswitch_97
        -0x75f4fe9d -> :sswitch_96
        -0x736f875c -> :sswitch_95
        -0x736f83c2 -> :sswitch_94
        -0x736f83c1 -> :sswitch_93
        -0x7327ce1c -> :sswitch_92
        -0x705c574b -> :sswitch_91
        -0x651ebb62 -> :sswitch_90
        -0x6423293b -> :sswitch_8f
        -0x604f5117 -> :sswitch_8e
        -0x5f691e13 -> :sswitch_8d
        -0x5ca40cc4 -> :sswitch_8c
        -0x58520ec1 -> :sswitch_8b
        -0x58520eba -> :sswitch_8a
        -0x58520eb9 -> :sswitch_89
        -0x4eaed329 -> :sswitch_88
        -0x4892fb4f -> :sswitch_87
        -0x465b3df3 -> :sswitch_86
        -0x43e6c939 -> :sswitch_85
        -0x3ec0fcc5 -> :sswitch_84
        -0x3b33cca0 -> :sswitch_83
        -0x3b33cc9a -> :sswitch_82
        -0x398ae3f6 -> :sswitch_81
        -0x391f0fb4 -> :sswitch_80
        -0x346837ae -> :sswitch_7f
        -0x323788e3 -> :sswitch_7e
        -0x30f57652 -> :sswitch_7d
        -0x2f88a116 -> :sswitch_7c
        -0x2f61ed98 -> :sswitch_7b
        -0x2efd0837 -> :sswitch_7a
        -0x2e9e9441 -> :sswitch_79
        -0x2247b8b1 -> :sswitch_78
        -0x1f0fa2b7 -> :sswitch_77
        -0x19af3b41 -> :sswitch_76
        -0x114fad3e -> :sswitch_75
        -0x10dae90b -> :sswitch_74
        -0x1084b7b7 -> :sswitch_73
        -0xa5988e9 -> :sswitch_72
        -0x35f9fbf -> :sswitch_71
        0x84e -> :sswitch_70
        0xa04 -> :sswitch_6f
        0xa9b -> :sswitch_6e
        0xa9f -> :sswitch_6d
        0xc13 -> :sswitch_6c
        0xd9b -> :sswitch_6b
        0x11ebd -> :sswitch_6a
        0x12711 -> :sswitch_69
        0x127db -> :sswitch_68
        0x12beb -> :sswitch_67
        0x1334d -> :sswitch_66
        0x135c9 -> :sswitch_65
        0x13aea -> :sswitch_64
        0x158d2 -> :sswitch_63
        0x1821e -> :sswitch_62
        0x18220 -> :sswitch_61
        0x18401 -> :sswitch_60
        0x18c69 -> :sswitch_5f
        0x1716e6 -> :sswitch_5e
        0x171ac8 -> :sswitch_5d
        0x171ac9 -> :sswitch_5c
        0x208c61 -> :sswitch_5b
        0x208c63 -> :sswitch_5a
        0x208c80 -> :sswitch_59
        0x208c9f -> :sswitch_58
        0x208cbe -> :sswitch_57
        0x208cc0 -> :sswitch_56
        0x252f5f -> :sswitch_55
        0x25981d -> :sswitch_54
        0x259b88 -> :sswitch_53
        0x290a13 -> :sswitch_52
        0x3021fd -> :sswitch_51
        0x321e47 -> :sswitch_50
        0x332327 -> :sswitch_4f
        0x33ab63 -> :sswitch_4e
        0x27691fb -> :sswitch_4d
        0x30f8881 -> :sswitch_4c
        0x30f8c42 -> :sswitch_4b
        0x349f581 -> :sswitch_4a
        0x3ab0ea7 -> :sswitch_49
        0x3e53ea5 -> :sswitch_48
        0x3f25a44 -> :sswitch_47
        0x3f25a46 -> :sswitch_46
        0x3f25a49 -> :sswitch_45
        0x3f25e05 -> :sswitch_44
        0x3f25e07 -> :sswitch_43
        0x3f25e09 -> :sswitch_42
        0x3f261c6 -> :sswitch_41
        0x48dce49 -> :sswitch_40
        0x48dd589 -> :sswitch_3f
        0x48dd8af -> :sswitch_3e
        0x4d36832 -> :sswitch_3d
        0x4f0b0e7 -> :sswitch_3c
        0x5e2479e -> :sswitch_3b
        0x60acc05 -> :sswitch_3a
        0x6214744 -> :sswitch_39
        0x9d91379 -> :sswitch_38
        0xadc0551 -> :sswitch_37
        0xea056b3 -> :sswitch_36
        0x1121dbc3 -> :sswitch_35
        0x1255818c -> :sswitch_34
        0x1263990d -> :sswitch_33
        0x12d90f3a -> :sswitch_32
        0x12d90f4c -> :sswitch_31
        0x12d98b1b -> :sswitch_30
        0x12d98b22 -> :sswitch_2f
        0x1844c711 -> :sswitch_2e
        0x1e3e8044 -> :sswitch_2d
        0x2f5336ed -> :sswitch_2c
        0x2f54115e -> :sswitch_2b
        0x2f541849 -> :sswitch_2a
        0x31cf010e -> :sswitch_29
        0x36ad82f4 -> :sswitch_28
        0x391a0b61 -> :sswitch_27
        0x3f3728cd -> :sswitch_26
        0x448ec687 -> :sswitch_25
        0x46260f63 -> :sswitch_24
        0x4c505106 -> :sswitch_23
        0x4de67084 -> :sswitch_22
        0x506ac5a9 -> :sswitch_21
        0x5abad9cd -> :sswitch_20
        0x64d2e6e9 -> :sswitch_1f
        0x64d2eac5 -> :sswitch_1e
        0x65e4085b -> :sswitch_1d
        0x6f373556 -> :sswitch_1c
        0x719f1dcb -> :sswitch_1b
        0x75d9a0f0 -> :sswitch_1a
        0x7796d144 -> :sswitch_19
        0x785bcb26 -> :sswitch_18
        0x78fc0e50 -> :sswitch_17
        0x790521fb -> :sswitch_16
        0x7933207f -> :sswitch_15
        0x7a05a409 -> :sswitch_14
        0x7a0696bd -> :sswitch_13
        0x7a16dfe7 -> :sswitch_12
        0x7a1f0e95 -> :sswitch_11
    .end sparse-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method protected static final zzaV(Lcom/google/android/gms/internal/ads/zzsz;)Z
    .locals 2

    .line 1
    sget v0, Lcom/google/android/gms/internal/ads/zzeu;->zza:I

    const/16 v1, 0x23

    if-lt v0, v1, :cond_0

    iget-boolean p0, p0, Lcom/google/android/gms/internal/ads/zzsz;->zzh:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private final zzaW(Lcom/google/android/gms/internal/ads/zzsz;)Landroid/view/Surface;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaal;->zzp:Lcom/google/android/gms/internal/ads/zzabv;

    const/4 v1, 0x0

    if-nez v0, :cond_4

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaal;->zzs:Landroid/view/Surface;

    if-eqz v0, :cond_0

    return-object v0

    .line 3
    :cond_0
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzaal;->zzaV(Lcom/google/android/gms/internal/ads/zzsz;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-object v1

    .line 4
    :cond_1
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzaal;->zzaT(Lcom/google/android/gms/internal/ads/zzsz;)Z

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdc;->zzf(Z)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaal;->zzt:Lcom/google/android/gms/internal/ads/zzaao;

    if-eqz v0, :cond_2

    iget-boolean v1, p1, Lcom/google/android/gms/internal/ads/zzsz;->zzf:Z

    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/zzaao;->zza:Z

    if-eq v0, v1, :cond_2

    .line 5
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzaal;->zzaZ()V

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaal;->zzt:Lcom/google/android/gms/internal/ads/zzaao;

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaal;->zze:Landroid/content/Context;

    iget-boolean p1, p1, Lcom/google/android/gms/internal/ads/zzsz;->zzf:Z

    .line 6
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzaao;->zza(Landroid/content/Context;Z)Lcom/google/android/gms/internal/ads/zzaao;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaal;->zzt:Lcom/google/android/gms/internal/ads/zzaao;

    :cond_3
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaal;->zzt:Lcom/google/android/gms/internal/ads/zzaao;

    return-object p1

    :cond_4
    const/4 p1, 0x0

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzdc;->zzf(Z)V

    .line 2
    throw v1
.end method

.method private static zzaX(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzti;Lcom/google/android/gms/internal/ads/zzz;ZZ)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zztn;
        }
    .end annotation

    .line 1
    iget-object v0, p2, Lcom/google/android/gms/internal/ads/zzz;->zzo:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfww;->zzn()Lcom/google/android/gms/internal/ads/zzfww;

    move-result-object p0

    return-object p0

    .line 3
    :cond_0
    sget v1, Lcom/google/android/gms/internal/ads/zzeu;->zza:I

    const/16 v2, 0x1a

    if-lt v1, v2, :cond_1

    const-string v1, "video/dolby-vision"

    .line 4
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzaai;->zza(Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_1

    .line 6
    invoke-static {p1, p2, p3, p4}, Lcom/google/android/gms/internal/ads/zztt;->zzc(Lcom/google/android/gms/internal/ads/zzti;Lcom/google/android/gms/internal/ads/zzz;ZZ)Ljava/util/List;

    move-result-object p0

    .line 7
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    return-object p0

    .line 8
    :cond_1
    invoke-static {p1, p2, p3, p4}, Lcom/google/android/gms/internal/ads/zztt;->zze(Lcom/google/android/gms/internal/ads/zzti;Lcom/google/android/gms/internal/ads/zzz;ZZ)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private final zzaY()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaal;->zzG:Lcom/google/android/gms/internal/ads/zzcd;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaal;->zzg:Lcom/google/android/gms/internal/ads/zzabr;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzabr;->zzt(Lcom/google/android/gms/internal/ads/zzcd;)V

    :cond_0
    return-void
.end method

.method private final zzaZ()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaal;->zzt:Lcom/google/android/gms/internal/ads/zzaao;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzaao;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzaal;->zzt:Lcom/google/android/gms/internal/ads/zzaao;

    :cond_0
    return-void
.end method

.method public static zzad(Lcom/google/android/gms/internal/ads/zzsz;Lcom/google/android/gms/internal/ads/zzz;)I
    .locals 11

    .line 1
    iget v0, p1, Lcom/google/android/gms/internal/ads/zzz;->zzv:I

    .line 2
    iget v1, p1, Lcom/google/android/gms/internal/ads/zzz;->zzw:I

    const/4 v2, -0x1

    if-eq v0, v2, :cond_7

    if-ne v1, v2, :cond_0

    goto/16 :goto_5

    .line 3
    :cond_0
    iget-object v3, p1, Lcom/google/android/gms/internal/ads/zzz;->zzo:Ljava/lang/String;

    .line 14
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    move-object v4, v3

    check-cast v4, Ljava/lang/String;

    const-string v4, "video/dolby-vision"

    .line 4
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x2

    const/4 v6, 0x1

    const-string v7, "video/avc"

    const-string v8, "video/av01"

    const-string v9, "video/hevc"

    if-eqz v4, :cond_4

    .line 5
    sget v3, Lcom/google/android/gms/internal/ads/zztt;->zza:I

    .line 6
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzdh;->zza(Lcom/google/android/gms/internal/ads/zzz;)Landroid/util/Pair;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 7
    iget-object p1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/16 v3, 0x200

    if-eq p1, v3, :cond_2

    if-eq p1, v6, :cond_2

    if-ne p1, v5, :cond_1

    goto :goto_0

    :cond_1
    const/16 v3, 0x400

    if-ne p1, v3, :cond_3

    move-object v3, v8

    goto :goto_1

    :cond_2
    :goto_0
    move-object v3, v7

    goto :goto_1

    :cond_3
    move-object v3, v9

    :cond_4
    :goto_1
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result p1

    const/4 v4, 0x3

    const/4 v10, 0x4

    sparse-switch p1, :sswitch_data_0

    goto :goto_2

    .line 13
    :sswitch_0
    const-string p1, "video/x-vnd.on2.vp9"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    const/4 v5, 0x6

    goto :goto_3

    :sswitch_1
    const-string p1, "video/x-vnd.on2.vp8"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    move v5, v4

    goto :goto_3

    :sswitch_2
    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    const/4 v5, 0x5

    goto :goto_3

    :sswitch_3
    const-string p1, "video/mp4v-es"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    move v5, v6

    goto :goto_3

    :sswitch_4
    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    move v5, v10

    goto :goto_3

    :sswitch_5
    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    goto :goto_3

    :sswitch_6
    const-string p1, "video/3gpp"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    const/4 v5, 0x0

    goto :goto_3

    :cond_5
    :goto_2
    move v5, v2

    :goto_3
    packed-switch v5, :pswitch_data_0

    goto :goto_5

    :pswitch_0
    const/16 v10, 0x8

    goto :goto_4

    .line 7
    :pswitch_1
    const-string p1, "BRAVIA 4K 2015"

    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 8
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    const-string p1, "Amazon"

    sget-object v3, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    .line 9
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    const-string p1, "KFSOWI"

    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 10
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    const-string p1, "AFTS"

    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 11
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    iget-boolean p0, p0, Lcom/google/android/gms/internal/ads/zzsz;->zzf:Z

    if-nez p0, :cond_7

    .line 12
    :cond_6
    sget p0, Lcom/google/android/gms/internal/ads/zzeu;->zza:I

    add-int/lit8 v0, v0, 0xf

    add-int/lit8 v1, v1, 0xf

    div-int/lit8 v0, v0, 0x10

    div-int/lit8 v1, v1, 0x10

    mul-int/2addr v0, v1

    mul-int/lit16 v0, v0, 0x300

    div-int/2addr v0, v10

    return v0

    :pswitch_2
    mul-int/2addr v0, v1

    mul-int/2addr v0, v4

    div-int/2addr v0, v10

    const/high16 p0, 0x200000

    .line 13
    invoke-static {p0, v0}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0

    :goto_4
    :pswitch_3
    mul-int/2addr v0, v1

    mul-int/2addr v0, v4

    .line 12
    div-int/2addr v0, v10

    return v0

    :cond_7
    :goto_5
    return v2

    :sswitch_data_0
    .sparse-switch
        -0x63306f58 -> :sswitch_6
        -0x631b55f6 -> :sswitch_5
        -0x63185e82 -> :sswitch_4
        0x46cdc642 -> :sswitch_3
        0x4f62373a -> :sswitch_2
        0x5f50bed8 -> :sswitch_1
        0x5f50bed9 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected static zzae(Lcom/google/android/gms/internal/ads/zzsz;Lcom/google/android/gms/internal/ads/zzz;)I
    .locals 4

    .line 1
    iget v0, p1, Lcom/google/android/gms/internal/ads/zzz;->zzp:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 2
    iget-object p0, p1, Lcom/google/android/gms/internal/ads/zzz;->zzr:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v1, p1, :cond_0

    .line 3
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    array-length v3, v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    add-int/2addr v0, v2

    return v0

    .line 4
    :cond_1
    invoke-static {p0, p1}, Lcom/google/android/gms/internal/ads/zzaal;->zzad(Lcom/google/android/gms/internal/ads/zzsz;Lcom/google/android/gms/internal/ads/zzz;)I

    move-result p0

    return p0
.end method

.method private final zzba(Ljava/lang/Object;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzii;
        }
    .end annotation

    .line 1
    instance-of v0, p1, Landroid/view/Surface;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p1, Landroid/view/Surface;

    goto :goto_0

    :cond_0
    move-object p1, v1

    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaal;->zzs:Landroid/view/Surface;

    if-eq v0, p1, :cond_9

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaal;->zzs:Landroid/view/Surface;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaal;->zzp:Lcom/google/android/gms/internal/ads/zzabv;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaal;->zzi:Lcom/google/android/gms/internal/ads/zzabb;

    .line 2
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzabb;->zzk(Landroid/view/Surface;)V

    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzaal;->zzv:Z

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhx;->zzcT()I

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zztg;->zzaz()Lcom/google/android/gms/internal/ads/zzsw;

    move-result-object v2

    if-eqz v2, :cond_5

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzaal;->zzp:Lcom/google/android/gms/internal/ads/zzabv;

    if-nez v3, :cond_5

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zztg;->zzaB()Lcom/google/android/gms/internal/ads/zzsz;

    move-result-object v3

    .line 16
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    move-object v4, v3

    check-cast v4, Lcom/google/android/gms/internal/ads/zzsz;

    .line 4
    invoke-direct {p0, v3}, Lcom/google/android/gms/internal/ads/zzaal;->zzbb(Lcom/google/android/gms/internal/ads/zzsz;)Z

    move-result v4

    .line 5
    sget v5, Lcom/google/android/gms/internal/ads/zzeu;->zza:I

    if-eqz v4, :cond_4

    iget-boolean v4, p0, Lcom/google/android/gms/internal/ads/zzaal;->zzn:Z

    if-nez v4, :cond_4

    .line 8
    invoke-direct {p0, v3}, Lcom/google/android/gms/internal/ads/zzaal;->zzaW(Lcom/google/android/gms/internal/ads/zzsz;)Landroid/view/Surface;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 11
    invoke-interface {v2, v3}, Lcom/google/android/gms/internal/ads/zzsw;->zzp(Landroid/view/Surface;)V

    goto :goto_1

    .line 13
    :cond_2
    sget v3, Lcom/google/android/gms/internal/ads/zzeu;->zza:I

    const/16 v4, 0x23

    if-lt v3, v4, :cond_3

    .line 9
    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/zzsw;->zzi()V

    goto :goto_1

    .line 18
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 10
    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    .line 6
    :cond_4
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zztg;->zzaG()V

    .line 7
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zztg;->zzaD()V

    :cond_5
    :goto_1
    if-eqz p1, :cond_6

    .line 12
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzaal;->zzaY()V

    goto :goto_2

    .line 15
    :cond_6
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzaal;->zzG:Lcom/google/android/gms/internal/ads/zzcd;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaal;->zzp:Lcom/google/android/gms/internal/ads/zzabv;

    if-eqz p1, :cond_7

    check-cast p1, Lcom/google/android/gms/internal/ads/zzaas;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzaas;->zza:Lcom/google/android/gms/internal/ads/zzaax;

    .line 13
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzaax;->zzn()V

    :cond_7
    :goto_2
    const/4 p1, 0x2

    if-ne v0, p1, :cond_a

    .line 12
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaal;->zzp:Lcom/google/android/gms/internal/ads/zzabv;

    const/4 v0, 0x1

    if-eqz p1, :cond_8

    .line 14
    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/ads/zzabv;->zzd(Z)V

    return-void

    :cond_8
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaal;->zzi:Lcom/google/android/gms/internal/ads/zzabb;

    .line 15
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzabb;->zzc(Z)V

    return-void

    :cond_9
    if-eqz p1, :cond_a

    .line 17
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzaal;->zzaY()V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaal;->zzs:Landroid/view/Surface;

    if-eqz p1, :cond_a

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzaal;->zzv:Z

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaal;->zzg:Lcom/google/android/gms/internal/ads/zzabr;

    .line 18
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzabr;->zzq(Ljava/lang/Object;)V

    :cond_a
    return-void
.end method

.method private final zzbb(Lcom/google/android/gms/internal/ads/zzsz;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaal;->zzp:Lcom/google/android/gms/internal/ads/zzabv;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaal;->zzs:Landroid/view/Surface;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/Surface;->isValid()Z

    move-result v0

    if-nez v0, :cond_2

    .line 2
    :cond_0
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzaal;->zzaV(Lcom/google/android/gms/internal/ads/zzsz;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 3
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzaal;->zzaT(Lcom/google/android/gms/internal/ads/zzsz;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return p1

    :cond_2
    :goto_0
    const/4 p1, 0x1

    return p1
.end method


# virtual methods
.method protected final zzA()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaal;->zzp:Lcom/google/android/gms/internal/ads/zzabv;

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzaal;->zzf:Z

    if-eqz v1, :cond_0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzaas;

    .line 1
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzaas;->zza:Lcom/google/android/gms/internal/ads/zzaax;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzaax;->zzo()V

    :cond_0
    return-void
.end method

.method protected final zzC()V
    .locals 4

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v2, 0x0

    .line 1
    :try_start_0
    invoke-super {p0}, Lcom/google/android/gms/internal/ads/zztg;->zzC()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzaal;->zzq:Z

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzaal;->zzK:J

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzaal;->zzaZ()V

    return-void

    :catchall_0
    move-exception v3

    .line 1
    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzaal;->zzq:Z

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzaal;->zzK:J

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzaal;->zzaZ()V

    .line 3
    throw v3
.end method

.method protected final zzD()V
    .locals 3

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzaal;->zzz:I

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhx;->zzi()Lcom/google/android/gms/internal/ads/zzdg;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzdg;->zzb()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/android/gms/internal/ads/zzaal;->zzy:J

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/google/android/gms/internal/ads/zzaal;->zzC:J

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzaal;->zzD:I

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaal;->zzp:Lcom/google/android/gms/internal/ads/zzabv;

    if-eqz v0, :cond_0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzaas;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzaas;->zza:Lcom/google/android/gms/internal/ads/zzaax;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzaax;->zzd(Lcom/google/android/gms/internal/ads/zzaax;)Lcom/google/android/gms/internal/ads/zzabv;

    move-result-object v0

    .line 2
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzabv;->zzf()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaal;->zzi:Lcom/google/android/gms/internal/ads/zzabb;

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzabb;->zzd()V

    return-void
.end method

.method protected final zzE()V
    .locals 7

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzaal;->zzz:I

    const/4 v1, 0x0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhx;->zzi()Lcom/google/android/gms/internal/ads/zzdg;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzdg;->zzb()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/zzaal;->zzy:J

    sub-long v4, v2, v4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaal;->zzg:Lcom/google/android/gms/internal/ads/zzabr;

    iget v6, p0, Lcom/google/android/gms/internal/ads/zzaal;->zzz:I

    .line 2
    invoke-virtual {v0, v6, v4, v5}, Lcom/google/android/gms/internal/ads/zzabr;->zzn(IJ)V

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzaal;->zzz:I

    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/zzaal;->zzy:J

    :cond_0
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzaal;->zzD:I

    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzaal;->zzg:Lcom/google/android/gms/internal/ads/zzabr;

    iget-wide v3, p0, Lcom/google/android/gms/internal/ads/zzaal;->zzC:J

    .line 3
    invoke-virtual {v2, v3, v4, v0}, Lcom/google/android/gms/internal/ads/zzabr;->zzr(JI)V

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/zzaal;->zzC:J

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzaal;->zzD:I

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaal;->zzp:Lcom/google/android/gms/internal/ads/zzabv;

    if-eqz v0, :cond_2

    check-cast v0, Lcom/google/android/gms/internal/ads/zzaas;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzaas;->zza:Lcom/google/android/gms/internal/ads/zzaax;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzaax;->zzd(Lcom/google/android/gms/internal/ads/zzaax;)Lcom/google/android/gms/internal/ads/zzabv;

    move-result-object v0

    .line 4
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzabv;->zzg()V

    return-void

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaal;->zzi:Lcom/google/android/gms/internal/ads/zzabb;

    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzabb;->zze()V

    return-void
.end method

.method protected final zzF([Lcom/google/android/gms/internal/ads/zzz;JJLcom/google/android/gms/internal/ads/zzuy;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzii;
        }
    .end annotation

    .line 1
    invoke-super/range {p0 .. p6}, Lcom/google/android/gms/internal/ads/zztg;->zzF([Lcom/google/android/gms/internal/ads/zzz;JJLcom/google/android/gms/internal/ads/zzuy;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhx;->zzh()Lcom/google/android/gms/internal/ads/zzbl;

    move-result-object p1

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbl;->zzo()Z

    move-result p2

    if-eqz p2, :cond_0

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzaal;->zzL:J

    return-void

    .line 3
    :cond_0
    move-object p2, p6

    check-cast p2, Lcom/google/android/gms/internal/ads/zzuy;

    iget-object p2, p6, Lcom/google/android/gms/internal/ads/zzuy;->zza:Ljava/lang/Object;

    new-instance p3, Lcom/google/android/gms/internal/ads/zzbj;

    invoke-direct {p3}, Lcom/google/android/gms/internal/ads/zzbj;-><init>()V

    invoke-virtual {p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzbl;->zzn(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzbj;)Lcom/google/android/gms/internal/ads/zzbj;

    move-result-object p1

    iget-wide p1, p1, Lcom/google/android/gms/internal/ads/zzbj;->zzd:J

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzaal;->zzL:J

    return-void
.end method

.method public final zzM(FF)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzii;
        }
    .end annotation

    .line 1
    invoke-super {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zztg;->zzM(FF)V

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzaal;->zzp:Lcom/google/android/gms/internal/ads/zzabv;

    if-eqz p2, :cond_0

    check-cast p2, Lcom/google/android/gms/internal/ads/zzaas;

    iget-object p2, p2, Lcom/google/android/gms/internal/ads/zzaas;->zza:Lcom/google/android/gms/internal/ads/zzaax;

    .line 2
    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/zzaax;->zzl(Lcom/google/android/gms/internal/ads/zzaax;F)V

    return-void

    :cond_0
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzaal;->zzi:Lcom/google/android/gms/internal/ads/zzabb;

    .line 3
    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzabb;->zzl(F)V

    return-void
.end method

.method public final zzU()Ljava/lang/String;
    .locals 1

    const-string v0, "MediaCodecVideoRenderer"

    return-object v0
.end method

.method public final zzV(JJ)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzii;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaal;->zzp:Lcom/google/android/gms/internal/ads/zzabv;

    if-eqz v0, :cond_0

    :try_start_0
    check-cast v0, Lcom/google/android/gms/internal/ads/zzaas;

    .line 1
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzaas;->zza:Lcom/google/android/gms/internal/ads/zzaax;

    invoke-static {v0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/ads/zzaax;->zzk(Lcom/google/android/gms/internal/ads/zzaax;JJ)V
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzabu; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    iget-object p2, p1, Lcom/google/android/gms/internal/ads/zzabu;->zza:Lcom/google/android/gms/internal/ads/zzz;

    const/4 p3, 0x0

    const/16 p4, 0x1b59

    .line 2
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/ads/zzhx;->zzcW(Ljava/lang/Throwable;Lcom/google/android/gms/internal/ads/zzz;ZI)Lcom/google/android/gms/internal/ads/zzii;

    move-result-object p1

    .line 3
    throw p1

    .line 4
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/ads/zztg;->zzV(JJ)V

    return-void
.end method

.method public final zzW()Z
    .locals 2

    invoke-super {p0}, Lcom/google/android/gms/internal/ads/zztg;->zzW()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaal;->zzp:Lcom/google/android/gms/internal/ads/zzabv;

    if-nez v0, :cond_0

    const/4 v1, 0x1

    nop

    :cond_0
    return v1
.end method

.method public final zzX()Z
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/google/android/gms/internal/ads/zztg;->zzX()Z

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaal;->zzp:Lcom/google/android/gms/internal/ads/zzabv;

    if-eqz v1, :cond_0

    check-cast v1, Lcom/google/android/gms/internal/ads/zzaas;

    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzaas;->zza:Lcom/google/android/gms/internal/ads/zzaax;

    const/4 v1, 0x0

    .line 2
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzaax;->zzr(Lcom/google/android/gms/internal/ads/zzaax;Z)Z

    move-result v0

    return v0

    :cond_0
    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zztg;->zzaz()Lcom/google/android/gms/internal/ads/zzsw;

    move-result-object v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    return v0

    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaal;->zzi:Lcom/google/android/gms/internal/ads/zzabb;

    .line 3
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzabb;->zzm(Z)Z

    move-result v0

    return v0
.end method

.method protected final zzZ(FLcom/google/android/gms/internal/ads/zzz;[Lcom/google/android/gms/internal/ads/zzz;)F
    .locals 4

    const/4 p2, 0x0

    const/high16 v0, -0x40800000    # -1.0f

    move v1, v0

    .line 1
    :goto_0
    array-length v2, p3

    if-ge p2, v2, :cond_1

    aget-object v2, p3, p2

    .line 2
    iget v2, v2, Lcom/google/android/gms/internal/ads/zzz;->zzx:F

    cmpl-float v3, v2, v0

    if-eqz v3, :cond_0

    .line 3
    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    :cond_0
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    cmpl-float p2, v1, v0

    if-nez p2, :cond_2

    return v0

    :cond_2
    mul-float/2addr v1, p1

    return v1
.end method

.method protected final zzaA(Ljava/lang/Throwable;Lcom/google/android/gms/internal/ads/zzsz;)Lcom/google/android/gms/internal/ads/zzsy;
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzaah;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaal;->zzs:Landroid/view/Surface;

    invoke-direct {v0, p1, p2, v1}, Lcom/google/android/gms/internal/ads/zzaah;-><init>(Ljava/lang/Throwable;Lcom/google/android/gms/internal/ads/zzsz;Landroid/view/Surface;)V

    return-object v0
.end method

.method protected final zzaE(J)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zztg;->zzaE(J)V

    iget p1, p0, Lcom/google/android/gms/internal/ads/zzaal;->zzB:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzaal;->zzB:I

    return-void
.end method

.method protected final zzaF(Lcom/google/android/gms/internal/ads/zzhn;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzii;
        }
    .end annotation

    const/4 p1, 0x0

    .line 1
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzaal;->zzO:I

    iget p1, p0, Lcom/google/android/gms/internal/ads/zzaal;->zzB:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzaal;->zzB:I

    sget p1, Lcom/google/android/gms/internal/ads/zzeu;->zza:I

    return-void
.end method

.method protected final zzaH()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/google/android/gms/internal/ads/zztg;->zzaH()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaal;->zzl:Ljava/util/PriorityQueue;

    .line 2
    invoke-virtual {v0}, Ljava/util/PriorityQueue;->clear()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzaal;->zzN:Z

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzaal;->zzB:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzaal;->zzO:I

    return-void
.end method

.method protected final zzaN(Lcom/google/android/gms/internal/ads/zzz;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzii;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaal;->zzp:Lcom/google/android/gms/internal/ads/zzabv;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    :try_start_0
    check-cast v0, Lcom/google/android/gms/internal/ads/zzaas;

    .line 1
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzaas;->zza:Lcom/google/android/gms/internal/ads/zzaax;

    invoke-static {v0, p1, v1}, Lcom/google/android/gms/internal/ads/zzaax;->zzs(Lcom/google/android/gms/internal/ads/zzaax;Lcom/google/android/gms/internal/ads/zzz;I)Z

    move-result p1
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzabu; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception v0

    const/16 v2, 0x1b58

    .line 2
    invoke-virtual {p0, v0, p1, v1, v2}, Lcom/google/android/gms/internal/ads/zzhx;->zzcW(Ljava/lang/Throwable;Lcom/google/android/gms/internal/ads/zzz;ZI)Lcom/google/android/gms/internal/ads/zzii;

    move-result-object p1

    .line 3
    throw p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method protected final zzaO(Lcom/google/android/gms/internal/ads/zzhn;)Z
    .locals 6

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhx;->zzQ()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_7

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzhh;->zzh()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_3

    :cond_0
    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzaal;->zzL:J

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v2, v4

    if-eqz v0, :cond_7

    iget-wide v2, p1, Lcom/google/android/gms/internal/ads/zzhn;->zze:J

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zztg;->zzav()J

    move-result-wide v4

    sub-long/2addr v2, v4

    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/zzaal;->zzL:J

    sub-long/2addr v4, v2

    const-wide/32 v2, 0x186a0

    cmp-long v0, v4, v2

    if-lez v0, :cond_7

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzhn;->zzl()Z

    move-result v0

    if-nez v0, :cond_7

    iget-wide v2, p1, Lcom/google/android/gms/internal/ads/zzhn;->zze:J

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhx;->zzf()J

    move-result-wide v4

    cmp-long v0, v2, v4

    const/4 v2, 0x1

    if-gez v0, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    if-nez v0, :cond_3

    iget-boolean v3, p0, Lcom/google/android/gms/internal/ads/zzaal;->zzN:Z

    if-eqz v3, :cond_2

    goto :goto_1

    :cond_2
    return v1

    :cond_3
    :goto_1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzhh;->zze()Z

    move-result v3

    if-eqz v3, :cond_4

    return v1

    :cond_4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzhh;->zzi()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzhh;->zzb()V

    if-eqz v0, :cond_5

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaal;->zza:Lcom/google/android/gms/internal/ads/zzhy;

    .line 3
    iget v0, p1, Lcom/google/android/gms/internal/ads/zzhy;->zzd:I

    add-int/2addr v0, v2

    iput v0, p1, Lcom/google/android/gms/internal/ads/zzhy;->zzd:I

    goto :goto_2

    :cond_5
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzaal;->zzN:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaal;->zzl:Ljava/util/PriorityQueue;

    iget-wide v3, p1, Lcom/google/android/gms/internal/ads/zzhn;->zze:J

    .line 4
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z

    iget p1, p0, Lcom/google/android/gms/internal/ads/zzaal;->zzO:I

    add-int/2addr p1, v2

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzaal;->zzO:I

    :cond_6
    :goto_2
    return v2

    :cond_7
    :goto_3
    return v1
.end method

.method protected final zzaP(Lcom/google/android/gms/internal/ads/zzsz;)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzaal;->zzbb(Lcom/google/android/gms/internal/ads/zzsz;)Z

    move-result p1

    return p1
.end method

.method protected final zzaR(J)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaal;->zza:Lcom/google/android/gms/internal/ads/zzhy;

    iget-wide v1, v0, Lcom/google/android/gms/internal/ads/zzhy;->zzk:J

    add-long/2addr v1, p1

    iput-wide v1, v0, Lcom/google/android/gms/internal/ads/zzhy;->zzk:J

    iget v1, v0, Lcom/google/android/gms/internal/ads/zzhy;->zzl:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/google/android/gms/internal/ads/zzhy;->zzl:I

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzaal;->zzC:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzaal;->zzC:J

    iget p1, p0, Lcom/google/android/gms/internal/ads/zzaal;->zzD:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzaal;->zzD:I

    return-void
.end method

.method public final zzaS(JJJZZ)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzii;
        }
    .end annotation

    .line 1
    iget-wide p5, p0, Lcom/google/android/gms/internal/ads/zzaal;->zzk:J

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, p5, v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    cmp-long p5, p1, p5

    if-gez p5, :cond_0

    move p5, v1

    goto :goto_0

    :cond_0
    move p5, v2

    :goto_0
    iput-boolean p5, p0, Lcom/google/android/gms/internal/ads/zzaal;->zzN:Z

    :cond_1
    const-wide/32 p5, -0x7a120

    cmp-long p1, p1, p5

    if-gez p1, :cond_5

    if-nez p7, :cond_5

    invoke-virtual {p0, p3, p4}, Lcom/google/android/gms/internal/ads/zzhx;->zzd(J)I

    move-result p1

    if-nez p1, :cond_2

    goto :goto_2

    :cond_2
    if-eqz p8, :cond_3

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzaal;->zza:Lcom/google/android/gms/internal/ads/zzhy;

    .line 2
    iget p3, p2, Lcom/google/android/gms/internal/ads/zzhy;->zzd:I

    add-int/2addr p3, p1

    iput p3, p2, Lcom/google/android/gms/internal/ads/zzhy;->zzd:I

    .line 3
    iget p1, p2, Lcom/google/android/gms/internal/ads/zzhy;->zzf:I

    iget p4, p0, Lcom/google/android/gms/internal/ads/zzaal;->zzB:I

    add-int/2addr p1, p4

    iput p1, p2, Lcom/google/android/gms/internal/ads/zzhy;->zzf:I

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaal;->zzl:Ljava/util/PriorityQueue;

    .line 4
    invoke-virtual {p1}, Ljava/util/PriorityQueue;->size()I

    move-result p1

    add-int/2addr p3, p1

    iput p3, p2, Lcom/google/android/gms/internal/ads/zzhy;->zzd:I

    goto :goto_1

    .line 9
    :cond_3
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzaal;->zza:Lcom/google/android/gms/internal/ads/zzhy;

    .line 5
    iget p3, p2, Lcom/google/android/gms/internal/ads/zzhy;->zzj:I

    add-int/2addr p3, v1

    iput p3, p2, Lcom/google/android/gms/internal/ads/zzhy;->zzj:I

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzaal;->zzl:Ljava/util/PriorityQueue;

    .line 6
    invoke-virtual {p2}, Ljava/util/PriorityQueue;->size()I

    move-result p2

    add-int/2addr p1, p2

    iget p2, p0, Lcom/google/android/gms/internal/ads/zzaal;->zzB:I

    .line 7
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzaal;->zzao(II)V

    .line 8
    :goto_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zztg;->zzaJ()Z

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaal;->zzp:Lcom/google/android/gms/internal/ads/zzabv;

    if-eqz p1, :cond_4

    .line 9
    invoke-interface {p1, v2}, Lcom/google/android/gms/internal/ads/zzabv;->zzc(Z)V

    :cond_4
    return v1

    :cond_5
    :goto_2
    return v2
.end method

.method protected final zzaT(Lcom/google/android/gms/internal/ads/zzsz;)Z
    .locals 2

    .line 1
    sget v0, Lcom/google/android/gms/internal/ads/zzeu;->zza:I

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzsz;->zza:Ljava/lang/String;

    .line 2
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzaal;->zzaU(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    iget-boolean p1, p1, Lcom/google/android/gms/internal/ads/zzsz;->zzf:Z

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaal;->zze:Landroid/content/Context;

    .line 3
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzaao;->zzb(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    return v0

    :cond_1
    move v1, v0

    :cond_2
    :goto_0
    return v1
.end method

.method protected final zzaa(Lcom/google/android/gms/internal/ads/zzti;Lcom/google/android/gms/internal/ads/zzz;)I
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zztn;
        }
    .end annotation

    .line 1
    iget-object v0, p2, Lcom/google/android/gms/internal/ads/zzz;->zzo:Ljava/lang/String;

    .line 2
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzay;->zzj(Ljava/lang/String;)Z

    move-result v1

    const/16 v2, 0x80

    if-nez v1, :cond_0

    goto/16 :goto_6

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaal;->zze:Landroid/content/Context;

    .line 3
    iget-object v3, p2, Lcom/google/android/gms/internal/ads/zzz;->zzs:Lcom/google/android/gms/internal/ads/zzs;

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v3, :cond_1

    move v3, v4

    goto :goto_0

    :cond_1
    move v3, v5

    .line 4
    :goto_0
    invoke-static {v1, p1, p2, v3, v5}, Lcom/google/android/gms/internal/ads/zzaal;->zzaX(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzti;Lcom/google/android/gms/internal/ads/zzz;ZZ)Ljava/util/List;

    move-result-object v6

    if-eqz v3, :cond_2

    .line 5
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 6
    invoke-static {v1, p1, p2, v5, v5}, Lcom/google/android/gms/internal/ads/zzaal;->zzaX(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzti;Lcom/google/android/gms/internal/ads/zzz;ZZ)Ljava/util/List;

    move-result-object v6

    .line 7
    :cond_2
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_3

    const/16 v2, 0x81

    goto/16 :goto_6

    .line 8
    :cond_3
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzaal;->zzaQ(Lcom/google/android/gms/internal/ads/zzz;)Z

    move-result v7

    if-nez v7, :cond_4

    const/16 v2, 0x82

    goto/16 :goto_6

    .line 9
    :cond_4
    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/gms/internal/ads/zzsz;

    .line 10
    invoke-virtual {v7, p2}, Lcom/google/android/gms/internal/ads/zzsz;->zze(Lcom/google/android/gms/internal/ads/zzz;)Z

    move-result v8

    if-nez v8, :cond_6

    move v9, v4

    .line 11
    :goto_1
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v10

    if-ge v9, v10, :cond_6

    .line 12
    invoke-interface {v6, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/google/android/gms/internal/ads/zzsz;

    .line 13
    invoke-virtual {v10, p2}, Lcom/google/android/gms/internal/ads/zzsz;->zze(Lcom/google/android/gms/internal/ads/zzz;)Z

    move-result v11

    if-eqz v11, :cond_5

    move v8, v4

    move v6, v5

    move-object v7, v10

    goto :goto_2

    :cond_5
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_6
    move v6, v4

    :goto_2
    if-eq v4, v8, :cond_7

    const/4 v9, 0x3

    goto :goto_3

    :cond_7
    const/4 v9, 0x4

    .line 14
    :goto_3
    invoke-virtual {v7, p2}, Lcom/google/android/gms/internal/ads/zzsz;->zzf(Lcom/google/android/gms/internal/ads/zzz;)Z

    move-result v10

    if-eq v4, v10, :cond_8

    const/16 v10, 0x8

    goto :goto_4

    :cond_8
    const/16 v10, 0x10

    .line 15
    :goto_4
    iget-boolean v7, v7, Lcom/google/android/gms/internal/ads/zzsz;->zzg:Z

    if-eq v4, v7, :cond_9

    move v7, v5

    goto :goto_5

    :cond_9
    const/16 v7, 0x40

    :goto_5
    if-eq v4, v6, :cond_a

    move v2, v5

    .line 16
    :cond_a
    sget v6, Lcom/google/android/gms/internal/ads/zzeu;->zza:I

    const/16 v11, 0x1a

    if-lt v6, v11, :cond_b

    const-string v6, "video/dolby-vision"

    .line 17
    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 18
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzaai;->zza(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_b

    const/16 v2, 0x100

    :cond_b
    if-eqz v8, :cond_c

    .line 19
    invoke-static {v1, p1, p2, v3, v4}, Lcom/google/android/gms/internal/ads/zzaal;->zzaX(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzti;Lcom/google/android/gms/internal/ads/zzz;ZZ)Ljava/util/List;

    move-result-object p1

    .line 20
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_c

    .line 21
    invoke-static {p1, p2}, Lcom/google/android/gms/internal/ads/zztt;->zzf(Ljava/util/List;Lcom/google/android/gms/internal/ads/zzz;)Ljava/util/List;

    move-result-object p1

    .line 22
    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzsz;

    .line 23
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzsz;->zze(Lcom/google/android/gms/internal/ads/zzz;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 24
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzsz;->zzf(Lcom/google/android/gms/internal/ads/zzz;)Z

    move-result p1

    if-eqz p1, :cond_c

    const/16 v5, 0x20

    :cond_c
    or-int p1, v9, v10

    or-int/2addr p1, v5

    or-int/2addr p1, v7

    or-int/2addr v2, p1

    :goto_6
    return v2
.end method

.method protected final zzab(Lcom/google/android/gms/internal/ads/zzsz;Lcom/google/android/gms/internal/ads/zzz;Lcom/google/android/gms/internal/ads/zzz;)Lcom/google/android/gms/internal/ads/zzhz;
    .locals 8

    .line 1
    invoke-virtual {p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzsz;->zzb(Lcom/google/android/gms/internal/ads/zzz;Lcom/google/android/gms/internal/ads/zzz;)Lcom/google/android/gms/internal/ads/zzhz;

    move-result-object v0

    iget v1, v0, Lcom/google/android/gms/internal/ads/zzhz;->zze:I

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzaal;->zzm:Lcom/google/android/gms/internal/ads/zzaak;

    .line 5
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1
    iget v3, p3, Lcom/google/android/gms/internal/ads/zzz;->zzv:I

    .line 2
    move-object v4, v2

    check-cast v4, Lcom/google/android/gms/internal/ads/zzaak;

    iget v4, v2, Lcom/google/android/gms/internal/ads/zzaak;->zza:I

    if-gt v3, v4, :cond_0

    iget v3, p3, Lcom/google/android/gms/internal/ads/zzz;->zzw:I

    iget v4, v2, Lcom/google/android/gms/internal/ads/zzaak;->zzb:I

    if-le v3, v4, :cond_1

    :cond_0
    or-int/lit16 v1, v1, 0x100

    .line 3
    :cond_1
    invoke-static {p1, p3}, Lcom/google/android/gms/internal/ads/zzaal;->zzae(Lcom/google/android/gms/internal/ads/zzsz;Lcom/google/android/gms/internal/ads/zzz;)I

    move-result v3

    iget v2, v2, Lcom/google/android/gms/internal/ads/zzaak;->zzc:I

    if-le v3, v2, :cond_2

    or-int/lit8 v1, v1, 0x40

    :cond_2
    iget-object v3, p1, Lcom/google/android/gms/internal/ads/zzsz;->zza:Ljava/lang/String;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzhz;

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    move v7, v1

    move v6, v2

    goto :goto_0

    .line 4
    :cond_3
    iget v0, v0, Lcom/google/android/gms/internal/ads/zzhz;->zzd:I

    move v6, v0

    move v7, v2

    :goto_0
    move-object v2, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v2 .. v7}, Lcom/google/android/gms/internal/ads/zzhz;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzz;Lcom/google/android/gms/internal/ads/zzz;II)V

    return-object p1
.end method

.method protected final zzac(Lcom/google/android/gms/internal/ads/zzkp;)Lcom/google/android/gms/internal/ads/zzhz;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzii;
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/ads/zztg;->zzac(Lcom/google/android/gms/internal/ads/zzkp;)Lcom/google/android/gms/internal/ads/zzhz;

    move-result-object v0

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzkp;->zza:Lcom/google/android/gms/internal/ads/zzz;

    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaal;->zzg:Lcom/google/android/gms/internal/ads/zzabr;

    .line 2
    move-object v2, p1

    check-cast v2, Lcom/google/android/gms/internal/ads/zzz;

    invoke-virtual {v1, p1, v0}, Lcom/google/android/gms/internal/ads/zzabr;->zzp(Lcom/google/android/gms/internal/ads/zzz;Lcom/google/android/gms/internal/ads/zzhz;)V

    return-object v0
.end method

.method protected final zzaf(Lcom/google/android/gms/internal/ads/zzsz;Lcom/google/android/gms/internal/ads/zzz;Landroid/media/MediaCrypto;F)Lcom/google/android/gms/internal/ads/zzst;
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p4

    .line 1
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzhx;->zzT()[Lcom/google/android/gms/internal/ads/zzz;

    move-result-object v4

    array-length v5, v4

    .line 2
    invoke-static/range {p1 .. p2}, Lcom/google/android/gms/internal/ads/zzaal;->zzae(Lcom/google/android/gms/internal/ads/zzsz;Lcom/google/android/gms/internal/ads/zzz;)I

    move-result v6

    iget v7, v2, Lcom/google/android/gms/internal/ads/zzz;->zzw:I

    iget v8, v2, Lcom/google/android/gms/internal/ads/zzz;->zzv:I

    const/4 v10, -0x1

    const/4 v12, 0x1

    if-ne v5, v12, :cond_1

    if-eq v6, v10, :cond_0

    .line 22
    invoke-static/range {p1 .. p2}, Lcom/google/android/gms/internal/ads/zzaal;->zzad(Lcom/google/android/gms/internal/ads/zzsz;Lcom/google/android/gms/internal/ads/zzz;)I

    move-result v4

    if-eq v4, v10, :cond_0

    int-to-float v5, v6

    const/high16 v6, 0x3fc00000    # 1.5f

    mul-float/2addr v5, v6

    float-to-int v5, v5

    .line 23
    invoke-static {v5, v4}, Ljava/lang/Math;->min(II)I

    move-result v6

    :cond_0
    new-instance v4, Lcom/google/android/gms/internal/ads/zzaak;

    invoke-direct {v4, v8, v7, v6}, Lcom/google/android/gms/internal/ads/zzaak;-><init>(III)V

    move/from16 v16, v7

    move/from16 v17, v8

    goto/16 :goto_d

    :cond_1
    move v9, v7

    move v15, v8

    const/4 v13, 0x0

    const/4 v14, 0x0

    :goto_0
    if-ge v13, v5, :cond_6

    .line 3
    aget-object v11, v4, v13

    iget-object v12, v2, Lcom/google/android/gms/internal/ads/zzz;->zzC:Lcom/google/android/gms/internal/ads/zzk;

    if-eqz v12, :cond_2

    .line 4
    iget-object v10, v11, Lcom/google/android/gms/internal/ads/zzz;->zzC:Lcom/google/android/gms/internal/ads/zzk;

    if-nez v10, :cond_2

    .line 5
    invoke-virtual {v11}, Lcom/google/android/gms/internal/ads/zzz;->zzb()Lcom/google/android/gms/internal/ads/zzx;

    move-result-object v10

    invoke-virtual {v10, v12}, Lcom/google/android/gms/internal/ads/zzx;->zzD(Lcom/google/android/gms/internal/ads/zzk;)Lcom/google/android/gms/internal/ads/zzx;

    invoke-virtual {v10}, Lcom/google/android/gms/internal/ads/zzx;->zzaj()Lcom/google/android/gms/internal/ads/zzz;

    move-result-object v11

    .line 6
    :cond_2
    invoke-virtual {v1, v2, v11}, Lcom/google/android/gms/internal/ads/zzsz;->zzb(Lcom/google/android/gms/internal/ads/zzz;Lcom/google/android/gms/internal/ads/zzz;)Lcom/google/android/gms/internal/ads/zzhz;

    move-result-object v10

    iget v10, v10, Lcom/google/android/gms/internal/ads/zzhz;->zzd:I

    if-eqz v10, :cond_5

    .line 7
    iget v10, v11, Lcom/google/android/gms/internal/ads/zzz;->zzv:I

    const/4 v12, -0x1

    if-eq v10, v12, :cond_4

    move-object/from16 v16, v4

    iget v4, v11, Lcom/google/android/gms/internal/ads/zzz;->zzw:I

    if-ne v4, v12, :cond_3

    goto :goto_1

    :cond_3
    const/4 v4, 0x0

    goto :goto_2

    :cond_4
    move-object/from16 v16, v4

    :goto_1
    const/4 v4, 0x1

    :goto_2
    or-int/2addr v14, v4

    .line 8
    invoke-static {v15, v10}, Ljava/lang/Math;->max(II)I

    move-result v15

    .line 9
    iget v4, v11, Lcom/google/android/gms/internal/ads/zzz;->zzw:I

    invoke-static {v9, v4}, Ljava/lang/Math;->max(II)I

    move-result v9

    .line 10
    invoke-static {v1, v11}, Lcom/google/android/gms/internal/ads/zzaal;->zzae(Lcom/google/android/gms/internal/ads/zzsz;Lcom/google/android/gms/internal/ads/zzz;)I

    move-result v4

    invoke-static {v6, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    move v6, v4

    goto :goto_3

    :cond_5
    move-object/from16 v16, v4

    const/4 v12, -0x1

    :goto_3
    add-int/lit8 v13, v13, 0x1

    move v10, v12

    move-object/from16 v4, v16

    const/4 v12, 0x1

    goto :goto_0

    :cond_6
    if-eqz v14, :cond_11

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Resolutions unknown. Codec max resolution: "

    .line 11
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v10, "MediaCodecVideoRenderer"

    invoke-static {v10, v4}, Lcom/google/android/gms/internal/ads/zzdx;->zzf(Ljava/lang/String;Ljava/lang/String;)V

    if-le v7, v8, :cond_7

    const/4 v4, 0x1

    goto :goto_4

    :cond_7
    const/4 v4, 0x0

    :goto_4
    if-eqz v4, :cond_8

    move v11, v7

    goto :goto_5

    :cond_8
    move v11, v8

    :goto_5
    const/4 v12, 0x1

    if-eq v12, v4, :cond_9

    move v12, v7

    goto :goto_6

    :cond_9
    move v12, v8

    :goto_6
    sget-object v13, Lcom/google/android/gms/internal/ads/zzaal;->zzb:[I

    const/4 v14, 0x0

    :goto_7
    const/16 v3, 0x9

    if-ge v14, v3, :cond_f

    int-to-float v3, v12

    move/from16 v16, v7

    int-to-float v7, v11

    move/from16 v17, v8

    .line 12
    aget v8, v13, v14

    move-object/from16 v18, v13

    int-to-float v13, v8

    if-le v8, v11, :cond_10

    div-float/2addr v3, v7

    mul-float/2addr v13, v3

    float-to-int v3, v13

    if-gt v3, v12, :cond_a

    goto :goto_a

    :cond_a
    const/4 v7, 0x1

    if-eq v7, v4, :cond_b

    move v13, v8

    goto :goto_8

    :cond_b
    move v13, v3

    :goto_8
    if-ne v7, v4, :cond_c

    goto :goto_9

    :cond_c
    move v8, v3

    .line 13
    :goto_9
    invoke-virtual {v1, v13, v8}, Lcom/google/android/gms/internal/ads/zzsz;->zza(II)Landroid/graphics/Point;

    move-result-object v3

    iget v7, v2, Lcom/google/android/gms/internal/ads/zzz;->zzx:F

    if-eqz v3, :cond_d

    float-to-double v7, v7

    .line 14
    iget v13, v3, Landroid/graphics/Point;->x:I

    move/from16 v19, v4

    iget v4, v3, Landroid/graphics/Point;->y:I

    .line 15
    invoke-virtual {v1, v13, v4, v7, v8}, Lcom/google/android/gms/internal/ads/zzsz;->zzg(IID)Z

    move-result v4

    if-eqz v4, :cond_e

    goto :goto_b

    :cond_d
    move/from16 v19, v4

    :cond_e
    add-int/lit8 v14, v14, 0x1

    move/from16 v7, v16

    move/from16 v8, v17

    move-object/from16 v13, v18

    move/from16 v4, v19

    goto :goto_7

    :cond_f
    move/from16 v16, v7

    move/from16 v17, v8

    :cond_10
    :goto_a
    const/4 v3, 0x0

    :goto_b
    if-eqz v3, :cond_12

    .line 16
    iget v4, v3, Landroid/graphics/Point;->x:I

    invoke-static {v15, v4}, Ljava/lang/Math;->max(II)I

    move-result v15

    .line 17
    iget v3, v3, Landroid/graphics/Point;->y:I

    invoke-static {v9, v3}, Ljava/lang/Math;->max(II)I

    move-result v9

    invoke-virtual/range {p2 .. p2}, Lcom/google/android/gms/internal/ads/zzz;->zzb()Lcom/google/android/gms/internal/ads/zzx;

    move-result-object v3

    .line 18
    invoke-virtual {v3, v15}, Lcom/google/android/gms/internal/ads/zzx;->zzai(I)Lcom/google/android/gms/internal/ads/zzx;

    invoke-virtual {v3, v9}, Lcom/google/android/gms/internal/ads/zzx;->zzM(I)Lcom/google/android/gms/internal/ads/zzx;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzx;->zzaj()Lcom/google/android/gms/internal/ads/zzz;

    move-result-object v3

    .line 19
    invoke-static {v1, v3}, Lcom/google/android/gms/internal/ads/zzaal;->zzad(Lcom/google/android/gms/internal/ads/zzsz;Lcom/google/android/gms/internal/ads/zzz;)I

    move-result v3

    .line 20
    invoke-static {v6, v3}, Ljava/lang/Math;->max(II)I

    move-result v6

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Codec max resolution adjusted to: "

    .line 21
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v10, v3}, Lcom/google/android/gms/internal/ads/zzdx;->zzf(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_c

    :cond_11
    move/from16 v16, v7

    move/from16 v17, v8

    :cond_12
    :goto_c
    new-instance v4, Lcom/google/android/gms/internal/ads/zzaak;

    invoke-direct {v4, v15, v9, v6}, Lcom/google/android/gms/internal/ads/zzaak;-><init>(III)V

    .line 23
    :goto_d
    iget-object v3, v1, Lcom/google/android/gms/internal/ads/zzsz;->zzc:Ljava/lang/String;

    iput-object v4, v0, Lcom/google/android/gms/internal/ads/zzaal;->zzm:Lcom/google/android/gms/internal/ads/zzaak;

    iget-boolean v5, v0, Lcom/google/android/gms/internal/ads/zzaal;->zzh:Z

    .line 24
    new-instance v6, Landroid/media/MediaFormat;

    invoke-direct {v6}, Landroid/media/MediaFormat;-><init>()V

    const-string v7, "mime"

    .line 25
    invoke-virtual {v6, v7, v3}, Landroid/media/MediaFormat;->setString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "width"

    move/from16 v7, v17

    .line 26
    invoke-virtual {v6, v3, v7}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string v3, "height"

    move/from16 v7, v16

    .line 27
    invoke-virtual {v6, v3, v7}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    iget-object v3, v2, Lcom/google/android/gms/internal/ads/zzz;->zzr:Ljava/util/List;

    .line 28
    invoke-static {v6, v3}, Lcom/google/android/gms/internal/ads/zzea;->zzb(Landroid/media/MediaFormat;Ljava/util/List;)V

    iget v3, v2, Lcom/google/android/gms/internal/ads/zzz;->zzx:F

    const/high16 v7, -0x40800000    # -1.0f

    cmpl-float v8, v3, v7

    if-eqz v8, :cond_13

    const-string v8, "frame-rate"

    .line 29
    invoke-virtual {v6, v8, v3}, Landroid/media/MediaFormat;->setFloat(Ljava/lang/String;F)V

    :cond_13
    iget v3, v2, Lcom/google/android/gms/internal/ads/zzz;->zzy:I

    const-string v8, "rotation-degrees"

    .line 30
    invoke-static {v6, v8, v3}, Lcom/google/android/gms/internal/ads/zzea;->zza(Landroid/media/MediaFormat;Ljava/lang/String;I)V

    iget-object v3, v2, Lcom/google/android/gms/internal/ads/zzz;->zzC:Lcom/google/android/gms/internal/ads/zzk;

    if-eqz v3, :cond_14

    const-string v8, "color-transfer"

    iget v9, v3, Lcom/google/android/gms/internal/ads/zzk;->zzd:I

    .line 31
    invoke-static {v6, v8, v9}, Lcom/google/android/gms/internal/ads/zzea;->zza(Landroid/media/MediaFormat;Ljava/lang/String;I)V

    const-string v8, "color-standard"

    iget v9, v3, Lcom/google/android/gms/internal/ads/zzk;->zzb:I

    .line 32
    invoke-static {v6, v8, v9}, Lcom/google/android/gms/internal/ads/zzea;->zza(Landroid/media/MediaFormat;Ljava/lang/String;I)V

    const-string v8, "color-range"

    iget v9, v3, Lcom/google/android/gms/internal/ads/zzk;->zzc:I

    .line 33
    invoke-static {v6, v8, v9}, Lcom/google/android/gms/internal/ads/zzea;->zza(Landroid/media/MediaFormat;Ljava/lang/String;I)V

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/zzk;->zze:[B

    if-eqz v3, :cond_14

    const-string v8, "hdr-static-info"

    .line 34
    invoke-static {v3}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v6, v8, v3}, Landroid/media/MediaFormat;->setByteBuffer(Ljava/lang/String;Ljava/nio/ByteBuffer;)V

    :cond_14
    iget-object v3, v2, Lcom/google/android/gms/internal/ads/zzz;->zzo:Ljava/lang/String;

    const-string v8, "video/dolby-vision"

    .line 35
    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_15

    .line 36
    sget v3, Lcom/google/android/gms/internal/ads/zztt;->zza:I

    .line 37
    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/internal/ads/zzdh;->zza(Lcom/google/android/gms/internal/ads/zzz;)Landroid/util/Pair;

    move-result-object v3

    if-eqz v3, :cond_15

    .line 38
    iget-object v3, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    .line 39
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const-string v8, "profile"

    .line 38
    invoke-static {v6, v8, v3}, Lcom/google/android/gms/internal/ads/zzea;->zza(Landroid/media/MediaFormat;Ljava/lang/String;I)V

    .line 40
    :cond_15
    iget v3, v4, Lcom/google/android/gms/internal/ads/zzaak;->zza:I

    const-string v8, "max-width"

    invoke-virtual {v6, v8, v3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 41
    iget v3, v4, Lcom/google/android/gms/internal/ads/zzaak;->zzb:I

    const-string v8, "max-height"

    invoke-virtual {v6, v8, v3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 42
    iget v3, v4, Lcom/google/android/gms/internal/ads/zzaak;->zzc:I

    const-string v4, "max-input-size"

    invoke-static {v6, v4, v3}, Lcom/google/android/gms/internal/ads/zzea;->zza(Landroid/media/MediaFormat;Ljava/lang/String;I)V

    .line 43
    sget v3, Lcom/google/android/gms/internal/ads/zzeu;->zza:I

    const-string v3, "priority"

    const/4 v4, 0x0

    .line 44
    invoke-virtual {v6, v3, v4}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    move/from16 v3, p4

    cmpl-float v7, v3, v7

    if-eqz v7, :cond_16

    const-string v7, "operating-rate"

    .line 45
    invoke-virtual {v6, v7, v3}, Landroid/media/MediaFormat;->setFloat(Ljava/lang/String;F)V

    :cond_16
    if-eqz v5, :cond_17

    const-string v3, "no-post-process"

    const/4 v5, 0x1

    .line 46
    invoke-virtual {v6, v3, v5}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string v3, "auto-frc"

    .line 47
    invoke-virtual {v6, v3, v4}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    :cond_17
    sget v3, Lcom/google/android/gms/internal/ads/zzeu;->zza:I

    const/16 v5, 0x23

    if-lt v3, v5, :cond_18

    iget v3, v0, Lcom/google/android/gms/internal/ads/zzaal;->zzH:I

    neg-int v3, v3

    .line 48
    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    const-string v4, "importance"

    invoke-virtual {v6, v4, v3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 49
    :cond_18
    invoke-direct/range {p0 .. p1}, Lcom/google/android/gms/internal/ads/zzaal;->zzaW(Lcom/google/android/gms/internal/ads/zzsz;)Landroid/view/Surface;

    move-result-object v3

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzaal;->zzp:Lcom/google/android/gms/internal/ads/zzabv;

    if-eqz v4, :cond_19

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzaal;->zze:Landroid/content/Context;

    .line 50
    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzeu;->zzL(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_19

    const-string v4, "allow-frame-drop"

    const/4 v5, 0x0

    .line 51
    invoke-virtual {v6, v4, v5}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    :cond_19
    const/4 v4, 0x0

    invoke-static {v1, v6, v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzst;->zzb(Lcom/google/android/gms/internal/ads/zzsz;Landroid/media/MediaFormat;Lcom/google/android/gms/internal/ads/zzz;Landroid/view/Surface;Landroid/media/MediaCrypto;)Lcom/google/android/gms/internal/ads/zzst;

    move-result-object v1

    return-object v1
.end method

.method protected final zzag(Lcom/google/android/gms/internal/ads/zzti;Lcom/google/android/gms/internal/ads/zzz;Z)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zztn;
        }
    .end annotation

    .line 1
    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzaal;->zze:Landroid/content/Context;

    const/4 v0, 0x0

    invoke-static {p3, p1, p2, v0, v0}, Lcom/google/android/gms/internal/ads/zzaal;->zzaX(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzti;Lcom/google/android/gms/internal/ads/zzz;ZZ)Ljava/util/List;

    move-result-object p1

    .line 2
    invoke-static {p1, p2}, Lcom/google/android/gms/internal/ads/zztt;->zzf(Ljava/util/List;Lcom/google/android/gms/internal/ads/zzz;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method protected final zzah(Lcom/google/android/gms/internal/ads/zzsw;IJJ)V
    .locals 0

    .line 1
    const-string p3, "releaseOutputBuffer"

    invoke-static {p3}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 2
    invoke-interface {p1, p2, p5, p6}, Lcom/google/android/gms/internal/ads/zzsw;->zzn(IJ)V

    .line 3
    invoke-static {}, Landroid/os/Trace;->endSection()V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaal;->zza:Lcom/google/android/gms/internal/ads/zzhy;

    .line 4
    iget p2, p1, Lcom/google/android/gms/internal/ads/zzhy;->zze:I

    const/4 p3, 0x1

    add-int/2addr p2, p3

    iput p2, p1, Lcom/google/android/gms/internal/ads/zzhy;->zze:I

    const/4 p1, 0x0

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzaal;->zzA:I

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaal;->zzp:Lcom/google/android/gms/internal/ads/zzabv;

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaal;->zzF:Lcom/google/android/gms/internal/ads/zzcd;

    .line 5
    sget-object p2, Lcom/google/android/gms/internal/ads/zzcd;->zza:Lcom/google/android/gms/internal/ads/zzcd;

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzcd;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzaal;->zzG:Lcom/google/android/gms/internal/ads/zzcd;

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzcd;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaal;->zzG:Lcom/google/android/gms/internal/ads/zzcd;

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzaal;->zzg:Lcom/google/android/gms/internal/ads/zzabr;

    .line 6
    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzabr;->zzt(Lcom/google/android/gms/internal/ads/zzcd;)V

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaal;->zzi:Lcom/google/android/gms/internal/ads/zzabb;

    .line 7
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzabb;->zzn()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaal;->zzs:Landroid/view/Surface;

    if-eqz p1, :cond_1

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzaal;->zzg:Lcom/google/android/gms/internal/ads/zzabr;

    .line 8
    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzabr;->zzq(Ljava/lang/Object;)V

    iput-boolean p3, p0, Lcom/google/android/gms/internal/ads/zzaal;->zzv:Z

    :cond_1
    return-void
.end method

.method protected final zzai(Lcom/google/android/gms/internal/ads/zzsw;IJ)V
    .locals 0

    .line 1
    const-string p3, "skipVideoBuffer"

    invoke-static {p3}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    const/4 p3, 0x0

    .line 2
    invoke-interface {p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzsw;->zzo(IZ)V

    .line 3
    invoke-static {}, Landroid/os/Trace;->endSection()V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaal;->zza:Lcom/google/android/gms/internal/ads/zzhy;

    .line 4
    iget p2, p1, Lcom/google/android/gms/internal/ads/zzhy;->zzf:I

    add-int/lit8 p2, p2, 0x1

    iput p2, p1, Lcom/google/android/gms/internal/ads/zzhy;->zzf:I

    return-void
.end method

.method protected final zzaj(Lcom/google/android/gms/internal/ads/zzhn;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzii;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzaal;->zzo:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzhn;->zzf:Ljava/nio/ByteBuffer;

    .line 17
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1
    move-object v0, p1

    check-cast v0, Ljava/nio/ByteBuffer;

    .line 2
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    const/4 v1, 0x7

    if-lt v0, v1, :cond_2

    .line 3
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    .line 4
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v1

    .line 5
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v2

    .line 6
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v3

    .line 7
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v4

    const/4 v5, 0x0

    .line 8
    invoke-virtual {p1, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    const/16 v6, -0x4b

    if-ne v0, v6, :cond_2

    const/16 v0, 0x3c

    if-ne v1, v0, :cond_2

    const/4 v0, 0x1

    if-ne v2, v0, :cond_2

    const/4 v1, 0x4

    if-ne v3, v1, :cond_2

    if-eqz v4, :cond_1

    if-ne v4, v0, :cond_2

    .line 9
    :cond_1
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    new-array v0, v0, [B

    .line 10
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 11
    invoke-virtual {p1, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zztg;->zzaz()Lcom/google/android/gms/internal/ads/zzsw;

    move-result-object p1

    .line 16
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    move-object v1, p1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzsw;

    new-instance v1, Landroid/os/Bundle;

    .line 13
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "hdr10-plus-info"

    .line 14
    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 15
    invoke-interface {p1, v1}, Lcom/google/android/gms/internal/ads/zzsw;->zzq(Landroid/os/Bundle;)V

    :cond_2
    :goto_0
    return-void
.end method

.method protected final zzak(Ljava/lang/Exception;)V
    .locals 2

    .line 1
    const-string v0, "MediaCodecVideoRenderer"

    const-string v1, "Video codec error"

    invoke-static {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzdx;->zzd(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaal;->zzg:Lcom/google/android/gms/internal/ads/zzabr;

    .line 2
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzabr;->zzs(Ljava/lang/Exception;)V

    return-void
.end method

.method protected final zzal(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzst;JJ)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaal;->zzg:Lcom/google/android/gms/internal/ads/zzabr;

    move-object v1, p1

    move-wide v2, p3

    move-wide v4, p5

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzabr;->zzk(Ljava/lang/String;JJ)V

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzaal;->zzaU(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzaal;->zzn:Z

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zztg;->zzaB()Lcom/google/android/gms/internal/ads/zzsz;

    move-result-object p1

    .line 7
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    move-object p2, p1

    check-cast p2, Lcom/google/android/gms/internal/ads/zzsz;

    .line 4
    sget p2, Lcom/google/android/gms/internal/ads/zzeu;->zza:I

    const/16 p3, 0x1d

    const/4 p4, 0x0

    if-lt p2, p3, :cond_1

    iget-object p2, p1, Lcom/google/android/gms/internal/ads/zzsz;->zzb:Ljava/lang/String;

    const-string p3, "video/x-vnd.on2.vp9"

    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 5
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzsz;->zzh()[Landroid/media/MediaCodecInfo$CodecProfileLevel;

    move-result-object p1

    array-length p2, p1

    move p3, p4

    :goto_0
    if-ge p3, p2, :cond_1

    aget-object p5, p1, p3

    .line 6
    iget p5, p5, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    const/16 p6, 0x4000

    if-ne p5, p6, :cond_0

    const/4 p4, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    iput-boolean p4, p0, Lcom/google/android/gms/internal/ads/zzaal;->zzo:Z

    return-void
.end method

.method protected final zzam(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaal;->zzg:Lcom/google/android/gms/internal/ads/zzabr;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzabr;->zzl(Ljava/lang/String;)V

    return-void
.end method

.method protected final zzan(Lcom/google/android/gms/internal/ads/zzz;Landroid/media/MediaFormat;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 1
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zztg;->zzaz()Lcom/google/android/gms/internal/ads/zzsw;

    move-result-object v3

    if-eqz v3, :cond_0

    iget v4, v0, Lcom/google/android/gms/internal/ads/zzaal;->zzw:I

    invoke-interface {v3, v4}, Lcom/google/android/gms/internal/ads/zzsw;->zzr(I)V

    .line 22
    :cond_0
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    const-string v3, "crop-right"

    invoke-virtual {v2, v3}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v4

    const-string v5, "crop-top"

    const-string v6, "crop-bottom"

    const-string v7, "crop-left"

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-eqz v4, :cond_1

    .line 3
    invoke-virtual {v2, v7}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 4
    invoke-virtual {v2, v6}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 5
    invoke-virtual {v2, v5}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    move v4, v8

    goto :goto_0

    :cond_1
    move v4, v9

    :goto_0
    if-eqz v4, :cond_2

    .line 6
    invoke-virtual {v2, v3}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v7}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v7

    sub-int/2addr v3, v7

    add-int/2addr v3, v8

    goto :goto_1

    .line 9
    :cond_2
    const-string v3, "width"

    .line 7
    invoke-virtual {v2, v3}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v3

    :goto_1
    if-eqz v4, :cond_3

    .line 8
    invoke-virtual {v2, v6}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v2, v5}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v2

    sub-int/2addr v4, v2

    add-int/2addr v4, v8

    goto :goto_2

    .line 13
    :cond_3
    const-string v4, "height"

    .line 9
    invoke-virtual {v2, v4}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v4

    .line 10
    :goto_2
    iget v2, v1, Lcom/google/android/gms/internal/ads/zzz;->zzz:F

    .line 11
    iget v5, v1, Lcom/google/android/gms/internal/ads/zzz;->zzy:I

    const/16 v6, 0x5a

    if-eq v5, v6, :cond_4

    const/16 v6, 0x10e

    if-ne v5, v6, :cond_5

    :cond_4
    const/high16 v5, 0x3f800000    # 1.0f

    div-float v2, v5, v2

    move/from16 v17, v4

    move v4, v3

    move/from16 v3, v17

    .line 12
    :cond_5
    new-instance v5, Lcom/google/android/gms/internal/ads/zzcd;

    invoke-direct {v5, v3, v4, v2}, Lcom/google/android/gms/internal/ads/zzcd;-><init>(IIF)V

    iput-object v5, v0, Lcom/google/android/gms/internal/ads/zzaal;->zzF:Lcom/google/android/gms/internal/ads/zzcd;

    iget-object v10, v0, Lcom/google/android/gms/internal/ads/zzaal;->zzp:Lcom/google/android/gms/internal/ads/zzabv;

    if-eqz v10, :cond_7

    iget-boolean v5, v0, Lcom/google/android/gms/internal/ads/zzaal;->zzM:Z

    if-eqz v5, :cond_7

    .line 14
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzz;->zzb()Lcom/google/android/gms/internal/ads/zzx;

    move-result-object v1

    .line 15
    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/ads/zzx;->zzai(I)Lcom/google/android/gms/internal/ads/zzx;

    .line 16
    invoke-virtual {v1, v4}, Lcom/google/android/gms/internal/ads/zzx;->zzM(I)Lcom/google/android/gms/internal/ads/zzx;

    .line 17
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzx;->zzZ(F)Lcom/google/android/gms/internal/ads/zzx;

    .line 18
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzx;->zzaj()Lcom/google/android/gms/internal/ads/zzz;

    move-result-object v12

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzaal;->zzr:Ljava/util/List;

    if-nez v1, :cond_6

    .line 19
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfww;->zzn()Lcom/google/android/gms/internal/ads/zzfww;

    move-result-object v1

    :cond_6
    move-object/from16 v16, v1

    .line 20
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zztg;->zzaw()J

    move-result-wide v13

    const/4 v15, 0x2

    const/4 v11, 0x1

    .line 21
    invoke-interface/range {v10 .. v16}, Lcom/google/android/gms/internal/ads/zzabv;->zze(ILcom/google/android/gms/internal/ads/zzz;JILjava/util/List;)V

    goto :goto_3

    :cond_7
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzaal;->zzi:Lcom/google/android/gms/internal/ads/zzabb;

    .line 13
    iget v1, v1, Lcom/google/android/gms/internal/ads/zzz;->zzx:F

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzabb;->zzj(F)V

    .line 21
    :goto_3
    iput-boolean v9, v0, Lcom/google/android/gms/internal/ads/zzaal;->zzM:Z

    return-void
.end method

.method protected final zzao(II)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaal;->zza:Lcom/google/android/gms/internal/ads/zzhy;

    iget v1, v0, Lcom/google/android/gms/internal/ads/zzhy;->zzh:I

    add-int/2addr v1, p1

    iput v1, v0, Lcom/google/android/gms/internal/ads/zzhy;->zzh:I

    .line 2
    iget v1, v0, Lcom/google/android/gms/internal/ads/zzhy;->zzg:I

    add-int/2addr p1, p2

    add-int/2addr v1, p1

    iput v1, v0, Lcom/google/android/gms/internal/ads/zzhy;->zzg:I

    iget p2, p0, Lcom/google/android/gms/internal/ads/zzaal;->zzz:I

    add-int/2addr p2, p1

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzaal;->zzz:I

    iget p2, p0, Lcom/google/android/gms/internal/ads/zzaal;->zzA:I

    add-int/2addr p2, p1

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzaal;->zzA:I

    .line 3
    iget p1, v0, Lcom/google/android/gms/internal/ads/zzhy;->zzi:I

    .line 4
    invoke-static {p2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, v0, Lcom/google/android/gms/internal/ads/zzhy;->zzi:I

    return-void
.end method

.method protected final zzap()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaal;->zzp:Lcom/google/android/gms/internal/ads/zzabv;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzabv;->zzm()V

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzaal;->zzK:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zztg;->zzaw()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzaal;->zzK:J

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaal;->zzi:Lcom/google/android/gms/internal/ads/zzabb;

    const/4 v1, 0x2

    .line 3
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzabb;->zzf(I)V

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzaal;->zzM:Z

    return-void
.end method

.method protected final zzaq()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaal;->zzp:Lcom/google/android/gms/internal/ads/zzabv;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzabv;->zzm()V

    :cond_0
    return-void
.end method

.method protected final zzar(JJLcom/google/android/gms/internal/ads/zzsw;Ljava/nio/ByteBuffer;IIIJZZLcom/google/android/gms/internal/ads/zzz;)Z
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzii;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    move/from16 v2, p7

    .line 27
    invoke-virtual/range {p5 .. p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zztg;->zzav()J

    move-result-wide v3

    sub-long v14, p10, v3

    const/4 v13, 0x0

    move v3, v13

    :goto_0
    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzaal;->zzl:Ljava/util/PriorityQueue;

    .line 2
    invoke-virtual {v4}, Ljava/util/PriorityQueue;->peek()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    if-eqz v5, :cond_0

    .line 3
    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    cmp-long v5, v5, p10

    if-gez v5, :cond_0

    .line 4
    invoke-virtual {v4}, Ljava/util/PriorityQueue;->poll()Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {v0, v3, v13}, Lcom/google/android/gms/internal/ads/zzaal;->zzao(II)V

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzaal;->zzp:Lcom/google/android/gms/internal/ads/zzabv;

    const/4 v12, 0x1

    if-eqz v3, :cond_4

    if-eqz p12, :cond_2

    if-eqz p13, :cond_1

    goto :goto_1

    .line 8
    :cond_1
    invoke-virtual {v0, v1, v2, v14, v15}, Lcom/google/android/gms/internal/ads/zzaal;->zzai(Lcom/google/android/gms/internal/ads/zzsw;IJ)V

    return v12

    .line 6
    :cond_2
    :goto_1
    invoke-static {v13}, Lcom/google/android/gms/internal/ads/zzdc;->zzf(Z)V

    check-cast v3, Lcom/google/android/gms/internal/ads/zzaas;

    iget-object v1, v3, Lcom/google/android/gms/internal/ads/zzaas;->zza:Lcom/google/android/gms/internal/ads/zzaax;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzaax;->zzt(Lcom/google/android/gms/internal/ads/zzaax;)Z

    move-result v1

    if-nez v1, :cond_3

    move v3, v13

    goto :goto_2

    :cond_3
    const/4 v1, 0x0

    .line 7
    throw v1

    .line 8
    :cond_4
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzaal;->zzi:Lcom/google/android/gms/internal/ads/zzabb;

    .line 9
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zztg;->zzaw()J

    move-result-wide v10

    iget-object v8, v0, Lcom/google/android/gms/internal/ads/zzaal;->zzj:Lcom/google/android/gms/internal/ads/zzaaz;

    move-wide/from16 v4, p10

    move-wide/from16 v6, p1

    move-object/from16 v16, v8

    move-wide/from16 v8, p3

    move-wide/from16 p8, v14

    move v15, v12

    move/from16 v12, p12

    move v14, v13

    move/from16 v13, p13

    move-wide/from16 v17, p8

    move-object/from16 v14, v16

    .line 10
    invoke-virtual/range {v3 .. v14}, Lcom/google/android/gms/internal/ads/zzabb;->zza(JJJJZZLcom/google/android/gms/internal/ads/zzaaz;)I

    move-result v3

    if-eqz v3, :cond_9

    if-eq v3, v15, :cond_7

    const/4 v4, 0x2

    if-eq v3, v4, :cond_6

    const/4 v4, 0x3

    if-eq v3, v4, :cond_5

    const/4 v3, 0x0

    :goto_2
    return v3

    :cond_5
    move-wide/from16 v3, v17

    .line 22
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzaal;->zzai(Lcom/google/android/gms/internal/ads/zzsw;IJ)V

    .line 23
    invoke-virtual/range {v16 .. v16}, Lcom/google/android/gms/internal/ads/zzaaz;->zzc()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzaal;->zzaR(J)V

    return v15

    :cond_6
    const/4 v3, 0x0

    .line 14
    const-string v4, "dropVideoBuffer"

    .line 17
    invoke-static {v4}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 18
    invoke-interface {v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzsw;->zzo(IZ)V

    .line 19
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 20
    invoke-virtual {v0, v3, v15}, Lcom/google/android/gms/internal/ads/zzaal;->zzao(II)V

    .line 21
    invoke-virtual/range {v16 .. v16}, Lcom/google/android/gms/internal/ads/zzaaz;->zzc()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzaal;->zzaR(J)V

    return v15

    :cond_7
    move-wide/from16 v3, v17

    .line 11
    move-object v5, v1

    check-cast v5, Lcom/google/android/gms/internal/ads/zzsw;

    .line 12
    invoke-virtual/range {v16 .. v16}, Lcom/google/android/gms/internal/ads/zzaaz;->zzd()J

    move-result-wide v5

    .line 13
    invoke-virtual/range {v16 .. v16}, Lcom/google/android/gms/internal/ads/zzaaz;->zzc()J

    move-result-wide v7

    iget-wide v9, v0, Lcom/google/android/gms/internal/ads/zzaal;->zzE:J

    cmp-long v9, v5, v9

    if-nez v9, :cond_8

    .line 15
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzaal;->zzai(Lcom/google/android/gms/internal/ads/zzsw;IJ)V

    goto :goto_3

    :cond_8
    move-object/from16 p8, p0

    move-object/from16 p9, p5

    move/from16 p10, p7

    move-wide/from16 p11, v3

    move-wide/from16 p13, v5

    .line 14
    invoke-virtual/range {p8 .. p14}, Lcom/google/android/gms/internal/ads/zzaal;->zzah(Lcom/google/android/gms/internal/ads/zzsw;IJJ)V

    .line 16
    :goto_3
    invoke-virtual {v0, v7, v8}, Lcom/google/android/gms/internal/ads/zzaal;->zzaR(J)V

    iput-wide v5, v0, Lcom/google/android/gms/internal/ads/zzaal;->zzE:J

    return v15

    :cond_9
    move-wide/from16 v3, v17

    .line 24
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzhx;->zzi()Lcom/google/android/gms/internal/ads/zzdg;

    move-result-object v5

    invoke-interface {v5}, Lcom/google/android/gms/internal/ads/zzdg;->zzc()J

    move-result-wide v5

    move-object/from16 p8, p0

    move-object/from16 p9, p5

    move/from16 p10, p7

    move-wide/from16 p11, v3

    move-wide/from16 p13, v5

    .line 25
    invoke-virtual/range {p8 .. p14}, Lcom/google/android/gms/internal/ads/zzaal;->zzah(Lcom/google/android/gms/internal/ads/zzsw;IJJ)V

    .line 26
    invoke-virtual/range {v16 .. v16}, Lcom/google/android/gms/internal/ads/zzaaz;->zzc()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzaal;->zzaR(J)V

    return v15
.end method

.method protected final zzau(Lcom/google/android/gms/internal/ads/zzhn;)I
    .locals 0

    .line 1
    sget p1, Lcom/google/android/gms/internal/ads/zzeu;->zza:I

    const/4 p1, 0x0

    return p1
.end method

.method public final zzt()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaal;->zzp:Lcom/google/android/gms/internal/ads/zzabv;

    if-eqz v0, :cond_1

    check-cast v0, Lcom/google/android/gms/internal/ads/zzaas;

    .line 1
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzaas;->zza:Lcom/google/android/gms/internal/ads/zzaax;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzaax;->zza(Lcom/google/android/gms/internal/ads/zzaax;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzaax;->zzi(Lcom/google/android/gms/internal/ads/zzaax;I)V

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaal;->zzi:Lcom/google/android/gms/internal/ads/zzabb;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzabb;->zzb()V

    return-void
.end method

.method public final zzu(ILjava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzii;
        }
    .end annotation

    const/4 v0, 0x1

    if-eq p1, v0, :cond_a

    const/4 v1, 0x7

    if-eq p1, v1, :cond_8

    const/16 v1, 0xa

    if-eq p1, v1, :cond_7

    const/4 v1, 0x4

    if-eq p1, v1, :cond_6

    const/4 v1, 0x5

    if-eq p1, v1, :cond_4

    const/16 v1, 0xd

    if-eq p1, v1, :cond_3

    const/16 v1, 0xe

    if-eq p1, v1, :cond_2

    const/16 v1, 0x10

    if-eq p1, v1, :cond_1

    const/16 v1, 0x11

    if-eq p1, v1, :cond_0

    .line 32
    invoke-super {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zztg;->zzu(ILjava/lang/Object;)V

    return-void

    .line 27
    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaal;->zzs:Landroid/view/Surface;

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/ads/zzaal;->zzba(Ljava/lang/Object;)V

    .line 30
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 28
    check-cast p2, Lcom/google/android/gms/internal/ads/zzaal;

    .line 29
    invoke-virtual {p2, v0, p1}, Lcom/google/android/gms/internal/ads/zzhx;->zzu(ILjava/lang/Object;)V

    return-void

    .line 26
    :cond_1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 21
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzaal;->zzH:I

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zztg;->zzaz()Lcom/google/android/gms/internal/ads/zzsw;

    move-result-object p1

    if-eqz p1, :cond_9

    .line 22
    sget p2, Lcom/google/android/gms/internal/ads/zzeu;->zza:I

    const/16 v0, 0x23

    if-lt p2, v0, :cond_9

    new-instance p2, Landroid/os/Bundle;

    .line 23
    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzaal;->zzH:I

    neg-int v0, v0

    const/4 v1, 0x0

    .line 24
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    const-string v1, "importance"

    invoke-virtual {p2, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 25
    invoke-interface {p1, p2}, Lcom/google/android/gms/internal/ads/zzsw;->zzq(Landroid/os/Bundle;)V

    return-void

    .line 20
    :cond_2
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    check-cast p2, Lcom/google/android/gms/internal/ads/zzel;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzel;->zzb()I

    move-result p1

    if-eqz p1, :cond_9

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzel;->zza()I

    move-result p1

    if-eqz p1, :cond_9

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzaal;->zzu:Lcom/google/android/gms/internal/ads/zzel;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaal;->zzp:Lcom/google/android/gms/internal/ads/zzabv;

    if-eqz p1, :cond_9

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaal;->zzs:Landroid/view/Surface;

    .line 18
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdc;->zzb(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Landroid/view/Surface;

    check-cast p1, Lcom/google/android/gms/internal/ads/zzaas;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzaas;->zza:Lcom/google/android/gms/internal/ads/zzaax;

    .line 19
    invoke-virtual {p1, v0, p2}, Lcom/google/android/gms/internal/ads/zzaax;->zzp(Landroid/view/Surface;Lcom/google/android/gms/internal/ads/zzel;)V

    return-void

    .line 16
    :cond_3
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    check-cast p2, Ljava/util/List;

    .line 14
    sget-object p1, Lcom/google/android/gms/internal/ads/zzbz;->zza:Lcom/google/android/gms/internal/ads/zzfww;

    invoke-virtual {p2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_9

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzaal;->zzr:Ljava/util/List;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaal;->zzp:Lcom/google/android/gms/internal/ads/zzabv;

    if-eqz p1, :cond_9

    .line 15
    invoke-interface {p1, p2}, Lcom/google/android/gms/internal/ads/zzabv;->zzk(Ljava/util/List;)V

    return-void

    .line 7
    :cond_4
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzaal;->zzx:I

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzaal;->zzp:Lcom/google/android/gms/internal/ads/zzabv;

    if-eqz p2, :cond_5

    .line 5
    invoke-interface {p2, p1}, Lcom/google/android/gms/internal/ads/zzabv;->zzi(I)V

    return-void

    :cond_5
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzaal;->zzi:Lcom/google/android/gms/internal/ads/zzabb;

    .line 6
    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzabb;->zzh(I)V

    return-void

    .line 3
    :cond_6
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzaal;->zzw:I

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zztg;->zzaz()Lcom/google/android/gms/internal/ads/zzsw;

    move-result-object p2

    if-eqz p2, :cond_9

    .line 2
    invoke-interface {p2, p1}, Lcom/google/android/gms/internal/ads/zzsw;->zzr(I)V

    return-void

    .line 12
    :cond_7
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget p2, p0, Lcom/google/android/gms/internal/ads/zzaal;->zzI:I

    if-eq p2, p1, :cond_9

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzaal;->zzI:I

    return-void

    .line 10
    :cond_8
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    check-cast p2, Lcom/google/android/gms/internal/ads/zzaay;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzaal;->zzJ:Lcom/google/android/gms/internal/ads/zzaay;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaal;->zzp:Lcom/google/android/gms/internal/ads/zzabv;

    if-eqz p1, :cond_9

    check-cast p1, Lcom/google/android/gms/internal/ads/zzaas;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzaas;->zza:Lcom/google/android/gms/internal/ads/zzaax;

    .line 9
    invoke-static {p1, p2}, Lcom/google/android/gms/internal/ads/zzaax;->zzm(Lcom/google/android/gms/internal/ads/zzaax;Lcom/google/android/gms/internal/ads/zzaay;)V

    :cond_9
    return-void

    .line 31
    :cond_a
    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/ads/zzaal;->zzba(Ljava/lang/Object;)V

    return-void
.end method

.method protected final zzx()V
    .locals 3

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzaal;->zzG:Lcom/google/android/gms/internal/ads/zzcd;

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzaal;->zzL:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzaal;->zzv:Z

    :try_start_0
    invoke-super {p0}, Lcom/google/android/gms/internal/ads/zztg;->zzx()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaal;->zzg:Lcom/google/android/gms/internal/ads/zzabr;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaal;->zza:Lcom/google/android/gms/internal/ads/zzhy;

    .line 2
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzabr;->zzm(Lcom/google/android/gms/internal/ads/zzhy;)V

    .line 3
    sget-object v1, Lcom/google/android/gms/internal/ads/zzcd;->zza:Lcom/google/android/gms/internal/ads/zzcd;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzabr;->zzt(Lcom/google/android/gms/internal/ads/zzcd;)V

    return-void

    :catchall_0
    move-exception v0

    .line 1
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaal;->zzg:Lcom/google/android/gms/internal/ads/zzabr;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzaal;->zza:Lcom/google/android/gms/internal/ads/zzhy;

    .line 2
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzabr;->zzm(Lcom/google/android/gms/internal/ads/zzhy;)V

    .line 3
    sget-object v2, Lcom/google/android/gms/internal/ads/zzcd;->zza:Lcom/google/android/gms/internal/ads/zzcd;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzabr;->zzt(Lcom/google/android/gms/internal/ads/zzcd;)V

    .line 4
    throw v0
.end method

.method protected final zzy(ZZ)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzii;
        }
    .end annotation

    .line 1
    invoke-super {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zztg;->zzy(ZZ)V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhx;->zzn()Lcom/google/android/gms/internal/ads/zzly;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaal;->zzg:Lcom/google/android/gms/internal/ads/zzabr;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaal;->zza:Lcom/google/android/gms/internal/ads/zzhy;

    .line 3
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzabr;->zzo(Lcom/google/android/gms/internal/ads/zzhy;)V

    iget-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzaal;->zzq:Z

    const/4 v0, 0x1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaal;->zzr:Ljava/util/List;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaal;->zzp:Lcom/google/android/gms/internal/ads/zzabv;

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaal;->zze:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaal;->zzi:Lcom/google/android/gms/internal/ads/zzabb;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzaar;

    .line 4
    invoke-direct {v2, p1, v1}, Lcom/google/android/gms/internal/ads/zzaar;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzabb;)V

    .line 5
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhx;->zzi()Lcom/google/android/gms/internal/ads/zzdg;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/google/android/gms/internal/ads/zzaar;->zze(Lcom/google/android/gms/internal/ads/zzdg;)Lcom/google/android/gms/internal/ads/zzaar;

    .line 6
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzaar;->zzf()Lcom/google/android/gms/internal/ads/zzaax;

    move-result-object p1

    .line 7
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzaax;->zzq(I)V

    const/4 v1, 0x0

    .line 8
    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/ads/zzaax;->zze(I)Lcom/google/android/gms/internal/ads/zzabv;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaal;->zzp:Lcom/google/android/gms/internal/ads/zzabv;

    :cond_0
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzaal;->zzq:Z

    :cond_1
    xor-int/lit8 p1, p2, 0x1

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzaal;->zzp:Lcom/google/android/gms/internal/ads/zzabv;

    if-eqz p2, :cond_6

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaal;->zzJ:Lcom/google/android/gms/internal/ads/zzaay;

    if-eqz v0, :cond_2

    check-cast p2, Lcom/google/android/gms/internal/ads/zzaas;

    iget-object p2, p2, Lcom/google/android/gms/internal/ads/zzaas;->zza:Lcom/google/android/gms/internal/ads/zzaax;

    .line 9
    invoke-static {p2, v0}, Lcom/google/android/gms/internal/ads/zzaax;->zzm(Lcom/google/android/gms/internal/ads/zzaax;Lcom/google/android/gms/internal/ads/zzaay;)V

    :cond_2
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzaal;->zzs:Landroid/view/Surface;

    if-eqz p2, :cond_3

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzaal;->zzu:Lcom/google/android/gms/internal/ads/zzel;

    .line 10
    sget-object v0, Lcom/google/android/gms/internal/ads/zzel;->zza:Lcom/google/android/gms/internal/ads/zzel;

    invoke-virtual {p2, v0}, Lcom/google/android/gms/internal/ads/zzel;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_3

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzaal;->zzp:Lcom/google/android/gms/internal/ads/zzabv;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaal;->zzs:Landroid/view/Surface;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaal;->zzu:Lcom/google/android/gms/internal/ads/zzel;

    check-cast p2, Lcom/google/android/gms/internal/ads/zzaas;

    iget-object p2, p2, Lcom/google/android/gms/internal/ads/zzaas;->zza:Lcom/google/android/gms/internal/ads/zzaax;

    .line 11
    invoke-virtual {p2, v0, v1}, Lcom/google/android/gms/internal/ads/zzaax;->zzp(Landroid/view/Surface;Lcom/google/android/gms/internal/ads/zzel;)V

    :cond_3
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzaal;->zzp:Lcom/google/android/gms/internal/ads/zzabv;

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzaal;->zzx:I

    .line 12
    invoke-interface {p2, v0}, Lcom/google/android/gms/internal/ads/zzabv;->zzi(I)V

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzaal;->zzp:Lcom/google/android/gms/internal/ads/zzabv;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zztg;->zzat()F

    move-result v0

    check-cast p2, Lcom/google/android/gms/internal/ads/zzaas;

    iget-object p2, p2, Lcom/google/android/gms/internal/ads/zzaas;->zza:Lcom/google/android/gms/internal/ads/zzaax;

    .line 13
    invoke-static {p2, v0}, Lcom/google/android/gms/internal/ads/zzaax;->zzl(Lcom/google/android/gms/internal/ads/zzaax;F)V

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzaal;->zzr:Ljava/util/List;

    if-eqz p2, :cond_4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaal;->zzp:Lcom/google/android/gms/internal/ads/zzabv;

    .line 14
    invoke-interface {v0, p2}, Lcom/google/android/gms/internal/ads/zzabv;->zzk(Ljava/util/List;)V

    :cond_4
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzaal;->zzp:Lcom/google/android/gms/internal/ads/zzabv;

    check-cast p2, Lcom/google/android/gms/internal/ads/zzaas;

    iget-object p2, p2, Lcom/google/android/gms/internal/ads/zzaas;->zza:Lcom/google/android/gms/internal/ads/zzaax;

    .line 15
    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/zzaax;->zzi(Lcom/google/android/gms/internal/ads/zzaax;I)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zztg;->zzay()Lcom/google/android/gms/internal/ads/zzlt;

    move-result-object p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaal;->zzp:Lcom/google/android/gms/internal/ads/zzabv;

    check-cast p1, Lcom/google/android/gms/internal/ads/zzaas;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzaas;->zza:Lcom/google/android/gms/internal/ads/zzaax;

    .line 16
    :cond_5
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zztg;->zzaC()V

    return-void

    :cond_6
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzaal;->zzi:Lcom/google/android/gms/internal/ads/zzabb;

    .line 17
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhx;->zzi()Lcom/google/android/gms/internal/ads/zzdg;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/google/android/gms/internal/ads/zzabb;->zzi(Lcom/google/android/gms/internal/ads/zzdg;)V

    .line 18
    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzabb;->zzf(I)V

    return-void
.end method

.method protected final zzz(JZ)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzii;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaal;->zzp:Lcom/google/android/gms/internal/ads/zzabv;

    if-eqz v0, :cond_0

    if-nez p3, :cond_0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzabv;->zzc(Z)V

    .line 2
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zztg;->zzz(JZ)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaal;->zzp:Lcom/google/android/gms/internal/ads/zzabv;

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaal;->zzi:Lcom/google/android/gms/internal/ads/zzabb;

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzabb;->zzg()V

    :cond_1
    const/4 p1, 0x0

    if-eqz p3, :cond_3

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzaal;->zzp:Lcom/google/android/gms/internal/ads/zzabv;

    if-eqz p2, :cond_2

    .line 4
    invoke-interface {p2, p1}, Lcom/google/android/gms/internal/ads/zzabv;->zzd(Z)V

    goto :goto_0

    :cond_2
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzaal;->zzi:Lcom/google/android/gms/internal/ads/zzabb;

    .line 5
    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzabb;->zzc(Z)V

    .line 4
    :cond_3
    :goto_0
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzaal;->zzA:I

    return-void
.end method
