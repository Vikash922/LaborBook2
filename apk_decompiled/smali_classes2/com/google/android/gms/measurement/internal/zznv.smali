.class public Lcom/google/android/gms/measurement/internal/zznv;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement@@22.1.0"

# interfaces
.implements Lcom/google/android/gms/measurement/internal/zzja;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/measurement/internal/zznv$zzb;,
        Lcom/google/android/gms/measurement/internal/zznv$zza;
    }
.end annotation


# static fields
.field private static volatile zza:Lcom/google/android/gms/measurement/internal/zznv;


# instance fields
.field private zzaa:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private zzab:J

.field private final zzac:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/measurement/internal/zzjc;",
            ">;"
        }
    .end annotation
.end field

.field private final zzad:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/measurement/internal/zzaz;",
            ">;"
        }
    .end annotation
.end field

.field private final zzae:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/measurement/internal/zznv$zzb;",
            ">;"
        }
    .end annotation
.end field

.field private zzaf:Lcom/google/android/gms/measurement/internal/zzlh;

.field private zzag:Ljava/lang/String;

.field private final zzah:Lcom/google/android/gms/measurement/internal/zzoo;

.field private zzb:Lcom/google/android/gms/measurement/internal/zzhg;

.field private zzc:Lcom/google/android/gms/measurement/internal/zzgp;

.field private zzd:Lcom/google/android/gms/measurement/internal/zzam;

.field private zze:Lcom/google/android/gms/measurement/internal/zzgs;

.field private zzf:Lcom/google/android/gms/measurement/internal/zznm;

.field private zzg:Lcom/google/android/gms/measurement/internal/zzv;

.field private final zzh:Lcom/google/android/gms/measurement/internal/zzol;

.field private zzi:Lcom/google/android/gms/measurement/internal/zzlf;

.field private zzj:Lcom/google/android/gms/measurement/internal/zzms;

.field private final zzk:Lcom/google/android/gms/measurement/internal/zznq;

.field private zzl:Lcom/google/android/gms/measurement/internal/zzhd;

.field private final zzm:Lcom/google/android/gms/measurement/internal/zzhw;

.field private zzn:Z

.field private zzo:Z

.field private zzp:J

.field private zzq:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private final zzr:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private zzs:I

.field private zzt:I

.field private zzu:Z

.field private zzv:Z

.field private zzw:Z

.field private zzx:Ljava/nio/channels/FileLock;

.field private zzy:Ljava/nio/channels/FileChannel;

.field private zzz:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/google/android/gms/measurement/internal/zzoh;)V
    .locals 1

    const/4 v0, 0x0

    .line 430
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/measurement/internal/zznv;-><init>(Lcom/google/android/gms/measurement/internal/zzoh;Lcom/google/android/gms/measurement/internal/zzhw;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/measurement/internal/zzoh;Lcom/google/android/gms/measurement/internal/zzhw;)V
    .locals 2

    .line 432
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p2, 0x0

    .line 433
    iput-boolean p2, p0, Lcom/google/android/gms/measurement/internal/zznv;->zzn:Z

    .line 434
    new-instance p2, Ljava/util/HashSet;

    invoke-direct {p2}, Ljava/util/HashSet;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zznv;->zzr:Ljava/util/Set;

    .line 435
    new-instance p2, Lcom/google/android/gms/measurement/internal/zzoa;

    invoke-direct {p2, p0}, Lcom/google/android/gms/measurement/internal/zzoa;-><init>(Lcom/google/android/gms/measurement/internal/zznv;)V

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zznv;->zzah:Lcom/google/android/gms/measurement/internal/zzoo;

    .line 436
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 437
    iget-object p2, p1, Lcom/google/android/gms/measurement/internal/zzoh;->zza:Landroid/content/Context;

    const/4 v0, 0x0

    .line 438
    invoke-static {p2, v0, v0}, Lcom/google/android/gms/measurement/internal/zzhw;->zza(Landroid/content/Context;Lcom/google/android/gms/internal/measurement/zzdt;Ljava/lang/Long;)Lcom/google/android/gms/measurement/internal/zzhw;

    move-result-object p2

    .line 440
    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zznv;->zzm:Lcom/google/android/gms/measurement/internal/zzhw;

    const-wide/16 v0, -0x1

    .line 441
    iput-wide v0, p0, Lcom/google/android/gms/measurement/internal/zznv;->zzab:J

    .line 443
    new-instance p2, Lcom/google/android/gms/measurement/internal/zznq;

    invoke-direct {p2, p0}, Lcom/google/android/gms/measurement/internal/zznq;-><init>(Lcom/google/android/gms/measurement/internal/zznv;)V

    .line 444
    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zznv;->zzk:Lcom/google/android/gms/measurement/internal/zznq;

    .line 446
    new-instance p2, Lcom/google/android/gms/measurement/internal/zzol;

    invoke-direct {p2, p0}, Lcom/google/android/gms/measurement/internal/zzol;-><init>(Lcom/google/android/gms/measurement/internal/zznv;)V

    .line 448
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zznr;->zzam()V

    .line 449
    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zznv;->zzh:Lcom/google/android/gms/measurement/internal/zzol;

    .line 451
    new-instance p2, Lcom/google/android/gms/measurement/internal/zzgp;

    invoke-direct {p2, p0}, Lcom/google/android/gms/measurement/internal/zzgp;-><init>(Lcom/google/android/gms/measurement/internal/zznv;)V

    .line 453
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zznr;->zzam()V

    .line 454
    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zznv;->zzc:Lcom/google/android/gms/measurement/internal/zzgp;

    .line 456
    new-instance p2, Lcom/google/android/gms/measurement/internal/zzhg;

    invoke-direct {p2, p0}, Lcom/google/android/gms/measurement/internal/zzhg;-><init>(Lcom/google/android/gms/measurement/internal/zznv;)V

    .line 458
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zznr;->zzam()V

    .line 459
    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zznv;->zzb:Lcom/google/android/gms/measurement/internal/zzhg;

    .line 460
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zznv;->zzac:Ljava/util/Map;

    .line 461
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zznv;->zzad:Ljava/util/Map;

    .line 462
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zznv;->zzae:Ljava/util/Map;

    .line 463
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzl()Lcom/google/android/gms/measurement/internal/zzhp;

    move-result-object p2

    new-instance v0, Lcom/google/android/gms/measurement/internal/zznx;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/measurement/internal/zznx;-><init>(Lcom/google/android/gms/measurement/internal/zznv;Lcom/google/android/gms/measurement/internal/zzoh;)V

    .line 464
    invoke-virtual {p2, v0}, Lcom/google/android/gms/measurement/internal/zzhp;->zzb(Ljava/lang/Runnable;)V

    return-void
.end method

.method private final zza(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzai;)I
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zznv;->zzb:Lcom/google/android/gms/measurement/internal/zzhg;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/measurement/internal/zzhg;->zzb(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzfx$zza;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 2
    sget-object p1, Lcom/google/android/gms/measurement/internal/zzjc$zza;->zzd:Lcom/google/android/gms/measurement/internal/zzjc$zza;

    sget-object v0, Lcom/google/android/gms/measurement/internal/zzal;->zzj:Lcom/google/android/gms/measurement/internal/zzal;

    invoke-virtual {p2, p1, v0}, Lcom/google/android/gms/measurement/internal/zzai;->zza(Lcom/google/android/gms/measurement/internal/zzjc$zza;Lcom/google/android/gms/measurement/internal/zzal;)V

    return v1

    .line 4
    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzox;->zza()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 5
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zze()Lcom/google/android/gms/measurement/internal/zzah;

    move-result-object v0

    sget-object v3, Lcom/google/android/gms/measurement/internal/zzbj;->zzcw:Lcom/google/android/gms/measurement/internal/zzfz;

    invoke-virtual {v0, v3}, Lcom/google/android/gms/measurement/internal/zzah;->zza(Lcom/google/android/gms/measurement/internal/zzfz;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzf()Lcom/google/android/gms/measurement/internal/zzam;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/measurement/internal/zzam;->zze(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzh;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 8
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzh;->zzak()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzd;->zza(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzd;

    move-result-object v0

    .line 9
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzd;->zza()Lcom/google/android/gms/measurement/internal/zzjb;

    move-result-object v0

    sget-object v3, Lcom/google/android/gms/measurement/internal/zzjb;->zzb:Lcom/google/android/gms/measurement/internal/zzjb;

    if-ne v0, v3, :cond_2

    .line 10
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zznv;->zzb:Lcom/google/android/gms/measurement/internal/zzhg;

    sget-object v3, Lcom/google/android/gms/measurement/internal/zzjc$zza;->zzd:Lcom/google/android/gms/measurement/internal/zzjc$zza;

    .line 11
    invoke-virtual {v0, p1, v3}, Lcom/google/android/gms/measurement/internal/zzhg;->zza(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzjc$zza;)Lcom/google/android/gms/measurement/internal/zzjb;

    move-result-object v0

    .line 12
    sget-object v3, Lcom/google/android/gms/measurement/internal/zzjb;->zza:Lcom/google/android/gms/measurement/internal/zzjb;

    if-eq v0, v3, :cond_2

    .line 13
    sget-object p1, Lcom/google/android/gms/measurement/internal/zzjc$zza;->zzd:Lcom/google/android/gms/measurement/internal/zzjc$zza;

    sget-object v3, Lcom/google/android/gms/measurement/internal/zzal;->zzi:Lcom/google/android/gms/measurement/internal/zzal;

    invoke-virtual {p2, p1, v3}, Lcom/google/android/gms/measurement/internal/zzai;->zza(Lcom/google/android/gms/measurement/internal/zzjc$zza;Lcom/google/android/gms/measurement/internal/zzal;)V

    .line 14
    sget-object p1, Lcom/google/android/gms/measurement/internal/zzjb;->zzd:Lcom/google/android/gms/measurement/internal/zzjb;

    if-ne v0, p1, :cond_1

    return v2

    :cond_1
    return v1

    .line 15
    :cond_2
    sget-object v0, Lcom/google/android/gms/measurement/internal/zzjc$zza;->zzd:Lcom/google/android/gms/measurement/internal/zzjc$zza;

    sget-object v3, Lcom/google/android/gms/measurement/internal/zzal;->zzb:Lcom/google/android/gms/measurement/internal/zzal;

    invoke-virtual {p2, v0, v3}, Lcom/google/android/gms/measurement/internal/zzai;->zza(Lcom/google/android/gms/measurement/internal/zzjc$zza;Lcom/google/android/gms/measurement/internal/zzal;)V

    .line 16
    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/zznv;->zzb:Lcom/google/android/gms/measurement/internal/zzhg;

    sget-object v0, Lcom/google/android/gms/measurement/internal/zzjc$zza;->zzd:Lcom/google/android/gms/measurement/internal/zzjc$zza;

    .line 17
    invoke-virtual {p2, p1, v0}, Lcom/google/android/gms/measurement/internal/zzhg;->zzc(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzjc$zza;)Z

    move-result p1

    if-eqz p1, :cond_3

    return v2

    :cond_3
    return v1
.end method

.method private final zza(Ljava/nio/channels/FileChannel;)I
    .locals 5

    .line 20
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzl()Lcom/google/android/gms/measurement/internal/zzhp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zziy;->zzt()V

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    .line 21
    invoke-virtual {p1}, Ljava/nio/channels/FileChannel;->isOpen()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    const/4 v1, 0x4

    .line 25
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    const-wide/16 v3, 0x0

    .line 26
    :try_start_0
    invoke-virtual {p1, v3, v4}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    .line 27
    invoke-virtual {p1, v2}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result p1

    if-eq p1, v1, :cond_2

    const/4 v1, -0x1

    if-eq p1, v1, :cond_1

    .line 30
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzj()Lcom/google/android/gms/measurement/internal/zzgi;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzgi;->zzu()Lcom/google/android/gms/measurement/internal/zzgk;

    move-result-object v1

    const-string v2, "Unexpected data length. Bytes read"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, v2, p1}, Lcom/google/android/gms/measurement/internal/zzgk;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1
    return v0

    .line 32
    :cond_2
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 33
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 36
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzj()Lcom/google/android/gms/measurement/internal/zzgi;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzgi;->zzg()Lcom/google/android/gms/measurement/internal/zzgk;

    move-result-object v1

    const-string v2, "Failed to read from channel"

    invoke-virtual {v1, v2, p1}, Lcom/google/android/gms/measurement/internal/zzgk;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_0
    return v0

    .line 22
    :cond_3
    :goto_1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzj()Lcom/google/android/gms/measurement/internal/zzgi;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzgi;->zzg()Lcom/google/android/gms/measurement/internal/zzgk;

    move-result-object p1

    const-string v1, "Bad channel to read from"

    invoke-virtual {p1, v1}, Lcom/google/android/gms/measurement/internal/zzgk;->zza(Ljava/lang/String;)V

    return v0
.end method

.method private final zza(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzaz;Lcom/google/android/gms/measurement/internal/zzjc;Lcom/google/android/gms/measurement/internal/zzai;)Lcom/google/android/gms/measurement/internal/zzaz;
    .locals 8

    .line 217
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzi()Lcom/google/android/gms/measurement/internal/zzhg;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/measurement/internal/zzhg;->zzb(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzfx$zza;

    move-result-object v0

    const-string v1, "-"

    const/16 v2, 0x5a

    const/4 v3, 0x1

    .line 225
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const/4 v5, 0x0

    .line 224
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    if-nez v0, :cond_1

    .line 218
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzaz;->zzc()Lcom/google/android/gms/measurement/internal/zzjb;

    move-result-object p1

    sget-object p3, Lcom/google/android/gms/measurement/internal/zzjb;->zzc:Lcom/google/android/gms/measurement/internal/zzjb;

    if-ne p1, p3, :cond_0

    .line 219
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzaz;->zza()I

    move-result v2

    .line 220
    sget-object p1, Lcom/google/android/gms/measurement/internal/zzjc$zza;->zzc:Lcom/google/android/gms/measurement/internal/zzjc$zza;

    invoke-virtual {p4, p1, v2}, Lcom/google/android/gms/measurement/internal/zzai;->zza(Lcom/google/android/gms/measurement/internal/zzjc$zza;I)V

    goto :goto_0

    .line 222
    :cond_0
    sget-object p1, Lcom/google/android/gms/measurement/internal/zzjc$zza;->zzc:Lcom/google/android/gms/measurement/internal/zzjc$zza;

    sget-object p2, Lcom/google/android/gms/measurement/internal/zzal;->zzj:Lcom/google/android/gms/measurement/internal/zzal;

    invoke-virtual {p4, p1, p2}, Lcom/google/android/gms/measurement/internal/zzai;->zza(Lcom/google/android/gms/measurement/internal/zzjc$zza;Lcom/google/android/gms/measurement/internal/zzal;)V

    .line 223
    :goto_0
    new-instance p1, Lcom/google/android/gms/measurement/internal/zzaz;

    .line 225
    invoke-direct {p1, v6, v2, v4, v1}, Lcom/google/android/gms/measurement/internal/zzaz;-><init>(Ljava/lang/Boolean;ILjava/lang/Boolean;Ljava/lang/String;)V

    return-object p1

    .line 227
    :cond_1
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzaz;->zzc()Lcom/google/android/gms/measurement/internal/zzjb;

    move-result-object v0

    .line 228
    sget-object v7, Lcom/google/android/gms/measurement/internal/zzjb;->zzd:Lcom/google/android/gms/measurement/internal/zzjb;

    if-eq v0, v7, :cond_e

    sget-object v7, Lcom/google/android/gms/measurement/internal/zzjb;->zzc:Lcom/google/android/gms/measurement/internal/zzjb;

    if-ne v0, v7, :cond_2

    goto/16 :goto_6

    .line 232
    :cond_2
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzox;->zza()Z

    move-result p2

    if-eqz p2, :cond_8

    .line 233
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zze()Lcom/google/android/gms/measurement/internal/zzah;

    move-result-object p2

    sget-object v7, Lcom/google/android/gms/measurement/internal/zzbj;->zzcw:Lcom/google/android/gms/measurement/internal/zzfz;

    invoke-virtual {p2, v7}, Lcom/google/android/gms/measurement/internal/zzah;->zza(Lcom/google/android/gms/measurement/internal/zzfz;)Z

    move-result p2

    if-eqz p2, :cond_8

    .line 236
    sget-object p2, Lcom/google/android/gms/measurement/internal/zzjb;->zzb:Lcom/google/android/gms/measurement/internal/zzjb;

    if-ne v0, p2, :cond_3

    .line 237
    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/zznv;->zzb:Lcom/google/android/gms/measurement/internal/zzhg;

    sget-object v0, Lcom/google/android/gms/measurement/internal/zzjc$zza;->zzc:Lcom/google/android/gms/measurement/internal/zzjc$zza;

    .line 238
    invoke-virtual {p2, p1, v0}, Lcom/google/android/gms/measurement/internal/zzhg;->zza(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzjc$zza;)Lcom/google/android/gms/measurement/internal/zzjb;

    move-result-object p2

    .line 239
    sget-object v0, Lcom/google/android/gms/measurement/internal/zzjb;->zza:Lcom/google/android/gms/measurement/internal/zzjb;

    if-eq p2, v0, :cond_3

    .line 240
    sget-object p3, Lcom/google/android/gms/measurement/internal/zzjc$zza;->zzc:Lcom/google/android/gms/measurement/internal/zzjc$zza;

    sget-object v0, Lcom/google/android/gms/measurement/internal/zzal;->zzi:Lcom/google/android/gms/measurement/internal/zzal;

    invoke-virtual {p4, p3, v0}, Lcom/google/android/gms/measurement/internal/zzai;->zza(Lcom/google/android/gms/measurement/internal/zzjc$zza;Lcom/google/android/gms/measurement/internal/zzal;)V

    :goto_1
    move-object v0, p2

    goto/16 :goto_7

    .line 242
    :cond_3
    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/zznv;->zzb:Lcom/google/android/gms/measurement/internal/zzhg;

    sget-object v0, Lcom/google/android/gms/measurement/internal/zzjc$zza;->zzc:Lcom/google/android/gms/measurement/internal/zzjc$zza;

    .line 243
    invoke-virtual {p2, p1, v0}, Lcom/google/android/gms/measurement/internal/zzhg;->zzb(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzjc$zza;)Lcom/google/android/gms/measurement/internal/zzjc$zza;

    move-result-object p2

    .line 245
    invoke-virtual {p3}, Lcom/google/android/gms/measurement/internal/zzjc;->zzc()Lcom/google/android/gms/measurement/internal/zzjb;

    move-result-object p3

    .line 246
    sget-object v0, Lcom/google/android/gms/measurement/internal/zzjb;->zzd:Lcom/google/android/gms/measurement/internal/zzjb;

    if-eq p3, v0, :cond_5

    sget-object v0, Lcom/google/android/gms/measurement/internal/zzjb;->zzc:Lcom/google/android/gms/measurement/internal/zzjb;

    if-ne p3, v0, :cond_4

    goto :goto_2

    :cond_4
    move v3, v5

    .line 247
    :cond_5
    :goto_2
    sget-object v0, Lcom/google/android/gms/measurement/internal/zzjc$zza;->zza:Lcom/google/android/gms/measurement/internal/zzjc$zza;

    if-ne p2, v0, :cond_6

    if-eqz v3, :cond_6

    .line 248
    sget-object p2, Lcom/google/android/gms/measurement/internal/zzjc$zza;->zzc:Lcom/google/android/gms/measurement/internal/zzjc$zza;

    sget-object v0, Lcom/google/android/gms/measurement/internal/zzal;->zzc:Lcom/google/android/gms/measurement/internal/zzal;

    invoke-virtual {p4, p2, v0}, Lcom/google/android/gms/measurement/internal/zzai;->zza(Lcom/google/android/gms/measurement/internal/zzjc$zza;Lcom/google/android/gms/measurement/internal/zzal;)V

    move-object v0, p3

    goto/16 :goto_7

    .line 250
    :cond_6
    sget-object p2, Lcom/google/android/gms/measurement/internal/zzjc$zza;->zzc:Lcom/google/android/gms/measurement/internal/zzjc$zza;

    sget-object p3, Lcom/google/android/gms/measurement/internal/zzal;->zzb:Lcom/google/android/gms/measurement/internal/zzal;

    invoke-virtual {p4, p2, p3}, Lcom/google/android/gms/measurement/internal/zzai;->zza(Lcom/google/android/gms/measurement/internal/zzjc$zza;Lcom/google/android/gms/measurement/internal/zzal;)V

    .line 251
    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/zznv;->zzb:Lcom/google/android/gms/measurement/internal/zzhg;

    sget-object p3, Lcom/google/android/gms/measurement/internal/zzjc$zza;->zzc:Lcom/google/android/gms/measurement/internal/zzjc$zza;

    .line 252
    invoke-virtual {p2, p1, p3}, Lcom/google/android/gms/measurement/internal/zzhg;->zzc(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzjc$zza;)Z

    move-result p2

    if-eqz p2, :cond_7

    .line 254
    sget-object p2, Lcom/google/android/gms/measurement/internal/zzjb;->zzd:Lcom/google/android/gms/measurement/internal/zzjb;

    goto :goto_1

    .line 255
    :cond_7
    sget-object p2, Lcom/google/android/gms/measurement/internal/zzjb;->zzc:Lcom/google/android/gms/measurement/internal/zzjb;

    goto :goto_1

    .line 259
    :cond_8
    sget-object p2, Lcom/google/android/gms/measurement/internal/zzjb;->zza:Lcom/google/android/gms/measurement/internal/zzjb;

    if-eq v0, p2, :cond_a

    sget-object p2, Lcom/google/android/gms/measurement/internal/zzjb;->zzb:Lcom/google/android/gms/measurement/internal/zzjb;

    if-ne v0, p2, :cond_9

    goto :goto_3

    :cond_9
    move v3, v5

    :cond_a
    :goto_3
    invoke-static {v3}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(Z)V

    .line 261
    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/zznv;->zzb:Lcom/google/android/gms/measurement/internal/zzhg;

    sget-object v3, Lcom/google/android/gms/measurement/internal/zzjc$zza;->zzc:Lcom/google/android/gms/measurement/internal/zzjc$zza;

    .line 262
    invoke-virtual {p2, p1, v3}, Lcom/google/android/gms/measurement/internal/zzhg;->zzb(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzjc$zza;)Lcom/google/android/gms/measurement/internal/zzjc$zza;

    move-result-object p2

    .line 263
    invoke-virtual {p3}, Lcom/google/android/gms/measurement/internal/zzjc;->zze()Ljava/lang/Boolean;

    move-result-object p3

    .line 264
    sget-object v3, Lcom/google/android/gms/measurement/internal/zzjc$zza;->zza:Lcom/google/android/gms/measurement/internal/zzjc$zza;

    if-ne p2, v3, :cond_c

    if-eqz p3, :cond_c

    .line 265
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_b

    .line 266
    sget-object p2, Lcom/google/android/gms/measurement/internal/zzjb;->zzd:Lcom/google/android/gms/measurement/internal/zzjb;

    goto :goto_4

    .line 267
    :cond_b
    sget-object p2, Lcom/google/android/gms/measurement/internal/zzjb;->zzc:Lcom/google/android/gms/measurement/internal/zzjb;

    :goto_4
    move-object v0, p2

    .line 268
    sget-object p2, Lcom/google/android/gms/measurement/internal/zzjc$zza;->zzc:Lcom/google/android/gms/measurement/internal/zzjc$zza;

    sget-object p3, Lcom/google/android/gms/measurement/internal/zzal;->zzc:Lcom/google/android/gms/measurement/internal/zzal;

    invoke-virtual {p4, p2, p3}, Lcom/google/android/gms/measurement/internal/zzai;->zza(Lcom/google/android/gms/measurement/internal/zzjc$zza;Lcom/google/android/gms/measurement/internal/zzal;)V

    .line 269
    :cond_c
    sget-object p2, Lcom/google/android/gms/measurement/internal/zzjb;->zza:Lcom/google/android/gms/measurement/internal/zzjb;

    if-ne v0, p2, :cond_f

    .line 270
    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/zznv;->zzb:Lcom/google/android/gms/measurement/internal/zzhg;

    sget-object p3, Lcom/google/android/gms/measurement/internal/zzjc$zza;->zzc:Lcom/google/android/gms/measurement/internal/zzjc$zza;

    invoke-virtual {p2, p1, p3}, Lcom/google/android/gms/measurement/internal/zzhg;->zzc(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzjc$zza;)Z

    move-result p2

    if-eqz p2, :cond_d

    .line 271
    sget-object p2, Lcom/google/android/gms/measurement/internal/zzjb;->zzd:Lcom/google/android/gms/measurement/internal/zzjb;

    goto :goto_5

    .line 272
    :cond_d
    sget-object p2, Lcom/google/android/gms/measurement/internal/zzjb;->zzc:Lcom/google/android/gms/measurement/internal/zzjb;

    .line 273
    :goto_5
    sget-object p3, Lcom/google/android/gms/measurement/internal/zzjc$zza;->zzc:Lcom/google/android/gms/measurement/internal/zzjc$zza;

    sget-object v0, Lcom/google/android/gms/measurement/internal/zzal;->zzb:Lcom/google/android/gms/measurement/internal/zzal;

    invoke-virtual {p4, p3, v0}, Lcom/google/android/gms/measurement/internal/zzai;->zza(Lcom/google/android/gms/measurement/internal/zzjc$zza;Lcom/google/android/gms/measurement/internal/zzal;)V

    goto/16 :goto_1

    .line 229
    :cond_e
    :goto_6
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzaz;->zza()I

    move-result v2

    .line 230
    sget-object p2, Lcom/google/android/gms/measurement/internal/zzjc$zza;->zzc:Lcom/google/android/gms/measurement/internal/zzjc$zza;

    invoke-virtual {p4, p2, v2}, Lcom/google/android/gms/measurement/internal/zzai;->zza(Lcom/google/android/gms/measurement/internal/zzjc$zza;I)V

    .line 276
    :cond_f
    :goto_7
    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/zznv;->zzb:Lcom/google/android/gms/measurement/internal/zzhg;

    invoke-virtual {p2, p1}, Lcom/google/android/gms/measurement/internal/zzhg;->zzn(Ljava/lang/String;)Z

    move-result p2

    .line 278
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzi()Lcom/google/android/gms/measurement/internal/zzhg;

    move-result-object p3

    invoke-virtual {p3, p1}, Lcom/google/android/gms/measurement/internal/zzhg;->zzh(Ljava/lang/String;)Ljava/util/SortedSet;

    move-result-object p1

    .line 279
    sget-object p3, Lcom/google/android/gms/measurement/internal/zzjb;->zzc:Lcom/google/android/gms/measurement/internal/zzjb;

    if-eq v0, p3, :cond_12

    invoke-interface {p1}, Ljava/util/SortedSet;->isEmpty()Z

    move-result p3

    if-eqz p3, :cond_10

    goto :goto_8

    .line 284
    :cond_10
    new-instance p3, Lcom/google/android/gms/measurement/internal/zzaz;

    .line 286
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p4

    .line 287
    const-string v0, ""

    if-eqz p2, :cond_11

    invoke-static {v0, p1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    :cond_11
    invoke-direct {p3, v4, v2, p4, v0}, Lcom/google/android/gms/measurement/internal/zzaz;-><init>(Ljava/lang/Boolean;ILjava/lang/Boolean;Ljava/lang/String;)V

    return-object p3

    .line 280
    :cond_12
    :goto_8
    new-instance p1, Lcom/google/android/gms/measurement/internal/zzaz;

    .line 282
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-direct {p1, v6, v2, p2, v1}, Lcom/google/android/gms/measurement/internal/zzaz;-><init>(Ljava/lang/Boolean;ILjava/lang/Boolean;Ljava/lang/String;)V

    return-object p1
.end method

.method static bridge synthetic zza(Lcom/google/android/gms/measurement/internal/zznv;)Lcom/google/android/gms/measurement/internal/zzhw;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/zznv;->zzm:Lcom/google/android/gms/measurement/internal/zzhw;

    return-object p0
.end method

.method private static zza(Lcom/google/android/gms/measurement/internal/zznr;)Lcom/google/android/gms/measurement/internal/zznr;
    .locals 3

    if-eqz p0, :cond_1

    .line 321
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznr;->zzan()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    .line 322
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Component not initialized: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 320
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Upload Component not created"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static zza(Landroid/content/Context;)Lcom/google/android/gms/measurement/internal/zznv;
    .locals 2

    .line 325
    invoke-static {p0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 326
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 327
    sget-object v0, Lcom/google/android/gms/measurement/internal/zznv;->zza:Lcom/google/android/gms/measurement/internal/zznv;

    if-nez v0, :cond_1

    .line 328
    const-class v0, Lcom/google/android/gms/measurement/internal/zznv;

    monitor-enter v0

    .line 329
    :try_start_0
    sget-object v1, Lcom/google/android/gms/measurement/internal/zznv;->zza:Lcom/google/android/gms/measurement/internal/zznv;

    if-nez v1, :cond_0

    .line 331
    new-instance v1, Lcom/google/android/gms/measurement/internal/zzoh;

    invoke-direct {v1, p0}, Lcom/google/android/gms/measurement/internal/zzoh;-><init>(Landroid/content/Context;)V

    .line 332
    invoke-static {v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/measurement/internal/zzoh;

    .line 333
    new-instance v1, Lcom/google/android/gms/measurement/internal/zznv;

    invoke-direct {v1, p0}, Lcom/google/android/gms/measurement/internal/zznv;-><init>(Lcom/google/android/gms/measurement/internal/zzoh;)V

    .line 334
    sput-object v1, Lcom/google/android/gms/measurement/internal/zznv;->zza:Lcom/google/android/gms/measurement/internal/zznv;

    .line 335
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 336
    :cond_1
    :goto_0
    sget-object p0, Lcom/google/android/gms/measurement/internal/zznv;->zza:Lcom/google/android/gms/measurement/internal/zznv;

    return-object p0
.end method

.method private final zza(Lcom/google/android/gms/measurement/internal/zzh;)Ljava/lang/Boolean;
    .locals 7

    .line 339
    :try_start_0
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzh;->zze()J

    move-result-wide v0

    const-wide/32 v2, -0x80000000

    cmp-long v0, v0, v2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 341
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zznv;->zzm:Lcom/google/android/gms/measurement/internal/zzhw;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzhw;->zza()Landroid/content/Context;

    move-result-object v0

    .line 342
    invoke-static {v0}, Lcom/google/android/gms/common/wrappers/Wrappers;->packageManager(Landroid/content/Context;)Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzh;->zzac()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3, v2}, Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 343
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzh;->zze()J

    move-result-wide v3

    int-to-long v5, v0

    cmp-long p1, v3, v5

    if-nez p1, :cond_1

    .line 344
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 347
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zznv;->zzm:Lcom/google/android/gms/measurement/internal/zzhw;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzhw;->zza()Landroid/content/Context;

    move-result-object v0

    .line 348
    invoke-static {v0}, Lcom/google/android/gms/common/wrappers/Wrappers;->packageManager(Landroid/content/Context;)Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzh;->zzac()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3, v2}, Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 349
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzh;->zzaf()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 350
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 351
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 355
    :cond_1
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :catch_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private final zza(Lcom/google/android/gms/measurement/internal/zzjc;)Ljava/lang/String;
    .locals 3

    .line 370
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzjc;->zzj()Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0x10

    .line 372
    new-array p1, p1, [B

    .line 373
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzq()Lcom/google/android/gms/measurement/internal/zzop;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzop;->zzv()Ljava/security/SecureRandom;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 374
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-instance v1, Ljava/math/BigInteger;

    const/4 v2, 0x1

    invoke-direct {v1, v2, p1}, Ljava/math/BigInteger;-><init>(I[B)V

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v1, "%032x"

    invoke-static {v0, v1, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private static zza(Lcom/google/android/gms/internal/measurement/zzgn$zzf$zza;ILjava/lang/String;)V
    .locals 4

    .line 757
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzgn$zzf$zza;->zzf()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    .line 758
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    const-string v3, "_err"

    if-ge v1, v2, :cond_1

    .line 759
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/zzgn$zzh;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzgn$zzh;->zzg()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-void

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 762
    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzgn$zzh;->zze()Lcom/google/android/gms/internal/measurement/zzgn$zzh$zza;

    move-result-object v0

    .line 763
    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/measurement/zzgn$zzh$zza;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzgn$zzh$zza;

    move-result-object v0

    int-to-long v1, p1

    .line 764
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/measurement/zzgn$zzh$zza;->zza(J)Lcom/google/android/gms/internal/measurement/zzgn$zzh$zza;

    move-result-object p1

    .line 765
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzlc$zzb;->zzai()Lcom/google/android/gms/internal/measurement/zzml;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/measurement/zzlc;

    check-cast p1, Lcom/google/android/gms/internal/measurement/zzgn$zzh;

    .line 766
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzgn$zzh;->zze()Lcom/google/android/gms/internal/measurement/zzgn$zzh$zza;

    move-result-object v0

    const-string v1, "_ev"

    .line 767
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/measurement/zzgn$zzh$zza;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzgn$zzh$zza;

    move-result-object v0

    .line 768
    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/measurement/zzgn$zzh$zza;->zzb(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzgn$zzh$zza;

    move-result-object p2

    .line 769
    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/zzlc$zzb;->zzai()Lcom/google/android/gms/internal/measurement/zzml;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/internal/measurement/zzlc;

    check-cast p2, Lcom/google/android/gms/internal/measurement/zzgn$zzh;

    .line 770
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/measurement/zzgn$zzf$zza;->zza(Lcom/google/android/gms/internal/measurement/zzgn$zzh;)Lcom/google/android/gms/internal/measurement/zzgn$zzf$zza;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/measurement/zzgn$zzf$zza;->zza(Lcom/google/android/gms/internal/measurement/zzgn$zzh;)Lcom/google/android/gms/internal/measurement/zzgn$zzf$zza;

    return-void
.end method

.method private static zza(Lcom/google/android/gms/internal/measurement/zzgn$zzf$zza;Ljava/lang/String;)V
    .locals 3

    .line 1656
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzgn$zzf$zza;->zzf()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    .line 1657
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 1658
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/zzgn$zzh;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzgn$zzh;->zzg()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1660
    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/measurement/zzgn$zzf$zza;->zza(I)Lcom/google/android/gms/internal/measurement/zzgn$zzf$zza;

    return-void

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private final zza(Lcom/google/android/gms/internal/measurement/zzgn$zzk$zza;JZ)V
    .locals 9

    if-eqz p4, :cond_0

    .line 980
    const-string v0, "_se"

    goto :goto_0

    .line 979
    :cond_0
    const-string v0, "_lte"

    .line 982
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzf()Lcom/google/android/gms/measurement/internal/zzam;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzgn$zzk$zza;->zzt()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/measurement/internal/zzam;->zze(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzom;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 983
    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzom;->zze:Ljava/lang/Object;

    if-nez v2, :cond_1

    goto :goto_1

    .line 988
    :cond_1
    new-instance v8, Lcom/google/android/gms/measurement/internal/zzom;

    .line 989
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzgn$zzk$zza;->zzt()Ljava/lang/String;

    move-result-object v2

    .line 990
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzb()Lcom/google/android/gms/common/util/Clock;

    move-result-object v3

    invoke-interface {v3}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v5

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zzom;->zze:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    .line 991
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    add-long/2addr v3, p2

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    const-string v3, "auto"

    move-object v1, v8

    move-object v4, v0

    invoke-direct/range {v1 .. v7}, Lcom/google/android/gms/measurement/internal/zzom;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V

    goto :goto_2

    .line 984
    :cond_2
    :goto_1
    new-instance v8, Lcom/google/android/gms/measurement/internal/zzom;

    .line 985
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzgn$zzk$zza;->zzt()Ljava/lang/String;

    move-result-object v2

    .line 986
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzb()Lcom/google/android/gms/common/util/Clock;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v5

    .line 987
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    const-string v3, "auto"

    move-object v1, v8

    move-object v4, v0

    invoke-direct/range {v1 .. v7}, Lcom/google/android/gms/measurement/internal/zzom;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V

    .line 992
    :goto_2
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzgn$zzo;->zze()Lcom/google/android/gms/internal/measurement/zzgn$zzo$zza;

    move-result-object v1

    .line 993
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/measurement/zzgn$zzo$zza;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzgn$zzo$zza;

    move-result-object v1

    .line 994
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzb()Lcom/google/android/gms/common/util/Clock;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/measurement/zzgn$zzo$zza;->zzb(J)Lcom/google/android/gms/internal/measurement/zzgn$zzo$zza;

    move-result-object v1

    iget-object v2, v8, Lcom/google/android/gms/measurement/internal/zzom;->zze:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Long;

    .line 995
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/measurement/zzgn$zzo$zza;->zza(J)Lcom/google/android/gms/internal/measurement/zzgn$zzo$zza;

    move-result-object v1

    .line 996
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzlc$zzb;->zzai()Lcom/google/android/gms/internal/measurement/zzml;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/measurement/zzlc;

    check-cast v1, Lcom/google/android/gms/internal/measurement/zzgn$zzo;

    .line 999
    invoke-static {p1, v0}, Lcom/google/android/gms/measurement/internal/zzol;->zza(Lcom/google/android/gms/internal/measurement/zzgn$zzk$zza;Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_3

    .line 1001
    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/measurement/zzgn$zzk$zza;->zza(ILcom/google/android/gms/internal/measurement/zzgn$zzo;)Lcom/google/android/gms/internal/measurement/zzgn$zzk$zza;

    goto :goto_3

    .line 1004
    :cond_3
    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/measurement/zzgn$zzk$zza;->zza(Lcom/google/android/gms/internal/measurement/zzgn$zzo;)Lcom/google/android/gms/internal/measurement/zzgn$zzk$zza;

    :goto_3
    const-wide/16 v0, 0x0

    cmp-long p1, p2, v0

    if-lez p1, :cond_5

    .line 1006
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzf()Lcom/google/android/gms/measurement/internal/zzam;

    move-result-object p1

    invoke-virtual {p1, v8}, Lcom/google/android/gms/measurement/internal/zzam;->zza(Lcom/google/android/gms/measurement/internal/zzom;)Z

    if-eqz p4, :cond_4

    .line 1009
    const-string p1, "session-scoped"

    goto :goto_4

    .line 1008
    :cond_4
    const-string p1, "lifetime"

    .line 1010
    :goto_4
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzj()Lcom/google/android/gms/measurement/internal/zzgi;

    move-result-object p2

    .line 1011
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzgi;->zzp()Lcom/google/android/gms/measurement/internal/zzgk;

    move-result-object p2

    const-string p3, "Updated engagement user property. scope, value"

    iget-object p4, v8, Lcom/google/android/gms/measurement/internal/zzom;->zze:Ljava/lang/Object;

    .line 1012
    invoke-virtual {p2, p3, p1, p4}, Lcom/google/android/gms/measurement/internal/zzgk;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_5
    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/measurement/internal/zznv;Lcom/google/android/gms/measurement/internal/zzoh;)V
    .locals 3

    .line 389
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzl()Lcom/google/android/gms/measurement/internal/zzhp;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zziy;->zzt()V

    .line 391
    new-instance p1, Lcom/google/android/gms/measurement/internal/zzhd;

    invoke-direct {p1, p0}, Lcom/google/android/gms/measurement/internal/zzhd;-><init>(Lcom/google/android/gms/measurement/internal/zznv;)V

    .line 392
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zznv;->zzl:Lcom/google/android/gms/measurement/internal/zzhd;

    .line 394
    new-instance p1, Lcom/google/android/gms/measurement/internal/zzam;

    invoke-direct {p1, p0}, Lcom/google/android/gms/measurement/internal/zzam;-><init>(Lcom/google/android/gms/measurement/internal/zznv;)V

    .line 396
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zznr;->zzam()V

    .line 397
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zznv;->zzd:Lcom/google/android/gms/measurement/internal/zzam;

    .line 398
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zze()Lcom/google/android/gms/measurement/internal/zzah;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zznv;->zzb:Lcom/google/android/gms/measurement/internal/zzhg;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/measurement/internal/zzaj;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/measurement/internal/zzah;->zza(Lcom/google/android/gms/measurement/internal/zzaj;)V

    .line 400
    new-instance p1, Lcom/google/android/gms/measurement/internal/zzms;

    invoke-direct {p1, p0}, Lcom/google/android/gms/measurement/internal/zzms;-><init>(Lcom/google/android/gms/measurement/internal/zznv;)V

    .line 402
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zznr;->zzam()V

    .line 403
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zznv;->zzj:Lcom/google/android/gms/measurement/internal/zzms;

    .line 405
    new-instance p1, Lcom/google/android/gms/measurement/internal/zzv;

    invoke-direct {p1, p0}, Lcom/google/android/gms/measurement/internal/zzv;-><init>(Lcom/google/android/gms/measurement/internal/zznv;)V

    .line 407
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zznr;->zzam()V

    .line 408
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zznv;->zzg:Lcom/google/android/gms/measurement/internal/zzv;

    .line 410
    new-instance p1, Lcom/google/android/gms/measurement/internal/zzlf;

    invoke-direct {p1, p0}, Lcom/google/android/gms/measurement/internal/zzlf;-><init>(Lcom/google/android/gms/measurement/internal/zznv;)V

    .line 412
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zznr;->zzam()V

    .line 413
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zznv;->zzi:Lcom/google/android/gms/measurement/internal/zzlf;

    .line 415
    new-instance p1, Lcom/google/android/gms/measurement/internal/zznm;

    invoke-direct {p1, p0}, Lcom/google/android/gms/measurement/internal/zznm;-><init>(Lcom/google/android/gms/measurement/internal/zznv;)V

    .line 417
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zznr;->zzam()V

    .line 418
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zznv;->zzf:Lcom/google/android/gms/measurement/internal/zznm;

    .line 420
    new-instance p1, Lcom/google/android/gms/measurement/internal/zzgs;

    invoke-direct {p1, p0}, Lcom/google/android/gms/measurement/internal/zzgs;-><init>(Lcom/google/android/gms/measurement/internal/zznv;)V

    .line 421
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zznv;->zze:Lcom/google/android/gms/measurement/internal/zzgs;

    .line 422
    iget p1, p0, Lcom/google/android/gms/measurement/internal/zznv;->zzs:I

    iget v0, p0, Lcom/google/android/gms/measurement/internal/zznv;->zzt:I

    if-eq p1, v0, :cond_0

    .line 423
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzj()Lcom/google/android/gms/measurement/internal/zzgi;

    move-result-object p1

    .line 424
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzgi;->zzg()Lcom/google/android/gms/measurement/internal/zzgk;

    move-result-object p1

    iget v0, p0, Lcom/google/android/gms/measurement/internal/zznv;->zzs:I

    .line 425
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v1, p0, Lcom/google/android/gms/measurement/internal/zznv;->zzt:I

    .line 426
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 427
    const-string v2, "Not all upload components initialized"

    invoke-virtual {p1, v2, v0, v1}, Lcom/google/android/gms/measurement/internal/zzgk;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    const/4 p1, 0x1

    .line 428
    iput-boolean p1, p0, Lcom/google/android/gms/measurement/internal/zznv;->zzn:Z

    return-void
.end method

.method private final zza(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/zzgn$zzh$zza;Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 9

    const/4 v0, 0x4

    .line 2524
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_o"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "_sn"

    const/4 v3, 0x1

    aput-object v1, v0, v3

    const/4 v1, 0x2

    const-string v4, "_sc"

    aput-object v4, v0, v1

    const/4 v1, 0x3

    const-string v4, "_si"

    aput-object v4, v0, v1

    .line 2525
    invoke-static {v0}, Lcom/google/android/gms/common/util/CollectionUtils;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 2526
    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/zzgn$zzh$zza;->zzf()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/zzop;->zzg(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzop;->zzg(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 2528
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zze()Lcom/google/android/gms/measurement/internal/zzah;

    move-result-object p1

    invoke-virtual {p1, p4, v3}, Lcom/google/android/gms/measurement/internal/zzah;->zza(Ljava/lang/String;Z)I

    move-result p1

    goto :goto_1

    .line 2527
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zze()Lcom/google/android/gms/measurement/internal/zzah;

    move-result-object p1

    invoke-virtual {p1, p4, v3}, Lcom/google/android/gms/measurement/internal/zzah;->zzb(Ljava/lang/String;Z)I

    move-result p1

    :goto_1
    int-to-long v4, p1

    .line 2530
    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/zzgn$zzh$zza;->zzg()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/zzgn$zzh$zza;->zzg()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->codePointCount(II)I

    move-result p1

    int-to-long v1, p1

    .line 2532
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzq()Lcom/google/android/gms/measurement/internal/zzop;

    .line 2533
    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/zzgn$zzh$zza;->zzf()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zze()Lcom/google/android/gms/measurement/internal/zzah;

    const/16 v6, 0x28

    invoke-static {p1, v6, v3}, Lcom/google/android/gms/measurement/internal/zzop;->zza(Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object p1

    cmp-long v4, v1, v4

    if-lez v4, :cond_4

    .line 2534
    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/zzgn$zzh$zza;->zzf()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 2535
    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/zzgn$zzh$zza;->zzf()Ljava/lang/String;

    move-result-object v0

    const-string v4, "_ev"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2537
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzq()Lcom/google/android/gms/measurement/internal/zzop;

    .line 2538
    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/zzgn$zzh$zza;->zzg()Ljava/lang/String;

    move-result-object p1

    .line 2539
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zze()Lcom/google/android/gms/measurement/internal/zzah;

    move-result-object p2

    invoke-virtual {p2, p4, v3}, Lcom/google/android/gms/measurement/internal/zzah;->zzb(Ljava/lang/String;Z)I

    move-result p2

    .line 2540
    invoke-static {p1, p2, v3}, Lcom/google/android/gms/measurement/internal/zzop;->zza(Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object p1

    .line 2541
    invoke-virtual {p3, v4, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 2543
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzj()Lcom/google/android/gms/measurement/internal/zzgi;

    move-result-object p4

    .line 2544
    invoke-virtual {p4}, Lcom/google/android/gms/measurement/internal/zzgi;->zzv()Lcom/google/android/gms/measurement/internal/zzgk;

    move-result-object p4

    const-string v0, "Param value is too long; discarded. Name, value length"

    .line 2545
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 2546
    invoke-virtual {p4, v0, p1, v3}, Lcom/google/android/gms/measurement/internal/zzgk;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2547
    const-string p4, "_err"

    invoke-virtual {p3, p4}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmp-long v0, v5, v7

    if-nez v0, :cond_3

    const-wide/16 v5, 0x4

    .line 2548
    invoke-virtual {p3, p4, v5, v6}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 2549
    invoke-virtual {p3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    if-nez p4, :cond_3

    .line 2550
    invoke-virtual {p3, v4, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2551
    const-string p1, "_el"

    invoke-virtual {p3, p1, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 2552
    :cond_3
    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/zzgn$zzh$zza;->zzf()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    :cond_4
    return-void
.end method

.method private final zza(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzjc;)V
    .locals 1

    .line 2051
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzl()Lcom/google/android/gms/measurement/internal/zzhp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zziy;->zzt()V

    .line 2052
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzs()V

    .line 2053
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zznv;->zzac:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2054
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzf()Lcom/google/android/gms/measurement/internal/zzam;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/measurement/internal/zzam;->zzb(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzjc;)V

    return-void
.end method

.method private final zza(Ljava/lang/String;ZLjava/lang/Long;Ljava/lang/Long;)V
    .locals 1

    .line 2056
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzf()Lcom/google/android/gms/measurement/internal/zzam;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/measurement/internal/zzam;->zze(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzh;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2058
    invoke-virtual {p1, p2}, Lcom/google/android/gms/measurement/internal/zzh;->zzd(Z)V

    .line 2059
    invoke-virtual {p1, p3}, Lcom/google/android/gms/measurement/internal/zzh;->zza(Ljava/lang/Long;)V

    .line 2060
    invoke-virtual {p1, p4}, Lcom/google/android/gms/measurement/internal/zzh;->zzb(Ljava/lang/Long;)V

    .line 2061
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzh;->zzas()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 2062
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzf()Lcom/google/android/gms/measurement/internal/zzam;

    move-result-object p2

    const/4 p3, 0x0

    .line 2063
    invoke-virtual {p2, p1, p3, p3}, Lcom/google/android/gms/measurement/internal/zzam;->zza(Lcom/google/android/gms/measurement/internal/zzh;ZZ)V

    :cond_0
    return-void
.end method

.method private final zza(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .line 1810
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(Z)V

    .line 1811
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zznv;->zzz:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 1812
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzj()Lcom/google/android/gms/measurement/internal/zzgi;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzgi;->zzg()Lcom/google/android/gms/measurement/internal/zzgk;

    move-result-object p1

    const-string v0, "Set uploading progress before finishing the previous upload"

    invoke-virtual {p1, v0}, Lcom/google/android/gms/measurement/internal/zzgk;->zza(Ljava/lang/String;)V

    return-void

    .line 1813
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zznv;->zzz:Ljava/util/List;

    return-void
.end method

.method private final zza(ILjava/nio/channels/FileChannel;)Z
    .locals 5

    .line 3790
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzl()Lcom/google/android/gms/measurement/internal/zzhp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zziy;->zzt()V

    const/4 v0, 0x0

    if-eqz p2, :cond_2

    .line 3791
    invoke-virtual {p2}, Ljava/nio/channels/FileChannel;->isOpen()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x4

    .line 3795
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 3796
    invoke-virtual {v1, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 3797
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    const-wide/16 v2, 0x0

    .line 3798
    :try_start_0
    invoke-virtual {p2, v2, v3}, Ljava/nio/channels/FileChannel;->truncate(J)Ljava/nio/channels/FileChannel;

    .line 3799
    invoke-virtual {p2, v1}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    const/4 p1, 0x1

    .line 3800
    invoke-virtual {p2, p1}, Ljava/nio/channels/FileChannel;->force(Z)V

    .line 3801
    invoke-virtual {p2}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v1

    const-wide/16 v3, 0x4

    cmp-long v1, v1, v3

    if-eqz v1, :cond_1

    .line 3802
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzj()Lcom/google/android/gms/measurement/internal/zzgi;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzgi;->zzg()Lcom/google/android/gms/measurement/internal/zzgk;

    move-result-object v1

    const-string v2, "Error writing to channel. Bytes written"

    invoke-virtual {p2}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {v1, v2, p2}, Lcom/google/android/gms/measurement/internal/zzgk;->zza(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return p1

    :catch_0
    move-exception p1

    .line 3805
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzj()Lcom/google/android/gms/measurement/internal/zzgi;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzgi;->zzg()Lcom/google/android/gms/measurement/internal/zzgk;

    move-result-object p2

    const-string v1, "Failed to write to channel"

    invoke-virtual {p2, v1, p1}, Lcom/google/android/gms/measurement/internal/zzgk;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    return v0

    .line 3792
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzj()Lcom/google/android/gms/measurement/internal/zzgi;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzgi;->zzg()Lcom/google/android/gms/measurement/internal/zzgk;

    move-result-object p1

    const-string p2, "Bad channel to read from"

    invoke-virtual {p1, p2}, Lcom/google/android/gms/measurement/internal/zzgk;->zza(Ljava/lang/String;)V

    return v0
.end method

.method private final zza(Lcom/google/android/gms/internal/measurement/zzgn$zzf$zza;Lcom/google/android/gms/internal/measurement/zzgn$zzf$zza;)Z
    .locals 8

    .line 3760
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzgn$zzf$zza;->zze()Ljava/lang/String;

    move-result-object v0

    const-string v1, "_e"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 3761
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(Z)V

    .line 3763
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzp()Lcom/google/android/gms/measurement/internal/zzol;

    .line 3764
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzlc$zzb;->zzai()Lcom/google/android/gms/internal/measurement/zzml;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzlc;

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzgn$zzf;

    const-string v2, "_sc"

    invoke-static {v0, v2}, Lcom/google/android/gms/measurement/internal/zzol;->zza(Lcom/google/android/gms/internal/measurement/zzgn$zzf;Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzgn$zzh;

    move-result-object v0

    const/4 v2, 0x0

    if-nez v0, :cond_0

    move-object v0, v2

    goto :goto_0

    .line 3765
    :cond_0
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzgn$zzh;->zzh()Ljava/lang/String;

    move-result-object v0

    .line 3767
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzp()Lcom/google/android/gms/measurement/internal/zzol;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/zzlc$zzb;->zzai()Lcom/google/android/gms/internal/measurement/zzml;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/measurement/zzlc;

    check-cast v3, Lcom/google/android/gms/internal/measurement/zzgn$zzf;

    const-string v4, "_pc"

    invoke-static {v3, v4}, Lcom/google/android/gms/measurement/internal/zzol;->zza(Lcom/google/android/gms/internal/measurement/zzgn$zzf;Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzgn$zzh;

    move-result-object v3

    if-nez v3, :cond_1

    goto :goto_1

    .line 3768
    :cond_1
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzgn$zzh;->zzh()Ljava/lang/String;

    move-result-object v2

    :goto_1
    if-eqz v2, :cond_5

    .line 3769
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 3772
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzgn$zzf$zza;->zze()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 3773
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(Z)V

    .line 3775
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzp()Lcom/google/android/gms/measurement/internal/zzol;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzlc$zzb;->zzai()Lcom/google/android/gms/internal/measurement/zzml;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzlc;

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzgn$zzf;

    const-string v1, "_et"

    invoke-static {v0, v1}, Lcom/google/android/gms/measurement/internal/zzol;->zza(Lcom/google/android/gms/internal/measurement/zzgn$zzf;Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzgn$zzh;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 3777
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzgn$zzh;->zzl()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 3778
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzgn$zzh;->zzd()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-gtz v2, :cond_2

    goto :goto_2

    .line 3780
    :cond_2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzgn$zzh;->zzd()J

    move-result-wide v2

    .line 3782
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzp()Lcom/google/android/gms/measurement/internal/zzol;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/zzlc$zzb;->zzai()Lcom/google/android/gms/internal/measurement/zzml;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzlc;

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzgn$zzf;

    invoke-static {v0, v1}, Lcom/google/android/gms/measurement/internal/zzol;->zza(Lcom/google/android/gms/internal/measurement/zzgn$zzf;Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzgn$zzh;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 3783
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzgn$zzh;->zzd()J

    move-result-wide v6

    cmp-long v4, v6, v4

    if-lez v4, :cond_3

    .line 3784
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzgn$zzh;->zzd()J

    move-result-wide v4

    add-long/2addr v2, v4

    .line 3785
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzp()Lcom/google/android/gms/measurement/internal/zzol;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {p2, v1, v0}, Lcom/google/android/gms/measurement/internal/zzol;->zza(Lcom/google/android/gms/internal/measurement/zzgn$zzf$zza;Ljava/lang/String;Ljava/lang/Object;)V

    .line 3786
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzp()Lcom/google/android/gms/measurement/internal/zzol;

    const-wide/16 v0, 0x1

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    const-string v0, "_fr"

    invoke-static {p1, v0, p2}, Lcom/google/android/gms/measurement/internal/zzol;->zza(Lcom/google/android/gms/internal/measurement/zzgn$zzf$zza;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_4
    :goto_2
    const/4 p1, 0x1

    return p1

    :cond_5
    const/4 p1, 0x0

    return p1
.end method

.method private final zza(Ljava/lang/String;J)Z
    .locals 41

    move-object/from16 v1, p0

    .line 2980
    const-string v2, "_ai"

    const-string v3, "items"

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzf()Lcom/google/android/gms/measurement/internal/zzam;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzam;->zzp()V

    .line 2981
    :try_start_0
    new-instance v4, Lcom/google/android/gms/measurement/internal/zznv$zza;

    const/4 v5, 0x0

    invoke-direct {v4, v1, v5}, Lcom/google/android/gms/measurement/internal/zznv$zza;-><init>(Lcom/google/android/gms/measurement/internal/zznv;Lcom/google/android/gms/measurement/internal/zzoe;)V

    .line 2982
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzf()Lcom/google/android/gms/measurement/internal/zzam;

    move-result-object v6

    iget-wide v7, v1, Lcom/google/android/gms/measurement/internal/zznv;->zzab:J

    .line 2984
    invoke-static {v4}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2985
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zziy;->zzt()V

    .line 2986
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zznr;->zzal()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const-wide/16 v10, -0x1

    const/4 v12, 0x2

    const/4 v13, 0x1

    const/4 v14, 0x0

    .line 2988
    :try_start_1
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzam;->e_()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v15

    .line 2989
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v16
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string v17, ""

    if-eqz v16, :cond_3

    cmp-long v16, v7, v10

    if-eqz v16, :cond_0

    .line 2991
    :try_start_2
    new-array v5, v12, [Ljava/lang/String;

    .line 2992
    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v18

    aput-object v18, v5, v14

    invoke-static/range {p2 .. p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v18

    aput-object v18, v5, v13

    goto :goto_0

    .line 2993
    :cond_0
    new-array v5, v13, [Ljava/lang/String;

    invoke-static/range {p2 .. p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v18

    aput-object v18, v5, v14

    :goto_0
    if-eqz v16, :cond_1

    .line 2995
    const-string v17, "rowid <= ? and "

    :cond_1
    move-object/from16 v9, v17

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v10, "select app_id, metadata_fingerprint from raw_events where "

    invoke-direct {v12, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "app_id in (select app_id from apps where config_fetched_time >= ?) order by rowid limit 1;"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 2996
    invoke-virtual {v15, v9, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2997
    :try_start_3
    invoke-interface {v5}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v9
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-nez v9, :cond_2

    if-eqz v5, :cond_c

    .line 2999
    :try_start_4
    invoke-interface {v5}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto/16 :goto_6

    .line 3001
    :cond_2
    :try_start_5
    invoke-interface {v5, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9
    :try_end_5
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 3002
    :try_start_6
    invoke-interface {v5, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 3003
    invoke-interface {v5}, Landroid/database/Cursor;->close()V
    :try_end_6
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_2

    :cond_3
    move-wide v9, v10

    cmp-long v5, v7, v9

    if-eqz v5, :cond_4

    const/4 v9, 0x2

    .line 3006
    :try_start_7
    new-array v10, v9, [Ljava/lang/String;

    aput-object p1, v10, v14

    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v10, v13

    goto :goto_1

    .line 3007
    :cond_4
    new-array v10, v13, [Ljava/lang/String;

    aput-object p1, v10, v14

    :goto_1
    if-eqz v5, :cond_5

    .line 3009
    const-string v17, " and rowid <= ?"

    :cond_5
    move-object/from16 v5, v17

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v11, "select metadata_fingerprint from raw_events where app_id = ?"

    invoke-direct {v9, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v9, " order by rowid limit 1;"

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 3010
    invoke-virtual {v15, v5, v10}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5
    :try_end_7
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_7 .. :try_end_7} :catch_4
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 3011
    :try_start_8
    invoke-interface {v5}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v9
    :try_end_8
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_8 .. :try_end_8} :catch_3
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    if-nez v9, :cond_6

    if-eqz v5, :cond_c

    .line 3013
    :try_start_9
    invoke-interface {v5}, Landroid/database/Cursor;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    goto/16 :goto_6

    .line 3015
    :cond_6
    :try_start_a
    invoke-interface {v5, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 3016
    invoke-interface {v5}, Landroid/database/Cursor;->close()V
    :try_end_a
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_a .. :try_end_a} :catch_3
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    move-object/from16 v9, p1

    .line 3017
    :goto_2
    :try_start_b
    const-string v16, "raw_events_metadata"

    new-array v11, v13, [Ljava/lang/String;

    const-string v12, "metadata"

    aput-object v12, v11, v14

    const-string v18, "app_id = ? and metadata_fingerprint = ?"

    const/4 v12, 0x2

    new-array v13, v12, [Ljava/lang/String;

    aput-object v9, v13, v14

    const/4 v12, 0x1

    aput-object v10, v13, v12

    const-string v22, "rowid"

    const-string v23, "2"

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object v12, v15

    move-object/from16 v17, v11

    move-object/from16 v19, v13

    .line 3018
    invoke-virtual/range {v15 .. v23}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5

    .line 3019
    invoke-interface {v5}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v11

    if-nez v11, :cond_7

    .line 3020
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zziy;->zzj()Lcom/google/android/gms/measurement/internal/zzgi;

    move-result-object v7

    .line 3021
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzgi;->zzg()Lcom/google/android/gms/measurement/internal/zzgk;

    move-result-object v7

    const-string v8, "Raw event metadata record is missing. appId"

    .line 3022
    invoke-static {v9}, Lcom/google/android/gms/measurement/internal/zzgi;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v7, v8, v10}, Lcom/google/android/gms/measurement/internal/zzgk;->zza(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_b
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_b .. :try_end_b} :catch_2
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    if-eqz v5, :cond_c

    .line 3024
    :try_start_c
    invoke-interface {v5}, Landroid/database/Cursor;->close()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    goto/16 :goto_6

    .line 3026
    :cond_7
    :try_start_d
    invoke-interface {v5, v14}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v11
    :try_end_d
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_d .. :try_end_d} :catch_2
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    .line 3027
    :try_start_e
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzgn$zzk;->zzw()Lcom/google/android/gms/internal/measurement/zzgn$zzk$zza;

    move-result-object v13

    invoke-static {v13, v11}, Lcom/google/android/gms/measurement/internal/zzol;->zza(Lcom/google/android/gms/internal/measurement/zzmk;[B)Lcom/google/android/gms/internal/measurement/zzmk;

    move-result-object v11

    check-cast v11, Lcom/google/android/gms/internal/measurement/zzgn$zzk$zza;

    invoke-virtual {v11}, Lcom/google/android/gms/internal/measurement/zzlc$zzb;->zzai()Lcom/google/android/gms/internal/measurement/zzml;

    move-result-object v11

    check-cast v11, Lcom/google/android/gms/internal/measurement/zzlc;

    check-cast v11, Lcom/google/android/gms/internal/measurement/zzgn$zzk;
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_e .. :try_end_e} :catch_2
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    .line 3037
    :try_start_f
    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    move-result v13

    if-eqz v13, :cond_8

    .line 3038
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zziy;->zzj()Lcom/google/android/gms/measurement/internal/zzgi;

    move-result-object v13

    .line 3039
    invoke-virtual {v13}, Lcom/google/android/gms/measurement/internal/zzgi;->zzu()Lcom/google/android/gms/measurement/internal/zzgk;

    move-result-object v13

    const-string v15, "Get multiple raw event metadata records, expected one. appId"

    .line 3040
    invoke-static {v9}, Lcom/google/android/gms/measurement/internal/zzgi;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    .line 3041
    invoke-virtual {v13, v15, v14}, Lcom/google/android/gms/measurement/internal/zzgk;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    .line 3042
    :cond_8
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 3043
    invoke-interface {v4, v11}, Lcom/google/android/gms/measurement/internal/zzat;->zza(Lcom/google/android/gms/internal/measurement/zzgn$zzk;)V

    const-wide/16 v13, -0x1

    cmp-long v11, v7, v13

    if-eqz v11, :cond_9

    .line 3045
    const-string v11, "app_id = ? and metadata_fingerprint = ? and rowid <= ?"

    const/4 v13, 0x3

    .line 3046
    new-array v14, v13, [Ljava/lang/String;

    const/4 v13, 0x0

    aput-object v9, v14, v13

    const/4 v13, 0x1

    aput-object v10, v14, v13

    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x2

    aput-object v7, v14, v8

    move-object/from16 v18, v11

    move-object/from16 v19, v14

    goto :goto_3

    .line 3047
    :cond_9
    const-string v7, "app_id = ? and metadata_fingerprint = ?"

    const/4 v8, 0x2

    .line 3048
    new-array v11, v8, [Ljava/lang/String;

    const/4 v8, 0x0

    aput-object v9, v11, v8

    const/4 v8, 0x1

    aput-object v10, v11, v8

    move-object/from16 v18, v7

    move-object/from16 v19, v11

    .line 3049
    :goto_3
    const-string v16, "raw_events"

    const/4 v7, 0x4

    new-array v7, v7, [Ljava/lang/String;

    const-string v8, "rowid"

    const/4 v10, 0x0

    aput-object v8, v7, v10

    const-string v8, "name"

    const/4 v10, 0x1

    aput-object v8, v7, v10

    const-string v8, "timestamp"

    const/4 v10, 0x2

    aput-object v8, v7, v10

    const-string v8, "data"

    const/4 v10, 0x3

    aput-object v8, v7, v10

    const-string v22, "rowid"

    const/16 v23, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object v15, v12

    move-object/from16 v17, v7

    .line 3050
    invoke-virtual/range {v15 .. v23}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5

    .line 3051
    invoke-interface {v5}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v7

    if-nez v7, :cond_a

    .line 3052
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zziy;->zzj()Lcom/google/android/gms/measurement/internal/zzgi;

    move-result-object v7

    .line 3053
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzgi;->zzu()Lcom/google/android/gms/measurement/internal/zzgk;

    move-result-object v7

    const-string v8, "Raw event data disappeared while in transaction. appId"

    .line 3054
    invoke-static {v9}, Lcom/google/android/gms/measurement/internal/zzgi;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    .line 3055
    invoke-virtual {v7, v8, v10}, Lcom/google/android/gms/measurement/internal/zzgk;->zza(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_f
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_f .. :try_end_f} :catch_2
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    if-eqz v5, :cond_c

    .line 3057
    :try_start_10
    invoke-interface {v5}, Landroid/database/Cursor;->close()V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_2

    goto/16 :goto_6

    :cond_a
    const/4 v7, 0x0

    .line 3059
    :try_start_11
    invoke-interface {v5, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    const/4 v7, 0x3

    .line 3060
    invoke-interface {v5, v7}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v8
    :try_end_11
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_11 .. :try_end_11} :catch_2
    .catchall {:try_start_11 .. :try_end_11} :catchall_1

    .line 3061
    :try_start_12
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzgn$zzf;->zze()Lcom/google/android/gms/internal/measurement/zzgn$zzf$zza;

    move-result-object v7

    invoke-static {v7, v8}, Lcom/google/android/gms/measurement/internal/zzol;->zza(Lcom/google/android/gms/internal/measurement/zzmk;[B)Lcom/google/android/gms/internal/measurement/zzmk;

    move-result-object v7

    check-cast v7, Lcom/google/android/gms/internal/measurement/zzgn$zzf$zza;
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_12 .. :try_end_12} :catch_2
    .catchall {:try_start_12 .. :try_end_12} :catchall_1

    const/4 v8, 0x1

    .line 3068
    :try_start_13
    invoke-interface {v5, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7, v12}, Lcom/google/android/gms/internal/measurement/zzgn$zzf$zza;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzgn$zzf$zza;

    move-result-object v8

    const/4 v12, 0x2

    invoke-interface {v5, v12}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v13

    invoke-virtual {v8, v13, v14}, Lcom/google/android/gms/internal/measurement/zzgn$zzf$zza;->zzb(J)Lcom/google/android/gms/internal/measurement/zzgn$zzf$zza;

    .line 3069
    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzlc$zzb;->zzai()Lcom/google/android/gms/internal/measurement/zzml;

    move-result-object v7

    check-cast v7, Lcom/google/android/gms/internal/measurement/zzlc;

    check-cast v7, Lcom/google/android/gms/internal/measurement/zzgn$zzf;

    invoke-interface {v4, v10, v11, v7}, Lcom/google/android/gms/measurement/internal/zzat;->zza(JLcom/google/android/gms/internal/measurement/zzgn$zzf;)Z

    move-result v7
    :try_end_13
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_13 .. :try_end_13} :catch_2
    .catchall {:try_start_13 .. :try_end_13} :catchall_1

    if-nez v7, :cond_b

    if-eqz v5, :cond_c

    .line 3071
    :try_start_14
    invoke-interface {v5}, Landroid/database/Cursor;->close()V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_2

    goto :goto_6

    :catch_0
    move-exception v0

    move-object v7, v0

    .line 3064
    :try_start_15
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zziy;->zzj()Lcom/google/android/gms/measurement/internal/zzgi;

    move-result-object v8

    .line 3065
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzgi;->zzg()Lcom/google/android/gms/measurement/internal/zzgk;

    move-result-object v8

    const-string v10, "Data loss. Failed to merge raw event. appId"

    .line 3066
    invoke-static {v9}, Lcom/google/android/gms/measurement/internal/zzgi;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v8, v10, v11, v7}, Lcom/google/android/gms/measurement/internal/zzgk;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 3073
    :cond_b
    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    move-result v7
    :try_end_15
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_15 .. :try_end_15} :catch_2
    .catchall {:try_start_15 .. :try_end_15} :catchall_1

    if-nez v7, :cond_a

    if-eqz v5, :cond_c

    .line 3075
    :try_start_16
    invoke-interface {v5}, Landroid/database/Cursor;->close()V
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_2

    goto :goto_6

    :catch_1
    move-exception v0

    move-object v7, v0

    .line 3030
    :try_start_17
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zziy;->zzj()Lcom/google/android/gms/measurement/internal/zzgi;

    move-result-object v8

    .line 3031
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzgi;->zzg()Lcom/google/android/gms/measurement/internal/zzgk;

    move-result-object v8

    const-string v10, "Data loss. Failed to merge raw event metadata. appId"

    .line 3032
    invoke-static {v9}, Lcom/google/android/gms/measurement/internal/zzgi;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    .line 3033
    invoke-virtual {v8, v10, v11, v7}, Lcom/google/android/gms/measurement/internal/zzgk;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_17
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_17 .. :try_end_17} :catch_2
    .catchall {:try_start_17 .. :try_end_17} :catchall_1

    if-eqz v5, :cond_c

    .line 3035
    :try_start_18
    invoke-interface {v5}, Landroid/database/Cursor;->close()V
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_2

    goto :goto_6

    :catch_2
    move-exception v0

    goto :goto_4

    :catch_3
    move-exception v0

    move-object/from16 v9, p1

    :goto_4
    move-object v7, v0

    goto :goto_5

    :catchall_0
    move-exception v0

    move-object v1, v0

    const/4 v5, 0x0

    goto/16 :goto_45

    :catch_4
    move-exception v0

    move-object/from16 v9, p1

    move-object v7, v0

    const/4 v5, 0x0

    .line 3077
    :goto_5
    :try_start_19
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zziy;->zzj()Lcom/google/android/gms/measurement/internal/zzgi;

    move-result-object v6

    .line 3078
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzgi;->zzg()Lcom/google/android/gms/measurement/internal/zzgk;

    move-result-object v6

    const-string v8, "Data loss. Error selecting raw event. appId"

    .line 3079
    invoke-static {v9}, Lcom/google/android/gms/measurement/internal/zzgi;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v6, v8, v9, v7}, Lcom/google/android/gms/measurement/internal/zzgk;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_1

    if-eqz v5, :cond_c

    .line 3081
    :try_start_1a
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 3086
    :cond_c
    :goto_6
    iget-object v5, v4, Lcom/google/android/gms/measurement/internal/zznv$zza;->zzc:Ljava/util/List;

    if-eqz v5, :cond_7d

    iget-object v5, v4, Lcom/google/android/gms/measurement/internal/zznv$zza;->zzc:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_d

    goto/16 :goto_44

    .line 3089
    :cond_d
    iget-object v5, v4, Lcom/google/android/gms/measurement/internal/zznv$zza;->zza:Lcom/google/android/gms/internal/measurement/zzgn$zzk;

    .line 3090
    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzlc;->zzcd()Lcom/google/android/gms/internal/measurement/zzlc$zzb;

    move-result-object v5

    .line 3091
    move-object v6, v5

    check-cast v6, Lcom/google/android/gms/internal/measurement/zzlc$zzb;

    check-cast v5, Lcom/google/android/gms/internal/measurement/zzgn$zzk$zza;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzgn$zzk$zza;->zzl()Lcom/google/android/gms/internal/measurement/zzgn$zzk$zza;

    move-result-object v5

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, -0x1

    const/4 v13, -0x1

    .line 3098
    :goto_7
    iget-object v14, v4, Lcom/google/android/gms/measurement/internal/zznv$zza;->zzc:Ljava/util/List;

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v14
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_2

    const-string v15, "_fr"

    const-string v6, "_et"

    move/from16 v16, v10

    const-string v10, "_e"

    move/from16 p2, v11

    const-string v11, "_c"

    move-object/from16 v17, v6

    move-object/from16 p3, v7

    if-ge v9, v14, :cond_3a

    .line 3100
    :try_start_1b
    iget-object v14, v4, Lcom/google/android/gms/measurement/internal/zznv$zza;->zzc:Ljava/util/List;

    invoke-interface {v14, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/google/android/gms/internal/measurement/zzgn$zzf;

    .line 3101
    invoke-virtual {v14}, Lcom/google/android/gms/internal/measurement/zzlc;->zzcd()Lcom/google/android/gms/internal/measurement/zzlc$zzb;

    move-result-object v14

    .line 3102
    move-object/from16 v18, v14

    check-cast v18, Lcom/google/android/gms/internal/measurement/zzlc$zzb;

    check-cast v14, Lcom/google/android/gms/internal/measurement/zzgn$zzf$zza;

    .line 3103
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzi()Lcom/google/android/gms/measurement/internal/zzhg;

    move-result-object v6

    iget-object v7, v4, Lcom/google/android/gms/measurement/internal/zznv$zza;->zza:Lcom/google/android/gms/internal/measurement/zzgn$zzk;

    .line 3104
    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzgn$zzk;->zzz()Ljava/lang/String;

    move-result-object v7

    move/from16 v20, v9

    invoke-virtual {v14}, Lcom/google/android/gms/internal/measurement/zzgn$zzf$zza;->zze()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v7, v9}, Lcom/google/android/gms/measurement/internal/zzhg;->zzd(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_2

    const-string v7, "_err"

    if-eqz v6, :cond_10

    .line 3105
    :try_start_1c
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzj()Lcom/google/android/gms/measurement/internal/zzgi;

    move-result-object v6

    .line 3106
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzgi;->zzu()Lcom/google/android/gms/measurement/internal/zzgk;

    move-result-object v6

    const-string v9, "Dropping blocked raw event. appId"

    iget-object v10, v4, Lcom/google/android/gms/measurement/internal/zznv$zza;->zza:Lcom/google/android/gms/internal/measurement/zzgn$zzk;

    .line 3107
    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/zzgn$zzk;->zzz()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/google/android/gms/measurement/internal/zzgi;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    .line 3108
    iget-object v11, v1, Lcom/google/android/gms/measurement/internal/zznv;->zzm:Lcom/google/android/gms/measurement/internal/zzhw;

    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/zzhw;->zzk()Lcom/google/android/gms/measurement/internal/zzgh;

    move-result-object v11

    .line 3109
    invoke-virtual {v14}, Lcom/google/android/gms/internal/measurement/zzgn$zzf$zza;->zze()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v11, v15}, Lcom/google/android/gms/measurement/internal/zzgh;->zza(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 3110
    invoke-virtual {v6, v9, v10, v11}, Lcom/google/android/gms/measurement/internal/zzgk;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 3112
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzi()Lcom/google/android/gms/measurement/internal/zzhg;

    move-result-object v6

    iget-object v9, v4, Lcom/google/android/gms/measurement/internal/zznv$zza;->zza:Lcom/google/android/gms/internal/measurement/zzgn$zzk;

    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/zzgn$zzk;->zzz()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Lcom/google/android/gms/measurement/internal/zzhg;->zzm(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_f

    .line 3113
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzi()Lcom/google/android/gms/measurement/internal/zzhg;

    move-result-object v6

    iget-object v9, v4, Lcom/google/android/gms/measurement/internal/zznv$zza;->zza:Lcom/google/android/gms/internal/measurement/zzgn$zzk;

    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/zzgn$zzk;->zzz()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Lcom/google/android/gms/measurement/internal/zzhg;->zzo(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_e

    goto :goto_8

    .line 3114
    :cond_e
    invoke-virtual {v14}, Lcom/google/android/gms/internal/measurement/zzgn$zzf$zza;->zze()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_f

    .line 3115
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzq()Lcom/google/android/gms/measurement/internal/zzop;

    iget-object v6, v1, Lcom/google/android/gms/measurement/internal/zznv;->zzah:Lcom/google/android/gms/measurement/internal/zzoo;

    iget-object v7, v4, Lcom/google/android/gms/measurement/internal/zznv$zza;->zza:Lcom/google/android/gms/internal/measurement/zzgn$zzk;

    .line 3116
    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzgn$zzk;->zzz()Ljava/lang/String;

    move-result-object v25

    const-string v27, "_ev"

    .line 3117
    invoke-virtual {v14}, Lcom/google/android/gms/internal/measurement/zzgn$zzf$zza;->zze()Ljava/lang/String;

    move-result-object v28

    const/16 v29, 0x0

    const/16 v26, 0xb

    move-object/from16 v24, v6

    .line 3118
    invoke-static/range {v24 .. v29}, Lcom/google/android/gms/measurement/internal/zzop;->zza(Lcom/google/android/gms/measurement/internal/zzoo;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    :cond_f
    :goto_8
    move/from16 v11, p2

    move-object/from16 v7, p3

    move-object/from16 v22, v2

    move-object v15, v3

    move/from16 v10, v16

    move/from16 v6, v20

    goto/16 :goto_21

    .line 3120
    :cond_10
    invoke-virtual {v14}, Lcom/google/android/gms/internal/measurement/zzgn$zzf$zza;->zze()Ljava/lang/String;

    move-result-object v6

    .line 3121
    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/zzjf;->zza(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_12

    .line 3122
    invoke-virtual {v14, v2}, Lcom/google/android/gms/internal/measurement/zzgn$zzf$zza;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzgn$zzf$zza;

    .line 3123
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzj()Lcom/google/android/gms/measurement/internal/zzgi;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzgi;->zzp()Lcom/google/android/gms/measurement/internal/zzgk;

    move-result-object v6

    const-string v9, "Renaming ad_impression to _ai"

    invoke-virtual {v6, v9}, Lcom/google/android/gms/measurement/internal/zzgk;->zza(Ljava/lang/String;)V

    .line 3124
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzj()Lcom/google/android/gms/measurement/internal/zzgi;

    move-result-object v6

    const/4 v9, 0x5

    invoke-virtual {v6, v9}, Lcom/google/android/gms/measurement/internal/zzgi;->zza(I)Z

    move-result v6

    if-eqz v6, :cond_12

    const/4 v6, 0x0

    .line 3125
    :goto_9
    invoke-virtual {v14}, Lcom/google/android/gms/internal/measurement/zzgn$zzf$zza;->zza()I

    move-result v9

    if-ge v6, v9, :cond_12

    .line 3126
    const-string v9, "ad_platform"

    invoke-virtual {v14, v6}, Lcom/google/android/gms/internal/measurement/zzgn$zzf$zza;->zzb(I)Lcom/google/android/gms/internal/measurement/zzgn$zzh;

    move-result-object v21

    move-object/from16 v22, v2

    invoke-virtual/range {v21 .. v21}, Lcom/google/android/gms/internal/measurement/zzgn$zzh;->zzg()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 3127
    invoke-virtual {v14, v6}, Lcom/google/android/gms/internal/measurement/zzgn$zzf$zza;->zzb(I)Lcom/google/android/gms/internal/measurement/zzgn$zzh;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzgn$zzh;->zzh()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_11

    const-string v2, "admob"

    .line 3128
    invoke-virtual {v14, v6}, Lcom/google/android/gms/internal/measurement/zzgn$zzf$zza;->zzb(I)Lcom/google/android/gms/internal/measurement/zzgn$zzh;

    move-result-object v9

    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/zzgn$zzh;->zzh()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 3129
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzj()Lcom/google/android/gms/measurement/internal/zzgi;

    move-result-object v2

    .line 3130
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzgi;->zzv()Lcom/google/android/gms/measurement/internal/zzgk;

    move-result-object v2

    const-string v9, "AdMob ad impression logged from app. Potentially duplicative."

    .line 3131
    invoke-virtual {v2, v9}, Lcom/google/android/gms/measurement/internal/zzgk;->zza(Ljava/lang/String;)V

    :cond_11
    add-int/lit8 v6, v6, 0x1

    move-object/from16 v2, v22

    goto :goto_9

    :cond_12
    move-object/from16 v22, v2

    .line 3134
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzi()Lcom/google/android/gms/measurement/internal/zzhg;

    move-result-object v2

    iget-object v6, v4, Lcom/google/android/gms/measurement/internal/zznv$zza;->zza:Lcom/google/android/gms/internal/measurement/zzgn$zzk;

    .line 3135
    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/zzgn$zzk;->zzz()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v14}, Lcom/google/android/gms/internal/measurement/zzgn$zzf$zza;->zze()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v6, v9}, Lcom/google/android/gms/measurement/internal/zzhg;->zzc(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_15

    .line 3136
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzp()Lcom/google/android/gms/measurement/internal/zzol;

    invoke-virtual {v14}, Lcom/google/android/gms/internal/measurement/zzgn$zzf$zza;->zze()Ljava/lang/String;

    move-result-object v6

    .line 3137
    invoke-static {v6}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 3138
    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v9

    move-object/from16 v21, v3

    const v3, 0x17333

    if-eq v9, v3, :cond_13

    goto :goto_a

    :cond_13
    const-string v3, "_ui"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_14

    goto :goto_b

    :cond_14
    :goto_a
    move-object/from16 v24, v5

    move-object v6, v8

    move/from16 v23, v12

    move/from16 v25, v13

    goto/16 :goto_11

    :cond_15
    move-object/from16 v21, v3

    :goto_b
    move/from16 v23, v12

    const/4 v3, 0x0

    const/4 v6, 0x0

    const/4 v9, 0x0

    .line 3144
    :goto_c
    invoke-virtual {v14}, Lcom/google/android/gms/internal/measurement/zzgn$zzf$zza;->zza()I

    move-result v12
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_2

    move-object/from16 v24, v5

    const-string v5, "_r"

    if-ge v9, v12, :cond_18

    .line 3145
    :try_start_1d
    invoke-virtual {v14, v9}, Lcom/google/android/gms/internal/measurement/zzgn$zzf$zza;->zzb(I)Lcom/google/android/gms/internal/measurement/zzgn$zzh;

    move-result-object v12

    invoke-virtual {v12}, Lcom/google/android/gms/internal/measurement/zzgn$zzh;->zzg()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_16

    .line 3147
    invoke-virtual {v14, v9}, Lcom/google/android/gms/internal/measurement/zzgn$zzf$zza;->zzb(I)Lcom/google/android/gms/internal/measurement/zzgn$zzh;

    move-result-object v3

    .line 3148
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzlc;->zzcd()Lcom/google/android/gms/internal/measurement/zzlc$zzb;

    move-result-object v3

    .line 3149
    move-object v5, v3

    check-cast v5, Lcom/google/android/gms/internal/measurement/zzlc$zzb;

    check-cast v3, Lcom/google/android/gms/internal/measurement/zzgn$zzh$zza;

    move/from16 v25, v13

    const-wide/16 v12, 0x1

    .line 3150
    invoke-virtual {v3, v12, v13}, Lcom/google/android/gms/internal/measurement/zzgn$zzh$zza;->zza(J)Lcom/google/android/gms/internal/measurement/zzgn$zzh$zza;

    move-result-object v3

    .line 3151
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzlc$zzb;->zzai()Lcom/google/android/gms/internal/measurement/zzml;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/measurement/zzlc;

    check-cast v3, Lcom/google/android/gms/internal/measurement/zzgn$zzh;

    .line 3153
    invoke-virtual {v14, v9, v3}, Lcom/google/android/gms/internal/measurement/zzgn$zzf$zza;->zza(ILcom/google/android/gms/internal/measurement/zzgn$zzh;)Lcom/google/android/gms/internal/measurement/zzgn$zzf$zza;

    const/4 v3, 0x1

    goto :goto_d

    :cond_16
    move/from16 v25, v13

    .line 3154
    invoke-virtual {v14, v9}, Lcom/google/android/gms/internal/measurement/zzgn$zzf$zza;->zzb(I)Lcom/google/android/gms/internal/measurement/zzgn$zzh;

    move-result-object v12

    invoke-virtual {v12}, Lcom/google/android/gms/internal/measurement/zzgn$zzh;->zzg()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v5, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_17

    .line 3156
    invoke-virtual {v14, v9}, Lcom/google/android/gms/internal/measurement/zzgn$zzf$zza;->zzb(I)Lcom/google/android/gms/internal/measurement/zzgn$zzh;

    move-result-object v5

    .line 3157
    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzlc;->zzcd()Lcom/google/android/gms/internal/measurement/zzlc$zzb;

    move-result-object v5

    .line 3158
    move-object v6, v5

    check-cast v6, Lcom/google/android/gms/internal/measurement/zzlc$zzb;

    check-cast v5, Lcom/google/android/gms/internal/measurement/zzgn$zzh$zza;

    const-wide/16 v12, 0x1

    .line 3159
    invoke-virtual {v5, v12, v13}, Lcom/google/android/gms/internal/measurement/zzgn$zzh$zza;->zza(J)Lcom/google/android/gms/internal/measurement/zzgn$zzh$zza;

    move-result-object v5

    .line 3160
    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzlc$zzb;->zzai()Lcom/google/android/gms/internal/measurement/zzml;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/measurement/zzlc;

    check-cast v5, Lcom/google/android/gms/internal/measurement/zzgn$zzh;

    .line 3162
    invoke-virtual {v14, v9, v5}, Lcom/google/android/gms/internal/measurement/zzgn$zzf$zza;->zza(ILcom/google/android/gms/internal/measurement/zzgn$zzh;)Lcom/google/android/gms/internal/measurement/zzgn$zzf$zza;

    const/4 v6, 0x1

    :cond_17
    :goto_d
    add-int/lit8 v9, v9, 0x1

    move-object/from16 v5, v24

    move/from16 v13, v25

    goto :goto_c

    :cond_18
    move/from16 v25, v13

    if-nez v3, :cond_19

    if-eqz v2, :cond_19

    .line 3165
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzj()Lcom/google/android/gms/measurement/internal/zzgi;

    move-result-object v3

    .line 3166
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzgi;->zzp()Lcom/google/android/gms/measurement/internal/zzgk;

    move-result-object v3

    const-string v9, "Marking event as conversion"

    .line 3167
    iget-object v12, v1, Lcom/google/android/gms/measurement/internal/zznv;->zzm:Lcom/google/android/gms/measurement/internal/zzhw;

    invoke-virtual {v12}, Lcom/google/android/gms/measurement/internal/zzhw;->zzk()Lcom/google/android/gms/measurement/internal/zzgh;

    move-result-object v12

    .line 3168
    invoke-virtual {v14}, Lcom/google/android/gms/internal/measurement/zzgn$zzf$zza;->zze()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/google/android/gms/measurement/internal/zzgh;->zza(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 3169
    invoke-virtual {v3, v9, v12}, Lcom/google/android/gms/measurement/internal/zzgk;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    .line 3171
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzgn$zzh;->zze()Lcom/google/android/gms/internal/measurement/zzgn$zzh$zza;

    move-result-object v3

    .line 3172
    invoke-virtual {v3, v11}, Lcom/google/android/gms/internal/measurement/zzgn$zzh$zza;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzgn$zzh$zza;

    move-result-object v3

    const-wide/16 v12, 0x1

    .line 3173
    invoke-virtual {v3, v12, v13}, Lcom/google/android/gms/internal/measurement/zzgn$zzh$zza;->zza(J)Lcom/google/android/gms/internal/measurement/zzgn$zzh$zza;

    move-result-object v3

    .line 3174
    invoke-virtual {v14, v3}, Lcom/google/android/gms/internal/measurement/zzgn$zzf$zza;->zza(Lcom/google/android/gms/internal/measurement/zzgn$zzh$zza;)Lcom/google/android/gms/internal/measurement/zzgn$zzf$zza;

    :cond_19
    if-nez v6, :cond_1a

    .line 3176
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzj()Lcom/google/android/gms/measurement/internal/zzgi;

    move-result-object v3

    .line 3177
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzgi;->zzp()Lcom/google/android/gms/measurement/internal/zzgk;

    move-result-object v3

    const-string v6, "Marking event as real-time"

    .line 3178
    iget-object v9, v1, Lcom/google/android/gms/measurement/internal/zznv;->zzm:Lcom/google/android/gms/measurement/internal/zzhw;

    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/zzhw;->zzk()Lcom/google/android/gms/measurement/internal/zzgh;

    move-result-object v9

    .line 3179
    invoke-virtual {v14}, Lcom/google/android/gms/internal/measurement/zzgn$zzf$zza;->zze()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v12}, Lcom/google/android/gms/measurement/internal/zzgh;->zza(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 3180
    invoke-virtual {v3, v6, v9}, Lcom/google/android/gms/measurement/internal/zzgk;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    .line 3182
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzgn$zzh;->zze()Lcom/google/android/gms/internal/measurement/zzgn$zzh$zza;

    move-result-object v3

    invoke-virtual {v3, v5}, Lcom/google/android/gms/internal/measurement/zzgn$zzh$zza;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzgn$zzh$zza;

    move-result-object v3

    const-wide/16 v12, 0x1

    invoke-virtual {v3, v12, v13}, Lcom/google/android/gms/internal/measurement/zzgn$zzh$zza;->zza(J)Lcom/google/android/gms/internal/measurement/zzgn$zzh$zza;

    move-result-object v3

    .line 3183
    invoke-virtual {v14, v3}, Lcom/google/android/gms/internal/measurement/zzgn$zzf$zza;->zza(Lcom/google/android/gms/internal/measurement/zzgn$zzh$zza;)Lcom/google/android/gms/internal/measurement/zzgn$zzf$zza;

    .line 3186
    :cond_1a
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzf()Lcom/google/android/gms/measurement/internal/zzam;

    move-result-object v26

    .line 3187
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzx()J

    move-result-wide v27

    iget-object v3, v4, Lcom/google/android/gms/measurement/internal/zznv$zza;->zza:Lcom/google/android/gms/internal/measurement/zzgn$zzk;

    .line 3188
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzgn$zzk;->zzz()Ljava/lang/String;

    move-result-object v29

    const/16 v34, 0x1

    const/16 v35, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    .line 3189
    invoke-virtual/range {v26 .. v35}, Lcom/google/android/gms/measurement/internal/zzam;->zza(JLjava/lang/String;ZZZZZZ)Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object v3

    .line 3190
    iget-wide v12, v3, Lcom/google/android/gms/measurement/internal/zzar;->zze:J

    .line 3191
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zze()Lcom/google/android/gms/measurement/internal/zzah;

    move-result-object v3

    iget-object v6, v4, Lcom/google/android/gms/measurement/internal/zznv$zza;->zza:Lcom/google/android/gms/internal/measurement/zzgn$zzk;

    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/zzgn$zzk;->zzz()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/google/android/gms/measurement/internal/zzah;->zzc(Ljava/lang/String;)I

    move-result v3

    move-object v6, v8

    int-to-long v8, v3

    cmp-long v3, v12, v8

    if-lez v3, :cond_1b

    .line 3192
    invoke-static {v14, v5}, Lcom/google/android/gms/measurement/internal/zznv;->zza(Lcom/google/android/gms/internal/measurement/zzgn$zzf$zza;Ljava/lang/String;)V

    goto :goto_e

    :cond_1b
    const/16 v16, 0x1

    .line 3194
    :goto_e
    invoke-virtual {v14}, Lcom/google/android/gms/internal/measurement/zzgn$zzf$zza;->zze()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/zzop;->zzh(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_21

    if-eqz v2, :cond_21

    .line 3197
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzf()Lcom/google/android/gms/measurement/internal/zzam;

    move-result-object v26

    .line 3198
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzx()J

    move-result-wide v27

    iget-object v3, v4, Lcom/google/android/gms/measurement/internal/zznv$zza;->zza:Lcom/google/android/gms/internal/measurement/zzgn$zzk;

    .line 3199
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzgn$zzk;->zzz()Ljava/lang/String;

    move-result-object v29

    const/16 v34, 0x0

    const/16 v35, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x1

    const/16 v33, 0x0

    .line 3200
    invoke-virtual/range {v26 .. v35}, Lcom/google/android/gms/measurement/internal/zzam;->zza(JLjava/lang/String;ZZZZZZ)Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object v3

    .line 3201
    iget-wide v8, v3, Lcom/google/android/gms/measurement/internal/zzar;->zzc:J

    .line 3202
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zze()Lcom/google/android/gms/measurement/internal/zzah;

    move-result-object v3

    iget-object v5, v4, Lcom/google/android/gms/measurement/internal/zznv$zza;->zza:Lcom/google/android/gms/internal/measurement/zzgn$zzk;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzgn$zzk;->zzz()Ljava/lang/String;

    move-result-object v5

    .line 3203
    sget-object v12, Lcom/google/android/gms/measurement/internal/zzbj;->zzn:Lcom/google/android/gms/measurement/internal/zzfz;

    invoke-virtual {v3, v5, v12}, Lcom/google/android/gms/measurement/internal/zzah;->zzb(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzfz;)I

    move-result v3

    int-to-long v12, v3

    cmp-long v3, v8, v12

    if-lez v3, :cond_21

    .line 3205
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzj()Lcom/google/android/gms/measurement/internal/zzgi;

    move-result-object v3

    .line 3206
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzgi;->zzu()Lcom/google/android/gms/measurement/internal/zzgk;

    move-result-object v3

    const-string v5, "Too many conversions. Not logging as conversion. appId"

    iget-object v8, v4, Lcom/google/android/gms/measurement/internal/zznv$zza;->zza:Lcom/google/android/gms/internal/measurement/zzgn$zzk;

    .line 3207
    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzgn$zzk;->zzz()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/google/android/gms/measurement/internal/zzgi;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    .line 3208
    invoke-virtual {v3, v5, v8}, Lcom/google/android/gms/measurement/internal/zzgk;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v3, -0x1

    const/4 v5, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 3212
    :goto_f
    invoke-virtual {v14}, Lcom/google/android/gms/internal/measurement/zzgn$zzf$zza;->zza()I

    move-result v12

    if-ge v9, v12, :cond_1e

    .line 3213
    invoke-virtual {v14, v9}, Lcom/google/android/gms/internal/measurement/zzgn$zzf$zza;->zzb(I)Lcom/google/android/gms/internal/measurement/zzgn$zzh;

    move-result-object v12

    .line 3214
    invoke-virtual {v12}, Lcom/google/android/gms/internal/measurement/zzgn$zzh;->zzg()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1c

    .line 3216
    invoke-virtual {v12}, Lcom/google/android/gms/internal/measurement/zzlc;->zzcd()Lcom/google/android/gms/internal/measurement/zzlc$zzb;

    move-result-object v3

    .line 3217
    move-object v5, v3

    check-cast v5, Lcom/google/android/gms/internal/measurement/zzlc$zzb;

    check-cast v3, Lcom/google/android/gms/internal/measurement/zzgn$zzh$zza;

    move-object v5, v3

    move v3, v9

    goto :goto_10

    .line 3219
    :cond_1c
    invoke-virtual {v12}, Lcom/google/android/gms/internal/measurement/zzgn$zzh;->zzg()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1d

    const/4 v8, 0x1

    :cond_1d
    :goto_10
    add-int/lit8 v9, v9, 0x1

    goto :goto_f

    :cond_1e
    if-eqz v8, :cond_1f

    if-eqz v5, :cond_1f

    .line 3224
    invoke-virtual {v14, v3}, Lcom/google/android/gms/internal/measurement/zzgn$zzf$zza;->zza(I)Lcom/google/android/gms/internal/measurement/zzgn$zzf$zza;

    goto :goto_11

    :cond_1f
    if-eqz v5, :cond_20

    .line 3228
    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzjh;->clone()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/measurement/zzlc$zzb;

    check-cast v5, Lcom/google/android/gms/internal/measurement/zzgn$zzh$zza;

    .line 3229
    invoke-virtual {v5, v7}, Lcom/google/android/gms/internal/measurement/zzgn$zzh$zza;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzgn$zzh$zza;

    move-result-object v5

    const-wide/16 v7, 0xa

    .line 3230
    invoke-virtual {v5, v7, v8}, Lcom/google/android/gms/internal/measurement/zzgn$zzh$zza;->zza(J)Lcom/google/android/gms/internal/measurement/zzgn$zzh$zza;

    move-result-object v5

    .line 3231
    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzlc$zzb;->zzai()Lcom/google/android/gms/internal/measurement/zzml;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/measurement/zzlc;

    check-cast v5, Lcom/google/android/gms/internal/measurement/zzgn$zzh;

    .line 3232
    invoke-virtual {v14, v3, v5}, Lcom/google/android/gms/internal/measurement/zzgn$zzf$zza;->zza(ILcom/google/android/gms/internal/measurement/zzgn$zzh;)Lcom/google/android/gms/internal/measurement/zzgn$zzf$zza;

    goto :goto_11

    .line 3234
    :cond_20
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzj()Lcom/google/android/gms/measurement/internal/zzgi;

    move-result-object v3

    .line 3235
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzgi;->zzg()Lcom/google/android/gms/measurement/internal/zzgk;

    move-result-object v3

    const-string v5, "Did not find conversion parameter. appId"

    iget-object v7, v4, Lcom/google/android/gms/measurement/internal/zznv$zza;->zza:Lcom/google/android/gms/internal/measurement/zzgn$zzk;

    .line 3236
    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzgn$zzk;->zzz()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/google/android/gms/measurement/internal/zzgi;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    .line 3237
    invoke-virtual {v3, v5, v7}, Lcom/google/android/gms/measurement/internal/zzgk;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_21
    :goto_11
    if-eqz v2, :cond_29

    .line 3240
    new-instance v2, Ljava/util/ArrayList;

    invoke-virtual {v14}, Lcom/google/android/gms/internal/measurement/zzgn$zzf$zza;->zzf()Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const/4 v3, 0x0

    const/4 v5, -0x1

    const/4 v7, -0x1

    .line 3243
    :goto_12
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v8
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_2

    const-string v9, "currency"

    const-string v12, "value"

    if-ge v3, v8, :cond_24

    .line 3244
    :try_start_1e
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/android/gms/internal/measurement/zzgn$zzh;

    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzgn$zzh;->zzg()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v12, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_22

    move v5, v3

    goto :goto_13

    .line 3246
    :cond_22
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/android/gms/internal/measurement/zzgn$zzh;

    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzgn$zzh;->zzg()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_23

    move v7, v3

    :cond_23
    :goto_13
    add-int/lit8 v3, v3, 0x1

    goto :goto_12

    :cond_24
    const/4 v3, -0x1

    if-eq v5, v3, :cond_2a

    .line 3250
    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/measurement/zzgn$zzh;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzgn$zzh;->zzl()Z

    move-result v3

    if-nez v3, :cond_25

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/measurement/zzgn$zzh;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzgn$zzh;->zzj()Z

    move-result v3

    if-nez v3, :cond_25

    .line 3251
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzj()Lcom/google/android/gms/measurement/internal/zzgi;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzgi;->zzv()Lcom/google/android/gms/measurement/internal/zzgk;

    move-result-object v2

    const-string v3, "Value must be specified with a numeric type."

    invoke-virtual {v2, v3}, Lcom/google/android/gms/measurement/internal/zzgk;->zza(Ljava/lang/String;)V

    .line 3253
    invoke-virtual {v14, v5}, Lcom/google/android/gms/internal/measurement/zzgn$zzf$zza;->zza(I)Lcom/google/android/gms/internal/measurement/zzgn$zzf$zza;

    .line 3254
    invoke-static {v14, v11}, Lcom/google/android/gms/measurement/internal/zznv;->zza(Lcom/google/android/gms/internal/measurement/zzgn$zzf$zza;Ljava/lang/String;)V

    const/16 v2, 0x12

    .line 3255
    invoke-static {v14, v2, v12}, Lcom/google/android/gms/measurement/internal/zznv;->zza(Lcom/google/android/gms/internal/measurement/zzgn$zzf$zza;ILjava/lang/String;)V

    goto :goto_16

    :cond_25
    const/4 v3, -0x1

    if-ne v7, v3, :cond_26

    const/4 v8, 0x3

    goto :goto_15

    .line 3260
    :cond_26
    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/zzgn$zzh;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzgn$zzh;->zzh()Ljava/lang/String;

    move-result-object v2

    .line 3261
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v7

    const/4 v8, 0x3

    if-eq v7, v8, :cond_27

    goto :goto_15

    :cond_27
    const/4 v7, 0x0

    .line 3263
    :goto_14
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v12

    if-ge v7, v12, :cond_2b

    .line 3264
    invoke-virtual {v2, v7}, Ljava/lang/String;->codePointAt(I)I

    move-result v12

    .line 3265
    invoke-static {v12}, Ljava/lang/Character;->isLetter(I)Z

    move-result v13

    if-nez v13, :cond_28

    .line 3271
    :goto_15
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzj()Lcom/google/android/gms/measurement/internal/zzgi;

    move-result-object v2

    .line 3272
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzgi;->zzv()Lcom/google/android/gms/measurement/internal/zzgk;

    move-result-object v2

    const-string v7, "Value parameter discarded. You must also supply a 3-letter ISO_4217 currency code in the currency parameter."

    .line 3273
    invoke-virtual {v2, v7}, Lcom/google/android/gms/measurement/internal/zzgk;->zza(Ljava/lang/String;)V

    .line 3275
    invoke-virtual {v14, v5}, Lcom/google/android/gms/internal/measurement/zzgn$zzf$zza;->zza(I)Lcom/google/android/gms/internal/measurement/zzgn$zzf$zza;

    .line 3276
    invoke-static {v14, v11}, Lcom/google/android/gms/measurement/internal/zznv;->zza(Lcom/google/android/gms/internal/measurement/zzgn$zzf$zza;Ljava/lang/String;)V

    const/16 v2, 0x13

    .line 3277
    invoke-static {v14, v2, v9}, Lcom/google/android/gms/measurement/internal/zznv;->zza(Lcom/google/android/gms/internal/measurement/zzgn$zzf$zza;ILjava/lang/String;)V

    goto :goto_17

    .line 3268
    :cond_28
    invoke-static {v12}, Ljava/lang/Character;->charCount(I)I

    move-result v12

    add-int/2addr v7, v12

    goto :goto_14

    :cond_29
    :goto_16
    const/4 v3, -0x1

    :cond_2a
    const/4 v8, 0x3

    .line 3278
    :cond_2b
    :goto_17
    invoke-virtual {v14}, Lcom/google/android/gms/internal/measurement/zzgn$zzf$zza;->zze()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2e

    .line 3279
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzp()Lcom/google/android/gms/measurement/internal/zzol;

    invoke-virtual {v14}, Lcom/google/android/gms/internal/measurement/zzlc$zzb;->zzai()Lcom/google/android/gms/internal/measurement/zzml;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/zzlc;

    check-cast v2, Lcom/google/android/gms/internal/measurement/zzgn$zzf;

    invoke-static {v2, v15}, Lcom/google/android/gms/measurement/internal/zzol;->zza(Lcom/google/android/gms/internal/measurement/zzgn$zzf;Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzgn$zzh;

    move-result-object v2

    if-nez v2, :cond_2d

    if-eqz v6, :cond_2c

    .line 3281
    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/zzgn$zzf$zza;->zzc()J

    move-result-wide v9

    invoke-virtual {v14}, Lcom/google/android/gms/internal/measurement/zzgn$zzf$zza;->zzc()J

    move-result-wide v11

    sub-long/2addr v9, v11

    invoke-static {v9, v10}, Ljava/lang/Math;->abs(J)J

    move-result-wide v9

    const-wide/16 v11, 0x3e8

    cmp-long v2, v9, v11

    if-gtz v2, :cond_2c

    .line 3282
    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/zzjh;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/zzlc$zzb;

    check-cast v2, Lcom/google/android/gms/internal/measurement/zzgn$zzf$zza;

    .line 3283
    invoke-direct {v1, v14, v2}, Lcom/google/android/gms/measurement/internal/zznv;->zza(Lcom/google/android/gms/internal/measurement/zzgn$zzf$zza;Lcom/google/android/gms/internal/measurement/zzgn$zzf$zza;)Z

    move-result v5

    if-eqz v5, :cond_2c

    move-object/from16 v5, v24

    move/from16 v7, v25

    .line 3286
    invoke-virtual {v5, v7, v2}, Lcom/google/android/gms/internal/measurement/zzgn$zzk$zza;->zza(ILcom/google/android/gms/internal/measurement/zzgn$zzf$zza;)Lcom/google/android/gms/internal/measurement/zzgn$zzk$zza;

    move v13, v7

    move/from16 v12, v23

    :goto_18
    const/4 v2, 0x0

    const/4 v6, 0x0

    goto/16 :goto_1a

    :cond_2c
    move-object/from16 v5, v24

    move/from16 v7, v25

    move/from16 v12, p2

    move v13, v7

    move-object v2, v14

    goto/16 :goto_1a

    :cond_2d
    move-object/from16 v5, v24

    move/from16 v7, v25

    goto :goto_19

    :cond_2e
    move-object/from16 v5, v24

    move/from16 v7, v25

    .line 3292
    const-string v2, "_vs"

    invoke-virtual {v14}, Lcom/google/android/gms/internal/measurement/zzgn$zzf$zza;->zze()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_30

    .line 3293
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzp()Lcom/google/android/gms/measurement/internal/zzol;

    invoke-virtual {v14}, Lcom/google/android/gms/internal/measurement/zzlc$zzb;->zzai()Lcom/google/android/gms/internal/measurement/zzml;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/zzlc;

    check-cast v2, Lcom/google/android/gms/internal/measurement/zzgn$zzf;

    move-object/from16 v9, v17

    invoke-static {v2, v9}, Lcom/google/android/gms/measurement/internal/zzol;->zza(Lcom/google/android/gms/internal/measurement/zzgn$zzf;Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzgn$zzh;

    move-result-object v2

    if-nez v2, :cond_30

    if-eqz p3, :cond_2f

    .line 3295
    invoke-virtual/range {p3 .. p3}, Lcom/google/android/gms/internal/measurement/zzgn$zzf$zza;->zzc()J

    move-result-wide v9

    invoke-virtual {v14}, Lcom/google/android/gms/internal/measurement/zzgn$zzf$zza;->zzc()J

    move-result-wide v11

    sub-long/2addr v9, v11

    invoke-static {v9, v10}, Ljava/lang/Math;->abs(J)J

    move-result-wide v9

    const-wide/16 v11, 0x3e8

    cmp-long v2, v9, v11

    if-gtz v2, :cond_2f

    .line 3296
    invoke-virtual/range {p3 .. p3}, Lcom/google/android/gms/internal/measurement/zzjh;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/zzlc$zzb;

    check-cast v2, Lcom/google/android/gms/internal/measurement/zzgn$zzf$zza;

    .line 3297
    invoke-direct {v1, v2, v14}, Lcom/google/android/gms/measurement/internal/zznv;->zza(Lcom/google/android/gms/internal/measurement/zzgn$zzf$zza;Lcom/google/android/gms/internal/measurement/zzgn$zzf$zza;)Z

    move-result v6

    if-eqz v6, :cond_2f

    move/from16 v9, v23

    .line 3300
    invoke-virtual {v5, v9, v2}, Lcom/google/android/gms/internal/measurement/zzgn$zzk$zza;->zza(ILcom/google/android/gms/internal/measurement/zzgn$zzf$zza;)Lcom/google/android/gms/internal/measurement/zzgn$zzk$zza;

    move v13, v7

    move v12, v9

    goto :goto_18

    :cond_2f
    move/from16 v9, v23

    move/from16 v13, p2

    move-object/from16 v2, p3

    move v12, v9

    move-object v6, v14

    goto :goto_1a

    :cond_30
    :goto_19
    move/from16 v9, v23

    move-object/from16 v2, p3

    move v13, v7

    move v12, v9

    .line 3306
    :goto_1a
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzqy;->zza()Z

    move-result v7

    if-eqz v7, :cond_38

    .line 3307
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zze()Lcom/google/android/gms/measurement/internal/zzah;

    move-result-object v7

    sget-object v9, Lcom/google/android/gms/measurement/internal/zzbj;->zzcu:Lcom/google/android/gms/measurement/internal/zzfz;

    invoke-virtual {v7, v9}, Lcom/google/android/gms/measurement/internal/zzah;->zza(Lcom/google/android/gms/measurement/internal/zzfz;)Z

    move-result v7

    if-eqz v7, :cond_38

    .line 3308
    invoke-virtual {v14}, Lcom/google/android/gms/internal/measurement/zzgn$zzf$zza;->zza()I

    move-result v7

    if-eqz v7, :cond_38

    .line 3310
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzp()Lcom/google/android/gms/measurement/internal/zzol;

    invoke-virtual {v14}, Lcom/google/android/gms/internal/measurement/zzgn$zzf$zza;->zzf()Ljava/util/List;

    move-result-object v7

    invoke-static {v7}, Lcom/google/android/gms/measurement/internal/zzol;->zza(Ljava/util/List;)Landroid/os/Bundle;

    move-result-object v7

    const/4 v9, 0x0

    .line 3311
    :goto_1b
    invoke-virtual {v14}, Lcom/google/android/gms/internal/measurement/zzgn$zzf$zza;->zza()I

    move-result v10

    if-ge v9, v10, :cond_35

    .line 3312
    invoke-virtual {v14, v9}, Lcom/google/android/gms/internal/measurement/zzgn$zzf$zza;->zzb(I)Lcom/google/android/gms/internal/measurement/zzgn$zzh;

    move-result-object v10

    .line 3313
    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/zzgn$zzh;->zzg()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v15, v21

    invoke-virtual {v11, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_33

    .line 3314
    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/zzgn$zzh;->zzi()Ljava/util/List;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/List;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_33

    .line 3315
    iget-object v11, v4, Lcom/google/android/gms/measurement/internal/zznv$zza;->zza:Lcom/google/android/gms/internal/measurement/zzgn$zzk;

    .line 3316
    invoke-virtual {v11}, Lcom/google/android/gms/internal/measurement/zzgn$zzk;->zzz()Ljava/lang/String;

    move-result-object v11

    .line 3318
    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/zzgn$zzh;->zzi()Ljava/util/List;

    move-result-object v10

    .line 3319
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Landroid/os/Bundle;

    move-object/from16 p3, v2

    const/4 v8, 0x0

    .line 3320
    :goto_1c
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v2

    if-ge v8, v2, :cond_32

    .line 3321
    invoke-interface {v10, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/zzgn$zzh;

    .line 3322
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzp()Lcom/google/android/gms/measurement/internal/zzol;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzgn$zzh;->zzi()Ljava/util/List;

    move-result-object v17

    move-object/from16 v18, v6

    invoke-static/range {v17 .. v17}, Lcom/google/android/gms/measurement/internal/zzol;->zza(Ljava/util/List;)Landroid/os/Bundle;

    move-result-object v6

    .line 3323
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzgn$zzh;->zzi()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_31

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/google/android/gms/internal/measurement/zzgn$zzh;

    move-object/from16 v19, v2

    .line 3324
    invoke-virtual {v14}, Lcom/google/android/gms/internal/measurement/zzgn$zzf$zza;->zze()Ljava/lang/String;

    move-result-object v2

    .line 3325
    invoke-virtual/range {v17 .. v17}, Lcom/google/android/gms/internal/measurement/zzlc;->zzcd()Lcom/google/android/gms/internal/measurement/zzlc$zzb;

    move-result-object v17

    .line 3326
    move-object/from16 v21, v17

    check-cast v21, Lcom/google/android/gms/internal/measurement/zzlc$zzb;

    move-object/from16 v21, v10

    move-object/from16 v10, v17

    check-cast v10, Lcom/google/android/gms/internal/measurement/zzgn$zzh$zza;

    invoke-direct {v1, v2, v10, v6, v11}, Lcom/google/android/gms/measurement/internal/zznv;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/zzgn$zzh$zza;Landroid/os/Bundle;Ljava/lang/String;)V

    move-object/from16 v2, v19

    move-object/from16 v10, v21

    goto :goto_1d

    :cond_31
    move-object/from16 v21, v10

    .line 3328
    aput-object v6, v3, v8

    add-int/lit8 v8, v8, 0x1

    move-object/from16 v6, v18

    move-object/from16 v10, v21

    goto :goto_1c

    :cond_32
    move-object/from16 v18, v6

    .line 3330
    invoke-virtual {v7, v15, v3}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    goto :goto_1e

    :cond_33
    move-object/from16 p3, v2

    move-object/from16 v18, v6

    .line 3332
    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/zzgn$zzh;->zzg()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_34

    .line 3334
    invoke-virtual {v14}, Lcom/google/android/gms/internal/measurement/zzgn$zzf$zza;->zze()Ljava/lang/String;

    move-result-object v2

    .line 3335
    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/zzlc;->zzcd()Lcom/google/android/gms/internal/measurement/zzlc$zzb;

    move-result-object v3

    .line 3336
    move-object v6, v3

    check-cast v6, Lcom/google/android/gms/internal/measurement/zzlc$zzb;

    check-cast v3, Lcom/google/android/gms/internal/measurement/zzgn$zzh$zza;

    iget-object v6, v4, Lcom/google/android/gms/measurement/internal/zznv$zza;->zza:Lcom/google/android/gms/internal/measurement/zzgn$zzk;

    .line 3337
    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/zzgn$zzk;->zzz()Ljava/lang/String;

    move-result-object v6

    .line 3338
    invoke-direct {v1, v2, v3, v7, v6}, Lcom/google/android/gms/measurement/internal/zznv;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/zzgn$zzh$zza;Landroid/os/Bundle;Ljava/lang/String;)V

    :cond_34
    :goto_1e
    add-int/lit8 v9, v9, 0x1

    move-object/from16 v2, p3

    move-object/from16 v21, v15

    move-object/from16 v6, v18

    const/4 v3, -0x1

    const/4 v8, 0x3

    goto/16 :goto_1b

    :cond_35
    move-object/from16 p3, v2

    move-object/from16 v18, v6

    move-object/from16 v15, v21

    .line 3341
    invoke-virtual {v14}, Lcom/google/android/gms/internal/measurement/zzgn$zzf$zza;->zzd()Lcom/google/android/gms/internal/measurement/zzgn$zzf$zza;

    .line 3342
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzp()Lcom/google/android/gms/measurement/internal/zzol;

    move-result-object v2

    .line 3343
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 3344
    invoke-virtual {v7}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_36
    :goto_1f
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_37

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 3345
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzgn$zzh;->zze()Lcom/google/android/gms/internal/measurement/zzgn$zzh$zza;

    move-result-object v9

    invoke-virtual {v9, v8}, Lcom/google/android/gms/internal/measurement/zzgn$zzh$zza;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzgn$zzh$zza;

    move-result-object v9

    .line 3346
    invoke-virtual {v7, v8}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    if-eqz v8, :cond_36

    .line 3348
    invoke-virtual {v2, v9, v8}, Lcom/google/android/gms/measurement/internal/zzol;->zza(Lcom/google/android/gms/internal/measurement/zzgn$zzh$zza;Ljava/lang/Object;)V

    .line 3349
    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/zzlc$zzb;->zzai()Lcom/google/android/gms/internal/measurement/zzml;

    move-result-object v8

    check-cast v8, Lcom/google/android/gms/internal/measurement/zzlc;

    check-cast v8, Lcom/google/android/gms/internal/measurement/zzgn$zzh;

    invoke-interface {v3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1f

    .line 3352
    :cond_37
    move-object v2, v3

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v6, 0x0

    :goto_20
    if-ge v6, v2, :cond_39

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    add-int/lit8 v6, v6, 0x1

    check-cast v7, Lcom/google/android/gms/internal/measurement/zzgn$zzh;

    .line 3353
    invoke-virtual {v14, v7}, Lcom/google/android/gms/internal/measurement/zzgn$zzf$zza;->zza(Lcom/google/android/gms/internal/measurement/zzgn$zzh;)Lcom/google/android/gms/internal/measurement/zzgn$zzf$zza;

    goto :goto_20

    :cond_38
    move-object/from16 p3, v2

    move-object/from16 v18, v6

    move-object/from16 v15, v21

    .line 3355
    :cond_39
    iget-object v2, v4, Lcom/google/android/gms/measurement/internal/zznv$zza;->zzc:Ljava/util/List;

    invoke-virtual {v14}, Lcom/google/android/gms/internal/measurement/zzlc$zzb;->zzai()Lcom/google/android/gms/internal/measurement/zzml;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/measurement/zzlc;

    check-cast v3, Lcom/google/android/gms/internal/measurement/zzgn$zzf;

    move/from16 v6, v20

    invoke-interface {v2, v6, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v11, p2, 0x1

    .line 3357
    invoke-virtual {v5, v14}, Lcom/google/android/gms/internal/measurement/zzgn$zzk$zza;->zza(Lcom/google/android/gms/internal/measurement/zzgn$zzf$zza;)Lcom/google/android/gms/internal/measurement/zzgn$zzk$zza;

    move-object/from16 v7, p3

    move/from16 v10, v16

    move-object/from16 v8, v18

    :goto_21
    add-int/lit8 v9, v6, 0x1

    move-object v3, v15

    move-object/from16 v2, v22

    goto/16 :goto_7

    :cond_3a
    move-object/from16 v9, v17

    const-wide/16 v2, 0x0

    move/from16 v6, p2

    move-wide v12, v2

    const/4 v7, 0x0

    :goto_22
    if-ge v7, v6, :cond_3e

    .line 3360
    invoke-virtual {v5, v7}, Lcom/google/android/gms/internal/measurement/zzgn$zzk$zza;->zza(I)Lcom/google/android/gms/internal/measurement/zzgn$zzf;

    move-result-object v8

    .line 3361
    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzgn$zzf;->zzg()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v10, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_3b

    .line 3362
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzp()Lcom/google/android/gms/measurement/internal/zzol;

    invoke-static {v8, v15}, Lcom/google/android/gms/measurement/internal/zzol;->zza(Lcom/google/android/gms/internal/measurement/zzgn$zzf;Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzgn$zzh;

    move-result-object v14

    if-eqz v14, :cond_3b

    .line 3363
    invoke-virtual {v5, v7}, Lcom/google/android/gms/internal/measurement/zzgn$zzk$zza;->zzb(I)Lcom/google/android/gms/internal/measurement/zzgn$zzk$zza;

    add-int/lit8 v6, v6, -0x1

    add-int/lit8 v7, v7, -0x1

    goto :goto_24

    .line 3368
    :cond_3b
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzp()Lcom/google/android/gms/measurement/internal/zzol;

    invoke-static {v8, v9}, Lcom/google/android/gms/measurement/internal/zzol;->zza(Lcom/google/android/gms/internal/measurement/zzgn$zzf;Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzgn$zzh;

    move-result-object v8

    if-eqz v8, :cond_3d

    .line 3370
    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzgn$zzh;->zzl()Z

    move-result v14

    if-eqz v14, :cond_3c

    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzgn$zzh;->zzd()J

    move-result-wide v20

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    goto :goto_23

    :cond_3c
    const/4 v8, 0x0

    :goto_23
    if-eqz v8, :cond_3d

    .line 3371
    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v20

    cmp-long v14, v20, v2

    if-lez v14, :cond_3d

    .line 3372
    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v20

    add-long v12, v12, v20

    :cond_3d
    :goto_24
    const/4 v8, 0x1

    add-int/2addr v7, v8

    goto :goto_22

    :cond_3e
    const/4 v6, 0x0

    .line 3374
    invoke-direct {v1, v5, v12, v13, v6}, Lcom/google/android/gms/measurement/internal/zznv;->zza(Lcom/google/android/gms/internal/measurement/zzgn$zzk$zza;JZ)V

    .line 3376
    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzgn$zzk$zza;->zzaa()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_3f
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_2

    const-string v8, "_se"

    if-eqz v7, :cond_40

    :try_start_1f
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/gms/internal/measurement/zzgn$zzf;

    .line 3377
    const-string v9, "_s"

    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzgn$zzf;->zzg()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3f

    .line 3382
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzf()Lcom/google/android/gms/measurement/internal/zzam;

    move-result-object v6

    .line 3383
    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzgn$zzk$zza;->zzt()Ljava/lang/String;

    move-result-object v7

    .line 3384
    invoke-virtual {v6, v7, v8}, Lcom/google/android/gms/measurement/internal/zzam;->zzh(Ljava/lang/String;Ljava/lang/String;)V

    .line 3385
    :cond_40
    const-string v6, "_sid"

    .line 3386
    invoke-static {v5, v6}, Lcom/google/android/gms/measurement/internal/zzol;->zza(Lcom/google/android/gms/internal/measurement/zzgn$zzk$zza;Ljava/lang/String;)I

    move-result v6

    if-ltz v6, :cond_41

    const/4 v6, 0x1

    .line 3388
    invoke-direct {v1, v5, v12, v13, v6}, Lcom/google/android/gms/measurement/internal/zznv;->zza(Lcom/google/android/gms/internal/measurement/zzgn$zzk$zza;JZ)V

    goto :goto_25

    .line 3390
    :cond_41
    invoke-static {v5, v8}, Lcom/google/android/gms/measurement/internal/zzol;->zza(Lcom/google/android/gms/internal/measurement/zzgn$zzk$zza;Ljava/lang/String;)I

    move-result v6

    if-ltz v6, :cond_42

    .line 3392
    invoke-virtual {v5, v6}, Lcom/google/android/gms/internal/measurement/zzgn$zzk$zza;->zzc(I)Lcom/google/android/gms/internal/measurement/zzgn$zzk$zza;

    .line 3393
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzj()Lcom/google/android/gms/measurement/internal/zzgi;

    move-result-object v6

    .line 3394
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzgi;->zzg()Lcom/google/android/gms/measurement/internal/zzgk;

    move-result-object v6

    const-string v7, "Session engagement user property is in the bundle without session ID. appId"

    iget-object v8, v4, Lcom/google/android/gms/measurement/internal/zznv$zza;->zza:Lcom/google/android/gms/internal/measurement/zzgn$zzk;

    .line 3395
    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzgn$zzk;->zzz()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/google/android/gms/measurement/internal/zzgi;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    .line 3396
    invoke-virtual {v6, v7, v8}, Lcom/google/android/gms/measurement/internal/zzgk;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    .line 3397
    :cond_42
    :goto_25
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzp()Lcom/google/android/gms/measurement/internal/zzol;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/google/android/gms/measurement/internal/zzol;->zza(Lcom/google/android/gms/internal/measurement/zzgn$zzk$zza;)V

    .line 3398
    iget-object v6, v4, Lcom/google/android/gms/measurement/internal/zznv$zza;->zza:Lcom/google/android/gms/internal/measurement/zzgn$zzk;

    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/zzgn$zzk;->zzz()Ljava/lang/String;

    move-result-object v6

    .line 3400
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzl()Lcom/google/android/gms/measurement/internal/zzhp;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zziy;->zzt()V

    .line 3401
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzs()V

    .line 3402
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzf()Lcom/google/android/gms/measurement/internal/zzam;

    move-result-object v7

    invoke-virtual {v7, v6}, Lcom/google/android/gms/measurement/internal/zzam;->zze(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzh;

    move-result-object v7

    if-nez v7, :cond_43

    .line 3404
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzj()Lcom/google/android/gms/measurement/internal/zzgi;

    move-result-object v7

    .line 3405
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzgi;->zzg()Lcom/google/android/gms/measurement/internal/zzgk;

    move-result-object v7

    const-string v8, "Cannot fix consent fields without appInfo. appId"

    .line 3406
    invoke-static {v6}, Lcom/google/android/gms/measurement/internal/zzgi;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v7, v8, v6}, Lcom/google/android/gms/measurement/internal/zzgk;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_26

    .line 3408
    :cond_43
    invoke-virtual {v1, v7, v5}, Lcom/google/android/gms/measurement/internal/zznv;->zza(Lcom/google/android/gms/measurement/internal/zzh;Lcom/google/android/gms/internal/measurement/zzgn$zzk$zza;)V

    .line 3409
    :goto_26
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzqn;->zza()Z

    move-result v6

    if-eqz v6, :cond_45

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zze()Lcom/google/android/gms/measurement/internal/zzah;

    move-result-object v6

    sget-object v7, Lcom/google/android/gms/measurement/internal/zzbj;->zzct:Lcom/google/android/gms/measurement/internal/zzfz;

    invoke-virtual {v6, v7}, Lcom/google/android/gms/measurement/internal/zzah;->zza(Lcom/google/android/gms/measurement/internal/zzfz;)Z

    move-result v6

    if-eqz v6, :cond_45

    .line 3410
    iget-object v6, v4, Lcom/google/android/gms/measurement/internal/zznv$zza;->zza:Lcom/google/android/gms/internal/measurement/zzgn$zzk;

    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/zzgn$zzk;->zzz()Ljava/lang/String;

    move-result-object v6

    .line 3412
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzl()Lcom/google/android/gms/measurement/internal/zzhp;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zziy;->zzt()V

    .line 3413
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzs()V

    .line 3414
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzf()Lcom/google/android/gms/measurement/internal/zzam;

    move-result-object v7

    invoke-virtual {v7, v6}, Lcom/google/android/gms/measurement/internal/zzam;->zze(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzh;

    move-result-object v7

    if-nez v7, :cond_44

    .line 3416
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzj()Lcom/google/android/gms/measurement/internal/zzgi;

    move-result-object v7

    .line 3417
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzgi;->zzu()Lcom/google/android/gms/measurement/internal/zzgk;

    move-result-object v7

    const-string v8, "Cannot populate ad_campaign_info without appInfo. appId"

    .line 3418
    invoke-static {v6}, Lcom/google/android/gms/measurement/internal/zzgi;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    .line 3419
    invoke-virtual {v7, v8, v6}, Lcom/google/android/gms/measurement/internal/zzgk;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_27

    .line 3421
    :cond_44
    invoke-virtual {v1, v7, v5}, Lcom/google/android/gms/measurement/internal/zznv;->zzb(Lcom/google/android/gms/measurement/internal/zzh;Lcom/google/android/gms/internal/measurement/zzgn$zzk$zza;)V

    :cond_45
    :goto_27
    const-wide v6, 0x7fffffffffffffffL

    .line 3423
    invoke-virtual {v5, v6, v7}, Lcom/google/android/gms/internal/measurement/zzgn$zzk$zza;->zzi(J)Lcom/google/android/gms/internal/measurement/zzgn$zzk$zza;

    move-result-object v6

    const-wide/high16 v7, -0x8000000000000000L

    invoke-virtual {v6, v7, v8}, Lcom/google/android/gms/internal/measurement/zzgn$zzk$zza;->zze(J)Lcom/google/android/gms/internal/measurement/zzgn$zzk$zza;

    const/4 v6, 0x0

    .line 3424
    :goto_28
    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzgn$zzk$zza;->zzc()I

    move-result v7

    if-ge v6, v7, :cond_48

    .line 3425
    invoke-virtual {v5, v6}, Lcom/google/android/gms/internal/measurement/zzgn$zzk$zza;->zza(I)Lcom/google/android/gms/internal/measurement/zzgn$zzf;

    move-result-object v7

    .line 3426
    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzgn$zzf;->zzd()J

    move-result-wide v8

    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzgn$zzk$zza;->zzf()J

    move-result-wide v12

    cmp-long v8, v8, v12

    if-gez v8, :cond_46

    .line 3427
    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzgn$zzf;->zzd()J

    move-result-wide v8

    invoke-virtual {v5, v8, v9}, Lcom/google/android/gms/internal/measurement/zzgn$zzk$zza;->zzi(J)Lcom/google/android/gms/internal/measurement/zzgn$zzk$zza;

    .line 3428
    :cond_46
    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzgn$zzf;->zzd()J

    move-result-wide v8

    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzgn$zzk$zza;->zze()J

    move-result-wide v12

    cmp-long v8, v8, v12

    if-lez v8, :cond_47

    .line 3429
    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzgn$zzf;->zzd()J

    move-result-wide v7

    invoke-virtual {v5, v7, v8}, Lcom/google/android/gms/internal/measurement/zzgn$zzk$zza;->zze(J)Lcom/google/android/gms/internal/measurement/zzgn$zzk$zza;

    :cond_47
    add-int/lit8 v6, v6, 0x1

    goto :goto_28

    .line 3431
    :cond_48
    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzgn$zzk$zza;->zzs()Lcom/google/android/gms/internal/measurement/zzgn$zzk$zza;

    .line 3432
    sget-object v6, Lcom/google/android/gms/measurement/internal/zzjc;->zza:Lcom/google/android/gms/measurement/internal/zzjc;

    .line 3433
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzpd;->zza()Z

    move-result v7

    if-eqz v7, :cond_4c

    .line 3434
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zze()Lcom/google/android/gms/measurement/internal/zzah;

    move-result-object v7

    sget-object v8, Lcom/google/android/gms/measurement/internal/zzbj;->zzdc:Lcom/google/android/gms/measurement/internal/zzfz;

    invoke-virtual {v7, v8}, Lcom/google/android/gms/measurement/internal/zzah;->zza(Lcom/google/android/gms/measurement/internal/zzfz;)Z

    move-result v7

    if-eqz v7, :cond_4c

    .line 3435
    iget-object v6, v4, Lcom/google/android/gms/measurement/internal/zznv$zza;->zza:Lcom/google/android/gms/internal/measurement/zzgn$zzk;

    .line 3436
    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/zzgn$zzk;->zzz()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/google/android/gms/measurement/internal/zznv;->zzb(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzjc;

    move-result-object v6

    iget-object v7, v4, Lcom/google/android/gms/measurement/internal/zznv$zza;->zza:Lcom/google/android/gms/internal/measurement/zzgn$zzk;

    .line 3437
    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzgn$zzk;->zzae()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/google/android/gms/measurement/internal/zzjc;->zzb(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzjc;

    move-result-object v7

    .line 3438
    invoke-virtual {v6, v7}, Lcom/google/android/gms/measurement/internal/zzjc;->zza(Lcom/google/android/gms/measurement/internal/zzjc;)Lcom/google/android/gms/measurement/internal/zzjc;

    move-result-object v6

    .line 3440
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzf()Lcom/google/android/gms/measurement/internal/zzam;

    move-result-object v7

    iget-object v8, v4, Lcom/google/android/gms/measurement/internal/zznv$zza;->zza:Lcom/google/android/gms/internal/measurement/zzgn$zzk;

    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzgn$zzk;->zzz()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/google/android/gms/measurement/internal/zzam;->zzh(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzjc;

    move-result-object v7

    .line 3441
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzf()Lcom/google/android/gms/measurement/internal/zzam;

    move-result-object v8

    iget-object v9, v4, Lcom/google/android/gms/measurement/internal/zznv$zza;->zza:Lcom/google/android/gms/internal/measurement/zzgn$zzk;

    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/zzgn$zzk;->zzz()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9, v6}, Lcom/google/android/gms/measurement/internal/zzam;->zza(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzjc;)V

    .line 3442
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzjc;->zzj()Z

    move-result v8

    if-nez v8, :cond_49

    .line 3443
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzjc;->zzj()Z

    move-result v8

    if-eqz v8, :cond_49

    .line 3444
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzf()Lcom/google/android/gms/measurement/internal/zzam;

    move-result-object v7

    iget-object v8, v4, Lcom/google/android/gms/measurement/internal/zznv$zza;->zza:Lcom/google/android/gms/internal/measurement/zzgn$zzk;

    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzgn$zzk;->zzz()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/google/android/gms/measurement/internal/zzam;->zzq(Ljava/lang/String;)V

    goto :goto_29

    .line 3445
    :cond_49
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzjc;->zzj()Z

    move-result v8

    if-eqz v8, :cond_4a

    .line 3446
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzjc;->zzj()Z

    move-result v7

    if-nez v7, :cond_4a

    .line 3447
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzf()Lcom/google/android/gms/measurement/internal/zzam;

    move-result-object v7

    iget-object v8, v4, Lcom/google/android/gms/measurement/internal/zznv$zza;->zza:Lcom/google/android/gms/internal/measurement/zzgn$zzk;

    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzgn$zzk;->zzz()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/google/android/gms/measurement/internal/zzam;->zzr(Ljava/lang/String;)V

    .line 3449
    :cond_4a
    :goto_29
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzjc;->zzi()Z

    move-result v7

    if-nez v7, :cond_4b

    .line 3450
    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzgn$zzk$zza;->zzq()Lcom/google/android/gms/internal/measurement/zzgn$zzk$zza;

    .line 3451
    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzgn$zzk$zza;->zzn()Lcom/google/android/gms/internal/measurement/zzgn$zzk$zza;

    .line 3452
    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzgn$zzk$zza;->zzk()Lcom/google/android/gms/internal/measurement/zzgn$zzk$zza;

    .line 3453
    :cond_4b
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzjc;->zzj()Z

    move-result v7

    if-nez v7, :cond_4c

    .line 3454
    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzgn$zzk$zza;->zzh()Lcom/google/android/gms/internal/measurement/zzgn$zzk$zza;

    .line 3455
    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzgn$zzk$zza;->zzr()Lcom/google/android/gms/internal/measurement/zzgn$zzk$zza;

    .line 3456
    :cond_4c
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzrl;->zza()Z

    move-result v7

    if-eqz v7, :cond_51

    .line 3457
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zze()Lcom/google/android/gms/measurement/internal/zzah;

    move-result-object v7

    iget-object v8, v4, Lcom/google/android/gms/measurement/internal/zznv$zza;->zza:Lcom/google/android/gms/internal/measurement/zzgn$zzk;

    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzgn$zzk;->zzz()Ljava/lang/String;

    move-result-object v8

    sget-object v9, Lcom/google/android/gms/measurement/internal/zzbj;->zzcg:Lcom/google/android/gms/measurement/internal/zzfz;

    invoke-virtual {v7, v8, v9}, Lcom/google/android/gms/measurement/internal/zzah;->zze(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzfz;)Z

    move-result v7

    if-eqz v7, :cond_51

    .line 3458
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzq()Lcom/google/android/gms/measurement/internal/zzop;

    iget-object v7, v4, Lcom/google/android/gms/measurement/internal/zznv$zza;->zza:Lcom/google/android/gms/internal/measurement/zzgn$zzk;

    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzgn$zzk;->zzz()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/google/android/gms/measurement/internal/zzop;->zzd(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_51

    iget-object v7, v4, Lcom/google/android/gms/measurement/internal/zznv$zza;->zza:Lcom/google/android/gms/internal/measurement/zzgn$zzk;

    .line 3459
    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzgn$zzk;->zzz()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Lcom/google/android/gms/measurement/internal/zznv;->zzb(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzjc;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzjc;->zzi()Z

    move-result v7

    if-eqz v7, :cond_51

    iget-object v7, v4, Lcom/google/android/gms/measurement/internal/zznv$zza;->zza:Lcom/google/android/gms/internal/measurement/zzgn$zzk;

    .line 3460
    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzgn$zzk;->zzat()Z

    move-result v7

    if-eqz v7, :cond_51

    const/4 v7, 0x0

    .line 3461
    :goto_2a
    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzgn$zzk$zza;->zzc()I

    move-result v8

    if-ge v7, v8, :cond_51

    .line 3462
    invoke-virtual {v5, v7}, Lcom/google/android/gms/internal/measurement/zzgn$zzk$zza;->zza(I)Lcom/google/android/gms/internal/measurement/zzgn$zzf;

    move-result-object v8

    .line 3463
    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzlc;->zzcd()Lcom/google/android/gms/internal/measurement/zzlc$zzb;

    move-result-object v8

    .line 3464
    move-object v9, v8

    check-cast v9, Lcom/google/android/gms/internal/measurement/zzlc$zzb;

    check-cast v8, Lcom/google/android/gms/internal/measurement/zzgn$zzf$zza;

    .line 3466
    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzgn$zzf$zza;->zzf()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_4d
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_50

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/google/android/gms/internal/measurement/zzgn$zzh;

    .line 3467
    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/zzgn$zzh;->zzg()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4d

    .line 3472
    iget-object v9, v4, Lcom/google/android/gms/measurement/internal/zznv$zza;->zza:Lcom/google/android/gms/internal/measurement/zzgn$zzk;

    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/zzgn$zzk;->zza()I

    move-result v9

    .line 3473
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zze()Lcom/google/android/gms/measurement/internal/zzah;

    move-result-object v10

    iget-object v12, v4, Lcom/google/android/gms/measurement/internal/zznv$zza;->zza:Lcom/google/android/gms/internal/measurement/zzgn$zzk;

    .line 3474
    invoke-virtual {v12}, Lcom/google/android/gms/internal/measurement/zzgn$zzk;->zzz()Ljava/lang/String;

    move-result-object v12

    sget-object v13, Lcom/google/android/gms/measurement/internal/zzbj;->zzax:Lcom/google/android/gms/measurement/internal/zzfz;

    invoke-virtual {v10, v12, v13}, Lcom/google/android/gms/measurement/internal/zzah;->zzb(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzfz;)I

    move-result v10

    if-lt v9, v10, :cond_4f

    .line 3476
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zze()Lcom/google/android/gms/measurement/internal/zzah;

    move-result-object v9

    iget-object v10, v4, Lcom/google/android/gms/measurement/internal/zznv$zza;->zza:Lcom/google/android/gms/internal/measurement/zzgn$zzk;

    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/zzgn$zzk;->zzz()Ljava/lang/String;

    move-result-object v10

    sget-object v12, Lcom/google/android/gms/measurement/internal/zzbj;->zzci:Lcom/google/android/gms/measurement/internal/zzfz;

    invoke-virtual {v9, v10, v12}, Lcom/google/android/gms/measurement/internal/zzah;->zze(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzfz;)Z

    move-result v9

    if-eqz v9, :cond_4e

    .line 3477
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzq()Lcom/google/android/gms/measurement/internal/zzop;

    move-result-object v9

    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/zzop;->zzp()Ljava/lang/String;

    move-result-object v9

    .line 3478
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzgn$zzh;->zze()Lcom/google/android/gms/internal/measurement/zzgn$zzh$zza;

    move-result-object v10

    const-string v12, "_tu"

    .line 3479
    invoke-virtual {v10, v12}, Lcom/google/android/gms/internal/measurement/zzgn$zzh$zza;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzgn$zzh$zza;

    move-result-object v10

    .line 3480
    invoke-virtual {v10, v9}, Lcom/google/android/gms/internal/measurement/zzgn$zzh$zza;->zzb(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzgn$zzh$zza;

    move-result-object v10

    .line 3481
    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/zzlc$zzb;->zzai()Lcom/google/android/gms/internal/measurement/zzml;

    move-result-object v10

    check-cast v10, Lcom/google/android/gms/internal/measurement/zzlc;

    check-cast v10, Lcom/google/android/gms/internal/measurement/zzgn$zzh;

    .line 3482
    invoke-virtual {v8, v10}, Lcom/google/android/gms/internal/measurement/zzgn$zzf$zza;->zza(Lcom/google/android/gms/internal/measurement/zzgn$zzh;)Lcom/google/android/gms/internal/measurement/zzgn$zzf$zza;

    goto :goto_2b

    :cond_4e
    const/4 v9, 0x0

    .line 3483
    :goto_2b
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzgn$zzh;->zze()Lcom/google/android/gms/internal/measurement/zzgn$zzh$zza;

    move-result-object v10

    const-string v12, "_tr"

    .line 3484
    invoke-virtual {v10, v12}, Lcom/google/android/gms/internal/measurement/zzgn$zzh$zza;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzgn$zzh$zza;

    move-result-object v10

    const-wide/16 v12, 0x1

    .line 3485
    invoke-virtual {v10, v12, v13}, Lcom/google/android/gms/internal/measurement/zzgn$zzh$zza;->zza(J)Lcom/google/android/gms/internal/measurement/zzgn$zzh$zza;

    move-result-object v10

    .line 3486
    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/zzlc$zzb;->zzai()Lcom/google/android/gms/internal/measurement/zzml;

    move-result-object v10

    check-cast v10, Lcom/google/android/gms/internal/measurement/zzlc;

    check-cast v10, Lcom/google/android/gms/internal/measurement/zzgn$zzh;

    .line 3487
    invoke-virtual {v8, v10}, Lcom/google/android/gms/internal/measurement/zzgn$zzf$zza;->zza(Lcom/google/android/gms/internal/measurement/zzgn$zzh;)Lcom/google/android/gms/internal/measurement/zzgn$zzf$zza;

    .line 3489
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzp()Lcom/google/android/gms/measurement/internal/zzol;

    move-result-object v10

    iget-object v12, v4, Lcom/google/android/gms/measurement/internal/zznv$zza;->zza:Lcom/google/android/gms/internal/measurement/zzgn$zzk;

    .line 3490
    invoke-virtual {v12}, Lcom/google/android/gms/internal/measurement/zzgn$zzk;->zzz()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12, v5, v8, v9}, Lcom/google/android/gms/measurement/internal/zzol;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/zzgn$zzk$zza;Lcom/google/android/gms/internal/measurement/zzgn$zzf$zza;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zznk;

    move-result-object v9

    if-eqz v9, :cond_4f

    .line 3492
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzj()Lcom/google/android/gms/measurement/internal/zzgi;

    move-result-object v10

    .line 3493
    invoke-virtual {v10}, Lcom/google/android/gms/measurement/internal/zzgi;->zzp()Lcom/google/android/gms/measurement/internal/zzgk;

    move-result-object v10

    const-string v12, "Generated trigger URI. appId, uri"

    iget-object v13, v4, Lcom/google/android/gms/measurement/internal/zznv$zza;->zza:Lcom/google/android/gms/internal/measurement/zzgn$zzk;

    .line 3494
    invoke-virtual {v13}, Lcom/google/android/gms/internal/measurement/zzgn$zzk;->zzz()Ljava/lang/String;

    move-result-object v13

    iget-object v14, v9, Lcom/google/android/gms/measurement/internal/zznk;->zza:Ljava/lang/String;

    .line 3495
    invoke-virtual {v10, v12, v13, v14}, Lcom/google/android/gms/measurement/internal/zzgk;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 3496
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzf()Lcom/google/android/gms/measurement/internal/zzam;

    move-result-object v10

    iget-object v12, v4, Lcom/google/android/gms/measurement/internal/zznv$zza;->zza:Lcom/google/android/gms/internal/measurement/zzgn$zzk;

    invoke-virtual {v12}, Lcom/google/android/gms/internal/measurement/zzgn$zzk;->zzz()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12, v9}, Lcom/google/android/gms/measurement/internal/zzam;->zza(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zznk;)Z

    .line 3497
    iget-object v9, v1, Lcom/google/android/gms/measurement/internal/zznv;->zzr:Ljava/util/Set;

    iget-object v10, v4, Lcom/google/android/gms/measurement/internal/zznv$zza;->zza:Lcom/google/android/gms/internal/measurement/zzgn$zzk;

    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/zzgn$zzk;->zzz()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 3498
    :cond_4f
    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzlc$zzb;->zzai()Lcom/google/android/gms/internal/measurement/zzml;

    move-result-object v8

    check-cast v8, Lcom/google/android/gms/internal/measurement/zzlc;

    check-cast v8, Lcom/google/android/gms/internal/measurement/zzgn$zzf;

    invoke-virtual {v5, v7, v8}, Lcom/google/android/gms/internal/measurement/zzgn$zzk$zza;->zza(ILcom/google/android/gms/internal/measurement/zzgn$zzf;)Lcom/google/android/gms/internal/measurement/zzgn$zzk$zza;

    :cond_50
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_2a

    .line 3500
    :cond_51
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzpd;->zza()Z

    move-result v7

    if-eqz v7, :cond_52

    .line 3501
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zze()Lcom/google/android/gms/measurement/internal/zzah;

    move-result-object v7

    sget-object v8, Lcom/google/android/gms/measurement/internal/zzbj;->zzdc:Lcom/google/android/gms/measurement/internal/zzfz;

    invoke-virtual {v7, v8}, Lcom/google/android/gms/measurement/internal/zzah;->zza(Lcom/google/android/gms/measurement/internal/zzfz;)Z

    move-result v7

    if-eqz v7, :cond_52

    .line 3503
    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzgn$zzk$zza;->zzi()Lcom/google/android/gms/internal/measurement/zzgn$zzk$zza;

    move-result-object v7

    .line 3504
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzc()Lcom/google/android/gms/measurement/internal/zzv;

    move-result-object v8

    .line 3505
    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzgn$zzk$zza;->zzt()Ljava/lang/String;

    move-result-object v9

    .line 3506
    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzgn$zzk$zza;->zzaa()Ljava/util/List;

    move-result-object v10

    .line 3507
    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzgn$zzk$zza;->zzab()Ljava/util/List;

    move-result-object v11

    .line 3508
    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzgn$zzk$zza;->zzf()J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    .line 3509
    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzgn$zzk$zza;->zze()J

    move-result-wide v13

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    .line 3510
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzjc;->zzj()Z

    move-result v6

    const/4 v14, 0x1

    xor-int/2addr v6, v14

    move v14, v6

    .line 3511
    invoke-virtual/range {v8 .. v14}, Lcom/google/android/gms/measurement/internal/zzv;->zza(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/Long;Ljava/lang/Long;Z)Ljava/util/List;

    move-result-object v6

    .line 3512
    invoke-virtual {v7, v6}, Lcom/google/android/gms/internal/measurement/zzgn$zzk$zza;->zza(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/measurement/zzgn$zzk$zza;

    goto :goto_2c

    .line 3514
    :cond_52
    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzgn$zzk$zza;->zzi()Lcom/google/android/gms/internal/measurement/zzgn$zzk$zza;

    move-result-object v6

    .line 3515
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzc()Lcom/google/android/gms/measurement/internal/zzv;

    move-result-object v7

    .line 3516
    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzgn$zzk$zza;->zzt()Ljava/lang/String;

    move-result-object v8

    .line 3517
    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzgn$zzk$zza;->zzaa()Ljava/util/List;

    move-result-object v9

    .line 3518
    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzgn$zzk$zza;->zzab()Ljava/util/List;

    move-result-object v10

    .line 3519
    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzgn$zzk$zza;->zzf()J

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    .line 3520
    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzgn$zzk$zza;->zze()J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    .line 3521
    invoke-virtual/range {v7 .. v12}, Lcom/google/android/gms/measurement/internal/zzv;->zza(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/Long;Ljava/lang/Long;)Ljava/util/List;

    move-result-object v7

    .line 3522
    invoke-virtual {v6, v7}, Lcom/google/android/gms/internal/measurement/zzgn$zzk$zza;->zza(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/measurement/zzgn$zzk$zza;

    .line 3523
    :goto_2c
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zze()Lcom/google/android/gms/measurement/internal/zzah;

    move-result-object v6

    iget-object v7, v4, Lcom/google/android/gms/measurement/internal/zznv$zza;->zza:Lcom/google/android/gms/internal/measurement/zzgn$zzk;

    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzgn$zzk;->zzz()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/google/android/gms/measurement/internal/zzah;->zzk(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6e

    .line 3525
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 3526
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 3527
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzq()Lcom/google/android/gms/measurement/internal/zzop;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzop;->zzv()Ljava/security/SecureRandom;

    move-result-object v8

    const/4 v9, 0x0

    .line 3528
    :goto_2d
    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzgn$zzk$zza;->zzc()I

    move-result v10

    if-ge v9, v10, :cond_6b

    .line 3529
    invoke-virtual {v5, v9}, Lcom/google/android/gms/internal/measurement/zzgn$zzk$zza;->zza(I)Lcom/google/android/gms/internal/measurement/zzgn$zzf;

    move-result-object v10

    .line 3530
    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/zzlc;->zzcd()Lcom/google/android/gms/internal/measurement/zzlc$zzb;

    move-result-object v10

    .line 3531
    move-object v11, v10

    check-cast v11, Lcom/google/android/gms/internal/measurement/zzlc$zzb;

    check-cast v10, Lcom/google/android/gms/internal/measurement/zzgn$zzf$zza;

    .line 3532
    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/zzgn$zzf$zza;->zze()Ljava/lang/String;

    move-result-object v11

    const-string v12, "_ep"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_2

    const-string v12, "_sr"

    if-eqz v11, :cond_57

    .line 3534
    :try_start_20
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzp()Lcom/google/android/gms/measurement/internal/zzol;

    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/zzlc$zzb;->zzai()Lcom/google/android/gms/internal/measurement/zzml;

    move-result-object v11

    check-cast v11, Lcom/google/android/gms/internal/measurement/zzlc;

    check-cast v11, Lcom/google/android/gms/internal/measurement/zzgn$zzf;

    const-string v13, "_en"

    invoke-static {v11, v13}, Lcom/google/android/gms/measurement/internal/zzol;->zzb(Lcom/google/android/gms/internal/measurement/zzgn$zzf;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 3535
    invoke-interface {v6, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/google/android/gms/measurement/internal/zzbd;

    if-nez v13, :cond_53

    .line 3538
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzf()Lcom/google/android/gms/measurement/internal/zzam;

    move-result-object v13

    iget-object v14, v4, Lcom/google/android/gms/measurement/internal/zznv$zza;->zza:Lcom/google/android/gms/internal/measurement/zzgn$zzk;

    .line 3539
    invoke-virtual {v14}, Lcom/google/android/gms/internal/measurement/zzgn$zzk;->zzz()Ljava/lang/String;

    move-result-object v14

    invoke-static {v11}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    .line 3540
    invoke-virtual {v13, v14, v15}, Lcom/google/android/gms/measurement/internal/zzam;->zzd(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzbd;

    move-result-object v13

    if-eqz v13, :cond_53

    .line 3542
    invoke-interface {v6, v11, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_53
    if-eqz v13, :cond_56

    .line 3544
    iget-object v11, v13, Lcom/google/android/gms/measurement/internal/zzbd;->zzi:Ljava/lang/Long;

    if-nez v11, :cond_56

    .line 3545
    iget-object v11, v13, Lcom/google/android/gms/measurement/internal/zzbd;->zzj:Ljava/lang/Long;

    if-eqz v11, :cond_54

    iget-object v11, v13, Lcom/google/android/gms/measurement/internal/zzbd;->zzj:Ljava/lang/Long;

    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    const-wide/16 v17, 0x1

    cmp-long v11, v14, v17

    if-lez v11, :cond_54

    .line 3546
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzp()Lcom/google/android/gms/measurement/internal/zzol;

    iget-object v11, v13, Lcom/google/android/gms/measurement/internal/zzbd;->zzj:Ljava/lang/Long;

    .line 3547
    invoke-static {v10, v12, v11}, Lcom/google/android/gms/measurement/internal/zzol;->zza(Lcom/google/android/gms/internal/measurement/zzgn$zzf$zza;Ljava/lang/String;Ljava/lang/Object;)V

    .line 3548
    :cond_54
    iget-object v11, v13, Lcom/google/android/gms/measurement/internal/zzbd;->zzk:Ljava/lang/Boolean;

    if-eqz v11, :cond_55

    iget-object v11, v13, Lcom/google/android/gms/measurement/internal/zzbd;->zzk:Ljava/lang/Boolean;

    .line 3549
    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    if-eqz v11, :cond_55

    .line 3550
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzp()Lcom/google/android/gms/measurement/internal/zzol;

    const-string v11, "_efs"

    const-wide/16 v12, 0x1

    .line 3551
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-static {v10, v11, v14}, Lcom/google/android/gms/measurement/internal/zzol;->zza(Lcom/google/android/gms/internal/measurement/zzgn$zzf$zza;Ljava/lang/String;Ljava/lang/Object;)V

    .line 3552
    :cond_55
    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/zzlc$zzb;->zzai()Lcom/google/android/gms/internal/measurement/zzml;

    move-result-object v11

    check-cast v11, Lcom/google/android/gms/internal/measurement/zzlc;

    check-cast v11, Lcom/google/android/gms/internal/measurement/zzgn$zzf;

    invoke-interface {v7, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3553
    :cond_56
    invoke-virtual {v5, v9, v10}, Lcom/google/android/gms/internal/measurement/zzgn$zzk$zza;->zza(ILcom/google/android/gms/internal/measurement/zzgn$zzf$zza;)Lcom/google/android/gms/internal/measurement/zzgn$zzk$zza;

    :goto_2e
    move-object v15, v4

    move-object v1, v5

    move-object/from16 p3, v8

    move v2, v9

    const-wide/16 v8, 0x1

    goto/16 :goto_37

    .line 3556
    :cond_57
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzi()Lcom/google/android/gms/measurement/internal/zzhg;

    move-result-object v11

    iget-object v13, v4, Lcom/google/android/gms/measurement/internal/zznv$zza;->zza:Lcom/google/android/gms/internal/measurement/zzgn$zzk;

    .line 3557
    invoke-virtual {v13}, Lcom/google/android/gms/internal/measurement/zzgn$zzk;->zzz()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Lcom/google/android/gms/measurement/internal/zzhg;->zza(Ljava/lang/String;)J

    move-result-wide v13

    .line 3558
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzq()Lcom/google/android/gms/measurement/internal/zzop;

    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/zzgn$zzf$zza;->zzc()J

    move-result-wide v2

    invoke-static {v2, v3, v13, v14}, Lcom/google/android/gms/measurement/internal/zzop;->zza(JJ)J

    move-result-wide v2

    .line 3560
    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/zzlc$zzb;->zzai()Lcom/google/android/gms/internal/measurement/zzml;

    move-result-object v11

    check-cast v11, Lcom/google/android/gms/internal/measurement/zzlc;

    check-cast v11, Lcom/google/android/gms/internal/measurement/zzgn$zzf;

    const-string v15, "_dbg"

    const-wide/16 v17, 0x1

    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 3561
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_5d

    if-nez v1, :cond_58

    goto :goto_30

    .line 3563
    :cond_58
    invoke-virtual {v11}, Lcom/google/android/gms/internal/measurement/zzgn$zzf;->zzh()Ljava/util/List;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_2f
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_5d

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/google/android/gms/internal/measurement/zzgn$zzh;

    move-object/from16 p3, v11

    .line 3564
    invoke-virtual/range {v17 .. v17}, Lcom/google/android/gms/internal/measurement/zzgn$zzh;->zzg()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v15, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_5c

    .line 3565
    instance-of v11, v1, Ljava/lang/Long;

    if-eqz v11, :cond_59

    invoke-virtual/range {v17 .. v17}, Lcom/google/android/gms/internal/measurement/zzgn$zzh;->zzd()J

    move-result-wide v20

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v1, v11}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_5b

    :cond_59
    instance-of v11, v1, Ljava/lang/String;

    if-eqz v11, :cond_5a

    .line 3566
    invoke-virtual/range {v17 .. v17}, Lcom/google/android/gms/internal/measurement/zzgn$zzh;->zzh()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1, v11}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_5b

    :cond_5a
    instance-of v11, v1, Ljava/lang/Double;

    if-eqz v11, :cond_5d

    .line 3567
    invoke-virtual/range {v17 .. v17}, Lcom/google/android/gms/internal/measurement/zzgn$zzh;->zza()D

    move-result-wide v20

    invoke-static/range {v20 .. v21}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v11

    invoke-virtual {v1, v11}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5d

    :cond_5b
    const/4 v1, 0x1

    goto :goto_31

    :cond_5c
    move-object/from16 v11, p3

    goto :goto_2f

    .line 3573
    :cond_5d
    :goto_30
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzi()Lcom/google/android/gms/measurement/internal/zzhg;

    move-result-object v1

    iget-object v11, v4, Lcom/google/android/gms/measurement/internal/zznv$zza;->zza:Lcom/google/android/gms/internal/measurement/zzgn$zzk;

    .line 3574
    invoke-virtual {v11}, Lcom/google/android/gms/internal/measurement/zzgn$zzk;->zzz()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/zzgn$zzf$zza;->zze()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v1, v11, v15}, Lcom/google/android/gms/measurement/internal/zzhg;->zzb(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    :goto_31
    if-gtz v1, :cond_5e

    .line 3576
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzj()Lcom/google/android/gms/measurement/internal/zzgi;

    move-result-object v2

    .line 3577
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzgi;->zzu()Lcom/google/android/gms/measurement/internal/zzgk;

    move-result-object v2

    const-string v3, "Sample rate must be positive. event, rate"

    .line 3578
    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/zzgn$zzf$zza;->zze()Ljava/lang/String;

    move-result-object v11

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v3, v11, v1}, Lcom/google/android/gms/measurement/internal/zzgk;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 3579
    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/zzlc$zzb;->zzai()Lcom/google/android/gms/internal/measurement/zzml;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/measurement/zzlc;

    check-cast v1, Lcom/google/android/gms/internal/measurement/zzgn$zzf;

    invoke-interface {v7, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3580
    invoke-virtual {v5, v9, v10}, Lcom/google/android/gms/internal/measurement/zzgn$zzk$zza;->zza(ILcom/google/android/gms/internal/measurement/zzgn$zzf$zza;)Lcom/google/android/gms/internal/measurement/zzgn$zzk$zza;

    goto/16 :goto_2e

    .line 3582
    :cond_5e
    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/zzgn$zzf$zza;->zze()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v6, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/google/android/gms/measurement/internal/zzbd;

    if-nez v11, :cond_5f

    .line 3585
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzf()Lcom/google/android/gms/measurement/internal/zzam;

    move-result-object v11

    iget-object v15, v4, Lcom/google/android/gms/measurement/internal/zznv$zza;->zza:Lcom/google/android/gms/internal/measurement/zzgn$zzk;

    invoke-virtual {v15}, Lcom/google/android/gms/internal/measurement/zzgn$zzk;->zzz()Ljava/lang/String;

    move-result-object v15

    move-wide/from16 v20, v13

    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/zzgn$zzf$zza;->zze()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v15, v13}, Lcom/google/android/gms/measurement/internal/zzam;->zzd(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzbd;

    move-result-object v11

    if-nez v11, :cond_60

    .line 3587
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzj()Lcom/google/android/gms/measurement/internal/zzgi;

    move-result-object v11

    .line 3588
    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/zzgi;->zzu()Lcom/google/android/gms/measurement/internal/zzgk;

    move-result-object v11

    const-string v13, "Event being bundled has no eventAggregate. appId, eventName"

    iget-object v14, v4, Lcom/google/android/gms/measurement/internal/zznv$zza;->zza:Lcom/google/android/gms/internal/measurement/zzgn$zzk;

    .line 3589
    invoke-virtual {v14}, Lcom/google/android/gms/internal/measurement/zzgn$zzk;->zzz()Ljava/lang/String;

    move-result-object v14

    .line 3590
    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/zzgn$zzf$zza;->zze()Ljava/lang/String;

    move-result-object v15

    .line 3591
    invoke-virtual {v11, v13, v14, v15}, Lcom/google/android/gms/measurement/internal/zzgk;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 3592
    new-instance v11, Lcom/google/android/gms/measurement/internal/zzbd;

    iget-object v13, v4, Lcom/google/android/gms/measurement/internal/zznv$zza;->zza:Lcom/google/android/gms/internal/measurement/zzgn$zzk;

    .line 3593
    invoke-virtual {v13}, Lcom/google/android/gms/internal/measurement/zzgn$zzk;->zzz()Ljava/lang/String;

    move-result-object v25

    .line 3594
    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/zzgn$zzf$zza;->zze()Ljava/lang/String;

    move-result-object v26

    .line 3595
    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/zzgn$zzf$zza;->zzc()J

    move-result-wide v33

    const/16 v39, 0x0

    const/16 v40, 0x0

    const-wide/16 v27, 0x1

    const-wide/16 v29, 0x1

    const-wide/16 v31, 0x1

    const-wide/16 v35, 0x0

    const/16 v37, 0x0

    const/16 v38, 0x0

    move-object/from16 v24, v11

    invoke-direct/range {v24 .. v40}, Lcom/google/android/gms/measurement/internal/zzbd;-><init>(Ljava/lang/String;Ljava/lang/String;JJJJJLjava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;)V

    goto :goto_32

    :cond_5f
    move-wide/from16 v20, v13

    .line 3597
    :cond_60
    :goto_32
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzp()Lcom/google/android/gms/measurement/internal/zzol;

    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/zzlc$zzb;->zzai()Lcom/google/android/gms/internal/measurement/zzml;

    move-result-object v13

    check-cast v13, Lcom/google/android/gms/internal/measurement/zzlc;

    check-cast v13, Lcom/google/android/gms/internal/measurement/zzgn$zzf;

    const-string v14, "_eid"

    invoke-static {v13, v14}, Lcom/google/android/gms/measurement/internal/zzol;->zzb(Lcom/google/android/gms/internal/measurement/zzgn$zzf;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Long;

    if-eqz v13, :cond_61

    const/4 v14, 0x1

    goto :goto_33

    :cond_61
    const/4 v14, 0x0

    .line 3598
    :goto_33
    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    const/4 v15, 0x1

    if-ne v1, v15, :cond_64

    .line 3600
    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/zzlc$zzb;->zzai()Lcom/google/android/gms/internal/measurement/zzml;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/measurement/zzlc;

    check-cast v1, Lcom/google/android/gms/internal/measurement/zzgn$zzf;

    invoke-interface {v7, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3601
    invoke-virtual {v14}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_63

    iget-object v1, v11, Lcom/google/android/gms/measurement/internal/zzbd;->zzi:Ljava/lang/Long;

    if-nez v1, :cond_62

    iget-object v1, v11, Lcom/google/android/gms/measurement/internal/zzbd;->zzj:Ljava/lang/Long;

    if-nez v1, :cond_62

    iget-object v1, v11, Lcom/google/android/gms/measurement/internal/zzbd;->zzk:Ljava/lang/Boolean;

    if-eqz v1, :cond_63

    :cond_62
    const/4 v1, 0x0

    .line 3602
    invoke-virtual {v11, v1, v1, v1}, Lcom/google/android/gms/measurement/internal/zzbd;->zza(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;)Lcom/google/android/gms/measurement/internal/zzbd;

    move-result-object v2

    .line 3603
    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/zzgn$zzf$zza;->zze()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v6, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3604
    :cond_63
    invoke-virtual {v5, v9, v10}, Lcom/google/android/gms/internal/measurement/zzgn$zzk$zza;->zza(ILcom/google/android/gms/internal/measurement/zzgn$zzf$zza;)Lcom/google/android/gms/internal/measurement/zzgn$zzk$zza;

    goto/16 :goto_2e

    .line 3606
    :cond_64
    invoke-virtual {v8, v1}, Ljava/security/SecureRandom;->nextInt(I)I

    move-result v15

    if-nez v15, :cond_66

    .line 3607
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzp()Lcom/google/android/gms/measurement/internal/zzol;

    move-object v15, v4

    move-object/from16 v24, v5

    int-to-long v4, v1

    .line 3608
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v10, v12, v1}, Lcom/google/android/gms/measurement/internal/zzol;->zza(Lcom/google/android/gms/internal/measurement/zzgn$zzf$zza;Ljava/lang/String;Ljava/lang/Object;)V

    .line 3609
    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/zzlc$zzb;->zzai()Lcom/google/android/gms/internal/measurement/zzml;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/measurement/zzlc;

    check-cast v1, Lcom/google/android/gms/internal/measurement/zzgn$zzf;

    invoke-interface {v7, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3610
    invoke-virtual {v14}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_65

    .line 3612
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v4, 0x0

    invoke-virtual {v11, v4, v1, v4}, Lcom/google/android/gms/measurement/internal/zzbd;->zza(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;)Lcom/google/android/gms/measurement/internal/zzbd;

    move-result-object v11

    .line 3614
    :cond_65
    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/zzgn$zzf$zza;->zze()Ljava/lang/String;

    move-result-object v1

    .line 3615
    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/zzgn$zzf$zza;->zzc()J

    move-result-wide v4

    invoke-virtual {v11, v4, v5, v2, v3}, Lcom/google/android/gms/measurement/internal/zzbd;->zza(JJ)Lcom/google/android/gms/measurement/internal/zzbd;

    move-result-object v2

    .line 3616
    invoke-interface {v6, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 p3, v8

    move v2, v9

    move-object/from16 v1, v24

    const-wide/16 v8, 0x1

    goto/16 :goto_36

    :cond_66
    move-object v15, v4

    move-object/from16 v24, v5

    .line 3617
    iget-object v4, v11, Lcom/google/android/gms/measurement/internal/zzbd;->zzh:Ljava/lang/Long;

    if-eqz v4, :cond_67

    .line 3618
    iget-object v4, v11, Lcom/google/android/gms/measurement/internal/zzbd;->zzh:Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    move-object/from16 p3, v8

    move/from16 v17, v9

    goto :goto_34

    .line 3620
    :cond_67
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzq()Lcom/google/android/gms/measurement/internal/zzop;

    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/zzgn$zzf$zza;->zzb()J

    move-result-wide v4

    move-object/from16 p3, v8

    move/from16 v17, v9

    move-wide/from16 v8, v20

    invoke-static {v4, v5, v8, v9}, Lcom/google/android/gms/measurement/internal/zzop;->zza(JJ)J

    move-result-wide v4

    :goto_34
    cmp-long v4, v4, v2

    if-eqz v4, :cond_69

    .line 3622
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzp()Lcom/google/android/gms/measurement/internal/zzol;

    const-string v4, "_efs"

    const-wide/16 v8, 0x1

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-static {v10, v4, v5}, Lcom/google/android/gms/measurement/internal/zzol;->zza(Lcom/google/android/gms/internal/measurement/zzgn$zzf$zza;Ljava/lang/String;Ljava/lang/Object;)V

    .line 3623
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzp()Lcom/google/android/gms/measurement/internal/zzol;

    int-to-long v4, v1

    .line 3624
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v10, v12, v1}, Lcom/google/android/gms/measurement/internal/zzol;->zza(Lcom/google/android/gms/internal/measurement/zzgn$zzf$zza;Ljava/lang/String;Ljava/lang/Object;)V

    .line 3625
    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/zzlc$zzb;->zzai()Lcom/google/android/gms/internal/measurement/zzml;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/measurement/zzlc;

    check-cast v1, Lcom/google/android/gms/internal/measurement/zzgn$zzf;

    invoke-interface {v7, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3626
    invoke-virtual {v14}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_68

    .line 3628
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    const/4 v4, 0x0

    invoke-virtual {v11, v4, v1, v5}, Lcom/google/android/gms/measurement/internal/zzbd;->zza(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;)Lcom/google/android/gms/measurement/internal/zzbd;

    move-result-object v11

    .line 3630
    :cond_68
    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/zzgn$zzf$zza;->zze()Ljava/lang/String;

    move-result-object v1

    .line 3631
    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/zzgn$zzf$zza;->zzc()J

    move-result-wide v4

    invoke-virtual {v11, v4, v5, v2, v3}, Lcom/google/android/gms/measurement/internal/zzbd;->zza(JJ)Lcom/google/android/gms/measurement/internal/zzbd;

    move-result-object v2

    .line 3632
    invoke-interface {v6, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_35

    :cond_69
    const-wide/16 v8, 0x1

    .line 3633
    invoke-virtual {v14}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_6a

    .line 3635
    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/zzgn$zzf$zza;->zze()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v11, v13, v2, v2}, Lcom/google/android/gms/measurement/internal/zzbd;->zza(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;)Lcom/google/android/gms/measurement/internal/zzbd;

    move-result-object v3

    .line 3636
    invoke-interface {v6, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6a
    :goto_35
    move/from16 v2, v17

    move-object/from16 v1, v24

    .line 3637
    :goto_36
    invoke-virtual {v1, v2, v10}, Lcom/google/android/gms/internal/measurement/zzgn$zzk$zza;->zza(ILcom/google/android/gms/internal/measurement/zzgn$zzf$zza;)Lcom/google/android/gms/internal/measurement/zzgn$zzk$zza;

    :goto_37
    add-int/lit8 v2, v2, 0x1

    move-object/from16 v8, p3

    move-object v5, v1

    move v9, v2

    move-object v4, v15

    const-wide/16 v2, 0x0

    move-object/from16 v1, p0

    goto/16 :goto_2d

    :cond_6b
    move-object v15, v4

    move-object v1, v5

    .line 3639
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzgn$zzk$zza;->zzc()I

    move-result v3

    if-ge v2, v3, :cond_6c

    .line 3640
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzgn$zzk$zza;->zzl()Lcom/google/android/gms/internal/measurement/zzgn$zzk$zza;

    move-result-object v2

    invoke-virtual {v2, v7}, Lcom/google/android/gms/internal/measurement/zzgn$zzk$zza;->zzb(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/measurement/zzgn$zzk$zza;

    .line 3641
    :cond_6c
    invoke-interface {v6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_38
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 3642
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzf()Lcom/google/android/gms/measurement/internal/zzam;

    move-result-object v4

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/measurement/internal/zzbd;

    invoke-virtual {v4, v3}, Lcom/google/android/gms/measurement/internal/zzam;->zza(Lcom/google/android/gms/measurement/internal/zzbd;)V

    goto :goto_38

    :cond_6d
    move-object v2, v15

    goto :goto_39

    :cond_6e
    move-object v1, v5

    move-object v2, v4

    .line 3644
    :goto_39
    iget-object v3, v2, Lcom/google/android/gms/measurement/internal/zznv$zza;->zza:Lcom/google/android/gms/internal/measurement/zzgn$zzk;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzgn$zzk;->zzz()Ljava/lang/String;

    move-result-object v3

    .line 3645
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzf()Lcom/google/android/gms/measurement/internal/zzam;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/google/android/gms/measurement/internal/zzam;->zze(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzh;

    move-result-object v4

    if-nez v4, :cond_6f

    .line 3647
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzj()Lcom/google/android/gms/measurement/internal/zzgi;

    move-result-object v4

    .line 3648
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzgi;->zzg()Lcom/google/android/gms/measurement/internal/zzgk;

    move-result-object v4

    const-string v5, "Bundling raw events w/o app info. appId"

    iget-object v6, v2, Lcom/google/android/gms/measurement/internal/zznv$zza;->zza:Lcom/google/android/gms/internal/measurement/zzgn$zzk;

    .line 3649
    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/zzgn$zzk;->zzz()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/google/android/gms/measurement/internal/zzgi;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    .line 3650
    invoke-virtual {v4, v5, v6}, Lcom/google/android/gms/measurement/internal/zzgk;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_3f

    .line 3651
    :cond_6f
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzgn$zzk$zza;->zzc()I

    move-result v5

    if-lez v5, :cond_75

    .line 3652
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzh;->zzs()J

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmp-long v9, v5, v7

    if-eqz v9, :cond_70

    .line 3654
    invoke-virtual {v1, v5, v6}, Lcom/google/android/gms/internal/measurement/zzgn$zzk$zza;->zzg(J)Lcom/google/android/gms/internal/measurement/zzgn$zzk$zza;

    goto :goto_3a

    .line 3655
    :cond_70
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzgn$zzk$zza;->zzo()Lcom/google/android/gms/internal/measurement/zzgn$zzk$zza;

    .line 3656
    :goto_3a
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzh;->zzu()J

    move-result-wide v7

    const-wide/16 v9, 0x0

    cmp-long v11, v7, v9

    if-nez v11, :cond_71

    goto :goto_3b

    :cond_71
    move-wide v5, v7

    :goto_3b
    cmp-long v7, v5, v9

    if-eqz v7, :cond_72

    .line 3660
    invoke-virtual {v1, v5, v6}, Lcom/google/android/gms/internal/measurement/zzgn$zzk$zza;->zzh(J)Lcom/google/android/gms/internal/measurement/zzgn$zzk$zza;

    goto :goto_3c

    .line 3661
    :cond_72
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzgn$zzk$zza;->zzp()Lcom/google/android/gms/internal/measurement/zzgn$zzk$zza;

    .line 3662
    :goto_3c
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzrw;->zza()Z

    move-result v5

    if-eqz v5, :cond_73

    .line 3663
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zze()Lcom/google/android/gms/measurement/internal/zzah;

    move-result-object v5

    sget-object v6, Lcom/google/android/gms/measurement/internal/zzbj;->zzbw:Lcom/google/android/gms/measurement/internal/zzfz;

    invoke-virtual {v5, v6}, Lcom/google/android/gms/measurement/internal/zzah;->zza(Lcom/google/android/gms/measurement/internal/zzfz;)Z

    move-result v5

    if-eqz v5, :cond_73

    .line 3664
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzq()Lcom/google/android/gms/measurement/internal/zzop;

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzh;->zzac()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/google/android/gms/measurement/internal/zzop;->zzf(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_73

    .line 3665
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzgn$zzk$zza;->zzc()I

    move-result v5

    int-to-long v5, v5

    invoke-virtual {v4, v5, v6}, Lcom/google/android/gms/measurement/internal/zzh;->zza(J)V

    .line 3666
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzh;->zzr()J

    move-result-wide v5

    long-to-int v5, v5

    invoke-virtual {v1, v5}, Lcom/google/android/gms/internal/measurement/zzgn$zzk$zza;->zzg(I)Lcom/google/android/gms/internal/measurement/zzgn$zzk$zza;

    goto :goto_3d

    .line 3667
    :cond_73
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzh;->zzap()V

    .line 3668
    :goto_3d
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzh;->zzt()J

    move-result-wide v5

    long-to-int v5, v5

    invoke-virtual {v1, v5}, Lcom/google/android/gms/internal/measurement/zzgn$zzk$zza;->zzf(I)Lcom/google/android/gms/internal/measurement/zzgn$zzk$zza;

    .line 3669
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzgn$zzk$zza;->zzf()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Lcom/google/android/gms/measurement/internal/zzh;->zzr(J)V

    .line 3670
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzgn$zzk$zza;->zze()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Lcom/google/android/gms/measurement/internal/zzh;->zzp(J)V

    .line 3671
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzh;->zzab()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_74

    .line 3673
    invoke-virtual {v1, v5}, Lcom/google/android/gms/internal/measurement/zzgn$zzk$zza;->zzn(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzgn$zzk$zza;

    goto :goto_3e

    .line 3674
    :cond_74
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzgn$zzk$zza;->zzm()Lcom/google/android/gms/internal/measurement/zzgn$zzk$zza;

    .line 3675
    :goto_3e
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzf()Lcom/google/android/gms/measurement/internal/zzam;

    move-result-object v5

    const/4 v6, 0x0

    .line 3676
    invoke-virtual {v5, v4, v6, v6}, Lcom/google/android/gms/measurement/internal/zzam;->zza(Lcom/google/android/gms/measurement/internal/zzh;ZZ)V

    .line 3677
    :cond_75
    :goto_3f
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzgn$zzk$zza;->zzc()I

    move-result v4

    if-lez v4, :cond_79

    .line 3679
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzi()Lcom/google/android/gms/measurement/internal/zzhg;

    move-result-object v4

    iget-object v5, v2, Lcom/google/android/gms/measurement/internal/zznv$zza;->zza:Lcom/google/android/gms/internal/measurement/zzgn$zzk;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzgn$zzk;->zzz()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/google/android/gms/measurement/internal/zzhg;->zzc(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzfx$zzd;

    move-result-object v4

    if-eqz v4, :cond_77

    .line 3680
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzfx$zzd;->zzs()Z

    move-result v5

    if-nez v5, :cond_76

    goto :goto_40

    .line 3687
    :cond_76
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzfx$zzd;->zzc()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Lcom/google/android/gms/internal/measurement/zzgn$zzk$zza;->zzb(J)Lcom/google/android/gms/internal/measurement/zzgn$zzk$zza;

    goto :goto_41

    .line 3681
    :cond_77
    :goto_40
    iget-object v4, v2, Lcom/google/android/gms/measurement/internal/zznv$zza;->zza:Lcom/google/android/gms/internal/measurement/zzgn$zzk;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzgn$zzk;->zzaj()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_78

    const-wide/16 v4, -0x1

    .line 3682
    invoke-virtual {v1, v4, v5}, Lcom/google/android/gms/internal/measurement/zzgn$zzk$zza;->zzb(J)Lcom/google/android/gms/internal/measurement/zzgn$zzk$zza;

    goto :goto_41

    .line 3683
    :cond_78
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzj()Lcom/google/android/gms/measurement/internal/zzgi;

    move-result-object v4

    .line 3684
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzgi;->zzu()Lcom/google/android/gms/measurement/internal/zzgk;

    move-result-object v4

    const-string v5, "Did not find measurement config or missing version info. appId"

    iget-object v6, v2, Lcom/google/android/gms/measurement/internal/zznv$zza;->zza:Lcom/google/android/gms/internal/measurement/zzgn$zzk;

    .line 3685
    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/zzgn$zzk;->zzz()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/google/android/gms/measurement/internal/zzgi;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    .line 3686
    invoke-virtual {v4, v5, v6}, Lcom/google/android/gms/measurement/internal/zzgk;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    .line 3688
    :goto_41
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzf()Lcom/google/android/gms/measurement/internal/zzam;

    move-result-object v4

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzlc$zzb;->zzai()Lcom/google/android/gms/internal/measurement/zzml;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/measurement/zzlc;

    check-cast v1, Lcom/google/android/gms/internal/measurement/zzgn$zzk;

    move/from16 v10, v16

    invoke-virtual {v4, v1, v10}, Lcom/google/android/gms/measurement/internal/zzam;->zza(Lcom/google/android/gms/internal/measurement/zzgn$zzk;Z)Z

    .line 3689
    :cond_79
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzf()Lcom/google/android/gms/measurement/internal/zzam;

    move-result-object v1

    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/zznv$zza;->zzb:Ljava/util/List;

    .line 3690
    invoke-static {v2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3691
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zziy;->zzt()V

    .line 3692
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zznr;->zzal()V

    .line 3693
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "rowid in ("

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v5, 0x0

    .line 3694
    :goto_42
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_7b

    if-eqz v5, :cond_7a

    .line 3696
    const-string v6, ","

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3697
    :cond_7a
    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    add-int/lit8 v5, v5, 0x1

    goto :goto_42

    .line 3699
    :cond_7b
    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3700
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzam;->e_()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v5

    .line 3701
    const-string v6, "raw_events"

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v4, v7}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    .line 3702
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    if-eq v4, v5, :cond_7c

    .line 3703
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zziy;->zzj()Lcom/google/android/gms/measurement/internal/zzgi;

    move-result-object v1

    .line 3704
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzgi;->zzg()Lcom/google/android/gms/measurement/internal/zzgk;

    move-result-object v1

    const-string v5, "Deleted fewer rows from raw events table than expected"

    .line 3705
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 3706
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 3707
    invoke-virtual {v1, v5, v4, v2}, Lcom/google/android/gms/measurement/internal/zzgk;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 3708
    :cond_7c
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzf()Lcom/google/android/gms/measurement/internal/zzam;

    move-result-object v1

    .line 3709
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzam;->e_()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_2

    .line 3710
    :try_start_21
    const-string v4, "delete from raw_events_metadata where app_id=? and metadata_fingerprint not in (select distinct metadata_fingerprint from raw_events where app_id=?)"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v3, v5, v6

    const/4 v6, 0x1

    aput-object v3, v5, v6

    invoke-virtual {v2, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_21
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_21 .. :try_end_21} :catch_5
    .catchall {:try_start_21 .. :try_end_21} :catchall_2

    goto :goto_43

    :catch_5
    move-exception v0

    move-object v2, v0

    .line 3713
    :try_start_22
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zziy;->zzj()Lcom/google/android/gms/measurement/internal/zzgi;

    move-result-object v1

    .line 3714
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzgi;->zzg()Lcom/google/android/gms/measurement/internal/zzgk;

    move-result-object v1

    const-string v4, "Failed to remove unused event metadata. appId"

    .line 3715
    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/zzgi;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v4, v3, v2}, Lcom/google/android/gms/measurement/internal/zzgk;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 3716
    :goto_43
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzf()Lcom/google/android/gms/measurement/internal/zzam;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzam;->zzw()V
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_2

    .line 3717
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzf()Lcom/google/android/gms/measurement/internal/zzam;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzam;->zzu()V

    const/4 v1, 0x1

    return v1

    .line 3719
    :cond_7d
    :goto_44
    :try_start_23
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzf()Lcom/google/android/gms/measurement/internal/zzam;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzam;->zzw()V
    :try_end_23
    .catchall {:try_start_23 .. :try_end_23} :catchall_2

    .line 3720
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzf()Lcom/google/android/gms/measurement/internal/zzam;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzam;->zzu()V

    const/4 v1, 0x0

    return v1

    :catchall_1
    move-exception v0

    move-object v1, v0

    :goto_45
    if-eqz v5, :cond_7e

    .line 3083
    :try_start_24
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 3084
    :cond_7e
    throw v1
    :try_end_24
    .catchall {:try_start_24 .. :try_end_24} :catchall_2

    :catchall_2
    move-exception v0

    move-object v1, v0

    .line 3722
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzf()Lcom/google/android/gms/measurement/internal/zzam;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzam;->zzu()V

    .line 3723
    throw v1
.end method

.method private final zzaa()V
    .locals 5

    .line 512
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzl()Lcom/google/android/gms/measurement/internal/zzhp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zziy;->zzt()V

    .line 513
    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zznv;->zzu:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zznv;->zzv:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zznv;->zzw:Z

    if-eqz v0, :cond_0

    goto :goto_1

    .line 521
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzj()Lcom/google/android/gms/measurement/internal/zzgi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgi;->zzp()Lcom/google/android/gms/measurement/internal/zzgk;

    move-result-object v0

    const-string v1, "Stopping uploading service(s)"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzgk;->zza(Ljava/lang/String;)V

    .line 522
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zznv;->zzq:Ljava/util/List;

    if-nez v0, :cond_1

    return-void

    .line 524
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    .line 525
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 527
    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zznv;->zzq:Ljava/util/List;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void

    .line 514
    :cond_3
    :goto_1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzj()Lcom/google/android/gms/measurement/internal/zzgi;

    move-result-object v0

    .line 515
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgi;->zzp()Lcom/google/android/gms/measurement/internal/zzgk;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/android/gms/measurement/internal/zznv;->zzu:Z

    .line 516
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iget-boolean v2, p0, Lcom/google/android/gms/measurement/internal/zznv;->zzv:Z

    .line 517
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iget-boolean v3, p0, Lcom/google/android/gms/measurement/internal/zznv;->zzw:Z

    .line 518
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 519
    const-string v4, "Not stopping services. fetch, network, upload"

    invoke-virtual {v0, v4, v1, v2, v3}, Lcom/google/android/gms/measurement/internal/zzgk;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method private final zzab()V
    .locals 4

    .line 1018
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzl()Lcom/google/android/gms/measurement/internal/zzhp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zziy;->zzt()V

    .line 1019
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zznv;->zzr:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1020
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzrl;->zza()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zze()Lcom/google/android/gms/measurement/internal/zzah;

    move-result-object v2

    sget-object v3, Lcom/google/android/gms/measurement/internal/zzbj;->zzcg:Lcom/google/android/gms/measurement/internal/zzfz;

    invoke-virtual {v2, v1, v3}, Lcom/google/android/gms/measurement/internal/zzah;->zze(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzfz;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1021
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzj()Lcom/google/android/gms/measurement/internal/zzgi;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzgi;->zzc()Lcom/google/android/gms/measurement/internal/zzgk;

    move-result-object v2

    const-string v3, "Notifying app that trigger URIs are available. App ID"

    invoke-virtual {v2, v3, v1}, Lcom/google/android/gms/measurement/internal/zzgk;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1022
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 1023
    const-string v3, "com.google.android.gms.measurement.TRIGGERS_AVAILABLE"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1024
    invoke-virtual {v2, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1026
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zznv;->zzm:Lcom/google/android/gms/measurement/internal/zzhw;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzhw;->zza()Landroid/content/Context;

    move-result-object v1

    .line 1027
    invoke-virtual {v1, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 1029
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zznv;->zzr:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    return-void
.end method

.method private final zzac()V
    .locals 21

    move-object/from16 v0, p0

    .line 1929
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzl()Lcom/google/android/gms/measurement/internal/zzhp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zziy;->zzt()V

    .line 1930
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzs()V

    .line 1931
    iget-wide v1, v0, Lcom/google/android/gms/measurement/internal/zznv;->zzp:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_1

    .line 1932
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzb()Lcom/google/android/gms/common/util/Clock;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/common/util/Clock;->elapsedRealtime()J

    move-result-wide v1

    .line 1933
    iget-wide v5, v0, Lcom/google/android/gms/measurement/internal/zznv;->zzp:J

    sub-long/2addr v1, v5

    .line 1934
    invoke-static {v1, v2}, Ljava/lang/Math;->abs(J)J

    move-result-wide v1

    const-wide/32 v5, 0x36ee80

    sub-long/2addr v5, v1

    cmp-long v1, v5, v3

    if-lez v1, :cond_0

    .line 1936
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzj()Lcom/google/android/gms/measurement/internal/zzgi;

    move-result-object v1

    .line 1937
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzgi;->zzp()Lcom/google/android/gms/measurement/internal/zzgk;

    move-result-object v1

    const-string v2, "Upload has been suspended. Will update scheduling later in approximately ms"

    .line 1938
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 1939
    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/measurement/internal/zzgk;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1940
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzy()Lcom/google/android/gms/measurement/internal/zzgs;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzgs;->zzb()V

    .line 1941
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzz()Lcom/google/android/gms/measurement/internal/zznm;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zznm;->zzu()V

    return-void

    .line 1943
    :cond_0
    iput-wide v3, v0, Lcom/google/android/gms/measurement/internal/zznv;->zzp:J

    .line 1944
    :cond_1
    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zznv;->zzm:Lcom/google/android/gms/measurement/internal/zzhw;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzhw;->zzaf()Z

    move-result v1

    if-eqz v1, :cond_11

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzad()Z

    move-result v1

    if-nez v1, :cond_2

    goto/16 :goto_5

    .line 1950
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzb()Lcom/google/android/gms/common/util/Clock;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v1

    .line 1951
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zze()Lcom/google/android/gms/measurement/internal/zzah;

    .line 1952
    sget-object v5, Lcom/google/android/gms/measurement/internal/zzbj;->zzab:Lcom/google/android/gms/measurement/internal/zzfz;

    const/4 v6, 0x0

    .line 1953
    invoke-virtual {v5, v6}, Lcom/google/android/gms/measurement/internal/zzfz;->zza(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 1954
    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    invoke-static {v3, v4, v7, v8}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v7

    .line 1957
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzf()Lcom/google/android/gms/measurement/internal/zzam;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzam;->zzz()Z

    move-result v5

    if-nez v5, :cond_4

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzf()Lcom/google/android/gms/measurement/internal/zzam;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzam;->zzy()Z

    move-result v5

    if-eqz v5, :cond_3

    goto :goto_0

    :cond_3
    const/4 v5, 0x0

    goto :goto_1

    :cond_4
    :goto_0
    const/4 v5, 0x1

    :goto_1
    if-eqz v5, :cond_6

    .line 1959
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zze()Lcom/google/android/gms/measurement/internal/zzah;

    move-result-object v10

    invoke-virtual {v10}, Lcom/google/android/gms/measurement/internal/zzah;->zzu()Ljava/lang/String;

    move-result-object v10

    .line 1960
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_5

    const-string v11, ".none."

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_5

    .line 1961
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zze()Lcom/google/android/gms/measurement/internal/zzah;

    .line 1962
    sget-object v10, Lcom/google/android/gms/measurement/internal/zzbj;->zzw:Lcom/google/android/gms/measurement/internal/zzfz;

    .line 1963
    invoke-virtual {v10, v6}, Lcom/google/android/gms/measurement/internal/zzfz;->zza(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    .line 1964
    check-cast v10, Ljava/lang/Long;

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    invoke-static {v3, v4, v10, v11}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v10

    goto :goto_2

    .line 1966
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zze()Lcom/google/android/gms/measurement/internal/zzah;

    .line 1967
    sget-object v10, Lcom/google/android/gms/measurement/internal/zzbj;->zzv:Lcom/google/android/gms/measurement/internal/zzfz;

    .line 1968
    invoke-virtual {v10, v6}, Lcom/google/android/gms/measurement/internal/zzfz;->zza(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    .line 1969
    check-cast v10, Ljava/lang/Long;

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    invoke-static {v3, v4, v10, v11}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v10

    goto :goto_2

    .line 1972
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zze()Lcom/google/android/gms/measurement/internal/zzah;

    .line 1973
    sget-object v10, Lcom/google/android/gms/measurement/internal/zzbj;->zzu:Lcom/google/android/gms/measurement/internal/zzfz;

    .line 1974
    invoke-virtual {v10, v6}, Lcom/google/android/gms/measurement/internal/zzfz;->zza(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    .line 1975
    check-cast v10, Ljava/lang/Long;

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    invoke-static {v3, v4, v10, v11}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v10

    .line 1978
    :goto_2
    iget-object v12, v0, Lcom/google/android/gms/measurement/internal/zznv;->zzj:Lcom/google/android/gms/measurement/internal/zzms;

    .line 1979
    iget-object v12, v12, Lcom/google/android/gms/measurement/internal/zzms;->zzd:Lcom/google/android/gms/measurement/internal/zzgz;

    invoke-virtual {v12}, Lcom/google/android/gms/measurement/internal/zzgz;->zza()J

    move-result-wide v12

    .line 1981
    iget-object v14, v0, Lcom/google/android/gms/measurement/internal/zznv;->zzj:Lcom/google/android/gms/measurement/internal/zzms;

    .line 1982
    iget-object v14, v14, Lcom/google/android/gms/measurement/internal/zzms;->zze:Lcom/google/android/gms/measurement/internal/zzgz;

    invoke-virtual {v14}, Lcom/google/android/gms/measurement/internal/zzgz;->zza()J

    move-result-wide v14

    .line 1983
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzf()Lcom/google/android/gms/measurement/internal/zzam;

    move-result-object v16

    move-wide/from16 v17, v10

    invoke-virtual/range {v16 .. v16}, Lcom/google/android/gms/measurement/internal/zzam;->c_()J

    move-result-wide v9

    .line 1984
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzf()Lcom/google/android/gms/measurement/internal/zzam;

    move-result-object v11

    move-wide/from16 v19, v7

    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/zzam;->d_()J

    move-result-wide v6

    .line 1985
    invoke-static {v9, v10, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    cmp-long v8, v6, v3

    if-nez v8, :cond_8

    :cond_7
    move-wide v10, v3

    goto/16 :goto_4

    :cond_8
    sub-long/2addr v6, v1

    .line 1988
    invoke-static {v6, v7}, Ljava/lang/Math;->abs(J)J

    move-result-wide v6

    sub-long v6, v1, v6

    sub-long/2addr v12, v1

    .line 1989
    invoke-static {v12, v13}, Ljava/lang/Math;->abs(J)J

    move-result-wide v8

    sub-long v8, v1, v8

    sub-long/2addr v14, v1

    .line 1990
    invoke-static {v14, v15}, Ljava/lang/Math;->abs(J)J

    move-result-wide v10

    sub-long/2addr v1, v10

    .line 1991
    invoke-static {v8, v9, v1, v2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v8

    add-long v10, v6, v19

    if-eqz v5, :cond_9

    cmp-long v5, v8, v3

    if-lez v5, :cond_9

    .line 1994
    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v10

    add-long v10, v10, v17

    .line 1995
    :cond_9
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzp()Lcom/google/android/gms/measurement/internal/zzol;

    move-result-object v5

    move-wide/from16 v12, v17

    invoke-virtual {v5, v8, v9, v12, v13}, Lcom/google/android/gms/measurement/internal/zzol;->zza(JJ)Z

    move-result v5

    if-nez v5, :cond_a

    add-long v10, v8, v12

    :cond_a
    cmp-long v5, v1, v3

    if-eqz v5, :cond_c

    cmp-long v5, v1, v6

    if-ltz v5, :cond_c

    const/4 v5, 0x0

    .line 1999
    :goto_3
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zze()Lcom/google/android/gms/measurement/internal/zzah;

    .line 2000
    sget-object v6, Lcom/google/android/gms/measurement/internal/zzbj;->zzad:Lcom/google/android/gms/measurement/internal/zzfz;

    const/4 v7, 0x0

    .line 2001
    invoke-virtual {v6, v7}, Lcom/google/android/gms/measurement/internal/zzfz;->zza(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 2002
    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/4 v8, 0x0

    invoke-static {v8, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    const/16 v9, 0x14

    invoke-static {v9, v6}, Ljava/lang/Math;->min(II)I

    move-result v6

    if-ge v5, v6, :cond_7

    const-wide/16 v12, 0x1

    shl-long/2addr v12, v5

    .line 2005
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zze()Lcom/google/android/gms/measurement/internal/zzah;

    .line 2006
    sget-object v6, Lcom/google/android/gms/measurement/internal/zzbj;->zzac:Lcom/google/android/gms/measurement/internal/zzfz;

    .line 2007
    invoke-virtual {v6, v7}, Lcom/google/android/gms/measurement/internal/zzfz;->zza(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 2008
    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-static {v3, v4, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    mul-long/2addr v6, v12

    add-long/2addr v10, v6

    cmp-long v6, v10, v1

    if-lez v6, :cond_b

    goto :goto_4

    :cond_b
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_c
    :goto_4
    cmp-long v1, v10, v3

    if-nez v1, :cond_d

    .line 2017
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzj()Lcom/google/android/gms/measurement/internal/zzgi;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzgi;->zzp()Lcom/google/android/gms/measurement/internal/zzgk;

    move-result-object v1

    const-string v2, "Next upload time is 0"

    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/zzgk;->zza(Ljava/lang/String;)V

    .line 2018
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzy()Lcom/google/android/gms/measurement/internal/zzgs;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzgs;->zzb()V

    .line 2019
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzz()Lcom/google/android/gms/measurement/internal/zznm;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zznm;->zzu()V

    return-void

    .line 2021
    :cond_d
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzh()Lcom/google/android/gms/measurement/internal/zzgp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzgp;->zzu()Z

    move-result v1

    if-nez v1, :cond_e

    .line 2022
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzj()Lcom/google/android/gms/measurement/internal/zzgi;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzgi;->zzp()Lcom/google/android/gms/measurement/internal/zzgk;

    move-result-object v1

    const-string v2, "No network"

    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/zzgk;->zza(Ljava/lang/String;)V

    .line 2023
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzy()Lcom/google/android/gms/measurement/internal/zzgs;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzgs;->zza()V

    .line 2024
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzz()Lcom/google/android/gms/measurement/internal/zznm;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zznm;->zzu()V

    return-void

    .line 2027
    :cond_e
    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zznv;->zzj:Lcom/google/android/gms/measurement/internal/zzms;

    .line 2028
    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zzms;->zzc:Lcom/google/android/gms/measurement/internal/zzgz;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzgz;->zza()J

    move-result-wide v1

    .line 2029
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zze()Lcom/google/android/gms/measurement/internal/zzah;

    .line 2030
    sget-object v5, Lcom/google/android/gms/measurement/internal/zzbj;->zzs:Lcom/google/android/gms/measurement/internal/zzfz;

    const/4 v6, 0x0

    .line 2031
    invoke-virtual {v5, v6}, Lcom/google/android/gms/measurement/internal/zzfz;->zza(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 2032
    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v5

    .line 2034
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzp()Lcom/google/android/gms/measurement/internal/zzol;

    move-result-object v7

    invoke-virtual {v7, v1, v2, v5, v6}, Lcom/google/android/gms/measurement/internal/zzol;->zza(JJ)Z

    move-result v7

    if-nez v7, :cond_f

    add-long/2addr v1, v5

    .line 2035
    invoke-static {v10, v11, v1, v2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v10

    .line 2036
    :cond_f
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzy()Lcom/google/android/gms/measurement/internal/zzgs;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzgs;->zzb()V

    .line 2037
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzb()Lcom/google/android/gms/common/util/Clock;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v1

    sub-long/2addr v10, v1

    cmp-long v1, v10, v3

    if-gtz v1, :cond_10

    .line 2039
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zze()Lcom/google/android/gms/measurement/internal/zzah;

    .line 2040
    sget-object v1, Lcom/google/android/gms/measurement/internal/zzbj;->zzx:Lcom/google/android/gms/measurement/internal/zzfz;

    const/4 v2, 0x0

    .line 2041
    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/zzfz;->zza(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 2042
    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-static {v3, v4, v1, v2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v10

    .line 2045
    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zznv;->zzj:Lcom/google/android/gms/measurement/internal/zzms;

    .line 2046
    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zzms;->zzd:Lcom/google/android/gms/measurement/internal/zzgz;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzb()Lcom/google/android/gms/common/util/Clock;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/measurement/internal/zzgz;->zza(J)V

    .line 2047
    :cond_10
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzj()Lcom/google/android/gms/measurement/internal/zzgi;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzgi;->zzp()Lcom/google/android/gms/measurement/internal/zzgk;

    move-result-object v1

    const-string v2, "Upload scheduled in approximately ms"

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/measurement/internal/zzgk;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2048
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzz()Lcom/google/android/gms/measurement/internal/zznm;

    move-result-object v1

    invoke-virtual {v1, v10, v11}, Lcom/google/android/gms/measurement/internal/zznm;->zza(J)V

    return-void

    .line 1945
    :cond_11
    :goto_5
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzj()Lcom/google/android/gms/measurement/internal/zzgi;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzgi;->zzp()Lcom/google/android/gms/measurement/internal/zzgk;

    move-result-object v1

    const-string v2, "Nothing to upload or uploading impossible"

    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/zzgk;->zza(Ljava/lang/String;)V

    .line 1946
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzy()Lcom/google/android/gms/measurement/internal/zzgs;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzgs;->zzb()V

    .line 1947
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzz()Lcom/google/android/gms/measurement/internal/zznm;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zznm;->zzu()V

    return-void
.end method

.method private final zzad()Z
    .locals 1

    .line 3725
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzl()Lcom/google/android/gms/measurement/internal/zzhp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zziy;->zzt()V

    .line 3726
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzs()V

    .line 3727
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzf()Lcom/google/android/gms/measurement/internal/zzam;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzam;->zzx()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3728
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzf()Lcom/google/android/gms/measurement/internal/zzam;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzam;->f_()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method private final zzae()Z
    .locals 1

    .line 3730
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzl()Lcom/google/android/gms/measurement/internal/zzhp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zziy;->zzt()V

    .line 3731
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zznv;->zzz:Ljava/util/List;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private final zzaf()Z
    .locals 6

    .line 3733
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzl()Lcom/google/android/gms/measurement/internal/zzhp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zziy;->zzt()V

    .line 3734
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zznv;->zzx:Ljava/nio/channels/FileLock;

    const/4 v1, 0x1

    const-string v2, "Storage concurrent access okay"

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/nio/channels/FileLock;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3735
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzj()Lcom/google/android/gms/measurement/internal/zzgi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgi;->zzp()Lcom/google/android/gms/measurement/internal/zzgk;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/google/android/gms/measurement/internal/zzgk;->zza(Ljava/lang/String;)V

    return v1

    .line 3740
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zznv;->zzm:Lcom/google/android/gms/measurement/internal/zzhw;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzhw;->zza()Landroid/content/Context;

    move-result-object v0

    .line 3741
    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    .line 3742
    new-instance v3, Ljava/io/File;

    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzcf;->zza()Lcom/google/android/gms/internal/measurement/zzci;

    move-result-object v4

    const-string v5, "google_app_measurement.db"

    invoke-interface {v4, v0, v5}, Lcom/google/android/gms/internal/measurement/zzci;->zza(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3743
    :try_start_0
    new-instance v0, Ljava/io/RandomAccessFile;

    const-string v4, "rw"

    invoke-direct {v0, v3, v4}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zznv;->zzy:Ljava/nio/channels/FileChannel;

    .line 3744
    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->tryLock()Ljava/nio/channels/FileLock;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zznv;->zzx:Ljava/nio/channels/FileLock;

    if-eqz v0, :cond_1

    .line 3746
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzj()Lcom/google/android/gms/measurement/internal/zzgi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgi;->zzp()Lcom/google/android/gms/measurement/internal/zzgk;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/google/android/gms/measurement/internal/zzgk;->zza(Ljava/lang/String;)V

    return v1

    .line 3748
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzj()Lcom/google/android/gms/measurement/internal/zzgi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgi;->zzg()Lcom/google/android/gms/measurement/internal/zzgk;

    move-result-object v0

    const-string v1, "Storage concurrent data access panic"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzgk;->zza(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/nio/channels/OverlappingFileLockException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 3757
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzj()Lcom/google/android/gms/measurement/internal/zzgi;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzgi;->zzu()Lcom/google/android/gms/measurement/internal/zzgk;

    move-result-object v1

    const-string v2, "Storage lock already acquired"

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/measurement/internal/zzgk;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :catch_1
    move-exception v0

    .line 3754
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzj()Lcom/google/android/gms/measurement/internal/zzgi;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzgi;->zzg()Lcom/google/android/gms/measurement/internal/zzgk;

    move-result-object v1

    const-string v2, "Failed to access storage lock file"

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/measurement/internal/zzgk;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :catch_2
    move-exception v0

    .line 3751
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzj()Lcom/google/android/gms/measurement/internal/zzgi;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzgi;->zzg()Lcom/google/android/gms/measurement/internal/zzgk;

    move-result-object v1

    const-string v2, "Failed to acquire storage lock"

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/measurement/internal/zzgk;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method private final zzb(Lcom/google/android/gms/measurement/internal/zzbh;Lcom/google/android/gms/measurement/internal/zzp;)V
    .locals 8

    .line 958
    iget-object v0, p2, Lcom/google/android/gms/measurement/internal/zzp;->zza:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 959
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzgm;->zza(Lcom/google/android/gms/measurement/internal/zzbh;)Lcom/google/android/gms/measurement/internal/zzgm;

    move-result-object p1

    .line 960
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzq()Lcom/google/android/gms/measurement/internal/zzop;

    move-result-object v0

    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzgm;->zzd:Landroid/os/Bundle;

    .line 961
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzf()Lcom/google/android/gms/measurement/internal/zzam;

    move-result-object v2

    iget-object v3, p2, Lcom/google/android/gms/measurement/internal/zzp;->zza:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/measurement/internal/zzam;->zzd(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    .line 962
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzop;->zza(Landroid/os/Bundle;Landroid/os/Bundle;)V

    .line 963
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzq()Lcom/google/android/gms/measurement/internal/zzop;

    move-result-object v0

    .line 964
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zze()Lcom/google/android/gms/measurement/internal/zzah;

    move-result-object v1

    iget-object v2, p2, Lcom/google/android/gms/measurement/internal/zzp;->zza:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/zzah;->zzb(Ljava/lang/String;)I

    move-result v1

    .line 965
    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/measurement/internal/zzop;->zza(Lcom/google/android/gms/measurement/internal/zzgm;I)V

    .line 966
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzgm;->zza()Lcom/google/android/gms/measurement/internal/zzbh;

    move-result-object p1

    .line 968
    const-string v0, "_cmp"

    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzbh;->zza:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 969
    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzbh;->zzb:Lcom/google/android/gms/measurement/internal/zzbc;

    const-string v1, "_cis"

    .line 970
    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzbc;->zzd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 971
    const-string v1, "referrer API v2"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 972
    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzbh;->zzb:Lcom/google/android/gms/measurement/internal/zzbc;

    const-string v1, "gclid"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzbc;->zzd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 973
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 974
    new-instance v0, Lcom/google/android/gms/measurement/internal/zzok;

    iget-wide v4, p1, Lcom/google/android/gms/measurement/internal/zzbh;->zzd:J

    const-string v7, "auto"

    const-string v3, "_lgclid"

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lcom/google/android/gms/measurement/internal/zzok;-><init>(Ljava/lang/String;JLjava/lang/Object;Ljava/lang/String;)V

    .line 975
    invoke-virtual {p0, v0, p2}, Lcom/google/android/gms/measurement/internal/zznv;->zza(Lcom/google/android/gms/measurement/internal/zzok;Lcom/google/android/gms/measurement/internal/zzp;)V

    .line 976
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/measurement/internal/zznv;->zza(Lcom/google/android/gms/measurement/internal/zzbh;Lcom/google/android/gms/measurement/internal/zzp;)V

    return-void
.end method

.method private final zzb(Lcom/google/android/gms/measurement/internal/zzh;)V
    .locals 17

    move-object/from16 v6, p0

    move-object/from16 v0, p1

    .line 564
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzl()Lcom/google/android/gms/measurement/internal/zzhp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zziy;->zzt()V

    .line 565
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/measurement/internal/zzh;->zzah()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/measurement/internal/zzh;->zzaa()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 567
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/measurement/internal/zzh;->zzac()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v2, 0xcc

    const/4 v3, 0x0

    move-object/from16 v0, p0

    .line 568
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/measurement/internal/zznv;->zzb(Ljava/lang/String;ILjava/lang/Throwable;[BLjava/util/Map;)V

    return-void

    .line 570
    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzqt;->zza()Z

    move-result v1

    const-string v2, "If-None-Match"

    const-string v3, "If-Modified-Since"

    const-string v4, "Failed to parse config URL. Not fetching. appId"

    const/4 v5, 0x1

    const/4 v7, 0x0

    const-string v8, "Fetching remote configuration"

    if-eqz v1, :cond_4

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zze()Lcom/google/android/gms/measurement/internal/zzah;

    move-result-object v1

    sget-object v9, Lcom/google/android/gms/measurement/internal/zzbj;->zzcc:Lcom/google/android/gms/measurement/internal/zzfz;

    invoke-virtual {v1, v9}, Lcom/google/android/gms/measurement/internal/zzah;->zza(Lcom/google/android/gms/measurement/internal/zzfz;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 571
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/measurement/internal/zzh;->zzac()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 572
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzj()Lcom/google/android/gms/measurement/internal/zzgi;

    move-result-object v9

    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/zzgi;->zzp()Lcom/google/android/gms/measurement/internal/zzgk;

    move-result-object v9

    invoke-virtual {v9, v8, v1}, Lcom/google/android/gms/measurement/internal/zzgk;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    .line 573
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzi()Lcom/google/android/gms/measurement/internal/zzhg;

    move-result-object v8

    invoke-virtual {v8, v1}, Lcom/google/android/gms/measurement/internal/zzhg;->zzc(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzfx$zzd;

    move-result-object v8

    .line 575
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzi()Lcom/google/android/gms/measurement/internal/zzhg;

    move-result-object v9

    invoke-virtual {v9, v1}, Lcom/google/android/gms/measurement/internal/zzhg;->zze(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    if-eqz v8, :cond_3

    .line 577
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 578
    new-instance v7, Landroidx/collection/ArrayMap;

    invoke-direct {v7}, Landroidx/collection/ArrayMap;-><init>()V

    .line 579
    invoke-interface {v7, v3, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 580
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzi()Lcom/google/android/gms/measurement/internal/zzhg;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/google/android/gms/measurement/internal/zzhg;->zzd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 581
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    if-nez v7, :cond_2

    .line 583
    new-instance v3, Landroidx/collection/ArrayMap;

    invoke-direct {v3}, Landroidx/collection/ArrayMap;-><init>()V

    move-object v7, v3

    .line 584
    :cond_2
    invoke-interface {v7, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    move-object v13, v7

    .line 585
    iput-boolean v5, v6, Lcom/google/android/gms/measurement/internal/zznv;->zzu:Z

    .line 586
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzh()Lcom/google/android/gms/measurement/internal/zzgp;

    move-result-object v1

    new-instance v14, Lcom/google/android/gms/measurement/internal/zznu;

    invoke-direct {v14, v6}, Lcom/google/android/gms/measurement/internal/zznu;-><init>(Lcom/google/android/gms/measurement/internal/zznv;)V

    .line 588
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zziy;->zzt()V

    .line 589
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zznr;->zzal()V

    .line 590
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 591
    invoke-static {v14}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 592
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzno;->zzo()Lcom/google/android/gms/measurement/internal/zznq;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/android/gms/measurement/internal/zznq;->zza(Lcom/google/android/gms/measurement/internal/zzh;)Ljava/lang/String;

    move-result-object v2

    .line 593
    :try_start_0
    new-instance v3, Ljava/net/URI;

    invoke-direct {v3, v2}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/net/URI;->toURL()Ljava/net/URL;

    move-result-object v11

    .line 594
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zziy;->zzl()Lcom/google/android/gms/measurement/internal/zzhp;

    move-result-object v3

    new-instance v5, Lcom/google/android/gms/measurement/internal/zzgt;

    .line 595
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/measurement/internal/zzh;->zzac()Ljava/lang/String;

    move-result-object v10

    const/4 v12, 0x0

    move-object v8, v5

    move-object v9, v1

    invoke-direct/range {v8 .. v14}, Lcom/google/android/gms/measurement/internal/zzgt;-><init>(Lcom/google/android/gms/measurement/internal/zzgp;Ljava/lang/String;Ljava/net/URL;[BLjava/util/Map;Lcom/google/android/gms/measurement/internal/zzgo;)V

    .line 596
    invoke-virtual {v3, v5}, Lcom/google/android/gms/measurement/internal/zzhp;->zza(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 599
    :catch_0
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zziy;->zzj()Lcom/google/android/gms/measurement/internal/zzgi;

    move-result-object v1

    .line 600
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzgi;->zzg()Lcom/google/android/gms/measurement/internal/zzgk;

    move-result-object v1

    .line 601
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/measurement/internal/zzh;->zzac()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzgi;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 602
    invoke-virtual {v1, v4, v0, v2}, Lcom/google/android/gms/measurement/internal/zzgk;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    .line 605
    :cond_4
    iget-object v1, v6, Lcom/google/android/gms/measurement/internal/zznv;->zzk:Lcom/google/android/gms/measurement/internal/zznq;

    .line 606
    invoke-virtual {v1, v0}, Lcom/google/android/gms/measurement/internal/zznq;->zza(Lcom/google/android/gms/measurement/internal/zzh;)Ljava/lang/String;

    move-result-object v1

    .line 607
    :try_start_1
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/measurement/internal/zzh;->zzac()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    move-object v12, v9

    check-cast v12, Ljava/lang/String;

    .line 608
    new-instance v13, Ljava/net/URL;

    invoke-direct {v13, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 609
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzj()Lcom/google/android/gms/measurement/internal/zzgi;

    move-result-object v9

    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/zzgi;->zzp()Lcom/google/android/gms/measurement/internal/zzgk;

    move-result-object v9

    invoke-virtual {v9, v8, v12}, Lcom/google/android/gms/measurement/internal/zzgk;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    .line 610
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzi()Lcom/google/android/gms/measurement/internal/zzhg;

    move-result-object v8

    invoke-virtual {v8, v12}, Lcom/google/android/gms/measurement/internal/zzhg;->zzc(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzfx$zzd;

    move-result-object v8

    .line 612
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzi()Lcom/google/android/gms/measurement/internal/zzhg;

    move-result-object v9

    invoke-virtual {v9, v12}, Lcom/google/android/gms/measurement/internal/zzhg;->zze(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    if-eqz v8, :cond_7

    .line 614
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_5

    .line 615
    new-instance v7, Landroidx/collection/ArrayMap;

    invoke-direct {v7}, Landroidx/collection/ArrayMap;-><init>()V

    .line 616
    invoke-interface {v7, v3, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 617
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzi()Lcom/google/android/gms/measurement/internal/zzhg;

    move-result-object v3

    invoke-virtual {v3, v12}, Lcom/google/android/gms/measurement/internal/zzhg;->zzd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 618
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_7

    if-nez v7, :cond_6

    .line 620
    new-instance v7, Landroidx/collection/ArrayMap;

    invoke-direct {v7}, Landroidx/collection/ArrayMap;-><init>()V

    .line 621
    :cond_6
    invoke-interface {v7, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    move-object v15, v7

    .line 622
    iput-boolean v5, v6, Lcom/google/android/gms/measurement/internal/zznv;->zzu:Z

    .line 623
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzh()Lcom/google/android/gms/measurement/internal/zzgp;

    move-result-object v11

    new-instance v2, Lcom/google/android/gms/measurement/internal/zzny;

    invoke-direct {v2, v6}, Lcom/google/android/gms/measurement/internal/zzny;-><init>(Lcom/google/android/gms/measurement/internal/zznv;)V

    .line 625
    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/zziy;->zzt()V

    .line 626
    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/zznr;->zzal()V

    .line 627
    invoke-static {v13}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 628
    invoke-static {v2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 629
    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/zziy;->zzl()Lcom/google/android/gms/measurement/internal/zzhp;

    move-result-object v3

    new-instance v5, Lcom/google/android/gms/measurement/internal/zzgt;

    const/4 v14, 0x0

    move-object v10, v5

    move-object/from16 v16, v2

    invoke-direct/range {v10 .. v16}, Lcom/google/android/gms/measurement/internal/zzgt;-><init>(Lcom/google/android/gms/measurement/internal/zzgp;Ljava/lang/String;Ljava/net/URL;[BLjava/util/Map;Lcom/google/android/gms/measurement/internal/zzgo;)V

    .line 630
    invoke-virtual {v3, v5}, Lcom/google/android/gms/measurement/internal/zzhp;->zza(Ljava/lang/Runnable;)V
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_1

    return-void

    .line 633
    :catch_1
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzj()Lcom/google/android/gms/measurement/internal/zzgi;

    move-result-object v2

    .line 634
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzgi;->zzg()Lcom/google/android/gms/measurement/internal/zzgk;

    move-result-object v2

    .line 635
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/measurement/internal/zzh;->zzac()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzgi;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 636
    invoke-virtual {v2, v4, v0, v1}, Lcom/google/android/gms/measurement/internal/zzgk;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method private final zzc(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzp;
    .locals 42

    move-object/from16 v1, p1

    .line 178
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzf()Lcom/google/android/gms/measurement/internal/zzam;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzam;->zze(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzh;

    move-result-object v11

    const/4 v0, 0x0

    if-eqz v11, :cond_2

    .line 179
    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/zzh;->zzaf()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto/16 :goto_0

    :cond_0
    move-object/from16 v13, p0

    .line 182
    invoke-direct {v13, v11}, Lcom/google/android/gms/measurement/internal/zznv;->zza(Lcom/google/android/gms/measurement/internal/zzh;)Ljava/lang/Boolean;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 183
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_1

    .line 184
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzj()Lcom/google/android/gms/measurement/internal/zzgi;

    move-result-object v2

    .line 185
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzgi;->zzg()Lcom/google/android/gms/measurement/internal/zzgk;

    move-result-object v2

    const-string v3, "App version does not match; dropping. appId"

    .line 186
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/measurement/internal/zzgi;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Lcom/google/android/gms/measurement/internal/zzgk;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0

    .line 188
    :cond_1
    new-instance v41, Lcom/google/android/gms/measurement/internal/zzp;

    move-object/from16 v0, v41

    .line 189
    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/zzh;->zzah()Ljava/lang/String;

    move-result-object v2

    .line 190
    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/zzh;->zzaf()Ljava/lang/String;

    move-result-object v3

    .line 191
    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/zzh;->zze()J

    move-result-wide v4

    .line 192
    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/zzh;->zzae()Ljava/lang/String;

    move-result-object v6

    .line 193
    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/zzh;->zzq()J

    move-result-wide v7

    .line 194
    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/zzh;->zzn()J

    move-result-wide v9

    .line 195
    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/zzh;->zzar()Z

    move-result v12

    .line 196
    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/zzh;->zzag()Ljava/lang/String;

    move-result-object v14

    .line 197
    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/zzh;->zzd()J

    move-result-wide v15

    .line 198
    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/zzh;->zzaq()Z

    move-result v20

    .line 199
    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/zzh;->zzaa()Ljava/lang/String;

    move-result-object v22

    .line 200
    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/zzh;->zzx()Ljava/lang/Boolean;

    move-result-object v23

    .line 201
    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/zzh;->zzo()J

    move-result-wide v24

    .line 202
    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/zzh;->zzan()Ljava/util/List;

    move-result-object v26

    .line 203
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/gms/measurement/internal/zznv;->zzb(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzjc;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/google/android/gms/measurement/internal/zzjc;->zzh()Ljava/lang/String;

    move-result-object v28

    .line 204
    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/zzh;->zzat()Z

    move-result v31

    .line 205
    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/zzh;->zzw()J

    move-result-wide v32

    .line 206
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/gms/measurement/internal/zznv;->zzb(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzjc;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/google/android/gms/measurement/internal/zzjc;->zza()I

    move-result v34

    .line 207
    invoke-direct/range {p0 .. p1}, Lcom/google/android/gms/measurement/internal/zznv;->zzd(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzaz;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/google/android/gms/measurement/internal/zzaz;->zzf()Ljava/lang/String;

    move-result-object v35

    .line 208
    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/zzh;->zza()I

    move-result v36

    .line 209
    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/zzh;->zzf()J

    move-result-wide v37

    .line 210
    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/zzh;->zzam()Ljava/lang/String;

    move-result-object v39

    .line 211
    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/zzh;->zzak()Ljava/lang/String;

    move-result-object v40

    const/4 v11, 0x0

    const/16 v17, 0x0

    move/from16 v13, v17

    const-wide/16 v17, 0x0

    const/16 v19, 0x0

    const/16 v21, 0x0

    const/16 v27, 0x0

    const-string v29, ""

    const/16 v30, 0x0

    move-object/from16 v1, p1

    invoke-direct/range {v0 .. v40}, Lcom/google/android/gms/measurement/internal/zzp;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;JJLjava/lang/String;ZZLjava/lang/String;JJIZZLjava/lang/String;Ljava/lang/Boolean;JLjava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZJILjava/lang/String;IJLjava/lang/String;Ljava/lang/String;)V

    return-object v41

    .line 180
    :cond_2
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzj()Lcom/google/android/gms/measurement/internal/zzgi;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzgi;->zzc()Lcom/google/android/gms/measurement/internal/zzgk;

    move-result-object v2

    const-string v3, "No app data available; dropping"

    invoke-virtual {v2, v3, v1}, Lcom/google/android/gms/measurement/internal/zzgk;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method private final zzc(Lcom/google/android/gms/measurement/internal/zzbh;Lcom/google/android/gms/measurement/internal/zzp;)V
    .locals 38

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    .line 2554
    const-string v4, "_fx"

    const-string v5, "_sno"

    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2555
    iget-object v6, v3, Lcom/google/android/gms/measurement/internal/zzp;->zza:Ljava/lang/String;

    invoke-static {v6}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 2556
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    .line 2558
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzl()Lcom/google/android/gms/measurement/internal/zzhp;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zziy;->zzt()V

    .line 2559
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzs()V

    .line 2560
    iget-object v8, v3, Lcom/google/android/gms/measurement/internal/zzp;->zza:Ljava/lang/String;

    .line 2561
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzp()Lcom/google/android/gms/measurement/internal/zzol;

    invoke-static/range {p1 .. p2}, Lcom/google/android/gms/measurement/internal/zzol;->zza(Lcom/google/android/gms/measurement/internal/zzbh;Lcom/google/android/gms/measurement/internal/zzp;)Z

    move-result v9

    if-nez v9, :cond_0

    return-void

    .line 2563
    :cond_0
    iget-boolean v9, v3, Lcom/google/android/gms/measurement/internal/zzp;->zzh:Z

    if-nez v9, :cond_1

    .line 2564
    invoke-virtual {v1, v3}, Lcom/google/android/gms/measurement/internal/zznv;->zza(Lcom/google/android/gms/measurement/internal/zzp;)Lcom/google/android/gms/measurement/internal/zzh;

    return-void

    .line 2566
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzi()Lcom/google/android/gms/measurement/internal/zzhg;

    move-result-object v9

    iget-object v10, v2, Lcom/google/android/gms/measurement/internal/zzbh;->zza:Ljava/lang/String;

    invoke-virtual {v9, v8, v10}, Lcom/google/android/gms/measurement/internal/zzhg;->zzd(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v9

    const-string v15, "_err"

    const/4 v14, 0x0

    if-eqz v9, :cond_6

    .line 2567
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzj()Lcom/google/android/gms/measurement/internal/zzgi;

    move-result-object v3

    .line 2568
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzgi;->zzu()Lcom/google/android/gms/measurement/internal/zzgk;

    move-result-object v3

    .line 2569
    invoke-static {v8}, Lcom/google/android/gms/measurement/internal/zzgi;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 2570
    iget-object v5, v1, Lcom/google/android/gms/measurement/internal/zznv;->zzm:Lcom/google/android/gms/measurement/internal/zzhw;

    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzhw;->zzk()Lcom/google/android/gms/measurement/internal/zzgh;

    move-result-object v5

    .line 2571
    iget-object v6, v2, Lcom/google/android/gms/measurement/internal/zzbh;->zza:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/google/android/gms/measurement/internal/zzgh;->zza(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 2572
    const-string v6, "Dropping blocked event. appId"

    invoke-virtual {v3, v6, v4, v5}, Lcom/google/android/gms/measurement/internal/zzgk;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2574
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzi()Lcom/google/android/gms/measurement/internal/zzhg;

    move-result-object v3

    invoke-virtual {v3, v8}, Lcom/google/android/gms/measurement/internal/zzhg;->zzm(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 2575
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzi()Lcom/google/android/gms/measurement/internal/zzhg;

    move-result-object v3

    invoke-virtual {v3, v8}, Lcom/google/android/gms/measurement/internal/zzhg;->zzo(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v3, 0x1

    :goto_1
    if-nez v3, :cond_4

    .line 2576
    iget-object v4, v2, Lcom/google/android/gms/measurement/internal/zzbh;->zza:Ljava/lang/String;

    invoke-virtual {v15, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 2577
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzq()Lcom/google/android/gms/measurement/internal/zzop;

    iget-object v9, v1, Lcom/google/android/gms/measurement/internal/zznv;->zzah:Lcom/google/android/gms/measurement/internal/zzoo;

    iget-object v13, v2, Lcom/google/android/gms/measurement/internal/zzbh;->zza:Ljava/lang/String;

    const/4 v2, 0x0

    const/16 v11, 0xb

    .line 2578
    const-string v12, "_ev"

    move-object v10, v8

    move-object v4, v14

    move v14, v2

    invoke-static/range {v9 .. v14}, Lcom/google/android/gms/measurement/internal/zzop;->zza(Lcom/google/android/gms/measurement/internal/zzoo;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    goto :goto_2

    :cond_4
    move-object v4, v14

    :goto_2
    if-eqz v3, :cond_5

    .line 2580
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzf()Lcom/google/android/gms/measurement/internal/zzam;

    move-result-object v2

    invoke-virtual {v2, v8}, Lcom/google/android/gms/measurement/internal/zzam;->zze(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzh;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 2583
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzh;->zzp()J

    move-result-wide v5

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzh;->zzg()J

    move-result-wide v7

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v5

    .line 2584
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzb()Lcom/google/android/gms/common/util/Clock;

    move-result-object v3

    invoke-interface {v3}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v7

    sub-long/2addr v7, v5

    .line 2585
    invoke-static {v7, v8}, Ljava/lang/Math;->abs(J)J

    move-result-wide v5

    .line 2586
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zze()Lcom/google/android/gms/measurement/internal/zzah;

    .line 2587
    sget-object v3, Lcom/google/android/gms/measurement/internal/zzbj;->zzaa:Lcom/google/android/gms/measurement/internal/zzfz;

    .line 2588
    invoke-virtual {v3, v4}, Lcom/google/android/gms/measurement/internal/zzfz;->zza(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 2589
    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    cmp-long v3, v5, v3

    if-lez v3, :cond_5

    .line 2591
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzj()Lcom/google/android/gms/measurement/internal/zzgi;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzgi;->zzc()Lcom/google/android/gms/measurement/internal/zzgk;

    move-result-object v3

    const-string v4, "Fetching config for blocked app"

    invoke-virtual {v3, v4}, Lcom/google/android/gms/measurement/internal/zzgk;->zza(Ljava/lang/String;)V

    .line 2592
    invoke-direct {v1, v2}, Lcom/google/android/gms/measurement/internal/zznv;->zzb(Lcom/google/android/gms/measurement/internal/zzh;)V

    :cond_5
    return-void

    .line 2594
    :cond_6
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/measurement/internal/zzgm;->zza(Lcom/google/android/gms/measurement/internal/zzbh;)Lcom/google/android/gms/measurement/internal/zzgm;

    move-result-object v2

    .line 2595
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzq()Lcom/google/android/gms/measurement/internal/zzop;

    move-result-object v9

    .line 2596
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zze()Lcom/google/android/gms/measurement/internal/zzah;

    move-result-object v10

    invoke-virtual {v10, v8}, Lcom/google/android/gms/measurement/internal/zzah;->zzb(Ljava/lang/String;)I

    move-result v10

    .line 2597
    invoke-virtual {v9, v2, v10}, Lcom/google/android/gms/measurement/internal/zzop;->zza(Lcom/google/android/gms/measurement/internal/zzgm;I)V

    .line 2598
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzqz;->zza()Z

    move-result v9

    if-eqz v9, :cond_7

    .line 2599
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zze()Lcom/google/android/gms/measurement/internal/zzah;

    move-result-object v9

    sget-object v10, Lcom/google/android/gms/measurement/internal/zzbj;->zzcf:Lcom/google/android/gms/measurement/internal/zzfz;

    invoke-virtual {v9, v10}, Lcom/google/android/gms/measurement/internal/zzah;->zza(Lcom/google/android/gms/measurement/internal/zzfz;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 2600
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zze()Lcom/google/android/gms/measurement/internal/zzah;

    move-result-object v9

    .line 2601
    sget-object v10, Lcom/google/android/gms/measurement/internal/zzbj;->zzas:Lcom/google/android/gms/measurement/internal/zzfz;

    const/16 v11, 0xa

    const/16 v12, 0x23

    invoke-virtual {v9, v8, v10, v11, v12}, Lcom/google/android/gms/measurement/internal/zzah;->zza(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzfz;II)I

    move-result v9

    goto :goto_3

    :cond_7
    const/4 v9, 0x0

    .line 2604
    :goto_3
    new-instance v10, Ljava/util/TreeSet;

    iget-object v11, v2, Lcom/google/android/gms/measurement/internal/zzgm;->zzd:Landroid/os/Bundle;

    invoke-virtual {v11}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/util/TreeSet;-><init>(Ljava/util/Collection;)V

    .line 2605
    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_4
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_a

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 2606
    const-string v12, "items"

    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_9

    .line 2607
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzq()Lcom/google/android/gms/measurement/internal/zzop;

    move-result-object v12

    iget-object v13, v2, Lcom/google/android/gms/measurement/internal/zzgm;->zzd:Landroid/os/Bundle;

    .line 2608
    invoke-virtual {v13, v11}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v11

    .line 2609
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzqz;->zza()Z

    move-result v13

    if-eqz v13, :cond_8

    .line 2610
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zze()Lcom/google/android/gms/measurement/internal/zzah;

    move-result-object v13

    sget-object v14, Lcom/google/android/gms/measurement/internal/zzbj;->zzcf:Lcom/google/android/gms/measurement/internal/zzfz;

    invoke-virtual {v13, v14}, Lcom/google/android/gms/measurement/internal/zzah;->zza(Lcom/google/android/gms/measurement/internal/zzfz;)Z

    move-result v13

    if-eqz v13, :cond_8

    const/4 v13, 0x1

    goto :goto_5

    :cond_8
    const/4 v13, 0x0

    .line 2611
    :goto_5
    invoke-virtual {v12, v11, v9, v13}, Lcom/google/android/gms/measurement/internal/zzop;->zza([Landroid/os/Parcelable;IZ)V

    :cond_9
    const/4 v14, 0x0

    goto :goto_4

    .line 2613
    :cond_a
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzgm;->zza()Lcom/google/android/gms/measurement/internal/zzbh;

    move-result-object v2

    .line 2614
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzj()Lcom/google/android/gms/measurement/internal/zzgi;

    move-result-object v9

    const/4 v10, 0x2

    invoke-virtual {v9, v10}, Lcom/google/android/gms/measurement/internal/zzgi;->zza(I)Z

    move-result v9

    if-eqz v9, :cond_b

    .line 2615
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzj()Lcom/google/android/gms/measurement/internal/zzgi;

    move-result-object v9

    .line 2616
    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/zzgi;->zzp()Lcom/google/android/gms/measurement/internal/zzgk;

    move-result-object v9

    .line 2617
    iget-object v11, v1, Lcom/google/android/gms/measurement/internal/zznv;->zzm:Lcom/google/android/gms/measurement/internal/zzhw;

    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/zzhw;->zzk()Lcom/google/android/gms/measurement/internal/zzgh;

    move-result-object v11

    .line 2618
    invoke-virtual {v11, v2}, Lcom/google/android/gms/measurement/internal/zzgh;->zza(Lcom/google/android/gms/measurement/internal/zzbh;)Ljava/lang/String;

    move-result-object v11

    const-string v12, "Logging event"

    invoke-virtual {v9, v12, v11}, Lcom/google/android/gms/measurement/internal/zzgk;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2619
    :cond_b
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzqs;->zza()Z

    move-result v9

    if-eqz v9, :cond_c

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zze()Lcom/google/android/gms/measurement/internal/zzah;

    move-result-object v9

    sget-object v11, Lcom/google/android/gms/measurement/internal/zzbj;->zzcb:Lcom/google/android/gms/measurement/internal/zzfz;

    invoke-virtual {v9, v11}, Lcom/google/android/gms/measurement/internal/zzah;->zza(Lcom/google/android/gms/measurement/internal/zzfz;)Z

    .line 2620
    :cond_c
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzf()Lcom/google/android/gms/measurement/internal/zzam;

    move-result-object v9

    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/zzam;->zzp()V

    .line 2621
    :try_start_0
    invoke-virtual {v1, v3}, Lcom/google/android/gms/measurement/internal/zznv;->zza(Lcom/google/android/gms/measurement/internal/zzp;)Lcom/google/android/gms/measurement/internal/zzh;

    .line 2622
    const-string v9, "ecommerce_purchase"

    iget-object v11, v2, Lcom/google/android/gms/measurement/internal/zzbh;->zza:Ljava/lang/String;

    .line 2623
    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v11, "refund"

    if-nez v9, :cond_e

    :try_start_1
    const-string v9, "purchase"

    iget-object v12, v2, Lcom/google/android/gms/measurement/internal/zzbh;->zza:Ljava/lang/String;

    .line 2624
    invoke-virtual {v9, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_e

    iget-object v9, v2, Lcom/google/android/gms/measurement/internal/zzbh;->zza:Ljava/lang/String;

    .line 2625
    invoke-virtual {v11, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_d

    goto :goto_6

    :cond_d
    const/4 v9, 0x0

    goto :goto_7

    :cond_e
    :goto_6
    const/4 v9, 0x1

    .line 2626
    :goto_7
    const-string v12, "_iap"

    iget-object v13, v2, Lcom/google/android/gms/measurement/internal/zzbh;->zza:Ljava/lang/String;

    .line 2627
    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string v13, "value"

    if-nez v12, :cond_10

    if-eqz v9, :cond_f

    goto :goto_8

    :cond_f
    move-object/from16 v27, v4

    move-wide/from16 v24, v6

    move-object v7, v13

    move-object/from16 v26, v15

    const/4 v4, 0x0

    goto/16 :goto_f

    .line 2630
    :cond_10
    :goto_8
    :try_start_2
    iget-object v12, v2, Lcom/google/android/gms/measurement/internal/zzbh;->zzb:Lcom/google/android/gms/measurement/internal/zzbc;

    const-string v14, "currency"

    invoke-virtual {v12, v14}, Lcom/google/android/gms/measurement/internal/zzbc;->zzd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    if-eqz v9, :cond_13

    .line 2632
    iget-object v9, v2, Lcom/google/android/gms/measurement/internal/zzbh;->zzb:Lcom/google/android/gms/measurement/internal/zzbc;

    invoke-virtual {v9, v13}, Lcom/google/android/gms/measurement/internal/zzbc;->zza(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v19

    const-wide v21, 0x412e848000000000L    # 1000000.0

    mul-double v19, v19, v21

    const-wide/16 v23, 0x0

    cmpl-double v9, v19, v23

    if-nez v9, :cond_11

    .line 2634
    iget-object v9, v2, Lcom/google/android/gms/measurement/internal/zzbh;->zzb:Lcom/google/android/gms/measurement/internal/zzbc;

    invoke-virtual {v9, v13}, Lcom/google/android/gms/measurement/internal/zzbc;->zzb(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v9

    move-object v14, v11

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    long-to-double v9, v10

    mul-double v19, v9, v21

    goto :goto_9

    :cond_11
    move-object v14, v11

    :goto_9
    const-wide/high16 v9, 0x43e0000000000000L    # 9.223372036854776E18

    cmpg-double v9, v19, v9

    if-gtz v9, :cond_12

    const-wide/high16 v9, -0x3c20000000000000L    # -9.223372036854776E18

    cmpl-double v9, v19, v9

    if-ltz v9, :cond_12

    .line 2636
    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->round(D)J

    move-result-wide v9

    .line 2637
    iget-object v11, v2, Lcom/google/android/gms/measurement/internal/zzbh;->zza:Ljava/lang/String;

    invoke-virtual {v14, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_14

    neg-long v9, v9

    goto :goto_a

    .line 2639
    :cond_12
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzj()Lcom/google/android/gms/measurement/internal/zzgi;

    move-result-object v2

    .line 2640
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzgi;->zzu()Lcom/google/android/gms/measurement/internal/zzgk;

    move-result-object v2

    const-string v3, "Data lost. Currency value is too big. appId"

    .line 2641
    invoke-static {v8}, Lcom/google/android/gms/measurement/internal/zzgi;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 2642
    invoke-static/range {v19 .. v20}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    .line 2643
    invoke-virtual {v2, v3, v4, v5}, Lcom/google/android/gms/measurement/internal/zzgk;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2684
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzf()Lcom/google/android/gms/measurement/internal/zzam;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzam;->zzw()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2685
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzf()Lcom/google/android/gms/measurement/internal/zzam;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzam;->zzu()V

    return-void

    .line 2646
    :cond_13
    :try_start_3
    iget-object v9, v2, Lcom/google/android/gms/measurement/internal/zzbh;->zzb:Lcom/google/android/gms/measurement/internal/zzbc;

    invoke-virtual {v9, v13}, Lcom/google/android/gms/measurement/internal/zzbc;->zzb(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    .line 2647
    :cond_14
    :goto_a
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_f

    .line 2648
    sget-object v11, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v12, v11}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v11

    .line 2649
    const-string v12, "[A-Z]{3}"

    invoke-virtual {v11, v12}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_f

    .line 2650
    new-instance v12, Ljava/lang/StringBuilder;

    const-string v14, "_ltv_"

    invoke-direct {v12, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 2651
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzf()Lcom/google/android/gms/measurement/internal/zzam;

    move-result-object v11

    invoke-virtual {v11, v8, v12}, Lcom/google/android/gms/measurement/internal/zzam;->zze(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzom;

    move-result-object v11

    if-eqz v11, :cond_16

    .line 2652
    iget-object v14, v11, Lcom/google/android/gms/measurement/internal/zzom;->zze:Ljava/lang/Object;

    instance-of v14, v14, Ljava/lang/Long;

    if-nez v14, :cond_15

    goto :goto_b

    .line 2669
    :cond_15
    iget-object v11, v11, Lcom/google/android/gms/measurement/internal/zzom;->zze:Ljava/lang/Object;

    check-cast v11, Ljava/lang/Long;

    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v19

    .line 2670
    new-instance v21, Lcom/google/android/gms/measurement/internal/zzom;

    iget-object v11, v2, Lcom/google/android/gms/measurement/internal/zzbh;->zzc:Ljava/lang/String;

    .line 2671
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzb()Lcom/google/android/gms/common/util/Clock;

    move-result-object v14

    invoke-interface {v14}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v22

    add-long v19, v19, v9

    .line 2672
    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    move-object/from16 v9, v21

    move-object v10, v8

    const/4 v14, 0x0

    move-wide/from16 v24, v6

    move-object v7, v13

    const/4 v6, 0x1

    move-wide/from16 v13, v22

    move-object/from16 v26, v15

    move-object/from16 v15, v19

    invoke-direct/range {v9 .. v15}, Lcom/google/android/gms/measurement/internal/zzom;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V

    move-object/from16 v27, v4

    move-object/from16 v6, v21

    const/4 v4, 0x0

    goto :goto_e

    :cond_16
    :goto_b
    move-wide/from16 v24, v6

    move-object v7, v13

    move-object/from16 v26, v15

    const/4 v6, 0x1

    .line 2653
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzf()Lcom/google/android/gms/measurement/internal/zzam;

    move-result-object v11

    .line 2654
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zze()Lcom/google/android/gms/measurement/internal/zzah;

    move-result-object v13

    .line 2655
    sget-object v14, Lcom/google/android/gms/measurement/internal/zzbj;->zzag:Lcom/google/android/gms/measurement/internal/zzfz;

    invoke-virtual {v13, v8, v14}, Lcom/google/android/gms/measurement/internal/zzah;->zzb(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzfz;)I

    move-result v13

    sub-int/2addr v13, v6

    .line 2657
    invoke-static {v8}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 2658
    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/zziy;->zzt()V

    .line 2659
    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/zznr;->zzal()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2660
    :try_start_4
    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/zzam;->e_()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v14

    .line 2661
    const-string v15, "delete from user_attributes where app_id=? and name in (select name from user_attributes where app_id=? and name like \'_ltv_%\' order by set_timestamp desc limit ?,10);"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/String;
    :try_end_4
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-object/from16 v27, v4

    const/4 v4, 0x0

    :try_start_5
    aput-object v8, v6, v4

    const/16 v16, 0x1

    aput-object v8, v6, v16

    .line 2662
    invoke-static {v13}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v13

    const/16 v16, 0x2

    aput-object v13, v6, v16

    .line 2663
    invoke-virtual {v14, v15, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_5
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_d

    :catch_0
    move-exception v0

    goto :goto_c

    :catch_1
    move-exception v0

    move-object/from16 v27, v4

    const/4 v4, 0x0

    :goto_c
    move-object v6, v0

    .line 2666
    :try_start_6
    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/zziy;->zzj()Lcom/google/android/gms/measurement/internal/zzgi;

    move-result-object v11

    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/zzgi;->zzg()Lcom/google/android/gms/measurement/internal/zzgk;

    move-result-object v11

    const-string v13, "Error pruning currencies. appId"

    invoke-static {v8}, Lcom/google/android/gms/measurement/internal/zzgi;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    invoke-virtual {v11, v13, v14, v6}, Lcom/google/android/gms/measurement/internal/zzgk;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2667
    :goto_d
    new-instance v21, Lcom/google/android/gms/measurement/internal/zzom;

    iget-object v11, v2, Lcom/google/android/gms/measurement/internal/zzbh;->zzc:Ljava/lang/String;

    .line 2668
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzb()Lcom/google/android/gms/common/util/Clock;

    move-result-object v6

    invoke-interface {v6}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v13

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    move-object/from16 v9, v21

    move-object v10, v8

    invoke-direct/range {v9 .. v15}, Lcom/google/android/gms/measurement/internal/zzom;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V

    move-object/from16 v6, v21

    .line 2673
    :goto_e
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzf()Lcom/google/android/gms/measurement/internal/zzam;

    move-result-object v9

    invoke-virtual {v9, v6}, Lcom/google/android/gms/measurement/internal/zzam;->zza(Lcom/google/android/gms/measurement/internal/zzom;)Z

    move-result v9

    if-nez v9, :cond_17

    .line 2674
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzj()Lcom/google/android/gms/measurement/internal/zzgi;

    move-result-object v9

    .line 2675
    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/zzgi;->zzg()Lcom/google/android/gms/measurement/internal/zzgk;

    move-result-object v9

    const-string v10, "Too many unique user properties are set. Ignoring user property. appId"

    .line 2676
    invoke-static {v8}, Lcom/google/android/gms/measurement/internal/zzgi;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    .line 2677
    iget-object v12, v1, Lcom/google/android/gms/measurement/internal/zznv;->zzm:Lcom/google/android/gms/measurement/internal/zzhw;

    invoke-virtual {v12}, Lcom/google/android/gms/measurement/internal/zzhw;->zzk()Lcom/google/android/gms/measurement/internal/zzgh;

    move-result-object v12

    .line 2678
    iget-object v13, v6, Lcom/google/android/gms/measurement/internal/zzom;->zzc:Ljava/lang/String;

    invoke-virtual {v12, v13}, Lcom/google/android/gms/measurement/internal/zzgh;->zzc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    iget-object v6, v6, Lcom/google/android/gms/measurement/internal/zzom;->zze:Ljava/lang/Object;

    .line 2679
    invoke-virtual {v9, v10, v11, v12, v6}, Lcom/google/android/gms/measurement/internal/zzgk;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2680
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzq()Lcom/google/android/gms/measurement/internal/zzop;

    iget-object v9, v1, Lcom/google/android/gms/measurement/internal/zznv;->zzah:Lcom/google/android/gms/measurement/internal/zzoo;

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v11, 0x9

    const/4 v12, 0x0

    move-object v10, v8

    .line 2681
    invoke-static/range {v9 .. v14}, Lcom/google/android/gms/measurement/internal/zzop;->zza(Lcom/google/android/gms/measurement/internal/zzoo;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    .line 2687
    :cond_17
    :goto_f
    iget-object v6, v2, Lcom/google/android/gms/measurement/internal/zzbh;->zza:Ljava/lang/String;

    invoke-static {v6}, Lcom/google/android/gms/measurement/internal/zzop;->zzh(Ljava/lang/String;)Z

    move-result v6

    .line 2688
    iget-object v9, v2, Lcom/google/android/gms/measurement/internal/zzbh;->zza:Ljava/lang/String;

    move-object/from16 v10, v26

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    .line 2689
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzq()Lcom/google/android/gms/measurement/internal/zzop;

    iget-object v9, v2, Lcom/google/android/gms/measurement/internal/zzbh;->zzb:Lcom/google/android/gms/measurement/internal/zzbc;

    invoke-static {v9}, Lcom/google/android/gms/measurement/internal/zzop;->zza(Lcom/google/android/gms/measurement/internal/zzbc;)J

    move-result-wide v9

    const-wide/16 v13, 0x1

    add-long v15, v9, v13

    .line 2691
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzf()Lcom/google/android/gms/measurement/internal/zzam;

    move-result-object v9

    .line 2692
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzx()J

    move-result-wide v10

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v17, 0x1

    const/16 v18, 0x0

    move-object v12, v8

    move-object/from16 v22, v5

    move-wide v4, v13

    move-wide v13, v15

    move/from16 v15, v17

    move/from16 v16, v6

    move/from16 v17, v18

    move/from16 v18, v21

    .line 2693
    invoke-virtual/range {v9 .. v20}, Lcom/google/android/gms/measurement/internal/zzam;->zza(JLjava/lang/String;JZZZZZZ)Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object v9

    .line 2694
    iget-wide v10, v9, Lcom/google/android/gms/measurement/internal/zzar;->zzb:J

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zze()Lcom/google/android/gms/measurement/internal/zzah;

    invoke-static {}, Lcom/google/android/gms/measurement/internal/zzah;->zzn()J

    move-result-wide v12

    sub-long/2addr v10, v12

    const-wide/16 v14, 0x0

    cmp-long v12, v10, v14

    const-wide/16 v16, 0x3e8

    if-lez v12, :cond_19

    .line 2696
    rem-long v10, v10, v16

    cmp-long v2, v10, v4

    if-nez v2, :cond_18

    .line 2697
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzj()Lcom/google/android/gms/measurement/internal/zzgi;

    move-result-object v2

    .line 2698
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzgi;->zzg()Lcom/google/android/gms/measurement/internal/zzgk;

    move-result-object v2

    const-string v3, "Data loss. Too many events logged. appId, count"

    .line 2699
    invoke-static {v8}, Lcom/google/android/gms/measurement/internal/zzgi;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    iget-wide v5, v9, Lcom/google/android/gms/measurement/internal/zzar;->zzb:J

    .line 2700
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    .line 2701
    invoke-virtual {v2, v3, v4, v5}, Lcom/google/android/gms/measurement/internal/zzgk;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2702
    :cond_18
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzf()Lcom/google/android/gms/measurement/internal/zzam;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzam;->zzw()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 2703
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzf()Lcom/google/android/gms/measurement/internal/zzam;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzam;->zzu()V

    return-void

    :cond_19
    if-eqz v6, :cond_1b

    .line 2706
    :try_start_7
    iget-wide v10, v9, Lcom/google/android/gms/measurement/internal/zzar;->zza:J

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zze()Lcom/google/android/gms/measurement/internal/zzah;

    .line 2707
    sget-object v12, Lcom/google/android/gms/measurement/internal/zzbj;->zzm:Lcom/google/android/gms/measurement/internal/zzfz;

    const/4 v13, 0x0

    .line 2708
    invoke-virtual {v12, v13}, Lcom/google/android/gms/measurement/internal/zzfz;->zza(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    .line 2709
    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    int-to-long v4, v12

    sub-long/2addr v10, v4

    cmp-long v4, v10, v14

    if-lez v4, :cond_1c

    .line 2712
    rem-long v10, v10, v16

    const-wide/16 v3, 0x1

    cmp-long v3, v10, v3

    if-nez v3, :cond_1a

    .line 2713
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzj()Lcom/google/android/gms/measurement/internal/zzgi;

    move-result-object v3

    .line 2714
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzgi;->zzg()Lcom/google/android/gms/measurement/internal/zzgk;

    move-result-object v3

    const-string v4, "Data loss. Too many public events logged. appId, count"

    .line 2715
    invoke-static {v8}, Lcom/google/android/gms/measurement/internal/zzgi;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    iget-wide v6, v9, Lcom/google/android/gms/measurement/internal/zzar;->zza:J

    .line 2716
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    .line 2717
    invoke-virtual {v3, v4, v5, v6}, Lcom/google/android/gms/measurement/internal/zzgk;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2718
    :cond_1a
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzq()Lcom/google/android/gms/measurement/internal/zzop;

    iget-object v9, v1, Lcom/google/android/gms/measurement/internal/zznv;->zzah:Lcom/google/android/gms/measurement/internal/zzoo;

    const-string v12, "_ev"

    iget-object v13, v2, Lcom/google/android/gms/measurement/internal/zzbh;->zza:Ljava/lang/String;

    const/4 v14, 0x0

    const/16 v11, 0x10

    move-object v10, v8

    .line 2719
    invoke-static/range {v9 .. v14}, Lcom/google/android/gms/measurement/internal/zzop;->zza(Lcom/google/android/gms/measurement/internal/zzoo;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    .line 2720
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzf()Lcom/google/android/gms/measurement/internal/zzam;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzam;->zzw()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 2721
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzf()Lcom/google/android/gms/measurement/internal/zzam;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzam;->zzu()V

    return-void

    :cond_1b
    const/4 v13, 0x0

    :cond_1c
    if-eqz v21, :cond_1e

    .line 2724
    :try_start_8
    iget-wide v4, v9, Lcom/google/android/gms/measurement/internal/zzar;->zzd:J

    .line 2725
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zze()Lcom/google/android/gms/measurement/internal/zzah;

    move-result-object v10

    iget-object v11, v3, Lcom/google/android/gms/measurement/internal/zzp;->zza:Ljava/lang/String;

    .line 2726
    sget-object v12, Lcom/google/android/gms/measurement/internal/zzbj;->zzl:Lcom/google/android/gms/measurement/internal/zzfz;

    invoke-virtual {v10, v11, v12}, Lcom/google/android/gms/measurement/internal/zzah;->zzb(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzfz;)I

    move-result v10

    const v11, 0xf4240

    .line 2727
    invoke-static {v11, v10}, Ljava/lang/Math;->min(II)I

    move-result v10

    const/4 v11, 0x0

    .line 2728
    invoke-static {v11, v10}, Ljava/lang/Math;->max(II)I

    move-result v10

    int-to-long v10, v10

    sub-long/2addr v4, v10

    cmp-long v10, v4, v14

    if-lez v10, :cond_1e

    const-wide/16 v10, 0x1

    cmp-long v2, v4, v10

    if-nez v2, :cond_1d

    .line 2732
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzj()Lcom/google/android/gms/measurement/internal/zzgi;

    move-result-object v2

    .line 2733
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzgi;->zzg()Lcom/google/android/gms/measurement/internal/zzgk;

    move-result-object v2

    const-string v3, "Too many error events logged. appId, count"

    .line 2734
    invoke-static {v8}, Lcom/google/android/gms/measurement/internal/zzgi;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    iget-wide v5, v9, Lcom/google/android/gms/measurement/internal/zzar;->zzd:J

    .line 2735
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    .line 2736
    invoke-virtual {v2, v3, v4, v5}, Lcom/google/android/gms/measurement/internal/zzgk;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2737
    :cond_1d
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzf()Lcom/google/android/gms/measurement/internal/zzam;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzam;->zzw()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 2738
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzf()Lcom/google/android/gms/measurement/internal/zzam;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzam;->zzu()V

    return-void

    .line 2740
    :cond_1e
    :try_start_9
    iget-object v4, v2, Lcom/google/android/gms/measurement/internal/zzbh;->zzb:Lcom/google/android/gms/measurement/internal/zzbc;

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzbc;->zzb()Landroid/os/Bundle;

    move-result-object v4

    .line 2741
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzq()Lcom/google/android/gms/measurement/internal/zzop;

    move-result-object v5

    const-string v9, "_o"

    iget-object v10, v2, Lcom/google/android/gms/measurement/internal/zzbh;->zzc:Ljava/lang/String;

    invoke-virtual {v5, v4, v9, v10}, Lcom/google/android/gms/measurement/internal/zzop;->zza(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2742
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzq()Lcom/google/android/gms/measurement/internal/zzop;

    move-result-object v5

    iget-object v9, v3, Lcom/google/android/gms/measurement/internal/zzp;->zzac:Ljava/lang/String;

    invoke-virtual {v5, v8, v9}, Lcom/google/android/gms/measurement/internal/zzop;->zzd(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    const-string v12, "_r"

    if-eqz v5, :cond_1f

    .line 2743
    :try_start_a
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzq()Lcom/google/android/gms/measurement/internal/zzop;

    move-result-object v5

    const-string v9, "_dbg"

    const-wide/16 v10, 0x1

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-virtual {v5, v4, v9, v13}, Lcom/google/android/gms/measurement/internal/zzop;->zza(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2744
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzq()Lcom/google/android/gms/measurement/internal/zzop;

    move-result-object v5

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v5, v4, v12, v9}, Lcom/google/android/gms/measurement/internal/zzop;->zza(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2745
    :cond_1f
    const-string v5, "_s"

    iget-object v9, v2, Lcom/google/android/gms/measurement/internal/zzbh;->zza:Ljava/lang/String;

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_20

    .line 2747
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzf()Lcom/google/android/gms/measurement/internal/zzam;

    move-result-object v5

    iget-object v9, v3, Lcom/google/android/gms/measurement/internal/zzp;->zza:Ljava/lang/String;

    move-object/from16 v10, v22

    .line 2748
    invoke-virtual {v5, v9, v10}, Lcom/google/android/gms/measurement/internal/zzam;->zze(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzom;

    move-result-object v5

    if-eqz v5, :cond_20

    .line 2749
    iget-object v9, v5, Lcom/google/android/gms/measurement/internal/zzom;->zze:Ljava/lang/Object;

    instance-of v9, v9, Ljava/lang/Long;

    if-eqz v9, :cond_20

    .line 2750
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzq()Lcom/google/android/gms/measurement/internal/zzop;

    move-result-object v9

    iget-object v5, v5, Lcom/google/android/gms/measurement/internal/zzom;->zze:Ljava/lang/Object;

    invoke-virtual {v9, v4, v10, v5}, Lcom/google/android/gms/measurement/internal/zzop;->zza(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2751
    :cond_20
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zze()Lcom/google/android/gms/measurement/internal/zzah;

    move-result-object v5

    sget-object v9, Lcom/google/android/gms/measurement/internal/zzbj;->zzdn:Lcom/google/android/gms/measurement/internal/zzfz;

    invoke-virtual {v5, v9}, Lcom/google/android/gms/measurement/internal/zzah;->zza(Lcom/google/android/gms/measurement/internal/zzfz;)Z

    move-result v5

    if-eqz v5, :cond_21

    .line 2752
    iget-object v5, v2, Lcom/google/android/gms/measurement/internal/zzbh;->zzc:Ljava/lang/String;

    const-string v9, "am"

    invoke-static {v5, v9}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_21

    iget-object v5, v2, Lcom/google/android/gms/measurement/internal/zzbh;->zza:Ljava/lang/String;

    const-string v9, "_ai"

    .line 2753
    invoke-static {v5, v9}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_21

    .line 2754
    invoke-virtual {v4, v7}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_21

    .line 2755
    instance-of v9, v5, Ljava/lang/String;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    if-eqz v9, :cond_21

    .line 2756
    :try_start_b
    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v9

    .line 2757
    invoke-virtual {v4, v7}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 2758
    invoke-virtual {v4, v7, v9, v10}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V
    :try_end_b
    .catch Ljava/lang/NumberFormatException; {:try_start_b .. :try_end_b} :catch_2
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 2761
    :catch_2
    :cond_21
    :try_start_c
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzf()Lcom/google/android/gms/measurement/internal/zzam;

    move-result-object v5

    invoke-virtual {v5, v8}, Lcom/google/android/gms/measurement/internal/zzam;->zza(Ljava/lang/String;)J

    move-result-wide v9

    cmp-long v5, v9, v14

    if-lez v5, :cond_22

    .line 2763
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzj()Lcom/google/android/gms/measurement/internal/zzgi;

    move-result-object v5

    .line 2764
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzgi;->zzu()Lcom/google/android/gms/measurement/internal/zzgk;

    move-result-object v5

    const-string v7, "Data lost. Too many events stored on disk, deleted. appId"

    .line 2765
    invoke-static {v8}, Lcom/google/android/gms/measurement/internal/zzgi;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    .line 2766
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    .line 2767
    invoke-virtual {v5, v7, v11, v9}, Lcom/google/android/gms/measurement/internal/zzgk;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2768
    :cond_22
    new-instance v5, Lcom/google/android/gms/measurement/internal/zzba;

    iget-object v10, v1, Lcom/google/android/gms/measurement/internal/zznv;->zzm:Lcom/google/android/gms/measurement/internal/zzhw;

    iget-object v11, v2, Lcom/google/android/gms/measurement/internal/zzbh;->zzc:Ljava/lang/String;

    iget-object v13, v2, Lcom/google/android/gms/measurement/internal/zzbh;->zza:Ljava/lang/String;

    iget-wide v14, v2, Lcom/google/android/gms/measurement/internal/zzbh;->zzd:J

    const-wide/16 v18, 0x0

    move-object v9, v5

    move-object v2, v12

    move-object v12, v8

    const/4 v7, 0x0

    move-wide/from16 v16, v18

    move-object/from16 v18, v4

    invoke-direct/range {v9 .. v18}, Lcom/google/android/gms/measurement/internal/zzba;-><init>(Lcom/google/android/gms/measurement/internal/zzhw;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLandroid/os/Bundle;)V

    .line 2769
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzf()Lcom/google/android/gms/measurement/internal/zzam;

    move-result-object v4

    iget-object v9, v5, Lcom/google/android/gms/measurement/internal/zzba;->zzb:Ljava/lang/String;

    invoke-virtual {v4, v8, v9}, Lcom/google/android/gms/measurement/internal/zzam;->zzd(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzbd;

    move-result-object v4

    if-nez v4, :cond_24

    .line 2771
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzf()Lcom/google/android/gms/measurement/internal/zzam;

    move-result-object v4

    invoke-virtual {v4, v8}, Lcom/google/android/gms/measurement/internal/zzam;->zzc(Ljava/lang/String;)J

    move-result-wide v9

    .line 2772
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zze()Lcom/google/android/gms/measurement/internal/zzah;

    move-result-object v4

    invoke-virtual {v4, v8}, Lcom/google/android/gms/measurement/internal/zzah;->zza(Ljava/lang/String;)I

    move-result v4

    int-to-long v11, v4

    cmp-long v4, v9, v11

    if-ltz v4, :cond_23

    if-eqz v6, :cond_23

    .line 2773
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzj()Lcom/google/android/gms/measurement/internal/zzgi;

    move-result-object v2

    .line 2774
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzgi;->zzg()Lcom/google/android/gms/measurement/internal/zzgk;

    move-result-object v2

    const-string v3, "Too many event names used, ignoring event. appId, name, supported count"

    .line 2775
    invoke-static {v8}, Lcom/google/android/gms/measurement/internal/zzgi;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 2776
    iget-object v6, v1, Lcom/google/android/gms/measurement/internal/zznv;->zzm:Lcom/google/android/gms/measurement/internal/zzhw;

    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzhw;->zzk()Lcom/google/android/gms/measurement/internal/zzgh;

    move-result-object v6

    .line 2777
    iget-object v5, v5, Lcom/google/android/gms/measurement/internal/zzba;->zzb:Ljava/lang/String;

    invoke-virtual {v6, v5}, Lcom/google/android/gms/measurement/internal/zzgh;->zza(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 2778
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zze()Lcom/google/android/gms/measurement/internal/zzah;

    move-result-object v6

    invoke-virtual {v6, v8}, Lcom/google/android/gms/measurement/internal/zzah;->zza(Ljava/lang/String;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 2779
    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/google/android/gms/measurement/internal/zzgk;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2780
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzq()Lcom/google/android/gms/measurement/internal/zzop;

    iget-object v9, v1, Lcom/google/android/gms/measurement/internal/zznv;->zzah:Lcom/google/android/gms/measurement/internal/zzoo;

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v11, 0x8

    const/4 v12, 0x0

    move-object v10, v8

    .line 2781
    invoke-static/range {v9 .. v14}, Lcom/google/android/gms/measurement/internal/zzop;->zza(Lcom/google/android/gms/measurement/internal/zzoo;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 2782
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzf()Lcom/google/android/gms/measurement/internal/zzam;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzam;->zzu()V

    return-void

    .line 2784
    :cond_23
    :try_start_d
    new-instance v4, Lcom/google/android/gms/measurement/internal/zzbd;

    iget-object v11, v5, Lcom/google/android/gms/measurement/internal/zzba;->zzb:Ljava/lang/String;

    iget-wide v14, v5, Lcom/google/android/gms/measurement/internal/zzba;->zzd:J

    const/16 v22, 0x0

    const/16 v23, 0x0

    const-wide/16 v12, 0x0

    const-wide/16 v16, 0x0

    const-wide/16 v18, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object v9, v4

    move-object v10, v8

    move-wide/from16 v28, v14

    move-wide/from16 v14, v16

    move-wide/from16 v16, v28

    invoke-direct/range {v9 .. v23}, Lcom/google/android/gms/measurement/internal/zzbd;-><init>(Ljava/lang/String;Ljava/lang/String;JJJJLjava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;)V

    goto :goto_10

    .line 2786
    :cond_24
    iget-object v6, v1, Lcom/google/android/gms/measurement/internal/zznv;->zzm:Lcom/google/android/gms/measurement/internal/zzhw;

    iget-wide v8, v4, Lcom/google/android/gms/measurement/internal/zzbd;->zzf:J

    invoke-virtual {v5, v6, v8, v9}, Lcom/google/android/gms/measurement/internal/zzba;->zza(Lcom/google/android/gms/measurement/internal/zzhw;J)Lcom/google/android/gms/measurement/internal/zzba;

    move-result-object v5

    .line 2787
    iget-wide v8, v5, Lcom/google/android/gms/measurement/internal/zzba;->zzd:J

    invoke-virtual {v4, v8, v9}, Lcom/google/android/gms/measurement/internal/zzbd;->zza(J)Lcom/google/android/gms/measurement/internal/zzbd;

    move-result-object v4

    .line 2788
    :goto_10
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzf()Lcom/google/android/gms/measurement/internal/zzam;

    move-result-object v6

    invoke-virtual {v6, v4}, Lcom/google/android/gms/measurement/internal/zzam;->zza(Lcom/google/android/gms/measurement/internal/zzbd;)V

    .line 2791
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzl()Lcom/google/android/gms/measurement/internal/zzhp;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zziy;->zzt()V

    .line 2792
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzs()V

    .line 2793
    invoke-static {v5}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2794
    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2795
    iget-object v4, v5, Lcom/google/android/gms/measurement/internal/zzba;->zza:Ljava/lang/String;

    invoke-static {v4}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 2796
    iget-object v4, v5, Lcom/google/android/gms/measurement/internal/zzba;->zza:Ljava/lang/String;

    iget-object v6, v3, Lcom/google/android/gms/measurement/internal/zzp;->zza:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    invoke-static {v4}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(Z)V

    .line 2797
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzgn$zzk;->zzw()Lcom/google/android/gms/internal/measurement/zzgn$zzk$zza;

    move-result-object v4

    const/4 v6, 0x1

    invoke-virtual {v4, v6}, Lcom/google/android/gms/internal/measurement/zzgn$zzk$zza;->zzh(I)Lcom/google/android/gms/internal/measurement/zzgn$zzk$zza;

    move-result-object v4

    const-string v8, "android"

    invoke-virtual {v4, v8}, Lcom/google/android/gms/internal/measurement/zzgn$zzk$zza;->zzp(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzgn$zzk$zza;

    move-result-object v4

    .line 2798
    iget-object v8, v3, Lcom/google/android/gms/measurement/internal/zzp;->zza:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_25

    .line 2799
    iget-object v8, v3, Lcom/google/android/gms/measurement/internal/zzp;->zza:Ljava/lang/String;

    invoke-virtual {v4, v8}, Lcom/google/android/gms/internal/measurement/zzgn$zzk$zza;->zzb(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzgn$zzk$zza;

    .line 2800
    :cond_25
    iget-object v8, v3, Lcom/google/android/gms/measurement/internal/zzp;->zzd:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_26

    .line 2801
    iget-object v8, v3, Lcom/google/android/gms/measurement/internal/zzp;->zzd:Ljava/lang/String;

    invoke-virtual {v4, v8}, Lcom/google/android/gms/internal/measurement/zzgn$zzk$zza;->zzd(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzgn$zzk$zza;

    .line 2802
    :cond_26
    iget-object v8, v3, Lcom/google/android/gms/measurement/internal/zzp;->zzc:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_27

    .line 2803
    iget-object v8, v3, Lcom/google/android/gms/measurement/internal/zzp;->zzc:Ljava/lang/String;

    invoke-virtual {v4, v8}, Lcom/google/android/gms/internal/measurement/zzgn$zzk$zza;->zze(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzgn$zzk$zza;

    .line 2804
    :cond_27
    iget-object v8, v3, Lcom/google/android/gms/measurement/internal/zzp;->zzv:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_28

    .line 2805
    iget-object v8, v3, Lcom/google/android/gms/measurement/internal/zzp;->zzv:Ljava/lang/String;

    invoke-virtual {v4, v8}, Lcom/google/android/gms/internal/measurement/zzgn$zzk$zza;->zzr(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzgn$zzk$zza;

    .line 2806
    :cond_28
    iget-wide v8, v3, Lcom/google/android/gms/measurement/internal/zzp;->zzj:J

    const-wide/32 v10, -0x80000000

    cmp-long v8, v8, v10

    if-eqz v8, :cond_29

    .line 2807
    iget-wide v8, v3, Lcom/google/android/gms/measurement/internal/zzp;->zzj:J

    long-to-int v8, v8

    invoke-virtual {v4, v8}, Lcom/google/android/gms/internal/measurement/zzgn$zzk$zza;->zze(I)Lcom/google/android/gms/internal/measurement/zzgn$zzk$zza;

    .line 2808
    :cond_29
    iget-wide v8, v3, Lcom/google/android/gms/measurement/internal/zzp;->zze:J

    invoke-virtual {v4, v8, v9}, Lcom/google/android/gms/internal/measurement/zzgn$zzk$zza;->zzf(J)Lcom/google/android/gms/internal/measurement/zzgn$zzk$zza;

    .line 2809
    iget-object v8, v3, Lcom/google/android/gms/measurement/internal/zzp;->zzb:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_2a

    .line 2810
    iget-object v8, v3, Lcom/google/android/gms/measurement/internal/zzp;->zzb:Ljava/lang/String;

    invoke-virtual {v4, v8}, Lcom/google/android/gms/internal/measurement/zzgn$zzk$zza;->zzm(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzgn$zzk$zza;

    .line 2811
    :cond_2a
    iget-object v8, v3, Lcom/google/android/gms/measurement/internal/zzp;->zza:Ljava/lang/String;

    .line 2812
    invoke-static {v8}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v1, v8}, Lcom/google/android/gms/measurement/internal/zznv;->zzb(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzjc;

    move-result-object v8

    iget-object v9, v3, Lcom/google/android/gms/measurement/internal/zzp;->zzt:Ljava/lang/String;

    .line 2813
    invoke-static {v9}, Lcom/google/android/gms/measurement/internal/zzjc;->zzb(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzjc;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/google/android/gms/measurement/internal/zzjc;->zza(Lcom/google/android/gms/measurement/internal/zzjc;)Lcom/google/android/gms/measurement/internal/zzjc;

    move-result-object v8

    .line 2814
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzjc;->zzg()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Lcom/google/android/gms/internal/measurement/zzgn$zzk$zza;->zzg(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzgn$zzk$zza;

    .line 2815
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzgn$zzk$zza;->zzx()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_2b

    iget-object v9, v3, Lcom/google/android/gms/measurement/internal/zzp;->zzp:Ljava/lang/String;

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_2b

    .line 2816
    iget-object v9, v3, Lcom/google/android/gms/measurement/internal/zzp;->zzp:Ljava/lang/String;

    invoke-virtual {v4, v9}, Lcom/google/android/gms/internal/measurement/zzgn$zzk$zza;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzgn$zzk$zza;

    .line 2817
    :cond_2b
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzrl;->zza()Z

    move-result v9

    if-eqz v9, :cond_35

    .line 2818
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zze()Lcom/google/android/gms/measurement/internal/zzah;

    move-result-object v9

    iget-object v10, v3, Lcom/google/android/gms/measurement/internal/zzp;->zza:Ljava/lang/String;

    sget-object v11, Lcom/google/android/gms/measurement/internal/zzbj;->zzcg:Lcom/google/android/gms/measurement/internal/zzfz;

    invoke-virtual {v9, v10, v11}, Lcom/google/android/gms/measurement/internal/zzah;->zze(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzfz;)Z

    move-result v9

    if-eqz v9, :cond_35

    .line 2819
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzq()Lcom/google/android/gms/measurement/internal/zzop;

    iget-object v9, v3, Lcom/google/android/gms/measurement/internal/zzp;->zza:Ljava/lang/String;

    invoke-static {v9}, Lcom/google/android/gms/measurement/internal/zzop;->zzd(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_35

    .line 2820
    iget v9, v3, Lcom/google/android/gms/measurement/internal/zzp;->zzaa:I

    invoke-virtual {v4, v9}, Lcom/google/android/gms/internal/measurement/zzgn$zzk$zza;->zzd(I)Lcom/google/android/gms/internal/measurement/zzgn$zzk$zza;

    .line 2821
    iget-wide v9, v3, Lcom/google/android/gms/measurement/internal/zzp;->zzab:J

    .line 2822
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzjc;->zzi()Z

    move-result v8

    const-wide/16 v11, 0x20

    const-wide/16 v13, 0x0

    if-nez v8, :cond_2c

    cmp-long v8, v9, v13

    if-eqz v8, :cond_2c

    const-wide/16 v15, -0x2

    and-long v8, v9, v15

    or-long v9, v8, v11

    :cond_2c
    const-wide/16 v15, 0x1

    cmp-long v8, v9, v15

    if-nez v8, :cond_2d

    move v8, v6

    goto :goto_11

    :cond_2d
    const/4 v8, 0x0

    .line 2825
    :goto_11
    invoke-virtual {v4, v8}, Lcom/google/android/gms/internal/measurement/zzgn$zzk$zza;->zza(Z)Lcom/google/android/gms/internal/measurement/zzgn$zzk$zza;

    cmp-long v8, v9, v13

    if-eqz v8, :cond_36

    .line 2829
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzgn$zzc;->zza()Lcom/google/android/gms/internal/measurement/zzgn$zzc$zza;

    move-result-object v8

    and-long v17, v9, v15

    cmp-long v15, v17, v13

    if-eqz v15, :cond_2e

    move v15, v6

    goto :goto_12

    :cond_2e
    const/4 v15, 0x0

    .line 2830
    :goto_12
    invoke-virtual {v8, v15}, Lcom/google/android/gms/internal/measurement/zzgn$zzc$zza;->zzc(Z)Lcom/google/android/gms/internal/measurement/zzgn$zzc$zza;

    const-wide/16 v15, 0x2

    and-long/2addr v15, v9

    cmp-long v15, v15, v13

    if-eqz v15, :cond_2f

    move v15, v6

    goto :goto_13

    :cond_2f
    const/4 v15, 0x0

    .line 2831
    :goto_13
    invoke-virtual {v8, v15}, Lcom/google/android/gms/internal/measurement/zzgn$zzc$zza;->zze(Z)Lcom/google/android/gms/internal/measurement/zzgn$zzc$zza;

    const-wide/16 v15, 0x4

    and-long/2addr v15, v9

    cmp-long v15, v15, v13

    if-eqz v15, :cond_30

    move v15, v6

    goto :goto_14

    :cond_30
    const/4 v15, 0x0

    .line 2832
    :goto_14
    invoke-virtual {v8, v15}, Lcom/google/android/gms/internal/measurement/zzgn$zzc$zza;->zzf(Z)Lcom/google/android/gms/internal/measurement/zzgn$zzc$zza;

    const-wide/16 v15, 0x8

    and-long/2addr v15, v9

    cmp-long v15, v15, v13

    if-eqz v15, :cond_31

    move v15, v6

    goto :goto_15

    :cond_31
    const/4 v15, 0x0

    .line 2833
    :goto_15
    invoke-virtual {v8, v15}, Lcom/google/android/gms/internal/measurement/zzgn$zzc$zza;->zzg(Z)Lcom/google/android/gms/internal/measurement/zzgn$zzc$zza;

    const-wide/16 v15, 0x10

    and-long/2addr v15, v9

    cmp-long v15, v15, v13

    if-eqz v15, :cond_32

    move v15, v6

    goto :goto_16

    :cond_32
    const/4 v15, 0x0

    .line 2834
    :goto_16
    invoke-virtual {v8, v15}, Lcom/google/android/gms/internal/measurement/zzgn$zzc$zza;->zzb(Z)Lcom/google/android/gms/internal/measurement/zzgn$zzc$zza;

    and-long/2addr v11, v9

    cmp-long v11, v11, v13

    if-eqz v11, :cond_33

    move v11, v6

    goto :goto_17

    :cond_33
    const/4 v11, 0x0

    .line 2835
    :goto_17
    invoke-virtual {v8, v11}, Lcom/google/android/gms/internal/measurement/zzgn$zzc$zza;->zza(Z)Lcom/google/android/gms/internal/measurement/zzgn$zzc$zza;

    const-wide/16 v11, 0x40

    and-long/2addr v9, v11

    cmp-long v9, v9, v13

    if-eqz v9, :cond_34

    move v9, v6

    goto :goto_18

    :cond_34
    const/4 v9, 0x0

    .line 2836
    :goto_18
    invoke-virtual {v8, v9}, Lcom/google/android/gms/internal/measurement/zzgn$zzc$zza;->zzd(Z)Lcom/google/android/gms/internal/measurement/zzgn$zzc$zza;

    .line 2837
    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzlc$zzb;->zzai()Lcom/google/android/gms/internal/measurement/zzml;

    move-result-object v8

    check-cast v8, Lcom/google/android/gms/internal/measurement/zzlc;

    check-cast v8, Lcom/google/android/gms/internal/measurement/zzgn$zzc;

    .line 2838
    invoke-virtual {v4, v8}, Lcom/google/android/gms/internal/measurement/zzgn$zzk$zza;->zza(Lcom/google/android/gms/internal/measurement/zzgn$zzc;)Lcom/google/android/gms/internal/measurement/zzgn$zzk$zza;

    goto :goto_19

    :cond_35
    const-wide/16 v13, 0x0

    .line 2839
    :cond_36
    :goto_19
    iget-wide v8, v3, Lcom/google/android/gms/measurement/internal/zzp;->zzf:J

    cmp-long v8, v8, v13

    if-eqz v8, :cond_37

    .line 2840
    iget-wide v8, v3, Lcom/google/android/gms/measurement/internal/zzp;->zzf:J

    invoke-virtual {v4, v8, v9}, Lcom/google/android/gms/internal/measurement/zzgn$zzk$zza;->zzc(J)Lcom/google/android/gms/internal/measurement/zzgn$zzk$zza;

    .line 2841
    :cond_37
    iget-wide v8, v3, Lcom/google/android/gms/measurement/internal/zzp;->zzr:J

    invoke-virtual {v4, v8, v9}, Lcom/google/android/gms/internal/measurement/zzgn$zzk$zza;->zzd(J)Lcom/google/android/gms/internal/measurement/zzgn$zzk$zza;

    .line 2842
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzp()Lcom/google/android/gms/measurement/internal/zzol;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzol;->zzu()Ljava/util/List;

    move-result-object v8

    if-eqz v8, :cond_38

    .line 2844
    invoke-virtual {v4, v8}, Lcom/google/android/gms/internal/measurement/zzgn$zzk$zza;->zzc(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/measurement/zzgn$zzk$zza;

    .line 2845
    :cond_38
    iget-object v8, v3, Lcom/google/android/gms/measurement/internal/zzp;->zza:Ljava/lang/String;

    .line 2846
    invoke-static {v8}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v1, v8}, Lcom/google/android/gms/measurement/internal/zznv;->zzb(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzjc;

    move-result-object v8

    iget-object v9, v3, Lcom/google/android/gms/measurement/internal/zzp;->zzt:Ljava/lang/String;

    .line 2847
    invoke-static {v9}, Lcom/google/android/gms/measurement/internal/zzjc;->zzb(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzjc;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/google/android/gms/measurement/internal/zzjc;->zza(Lcom/google/android/gms/measurement/internal/zzjc;)Lcom/google/android/gms/measurement/internal/zzjc;

    move-result-object v8

    .line 2848
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzjc;->zzi()Z

    move-result v9

    if-eqz v9, :cond_3d

    iget-boolean v9, v3, Lcom/google/android/gms/measurement/internal/zzp;->zzn:Z

    if-eqz v9, :cond_3d

    .line 2850
    iget-object v9, v1, Lcom/google/android/gms/measurement/internal/zznv;->zzj:Lcom/google/android/gms/measurement/internal/zzms;

    .line 2851
    iget-object v10, v3, Lcom/google/android/gms/measurement/internal/zzp;->zza:Ljava/lang/String;

    .line 2852
    invoke-virtual {v9, v10, v8}, Lcom/google/android/gms/measurement/internal/zzms;->zza(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzjc;)Landroid/util/Pair;

    move-result-object v9

    if-eqz v9, :cond_3d

    .line 2853
    iget-object v10, v9, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v10, Ljava/lang/CharSequence;

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_3d

    .line 2854
    iget-boolean v10, v3, Lcom/google/android/gms/measurement/internal/zzp;->zzn:Z

    if-eqz v10, :cond_3d

    .line 2855
    iget-object v10, v9, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v4, v10}, Lcom/google/android/gms/internal/measurement/zzgn$zzk$zza;->zzq(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzgn$zzk$zza;

    .line 2856
    iget-object v10, v9, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-eqz v10, :cond_39

    .line 2857
    iget-object v10, v9, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v10, Ljava/lang/Boolean;

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    invoke-virtual {v4, v10}, Lcom/google/android/gms/internal/measurement/zzgn$zzk$zza;->zzc(Z)Lcom/google/android/gms/internal/measurement/zzgn$zzk$zza;

    .line 2858
    :cond_39
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzpo;->zza()Z

    move-result v10

    if-eqz v10, :cond_3d

    .line 2859
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zze()Lcom/google/android/gms/measurement/internal/zzah;

    move-result-object v10

    sget-object v11, Lcom/google/android/gms/measurement/internal/zzbj;->zzcr:Lcom/google/android/gms/measurement/internal/zzfz;

    invoke-virtual {v10, v11}, Lcom/google/android/gms/measurement/internal/zzah;->zza(Lcom/google/android/gms/measurement/internal/zzfz;)Z

    move-result v10

    if-eqz v10, :cond_3d

    iget-object v10, v5, Lcom/google/android/gms/measurement/internal/zzba;->zzb:Ljava/lang/String;

    move-object/from16 v11, v27

    .line 2860
    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_3d

    iget-object v9, v9, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v9, Ljava/lang/String;

    const-string v10, "00000000-0000-0000-0000-000000000000"

    .line 2861
    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_3d

    .line 2862
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzf()Lcom/google/android/gms/measurement/internal/zzam;

    move-result-object v9

    iget-object v10, v3, Lcom/google/android/gms/measurement/internal/zzp;->zza:Ljava/lang/String;

    invoke-virtual {v9, v10}, Lcom/google/android/gms/measurement/internal/zzam;->zze(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzh;

    move-result-object v9

    if-eqz v9, :cond_3d

    .line 2863
    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/zzh;->zzau()Z

    move-result v10

    if-eqz v10, :cond_3d

    .line 2864
    iget-object v10, v3, Lcom/google/android/gms/measurement/internal/zzp;->zza:Ljava/lang/String;

    const/4 v12, 0x0

    invoke-direct {v1, v10, v12, v7, v7}, Lcom/google/android/gms/measurement/internal/zznv;->zza(Ljava/lang/String;ZLjava/lang/Long;Ljava/lang/Long;)V

    .line 2865
    new-instance v10, Landroid/os/Bundle;

    invoke-direct {v10}, Landroid/os/Bundle;-><init>()V

    .line 2866
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zze()Lcom/google/android/gms/measurement/internal/zzah;

    move-result-object v12

    sget-object v15, Lcom/google/android/gms/measurement/internal/zzbj;->zzcz:Lcom/google/android/gms/measurement/internal/zzfz;

    invoke-virtual {v12, v15}, Lcom/google/android/gms/measurement/internal/zzah;->zza(Lcom/google/android/gms/measurement/internal/zzfz;)Z

    move-result v12
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    const-string v15, "_pfo"

    if-eqz v12, :cond_3b

    .line 2867
    :try_start_e
    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/zzh;->zzy()Ljava/lang/Long;

    move-result-object v12

    if-eqz v12, :cond_3a

    .line 2870
    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-static {v13, v14, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    .line 2871
    invoke-virtual {v10, v15, v6, v7}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 2872
    :cond_3a
    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/zzh;->zzz()Ljava/lang/Long;

    move-result-object v6

    if-eqz v6, :cond_3c

    .line 2874
    const-string v7, "_uwa"

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v13

    invoke-virtual {v10, v7, v13, v14}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    goto :goto_1a

    .line 2875
    :cond_3b
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zze()Lcom/google/android/gms/measurement/internal/zzah;

    move-result-object v6

    sget-object v7, Lcom/google/android/gms/measurement/internal/zzbj;->zzcy:Lcom/google/android/gms/measurement/internal/zzfz;

    invoke-virtual {v6, v7}, Lcom/google/android/gms/measurement/internal/zzah;->zza(Lcom/google/android/gms/measurement/internal/zzfz;)Z

    move-result v6

    if-eqz v6, :cond_3c

    .line 2877
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzf()Lcom/google/android/gms/measurement/internal/zzam;

    move-result-object v6

    iget-object v7, v3, Lcom/google/android/gms/measurement/internal/zzp;->zza:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lcom/google/android/gms/measurement/internal/zzam;->zzb(Ljava/lang/String;)J

    move-result-wide v6

    const-wide/16 v12, 0x1

    sub-long/2addr v6, v12

    const-wide/16 v12, 0x0

    .line 2879
    invoke-static {v12, v13, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    .line 2880
    invoke-virtual {v10, v15, v6, v7}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    :cond_3c
    :goto_1a
    const-wide/16 v6, 0x1

    .line 2881
    invoke-virtual {v10, v2, v6, v7}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 2882
    iget-object v6, v1, Lcom/google/android/gms/measurement/internal/zznv;->zzah:Lcom/google/android/gms/measurement/internal/zzoo;

    iget-object v7, v3, Lcom/google/android/gms/measurement/internal/zzp;->zza:Ljava/lang/String;

    invoke-interface {v6, v7, v11, v10}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 2884
    :cond_3d
    iget-object v6, v1, Lcom/google/android/gms/measurement/internal/zznv;->zzm:Lcom/google/android/gms/measurement/internal/zzhw;

    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzhw;->zzg()Lcom/google/android/gms/measurement/internal/zzbb;

    move-result-object v6

    .line 2885
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzix;->zzac()V

    .line 2886
    sget-object v6, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 2887
    invoke-virtual {v4, v6}, Lcom/google/android/gms/internal/measurement/zzgn$zzk$zza;->zzi(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzgn$zzk$zza;

    move-result-object v6

    .line 2888
    iget-object v7, v1, Lcom/google/android/gms/measurement/internal/zznv;->zzm:Lcom/google/android/gms/measurement/internal/zzhw;

    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzhw;->zzg()Lcom/google/android/gms/measurement/internal/zzbb;

    move-result-object v7

    .line 2889
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzix;->zzac()V

    .line 2890
    sget-object v7, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    .line 2891
    invoke-virtual {v6, v7}, Lcom/google/android/gms/internal/measurement/zzgn$zzk$zza;->zzo(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzgn$zzk$zza;

    move-result-object v6

    .line 2892
    iget-object v7, v1, Lcom/google/android/gms/measurement/internal/zznv;->zzm:Lcom/google/android/gms/measurement/internal/zzhw;

    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzhw;->zzg()Lcom/google/android/gms/measurement/internal/zzbb;

    move-result-object v7

    .line 2893
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzbb;->zzg()J

    move-result-wide v9

    long-to-int v7, v9

    invoke-virtual {v6, v7}, Lcom/google/android/gms/internal/measurement/zzgn$zzk$zza;->zzj(I)Lcom/google/android/gms/internal/measurement/zzgn$zzk$zza;

    move-result-object v6

    .line 2894
    iget-object v7, v1, Lcom/google/android/gms/measurement/internal/zznv;->zzm:Lcom/google/android/gms/measurement/internal/zzhw;

    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzhw;->zzg()Lcom/google/android/gms/measurement/internal/zzbb;

    move-result-object v7

    .line 2895
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzbb;->zzh()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/google/android/gms/internal/measurement/zzgn$zzk$zza;->zzs(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzgn$zzk$zza;

    .line 2896
    iget-wide v6, v3, Lcom/google/android/gms/measurement/internal/zzp;->zzx:J

    invoke-virtual {v4, v6, v7}, Lcom/google/android/gms/internal/measurement/zzgn$zzk$zza;->zzj(J)Lcom/google/android/gms/internal/measurement/zzgn$zzk$zza;

    .line 2897
    iget-object v6, v1, Lcom/google/android/gms/measurement/internal/zznv;->zzm:Lcom/google/android/gms/measurement/internal/zzhw;

    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzhw;->zzac()Z

    move-result v6

    if-eqz v6, :cond_3e

    .line 2898
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzgn$zzk$zza;->zzt()Ljava/lang/String;

    const/4 v6, 0x0

    .line 2899
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_3e

    .line 2900
    invoke-virtual {v4, v6}, Lcom/google/android/gms/internal/measurement/zzgn$zzk$zza;->zzj(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzgn$zzk$zza;

    .line 2901
    :cond_3e
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzf()Lcom/google/android/gms/measurement/internal/zzam;

    move-result-object v6

    iget-object v7, v3, Lcom/google/android/gms/measurement/internal/zzp;->zza:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lcom/google/android/gms/measurement/internal/zzam;->zze(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzh;

    move-result-object v6

    if-nez v6, :cond_40

    .line 2903
    new-instance v6, Lcom/google/android/gms/measurement/internal/zzh;

    iget-object v7, v1, Lcom/google/android/gms/measurement/internal/zznv;->zzm:Lcom/google/android/gms/measurement/internal/zzhw;

    iget-object v9, v3, Lcom/google/android/gms/measurement/internal/zzp;->zza:Ljava/lang/String;

    invoke-direct {v6, v7, v9}, Lcom/google/android/gms/measurement/internal/zzh;-><init>(Lcom/google/android/gms/measurement/internal/zzhw;Ljava/lang/String;)V

    .line 2904
    invoke-direct {v1, v8}, Lcom/google/android/gms/measurement/internal/zznv;->zza(Lcom/google/android/gms/measurement/internal/zzjc;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/google/android/gms/measurement/internal/zzh;->zzb(Ljava/lang/String;)V

    .line 2905
    iget-object v7, v3, Lcom/google/android/gms/measurement/internal/zzp;->zzk:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lcom/google/android/gms/measurement/internal/zzh;->zze(Ljava/lang/String;)V

    .line 2906
    iget-object v7, v3, Lcom/google/android/gms/measurement/internal/zzp;->zzb:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lcom/google/android/gms/measurement/internal/zzh;->zzf(Ljava/lang/String;)V

    .line 2907
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzjc;->zzi()Z

    move-result v7

    if-eqz v7, :cond_3f

    .line 2909
    iget-object v7, v1, Lcom/google/android/gms/measurement/internal/zznv;->zzj:Lcom/google/android/gms/measurement/internal/zzms;

    .line 2910
    iget-object v9, v3, Lcom/google/android/gms/measurement/internal/zzp;->zza:Ljava/lang/String;

    iget-boolean v10, v3, Lcom/google/android/gms/measurement/internal/zzp;->zzn:Z

    .line 2911
    invoke-virtual {v7, v9, v10}, Lcom/google/android/gms/measurement/internal/zzms;->zza(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v7

    .line 2912
    invoke-virtual {v6, v7}, Lcom/google/android/gms/measurement/internal/zzh;->zzh(Ljava/lang/String;)V

    :cond_3f
    const-wide/16 v9, 0x0

    .line 2913
    invoke-virtual {v6, v9, v10}, Lcom/google/android/gms/measurement/internal/zzh;->zzq(J)V

    .line 2914
    invoke-virtual {v6, v9, v10}, Lcom/google/android/gms/measurement/internal/zzh;->zzr(J)V

    .line 2915
    invoke-virtual {v6, v9, v10}, Lcom/google/android/gms/measurement/internal/zzh;->zzp(J)V

    .line 2916
    iget-object v7, v3, Lcom/google/android/gms/measurement/internal/zzp;->zzc:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lcom/google/android/gms/measurement/internal/zzh;->zzd(Ljava/lang/String;)V

    .line 2917
    iget-wide v9, v3, Lcom/google/android/gms/measurement/internal/zzp;->zzj:J

    invoke-virtual {v6, v9, v10}, Lcom/google/android/gms/measurement/internal/zzh;->zzb(J)V

    .line 2918
    iget-object v7, v3, Lcom/google/android/gms/measurement/internal/zzp;->zzd:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lcom/google/android/gms/measurement/internal/zzh;->zzc(Ljava/lang/String;)V

    .line 2919
    iget-wide v9, v3, Lcom/google/android/gms/measurement/internal/zzp;->zze:J

    invoke-virtual {v6, v9, v10}, Lcom/google/android/gms/measurement/internal/zzh;->zzn(J)V

    .line 2920
    iget-wide v9, v3, Lcom/google/android/gms/measurement/internal/zzp;->zzf:J

    invoke-virtual {v6, v9, v10}, Lcom/google/android/gms/measurement/internal/zzh;->zzk(J)V

    .line 2921
    iget-boolean v7, v3, Lcom/google/android/gms/measurement/internal/zzp;->zzh:Z

    invoke-virtual {v6, v7}, Lcom/google/android/gms/measurement/internal/zzh;->zzb(Z)V

    .line 2922
    iget-wide v9, v3, Lcom/google/android/gms/measurement/internal/zzp;->zzr:J

    invoke-virtual {v6, v9, v10}, Lcom/google/android/gms/measurement/internal/zzh;->zzl(J)V

    .line 2923
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzf()Lcom/google/android/gms/measurement/internal/zzam;

    move-result-object v7

    const/4 v9, 0x0

    .line 2924
    invoke-virtual {v7, v6, v9, v9}, Lcom/google/android/gms/measurement/internal/zzam;->zza(Lcom/google/android/gms/measurement/internal/zzh;ZZ)V

    goto :goto_1b

    :cond_40
    const/4 v9, 0x0

    .line 2925
    :goto_1b
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzjc;->zzj()Z

    move-result v7

    if-eqz v7, :cond_41

    .line 2926
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzh;->zzad()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_41

    .line 2927
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzh;->zzad()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v4, v7}, Lcom/google/android/gms/internal/measurement/zzgn$zzk$zza;->zzc(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzgn$zzk$zza;

    .line 2928
    :cond_41
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzh;->zzag()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_42

    .line 2929
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzh;->zzag()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v4, v7}, Lcom/google/android/gms/internal/measurement/zzgn$zzk$zza;->zzl(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzgn$zzk$zza;

    .line 2930
    :cond_42
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzf()Lcom/google/android/gms/measurement/internal/zzam;

    move-result-object v7

    iget-object v8, v3, Lcom/google/android/gms/measurement/internal/zzp;->zza:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lcom/google/android/gms/measurement/internal/zzam;->zzl(Ljava/lang/String;)Ljava/util/List;

    move-result-object v7

    move v12, v9

    .line 2931
    :goto_1c
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v8

    if-ge v12, v8, :cond_44

    .line 2932
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzgn$zzo;->zze()Lcom/google/android/gms/internal/measurement/zzgn$zzo$zza;

    move-result-object v8

    .line 2933
    invoke-interface {v7, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/google/android/gms/measurement/internal/zzom;

    iget-object v10, v10, Lcom/google/android/gms/measurement/internal/zzom;->zzc:Ljava/lang/String;

    invoke-virtual {v8, v10}, Lcom/google/android/gms/internal/measurement/zzgn$zzo$zza;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzgn$zzo$zza;

    move-result-object v8

    .line 2934
    invoke-interface {v7, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/google/android/gms/measurement/internal/zzom;

    iget-wide v10, v10, Lcom/google/android/gms/measurement/internal/zzom;->zzd:J

    invoke-virtual {v8, v10, v11}, Lcom/google/android/gms/internal/measurement/zzgn$zzo$zza;->zzb(J)Lcom/google/android/gms/internal/measurement/zzgn$zzo$zza;

    move-result-object v8

    .line 2935
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzp()Lcom/google/android/gms/measurement/internal/zzol;

    move-result-object v10

    invoke-interface {v7, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/google/android/gms/measurement/internal/zzom;

    iget-object v11, v11, Lcom/google/android/gms/measurement/internal/zzom;->zze:Ljava/lang/Object;

    invoke-virtual {v10, v8, v11}, Lcom/google/android/gms/measurement/internal/zzol;->zza(Lcom/google/android/gms/internal/measurement/zzgn$zzo$zza;Ljava/lang/Object;)V

    .line 2936
    invoke-virtual {v4, v8}, Lcom/google/android/gms/internal/measurement/zzgn$zzk$zza;->zza(Lcom/google/android/gms/internal/measurement/zzgn$zzo$zza;)Lcom/google/android/gms/internal/measurement/zzgn$zzk$zza;

    .line 2937
    const-string v8, "_sid"

    invoke-interface {v7, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/google/android/gms/measurement/internal/zzom;

    iget-object v10, v10, Lcom/google/android/gms/measurement/internal/zzom;->zzc:Ljava/lang/String;

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_43

    .line 2938
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzh;->zzv()J

    move-result-wide v10

    const-wide/16 v13, 0x0

    cmp-long v8, v10, v13

    if-eqz v8, :cond_43

    .line 2940
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzp()Lcom/google/android/gms/measurement/internal/zzol;

    move-result-object v8

    iget-object v10, v3, Lcom/google/android/gms/measurement/internal/zzp;->zzv:Ljava/lang/String;

    invoke-virtual {v8, v10}, Lcom/google/android/gms/measurement/internal/zzol;->zza(Ljava/lang/String;)J

    move-result-wide v10

    .line 2941
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzh;->zzv()J

    move-result-wide v13

    cmp-long v8, v10, v13

    if-eqz v8, :cond_43

    .line 2942
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzgn$zzk$zza;->zzr()Lcom/google/android/gms/internal/measurement/zzgn$zzk$zza;
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    :cond_43
    add-int/lit8 v12, v12, 0x1

    goto :goto_1c

    .line 2945
    :cond_44
    :try_start_f
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzf()Lcom/google/android/gms/measurement/internal/zzam;

    move-result-object v3

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzlc$zzb;->zzai()Lcom/google/android/gms/internal/measurement/zzml;

    move-result-object v6

    check-cast v6, Lcom/google/android/gms/internal/measurement/zzlc;

    check-cast v6, Lcom/google/android/gms/internal/measurement/zzgn$zzk;

    invoke-virtual {v3, v6}, Lcom/google/android/gms/measurement/internal/zzam;->zza(Lcom/google/android/gms/internal/measurement/zzgn$zzk;)J

    move-result-wide v3
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_3
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    .line 2953
    :try_start_10
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzf()Lcom/google/android/gms/measurement/internal/zzam;

    move-result-object v6

    .line 2954
    iget-object v7, v5, Lcom/google/android/gms/measurement/internal/zzba;->zzf:Lcom/google/android/gms/measurement/internal/zzbc;

    if-eqz v7, :cond_47

    .line 2955
    iget-object v7, v5, Lcom/google/android/gms/measurement/internal/zzba;->zzf:Lcom/google/android/gms/measurement/internal/zzbc;

    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzbc;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_45
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_46

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 2956
    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_45

    :goto_1d
    const/4 v13, 0x1

    goto :goto_1e

    .line 2959
    :cond_46
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzi()Lcom/google/android/gms/measurement/internal/zzhg;

    move-result-object v2

    iget-object v7, v5, Lcom/google/android/gms/measurement/internal/zzba;->zza:Ljava/lang/String;

    iget-object v8, v5, Lcom/google/android/gms/measurement/internal/zzba;->zzb:Ljava/lang/String;

    invoke-virtual {v2, v7, v8}, Lcom/google/android/gms/measurement/internal/zzhg;->zzc(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    .line 2961
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzf()Lcom/google/android/gms/measurement/internal/zzam;

    move-result-object v28

    .line 2962
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzx()J

    move-result-wide v29

    iget-object v7, v5, Lcom/google/android/gms/measurement/internal/zzba;->zza:Ljava/lang/String;

    const/16 v36, 0x0

    const/16 v37, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x0

    move-object/from16 v31, v7

    .line 2963
    invoke-virtual/range {v28 .. v37}, Lcom/google/android/gms/measurement/internal/zzam;->zza(JLjava/lang/String;ZZZZZZ)Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object v7

    if-eqz v2, :cond_47

    .line 2964
    iget-wide v7, v7, Lcom/google/android/gms/measurement/internal/zzar;->zze:J

    .line 2965
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zze()Lcom/google/android/gms/measurement/internal/zzah;

    move-result-object v2

    iget-object v10, v5, Lcom/google/android/gms/measurement/internal/zzba;->zza:Ljava/lang/String;

    invoke-virtual {v2, v10}, Lcom/google/android/gms/measurement/internal/zzah;->zzc(Ljava/lang/String;)I

    move-result v2

    int-to-long v10, v2

    cmp-long v2, v7, v10

    if-gez v2, :cond_47

    goto :goto_1d

    :cond_47
    move v13, v9

    .line 2966
    :goto_1e
    invoke-virtual {v6, v5, v3, v4, v13}, Lcom/google/android/gms/measurement/internal/zzam;->zza(Lcom/google/android/gms/measurement/internal/zzba;JZ)Z

    move-result v2

    if-eqz v2, :cond_48

    const-wide/16 v2, 0x0

    .line 2967
    iput-wide v2, v1, Lcom/google/android/gms/measurement/internal/zznv;->zzp:J

    goto :goto_1f

    :catch_3
    move-exception v0

    move-object v2, v0

    .line 2948
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzj()Lcom/google/android/gms/measurement/internal/zzgi;

    move-result-object v3

    .line 2949
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzgi;->zzg()Lcom/google/android/gms/measurement/internal/zzgk;

    move-result-object v3

    const-string v5, "Data loss. Failed to insert raw event metadata. appId"

    .line 2950
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzgn$zzk$zza;->zzt()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/gms/measurement/internal/zzgi;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 2951
    invoke-virtual {v3, v5, v4, v2}, Lcom/google/android/gms/measurement/internal/zzgk;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2968
    :cond_48
    :goto_1f
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzf()Lcom/google/android/gms/measurement/internal/zzam;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzam;->zzw()V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    .line 2969
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzf()Lcom/google/android/gms/measurement/internal/zzam;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzam;->zzu()V

    .line 2973
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzac()V

    .line 2974
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzj()Lcom/google/android/gms/measurement/internal/zzgi;

    move-result-object v2

    .line 2975
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzgi;->zzp()Lcom/google/android/gms/measurement/internal/zzgk;

    move-result-object v2

    .line 2976
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v3

    sub-long v3, v3, v24

    const-wide/32 v5, 0x7a120

    add-long/2addr v3, v5

    const-wide/32 v5, 0xf4240

    div-long/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 2977
    const-string v4, "Background event processing time, ms"

    invoke-virtual {v2, v4, v3}, Lcom/google/android/gms/measurement/internal/zzgk;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    :catchall_0
    move-exception v0

    move-object v2, v0

    .line 2971
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzf()Lcom/google/android/gms/measurement/internal/zzam;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzam;->zzu()V

    .line 2972
    throw v2
.end method

.method private final zzd(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzaz;
    .locals 2

    .line 290
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzl()Lcom/google/android/gms/measurement/internal/zzhp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zziy;->zzt()V

    .line 291
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzs()V

    .line 292
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zznv;->zzad:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/measurement/internal/zzaz;

    if-nez v0, :cond_0

    .line 294
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzf()Lcom/google/android/gms/measurement/internal/zzam;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/measurement/internal/zzam;->zzg(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzaz;

    move-result-object v0

    .line 295
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zznv;->zzad:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method

.method private final zze(Ljava/lang/String;)V
    .locals 11

    .line 2453
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzl()Lcom/google/android/gms/measurement/internal/zzhp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zziy;->zzt()V

    .line 2454
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzs()V

    const/4 v0, 0x1

    .line 2455
    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zznv;->zzw:Z

    const/4 v1, 0x0

    .line 2456
    :try_start_0
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zznv;->zzm:Lcom/google/android/gms/measurement/internal/zzhw;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzhw;->zzr()Lcom/google/android/gms/measurement/internal/zzlp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzlp;->zzab()Ljava/lang/Boolean;

    move-result-object v2

    if-nez v2, :cond_0

    .line 2458
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzj()Lcom/google/android/gms/measurement/internal/zzgi;

    move-result-object p1

    .line 2459
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzgi;->zzu()Lcom/google/android/gms/measurement/internal/zzgk;

    move-result-object p1

    const-string v0, "Upload data called on the client side before use of service was decided"

    .line 2460
    invoke-virtual {p1, v0}, Lcom/google/android/gms/measurement/internal/zzgk;->zza(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2461
    iput-boolean v1, p0, Lcom/google/android/gms/measurement/internal/zznv;->zzw:Z

    .line 2462
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzaa()V

    return-void

    .line 2464
    :cond_0
    :try_start_1
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2465
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzj()Lcom/google/android/gms/measurement/internal/zzgi;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzgi;->zzg()Lcom/google/android/gms/measurement/internal/zzgk;

    move-result-object p1

    const-string v0, "Upload called in the client side when service should be used"

    invoke-virtual {p1, v0}, Lcom/google/android/gms/measurement/internal/zzgk;->zza(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2466
    iput-boolean v1, p0, Lcom/google/android/gms/measurement/internal/zznv;->zzw:Z

    .line 2467
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzaa()V

    return-void

    .line 2469
    :cond_1
    :try_start_2
    iget-wide v2, p0, Lcom/google/android/gms/measurement/internal/zznv;->zzp:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_2

    .line 2470
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzac()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2471
    iput-boolean v1, p0, Lcom/google/android/gms/measurement/internal/zznv;->zzw:Z

    .line 2472
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzaa()V

    return-void

    .line 2474
    :cond_2
    :try_start_3
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzae()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2475
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzj()Lcom/google/android/gms/measurement/internal/zzgi;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzgi;->zzp()Lcom/google/android/gms/measurement/internal/zzgk;

    move-result-object p1

    const-string v0, "Uploading requested multiple times"

    invoke-virtual {p1, v0}, Lcom/google/android/gms/measurement/internal/zzgk;->zza(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2476
    iput-boolean v1, p0, Lcom/google/android/gms/measurement/internal/zznv;->zzw:Z

    .line 2477
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzaa()V

    return-void

    .line 2479
    :cond_3
    :try_start_4
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzh()Lcom/google/android/gms/measurement/internal/zzgp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzgp;->zzu()Z

    move-result v2

    if-nez v2, :cond_4

    .line 2480
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzj()Lcom/google/android/gms/measurement/internal/zzgi;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzgi;->zzp()Lcom/google/android/gms/measurement/internal/zzgk;

    move-result-object p1

    const-string v0, "Network not connected, ignoring upload request"

    invoke-virtual {p1, v0}, Lcom/google/android/gms/measurement/internal/zzgk;->zza(Ljava/lang/String;)V

    .line 2481
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzac()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 2482
    iput-boolean v1, p0, Lcom/google/android/gms/measurement/internal/zznv;->zzw:Z

    .line 2483
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzaa()V

    return-void

    .line 2485
    :cond_4
    :try_start_5
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzf()Lcom/google/android/gms/measurement/internal/zzam;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/google/android/gms/measurement/internal/zzam;->zzs(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 2486
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzj()Lcom/google/android/gms/measurement/internal/zzgi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgi;->zzp()Lcom/google/android/gms/measurement/internal/zzgk;

    move-result-object v0

    const-string v2, "Upload queue has no batches for appId"

    invoke-virtual {v0, v2, p1}, Lcom/google/android/gms/measurement/internal/zzgk;->zza(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 2487
    iput-boolean v1, p0, Lcom/google/android/gms/measurement/internal/zznv;->zzw:Z

    .line 2488
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzaa()V

    return-void

    .line 2490
    :cond_5
    :try_start_6
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzf()Lcom/google/android/gms/measurement/internal/zzam;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/google/android/gms/measurement/internal/zzam;->zzj(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzog;

    move-result-object v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    if-nez v2, :cond_6

    .line 2492
    iput-boolean v1, p0, Lcom/google/android/gms/measurement/internal/zznv;->zzw:Z

    .line 2493
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzaa()V

    return-void

    .line 2495
    :cond_6
    :try_start_7
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzog;->zzb()Lcom/google/android/gms/internal/measurement/zzgn$zzj;

    move-result-object v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    if-nez v3, :cond_7

    .line 2497
    iput-boolean v1, p0, Lcom/google/android/gms/measurement/internal/zznv;->zzw:Z

    .line 2498
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzaa()V

    return-void

    .line 2500
    :cond_7
    :try_start_8
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzp()Lcom/google/android/gms/measurement/internal/zzol;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/google/android/gms/measurement/internal/zzol;->zza(Lcom/google/android/gms/internal/measurement/zzgn$zzj;)Ljava/lang/String;

    move-result-object v4

    .line 2501
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzji;->zzca()[B

    move-result-object v8

    .line 2502
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzj()Lcom/google/android/gms/measurement/internal/zzgi;

    move-result-object v3

    .line 2503
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzgi;->zzp()Lcom/google/android/gms/measurement/internal/zzgk;

    move-result-object v3

    const-string v5, "Uploading data from upload queue. appId, uncompressed size, data"

    array-length v6, v8

    .line 2504
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 2505
    invoke-virtual {v3, v5, p1, v6, v4}, Lcom/google/android/gms/measurement/internal/zzgk;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 2506
    :try_start_9
    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zznv;->zzv:Z

    .line 2507
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzh()Lcom/google/android/gms/measurement/internal/zzgp;

    move-result-object v5

    new-instance v7, Ljava/net/URL;

    .line 2508
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzog;->zzc()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v7, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 2509
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzog;->zzd()Ljava/util/Map;

    move-result-object v9

    new-instance v10, Lcom/google/android/gms/measurement/internal/zznz;

    invoke-direct {v10, p0, p1, v2}, Lcom/google/android/gms/measurement/internal/zznz;-><init>(Lcom/google/android/gms/measurement/internal/zznv;Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzog;)V

    move-object v6, p1

    .line 2510
    invoke-virtual/range {v5 .. v10}, Lcom/google/android/gms/measurement/internal/zzgp;->zza(Ljava/lang/String;Ljava/net/URL;[BLjava/util/Map;Lcom/google/android/gms/measurement/internal/zzgo;)V
    :try_end_9
    .catch Ljava/net/MalformedURLException; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto :goto_0

    .line 2513
    :catch_0
    :try_start_a
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzj()Lcom/google/android/gms/measurement/internal/zzgi;

    move-result-object v0

    .line 2514
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgi;->zzg()Lcom/google/android/gms/measurement/internal/zzgk;

    move-result-object v0

    const-string v3, "Failed to parse URL. Not uploading MeasurementBatch. appId"

    .line 2515
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzgi;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    .line 2516
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzog;->zzc()Ljava/lang/String;

    move-result-object v2

    .line 2517
    invoke-virtual {v0, v3, p1, v2}, Lcom/google/android/gms/measurement/internal/zzgk;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 2518
    :goto_0
    iput-boolean v1, p0, Lcom/google/android/gms/measurement/internal/zznv;->zzw:Z

    .line 2519
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzaa()V

    return-void

    :catchall_0
    move-exception p1

    .line 2521
    iput-boolean v1, p0, Lcom/google/android/gms/measurement/internal/zznv;->zzw:Z

    .line 2522
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzaa()V

    .line 2523
    throw p1
.end method

.method private final zzh(Lcom/google/android/gms/measurement/internal/zzp;)Ljava/lang/Boolean;
    .locals 3

    .line 356
    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzp;->zzq:Ljava/lang/Boolean;

    .line 357
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzox;->zza()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 358
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zze()Lcom/google/android/gms/measurement/internal/zzah;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/measurement/internal/zzbj;->zzcw:Lcom/google/android/gms/measurement/internal/zzfz;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/zzah;->zza(Lcom/google/android/gms/measurement/internal/zzfz;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzp;->zzad:Ljava/lang/String;

    .line 359
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 360
    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/zzp;->zzad:Ljava/lang/String;

    .line 361
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzd;->zza(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzd;

    move-result-object p1

    .line 362
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzd;->zza()Lcom/google/android/gms/measurement/internal/zzjb;

    move-result-object p1

    .line 363
    sget-object v1, Lcom/google/android/gms/measurement/internal/zzoc;->zza:[I

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzjb;->ordinal()I

    move-result p1

    aget p1, v1, p1

    const/4 v1, 0x1

    if-eq p1, v1, :cond_2

    const/4 v2, 0x2

    if-eq p1, v2, :cond_1

    const/4 v2, 0x3

    if-eq p1, v2, :cond_0

    const/4 v1, 0x4

    if-eq p1, v1, :cond_2

    goto :goto_0

    .line 366
    :cond_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 364
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :cond_3
    :goto_0
    return-object v0
.end method

.method private static zzi(Lcom/google/android/gms/measurement/internal/zzp;)Z
    .locals 1

    .line 2979
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzp;->zzb:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/zzp;->zzp:Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method private final zzx()J
    .locals 7

    .line 39
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzb()Lcom/google/android/gms/common/util/Clock;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v0

    .line 40
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zznv;->zzj:Lcom/google/android/gms/measurement/internal/zzms;

    .line 42
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zznr;->zzal()V

    .line 43
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zziy;->zzt()V

    .line 44
    iget-object v3, v2, Lcom/google/android/gms/measurement/internal/zzms;->zzf:Lcom/google/android/gms/measurement/internal/zzgz;

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzgz;->zza()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v5, v3, v5

    if-nez v5, :cond_0

    .line 46
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zziy;->zzq()Lcom/google/android/gms/measurement/internal/zzop;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzop;->zzv()Ljava/security/SecureRandom;

    move-result-object v3

    const v4, 0x5265c00

    invoke-virtual {v3, v4}, Ljava/security/SecureRandom;->nextInt(I)I

    move-result v3

    int-to-long v3, v3

    const-wide/16 v5, 0x1

    add-long/2addr v3, v5

    .line 47
    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/zzms;->zzf:Lcom/google/android/gms/measurement/internal/zzgz;

    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/measurement/internal/zzgz;->zza(J)V

    :cond_0
    add-long/2addr v0, v3

    const-wide/16 v2, 0x3e8

    .line 50
    div-long/2addr v0, v2

    const-wide/16 v2, 0x3c

    div-long/2addr v0, v2

    div-long/2addr v0, v2

    const-wide/16 v2, 0x18

    div-long/2addr v0, v2

    return-wide v0
.end method

.method private final zzy()Lcom/google/android/gms/measurement/internal/zzgs;
    .locals 2

    .line 300
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zznv;->zze:Lcom/google/android/gms/measurement/internal/zzgs;

    if-eqz v0, :cond_0

    return-object v0

    .line 301
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Network broadcast receiver not created"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final zzz()Lcom/google/android/gms/measurement/internal/zznm;
    .locals 1

    .line 318
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zznv;->zzf:Lcom/google/android/gms/measurement/internal/zznm;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zznv;->zza(Lcom/google/android/gms/measurement/internal/zznr;)Lcom/google/android/gms/measurement/internal/zznr;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/measurement/internal/zznm;

    return-object v0
.end method


# virtual methods
.method public final zza()Landroid/content/Context;
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zznv;->zzm:Lcom/google/android/gms/measurement/internal/zzhw;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzhw;->zza()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method final zza(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 5

    .line 53
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzl()Lcom/google/android/gms/measurement/internal/zzhp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zziy;->zzt()V

    .line 54
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzs()V

    .line 56
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzi()Lcom/google/android/gms/measurement/internal/zzhg;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/measurement/internal/zzhg;->zzb(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzfx$zza;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 59
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 60
    invoke-virtual {p0, p1}, Lcom/google/android/gms/measurement/internal/zznv;->zzb(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzjc;

    move-result-object v1

    .line 61
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzjc;->zzb()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 63
    invoke-direct {p0, p1}, Lcom/google/android/gms/measurement/internal/zznv;->zzd(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzaz;

    move-result-object v2

    new-instance v3, Lcom/google/android/gms/measurement/internal/zzai;

    invoke-direct {v3}, Lcom/google/android/gms/measurement/internal/zzai;-><init>()V

    .line 64
    invoke-direct {p0, p1, v2, v1, v3}, Lcom/google/android/gms/measurement/internal/zznv;->zza(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzaz;Lcom/google/android/gms/measurement/internal/zzjc;Lcom/google/android/gms/measurement/internal/zzai;)Lcom/google/android/gms/measurement/internal/zzaz;

    move-result-object v1

    .line 65
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzaz;->zzb()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 66
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzp()Lcom/google/android/gms/measurement/internal/zzol;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/android/gms/measurement/internal/zzol;->zzc(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    move p1, v2

    goto :goto_0

    .line 69
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzf()Lcom/google/android/gms/measurement/internal/zzam;

    move-result-object v1

    const-string v3, "_npa"

    .line 70
    invoke-virtual {v1, p1, v3}, Lcom/google/android/gms/measurement/internal/zzam;->zze(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzom;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 72
    iget-object p1, v1, Lcom/google/android/gms/measurement/internal/zzom;->zze:Ljava/lang/Object;

    const-wide/16 v3, 0x1

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    goto :goto_0

    .line 73
    :cond_2
    new-instance v1, Lcom/google/android/gms/measurement/internal/zzai;

    invoke-direct {v1}, Lcom/google/android/gms/measurement/internal/zzai;-><init>()V

    invoke-direct {p0, p1, v1}, Lcom/google/android/gms/measurement/internal/zznv;->zza(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzai;)I

    move-result p1

    :goto_0
    if-ne p1, v2, :cond_3

    .line 75
    const-string p1, "denied"

    goto :goto_1

    :cond_3
    const-string p1, "granted"

    .line 76
    :goto_1
    const-string v1, "ad_personalization"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method final zza(Lcom/google/android/gms/measurement/internal/zzp;)Lcom/google/android/gms/measurement/internal/zzh;
    .locals 12

    .line 80
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzl()Lcom/google/android/gms/measurement/internal/zzhp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zziy;->zzt()V

    .line 81
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzs()V

    .line 82
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzp;->zza:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 84
    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzp;->zzu:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 85
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zznv;->zzae:Ljava/util/Map;

    iget-object v2, p1, Lcom/google/android/gms/measurement/internal/zzp;->zza:Ljava/lang/String;

    new-instance v3, Lcom/google/android/gms/measurement/internal/zznv$zzb;

    iget-object v4, p1, Lcom/google/android/gms/measurement/internal/zzp;->zzu:Ljava/lang/String;

    invoke-direct {v3, p0, v4, v1}, Lcom/google/android/gms/measurement/internal/zznv$zzb;-><init>(Lcom/google/android/gms/measurement/internal/zznv;Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzof;)V

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzf()Lcom/google/android/gms/measurement/internal/zzam;

    move-result-object v0

    iget-object v2, p1, Lcom/google/android/gms/measurement/internal/zzp;->zza:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/measurement/internal/zzam;->zze(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzh;

    move-result-object v0

    .line 88
    iget-object v2, p1, Lcom/google/android/gms/measurement/internal/zzp;->zza:Ljava/lang/String;

    .line 89
    invoke-virtual {p0, v2}, Lcom/google/android/gms/measurement/internal/zznv;->zzb(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzjc;

    move-result-object v2

    iget-object v3, p1, Lcom/google/android/gms/measurement/internal/zzp;->zzt:Ljava/lang/String;

    .line 90
    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/zzjc;->zzb(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzjc;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/gms/measurement/internal/zzjc;->zza(Lcom/google/android/gms/measurement/internal/zzjc;)Lcom/google/android/gms/measurement/internal/zzjc;

    move-result-object v2

    .line 91
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzjc;->zzi()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 93
    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/zznv;->zzj:Lcom/google/android/gms/measurement/internal/zzms;

    .line 94
    iget-object v4, p1, Lcom/google/android/gms/measurement/internal/zzp;->zza:Ljava/lang/String;

    iget-boolean v5, p1, Lcom/google/android/gms/measurement/internal/zzp;->zzn:Z

    .line 95
    invoke-virtual {v3, v4, v5}, Lcom/google/android/gms/measurement/internal/zzms;->zza(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 96
    :cond_1
    const-string v3, ""

    :goto_0
    const/4 v4, 0x0

    if-nez v0, :cond_3

    .line 98
    new-instance v0, Lcom/google/android/gms/measurement/internal/zzh;

    iget-object v5, p0, Lcom/google/android/gms/measurement/internal/zznv;->zzm:Lcom/google/android/gms/measurement/internal/zzhw;

    iget-object v6, p1, Lcom/google/android/gms/measurement/internal/zzp;->zza:Ljava/lang/String;

    invoke-direct {v0, v5, v6}, Lcom/google/android/gms/measurement/internal/zzh;-><init>(Lcom/google/android/gms/measurement/internal/zzhw;Ljava/lang/String;)V

    .line 99
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzjc;->zzj()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 100
    invoke-direct {p0, v2}, Lcom/google/android/gms/measurement/internal/zznv;->zza(Lcom/google/android/gms/measurement/internal/zzjc;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/google/android/gms/measurement/internal/zzh;->zzb(Ljava/lang/String;)V

    .line 101
    :cond_2
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzjc;->zzi()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 102
    invoke-virtual {v0, v3}, Lcom/google/android/gms/measurement/internal/zzh;->zzh(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 103
    :cond_3
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzjc;->zzi()Z

    move-result v5

    if-eqz v5, :cond_6

    if-eqz v3, :cond_6

    .line 104
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzh;->zzaj()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6

    .line 105
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzh;->zzaj()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    .line 106
    invoke-virtual {v0, v3}, Lcom/google/android/gms/measurement/internal/zzh;->zzh(Ljava/lang/String;)V

    .line 107
    iget-boolean v3, p1, Lcom/google/android/gms/measurement/internal/zzp;->zzn:Z

    if-eqz v3, :cond_5

    .line 108
    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/zznv;->zzj:Lcom/google/android/gms/measurement/internal/zzms;

    .line 109
    iget-object v6, p1, Lcom/google/android/gms/measurement/internal/zzp;->zza:Ljava/lang/String;

    .line 110
    invoke-virtual {v3, v6, v2}, Lcom/google/android/gms/measurement/internal/zzms;->zza(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzjc;)Landroid/util/Pair;

    move-result-object v3

    iget-object v3, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 111
    const-string v6, "00000000-0000-0000-0000-000000000000"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    if-nez v5, :cond_5

    .line 112
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzpd;->zza()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 113
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zze()Lcom/google/android/gms/measurement/internal/zzah;

    move-result-object v3

    sget-object v5, Lcom/google/android/gms/measurement/internal/zzbj;->zzdc:Lcom/google/android/gms/measurement/internal/zzfz;

    invoke-virtual {v3, v5}, Lcom/google/android/gms/measurement/internal/zzah;->zza(Lcom/google/android/gms/measurement/internal/zzfz;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 114
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzjc;->zzj()Z

    move-result v3

    if-nez v3, :cond_4

    const/4 v2, 0x1

    goto :goto_1

    .line 116
    :cond_4
    invoke-direct {p0, v2}, Lcom/google/android/gms/measurement/internal/zznv;->zza(Lcom/google/android/gms/measurement/internal/zzjc;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/gms/measurement/internal/zzh;->zzb(Ljava/lang/String;)V

    move v2, v4

    .line 118
    :goto_1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzf()Lcom/google/android/gms/measurement/internal/zzam;

    move-result-object v3

    iget-object v5, p1, Lcom/google/android/gms/measurement/internal/zzp;->zza:Ljava/lang/String;

    const-string v6, "_id"

    .line 119
    invoke-virtual {v3, v5, v6}, Lcom/google/android/gms/measurement/internal/zzam;->zze(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzom;

    move-result-object v3

    if-eqz v3, :cond_8

    .line 122
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzf()Lcom/google/android/gms/measurement/internal/zzam;

    move-result-object v3

    iget-object v5, p1, Lcom/google/android/gms/measurement/internal/zzp;->zza:Ljava/lang/String;

    const-string v6, "_lair"

    .line 123
    invoke-virtual {v3, v5, v6}, Lcom/google/android/gms/measurement/internal/zzam;->zze(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzom;

    move-result-object v3

    if-nez v3, :cond_8

    .line 125
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzb()Lcom/google/android/gms/common/util/Clock;

    move-result-object v3

    invoke-interface {v3}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v9

    .line 126
    new-instance v3, Lcom/google/android/gms/measurement/internal/zzom;

    iget-object v6, p1, Lcom/google/android/gms/measurement/internal/zzp;->zza:Ljava/lang/String;

    const-wide/16 v7, 0x1

    .line 127
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    const-string v7, "auto"

    const-string v8, "_lair"

    move-object v5, v3

    invoke-direct/range {v5 .. v11}, Lcom/google/android/gms/measurement/internal/zzom;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V

    .line 128
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzf()Lcom/google/android/gms/measurement/internal/zzam;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/google/android/gms/measurement/internal/zzam;->zza(Lcom/google/android/gms/measurement/internal/zzom;)Z

    goto :goto_3

    .line 129
    :cond_5
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzh;->zzad()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 130
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzjc;->zzj()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 131
    invoke-direct {p0, v2}, Lcom/google/android/gms/measurement/internal/zznv;->zza(Lcom/google/android/gms/measurement/internal/zzjc;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/gms/measurement/internal/zzh;->zzb(Ljava/lang/String;)V

    goto :goto_2

    .line 132
    :cond_6
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzh;->zzad()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 133
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzjc;->zzj()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 134
    invoke-direct {p0, v2}, Lcom/google/android/gms/measurement/internal/zznv;->zza(Lcom/google/android/gms/measurement/internal/zzjc;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/gms/measurement/internal/zzh;->zzb(Ljava/lang/String;)V

    :cond_7
    :goto_2
    move v2, v4

    .line 135
    :cond_8
    :goto_3
    iget-object v3, p1, Lcom/google/android/gms/measurement/internal/zzp;->zzb:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/google/android/gms/measurement/internal/zzh;->zzf(Ljava/lang/String;)V

    .line 136
    iget-object v3, p1, Lcom/google/android/gms/measurement/internal/zzp;->zzp:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/google/android/gms/measurement/internal/zzh;->zza(Ljava/lang/String;)V

    .line 137
    iget-object v3, p1, Lcom/google/android/gms/measurement/internal/zzp;->zzk:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_9

    .line 138
    iget-object v3, p1, Lcom/google/android/gms/measurement/internal/zzp;->zzk:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/google/android/gms/measurement/internal/zzh;->zze(Ljava/lang/String;)V

    .line 139
    :cond_9
    iget-wide v5, p1, Lcom/google/android/gms/measurement/internal/zzp;->zze:J

    const-wide/16 v7, 0x0

    cmp-long v3, v5, v7

    if-eqz v3, :cond_a

    .line 140
    iget-wide v5, p1, Lcom/google/android/gms/measurement/internal/zzp;->zze:J

    invoke-virtual {v0, v5, v6}, Lcom/google/android/gms/measurement/internal/zzh;->zzn(J)V

    .line 141
    :cond_a
    iget-object v3, p1, Lcom/google/android/gms/measurement/internal/zzp;->zzc:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_b

    .line 142
    iget-object v3, p1, Lcom/google/android/gms/measurement/internal/zzp;->zzc:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/google/android/gms/measurement/internal/zzh;->zzd(Ljava/lang/String;)V

    .line 143
    :cond_b
    iget-wide v5, p1, Lcom/google/android/gms/measurement/internal/zzp;->zzj:J

    invoke-virtual {v0, v5, v6}, Lcom/google/android/gms/measurement/internal/zzh;->zzb(J)V

    .line 144
    iget-object v3, p1, Lcom/google/android/gms/measurement/internal/zzp;->zzd:Ljava/lang/String;

    if-eqz v3, :cond_c

    .line 145
    iget-object v3, p1, Lcom/google/android/gms/measurement/internal/zzp;->zzd:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/google/android/gms/measurement/internal/zzh;->zzc(Ljava/lang/String;)V

    .line 146
    :cond_c
    iget-wide v5, p1, Lcom/google/android/gms/measurement/internal/zzp;->zzf:J

    invoke-virtual {v0, v5, v6}, Lcom/google/android/gms/measurement/internal/zzh;->zzk(J)V

    .line 147
    iget-boolean v3, p1, Lcom/google/android/gms/measurement/internal/zzp;->zzh:Z

    invoke-virtual {v0, v3}, Lcom/google/android/gms/measurement/internal/zzh;->zzb(Z)V

    .line 148
    iget-object v3, p1, Lcom/google/android/gms/measurement/internal/zzp;->zzg:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_d

    .line 149
    iget-object v3, p1, Lcom/google/android/gms/measurement/internal/zzp;->zzg:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/google/android/gms/measurement/internal/zzh;->zzg(Ljava/lang/String;)V

    .line 150
    :cond_d
    iget-boolean v3, p1, Lcom/google/android/gms/measurement/internal/zzp;->zzn:Z

    invoke-virtual {v0, v3}, Lcom/google/android/gms/measurement/internal/zzh;->zza(Z)V

    .line 151
    iget-object v3, p1, Lcom/google/android/gms/measurement/internal/zzp;->zzq:Ljava/lang/Boolean;

    invoke-virtual {v0, v3}, Lcom/google/android/gms/measurement/internal/zzh;->zza(Ljava/lang/Boolean;)V

    .line 152
    iget-wide v5, p1, Lcom/google/android/gms/measurement/internal/zzp;->zzr:J

    invoke-virtual {v0, v5, v6}, Lcom/google/android/gms/measurement/internal/zzh;->zzl(J)V

    .line 153
    iget-object v3, p1, Lcom/google/android/gms/measurement/internal/zzp;->zzv:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/google/android/gms/measurement/internal/zzh;->zzj(Ljava/lang/String;)V

    .line 154
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzpv;->zza()Z

    move-result v3

    if-eqz v3, :cond_e

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zze()Lcom/google/android/gms/measurement/internal/zzah;

    move-result-object v3

    sget-object v5, Lcom/google/android/gms/measurement/internal/zzbj;->zzbu:Lcom/google/android/gms/measurement/internal/zzfz;

    invoke-virtual {v3, v5}, Lcom/google/android/gms/measurement/internal/zzah;->zza(Lcom/google/android/gms/measurement/internal/zzfz;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 155
    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzp;->zzs:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzh;->zza(Ljava/util/List;)V

    goto :goto_4

    .line 156
    :cond_e
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzpv;->zza()Z

    move-result v3

    if-eqz v3, :cond_f

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zze()Lcom/google/android/gms/measurement/internal/zzah;

    move-result-object v3

    sget-object v5, Lcom/google/android/gms/measurement/internal/zzbj;->zzbt:Lcom/google/android/gms/measurement/internal/zzfz;

    invoke-virtual {v3, v5}, Lcom/google/android/gms/measurement/internal/zzah;->zza(Lcom/google/android/gms/measurement/internal/zzfz;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 157
    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzh;->zza(Ljava/util/List;)V

    .line 158
    :cond_f
    :goto_4
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzrw;->zza()Z

    move-result v1

    if-eqz v1, :cond_10

    .line 159
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zze()Lcom/google/android/gms/measurement/internal/zzah;

    move-result-object v1

    sget-object v3, Lcom/google/android/gms/measurement/internal/zzbj;->zzbw:Lcom/google/android/gms/measurement/internal/zzfz;

    invoke-virtual {v1, v3}, Lcom/google/android/gms/measurement/internal/zzah;->zza(Lcom/google/android/gms/measurement/internal/zzfz;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 160
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzq()Lcom/google/android/gms/measurement/internal/zzop;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzh;->zzac()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/zzop;->zzf(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 161
    iget-boolean v1, p1, Lcom/google/android/gms/measurement/internal/zzp;->zzw:Z

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzh;->zzc(Z)V

    .line 162
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zze()Lcom/google/android/gms/measurement/internal/zzah;

    move-result-object v1

    sget-object v3, Lcom/google/android/gms/measurement/internal/zzbj;->zzbx:Lcom/google/android/gms/measurement/internal/zzfz;

    invoke-virtual {v1, v3}, Lcom/google/android/gms/measurement/internal/zzah;->zza(Lcom/google/android/gms/measurement/internal/zzfz;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 163
    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzp;->zzac:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzh;->zzk(Ljava/lang/String;)V

    .line 164
    :cond_10
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzrl;->zza()Z

    move-result v1

    if-eqz v1, :cond_11

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zze()Lcom/google/android/gms/measurement/internal/zzah;

    move-result-object v1

    sget-object v3, Lcom/google/android/gms/measurement/internal/zzbj;->zzcg:Lcom/google/android/gms/measurement/internal/zzfz;

    invoke-virtual {v1, v3}, Lcom/google/android/gms/measurement/internal/zzah;->zza(Lcom/google/android/gms/measurement/internal/zzfz;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 165
    iget v1, p1, Lcom/google/android/gms/measurement/internal/zzp;->zzaa:I

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzh;->zza(I)V

    .line 166
    :cond_11
    iget-wide v5, p1, Lcom/google/android/gms/measurement/internal/zzp;->zzx:J

    invoke-virtual {v0, v5, v6}, Lcom/google/android/gms/measurement/internal/zzh;->zzt(J)V

    .line 167
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzox;->zza()Z

    move-result v1

    if-eqz v1, :cond_12

    .line 168
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zze()Lcom/google/android/gms/measurement/internal/zzah;

    move-result-object v1

    sget-object v3, Lcom/google/android/gms/measurement/internal/zzbj;->zzcw:Lcom/google/android/gms/measurement/internal/zzfz;

    invoke-virtual {v1, v3}, Lcom/google/android/gms/measurement/internal/zzah;->zza(Lcom/google/android/gms/measurement/internal/zzfz;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 169
    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/zzp;->zzad:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/measurement/internal/zzh;->zzi(Ljava/lang/String;)V

    .line 170
    :cond_12
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzpd;->zza()Z

    move-result p1

    if-eqz p1, :cond_14

    .line 171
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zze()Lcom/google/android/gms/measurement/internal/zzah;

    move-result-object p1

    sget-object v1, Lcom/google/android/gms/measurement/internal/zzbj;->zzdc:Lcom/google/android/gms/measurement/internal/zzfz;

    invoke-virtual {p1, v1}, Lcom/google/android/gms/measurement/internal/zzah;->zza(Lcom/google/android/gms/measurement/internal/zzfz;)Z

    move-result p1

    if-eqz p1, :cond_14

    .line 172
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzh;->zzas()Z

    move-result p1

    if-nez p1, :cond_13

    if-eqz v2, :cond_15

    .line 173
    :cond_13
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzf()Lcom/google/android/gms/measurement/internal/zzam;

    move-result-object p1

    invoke-virtual {p1, v0, v2, v4}, Lcom/google/android/gms/measurement/internal/zzam;->zza(Lcom/google/android/gms/measurement/internal/zzh;ZZ)V

    goto :goto_5

    .line 174
    :cond_14
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzh;->zzas()Z

    move-result p1

    if-eqz p1, :cond_15

    .line 175
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzf()Lcom/google/android/gms/measurement/internal/zzam;

    move-result-object p1

    .line 176
    invoke-virtual {p1, v0, v4, v4}, Lcom/google/android/gms/measurement/internal/zzam;->zza(Lcom/google/android/gms/measurement/internal/zzh;ZZ)V

    :cond_15
    :goto_5
    return-object v0
.end method

.method final zza(Lcom/google/android/gms/measurement/internal/zzaf;)V
    .locals 1

    .line 1605
    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzaf;->zza:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/google/android/gms/measurement/internal/zznv;->zzc(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzp;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1607
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/measurement/internal/zznv;->zza(Lcom/google/android/gms/measurement/internal/zzaf;Lcom/google/android/gms/measurement/internal/zzp;)V

    :cond_0
    return-void
.end method

.method final zza(Lcom/google/android/gms/measurement/internal/zzaf;Lcom/google/android/gms/measurement/internal/zzp;)V
    .locals 10

    .line 1609
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1610
    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzaf;->zza:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 1611
    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzaf;->zzc:Lcom/google/android/gms/measurement/internal/zzok;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1612
    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzaf;->zzc:Lcom/google/android/gms/measurement/internal/zzok;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzok;->zza:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 1614
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzl()Lcom/google/android/gms/measurement/internal/zzhp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zziy;->zzt()V

    .line 1615
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzs()V

    .line 1616
    invoke-static {p2}, Lcom/google/android/gms/measurement/internal/zznv;->zzi(Lcom/google/android/gms/measurement/internal/zzp;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1618
    :cond_0
    iget-boolean v0, p2, Lcom/google/android/gms/measurement/internal/zzp;->zzh:Z

    if-nez v0, :cond_1

    .line 1619
    invoke-virtual {p0, p2}, Lcom/google/android/gms/measurement/internal/zznv;->zza(Lcom/google/android/gms/measurement/internal/zzp;)Lcom/google/android/gms/measurement/internal/zzh;

    return-void

    .line 1621
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzf()Lcom/google/android/gms/measurement/internal/zzam;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzam;->zzp()V

    .line 1622
    :try_start_0
    invoke-virtual {p0, p2}, Lcom/google/android/gms/measurement/internal/zznv;->zza(Lcom/google/android/gms/measurement/internal/zzp;)Lcom/google/android/gms/measurement/internal/zzh;

    .line 1623
    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzaf;->zza:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Ljava/lang/String;

    .line 1625
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzf()Lcom/google/android/gms/measurement/internal/zzam;

    move-result-object v0

    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzaf;->zzc:Lcom/google/android/gms/measurement/internal/zzok;

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zzok;->zza:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/measurement/internal/zzam;->zzc(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzaf;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 1627
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzj()Lcom/google/android/gms/measurement/internal/zzgi;

    move-result-object v1

    .line 1628
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzgi;->zzc()Lcom/google/android/gms/measurement/internal/zzgk;

    move-result-object v1

    const-string v3, "Removing conditional user property"

    iget-object v4, p1, Lcom/google/android/gms/measurement/internal/zzaf;->zza:Ljava/lang/String;

    .line 1629
    iget-object v5, p0, Lcom/google/android/gms/measurement/internal/zznv;->zzm:Lcom/google/android/gms/measurement/internal/zzhw;

    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzhw;->zzk()Lcom/google/android/gms/measurement/internal/zzgh;

    move-result-object v5

    .line 1630
    iget-object v6, p1, Lcom/google/android/gms/measurement/internal/zzaf;->zzc:Lcom/google/android/gms/measurement/internal/zzok;

    iget-object v6, v6, Lcom/google/android/gms/measurement/internal/zzok;->zza:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/google/android/gms/measurement/internal/zzgh;->zzc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1631
    invoke-virtual {v1, v3, v4, v5}, Lcom/google/android/gms/measurement/internal/zzgk;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1632
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzf()Lcom/google/android/gms/measurement/internal/zzam;

    move-result-object v1

    iget-object v3, p1, Lcom/google/android/gms/measurement/internal/zzaf;->zzc:Lcom/google/android/gms/measurement/internal/zzok;

    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/zzok;->zza:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/measurement/internal/zzam;->zza(Ljava/lang/String;Ljava/lang/String;)I

    .line 1633
    iget-boolean v1, v0, Lcom/google/android/gms/measurement/internal/zzaf;->zze:Z

    if-eqz v1, :cond_2

    .line 1634
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzf()Lcom/google/android/gms/measurement/internal/zzam;

    move-result-object v1

    iget-object v3, p1, Lcom/google/android/gms/measurement/internal/zzaf;->zzc:Lcom/google/android/gms/measurement/internal/zzok;

    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/zzok;->zza:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/measurement/internal/zzam;->zzh(Ljava/lang/String;Ljava/lang/String;)V

    .line 1635
    :cond_2
    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzaf;->zzk:Lcom/google/android/gms/measurement/internal/zzbh;

    if-eqz v1, :cond_5

    .line 1637
    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzaf;->zzk:Lcom/google/android/gms/measurement/internal/zzbh;

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zzbh;->zzb:Lcom/google/android/gms/measurement/internal/zzbc;

    if-eqz v1, :cond_3

    .line 1638
    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzaf;->zzk:Lcom/google/android/gms/measurement/internal/zzbh;

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zzbh;->zzb:Lcom/google/android/gms/measurement/internal/zzbc;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzbc;->zzb()Landroid/os/Bundle;

    move-result-object v1

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    :goto_0
    move-object v4, v1

    .line 1640
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzq()Lcom/google/android/gms/measurement/internal/zzop;

    move-result-object v1

    iget-object v3, p1, Lcom/google/android/gms/measurement/internal/zzaf;->zzk:Lcom/google/android/gms/measurement/internal/zzbh;

    .line 1641
    invoke-static {v3}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/measurement/internal/zzbh;

    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/zzbh;->zza:Ljava/lang/String;

    iget-object v5, v0, Lcom/google/android/gms/measurement/internal/zzaf;->zzb:Ljava/lang/String;

    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/zzaf;->zzk:Lcom/google/android/gms/measurement/internal/zzbh;

    iget-wide v6, p1, Lcom/google/android/gms/measurement/internal/zzbh;->zzd:J

    const/4 v8, 0x1

    const/4 v9, 0x1

    .line 1642
    invoke-virtual/range {v1 .. v9}, Lcom/google/android/gms/measurement/internal/zzop;->zza(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;JZZ)Lcom/google/android/gms/measurement/internal/zzbh;

    move-result-object p1

    .line 1643
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/measurement/internal/zzbh;

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/measurement/internal/zznv;->zzc(Lcom/google/android/gms/measurement/internal/zzbh;Lcom/google/android/gms/measurement/internal/zzp;)V

    goto :goto_1

    .line 1645
    :cond_4
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzj()Lcom/google/android/gms/measurement/internal/zzgi;

    move-result-object p2

    .line 1646
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzgi;->zzu()Lcom/google/android/gms/measurement/internal/zzgk;

    move-result-object p2

    const-string v0, "Conditional user property doesn\'t exist"

    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzaf;->zza:Ljava/lang/String;

    .line 1647
    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/zzgi;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 1648
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zznv;->zzm:Lcom/google/android/gms/measurement/internal/zzhw;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzhw;->zzk()Lcom/google/android/gms/measurement/internal/zzgh;

    move-result-object v2

    .line 1649
    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/zzaf;->zzc:Lcom/google/android/gms/measurement/internal/zzok;

    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/zzok;->zza:Ljava/lang/String;

    invoke-virtual {v2, p1}, Lcom/google/android/gms/measurement/internal/zzgh;->zzc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1650
    invoke-virtual {p2, v0, v1, p1}, Lcom/google/android/gms/measurement/internal/zzgk;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1651
    :cond_5
    :goto_1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzf()Lcom/google/android/gms/measurement/internal/zzam;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzam;->zzw()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1652
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzf()Lcom/google/android/gms/measurement/internal/zzam;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzam;->zzu()V

    return-void

    :catchall_0
    move-exception p1

    .line 1654
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzf()Lcom/google/android/gms/measurement/internal/zzam;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzam;->zzu()V

    .line 1655
    throw p1
.end method

.method final zza(Lcom/google/android/gms/measurement/internal/zzbh;Lcom/google/android/gms/measurement/internal/zzp;)V
    .locals 19

    move-object/from16 v1, p0

    move-object/from16 v0, p2

    .line 772
    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 773
    iget-object v2, v0, Lcom/google/android/gms/measurement/internal/zzp;->zza:Ljava/lang/String;

    invoke-static {v2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 775
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzl()Lcom/google/android/gms/measurement/internal/zzhp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zziy;->zzt()V

    .line 776
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzs()V

    .line 777
    iget-object v2, v0, Lcom/google/android/gms/measurement/internal/zzp;->zza:Ljava/lang/String;

    move-object/from16 v3, p1

    .line 778
    iget-wide v10, v3, Lcom/google/android/gms/measurement/internal/zzbh;->zzd:J

    .line 779
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/measurement/internal/zzgm;->zza(Lcom/google/android/gms/measurement/internal/zzbh;)Lcom/google/android/gms/measurement/internal/zzgm;

    move-result-object v3

    .line 782
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzl()Lcom/google/android/gms/measurement/internal/zzhp;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zziy;->zzt()V

    .line 783
    iget-object v4, v1, Lcom/google/android/gms/measurement/internal/zznv;->zzaf:Lcom/google/android/gms/measurement/internal/zzlh;

    if-eqz v4, :cond_1

    iget-object v4, v1, Lcom/google/android/gms/measurement/internal/zznv;->zzag:Ljava/lang/String;

    if-eqz v4, :cond_1

    .line 784
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    goto :goto_0

    .line 786
    :cond_0
    iget-object v4, v1, Lcom/google/android/gms/measurement/internal/zznv;->zzaf:Lcom/google/android/gms/measurement/internal/zzlh;

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v4, 0x0

    .line 787
    :goto_1
    iget-object v5, v3, Lcom/google/android/gms/measurement/internal/zzgm;->zzd:Landroid/os/Bundle;

    const/4 v12, 0x0

    invoke-static {v4, v5, v12}, Lcom/google/android/gms/measurement/internal/zzop;->zza(Lcom/google/android/gms/measurement/internal/zzlh;Landroid/os/Bundle;Z)V

    .line 788
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzgm;->zza()Lcom/google/android/gms/measurement/internal/zzbh;

    move-result-object v3

    .line 789
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzp()Lcom/google/android/gms/measurement/internal/zzol;

    invoke-static {v3, v0}, Lcom/google/android/gms/measurement/internal/zzol;->zza(Lcom/google/android/gms/measurement/internal/zzbh;Lcom/google/android/gms/measurement/internal/zzp;)Z

    move-result v4

    if-nez v4, :cond_2

    return-void

    .line 791
    :cond_2
    iget-boolean v4, v0, Lcom/google/android/gms/measurement/internal/zzp;->zzh:Z

    if-nez v4, :cond_3

    .line 792
    invoke-virtual {v1, v0}, Lcom/google/android/gms/measurement/internal/zznv;->zza(Lcom/google/android/gms/measurement/internal/zzp;)Lcom/google/android/gms/measurement/internal/zzh;

    return-void

    .line 794
    :cond_3
    iget-object v4, v0, Lcom/google/android/gms/measurement/internal/zzp;->zzs:Ljava/util/List;

    if-eqz v4, :cond_5

    .line 795
    iget-object v4, v0, Lcom/google/android/gms/measurement/internal/zzp;->zzs:Ljava/util/List;

    iget-object v5, v3, Lcom/google/android/gms/measurement/internal/zzbh;->zza:Ljava/lang/String;

    invoke-interface {v4, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 796
    iget-object v4, v3, Lcom/google/android/gms/measurement/internal/zzbh;->zzb:Lcom/google/android/gms/measurement/internal/zzbc;

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzbc;->zzb()Landroid/os/Bundle;

    move-result-object v4

    .line 797
    const-string v5, "ga_safelisted"

    const-wide/16 v6, 0x1

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 798
    new-instance v5, Lcom/google/android/gms/measurement/internal/zzbh;

    iget-object v14, v3, Lcom/google/android/gms/measurement/internal/zzbh;->zza:Ljava/lang/String;

    new-instance v15, Lcom/google/android/gms/measurement/internal/zzbc;

    invoke-direct {v15, v4}, Lcom/google/android/gms/measurement/internal/zzbc;-><init>(Landroid/os/Bundle;)V

    iget-object v4, v3, Lcom/google/android/gms/measurement/internal/zzbh;->zzc:Ljava/lang/String;

    iget-wide v6, v3, Lcom/google/android/gms/measurement/internal/zzbh;->zzd:J

    move-object v13, v5

    move-object/from16 v16, v4

    move-wide/from16 v17, v6

    invoke-direct/range {v13 .. v18}, Lcom/google/android/gms/measurement/internal/zzbh;-><init>(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzbc;Ljava/lang/String;J)V

    goto :goto_2

    .line 800
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzj()Lcom/google/android/gms/measurement/internal/zzgi;

    move-result-object v0

    .line 801
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgi;->zzc()Lcom/google/android/gms/measurement/internal/zzgk;

    move-result-object v0

    iget-object v4, v3, Lcom/google/android/gms/measurement/internal/zzbh;->zza:Ljava/lang/String;

    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/zzbh;->zzc:Ljava/lang/String;

    .line 802
    const-string v5, "Dropping non-safelisted event. appId, event name, origin"

    invoke-virtual {v0, v5, v2, v4, v3}, Lcom/google/android/gms/measurement/internal/zzgk;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :cond_5
    move-object v13, v3

    .line 804
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzf()Lcom/google/android/gms/measurement/internal/zzam;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzam;->zzp()V

    .line 806
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzf()Lcom/google/android/gms/measurement/internal/zzam;

    move-result-object v3

    .line 807
    invoke-static {v2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 808
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zziy;->zzt()V

    .line 809
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zznr;->zzal()V

    const-wide/16 v4, 0x0

    cmp-long v4, v10, v4

    const/4 v5, 0x2

    const/4 v14, 0x1

    if-gez v4, :cond_6

    .line 811
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zziy;->zzj()Lcom/google/android/gms/measurement/internal/zzgi;

    move-result-object v3

    .line 812
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzgi;->zzu()Lcom/google/android/gms/measurement/internal/zzgk;

    move-result-object v3

    const-string v6, "Invalid time querying timed out conditional properties"

    .line 813
    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/zzgi;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    .line 814
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    .line 815
    invoke-virtual {v3, v6, v7, v8}, Lcom/google/android/gms/measurement/internal/zzgk;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 816
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v3

    goto :goto_3

    .line 817
    :cond_6
    const-string v6, "active=0 and app_id=? and abs(? - creation_timestamp) > trigger_timeout"

    .line 818
    new-array v7, v5, [Ljava/lang/String;

    aput-object v2, v7, v12

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v14

    .line 819
    invoke-virtual {v3, v6, v7}, Lcom/google/android/gms/measurement/internal/zzam;->zza(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 820
    :goto_3
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_7
    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_9

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/gms/measurement/internal/zzaf;

    if-eqz v6, :cond_7

    .line 822
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzj()Lcom/google/android/gms/measurement/internal/zzgi;

    move-result-object v7

    .line 823
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzgi;->zzp()Lcom/google/android/gms/measurement/internal/zzgk;

    move-result-object v7

    const-string v8, "User property timed out"

    iget-object v9, v6, Lcom/google/android/gms/measurement/internal/zzaf;->zza:Ljava/lang/String;

    .line 824
    iget-object v15, v1, Lcom/google/android/gms/measurement/internal/zznv;->zzm:Lcom/google/android/gms/measurement/internal/zzhw;

    invoke-virtual {v15}, Lcom/google/android/gms/measurement/internal/zzhw;->zzk()Lcom/google/android/gms/measurement/internal/zzgh;

    move-result-object v15

    .line 825
    iget-object v14, v6, Lcom/google/android/gms/measurement/internal/zzaf;->zzc:Lcom/google/android/gms/measurement/internal/zzok;

    iget-object v14, v14, Lcom/google/android/gms/measurement/internal/zzok;->zza:Ljava/lang/String;

    invoke-virtual {v15, v14}, Lcom/google/android/gms/measurement/internal/zzgh;->zzc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    iget-object v15, v6, Lcom/google/android/gms/measurement/internal/zzaf;->zzc:Lcom/google/android/gms/measurement/internal/zzok;

    .line 826
    invoke-virtual {v15}, Lcom/google/android/gms/measurement/internal/zzok;->zza()Ljava/lang/Object;

    move-result-object v15

    .line 827
    invoke-virtual {v7, v8, v9, v14, v15}, Lcom/google/android/gms/measurement/internal/zzgk;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 828
    iget-object v7, v6, Lcom/google/android/gms/measurement/internal/zzaf;->zzg:Lcom/google/android/gms/measurement/internal/zzbh;

    if-eqz v7, :cond_8

    .line 829
    new-instance v7, Lcom/google/android/gms/measurement/internal/zzbh;

    iget-object v8, v6, Lcom/google/android/gms/measurement/internal/zzaf;->zzg:Lcom/google/android/gms/measurement/internal/zzbh;

    invoke-direct {v7, v8, v10, v11}, Lcom/google/android/gms/measurement/internal/zzbh;-><init>(Lcom/google/android/gms/measurement/internal/zzbh;J)V

    invoke-direct {v1, v7, v0}, Lcom/google/android/gms/measurement/internal/zznv;->zzc(Lcom/google/android/gms/measurement/internal/zzbh;Lcom/google/android/gms/measurement/internal/zzp;)V

    .line 830
    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzf()Lcom/google/android/gms/measurement/internal/zzam;

    move-result-object v7

    iget-object v6, v6, Lcom/google/android/gms/measurement/internal/zzaf;->zzc:Lcom/google/android/gms/measurement/internal/zzok;

    iget-object v6, v6, Lcom/google/android/gms/measurement/internal/zzok;->zza:Ljava/lang/String;

    invoke-virtual {v7, v2, v6}, Lcom/google/android/gms/measurement/internal/zzam;->zza(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v14, 0x1

    goto :goto_4

    .line 833
    :cond_9
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzf()Lcom/google/android/gms/measurement/internal/zzam;

    move-result-object v3

    .line 834
    invoke-static {v2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 835
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zziy;->zzt()V

    .line 836
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zznr;->zzal()V

    if-gez v4, :cond_a

    .line 838
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zziy;->zzj()Lcom/google/android/gms/measurement/internal/zzgi;

    move-result-object v3

    .line 839
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzgi;->zzu()Lcom/google/android/gms/measurement/internal/zzgk;

    move-result-object v3

    const-string v6, "Invalid time querying expired conditional properties"

    .line 840
    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/zzgi;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    .line 841
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    .line 842
    invoke-virtual {v3, v6, v7, v8}, Lcom/google/android/gms/measurement/internal/zzgk;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 843
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v3

    goto :goto_5

    .line 844
    :cond_a
    const-string v6, "active<>0 and app_id=? and abs(? - triggered_timestamp) > time_to_live"

    .line 845
    new-array v7, v5, [Ljava/lang/String;

    aput-object v2, v7, v12

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    aput-object v8, v7, v9

    .line 846
    invoke-virtual {v3, v6, v7}, Lcom/google/android/gms/measurement/internal/zzam;->zza(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 848
    :goto_5
    new-instance v6, Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v7

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 849
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_b
    :goto_6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_d

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/gms/measurement/internal/zzaf;

    if-eqz v7, :cond_b

    .line 851
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzj()Lcom/google/android/gms/measurement/internal/zzgi;

    move-result-object v8

    .line 852
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzgi;->zzp()Lcom/google/android/gms/measurement/internal/zzgk;

    move-result-object v8

    const-string v9, "User property expired"

    iget-object v14, v7, Lcom/google/android/gms/measurement/internal/zzaf;->zza:Ljava/lang/String;

    .line 853
    iget-object v15, v1, Lcom/google/android/gms/measurement/internal/zznv;->zzm:Lcom/google/android/gms/measurement/internal/zzhw;

    invoke-virtual {v15}, Lcom/google/android/gms/measurement/internal/zzhw;->zzk()Lcom/google/android/gms/measurement/internal/zzgh;

    move-result-object v15

    .line 854
    iget-object v5, v7, Lcom/google/android/gms/measurement/internal/zzaf;->zzc:Lcom/google/android/gms/measurement/internal/zzok;

    iget-object v5, v5, Lcom/google/android/gms/measurement/internal/zzok;->zza:Ljava/lang/String;

    invoke-virtual {v15, v5}, Lcom/google/android/gms/measurement/internal/zzgh;->zzc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iget-object v15, v7, Lcom/google/android/gms/measurement/internal/zzaf;->zzc:Lcom/google/android/gms/measurement/internal/zzok;

    .line 855
    invoke-virtual {v15}, Lcom/google/android/gms/measurement/internal/zzok;->zza()Ljava/lang/Object;

    move-result-object v15

    .line 856
    invoke-virtual {v8, v9, v14, v5, v15}, Lcom/google/android/gms/measurement/internal/zzgk;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 857
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzf()Lcom/google/android/gms/measurement/internal/zzam;

    move-result-object v5

    iget-object v8, v7, Lcom/google/android/gms/measurement/internal/zzaf;->zzc:Lcom/google/android/gms/measurement/internal/zzok;

    iget-object v8, v8, Lcom/google/android/gms/measurement/internal/zzok;->zza:Ljava/lang/String;

    invoke-virtual {v5, v2, v8}, Lcom/google/android/gms/measurement/internal/zzam;->zzh(Ljava/lang/String;Ljava/lang/String;)V

    .line 858
    iget-object v5, v7, Lcom/google/android/gms/measurement/internal/zzaf;->zzk:Lcom/google/android/gms/measurement/internal/zzbh;

    if-eqz v5, :cond_c

    .line 859
    iget-object v5, v7, Lcom/google/android/gms/measurement/internal/zzaf;->zzk:Lcom/google/android/gms/measurement/internal/zzbh;

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 860
    :cond_c
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzf()Lcom/google/android/gms/measurement/internal/zzam;

    move-result-object v5

    iget-object v7, v7, Lcom/google/android/gms/measurement/internal/zzaf;->zzc:Lcom/google/android/gms/measurement/internal/zzok;

    iget-object v7, v7, Lcom/google/android/gms/measurement/internal/zzok;->zza:Ljava/lang/String;

    invoke-virtual {v5, v2, v7}, Lcom/google/android/gms/measurement/internal/zzam;->zza(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x2

    goto :goto_6

    .line 862
    :cond_d
    move-object v3, v6

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v5, v12

    :goto_7
    if-ge v5, v3, :cond_e

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    add-int/lit8 v5, v5, 0x1

    check-cast v7, Lcom/google/android/gms/measurement/internal/zzbh;

    .line 863
    new-instance v8, Lcom/google/android/gms/measurement/internal/zzbh;

    invoke-direct {v8, v7, v10, v11}, Lcom/google/android/gms/measurement/internal/zzbh;-><init>(Lcom/google/android/gms/measurement/internal/zzbh;J)V

    invoke-direct {v1, v8, v0}, Lcom/google/android/gms/measurement/internal/zznv;->zzc(Lcom/google/android/gms/measurement/internal/zzbh;Lcom/google/android/gms/measurement/internal/zzp;)V

    goto :goto_7

    .line 866
    :cond_e
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzf()Lcom/google/android/gms/measurement/internal/zzam;

    move-result-object v3

    iget-object v5, v13, Lcom/google/android/gms/measurement/internal/zzbh;->zza:Ljava/lang/String;

    .line 867
    invoke-static {v2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 868
    invoke-static {v5}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 869
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zziy;->zzt()V

    .line 870
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zznr;->zzal()V

    if-gez v4, :cond_f

    .line 872
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zziy;->zzj()Lcom/google/android/gms/measurement/internal/zzgi;

    move-result-object v4

    .line 873
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzgi;->zzu()Lcom/google/android/gms/measurement/internal/zzgk;

    move-result-object v4

    const-string v6, "Invalid time querying triggered conditional properties"

    .line 874
    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/zzgi;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 875
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zziy;->zzi()Lcom/google/android/gms/measurement/internal/zzgh;

    move-result-object v3

    invoke-virtual {v3, v5}, Lcom/google/android/gms/measurement/internal/zzgh;->zza(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 876
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    .line 877
    invoke-virtual {v4, v6, v2, v3, v5}, Lcom/google/android/gms/measurement/internal/zzgk;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 878
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    goto :goto_8

    .line 879
    :cond_f
    const-string v4, "active=0 and app_id=? and trigger_event_name=? and abs(? - creation_timestamp) <= trigger_timeout"

    const/4 v6, 0x3

    .line 880
    new-array v6, v6, [Ljava/lang/String;

    aput-object v2, v6, v12

    const/4 v2, 0x1

    aput-object v5, v6, v2

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x2

    aput-object v2, v6, v5

    .line 881
    invoke-virtual {v3, v4, v6}, Lcom/google/android/gms/measurement/internal/zzam;->zza(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 883
    :goto_8
    new-instance v14, Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v14, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 884
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_10
    :goto_9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_13

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v15, v3

    check-cast v15, Lcom/google/android/gms/measurement/internal/zzaf;

    if-eqz v15, :cond_10

    .line 886
    iget-object v3, v15, Lcom/google/android/gms/measurement/internal/zzaf;->zzc:Lcom/google/android/gms/measurement/internal/zzok;

    .line 887
    new-instance v9, Lcom/google/android/gms/measurement/internal/zzom;

    iget-object v4, v15, Lcom/google/android/gms/measurement/internal/zzaf;->zza:Ljava/lang/String;

    .line 888
    invoke-static {v4}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iget-object v5, v15, Lcom/google/android/gms/measurement/internal/zzaf;->zzb:Ljava/lang/String;

    iget-object v6, v3, Lcom/google/android/gms/measurement/internal/zzok;->zza:Ljava/lang/String;

    .line 889
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzok;->zza()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    move-object v3, v9

    move-wide v7, v10

    move-object v12, v9

    move-object/from16 v9, v16

    invoke-direct/range {v3 .. v9}, Lcom/google/android/gms/measurement/internal/zzom;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V

    .line 890
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzf()Lcom/google/android/gms/measurement/internal/zzam;

    move-result-object v3

    invoke-virtual {v3, v12}, Lcom/google/android/gms/measurement/internal/zzam;->zza(Lcom/google/android/gms/measurement/internal/zzom;)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 892
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzj()Lcom/google/android/gms/measurement/internal/zzgi;

    move-result-object v3

    .line 893
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzgi;->zzp()Lcom/google/android/gms/measurement/internal/zzgk;

    move-result-object v3

    const-string v4, "User property triggered"

    iget-object v5, v15, Lcom/google/android/gms/measurement/internal/zzaf;->zza:Ljava/lang/String;

    .line 894
    iget-object v6, v1, Lcom/google/android/gms/measurement/internal/zznv;->zzm:Lcom/google/android/gms/measurement/internal/zzhw;

    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzhw;->zzk()Lcom/google/android/gms/measurement/internal/zzgh;

    move-result-object v6

    .line 895
    iget-object v7, v12, Lcom/google/android/gms/measurement/internal/zzom;->zzc:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lcom/google/android/gms/measurement/internal/zzgh;->zzc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iget-object v7, v12, Lcom/google/android/gms/measurement/internal/zzom;->zze:Ljava/lang/Object;

    .line 896
    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/google/android/gms/measurement/internal/zzgk;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_a

    .line 897
    :cond_11
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzj()Lcom/google/android/gms/measurement/internal/zzgi;

    move-result-object v3

    .line 898
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzgi;->zzg()Lcom/google/android/gms/measurement/internal/zzgk;

    move-result-object v3

    const-string v4, "Too many active user properties, ignoring"

    iget-object v5, v15, Lcom/google/android/gms/measurement/internal/zzaf;->zza:Ljava/lang/String;

    .line 899
    invoke-static {v5}, Lcom/google/android/gms/measurement/internal/zzgi;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    .line 900
    iget-object v6, v1, Lcom/google/android/gms/measurement/internal/zznv;->zzm:Lcom/google/android/gms/measurement/internal/zzhw;

    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzhw;->zzk()Lcom/google/android/gms/measurement/internal/zzgh;

    move-result-object v6

    .line 901
    iget-object v7, v12, Lcom/google/android/gms/measurement/internal/zzom;->zzc:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lcom/google/android/gms/measurement/internal/zzgh;->zzc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iget-object v7, v12, Lcom/google/android/gms/measurement/internal/zzom;->zze:Ljava/lang/Object;

    .line 902
    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/google/android/gms/measurement/internal/zzgk;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 903
    :goto_a
    iget-object v3, v15, Lcom/google/android/gms/measurement/internal/zzaf;->zzi:Lcom/google/android/gms/measurement/internal/zzbh;

    if-eqz v3, :cond_12

    .line 904
    iget-object v3, v15, Lcom/google/android/gms/measurement/internal/zzaf;->zzi:Lcom/google/android/gms/measurement/internal/zzbh;

    invoke-interface {v14, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 905
    :cond_12
    new-instance v3, Lcom/google/android/gms/measurement/internal/zzok;

    invoke-direct {v3, v12}, Lcom/google/android/gms/measurement/internal/zzok;-><init>(Lcom/google/android/gms/measurement/internal/zzom;)V

    iput-object v3, v15, Lcom/google/android/gms/measurement/internal/zzaf;->zzc:Lcom/google/android/gms/measurement/internal/zzok;

    const/4 v3, 0x1

    .line 906
    iput-boolean v3, v15, Lcom/google/android/gms/measurement/internal/zzaf;->zze:Z

    .line 907
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzf()Lcom/google/android/gms/measurement/internal/zzam;

    move-result-object v4

    invoke-virtual {v4, v15}, Lcom/google/android/gms/measurement/internal/zzam;->zza(Lcom/google/android/gms/measurement/internal/zzaf;)Z

    const/4 v12, 0x0

    goto/16 :goto_9

    .line 909
    :cond_13
    invoke-direct {v1, v13, v0}, Lcom/google/android/gms/measurement/internal/zznv;->zzc(Lcom/google/android/gms/measurement/internal/zzbh;Lcom/google/android/gms/measurement/internal/zzp;)V

    .line 910
    move-object v2, v14

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v12, 0x0

    :goto_b
    if-ge v12, v2, :cond_14

    invoke-virtual {v14, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v12, v12, 0x1

    check-cast v3, Lcom/google/android/gms/measurement/internal/zzbh;

    .line 911
    new-instance v4, Lcom/google/android/gms/measurement/internal/zzbh;

    invoke-direct {v4, v3, v10, v11}, Lcom/google/android/gms/measurement/internal/zzbh;-><init>(Lcom/google/android/gms/measurement/internal/zzbh;J)V

    invoke-direct {v1, v4, v0}, Lcom/google/android/gms/measurement/internal/zznv;->zzc(Lcom/google/android/gms/measurement/internal/zzbh;Lcom/google/android/gms/measurement/internal/zzp;)V

    goto :goto_b

    .line 913
    :cond_14
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzf()Lcom/google/android/gms/measurement/internal/zzam;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzam;->zzw()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 914
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzf()Lcom/google/android/gms/measurement/internal/zzam;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzam;->zzu()V

    return-void

    :catchall_0
    move-exception v0

    .line 916
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzf()Lcom/google/android/gms/measurement/internal/zzam;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzam;->zzu()V

    .line 917
    throw v0
.end method

.method final zza(Lcom/google/android/gms/measurement/internal/zzbh;Ljava/lang/String;)V
    .locals 44

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v3, p2

    .line 918
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzf()Lcom/google/android/gms/measurement/internal/zzam;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/google/android/gms/measurement/internal/zzam;->zze(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzh;

    move-result-object v13

    if-eqz v13, :cond_3

    .line 919
    invoke-virtual {v13}, Lcom/google/android/gms/measurement/internal/zzh;->zzaf()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto/16 :goto_1

    .line 922
    :cond_0
    invoke-direct {v0, v13}, Lcom/google/android/gms/measurement/internal/zznv;->zza(Lcom/google/android/gms/measurement/internal/zzh;)Ljava/lang/Boolean;

    move-result-object v2

    if-nez v2, :cond_1

    .line 924
    const-string v2, "_ui"

    iget-object v4, v1, Lcom/google/android/gms/measurement/internal/zzbh;->zza:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 925
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzj()Lcom/google/android/gms/measurement/internal/zzgi;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzgi;->zzu()Lcom/google/android/gms/measurement/internal/zzgk;

    move-result-object v2

    const-string v4, "Could not find package. appId"

    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/measurement/internal/zzgi;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lcom/google/android/gms/measurement/internal/zzgk;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 926
    :cond_1
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_2

    .line 927
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzj()Lcom/google/android/gms/measurement/internal/zzgi;

    move-result-object v1

    .line 928
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzgi;->zzg()Lcom/google/android/gms/measurement/internal/zzgk;

    move-result-object v1

    const-string v2, "App version does not match; dropping event. appId"

    .line 929
    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/measurement/internal/zzgi;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 930
    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/measurement/internal/zzgk;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    .line 932
    :cond_2
    :goto_0
    new-instance v15, Lcom/google/android/gms/measurement/internal/zzp;

    move-object v2, v15

    .line 933
    invoke-virtual {v13}, Lcom/google/android/gms/measurement/internal/zzh;->zzah()Ljava/lang/String;

    move-result-object v4

    .line 934
    invoke-virtual {v13}, Lcom/google/android/gms/measurement/internal/zzh;->zzaf()Ljava/lang/String;

    move-result-object v5

    .line 935
    invoke-virtual {v13}, Lcom/google/android/gms/measurement/internal/zzh;->zze()J

    move-result-wide v6

    .line 936
    invoke-virtual {v13}, Lcom/google/android/gms/measurement/internal/zzh;->zzae()Ljava/lang/String;

    move-result-object v8

    .line 937
    invoke-virtual {v13}, Lcom/google/android/gms/measurement/internal/zzh;->zzq()J

    move-result-wide v9

    .line 938
    invoke-virtual {v13}, Lcom/google/android/gms/measurement/internal/zzh;->zzn()J

    move-result-wide v11

    .line 939
    invoke-virtual {v13}, Lcom/google/android/gms/measurement/internal/zzh;->zzar()Z

    move-result v14

    .line 940
    invoke-virtual {v13}, Lcom/google/android/gms/measurement/internal/zzh;->zzag()Ljava/lang/String;

    move-result-object v16

    .line 941
    invoke-virtual {v13}, Lcom/google/android/gms/measurement/internal/zzh;->zzd()J

    move-result-wide v17

    .line 942
    invoke-virtual {v13}, Lcom/google/android/gms/measurement/internal/zzh;->zzaq()Z

    move-result v22

    .line 943
    invoke-virtual {v13}, Lcom/google/android/gms/measurement/internal/zzh;->zzaa()Ljava/lang/String;

    move-result-object v24

    .line 944
    invoke-virtual {v13}, Lcom/google/android/gms/measurement/internal/zzh;->zzx()Ljava/lang/Boolean;

    move-result-object v25

    .line 945
    invoke-virtual {v13}, Lcom/google/android/gms/measurement/internal/zzh;->zzo()J

    move-result-wide v26

    .line 946
    invoke-virtual {v13}, Lcom/google/android/gms/measurement/internal/zzh;->zzan()Ljava/util/List;

    move-result-object v28

    .line 947
    invoke-virtual {v0, v3}, Lcom/google/android/gms/measurement/internal/zznv;->zzb(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzjc;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/google/android/gms/measurement/internal/zzjc;->zzh()Ljava/lang/String;

    move-result-object v30

    .line 948
    invoke-virtual {v13}, Lcom/google/android/gms/measurement/internal/zzh;->zzat()Z

    move-result v33

    .line 949
    invoke-virtual {v13}, Lcom/google/android/gms/measurement/internal/zzh;->zzw()J

    move-result-wide v34

    .line 950
    invoke-virtual {v0, v3}, Lcom/google/android/gms/measurement/internal/zznv;->zzb(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzjc;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/google/android/gms/measurement/internal/zzjc;->zza()I

    move-result v36

    .line 951
    invoke-direct {v0, v3}, Lcom/google/android/gms/measurement/internal/zznv;->zzd(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzaz;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/google/android/gms/measurement/internal/zzaz;->zzf()Ljava/lang/String;

    move-result-object v37

    .line 952
    invoke-virtual {v13}, Lcom/google/android/gms/measurement/internal/zzh;->zza()I

    move-result v38

    .line 953
    invoke-virtual {v13}, Lcom/google/android/gms/measurement/internal/zzh;->zzf()J

    move-result-wide v39

    .line 954
    invoke-virtual {v13}, Lcom/google/android/gms/measurement/internal/zzh;->zzam()Ljava/lang/String;

    move-result-object v41

    .line 955
    invoke-virtual {v13}, Lcom/google/android/gms/measurement/internal/zzh;->zzak()Ljava/lang/String;

    move-result-object v42

    const/4 v13, 0x0

    const/16 v19, 0x0

    move-object/from16 v43, v15

    move/from16 v15, v19

    const-wide/16 v19, 0x0

    const/16 v21, 0x0

    const/16 v23, 0x0

    const/16 v29, 0x0

    const-string v31, ""

    const/16 v32, 0x0

    move-object/from16 v3, p2

    invoke-direct/range {v2 .. v42}, Lcom/google/android/gms/measurement/internal/zzp;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;JJLjava/lang/String;ZZLjava/lang/String;JJIZZLjava/lang/String;Ljava/lang/Boolean;JLjava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZJILjava/lang/String;IJLjava/lang/String;Ljava/lang/String;)V

    move-object/from16 v2, v43

    .line 956
    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zznv;->zzb(Lcom/google/android/gms/measurement/internal/zzbh;Lcom/google/android/gms/measurement/internal/zzp;)V

    return-void

    .line 920
    :cond_3
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzj()Lcom/google/android/gms/measurement/internal/zzgi;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzgi;->zzc()Lcom/google/android/gms/measurement/internal/zzgk;

    move-result-object v1

    const-string v2, "No app data available; dropping event"

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/measurement/internal/zzgk;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method final zza(Lcom/google/android/gms/measurement/internal/zzh;Lcom/google/android/gms/internal/measurement/zzgn$zzk$zza;)V
    .locals 7

    .line 639
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzl()Lcom/google/android/gms/measurement/internal/zzhp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zziy;->zzt()V

    .line 640
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzs()V

    .line 642
    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/zzgn$zzk$zza;->zzv()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzai;->zza(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzai;

    move-result-object v0

    .line 643
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzox;->zza()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 644
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zze()Lcom/google/android/gms/measurement/internal/zzah;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/measurement/internal/zzbj;->zzcw:Lcom/google/android/gms/measurement/internal/zzfz;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/zzah;->zza(Lcom/google/android/gms/measurement/internal/zzfz;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 645
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzh;->zzac()Ljava/lang/String;

    move-result-object v1

    .line 647
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzl()Lcom/google/android/gms/measurement/internal/zzhp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zziy;->zzt()V

    .line 648
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzs()V

    .line 649
    invoke-virtual {p0, v1}, Lcom/google/android/gms/measurement/internal/zznv;->zzb(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzjc;

    move-result-object v1

    .line 650
    sget-object v2, Lcom/google/android/gms/measurement/internal/zzoc;->zza:[I

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzjc;->zzc()Lcom/google/android/gms/measurement/internal/zzjb;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzjb;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eq v2, v5, :cond_1

    if-eq v2, v4, :cond_0

    if-eq v2, v3, :cond_0

    .line 657
    sget-object v2, Lcom/google/android/gms/measurement/internal/zzjc$zza;->zza:Lcom/google/android/gms/measurement/internal/zzjc$zza;

    sget-object v6, Lcom/google/android/gms/measurement/internal/zzal;->zzj:Lcom/google/android/gms/measurement/internal/zzal;

    invoke-virtual {v0, v2, v6}, Lcom/google/android/gms/measurement/internal/zzai;->zza(Lcom/google/android/gms/measurement/internal/zzjc$zza;Lcom/google/android/gms/measurement/internal/zzal;)V

    goto :goto_0

    .line 653
    :cond_0
    sget-object v2, Lcom/google/android/gms/measurement/internal/zzjc$zza;->zza:Lcom/google/android/gms/measurement/internal/zzjc$zza;

    .line 654
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzjc;->zza()I

    move-result v6

    .line 655
    invoke-virtual {v0, v2, v6}, Lcom/google/android/gms/measurement/internal/zzai;->zza(Lcom/google/android/gms/measurement/internal/zzjc$zza;I)V

    goto :goto_0

    .line 651
    :cond_1
    sget-object v2, Lcom/google/android/gms/measurement/internal/zzjc$zza;->zza:Lcom/google/android/gms/measurement/internal/zzjc$zza;

    sget-object v6, Lcom/google/android/gms/measurement/internal/zzal;->zzi:Lcom/google/android/gms/measurement/internal/zzal;

    invoke-virtual {v0, v2, v6}, Lcom/google/android/gms/measurement/internal/zzai;->zza(Lcom/google/android/gms/measurement/internal/zzjc$zza;Lcom/google/android/gms/measurement/internal/zzal;)V

    .line 658
    :goto_0
    sget-object v2, Lcom/google/android/gms/measurement/internal/zzoc;->zza:[I

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzjc;->zzd()Lcom/google/android/gms/measurement/internal/zzjb;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzjb;->ordinal()I

    move-result v6

    aget v2, v2, v6

    if-eq v2, v5, :cond_3

    if-eq v2, v4, :cond_2

    if-eq v2, v3, :cond_2

    .line 665
    sget-object v1, Lcom/google/android/gms/measurement/internal/zzjc$zza;->zzb:Lcom/google/android/gms/measurement/internal/zzjc$zza;

    sget-object v2, Lcom/google/android/gms/measurement/internal/zzal;->zzj:Lcom/google/android/gms/measurement/internal/zzal;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzai;->zza(Lcom/google/android/gms/measurement/internal/zzjc$zza;Lcom/google/android/gms/measurement/internal/zzal;)V

    goto :goto_2

    .line 661
    :cond_2
    sget-object v2, Lcom/google/android/gms/measurement/internal/zzjc$zza;->zzb:Lcom/google/android/gms/measurement/internal/zzjc$zza;

    .line 662
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzjc;->zza()I

    move-result v1

    .line 663
    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/measurement/internal/zzai;->zza(Lcom/google/android/gms/measurement/internal/zzjc$zza;I)V

    goto :goto_2

    .line 659
    :cond_3
    sget-object v1, Lcom/google/android/gms/measurement/internal/zzjc$zza;->zzb:Lcom/google/android/gms/measurement/internal/zzjc$zza;

    sget-object v2, Lcom/google/android/gms/measurement/internal/zzal;->zzi:Lcom/google/android/gms/measurement/internal/zzal;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzai;->zza(Lcom/google/android/gms/measurement/internal/zzjc$zza;Lcom/google/android/gms/measurement/internal/zzal;)V

    goto :goto_2

    .line 667
    :cond_4
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzh;->zzac()Ljava/lang/String;

    move-result-object v1

    .line 669
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzl()Lcom/google/android/gms/measurement/internal/zzhp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zziy;->zzt()V

    .line 670
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzs()V

    .line 671
    invoke-virtual {p0, v1}, Lcom/google/android/gms/measurement/internal/zznv;->zzb(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzjc;

    move-result-object v1

    .line 672
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzjc;->zze()Ljava/lang/Boolean;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 673
    sget-object v2, Lcom/google/android/gms/measurement/internal/zzjc$zza;->zza:Lcom/google/android/gms/measurement/internal/zzjc$zza;

    .line 674
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzjc;->zza()I

    move-result v3

    .line 675
    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/measurement/internal/zzai;->zza(Lcom/google/android/gms/measurement/internal/zzjc$zza;I)V

    goto :goto_1

    .line 676
    :cond_5
    sget-object v2, Lcom/google/android/gms/measurement/internal/zzjc$zza;->zza:Lcom/google/android/gms/measurement/internal/zzjc$zza;

    sget-object v3, Lcom/google/android/gms/measurement/internal/zzal;->zzj:Lcom/google/android/gms/measurement/internal/zzal;

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/measurement/internal/zzai;->zza(Lcom/google/android/gms/measurement/internal/zzjc$zza;Lcom/google/android/gms/measurement/internal/zzal;)V

    .line 677
    :goto_1
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzjc;->zzf()Ljava/lang/Boolean;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 678
    sget-object v2, Lcom/google/android/gms/measurement/internal/zzjc$zza;->zzb:Lcom/google/android/gms/measurement/internal/zzjc$zza;

    .line 679
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzjc;->zza()I

    move-result v1

    .line 680
    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/measurement/internal/zzai;->zza(Lcom/google/android/gms/measurement/internal/zzjc$zza;I)V

    goto :goto_2

    .line 681
    :cond_6
    sget-object v1, Lcom/google/android/gms/measurement/internal/zzjc$zza;->zzb:Lcom/google/android/gms/measurement/internal/zzjc$zza;

    sget-object v2, Lcom/google/android/gms/measurement/internal/zzal;->zzj:Lcom/google/android/gms/measurement/internal/zzal;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzai;->zza(Lcom/google/android/gms/measurement/internal/zzjc$zza;Lcom/google/android/gms/measurement/internal/zzal;)V

    .line 682
    :goto_2
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzh;->zzac()Ljava/lang/String;

    move-result-object v1

    .line 684
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzl()Lcom/google/android/gms/measurement/internal/zzhp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zziy;->zzt()V

    .line 685
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzs()V

    .line 687
    invoke-direct {p0, v1}, Lcom/google/android/gms/measurement/internal/zznv;->zzd(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzaz;

    move-result-object v2

    invoke-virtual {p0, v1}, Lcom/google/android/gms/measurement/internal/zznv;->zzb(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzjc;

    move-result-object v3

    .line 688
    invoke-direct {p0, v1, v2, v3, v0}, Lcom/google/android/gms/measurement/internal/zznv;->zza(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzaz;Lcom/google/android/gms/measurement/internal/zzjc;Lcom/google/android/gms/measurement/internal/zzai;)Lcom/google/android/gms/measurement/internal/zzaz;

    move-result-object v1

    .line 689
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzaz;->zzd()Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {p2, v2}, Lcom/google/android/gms/internal/measurement/zzgn$zzk$zza;->zzb(Z)Lcom/google/android/gms/internal/measurement/zzgn$zzk$zza;

    .line 690
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzaz;->zze()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 691
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzaz;->zze()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/google/android/gms/internal/measurement/zzgn$zzk$zza;->zzh(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzgn$zzk$zza;

    .line 694
    :cond_7
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzl()Lcom/google/android/gms/measurement/internal/zzhp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zziy;->zzt()V

    .line 695
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzs()V

    .line 697
    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/zzgn$zzk$zza;->zzab()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const-string v3, "_npa"

    if-eqz v2, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/zzgn$zzo;

    .line 698
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzgn$zzo;->zzg()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    goto :goto_3

    :cond_9
    const/4 v2, 0x0

    :goto_3
    if-eqz v2, :cond_10

    .line 703
    sget-object v1, Lcom/google/android/gms/measurement/internal/zzjc$zza;->zzd:Lcom/google/android/gms/measurement/internal/zzjc$zza;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzai;->zza(Lcom/google/android/gms/measurement/internal/zzjc$zza;)Lcom/google/android/gms/measurement/internal/zzal;

    move-result-object v1

    sget-object v4, Lcom/google/android/gms/measurement/internal/zzal;->zza:Lcom/google/android/gms/measurement/internal/zzal;

    if-ne v1, v4, :cond_11

    .line 705
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzf()Lcom/google/android/gms/measurement/internal/zzam;

    move-result-object v1

    .line 706
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzh;->zzac()Ljava/lang/String;

    move-result-object v4

    .line 707
    invoke-virtual {v1, v4, v3}, Lcom/google/android/gms/measurement/internal/zzam;->zze(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzom;

    move-result-object v1

    if-eqz v1, :cond_c

    .line 709
    const-string v2, "tcf"

    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/zzom;->zzb:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 710
    sget-object v1, Lcom/google/android/gms/measurement/internal/zzjc$zza;->zzd:Lcom/google/android/gms/measurement/internal/zzjc$zza;

    sget-object v2, Lcom/google/android/gms/measurement/internal/zzal;->zzh:Lcom/google/android/gms/measurement/internal/zzal;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzai;->zza(Lcom/google/android/gms/measurement/internal/zzjc$zza;Lcom/google/android/gms/measurement/internal/zzal;)V

    goto/16 :goto_5

    .line 712
    :cond_a
    const-string v2, "app"

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zzom;->zzb:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 713
    sget-object v1, Lcom/google/android/gms/measurement/internal/zzjc$zza;->zzd:Lcom/google/android/gms/measurement/internal/zzjc$zza;

    sget-object v2, Lcom/google/android/gms/measurement/internal/zzal;->zzf:Lcom/google/android/gms/measurement/internal/zzal;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzai;->zza(Lcom/google/android/gms/measurement/internal/zzjc$zza;Lcom/google/android/gms/measurement/internal/zzal;)V

    goto/16 :goto_5

    .line 715
    :cond_b
    sget-object v1, Lcom/google/android/gms/measurement/internal/zzjc$zza;->zzd:Lcom/google/android/gms/measurement/internal/zzjc$zza;

    sget-object v2, Lcom/google/android/gms/measurement/internal/zzal;->zzd:Lcom/google/android/gms/measurement/internal/zzal;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzai;->zza(Lcom/google/android/gms/measurement/internal/zzjc$zza;Lcom/google/android/gms/measurement/internal/zzal;)V

    goto/16 :goto_5

    .line 717
    :cond_c
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzh;->zzx()Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v1, :cond_f

    .line 718
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    if-ne v1, v3, :cond_d

    .line 719
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzgn$zzo;->zzc()J

    move-result-wide v3

    const-wide/16 v5, 0x1

    cmp-long v3, v3, v5

    if-nez v3, :cond_f

    :cond_d
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-ne v1, v3, :cond_e

    .line 720
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzgn$zzo;->zzc()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_e

    goto :goto_4

    .line 722
    :cond_e
    sget-object v1, Lcom/google/android/gms/measurement/internal/zzjc$zza;->zzd:Lcom/google/android/gms/measurement/internal/zzjc$zza;

    sget-object v2, Lcom/google/android/gms/measurement/internal/zzal;->zzd:Lcom/google/android/gms/measurement/internal/zzal;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzai;->zza(Lcom/google/android/gms/measurement/internal/zzjc$zza;Lcom/google/android/gms/measurement/internal/zzal;)V

    goto :goto_5

    .line 721
    :cond_f
    :goto_4
    sget-object v1, Lcom/google/android/gms/measurement/internal/zzjc$zza;->zzd:Lcom/google/android/gms/measurement/internal/zzjc$zza;

    sget-object v2, Lcom/google/android/gms/measurement/internal/zzal;->zzf:Lcom/google/android/gms/measurement/internal/zzal;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzai;->zza(Lcom/google/android/gms/measurement/internal/zzjc$zza;Lcom/google/android/gms/measurement/internal/zzal;)V

    goto :goto_5

    .line 724
    :cond_10
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzh;->zzac()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lcom/google/android/gms/measurement/internal/zznv;->zza(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzai;)I

    move-result v1

    .line 726
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzgn$zzo;->zze()Lcom/google/android/gms/internal/measurement/zzgn$zzo$zza;

    move-result-object v2

    .line 727
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/measurement/zzgn$zzo$zza;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzgn$zzo$zza;

    move-result-object v2

    .line 728
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzb()Lcom/google/android/gms/common/util/Clock;

    move-result-object v3

    invoke-interface {v3}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/internal/measurement/zzgn$zzo$zza;->zzb(J)Lcom/google/android/gms/internal/measurement/zzgn$zzo$zza;

    move-result-object v2

    int-to-long v3, v1

    .line 729
    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/internal/measurement/zzgn$zzo$zza;->zza(J)Lcom/google/android/gms/internal/measurement/zzgn$zzo$zza;

    move-result-object v2

    .line 730
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzlc$zzb;->zzai()Lcom/google/android/gms/internal/measurement/zzml;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/zzlc;

    check-cast v2, Lcom/google/android/gms/internal/measurement/zzgn$zzo;

    .line 731
    invoke-virtual {p2, v2}, Lcom/google/android/gms/internal/measurement/zzgn$zzk$zza;->zza(Lcom/google/android/gms/internal/measurement/zzgn$zzo;)Lcom/google/android/gms/internal/measurement/zzgn$zzk$zza;

    .line 732
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzj()Lcom/google/android/gms/measurement/internal/zzgi;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzgi;->zzp()Lcom/google/android/gms/measurement/internal/zzgk;

    move-result-object v2

    const-string v3, "non_personalized_ads(_npa)"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v4, "Setting user property"

    invoke-virtual {v2, v4, v3, v1}, Lcom/google/android/gms/measurement/internal/zzgk;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 733
    :cond_11
    :goto_5
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzai;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/google/android/gms/internal/measurement/zzgn$zzk$zza;->zzf(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzgn$zzk$zza;

    .line 734
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zznv;->zzb:Lcom/google/android/gms/measurement/internal/zzhg;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzh;->zzac()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/measurement/internal/zzhg;->zzn(Ljava/lang/String;)Z

    move-result p1

    .line 735
    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/zzgn$zzk$zza;->zzaa()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    .line 736
    :goto_6
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_15

    .line 737
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/measurement/zzgn$zzf;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzgn$zzf;->zzg()Ljava/lang/String;

    move-result-object v3

    const-string v4, "_tcf"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_14

    .line 738
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzgn$zzf;

    .line 739
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzlc;->zzcd()Lcom/google/android/gms/internal/measurement/zzlc$zzb;

    move-result-object v0

    .line 740
    move-object v3, v0

    check-cast v3, Lcom/google/android/gms/internal/measurement/zzlc$zzb;

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzgn$zzf$zza;

    .line 741
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzgn$zzf$zza;->zzf()Ljava/util/List;

    move-result-object v3

    .line 742
    :goto_7
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_13

    .line 743
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/measurement/zzgn$zzh;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzgn$zzh;->zzg()Ljava/lang/String;

    move-result-object v4

    const-string v5, "_tcfd"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_12

    .line 745
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/measurement/zzgn$zzh;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzgn$zzh;->zzh()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p1}, Lcom/google/android/gms/measurement/internal/zzni;->zza(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    .line 747
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzgn$zzh;->zze()Lcom/google/android/gms/internal/measurement/zzgn$zzh$zza;

    move-result-object v3

    .line 748
    invoke-virtual {v3, v5}, Lcom/google/android/gms/internal/measurement/zzgn$zzh$zza;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzgn$zzh$zza;

    move-result-object v3

    .line 749
    invoke-virtual {v3, p1}, Lcom/google/android/gms/internal/measurement/zzgn$zzh$zza;->zzb(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzgn$zzh$zza;

    move-result-object p1

    .line 750
    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/internal/measurement/zzgn$zzf$zza;->zza(ILcom/google/android/gms/internal/measurement/zzgn$zzh$zza;)Lcom/google/android/gms/internal/measurement/zzgn$zzf$zza;

    goto :goto_8

    :cond_12
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 753
    :cond_13
    :goto_8
    invoke-virtual {p2, v2, v0}, Lcom/google/android/gms/internal/measurement/zzgn$zzk$zza;->zza(ILcom/google/android/gms/internal/measurement/zzgn$zzf$zza;)Lcom/google/android/gms/internal/measurement/zzgn$zzk$zza;

    return-void

    :cond_14
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_15
    return-void
.end method

.method final zza(Lcom/google/android/gms/measurement/internal/zzok;Lcom/google/android/gms/measurement/internal/zzp;)V
    .locals 13

    .line 2065
    const-string v0, "_id"

    .line 2066
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzl()Lcom/google/android/gms/measurement/internal/zzhp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zziy;->zzt()V

    .line 2067
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzs()V

    .line 2068
    invoke-static {p2}, Lcom/google/android/gms/measurement/internal/zznv;->zzi(Lcom/google/android/gms/measurement/internal/zzp;)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 2070
    :cond_0
    iget-boolean v1, p2, Lcom/google/android/gms/measurement/internal/zzp;->zzh:Z

    if-nez v1, :cond_1

    .line 2071
    invoke-virtual {p0, p2}, Lcom/google/android/gms/measurement/internal/zznv;->zza(Lcom/google/android/gms/measurement/internal/zzp;)Lcom/google/android/gms/measurement/internal/zzh;

    return-void

    .line 2073
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzq()Lcom/google/android/gms/measurement/internal/zzop;

    move-result-object v1

    iget-object v2, p1, Lcom/google/android/gms/measurement/internal/zzok;->zza:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/zzop;->zzb(Ljava/lang/String;)I

    move-result v5

    const/4 v1, 0x1

    const/16 v2, 0x18

    const/4 v3, 0x0

    if-eqz v5, :cond_3

    .line 2076
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzq()Lcom/google/android/gms/measurement/internal/zzop;

    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzok;->zza:Ljava/lang/String;

    .line 2077
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zze()Lcom/google/android/gms/measurement/internal/zzah;

    .line 2078
    invoke-static {v0, v2, v1}, Lcom/google/android/gms/measurement/internal/zzop;->zza(Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object v7

    .line 2079
    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzok;->zza:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/zzok;->zza:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    move v8, p1

    goto :goto_0

    :cond_2
    move v8, v3

    .line 2080
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzq()Lcom/google/android/gms/measurement/internal/zzop;

    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/zznv;->zzah:Lcom/google/android/gms/measurement/internal/zzoo;

    iget-object v4, p2, Lcom/google/android/gms/measurement/internal/zzp;->zza:Ljava/lang/String;

    const-string v6, "_ev"

    .line 2081
    invoke-static/range {v3 .. v8}, Lcom/google/android/gms/measurement/internal/zzop;->zza(Lcom/google/android/gms/measurement/internal/zzoo;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    return-void

    .line 2084
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzq()Lcom/google/android/gms/measurement/internal/zzop;

    move-result-object v4

    iget-object v5, p1, Lcom/google/android/gms/measurement/internal/zzok;->zza:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzok;->zza()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/google/android/gms/measurement/internal/zzop;->zza(Ljava/lang/String;Ljava/lang/Object;)I

    move-result v9

    if-eqz v9, :cond_6

    .line 2087
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzq()Lcom/google/android/gms/measurement/internal/zzop;

    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzok;->zza:Ljava/lang/String;

    .line 2088
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zze()Lcom/google/android/gms/measurement/internal/zzah;

    .line 2089
    invoke-static {v0, v2, v1}, Lcom/google/android/gms/measurement/internal/zzop;->zza(Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object v11

    .line 2090
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzok;->zza()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 2092
    instance-of v0, p1, Ljava/lang/String;

    if-nez v0, :cond_4

    instance-of v0, p1, Ljava/lang/CharSequence;

    if-eqz v0, :cond_5

    .line 2093
    :cond_4
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 2094
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    :cond_5
    move v12, v3

    .line 2095
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzq()Lcom/google/android/gms/measurement/internal/zzop;

    iget-object v7, p0, Lcom/google/android/gms/measurement/internal/zznv;->zzah:Lcom/google/android/gms/measurement/internal/zzoo;

    iget-object v8, p2, Lcom/google/android/gms/measurement/internal/zzp;->zza:Ljava/lang/String;

    const-string v10, "_ev"

    .line 2096
    invoke-static/range {v7 .. v12}, Lcom/google/android/gms/measurement/internal/zzop;->zza(Lcom/google/android/gms/measurement/internal/zzoo;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    return-void

    .line 2099
    :cond_6
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzq()Lcom/google/android/gms/measurement/internal/zzop;

    move-result-object v1

    iget-object v2, p1, Lcom/google/android/gms/measurement/internal/zzok;->zza:Ljava/lang/String;

    .line 2100
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzok;->zza()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Lcom/google/android/gms/measurement/internal/zzop;->zzc(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_7

    return-void

    .line 2103
    :cond_7
    iget-object v2, p1, Lcom/google/android/gms/measurement/internal/zzok;->zza:Ljava/lang/String;

    const-string v4, "_sid"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 2104
    iget-wide v7, p1, Lcom/google/android/gms/measurement/internal/zzok;->zzb:J

    iget-object v10, p1, Lcom/google/android/gms/measurement/internal/zzok;->zze:Ljava/lang/String;

    .line 2105
    iget-object v2, p2, Lcom/google/android/gms/measurement/internal/zzp;->zza:Ljava/lang/String;

    invoke-static {v2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 2108
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzf()Lcom/google/android/gms/measurement/internal/zzam;

    move-result-object v5

    const-string v6, "_sno"

    invoke-virtual {v5, v2, v6}, Lcom/google/android/gms/measurement/internal/zzam;->zze(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzom;

    move-result-object v5

    if-eqz v5, :cond_8

    .line 2109
    iget-object v6, v5, Lcom/google/android/gms/measurement/internal/zzom;->zze:Ljava/lang/Object;

    instance-of v6, v6, Ljava/lang/Long;

    if-eqz v6, :cond_8

    .line 2110
    iget-object v2, v5, Lcom/google/android/gms/measurement/internal/zzom;->zze:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    goto :goto_1

    :cond_8
    if-eqz v5, :cond_9

    .line 2112
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzj()Lcom/google/android/gms/measurement/internal/zzgi;

    move-result-object v6

    .line 2113
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzgi;->zzu()Lcom/google/android/gms/measurement/internal/zzgk;

    move-result-object v6

    const-string v9, "Retrieved last session number from database does not contain a valid (long) value"

    iget-object v5, v5, Lcom/google/android/gms/measurement/internal/zzom;->zze:Ljava/lang/Object;

    .line 2114
    invoke-virtual {v6, v9, v5}, Lcom/google/android/gms/measurement/internal/zzgk;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2116
    :cond_9
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzf()Lcom/google/android/gms/measurement/internal/zzam;

    move-result-object v5

    const-string v6, "_s"

    invoke-virtual {v5, v2, v6}, Lcom/google/android/gms/measurement/internal/zzam;->zzd(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzbd;

    move-result-object v2

    if-eqz v2, :cond_a

    .line 2118
    iget-wide v5, v2, Lcom/google/android/gms/measurement/internal/zzbd;->zzc:J

    .line 2119
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzj()Lcom/google/android/gms/measurement/internal/zzgi;

    move-result-object v2

    .line 2120
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzgi;->zzp()Lcom/google/android/gms/measurement/internal/zzgk;

    move-result-object v2

    const-string v9, "Backfill the session number. Last used session number"

    .line 2121
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v2, v9, v11}, Lcom/google/android/gms/measurement/internal/zzgk;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    :cond_a
    const-wide/16 v5, 0x0

    :goto_1
    const-wide/16 v11, 0x1

    add-long/2addr v5, v11

    .line 2123
    new-instance v2, Lcom/google/android/gms/measurement/internal/zzok;

    const-string v9, "_sno"

    .line 2124
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    move-object v5, v2

    move-object v6, v9

    move-object v9, v11

    invoke-direct/range {v5 .. v10}, Lcom/google/android/gms/measurement/internal/zzok;-><init>(Ljava/lang/String;JLjava/lang/Object;Ljava/lang/String;)V

    .line 2125
    invoke-virtual {p0, v2, p2}, Lcom/google/android/gms/measurement/internal/zznv;->zza(Lcom/google/android/gms/measurement/internal/zzok;Lcom/google/android/gms/measurement/internal/zzp;)V

    .line 2126
    :cond_b
    new-instance v2, Lcom/google/android/gms/measurement/internal/zzom;

    iget-object v5, p2, Lcom/google/android/gms/measurement/internal/zzp;->zza:Ljava/lang/String;

    .line 2127
    invoke-static {v5}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v6, v5

    check-cast v6, Ljava/lang/String;

    iget-object v5, p1, Lcom/google/android/gms/measurement/internal/zzok;->zze:Ljava/lang/String;

    .line 2128
    invoke-static {v5}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v7, v5

    check-cast v7, Ljava/lang/String;

    iget-object v8, p1, Lcom/google/android/gms/measurement/internal/zzok;->zza:Ljava/lang/String;

    iget-wide v9, p1, Lcom/google/android/gms/measurement/internal/zzok;->zzb:J

    move-object v5, v2

    move-object v11, v1

    invoke-direct/range {v5 .. v11}, Lcom/google/android/gms/measurement/internal/zzom;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V

    .line 2129
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzj()Lcom/google/android/gms/measurement/internal/zzgi;

    move-result-object v5

    .line 2130
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzgi;->zzp()Lcom/google/android/gms/measurement/internal/zzgk;

    move-result-object v5

    .line 2131
    iget-object v6, p0, Lcom/google/android/gms/measurement/internal/zznv;->zzm:Lcom/google/android/gms/measurement/internal/zzhw;

    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzhw;->zzk()Lcom/google/android/gms/measurement/internal/zzgh;

    move-result-object v6

    .line 2132
    iget-object v7, v2, Lcom/google/android/gms/measurement/internal/zzom;->zzc:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lcom/google/android/gms/measurement/internal/zzgh;->zzc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 2133
    const-string v7, "Setting user property"

    invoke-virtual {v5, v7, v6, v1}, Lcom/google/android/gms/measurement/internal/zzgk;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2134
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzf()Lcom/google/android/gms/measurement/internal/zzam;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzam;->zzp()V

    .line 2135
    :try_start_0
    iget-object v1, v2, Lcom/google/android/gms/measurement/internal/zzom;->zzc:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 2137
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzf()Lcom/google/android/gms/measurement/internal/zzam;

    move-result-object v1

    iget-object v5, p2, Lcom/google/android/gms/measurement/internal/zzp;->zza:Ljava/lang/String;

    .line 2138
    invoke-virtual {v1, v5, v0}, Lcom/google/android/gms/measurement/internal/zzam;->zze(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzom;

    move-result-object v0

    if-eqz v0, :cond_c

    .line 2139
    iget-object v1, v2, Lcom/google/android/gms/measurement/internal/zzom;->zze:Ljava/lang/Object;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzom;->zze:Ljava/lang/Object;

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 2140
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzf()Lcom/google/android/gms/measurement/internal/zzam;

    move-result-object v0

    iget-object v1, p2, Lcom/google/android/gms/measurement/internal/zzp;->zza:Ljava/lang/String;

    const-string v5, "_lair"

    .line 2141
    invoke-virtual {v0, v1, v5}, Lcom/google/android/gms/measurement/internal/zzam;->zzh(Ljava/lang/String;Ljava/lang/String;)V

    .line 2142
    :cond_c
    invoke-virtual {p0, p2}, Lcom/google/android/gms/measurement/internal/zznv;->zza(Lcom/google/android/gms/measurement/internal/zzp;)Lcom/google/android/gms/measurement/internal/zzh;

    .line 2143
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzf()Lcom/google/android/gms/measurement/internal/zzam;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/google/android/gms/measurement/internal/zzam;->zza(Lcom/google/android/gms/measurement/internal/zzom;)Z

    move-result v0

    .line 2144
    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/zzok;->zza:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_d

    .line 2146
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzp()Lcom/google/android/gms/measurement/internal/zzol;

    move-result-object p1

    iget-object v1, p2, Lcom/google/android/gms/measurement/internal/zzp;->zzv:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/google/android/gms/measurement/internal/zzol;->zza(Ljava/lang/String;)J

    move-result-wide v4

    .line 2147
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzf()Lcom/google/android/gms/measurement/internal/zzam;

    move-result-object p1

    iget-object v1, p2, Lcom/google/android/gms/measurement/internal/zzp;->zza:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/google/android/gms/measurement/internal/zzam;->zze(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzh;

    move-result-object p1

    if-eqz p1, :cond_d

    .line 2149
    invoke-virtual {p1, v4, v5}, Lcom/google/android/gms/measurement/internal/zzh;->zzs(J)V

    .line 2150
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzh;->zzas()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 2151
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzf()Lcom/google/android/gms/measurement/internal/zzam;

    move-result-object v1

    .line 2152
    invoke-virtual {v1, p1, v3, v3}, Lcom/google/android/gms/measurement/internal/zzam;->zza(Lcom/google/android/gms/measurement/internal/zzh;ZZ)V

    .line 2153
    :cond_d
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzf()Lcom/google/android/gms/measurement/internal/zzam;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzam;->zzw()V

    if-nez v0, :cond_e

    .line 2155
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzj()Lcom/google/android/gms/measurement/internal/zzgi;

    move-result-object p1

    .line 2156
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzgi;->zzg()Lcom/google/android/gms/measurement/internal/zzgk;

    move-result-object p1

    const-string v0, "Too many unique user properties are set. Ignoring user property"

    .line 2157
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zznv;->zzm:Lcom/google/android/gms/measurement/internal/zzhw;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzhw;->zzk()Lcom/google/android/gms/measurement/internal/zzgh;

    move-result-object v1

    .line 2158
    iget-object v3, v2, Lcom/google/android/gms/measurement/internal/zzom;->zzc:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/google/android/gms/measurement/internal/zzgh;->zzc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/zzom;->zze:Ljava/lang/Object;

    .line 2159
    invoke-virtual {p1, v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzgk;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2160
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzq()Lcom/google/android/gms/measurement/internal/zzop;

    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/zznv;->zzah:Lcom/google/android/gms/measurement/internal/zzoo;

    iget-object v4, p2, Lcom/google/android/gms/measurement/internal/zzp;->zza:Ljava/lang/String;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v5, 0x9

    const/4 v6, 0x0

    .line 2161
    invoke-static/range {v3 .. v8}, Lcom/google/android/gms/measurement/internal/zzop;->zza(Lcom/google/android/gms/measurement/internal/zzoo;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2162
    :cond_e
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzf()Lcom/google/android/gms/measurement/internal/zzam;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzam;->zzu()V

    return-void

    :catchall_0
    move-exception p1

    .line 2164
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzf()Lcom/google/android/gms/measurement/internal/zzam;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzam;->zzu()V

    .line 2165
    throw p1
.end method

.method final zza(Ljava/lang/Runnable;)V
    .locals 1

    .line 467
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzl()Lcom/google/android/gms/measurement/internal/zzhp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zziy;->zzt()V

    .line 468
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zznv;->zzq:Ljava/util/List;

    if-nez v0, :cond_0

    .line 469
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zznv;->zzq:Ljava/util/List;

    .line 470
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zznv;->zzq:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method final zza(Ljava/lang/String;ILjava/lang/Throwable;[BLcom/google/android/gms/measurement/internal/zzog;)V
    .locals 4

    .line 1209
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzl()Lcom/google/android/gms/measurement/internal/zzhp;

    move-result-object p4

    invoke-virtual {p4}, Lcom/google/android/gms/measurement/internal/zziy;->zzt()V

    .line 1210
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzs()V

    const/16 p4, 0xc8

    const/4 v0, 0x0

    if-eq p2, p4, :cond_0

    const/16 p4, 0xcc

    if-ne p2, p4, :cond_4

    :cond_0
    if-nez p3, :cond_4

    if-eqz p5, :cond_2

    .line 1213
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzf()Lcom/google/android/gms/measurement/internal/zzam;

    move-result-object p3

    invoke-virtual {p5}, Lcom/google/android/gms/measurement/internal/zzog;->zza()J

    move-result-wide p4

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p4

    .line 1214
    invoke-virtual {p3}, Lcom/google/android/gms/measurement/internal/zziy;->zzt()V

    .line 1215
    invoke-virtual {p3}, Lcom/google/android/gms/measurement/internal/zznr;->zzal()V

    .line 1216
    invoke-static {p4}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1217
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzrw;->zza()Z

    move-result p5

    if-eqz p5, :cond_1

    invoke-virtual {p3}, Lcom/google/android/gms/measurement/internal/zziy;->zze()Lcom/google/android/gms/measurement/internal/zzah;

    move-result-object p5

    sget-object v1, Lcom/google/android/gms/measurement/internal/zzbj;->zzbz:Lcom/google/android/gms/measurement/internal/zzfz;

    invoke-virtual {p5, v1}, Lcom/google/android/gms/measurement/internal/zzah;->zza(Lcom/google/android/gms/measurement/internal/zzfz;)Z

    move-result p5

    if-eqz p5, :cond_2

    .line 1218
    :cond_1
    invoke-virtual {p3}, Lcom/google/android/gms/measurement/internal/zzam;->e_()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p5

    const/4 v1, 0x1

    .line 1219
    new-array v2, v1, [Ljava/lang/String;

    invoke-static {p4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p4

    aput-object p4, v2, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1220
    :try_start_1
    const-string p4, "upload_queue"

    const-string v3, "rowid=?"

    invoke-virtual {p5, p4, v3, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p4

    if-eq p4, v1, :cond_2

    .line 1222
    invoke-virtual {p3}, Lcom/google/android/gms/measurement/internal/zziy;->zzj()Lcom/google/android/gms/measurement/internal/zzgi;

    move-result-object p4

    invoke-virtual {p4}, Lcom/google/android/gms/measurement/internal/zzgi;->zzu()Lcom/google/android/gms/measurement/internal/zzgk;

    move-result-object p4

    const-string p5, "Deleted fewer rows from upload_queue than expected"

    invoke-virtual {p4, p5}, Lcom/google/android/gms/measurement/internal/zzgk;->zza(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1225
    :try_start_2
    invoke-virtual {p3}, Lcom/google/android/gms/measurement/internal/zziy;->zzj()Lcom/google/android/gms/measurement/internal/zzgi;

    move-result-object p2

    .line 1226
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzgi;->zzg()Lcom/google/android/gms/measurement/internal/zzgk;

    move-result-object p2

    const-string p3, "Failed to delete a MeasurementBatch in a upload_queue table"

    .line 1227
    invoke-virtual {p2, p3, p1}, Lcom/google/android/gms/measurement/internal/zzgk;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1228
    throw p1

    .line 1229
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzj()Lcom/google/android/gms/measurement/internal/zzgi;

    move-result-object p3

    .line 1230
    invoke-virtual {p3}, Lcom/google/android/gms/measurement/internal/zzgi;->zzp()Lcom/google/android/gms/measurement/internal/zzgk;

    move-result-object p3

    const-string p4, "Successfully uploaded batch from upload queue. appId, status"

    .line 1231
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p3, p4, p1, p2}, Lcom/google/android/gms/measurement/internal/zzgk;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1232
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zze()Lcom/google/android/gms/measurement/internal/zzah;

    move-result-object p2

    sget-object p3, Lcom/google/android/gms/measurement/internal/zzbj;->zzbz:Lcom/google/android/gms/measurement/internal/zzfz;

    invoke-virtual {p2, p3}, Lcom/google/android/gms/measurement/internal/zzah;->zza(Lcom/google/android/gms/measurement/internal/zzfz;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 1233
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzh()Lcom/google/android/gms/measurement/internal/zzgp;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzgp;->zzu()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzf()Lcom/google/android/gms/measurement/internal/zzam;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/google/android/gms/measurement/internal/zzam;->zzs(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 1234
    invoke-direct {p0, p1}, Lcom/google/android/gms/measurement/internal/zznv;->zze(Ljava/lang/String;)V

    goto :goto_1

    .line 1235
    :cond_3
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzac()V

    goto :goto_1

    .line 1236
    :cond_4
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzj()Lcom/google/android/gms/measurement/internal/zzgi;

    move-result-object p3

    .line 1237
    invoke-virtual {p3}, Lcom/google/android/gms/measurement/internal/zzgi;->zzp()Lcom/google/android/gms/measurement/internal/zzgk;

    move-result-object p3

    const-string p4, "Network upload failed. Will retry later. appId, status"

    .line 1238
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p3, p4, p1, p2}, Lcom/google/android/gms/measurement/internal/zzgk;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    if-eqz p5, :cond_5

    .line 1240
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzf()Lcom/google/android/gms/measurement/internal/zzam;

    move-result-object p1

    invoke-virtual {p5}, Lcom/google/android/gms/measurement/internal/zzog;->zza()J

    move-result-wide p2

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/android/gms/measurement/internal/zzam;->zza(Ljava/lang/Long;)V

    .line 1241
    :cond_5
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzac()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1242
    :goto_1
    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zznv;->zzv:Z

    .line 1243
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzaa()V

    return-void

    :catchall_0
    move-exception p1

    .line 1245
    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zznv;->zzv:Z

    .line 1246
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzaa()V

    .line 1247
    throw p1
.end method

.method final synthetic zza(Ljava/lang/String;ILjava/lang/Throwable;[BLjava/util/Map;)V
    .locals 0

    .line 1016
    invoke-virtual/range {p0 .. p5}, Lcom/google/android/gms/measurement/internal/zznv;->zzb(Ljava/lang/String;ILjava/lang/Throwable;[BLjava/util/Map;)V

    return-void
.end method

.method final zza(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/zzgn$zzk$zza;)V
    .locals 5

    .line 529
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzi()Lcom/google/android/gms/measurement/internal/zzhg;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/measurement/internal/zzhg;->zzg(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 531
    invoke-virtual {p2, v0}, Lcom/google/android/gms/internal/measurement/zzgn$zzk$zza;->zzd(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/measurement/zzgn$zzk$zza;

    .line 532
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzi()Lcom/google/android/gms/measurement/internal/zzhg;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/measurement/internal/zzhg;->zzq(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 533
    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/zzgn$zzk$zza;->zzj()Lcom/google/android/gms/internal/measurement/zzgn$zzk$zza;

    .line 534
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzi()Lcom/google/android/gms/measurement/internal/zzhg;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/measurement/internal/zzhg;->zzt(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_2

    .line 535
    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/zzgn$zzk$zza;->zzy()Ljava/lang/String;

    move-result-object v0

    .line 536
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 537
    const-string v2, "."

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-eq v2, v1, :cond_2

    const/4 v3, 0x0

    .line 539
    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 540
    invoke-virtual {p2, v0}, Lcom/google/android/gms/internal/measurement/zzgn$zzk$zza;->zzo(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzgn$zzk$zza;

    .line 541
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzi()Lcom/google/android/gms/measurement/internal/zzhg;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/measurement/internal/zzhg;->zzu(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 542
    const-string v0, "_id"

    .line 543
    invoke-static {p2, v0}, Lcom/google/android/gms/measurement/internal/zzol;->zza(Lcom/google/android/gms/internal/measurement/zzgn$zzk$zza;Ljava/lang/String;)I

    move-result v0

    if-eq v0, v1, :cond_3

    .line 545
    invoke-virtual {p2, v0}, Lcom/google/android/gms/internal/measurement/zzgn$zzk$zza;->zzc(I)Lcom/google/android/gms/internal/measurement/zzgn$zzk$zza;

    .line 546
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzi()Lcom/google/android/gms/measurement/internal/zzhg;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/measurement/internal/zzhg;->zzs(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 547
    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/zzgn$zzk$zza;->zzk()Lcom/google/android/gms/internal/measurement/zzgn$zzk$zza;

    .line 548
    :cond_4
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzi()Lcom/google/android/gms/measurement/internal/zzhg;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/measurement/internal/zzhg;->zzp(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 549
    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/zzgn$zzk$zza;->zzh()Lcom/google/android/gms/internal/measurement/zzgn$zzk$zza;

    .line 550
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzpd;->zza()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 551
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zze()Lcom/google/android/gms/measurement/internal/zzah;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/measurement/internal/zzbj;->zzdc:Lcom/google/android/gms/measurement/internal/zzfz;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzah;->zza(Lcom/google/android/gms/measurement/internal/zzfz;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 552
    invoke-virtual {p0, p1}, Lcom/google/android/gms/measurement/internal/zznv;->zzb(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzjc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzjc;->zzj()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 553
    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zznv;->zzae:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/measurement/internal/zznv$zzb;

    if-eqz v0, :cond_6

    .line 554
    iget-wide v1, v0, Lcom/google/android/gms/measurement/internal/zznv$zzb;->zzb:J

    .line 555
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zze()Lcom/google/android/gms/measurement/internal/zzah;

    move-result-object v3

    sget-object v4, Lcom/google/android/gms/measurement/internal/zzbj;->zzaw:Lcom/google/android/gms/measurement/internal/zzfz;

    invoke-virtual {v3, p1, v4}, Lcom/google/android/gms/measurement/internal/zzah;->zzc(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzfz;)J

    move-result-wide v3

    add-long/2addr v1, v3

    .line 556
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzb()Lcom/google/android/gms/common/util/Clock;

    move-result-object v3

    invoke-interface {v3}, Lcom/google/android/gms/common/util/Clock;->elapsedRealtime()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-gez v1, :cond_7

    .line 557
    :cond_6
    new-instance v0, Lcom/google/android/gms/measurement/internal/zznv$zzb;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/measurement/internal/zznv$zzb;-><init>(Lcom/google/android/gms/measurement/internal/zznv;Lcom/google/android/gms/measurement/internal/zzof;)V

    .line 558
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zznv;->zzae:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 559
    :cond_7
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zznv$zzb;->zza:Ljava/lang/String;

    invoke-virtual {p2, v0}, Lcom/google/android/gms/internal/measurement/zzgn$zzk$zza;->zzk(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzgn$zzk$zza;

    .line 560
    :cond_8
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzi()Lcom/google/android/gms/measurement/internal/zzhg;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/measurement/internal/zzhg;->zzr(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 561
    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/zzgn$zzk$zza;->zzr()Lcom/google/android/gms/internal/measurement/zzgn$zzk$zza;

    :cond_9
    return-void
.end method

.method public final zza(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzlh;)V
    .locals 1

    .line 1788
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzl()Lcom/google/android/gms/measurement/internal/zzhp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zziy;->zzt()V

    .line 1789
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zznv;->zzag:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p2, :cond_1

    .line 1790
    :cond_0
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zznv;->zzag:Ljava/lang/String;

    .line 1791
    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zznv;->zzaf:Lcom/google/android/gms/measurement/internal/zzlh;

    :cond_1
    return-void
.end method

.method final zza(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzp;)V
    .locals 8

    .line 1665
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzl()Lcom/google/android/gms/measurement/internal/zzhp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zziy;->zzt()V

    .line 1666
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzs()V

    .line 1667
    invoke-static {p2}, Lcom/google/android/gms/measurement/internal/zznv;->zzi(Lcom/google/android/gms/measurement/internal/zzp;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1669
    :cond_0
    iget-boolean v0, p2, Lcom/google/android/gms/measurement/internal/zzp;->zzh:Z

    if-nez v0, :cond_1

    .line 1670
    invoke-virtual {p0, p2}, Lcom/google/android/gms/measurement/internal/zznv;->zza(Lcom/google/android/gms/measurement/internal/zzp;)Lcom/google/android/gms/measurement/internal/zzh;

    return-void

    .line 1672
    :cond_1
    invoke-direct {p0, p2}, Lcom/google/android/gms/measurement/internal/zznv;->zzh(Lcom/google/android/gms/measurement/internal/zzp;)Ljava/lang/Boolean;

    move-result-object v0

    .line 1673
    const-string v1, "_npa"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    if-eqz v0, :cond_3

    .line 1674
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzj()Lcom/google/android/gms/measurement/internal/zzgi;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzgi;->zzc()Lcom/google/android/gms/measurement/internal/zzgk;

    move-result-object p1

    const-string v1, "Falling back to manifest metadata value for ad personalization"

    invoke-virtual {p1, v1}, Lcom/google/android/gms/measurement/internal/zzgk;->zza(Ljava/lang/String;)V

    .line 1675
    new-instance p1, Lcom/google/android/gms/measurement/internal/zzok;

    .line 1676
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzb()Lcom/google/android/gms/common/util/Clock;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v4

    .line 1677
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    const-wide/16 v0, 0x1

    goto :goto_0

    :cond_2
    const-wide/16 v0, 0x0

    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const-string v7, "auto"

    const-string v3, "_npa"

    move-object v2, p1

    invoke-direct/range {v2 .. v7}, Lcom/google/android/gms/measurement/internal/zzok;-><init>(Ljava/lang/String;JLjava/lang/Object;Ljava/lang/String;)V

    .line 1678
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/measurement/internal/zznv;->zza(Lcom/google/android/gms/measurement/internal/zzok;Lcom/google/android/gms/measurement/internal/zzp;)V

    return-void

    .line 1680
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzj()Lcom/google/android/gms/measurement/internal/zzgi;

    move-result-object v0

    .line 1681
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgi;->zzc()Lcom/google/android/gms/measurement/internal/zzgk;

    move-result-object v0

    .line 1682
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zznv;->zzm:Lcom/google/android/gms/measurement/internal/zzhw;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzhw;->zzk()Lcom/google/android/gms/measurement/internal/zzgh;

    move-result-object v1

    .line 1683
    invoke-virtual {v1, p1}, Lcom/google/android/gms/measurement/internal/zzgh;->zzc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1684
    const-string v2, "Removing user property"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/measurement/internal/zzgk;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1685
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzf()Lcom/google/android/gms/measurement/internal/zzam;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzam;->zzp()V

    .line 1686
    :try_start_0
    invoke-virtual {p0, p2}, Lcom/google/android/gms/measurement/internal/zznv;->zza(Lcom/google/android/gms/measurement/internal/zzp;)Lcom/google/android/gms/measurement/internal/zzh;

    .line 1687
    const-string v0, "_id"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1688
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzf()Lcom/google/android/gms/measurement/internal/zzam;

    move-result-object v0

    iget-object v1, p2, Lcom/google/android/gms/measurement/internal/zzp;->zza:Ljava/lang/String;

    .line 1689
    invoke-static {v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "_lair"

    .line 1690
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzam;->zzh(Ljava/lang/String;Ljava/lang/String;)V

    .line 1691
    :cond_4
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzf()Lcom/google/android/gms/measurement/internal/zzam;

    move-result-object v0

    iget-object p2, p2, Lcom/google/android/gms/measurement/internal/zzp;->zza:Ljava/lang/String;

    .line 1692
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 1693
    invoke-virtual {v0, p2, p1}, Lcom/google/android/gms/measurement/internal/zzam;->zzh(Ljava/lang/String;Ljava/lang/String;)V

    .line 1694
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzf()Lcom/google/android/gms/measurement/internal/zzam;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzam;->zzw()V

    .line 1695
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzj()Lcom/google/android/gms/measurement/internal/zzgi;

    move-result-object p2

    .line 1696
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzgi;->zzc()Lcom/google/android/gms/measurement/internal/zzgk;

    move-result-object p2

    const-string v0, "User property removed"

    .line 1697
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zznv;->zzm:Lcom/google/android/gms/measurement/internal/zzhw;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzhw;->zzk()Lcom/google/android/gms/measurement/internal/zzgh;

    move-result-object v1

    .line 1698
    invoke-virtual {v1, p1}, Lcom/google/android/gms/measurement/internal/zzgh;->zzc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1699
    invoke-virtual {p2, v0, p1}, Lcom/google/android/gms/measurement/internal/zzgk;->zza(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1700
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzf()Lcom/google/android/gms/measurement/internal/zzam;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzam;->zzu()V

    return-void

    :catchall_0
    move-exception p1

    .line 1702
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzf()Lcom/google/android/gms/measurement/internal/zzam;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzam;->zzu()V

    .line 1703
    throw p1
.end method

.method final zza(Z)V
    .locals 0

    .line 1110
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzac()V

    return-void
.end method

.method final zza(ZILjava/lang/Throwable;[BLjava/lang/String;Ljava/util/List;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZI",
            "Ljava/lang/Throwable;",
            "[B",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Lcom/google/android/gms/internal/measurement/zzgn$zzj;",
            "Lcom/google/android/gms/measurement/internal/zzns;",
            ">;>;)V"
        }
    .end annotation

    move-object v1, p0

    move/from16 v0, p2

    move-object/from16 v2, p3

    move-object/from16 v8, p5

    .line 1113
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzl()Lcom/google/android/gms/measurement/internal/zzhp;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zziy;->zzt()V

    .line 1114
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzs()V

    const/4 v9, 0x0

    if-nez p4, :cond_0

    .line 1116
    :try_start_0
    new-array v3, v9, [B

    goto :goto_0

    :cond_0
    move-object/from16 v3, p4

    .line 1117
    :goto_0
    iget-object v4, v1, Lcom/google/android/gms/measurement/internal/zznv;->zzz:Ljava/util/List;

    invoke-static {v4}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v10, v4

    check-cast v10, Ljava/util/List;

    const/4 v11, 0x0

    .line 1118
    iput-object v11, v1, Lcom/google/android/gms/measurement/internal/zznv;->zzz:Ljava/util/List;

    .line 1119
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzpo;->zza()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1120
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zze()Lcom/google/android/gms/measurement/internal/zzah;

    move-result-object v4

    sget-object v5, Lcom/google/android/gms/measurement/internal/zzbj;->zzcr:Lcom/google/android/gms/measurement/internal/zzfz;

    invoke-virtual {v4, v5}, Lcom/google/android/gms/measurement/internal/zzah;->zza(Lcom/google/android/gms/measurement/internal/zzfz;)Z

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v4, :cond_1

    if-eqz p1, :cond_3

    :cond_1
    const/16 v4, 0xc8

    if-eq v0, v4, :cond_2

    const/16 v4, 0xcc

    if-ne v0, v4, :cond_f

    :cond_2
    if-nez v2, :cond_f

    .line 1121
    :cond_3
    :try_start_1
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzpo;->zza()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1122
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zze()Lcom/google/android/gms/measurement/internal/zzah;

    move-result-object v2

    sget-object v4, Lcom/google/android/gms/measurement/internal/zzbj;->zzcr:Lcom/google/android/gms/measurement/internal/zzfz;

    invoke-virtual {v2, v4}, Lcom/google/android/gms/measurement/internal/zzah;->zza(Lcom/google/android/gms/measurement/internal/zzfz;)Z

    move-result v2

    if-eqz v2, :cond_4

    if-eqz p1, :cond_5

    .line 1124
    :cond_4
    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zznv;->zzj:Lcom/google/android/gms/measurement/internal/zzms;

    .line 1125
    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/zzms;->zzd:Lcom/google/android/gms/measurement/internal/zzgz;

    .line 1126
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzb()Lcom/google/android/gms/common/util/Clock;

    move-result-object v4

    invoke-interface {v4}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lcom/google/android/gms/measurement/internal/zzgz;->zza(J)V

    .line 1128
    :cond_5
    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zznv;->zzj:Lcom/google/android/gms/measurement/internal/zzms;

    .line 1129
    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/zzms;->zze:Lcom/google/android/gms/measurement/internal/zzgz;

    const-wide/16 v12, 0x0

    invoke-virtual {v2, v12, v13}, Lcom/google/android/gms/measurement/internal/zzgz;->zza(J)V

    .line 1130
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzac()V

    .line 1131
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzpo;->zza()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1132
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zze()Lcom/google/android/gms/measurement/internal/zzah;

    move-result-object v2

    sget-object v4, Lcom/google/android/gms/measurement/internal/zzbj;->zzcr:Lcom/google/android/gms/measurement/internal/zzfz;

    invoke-virtual {v2, v4}, Lcom/google/android/gms/measurement/internal/zzah;->zza(Lcom/google/android/gms/measurement/internal/zzfz;)Z

    move-result v2

    if-eqz v2, :cond_7

    if-eqz p1, :cond_6

    goto :goto_1

    .line 1137
    :cond_6
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzpo;->zza()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1138
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zze()Lcom/google/android/gms/measurement/internal/zzah;

    move-result-object v0

    sget-object v2, Lcom/google/android/gms/measurement/internal/zzbj;->zzcr:Lcom/google/android/gms/measurement/internal/zzfz;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/measurement/internal/zzah;->zza(Lcom/google/android/gms/measurement/internal/zzfz;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1139
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzj()Lcom/google/android/gms/measurement/internal/zzgi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgi;->zzp()Lcom/google/android/gms/measurement/internal/zzgk;

    move-result-object v0

    const-string v2, "Purged empty bundles"

    invoke-virtual {v0, v2}, Lcom/google/android/gms/measurement/internal/zzgk;->zza(Ljava/lang/String;)V

    goto :goto_2

    .line 1133
    :cond_7
    :goto_1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzj()Lcom/google/android/gms/measurement/internal/zzgi;

    move-result-object v2

    .line 1134
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzgi;->zzp()Lcom/google/android/gms/measurement/internal/zzgk;

    move-result-object v2

    const-string v4, "Successful upload. Got network response. code, size"

    .line 1135
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    array-length v3, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 1136
    invoke-virtual {v2, v4, v0, v3}, Lcom/google/android/gms/measurement/internal/zzgk;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1140
    :cond_8
    :goto_2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzf()Lcom/google/android/gms/measurement/internal/zzam;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzam;->zzp()V
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1141
    :try_start_2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zze()Lcom/google/android/gms/measurement/internal/zzah;

    move-result-object v0

    sget-object v2, Lcom/google/android/gms/measurement/internal/zzbj;->zzbz:Lcom/google/android/gms/measurement/internal/zzfz;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/measurement/internal/zzah;->zza(Lcom/google/android/gms/measurement/internal/zzfz;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1142
    invoke-interface/range {p6 .. p6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    .line 1143
    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object v4, v3

    check-cast v4, Lcom/google/android/gms/internal/measurement/zzgn$zzj;

    .line 1144
    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Lcom/google/android/gms/measurement/internal/zzns;

    .line 1145
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzf()Lcom/google/android/gms/measurement/internal/zzam;

    move-result-object v3

    .line 1146
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzns;->zzb()Ljava/lang/String;

    move-result-object v5

    .line 1147
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzns;->zzc()Ljava/util/Map;

    move-result-object v6

    .line 1148
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzns;->zza()Lcom/google/android/gms/measurement/internal/zznt;

    move-result-object v7

    move-object v2, v3

    move-object/from16 v3, p5

    .line 1149
    invoke-virtual/range {v2 .. v7}, Lcom/google/android/gms/measurement/internal/zzam;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/zzgn$zzj;Ljava/lang/String;Ljava/util/Map;Lcom/google/android/gms/measurement/internal/zznt;)Z

    goto :goto_3

    .line 1151
    :cond_9
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Ljava/lang/Long;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1152
    :try_start_3
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzf()Lcom/google/android/gms/measurement/internal/zzam;

    move-result-object v4

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    .line 1153
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zziy;->zzt()V

    .line 1154
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zznr;->zzal()V

    .line 1155
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzam;->e_()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const/4 v7, 0x1

    .line 1156
    new-array v10, v7, [Ljava/lang/String;

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v10, v9
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1157
    :try_start_4
    const-string v5, "queue"

    const-string v6, "rowid=?"

    invoke-virtual {v0, v5, v6, v10}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    if-ne v0, v7, :cond_a

    goto :goto_4

    .line 1159
    :cond_a
    new-instance v0, Landroid/database/sqlite/SQLiteException;

    const-string v5, "Deleted fewer rows from queue than expected"

    invoke-direct {v0, v5}, Landroid/database/sqlite/SQLiteException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_4
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :catch_0
    move-exception v0

    .line 1162
    :try_start_5
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zziy;->zzj()Lcom/google/android/gms/measurement/internal/zzgi;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzgi;->zzg()Lcom/google/android/gms/measurement/internal/zzgk;

    move-result-object v4

    const-string v5, "Failed to delete a bundle in a queue table"

    invoke-virtual {v4, v5, v0}, Lcom/google/android/gms/measurement/internal/zzgk;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1163
    throw v0
    :try_end_5
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :catch_1
    move-exception v0

    .line 1165
    :try_start_6
    iget-object v4, v1, Lcom/google/android/gms/measurement/internal/zznv;->zzaa:Ljava/util/List;

    if-eqz v4, :cond_b

    .line 1166
    invoke-interface {v4, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    goto :goto_4

    .line 1167
    :cond_b
    throw v0

    .line 1168
    :cond_c
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzf()Lcom/google/android/gms/measurement/internal/zzam;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzam;->zzw()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 1169
    :try_start_7
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzf()Lcom/google/android/gms/measurement/internal/zzam;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzam;->zzu()V

    .line 1173
    iput-object v11, v1, Lcom/google/android/gms/measurement/internal/zznv;->zzaa:Ljava/util/List;

    .line 1174
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzh()Lcom/google/android/gms/measurement/internal/zzgp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgp;->zzu()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzad()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1175
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzw()V

    goto :goto_5

    .line 1176
    :cond_d
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zze()Lcom/google/android/gms/measurement/internal/zzah;

    move-result-object v0

    sget-object v2, Lcom/google/android/gms/measurement/internal/zzbj;->zzbz:Lcom/google/android/gms/measurement/internal/zzfz;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/measurement/internal/zzah;->zza(Lcom/google/android/gms/measurement/internal/zzfz;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 1177
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzh()Lcom/google/android/gms/measurement/internal/zzgp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgp;->zzu()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 1178
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzf()Lcom/google/android/gms/measurement/internal/zzam;

    move-result-object v0

    invoke-virtual {v0, v8}, Lcom/google/android/gms/measurement/internal/zzam;->zzs(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 1179
    invoke-direct {p0, v8}, Lcom/google/android/gms/measurement/internal/zznv;->zze(Ljava/lang/String;)V

    goto :goto_5

    :cond_e
    const-wide/16 v2, -0x1

    .line 1180
    iput-wide v2, v1, Lcom/google/android/gms/measurement/internal/zznv;->zzab:J

    .line 1181
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzac()V

    .line 1182
    :goto_5
    iput-wide v12, v1, Lcom/google/android/gms/measurement/internal/zznv;->zzp:J

    goto :goto_6

    :catchall_0
    move-exception v0

    .line 1171
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzf()Lcom/google/android/gms/measurement/internal/zzam;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzam;->zzu()V

    .line 1172
    throw v0
    :try_end_7
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :catch_2
    move-exception v0

    .line 1185
    :try_start_8
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzj()Lcom/google/android/gms/measurement/internal/zzgi;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzgi;->zzg()Lcom/google/android/gms/measurement/internal/zzgk;

    move-result-object v2

    const-string v3, "Database error while trying to delete uploaded bundles"

    invoke-virtual {v2, v3, v0}, Lcom/google/android/gms/measurement/internal/zzgk;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1186
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzb()Lcom/google/android/gms/common/util/Clock;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/google/android/gms/measurement/internal/zznv;->zzp:J

    .line 1187
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzj()Lcom/google/android/gms/measurement/internal/zzgi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgi;->zzp()Lcom/google/android/gms/measurement/internal/zzgk;

    move-result-object v0

    const-string v2, "Disable upload, time"

    iget-wide v3, v1, Lcom/google/android/gms/measurement/internal/zznv;->zzp:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/measurement/internal/zzgk;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_6

    .line 1189
    :cond_f
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzj()Lcom/google/android/gms/measurement/internal/zzgi;

    move-result-object v3

    .line 1190
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzgi;->zzp()Lcom/google/android/gms/measurement/internal/zzgk;

    move-result-object v3

    const-string v4, "Network upload failed. Will retry later. code, error"

    .line 1191
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5, v2}, Lcom/google/android/gms/measurement/internal/zzgk;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1193
    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zznv;->zzj:Lcom/google/android/gms/measurement/internal/zzms;

    .line 1194
    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/zzms;->zze:Lcom/google/android/gms/measurement/internal/zzgz;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzb()Lcom/google/android/gms/common/util/Clock;

    move-result-object v3

    invoke-interface {v3}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/measurement/internal/zzgz;->zza(J)V

    const/16 v2, 0x1f7

    if-eq v0, v2, :cond_10

    const/16 v2, 0x1ad

    if-ne v0, v2, :cond_11

    .line 1198
    :cond_10
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zznv;->zzj:Lcom/google/android/gms/measurement/internal/zzms;

    .line 1199
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzms;->zzc:Lcom/google/android/gms/measurement/internal/zzgz;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzb()Lcom/google/android/gms/common/util/Clock;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/measurement/internal/zzgz;->zza(J)V

    .line 1200
    :cond_11
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzf()Lcom/google/android/gms/measurement/internal/zzam;

    move-result-object v0

    invoke-virtual {v0, v10}, Lcom/google/android/gms/measurement/internal/zzam;->zza(Ljava/util/List;)V

    .line 1201
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzac()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 1202
    :goto_6
    iput-boolean v9, v1, Lcom/google/android/gms/measurement/internal/zznv;->zzv:Z

    .line 1203
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzaa()V

    return-void

    :catchall_1
    move-exception v0

    .line 1205
    iput-boolean v9, v1, Lcom/google/android/gms/measurement/internal/zznv;->zzv:Z

    .line 1206
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzaa()V

    .line 1207
    throw v0
.end method

.method public final zzb()Lcom/google/android/gms/common/util/Clock;
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zznv;->zzm:Lcom/google/android/gms/measurement/internal/zzhw;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/measurement/internal/zzhw;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzhw;->zzb()Lcom/google/android/gms/common/util/Clock;

    move-result-object v0

    return-object v0
.end method

.method final zzb(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzjc;
    .locals 1

    .line 307
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzl()Lcom/google/android/gms/measurement/internal/zzhp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zziy;->zzt()V

    .line 308
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzs()V

    .line 309
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zznv;->zzac:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/measurement/internal/zzjc;

    if-nez v0, :cond_1

    .line 311
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzf()Lcom/google/android/gms/measurement/internal/zzam;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/measurement/internal/zzam;->zzi(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzjc;

    move-result-object v0

    if-nez v0, :cond_0

    .line 313
    sget-object v0, Lcom/google/android/gms/measurement/internal/zzjc;->zza:Lcom/google/android/gms/measurement/internal/zzjc;

    .line 314
    :cond_0
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/measurement/internal/zznv;->zza(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzjc;)V

    :cond_1
    return-object v0
.end method

.method final zzb(Lcom/google/android/gms/measurement/internal/zzp;)Ljava/lang/String;
    .locals 4

    .line 378
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzl()Lcom/google/android/gms/measurement/internal/zzhp;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/measurement/internal/zzob;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/measurement/internal/zzob;-><init>(Lcom/google/android/gms/measurement/internal/zznv;Lcom/google/android/gms/measurement/internal/zzp;)V

    .line 379
    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzhp;->zza(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    .line 380
    :try_start_0
    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x7530

    invoke-interface {v0, v2, v3, v1}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0

    :catch_2
    move-exception v0

    .line 382
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzj()Lcom/google/android/gms/measurement/internal/zzgi;

    move-result-object v1

    .line 383
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzgi;->zzg()Lcom/google/android/gms/measurement/internal/zzgk;

    move-result-object v1

    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/zzp;->zza:Ljava/lang/String;

    .line 384
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzgi;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    .line 385
    const-string v2, "Failed to get app instance id. appId"

    invoke-virtual {v1, v2, p1, v0}, Lcom/google/android/gms/measurement/internal/zzgk;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method final zzb(Lcom/google/android/gms/measurement/internal/zzaf;)V
    .locals 1

    .line 1842
    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzaf;->zza:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/google/android/gms/measurement/internal/zznv;->zzc(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzp;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1844
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/measurement/internal/zznv;->zzb(Lcom/google/android/gms/measurement/internal/zzaf;Lcom/google/android/gms/measurement/internal/zzp;)V

    :cond_0
    return-void
.end method

.method final zzb(Lcom/google/android/gms/measurement/internal/zzaf;Lcom/google/android/gms/measurement/internal/zzp;)V
    .locals 10

    .line 1846
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1847
    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzaf;->zza:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 1848
    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzaf;->zzb:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1849
    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzaf;->zzc:Lcom/google/android/gms/measurement/internal/zzok;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1850
    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzaf;->zzc:Lcom/google/android/gms/measurement/internal/zzok;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzok;->zza:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 1852
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzl()Lcom/google/android/gms/measurement/internal/zzhp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zziy;->zzt()V

    .line 1853
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzs()V

    .line 1854
    invoke-static {p2}, Lcom/google/android/gms/measurement/internal/zznv;->zzi(Lcom/google/android/gms/measurement/internal/zzp;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1856
    :cond_0
    iget-boolean v0, p2, Lcom/google/android/gms/measurement/internal/zzp;->zzh:Z

    if-nez v0, :cond_1

    .line 1857
    invoke-virtual {p0, p2}, Lcom/google/android/gms/measurement/internal/zznv;->zza(Lcom/google/android/gms/measurement/internal/zzp;)Lcom/google/android/gms/measurement/internal/zzh;

    return-void

    .line 1859
    :cond_1
    new-instance v0, Lcom/google/android/gms/measurement/internal/zzaf;

    invoke-direct {v0, p1}, Lcom/google/android/gms/measurement/internal/zzaf;-><init>(Lcom/google/android/gms/measurement/internal/zzaf;)V

    const/4 p1, 0x0

    .line 1860
    iput-boolean p1, v0, Lcom/google/android/gms/measurement/internal/zzaf;->zze:Z

    .line 1861
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzf()Lcom/google/android/gms/measurement/internal/zzam;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzam;->zzp()V

    .line 1864
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzf()Lcom/google/android/gms/measurement/internal/zzam;

    move-result-object v1

    iget-object v2, v0, Lcom/google/android/gms/measurement/internal/zzaf;->zza:Ljava/lang/String;

    .line 1865
    invoke-static {v2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v3, v0, Lcom/google/android/gms/measurement/internal/zzaf;->zzc:Lcom/google/android/gms/measurement/internal/zzok;

    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/zzok;->zza:Ljava/lang/String;

    .line 1866
    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/measurement/internal/zzam;->zzc(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzaf;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 1867
    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzaf;->zzb:Ljava/lang/String;

    iget-object v3, v0, Lcom/google/android/gms/measurement/internal/zzaf;->zzb:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1868
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzj()Lcom/google/android/gms/measurement/internal/zzgi;

    move-result-object v2

    .line 1869
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzgi;->zzu()Lcom/google/android/gms/measurement/internal/zzgk;

    move-result-object v2

    const-string v3, "Updating a conditional user property with different origin. name, origin, origin (from DB)"

    .line 1870
    iget-object v4, p0, Lcom/google/android/gms/measurement/internal/zznv;->zzm:Lcom/google/android/gms/measurement/internal/zzhw;

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzhw;->zzk()Lcom/google/android/gms/measurement/internal/zzgh;

    move-result-object v4

    .line 1871
    iget-object v5, v0, Lcom/google/android/gms/measurement/internal/zzaf;->zzc:Lcom/google/android/gms/measurement/internal/zzok;

    iget-object v5, v5, Lcom/google/android/gms/measurement/internal/zzok;->zza:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/google/android/gms/measurement/internal/zzgh;->zzc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, v0, Lcom/google/android/gms/measurement/internal/zzaf;->zzb:Ljava/lang/String;

    iget-object v6, v1, Lcom/google/android/gms/measurement/internal/zzaf;->zzb:Ljava/lang/String;

    .line 1872
    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/google/android/gms/measurement/internal/zzgk;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    if-eqz v1, :cond_3

    .line 1873
    iget-boolean v2, v1, Lcom/google/android/gms/measurement/internal/zzaf;->zze:Z

    if-eqz v2, :cond_3

    .line 1874
    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzaf;->zzb:Ljava/lang/String;

    iput-object v2, v0, Lcom/google/android/gms/measurement/internal/zzaf;->zzb:Ljava/lang/String;

    .line 1875
    iget-wide v2, v1, Lcom/google/android/gms/measurement/internal/zzaf;->zzd:J

    iput-wide v2, v0, Lcom/google/android/gms/measurement/internal/zzaf;->zzd:J

    .line 1876
    iget-wide v2, v1, Lcom/google/android/gms/measurement/internal/zzaf;->zzh:J

    iput-wide v2, v0, Lcom/google/android/gms/measurement/internal/zzaf;->zzh:J

    .line 1877
    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzaf;->zzf:Ljava/lang/String;

    iput-object v2, v0, Lcom/google/android/gms/measurement/internal/zzaf;->zzf:Ljava/lang/String;

    .line 1878
    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzaf;->zzi:Lcom/google/android/gms/measurement/internal/zzbh;

    iput-object v2, v0, Lcom/google/android/gms/measurement/internal/zzaf;->zzi:Lcom/google/android/gms/measurement/internal/zzbh;

    .line 1879
    iget-boolean v2, v1, Lcom/google/android/gms/measurement/internal/zzaf;->zze:Z

    iput-boolean v2, v0, Lcom/google/android/gms/measurement/internal/zzaf;->zze:Z

    .line 1880
    new-instance v2, Lcom/google/android/gms/measurement/internal/zzok;

    iget-object v3, v0, Lcom/google/android/gms/measurement/internal/zzaf;->zzc:Lcom/google/android/gms/measurement/internal/zzok;

    iget-object v4, v3, Lcom/google/android/gms/measurement/internal/zzok;->zza:Ljava/lang/String;

    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/zzaf;->zzc:Lcom/google/android/gms/measurement/internal/zzok;

    iget-wide v5, v3, Lcom/google/android/gms/measurement/internal/zzok;->zzb:J

    iget-object v3, v0, Lcom/google/android/gms/measurement/internal/zzaf;->zzc:Lcom/google/android/gms/measurement/internal/zzok;

    .line 1881
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzok;->zza()Ljava/lang/Object;

    move-result-object v7

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zzaf;->zzc:Lcom/google/android/gms/measurement/internal/zzok;

    iget-object v8, v1, Lcom/google/android/gms/measurement/internal/zzok;->zze:Ljava/lang/String;

    move-object v3, v2

    invoke-direct/range {v3 .. v8}, Lcom/google/android/gms/measurement/internal/zzok;-><init>(Ljava/lang/String;JLjava/lang/Object;Ljava/lang/String;)V

    iput-object v2, v0, Lcom/google/android/gms/measurement/internal/zzaf;->zzc:Lcom/google/android/gms/measurement/internal/zzok;

    goto :goto_0

    .line 1882
    :cond_3
    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzaf;->zzf:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1883
    new-instance p1, Lcom/google/android/gms/measurement/internal/zzok;

    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzaf;->zzc:Lcom/google/android/gms/measurement/internal/zzok;

    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/zzok;->zza:Ljava/lang/String;

    iget-wide v4, v0, Lcom/google/android/gms/measurement/internal/zzaf;->zzd:J

    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzaf;->zzc:Lcom/google/android/gms/measurement/internal/zzok;

    .line 1884
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzok;->zza()Ljava/lang/Object;

    move-result-object v6

    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzaf;->zzc:Lcom/google/android/gms/measurement/internal/zzok;

    iget-object v7, v1, Lcom/google/android/gms/measurement/internal/zzok;->zze:Ljava/lang/String;

    move-object v2, p1

    invoke-direct/range {v2 .. v7}, Lcom/google/android/gms/measurement/internal/zzok;-><init>(Ljava/lang/String;JLjava/lang/Object;Ljava/lang/String;)V

    iput-object p1, v0, Lcom/google/android/gms/measurement/internal/zzaf;->zzc:Lcom/google/android/gms/measurement/internal/zzok;

    const/4 p1, 0x1

    .line 1885
    iput-boolean p1, v0, Lcom/google/android/gms/measurement/internal/zzaf;->zze:Z

    .line 1887
    :cond_4
    :goto_0
    iget-boolean v1, v0, Lcom/google/android/gms/measurement/internal/zzaf;->zze:Z

    if-eqz v1, :cond_6

    .line 1888
    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzaf;->zzc:Lcom/google/android/gms/measurement/internal/zzok;

    .line 1889
    new-instance v9, Lcom/google/android/gms/measurement/internal/zzom;

    iget-object v2, v0, Lcom/google/android/gms/measurement/internal/zzaf;->zza:Ljava/lang/String;

    .line 1890
    invoke-static {v2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Ljava/lang/String;

    iget-object v4, v0, Lcom/google/android/gms/measurement/internal/zzaf;->zzb:Ljava/lang/String;

    iget-object v5, v1, Lcom/google/android/gms/measurement/internal/zzok;->zza:Ljava/lang/String;

    iget-wide v6, v1, Lcom/google/android/gms/measurement/internal/zzok;->zzb:J

    .line 1891
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzok;->zza()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    move-object v2, v9

    invoke-direct/range {v2 .. v8}, Lcom/google/android/gms/measurement/internal/zzom;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V

    .line 1892
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzf()Lcom/google/android/gms/measurement/internal/zzam;

    move-result-object v1

    invoke-virtual {v1, v9}, Lcom/google/android/gms/measurement/internal/zzam;->zza(Lcom/google/android/gms/measurement/internal/zzom;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1894
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzj()Lcom/google/android/gms/measurement/internal/zzgi;

    move-result-object v1

    .line 1895
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzgi;->zzc()Lcom/google/android/gms/measurement/internal/zzgk;

    move-result-object v1

    const-string v2, "User property updated immediately"

    iget-object v3, v0, Lcom/google/android/gms/measurement/internal/zzaf;->zza:Ljava/lang/String;

    .line 1896
    iget-object v4, p0, Lcom/google/android/gms/measurement/internal/zznv;->zzm:Lcom/google/android/gms/measurement/internal/zzhw;

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzhw;->zzk()Lcom/google/android/gms/measurement/internal/zzgh;

    move-result-object v4

    .line 1897
    iget-object v5, v9, Lcom/google/android/gms/measurement/internal/zzom;->zzc:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/google/android/gms/measurement/internal/zzgh;->zzc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, v9, Lcom/google/android/gms/measurement/internal/zzom;->zze:Ljava/lang/Object;

    .line 1898
    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/google/android/gms/measurement/internal/zzgk;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    .line 1899
    :cond_5
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzj()Lcom/google/android/gms/measurement/internal/zzgi;

    move-result-object v1

    .line 1900
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzgi;->zzg()Lcom/google/android/gms/measurement/internal/zzgk;

    move-result-object v1

    const-string v2, "(2)Too many active user properties, ignoring"

    iget-object v3, v0, Lcom/google/android/gms/measurement/internal/zzaf;->zza:Ljava/lang/String;

    .line 1901
    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/zzgi;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 1902
    iget-object v4, p0, Lcom/google/android/gms/measurement/internal/zznv;->zzm:Lcom/google/android/gms/measurement/internal/zzhw;

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzhw;->zzk()Lcom/google/android/gms/measurement/internal/zzgh;

    move-result-object v4

    .line 1903
    iget-object v5, v9, Lcom/google/android/gms/measurement/internal/zzom;->zzc:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/google/android/gms/measurement/internal/zzgh;->zzc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, v9, Lcom/google/android/gms/measurement/internal/zzom;->zze:Ljava/lang/Object;

    .line 1904
    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/google/android/gms/measurement/internal/zzgk;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_1
    if-eqz p1, :cond_6

    .line 1905
    iget-object p1, v0, Lcom/google/android/gms/measurement/internal/zzaf;->zzi:Lcom/google/android/gms/measurement/internal/zzbh;

    if-eqz p1, :cond_6

    .line 1906
    new-instance p1, Lcom/google/android/gms/measurement/internal/zzbh;

    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzaf;->zzi:Lcom/google/android/gms/measurement/internal/zzbh;

    iget-wide v2, v0, Lcom/google/android/gms/measurement/internal/zzaf;->zzd:J

    invoke-direct {p1, v1, v2, v3}, Lcom/google/android/gms/measurement/internal/zzbh;-><init>(Lcom/google/android/gms/measurement/internal/zzbh;J)V

    .line 1907
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/measurement/internal/zznv;->zzc(Lcom/google/android/gms/measurement/internal/zzbh;Lcom/google/android/gms/measurement/internal/zzp;)V

    .line 1908
    :cond_6
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzf()Lcom/google/android/gms/measurement/internal/zzam;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/google/android/gms/measurement/internal/zzam;->zza(Lcom/google/android/gms/measurement/internal/zzaf;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 1910
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzj()Lcom/google/android/gms/measurement/internal/zzgi;

    move-result-object p1

    .line 1911
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzgi;->zzc()Lcom/google/android/gms/measurement/internal/zzgk;

    move-result-object p1

    const-string p2, "Conditional property added"

    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzaf;->zza:Ljava/lang/String;

    .line 1912
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zznv;->zzm:Lcom/google/android/gms/measurement/internal/zzhw;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzhw;->zzk()Lcom/google/android/gms/measurement/internal/zzgh;

    move-result-object v2

    .line 1913
    iget-object v3, v0, Lcom/google/android/gms/measurement/internal/zzaf;->zzc:Lcom/google/android/gms/measurement/internal/zzok;

    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/zzok;->zza:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/measurement/internal/zzgh;->zzc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzaf;->zzc:Lcom/google/android/gms/measurement/internal/zzok;

    .line 1914
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzok;->zza()Ljava/lang/Object;

    move-result-object v0

    .line 1915
    invoke-virtual {p1, p2, v1, v2, v0}, Lcom/google/android/gms/measurement/internal/zzgk;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_2

    .line 1916
    :cond_7
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzj()Lcom/google/android/gms/measurement/internal/zzgi;

    move-result-object p1

    .line 1917
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzgi;->zzg()Lcom/google/android/gms/measurement/internal/zzgk;

    move-result-object p1

    const-string p2, "Too many conditional properties, ignoring"

    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzaf;->zza:Ljava/lang/String;

    .line 1918
    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/zzgi;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 1919
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zznv;->zzm:Lcom/google/android/gms/measurement/internal/zzhw;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzhw;->zzk()Lcom/google/android/gms/measurement/internal/zzgh;

    move-result-object v2

    .line 1920
    iget-object v3, v0, Lcom/google/android/gms/measurement/internal/zzaf;->zzc:Lcom/google/android/gms/measurement/internal/zzok;

    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/zzok;->zza:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/measurement/internal/zzgh;->zzc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzaf;->zzc:Lcom/google/android/gms/measurement/internal/zzok;

    .line 1921
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzok;->zza()Ljava/lang/Object;

    move-result-object v0

    .line 1922
    invoke-virtual {p1, p2, v1, v2, v0}, Lcom/google/android/gms/measurement/internal/zzgk;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1923
    :goto_2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzf()Lcom/google/android/gms/measurement/internal/zzam;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzam;->zzw()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1924
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzf()Lcom/google/android/gms/measurement/internal/zzam;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzam;->zzu()V

    return-void

    :catchall_0
    move-exception p1

    .line 1926
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzf()Lcom/google/android/gms/measurement/internal/zzam;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzam;->zzu()V

    .line 1927
    throw p1
.end method

.method final zzb(Lcom/google/android/gms/measurement/internal/zzh;Lcom/google/android/gms/internal/measurement/zzgn$zzk$zza;)V
    .locals 11

    .line 1249
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzl()Lcom/google/android/gms/measurement/internal/zzhp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zziy;->zzt()V

    .line 1250
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzs()V

    .line 1251
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzgn$zza;->zzc()Lcom/google/android/gms/internal/measurement/zzgn$zza$zza;

    move-result-object v0

    .line 1252
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzh;->zzav()[B

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1254
    :try_start_0
    invoke-static {v0, v1}, Lcom/google/android/gms/measurement/internal/zzol;->zza(Lcom/google/android/gms/internal/measurement/zzmk;[B)Lcom/google/android/gms/internal/measurement/zzmk;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/measurement/zzgn$zza$zza;
    :try_end_0
    .catch Lcom/google/android/gms/internal/measurement/zzlk; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    goto :goto_0

    .line 1257
    :catch_0
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzj()Lcom/google/android/gms/measurement/internal/zzgi;

    move-result-object v1

    .line 1258
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzgi;->zzu()Lcom/google/android/gms/measurement/internal/zzgk;

    move-result-object v1

    .line 1259
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzh;->zzac()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/zzgi;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 1260
    const-string v3, "Failed to parse locally stored ad campaign info. appId"

    invoke-virtual {v1, v3, v2}, Lcom/google/android/gms/measurement/internal/zzgk;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1261
    :cond_0
    :goto_0
    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/zzgn$zzk$zza;->zzaa()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/zzgn$zzf;

    .line 1262
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzgn$zzf;->zzg()Ljava/lang/String;

    move-result-object v3

    const-string v4, "_cmp"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1264
    const-string v3, "gclid"

    const-string v4, ""

    invoke-static {v2, v3, v4}, Lcom/google/android/gms/measurement/internal/zzol;->zza(Lcom/google/android/gms/internal/measurement/zzgn$zzf;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1265
    const-string v5, "gbraid"

    invoke-static {v2, v5, v4}, Lcom/google/android/gms/measurement/internal/zzol;->zza(Lcom/google/android/gms/internal/measurement/zzgn$zzf;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 1266
    const-string v6, "gad_source"

    invoke-static {v2, v6, v4}, Lcom/google/android/gms/measurement/internal/zzol;->zza(Lcom/google/android/gms/internal/measurement/zzgn$zzf;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1267
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_1

    .line 1268
    :cond_2
    const-string v6, "click_timestamp"

    const-wide/16 v7, 0x0

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-static {v2, v6, v9}, Lcom/google/android/gms/measurement/internal/zzol;->zza(Lcom/google/android/gms/internal/measurement/zzgn$zzf;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    cmp-long v6, v9, v7

    if-gtz v6, :cond_3

    .line 1270
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzgn$zzf;->zzd()J

    move-result-wide v9

    .line 1271
    :cond_3
    const-string v6, "_cis"

    .line 1272
    invoke-static {v2, v6}, Lcom/google/android/gms/measurement/internal/zzol;->zzb(Lcom/google/android/gms/internal/measurement/zzgn$zzf;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 1273
    const-string v6, "referrer API v2"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1275
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzgn$zza$zza;->zzb()J

    move-result-wide v6

    cmp-long v2, v9, v6

    if-lez v2, :cond_1

    .line 1277
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1278
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzgn$zza$zza;->zzh()Lcom/google/android/gms/internal/measurement/zzgn$zza$zza;

    goto :goto_2

    .line 1279
    :cond_4
    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/measurement/zzgn$zza$zza;->zzf(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzgn$zza$zza;

    .line 1280
    :goto_2
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1281
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzgn$zza$zza;->zzg()Lcom/google/android/gms/internal/measurement/zzgn$zza$zza;

    goto :goto_3

    .line 1282
    :cond_5
    invoke-virtual {v0, v5}, Lcom/google/android/gms/internal/measurement/zzgn$zza$zza;->zze(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzgn$zza$zza;

    .line 1283
    :goto_3
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1284
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzgn$zza$zza;->zzf()Lcom/google/android/gms/internal/measurement/zzgn$zza$zza;

    goto :goto_4

    .line 1285
    :cond_6
    invoke-virtual {v0, v4}, Lcom/google/android/gms/internal/measurement/zzgn$zza$zza;->zzd(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzgn$zza$zza;

    .line 1286
    :goto_4
    invoke-virtual {v0, v9, v10}, Lcom/google/android/gms/internal/measurement/zzgn$zza$zza;->zzb(J)Lcom/google/android/gms/internal/measurement/zzgn$zza$zza;

    goto/16 :goto_1

    .line 1288
    :cond_7
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzgn$zza$zza;->zza()J

    move-result-wide v6

    cmp-long v2, v9, v6

    if-lez v2, :cond_1

    .line 1290
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 1291
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzgn$zza$zza;->zze()Lcom/google/android/gms/internal/measurement/zzgn$zza$zza;

    goto :goto_5

    .line 1292
    :cond_8
    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/measurement/zzgn$zza$zza;->zzc(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzgn$zza$zza;

    .line 1293
    :goto_5
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 1294
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzgn$zza$zza;->zzd()Lcom/google/android/gms/internal/measurement/zzgn$zza$zza;

    goto :goto_6

    .line 1295
    :cond_9
    invoke-virtual {v0, v5}, Lcom/google/android/gms/internal/measurement/zzgn$zza$zza;->zzb(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzgn$zza$zza;

    .line 1296
    :goto_6
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 1297
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzgn$zza$zza;->zzc()Lcom/google/android/gms/internal/measurement/zzgn$zza$zza;

    goto :goto_7

    .line 1298
    :cond_a
    invoke-virtual {v0, v4}, Lcom/google/android/gms/internal/measurement/zzgn$zza$zza;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzgn$zza$zza;

    .line 1299
    :goto_7
    invoke-virtual {v0, v9, v10}, Lcom/google/android/gms/internal/measurement/zzgn$zza$zza;->zza(J)Lcom/google/android/gms/internal/measurement/zzgn$zza$zza;

    goto/16 :goto_1

    .line 1301
    :cond_b
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzlc$zzb;->zzai()Lcom/google/android/gms/internal/measurement/zzml;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/measurement/zzlc;

    check-cast v1, Lcom/google/android/gms/internal/measurement/zzgn$zza;

    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzgn$zza;->zze()Lcom/google/android/gms/internal/measurement/zzgn$zza;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/measurement/zzlc;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    .line 1302
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzlc$zzb;->zzai()Lcom/google/android/gms/internal/measurement/zzml;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/measurement/zzlc;

    check-cast v1, Lcom/google/android/gms/internal/measurement/zzgn$zza;

    invoke-virtual {p2, v1}, Lcom/google/android/gms/internal/measurement/zzgn$zzk$zza;->zza(Lcom/google/android/gms/internal/measurement/zzgn$zza;)Lcom/google/android/gms/internal/measurement/zzgn$zzk$zza;

    .line 1303
    :cond_c
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzlc$zzb;->zzai()Lcom/google/android/gms/internal/measurement/zzml;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/internal/measurement/zzlc;

    check-cast p2, Lcom/google/android/gms/internal/measurement/zzgn$zza;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/zzji;->zzca()[B

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/android/gms/measurement/internal/zzh;->zza([B)V

    .line 1304
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzh;->zzas()Z

    move-result p2

    if-eqz p2, :cond_d

    .line 1305
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzf()Lcom/google/android/gms/measurement/internal/zzam;

    move-result-object p2

    const/4 v0, 0x0

    .line 1306
    invoke-virtual {p2, p1, v0, v0}, Lcom/google/android/gms/measurement/internal/zzam;->zza(Lcom/google/android/gms/measurement/internal/zzh;ZZ)V

    :cond_d
    return-void
.end method

.method final zzb(Ljava/lang/String;ILjava/lang/Throwable;[BLjava/util/Map;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/Throwable;",
            "[B",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .line 1032
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzl()Lcom/google/android/gms/measurement/internal/zzhp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zziy;->zzt()V

    .line 1033
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzs()V

    .line 1034
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    const/4 v0, 0x0

    if-nez p4, :cond_0

    .line 1036
    :try_start_0
    new-array p4, v0, [B

    .line 1037
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzj()Lcom/google/android/gms/measurement/internal/zzgi;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzgi;->zzp()Lcom/google/android/gms/measurement/internal/zzgk;

    move-result-object v1

    const-string v2, "onConfigFetched. Response size"

    array-length v3, p4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/measurement/internal/zzgk;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1038
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzf()Lcom/google/android/gms/measurement/internal/zzam;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzam;->zzp()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1039
    :try_start_1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzf()Lcom/google/android/gms/measurement/internal/zzam;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/android/gms/measurement/internal/zzam;->zze(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzh;

    move-result-object v1

    const/16 v2, 0xc8

    const/16 v3, 0x130

    if-eq p2, v2, :cond_1

    const/16 v2, 0xcc

    if-eq p2, v2, :cond_1

    if-ne p2, v3, :cond_2

    :cond_1
    if-nez p3, :cond_2

    const/4 v2, 0x1

    goto :goto_0

    :cond_2
    move v2, v0

    :goto_0
    if-nez v1, :cond_3

    .line 1042
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzj()Lcom/google/android/gms/measurement/internal/zzgi;

    move-result-object p2

    .line 1043
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzgi;->zzu()Lcom/google/android/gms/measurement/internal/zzgk;

    move-result-object p2

    const-string p3, "App does not exist in onConfigFetched. appId"

    .line 1044
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzgi;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p2, p3, p1}, Lcom/google/android/gms/measurement/internal/zzgk;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_8

    :cond_3
    const/16 v4, 0x194

    if-nez v2, :cond_7

    if-ne p2, v4, :cond_4

    goto :goto_1

    .line 1084
    :cond_4
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzb()Lcom/google/android/gms/common/util/Clock;

    move-result-object p4

    invoke-interface {p4}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide p4

    invoke-virtual {v1, p4, p5}, Lcom/google/android/gms/measurement/internal/zzh;->zzm(J)V

    .line 1085
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzf()Lcom/google/android/gms/measurement/internal/zzam;

    move-result-object p4

    .line 1086
    invoke-virtual {p4, v1, v0, v0}, Lcom/google/android/gms/measurement/internal/zzam;->zza(Lcom/google/android/gms/measurement/internal/zzh;ZZ)V

    .line 1087
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzj()Lcom/google/android/gms/measurement/internal/zzgi;

    move-result-object p4

    invoke-virtual {p4}, Lcom/google/android/gms/measurement/internal/zzgi;->zzp()Lcom/google/android/gms/measurement/internal/zzgk;

    move-result-object p4

    const-string p5, "Fetching config failed. code, error"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p4, p5, v1, p3}, Lcom/google/android/gms/measurement/internal/zzgk;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1088
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzi()Lcom/google/android/gms/measurement/internal/zzhg;

    move-result-object p3

    invoke-virtual {p3, p1}, Lcom/google/android/gms/measurement/internal/zzhg;->zzi(Ljava/lang/String;)V

    .line 1090
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zznv;->zzj:Lcom/google/android/gms/measurement/internal/zzms;

    .line 1091
    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/zzms;->zze:Lcom/google/android/gms/measurement/internal/zzgz;

    .line 1092
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzb()Lcom/google/android/gms/common/util/Clock;

    move-result-object p3

    invoke-interface {p3}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide p3

    invoke-virtual {p1, p3, p4}, Lcom/google/android/gms/measurement/internal/zzgz;->zza(J)V

    const/16 p1, 0x1f7

    if-eq p2, p1, :cond_5

    const/16 p1, 0x1ad

    if-ne p2, p1, :cond_6

    .line 1096
    :cond_5
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zznv;->zzj:Lcom/google/android/gms/measurement/internal/zzms;

    .line 1097
    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/zzms;->zzc:Lcom/google/android/gms/measurement/internal/zzgz;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzb()Lcom/google/android/gms/common/util/Clock;

    move-result-object p2

    invoke-interface {p2}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide p2

    invoke-virtual {p1, p2, p3}, Lcom/google/android/gms/measurement/internal/zzgz;->zza(J)V

    .line 1098
    :cond_6
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzac()V

    goto/16 :goto_8

    :cond_7
    :goto_1
    const/4 p3, 0x0

    if-eqz p5, :cond_8

    .line 1046
    const-string v2, "Last-Modified"

    invoke-interface {p5, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    goto :goto_2

    :cond_8
    move-object v2, p3

    :goto_2
    if-eqz v2, :cond_9

    .line 1047
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_9

    .line 1048
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    goto :goto_3

    :cond_9
    move-object v2, p3

    :goto_3
    if-eqz p5, :cond_a

    .line 1050
    const-string v5, "ETag"

    invoke-interface {p5, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Ljava/util/List;

    goto :goto_4

    :cond_a
    move-object p5, p3

    :goto_4
    if-eqz p5, :cond_b

    .line 1051
    invoke-interface {p5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_b

    invoke-interface {p5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Ljava/lang/String;

    goto :goto_5

    :cond_b
    move-object p5, p3

    :goto_5
    if-eq p2, v4, :cond_d

    if-ne p2, v3, :cond_c

    goto :goto_6

    .line 1059
    :cond_c
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzi()Lcom/google/android/gms/measurement/internal/zzhg;

    move-result-object p3

    invoke-virtual {p3, p1, p4, v2, p5}, Lcom/google/android/gms/measurement/internal/zzhg;->zza(Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;)Z

    move-result p3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez p3, :cond_e

    .line 1060
    :try_start_2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzf()Lcom/google/android/gms/measurement/internal/zzam;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzam;->zzu()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1061
    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zznv;->zzu:Z

    .line 1062
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzaa()V

    return-void

    .line 1053
    :cond_d
    :goto_6
    :try_start_3
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzi()Lcom/google/android/gms/measurement/internal/zzhg;

    move-result-object p5

    invoke-virtual {p5, p1}, Lcom/google/android/gms/measurement/internal/zzhg;->zzc(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzfx$zzd;

    move-result-object p5

    if-nez p5, :cond_e

    .line 1054
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzi()Lcom/google/android/gms/measurement/internal/zzhg;

    move-result-object p5

    invoke-virtual {p5, p1, p3, p3, p3}, Lcom/google/android/gms/measurement/internal/zzhg;->zza(Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;)Z

    move-result p3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-nez p3, :cond_e

    .line 1055
    :try_start_4
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzf()Lcom/google/android/gms/measurement/internal/zzam;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzam;->zzu()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1056
    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zznv;->zzu:Z

    .line 1057
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzaa()V

    return-void

    .line 1064
    :cond_e
    :try_start_5
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzb()Lcom/google/android/gms/common/util/Clock;

    move-result-object p3

    invoke-interface {p3}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/measurement/internal/zzh;->zzd(J)V

    .line 1065
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzf()Lcom/google/android/gms/measurement/internal/zzam;

    move-result-object p3

    .line 1066
    invoke-virtual {p3, v1, v0, v0}, Lcom/google/android/gms/measurement/internal/zzam;->zza(Lcom/google/android/gms/measurement/internal/zzh;ZZ)V

    if-ne p2, v4, :cond_f

    .line 1068
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzj()Lcom/google/android/gms/measurement/internal/zzgi;

    move-result-object p2

    .line 1069
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzgi;->zzv()Lcom/google/android/gms/measurement/internal/zzgk;

    move-result-object p2

    const-string p3, "Config not found. Using empty config. appId"

    .line 1070
    invoke-virtual {p2, p3, p1}, Lcom/google/android/gms/measurement/internal/zzgk;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_7

    .line 1071
    :cond_f
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzj()Lcom/google/android/gms/measurement/internal/zzgi;

    move-result-object p1

    .line 1072
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzgi;->zzp()Lcom/google/android/gms/measurement/internal/zzgk;

    move-result-object p1

    const-string p3, "Successfully fetched config. Got network response. code, size"

    .line 1073
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    array-length p4, p4

    .line 1074
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    .line 1075
    invoke-virtual {p1, p3, p2, p4}, Lcom/google/android/gms/measurement/internal/zzgk;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1076
    :goto_7
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzh()Lcom/google/android/gms/measurement/internal/zzgp;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzgp;->zzu()Z

    move-result p1

    if-eqz p1, :cond_10

    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzad()Z

    move-result p1

    if-eqz p1, :cond_10

    .line 1077
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzw()V

    goto :goto_8

    .line 1078
    :cond_10
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zze()Lcom/google/android/gms/measurement/internal/zzah;

    move-result-object p1

    sget-object p2, Lcom/google/android/gms/measurement/internal/zzbj;->zzbz:Lcom/google/android/gms/measurement/internal/zzfz;

    invoke-virtual {p1, p2}, Lcom/google/android/gms/measurement/internal/zzah;->zza(Lcom/google/android/gms/measurement/internal/zzfz;)Z

    move-result p1

    if-eqz p1, :cond_11

    .line 1079
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzh()Lcom/google/android/gms/measurement/internal/zzgp;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzgp;->zzu()Z

    move-result p1

    if-eqz p1, :cond_11

    .line 1080
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzf()Lcom/google/android/gms/measurement/internal/zzam;

    move-result-object p1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzh;->zzac()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/android/gms/measurement/internal/zzam;->zzs(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_11

    .line 1081
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzh;->zzac()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/gms/measurement/internal/zznv;->zze(Ljava/lang/String;)V

    goto :goto_8

    .line 1082
    :cond_11
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzac()V

    .line 1099
    :goto_8
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzf()Lcom/google/android/gms/measurement/internal/zzam;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzam;->zzw()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1100
    :try_start_6
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzf()Lcom/google/android/gms/measurement/internal/zzam;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzam;->zzu()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 1104
    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zznv;->zzu:Z

    .line 1105
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzaa()V

    return-void

    :catchall_0
    move-exception p1

    .line 1102
    :try_start_7
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzf()Lcom/google/android/gms/measurement/internal/zzam;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzam;->zzu()V

    .line 1103
    throw p1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :catchall_1
    move-exception p1

    .line 1107
    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zznv;->zzu:Z

    .line 1108
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzaa()V

    .line 1109
    throw p1
.end method

.method public final zzc()Lcom/google/android/gms/measurement/internal/zzv;
    .locals 1

    .line 213
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zznv;->zzg:Lcom/google/android/gms/measurement/internal/zzv;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zznv;->zza(Lcom/google/android/gms/measurement/internal/zznr;)Lcom/google/android/gms/measurement/internal/zznr;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/measurement/internal/zzv;

    return-object v0
.end method

.method final zzc(Lcom/google/android/gms/measurement/internal/zzp;)V
    .locals 7

    .line 1309
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzl()Lcom/google/android/gms/measurement/internal/zzhp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zziy;->zzt()V

    .line 1310
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzs()V

    .line 1311
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1312
    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzp;->zza:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 1313
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zze()Lcom/google/android/gms/measurement/internal/zzah;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/measurement/internal/zzbj;->zzdg:Lcom/google/android/gms/measurement/internal/zzfz;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzah;->zza(Lcom/google/android/gms/measurement/internal/zzfz;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1315
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zze()Lcom/google/android/gms/measurement/internal/zzah;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/measurement/internal/zzbj;->zzbi:Lcom/google/android/gms/measurement/internal/zzfz;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzah;->zza(Lcom/google/android/gms/measurement/internal/zzfz;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 1316
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzb()Lcom/google/android/gms/common/util/Clock;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v2

    .line 1317
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zze()Lcom/google/android/gms/measurement/internal/zzah;

    move-result-object p1

    sget-object v0, Lcom/google/android/gms/measurement/internal/zzbj;->zzau:Lcom/google/android/gms/measurement/internal/zzfz;

    const/4 v4, 0x0

    invoke-virtual {p1, v4, v0}, Lcom/google/android/gms/measurement/internal/zzah;->zzb(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzfz;)I

    move-result p1

    .line 1318
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zze()Lcom/google/android/gms/measurement/internal/zzah;

    invoke-static {}, Lcom/google/android/gms/measurement/internal/zzah;->zzh()J

    move-result-wide v5

    sub-long/2addr v2, v5

    :goto_0
    if-ge v1, p1, :cond_2

    .line 1320
    invoke-direct {p0, v4, v2, v3}, Lcom/google/android/gms/measurement/internal/zznv;->zza(Ljava/lang/String;J)Z

    move-result v0

    if-eqz v0, :cond_2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1323
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zze()Lcom/google/android/gms/measurement/internal/zzah;

    invoke-static {}, Lcom/google/android/gms/measurement/internal/zzah;->zzn()J

    move-result-wide v2

    :goto_1
    int-to-long v4, v1

    cmp-long v0, v4, v2

    if-gez v0, :cond_2

    .line 1324
    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzp;->zza:Ljava/lang/String;

    const-wide/16 v4, 0x0

    .line 1325
    invoke-direct {p0, v0, v4, v5}, Lcom/google/android/gms/measurement/internal/zznv;->zza(Ljava/lang/String;J)Z

    move-result v0

    if-eqz v0, :cond_2

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1327
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zze()Lcom/google/android/gms/measurement/internal/zzah;

    move-result-object p1

    sget-object v0, Lcom/google/android/gms/measurement/internal/zzbj;->zzbj:Lcom/google/android/gms/measurement/internal/zzfz;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/measurement/internal/zzah;->zza(Lcom/google/android/gms/measurement/internal/zzfz;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 1328
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzab()V

    :cond_3
    return-void
.end method

.method public final zzd()Lcom/google/android/gms/measurement/internal/zzac;
    .locals 1

    .line 214
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zznv;->zzm:Lcom/google/android/gms/measurement/internal/zzhw;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzhw;->zzd()Lcom/google/android/gms/measurement/internal/zzac;

    move-result-object v0

    return-object v0
.end method

.method final zzd(Lcom/google/android/gms/measurement/internal/zzp;)V
    .locals 23

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    .line 1330
    const-string v3, "_sysu"

    const-string v4, "_sys"

    const-string v5, "_pfo"

    const-string v6, "com.android.vending"

    const-string v0, "_npa"

    const-string v7, "_uwa"

    const-string v8, "app_id=?"

    .line 1331
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzl()Lcom/google/android/gms/measurement/internal/zzhp;

    move-result-object v9

    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/zziy;->zzt()V

    .line 1332
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzs()V

    .line 1333
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1334
    iget-object v9, v2, Lcom/google/android/gms/measurement/internal/zzp;->zza:Ljava/lang/String;

    invoke-static {v9}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 1335
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/measurement/internal/zznv;->zzi(Lcom/google/android/gms/measurement/internal/zzp;)Z

    move-result v9

    if-nez v9, :cond_0

    return-void

    .line 1337
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzf()Lcom/google/android/gms/measurement/internal/zzam;

    move-result-object v9

    iget-object v10, v2, Lcom/google/android/gms/measurement/internal/zzp;->zza:Ljava/lang/String;

    invoke-virtual {v9, v10}, Lcom/google/android/gms/measurement/internal/zzam;->zze(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzh;

    move-result-object v9

    const/4 v10, 0x0

    const-wide/16 v11, 0x0

    if-eqz v9, :cond_1

    .line 1339
    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/zzh;->zzah()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_1

    iget-object v13, v2, Lcom/google/android/gms/measurement/internal/zzp;->zzb:Ljava/lang/String;

    .line 1340
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_1

    .line 1341
    invoke-virtual {v9, v11, v12}, Lcom/google/android/gms/measurement/internal/zzh;->zzd(J)V

    .line 1342
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzf()Lcom/google/android/gms/measurement/internal/zzam;

    move-result-object v13

    .line 1343
    invoke-virtual {v13, v9, v10, v10}, Lcom/google/android/gms/measurement/internal/zzam;->zza(Lcom/google/android/gms/measurement/internal/zzh;ZZ)V

    .line 1344
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzi()Lcom/google/android/gms/measurement/internal/zzhg;

    move-result-object v9

    iget-object v13, v2, Lcom/google/android/gms/measurement/internal/zzp;->zza:Ljava/lang/String;

    invoke-virtual {v9, v13}, Lcom/google/android/gms/measurement/internal/zzhg;->zzj(Ljava/lang/String;)V

    .line 1345
    :cond_1
    iget-boolean v9, v2, Lcom/google/android/gms/measurement/internal/zzp;->zzh:Z

    if-nez v9, :cond_2

    .line 1346
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/gms/measurement/internal/zznv;->zza(Lcom/google/android/gms/measurement/internal/zzp;)Lcom/google/android/gms/measurement/internal/zzh;

    return-void

    .line 1348
    :cond_2
    iget-wide v13, v2, Lcom/google/android/gms/measurement/internal/zzp;->zzl:J

    cmp-long v9, v13, v11

    if-nez v9, :cond_3

    .line 1350
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzb()Lcom/google/android/gms/common/util/Clock;

    move-result-object v9

    invoke-interface {v9}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v13

    .line 1352
    :cond_3
    iget-object v9, v1, Lcom/google/android/gms/measurement/internal/zznv;->zzm:Lcom/google/android/gms/measurement/internal/zzhw;

    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/zzhw;->zzg()Lcom/google/android/gms/measurement/internal/zzbb;

    move-result-object v9

    .line 1353
    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/zzbb;->zzm()V

    .line 1354
    iget v9, v2, Lcom/google/android/gms/measurement/internal/zzp;->zzm:I

    const/4 v15, 0x1

    if-eqz v9, :cond_4

    if-eq v9, v15, :cond_4

    .line 1356
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzj()Lcom/google/android/gms/measurement/internal/zzgi;

    move-result-object v16

    .line 1357
    invoke-virtual/range {v16 .. v16}, Lcom/google/android/gms/measurement/internal/zzgi;->zzu()Lcom/google/android/gms/measurement/internal/zzgk;

    move-result-object v15

    iget-object v11, v2, Lcom/google/android/gms/measurement/internal/zzp;->zza:Ljava/lang/String;

    .line 1358
    invoke-static {v11}, Lcom/google/android/gms/measurement/internal/zzgi;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    .line 1359
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    .line 1360
    const-string v12, "Incorrect app type, assuming installed app. appId, appType"

    invoke-virtual {v15, v12, v11, v9}, Lcom/google/android/gms/measurement/internal/zzgk;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    move v9, v10

    .line 1362
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzf()Lcom/google/android/gms/measurement/internal/zzam;

    move-result-object v11

    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/zzam;->zzp()V

    .line 1364
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzf()Lcom/google/android/gms/measurement/internal/zzam;

    move-result-object v11

    iget-object v12, v2, Lcom/google/android/gms/measurement/internal/zzp;->zza:Ljava/lang/String;

    .line 1365
    invoke-virtual {v11, v12, v0}, Lcom/google/android/gms/measurement/internal/zzam;->zze(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzom;

    move-result-object v11

    .line 1366
    invoke-direct/range {p0 .. p1}, Lcom/google/android/gms/measurement/internal/zznv;->zzh(Lcom/google/android/gms/measurement/internal/zzp;)Ljava/lang/Boolean;

    move-result-object v12

    move-object/from16 v21, v3

    move-object/from16 v22, v4

    if-eqz v11, :cond_6

    .line 1367
    const-string v15, "auto"

    iget-object v3, v11, Lcom/google/android/gms/measurement/internal/zzom;->zzb:Ljava/lang/String;

    .line 1368
    invoke-virtual {v15, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    goto :goto_0

    :cond_5
    const/4 v3, 0x1

    goto :goto_2

    :cond_6
    :goto_0
    if-eqz v12, :cond_9

    .line 1370
    new-instance v0, Lcom/google/android/gms/measurement/internal/zzok;

    const-string v16, "_npa"

    .line 1371
    invoke-virtual {v12}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_7

    const-wide/16 v3, 0x1

    goto :goto_1

    :cond_7
    const-wide/16 v3, 0x0

    :goto_1
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    const-string v20, "auto"

    const/4 v3, 0x1

    move-object v15, v0

    move-wide/from16 v17, v13

    invoke-direct/range {v15 .. v20}, Lcom/google/android/gms/measurement/internal/zzok;-><init>(Ljava/lang/String;JLjava/lang/Object;Ljava/lang/String;)V

    if-eqz v11, :cond_8

    .line 1372
    iget-object v4, v11, Lcom/google/android/gms/measurement/internal/zzom;->zze:Ljava/lang/Object;

    iget-object v11, v0, Lcom/google/android/gms/measurement/internal/zzok;->zzc:Ljava/lang/Long;

    .line 1373
    invoke-virtual {v4, v11}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_a

    .line 1374
    :cond_8
    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/measurement/internal/zznv;->zza(Lcom/google/android/gms/measurement/internal/zzok;Lcom/google/android/gms/measurement/internal/zzp;)V

    goto :goto_2

    :cond_9
    const/4 v3, 0x1

    if-eqz v11, :cond_a

    .line 1376
    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/measurement/internal/zznv;->zza(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzp;)V

    .line 1378
    :cond_a
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzf()Lcom/google/android/gms/measurement/internal/zzam;

    move-result-object v0

    iget-object v4, v2, Lcom/google/android/gms/measurement/internal/zzp;->zza:Ljava/lang/String;

    invoke-static {v4}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v0, v4}, Lcom/google/android/gms/measurement/internal/zzam;->zze(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzh;

    move-result-object v0

    if-eqz v0, :cond_c

    .line 1380
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzq()Lcom/google/android/gms/measurement/internal/zzop;

    iget-object v11, v2, Lcom/google/android/gms/measurement/internal/zzp;->zzb:Ljava/lang/String;

    .line 1381
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzh;->zzah()Ljava/lang/String;

    move-result-object v12

    iget-object v15, v2, Lcom/google/android/gms/measurement/internal/zzp;->zzp:Ljava/lang/String;

    .line 1382
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzh;->zzaa()Ljava/lang/String;

    move-result-object v4

    .line 1383
    invoke-static {v11, v12, v15, v4}, Lcom/google/android/gms/measurement/internal/zzop;->zza(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 1384
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzj()Lcom/google/android/gms/measurement/internal/zzgi;

    move-result-object v4

    .line 1385
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzgi;->zzu()Lcom/google/android/gms/measurement/internal/zzgk;

    move-result-object v4

    const-string v11, "New GMP App Id passed in. Removing cached database data. appId"

    .line 1386
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzh;->zzac()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/google/android/gms/measurement/internal/zzgi;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    .line 1387
    invoke-virtual {v4, v11, v12}, Lcom/google/android/gms/measurement/internal/zzgk;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1388
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzf()Lcom/google/android/gms/measurement/internal/zzam;

    move-result-object v4

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzh;->zzac()Ljava/lang/String;

    move-result-object v11

    .line 1389
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zznr;->zzal()V

    .line 1390
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zziy;->zzt()V

    .line 1391
    invoke-static {v11}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1392
    :try_start_1
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzam;->e_()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 1393
    new-array v12, v3, [Ljava/lang/String;

    aput-object v11, v12, v10

    .line 1394
    const-string v15, "events"

    invoke-virtual {v0, v15, v8, v12}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v15

    .line 1395
    const-string v10, "user_attributes"

    invoke-virtual {v0, v10, v8, v12}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v10

    add-int/2addr v15, v10

    .line 1396
    const-string v10, "conditional_properties"

    invoke-virtual {v0, v10, v8, v12}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v10

    add-int/2addr v15, v10

    .line 1397
    const-string v10, "apps"

    invoke-virtual {v0, v10, v8, v12}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v10

    add-int/2addr v15, v10

    .line 1398
    const-string v10, "raw_events"

    invoke-virtual {v0, v10, v8, v12}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v10

    add-int/2addr v15, v10

    .line 1399
    const-string v10, "raw_events_metadata"

    invoke-virtual {v0, v10, v8, v12}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v10

    add-int/2addr v15, v10

    .line 1400
    const-string v10, "event_filters"

    invoke-virtual {v0, v10, v8, v12}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v10

    add-int/2addr v15, v10

    .line 1401
    const-string v10, "property_filters"

    invoke-virtual {v0, v10, v8, v12}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v10

    add-int/2addr v15, v10

    .line 1402
    const-string v10, "audience_filter_values"

    invoke-virtual {v0, v10, v8, v12}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v10

    add-int/2addr v15, v10

    .line 1403
    const-string v10, "consent_settings"

    invoke-virtual {v0, v10, v8, v12}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v10

    add-int/2addr v15, v10

    .line 1404
    const-string v10, "default_event_params"

    invoke-virtual {v0, v10, v8, v12}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v10

    add-int/2addr v15, v10

    .line 1405
    const-string v10, "trigger_uris"

    invoke-virtual {v0, v10, v8, v12}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    add-int/2addr v15, v0

    if-lez v15, :cond_b

    .line 1407
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zziy;->zzj()Lcom/google/android/gms/measurement/internal/zzgi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgi;->zzp()Lcom/google/android/gms/measurement/internal/zzgk;

    move-result-object v0

    const-string v8, "Deleted application data. app, records"

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v0, v8, v11, v10}, Lcom/google/android/gms/measurement/internal/zzgk;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    :catch_0
    move-exception v0

    .line 1410
    :try_start_2
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zziy;->zzj()Lcom/google/android/gms/measurement/internal/zzgi;

    move-result-object v4

    .line 1411
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzgi;->zzg()Lcom/google/android/gms/measurement/internal/zzgk;

    move-result-object v4

    const-string v8, "Error deleting application data. appId, error"

    .line 1412
    invoke-static {v11}, Lcom/google/android/gms/measurement/internal/zzgi;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v4, v8, v10, v0}, Lcom/google/android/gms/measurement/internal/zzgk;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_b
    :goto_3
    const/4 v0, 0x0

    :cond_c
    if-eqz v0, :cond_f

    .line 1416
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzh;->zze()J

    move-result-wide v10

    const-wide/32 v15, -0x80000000

    cmp-long v4, v10, v15

    if-eqz v4, :cond_d

    .line 1417
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzh;->zze()J

    move-result-wide v10

    iget-wide v3, v2, Lcom/google/android/gms/measurement/internal/zzp;->zzj:J

    cmp-long v3, v10, v3

    if-eqz v3, :cond_d

    const/4 v3, 0x1

    goto :goto_4

    :cond_d
    const/4 v3, 0x0

    .line 1418
    :goto_4
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzh;->zzaf()Ljava/lang/String;

    move-result-object v4

    .line 1420
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzh;->zze()J

    move-result-wide v10

    cmp-long v0, v10, v15

    if-nez v0, :cond_e

    if-eqz v4, :cond_e

    iget-object v0, v2, Lcom/google/android/gms/measurement/internal/zzp;->zzc:Ljava/lang/String;

    .line 1421
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    const/4 v15, 0x1

    goto :goto_5

    :cond_e
    const/4 v15, 0x0

    :goto_5
    or-int v0, v3, v15

    if-eqz v0, :cond_f

    .line 1423
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1424
    const-string v3, "_pv"

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1425
    new-instance v3, Lcom/google/android/gms/measurement/internal/zzbh;

    const-string v16, "_au"

    new-instance v4, Lcom/google/android/gms/measurement/internal/zzbc;

    invoke-direct {v4, v0}, Lcom/google/android/gms/measurement/internal/zzbc;-><init>(Landroid/os/Bundle;)V

    const-string v18, "auto"

    move-object v15, v3

    move-object/from16 v17, v4

    move-wide/from16 v19, v13

    invoke-direct/range {v15 .. v20}, Lcom/google/android/gms/measurement/internal/zzbh;-><init>(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzbc;Ljava/lang/String;J)V

    .line 1426
    invoke-virtual {v1, v3, v2}, Lcom/google/android/gms/measurement/internal/zznv;->zza(Lcom/google/android/gms/measurement/internal/zzbh;Lcom/google/android/gms/measurement/internal/zzp;)V

    .line 1427
    :cond_f
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/gms/measurement/internal/zznv;->zza(Lcom/google/android/gms/measurement/internal/zzp;)Lcom/google/android/gms/measurement/internal/zzh;

    if-nez v9, :cond_10

    .line 1431
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzf()Lcom/google/android/gms/measurement/internal/zzam;

    move-result-object v0

    iget-object v3, v2, Lcom/google/android/gms/measurement/internal/zzp;->zza:Ljava/lang/String;

    const-string v4, "_f"

    .line 1432
    invoke-virtual {v0, v3, v4}, Lcom/google/android/gms/measurement/internal/zzam;->zzd(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzbd;

    move-result-object v0

    goto :goto_6

    :cond_10
    const/4 v3, 0x1

    if-ne v9, v3, :cond_11

    .line 1435
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzf()Lcom/google/android/gms/measurement/internal/zzam;

    move-result-object v0

    iget-object v3, v2, Lcom/google/android/gms/measurement/internal/zzp;->zza:Ljava/lang/String;

    const-string v4, "_v"

    .line 1436
    invoke-virtual {v0, v3, v4}, Lcom/google/android/gms/measurement/internal/zzam;->zzd(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzbd;

    move-result-object v0

    goto :goto_6

    :cond_11
    const/4 v0, 0x0

    :goto_6
    if-nez v0, :cond_26

    const-wide/32 v3, 0x36ee80

    .line 1438
    div-long v10, v13, v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const-wide/16 v15, 0x1

    add-long/2addr v10, v15

    mul-long/2addr v10, v3

    .line 1439
    const-string v3, "_dac"

    const-string v4, "_et"

    const-string v12, "_r"

    const-string v15, "_c"

    if-nez v9, :cond_24

    .line 1440
    :try_start_3
    new-instance v0, Lcom/google/android/gms/measurement/internal/zzok;

    const-string v16, "_fot"

    .line 1441
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    const-string v20, "auto"

    move-object v9, v15

    move-object v15, v0

    move-wide/from16 v17, v13

    invoke-direct/range {v15 .. v20}, Lcom/google/android/gms/measurement/internal/zzok;-><init>(Ljava/lang/String;JLjava/lang/Object;Ljava/lang/String;)V

    .line 1442
    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/measurement/internal/zznv;->zza(Lcom/google/android/gms/measurement/internal/zzok;Lcom/google/android/gms/measurement/internal/zzp;)V

    .line 1445
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzl()Lcom/google/android/gms/measurement/internal/zzhp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zziy;->zzt()V

    .line 1447
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zznv;->zzl:Lcom/google/android/gms/measurement/internal/zzhd;

    .line 1448
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Lcom/google/android/gms/measurement/internal/zzhd;

    iget-object v0, v2, Lcom/google/android/gms/measurement/internal/zzp;->zza:Ljava/lang/String;

    if-eqz v0, :cond_18

    .line 1450
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_12

    goto/16 :goto_8

    .line 1456
    :cond_12
    iget-object v11, v10, Lcom/google/android/gms/measurement/internal/zzhd;->zza:Lcom/google/android/gms/measurement/internal/zzhw;

    .line 1457
    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/zzhw;->zzl()Lcom/google/android/gms/measurement/internal/zzhp;

    move-result-object v11

    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/zziy;->zzt()V

    .line 1458
    invoke-virtual {v10}, Lcom/google/android/gms/measurement/internal/zzhd;->zza()Z

    move-result v11

    if-nez v11, :cond_13

    .line 1459
    iget-object v0, v10, Lcom/google/android/gms/measurement/internal/zzhd;->zza:Lcom/google/android/gms/measurement/internal/zzhw;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzhw;->zzj()Lcom/google/android/gms/measurement/internal/zzgi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgi;->zzn()Lcom/google/android/gms/measurement/internal/zzgk;

    move-result-object v0

    const-string v6, "Install Referrer Reporter is not available"

    invoke-virtual {v0, v6}, Lcom/google/android/gms/measurement/internal/zzgk;->zza(Ljava/lang/String;)V

    goto/16 :goto_9

    .line 1461
    :cond_13
    new-instance v11, Lcom/google/android/gms/measurement/internal/zzhc;

    invoke-direct {v11, v10, v0}, Lcom/google/android/gms/measurement/internal/zzhc;-><init>(Lcom/google/android/gms/measurement/internal/zzhd;Ljava/lang/String;)V

    .line 1462
    iget-object v0, v10, Lcom/google/android/gms/measurement/internal/zzhd;->zza:Lcom/google/android/gms/measurement/internal/zzhw;

    .line 1463
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzhw;->zzl()Lcom/google/android/gms/measurement/internal/zzhp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zziy;->zzt()V

    .line 1464
    new-instance v0, Landroid/content/Intent;

    const-string v15, "com.google.android.finsky.BIND_GET_INSTALL_REFERRER_SERVICE"

    invoke-direct {v0, v15}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1465
    new-instance v15, Landroid/content/ComponentName;

    const-string v8, "com.google.android.finsky.externalreferrer.GetInstallReferrerService"

    invoke-direct {v15, v6, v8}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v15}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1466
    iget-object v8, v10, Lcom/google/android/gms/measurement/internal/zzhd;->zza:Lcom/google/android/gms/measurement/internal/zzhw;

    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzhw;->zza()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    if-nez v8, :cond_14

    .line 1468
    iget-object v0, v10, Lcom/google/android/gms/measurement/internal/zzhd;->zza:Lcom/google/android/gms/measurement/internal/zzhw;

    .line 1469
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzhw;->zzj()Lcom/google/android/gms/measurement/internal/zzgi;

    move-result-object v0

    .line 1470
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgi;->zzw()Lcom/google/android/gms/measurement/internal/zzgk;

    move-result-object v0

    const-string v6, "Failed to obtain Package Manager to verify binding conditions for Install Referrer"

    .line 1471
    invoke-virtual {v0, v6}, Lcom/google/android/gms/measurement/internal/zzgk;->zza(Ljava/lang/String;)V

    goto/16 :goto_9

    :cond_14
    const/4 v15, 0x0

    .line 1473
    invoke-virtual {v8, v0, v15}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v8

    if-eqz v8, :cond_17

    .line 1474
    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v16

    if-nez v16, :cond_17

    .line 1475
    invoke-interface {v8, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/ResolveInfo;

    .line 1476
    iget-object v15, v8, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-eqz v15, :cond_19

    .line 1477
    iget-object v15, v8, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v15, v15, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 1478
    iget-object v8, v8, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v8, v8, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    if-eqz v8, :cond_16

    .line 1480
    invoke-virtual {v6, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_16

    .line 1481
    invoke-virtual {v10}, Lcom/google/android/gms/measurement/internal/zzhd;->zza()Z

    move-result v6

    if-eqz v6, :cond_16

    .line 1482
    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6, v0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1483
    :try_start_4
    invoke-static {}, Lcom/google/android/gms/common/stats/ConnectionTracker;->getInstance()Lcom/google/android/gms/common/stats/ConnectionTracker;

    move-result-object v0

    iget-object v8, v10, Lcom/google/android/gms/measurement/internal/zzhd;->zza:Lcom/google/android/gms/measurement/internal/zzhw;

    .line 1484
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzhw;->zza()Landroid/content/Context;

    move-result-object v8

    const/4 v15, 0x1

    .line 1485
    invoke-virtual {v0, v8, v6, v11, v15}, Lcom/google/android/gms/common/stats/ConnectionTracker;->bindService(Landroid/content/Context;Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    .line 1486
    iget-object v6, v10, Lcom/google/android/gms/measurement/internal/zzhd;->zza:Lcom/google/android/gms/measurement/internal/zzhw;

    .line 1487
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzhw;->zzj()Lcom/google/android/gms/measurement/internal/zzgi;

    move-result-object v6

    .line 1488
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzgi;->zzp()Lcom/google/android/gms/measurement/internal/zzgk;

    move-result-object v6

    const-string v11, "Install Referrer Service is"

    if-eqz v0, :cond_15

    .line 1489
    const-string v0, "available"

    goto :goto_7

    :cond_15
    const-string v0, "not available"

    :goto_7
    invoke-virtual {v6, v11, v0}, Lcom/google/android/gms/measurement/internal/zzgk;->zza(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_9

    :catch_1
    move-exception v0

    .line 1492
    :try_start_5
    iget-object v6, v10, Lcom/google/android/gms/measurement/internal/zzhd;->zza:Lcom/google/android/gms/measurement/internal/zzhw;

    .line 1493
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzhw;->zzj()Lcom/google/android/gms/measurement/internal/zzgi;

    move-result-object v6

    .line 1494
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzgi;->zzg()Lcom/google/android/gms/measurement/internal/zzgk;

    move-result-object v6

    const-string v10, "Exception occurred while binding to Install Referrer Service"

    .line 1495
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 1496
    invoke-virtual {v6, v10, v0}, Lcom/google/android/gms/measurement/internal/zzgk;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_9

    .line 1498
    :cond_16
    iget-object v0, v10, Lcom/google/android/gms/measurement/internal/zzhd;->zza:Lcom/google/android/gms/measurement/internal/zzhw;

    .line 1499
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzhw;->zzj()Lcom/google/android/gms/measurement/internal/zzgi;

    move-result-object v0

    .line 1500
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgi;->zzu()Lcom/google/android/gms/measurement/internal/zzgk;

    move-result-object v0

    const-string v6, "Play Store version 8.3.73 or higher required for Install Referrer"

    .line 1501
    invoke-virtual {v0, v6}, Lcom/google/android/gms/measurement/internal/zzgk;->zza(Ljava/lang/String;)V

    goto :goto_9

    .line 1503
    :cond_17
    iget-object v0, v10, Lcom/google/android/gms/measurement/internal/zzhd;->zza:Lcom/google/android/gms/measurement/internal/zzhw;

    .line 1504
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzhw;->zzj()Lcom/google/android/gms/measurement/internal/zzgi;

    move-result-object v0

    .line 1505
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgi;->zzn()Lcom/google/android/gms/measurement/internal/zzgk;

    move-result-object v0

    const-string v6, "Play Service for fetching Install Referrer is unavailable on device"

    .line 1506
    invoke-virtual {v0, v6}, Lcom/google/android/gms/measurement/internal/zzgk;->zza(Ljava/lang/String;)V

    goto :goto_9

    .line 1451
    :cond_18
    :goto_8
    iget-object v0, v10, Lcom/google/android/gms/measurement/internal/zzhd;->zza:Lcom/google/android/gms/measurement/internal/zzhw;

    .line 1452
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzhw;->zzj()Lcom/google/android/gms/measurement/internal/zzgi;

    move-result-object v0

    .line 1453
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgi;->zzw()Lcom/google/android/gms/measurement/internal/zzgk;

    move-result-object v0

    const-string v6, "Install Referrer Reporter was called with invalid app package name"

    .line 1454
    invoke-virtual {v0, v6}, Lcom/google/android/gms/measurement/internal/zzgk;->zza(Ljava/lang/String;)V

    .line 1509
    :cond_19
    :goto_9
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzl()Lcom/google/android/gms/measurement/internal/zzhp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zziy;->zzt()V

    .line 1510
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzs()V

    .line 1511
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    const-wide/16 v10, 0x1

    .line 1512
    invoke-virtual {v6, v9, v10, v11}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1513
    invoke-virtual {v6, v12, v10, v11}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-wide/16 v8, 0x0

    .line 1514
    invoke-virtual {v6, v7, v8, v9}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1515
    invoke-virtual {v6, v5, v8, v9}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    move-object/from16 v12, v22

    .line 1516
    invoke-virtual {v6, v12, v8, v9}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    move-object/from16 v15, v21

    .line 1517
    invoke-virtual {v6, v15, v8, v9}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1518
    invoke-virtual {v6, v4, v10, v11}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1519
    iget-boolean v0, v2, Lcom/google/android/gms/measurement/internal/zzp;->zzo:Z

    if-eqz v0, :cond_1a

    .line 1520
    invoke-virtual {v6, v3, v10, v11}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1521
    :cond_1a
    iget-object v0, v2, Lcom/google/android/gms/measurement/internal/zzp;->zza:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Ljava/lang/String;

    .line 1522
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzf()Lcom/google/android/gms/measurement/internal/zzam;

    move-result-object v0

    .line 1523
    invoke-static {v3}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 1524
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zziy;->zzt()V

    .line 1525
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zznr;->zzal()V

    .line 1526
    const-string v4, "first_open_count"

    invoke-virtual {v0, v3, v4}, Lcom/google/android/gms/measurement/internal/zzam;->zzb(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v8

    .line 1529
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zznv;->zzm:Lcom/google/android/gms/measurement/internal/zzhw;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzhw;->zza()Landroid/content/Context;

    move-result-object v0

    .line 1530
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    if-nez v0, :cond_1c

    .line 1532
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzj()Lcom/google/android/gms/measurement/internal/zzgi;

    move-result-object v0

    .line 1533
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgi;->zzg()Lcom/google/android/gms/measurement/internal/zzgk;

    move-result-object v0

    const-string v4, "PackageManager is null, first open report might be inaccurate. appId"

    .line 1534
    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/zzgi;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 1535
    invoke-virtual {v0, v4, v3}, Lcom/google/android/gms/measurement/internal/zzgk;->zza(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-object/from16 v21, v5

    :cond_1b
    :goto_a
    const-wide/16 v3, 0x0

    goto/16 :goto_12

    .line 1538
    :cond_1c
    :try_start_6
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zznv;->zzm:Lcom/google/android/gms/measurement/internal/zzhw;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzhw;->zza()Landroid/content/Context;

    move-result-object v0

    .line 1539
    invoke-static {v0}, Lcom/google/android/gms/common/wrappers/Wrappers;->packageManager(Landroid/content/Context;)Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;

    move-result-object v0

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0
    :try_end_6
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_b

    :catch_2
    move-exception v0

    .line 1542
    :try_start_7
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzj()Lcom/google/android/gms/measurement/internal/zzgi;

    move-result-object v4

    .line 1543
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzgi;->zzg()Lcom/google/android/gms/measurement/internal/zzgk;

    move-result-object v4

    const-string v10, "Package info is null, first open report might be inaccurate. appId"

    .line 1544
    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/zzgi;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    .line 1545
    invoke-virtual {v4, v10, v11, v0}, Lcom/google/android/gms/measurement/internal/zzgk;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v0, 0x0

    :goto_b
    if-eqz v0, :cond_21

    .line 1547
    iget-wide v10, v0, Landroid/content/pm/PackageInfo;->firstInstallTime:J

    const-wide/16 v16, 0x0

    cmp-long v4, v10, v16

    if-eqz v4, :cond_21

    .line 1549
    iget-wide v10, v0, Landroid/content/pm/PackageInfo;->firstInstallTime:J

    move-object/from16 v21, v5

    iget-wide v4, v0, Landroid/content/pm/PackageInfo;->lastUpdateTime:J

    cmp-long v0, v10, v4

    if-eqz v0, :cond_1f

    .line 1550
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zze()Lcom/google/android/gms/measurement/internal/zzah;

    move-result-object v0

    sget-object v4, Lcom/google/android/gms/measurement/internal/zzbj;->zzbr:Lcom/google/android/gms/measurement/internal/zzfz;

    invoke-virtual {v0, v4}, Lcom/google/android/gms/measurement/internal/zzah;->zza(Lcom/google/android/gms/measurement/internal/zzfz;)Z

    move-result v0

    if-eqz v0, :cond_1d

    const-wide/16 v4, 0x0

    cmp-long v0, v8, v4

    if-nez v0, :cond_1e

    const-wide/16 v4, 0x1

    .line 1552
    invoke-virtual {v6, v7, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    goto :goto_c

    :cond_1d
    const-wide/16 v4, 0x1

    .line 1553
    invoke-virtual {v6, v7, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    :cond_1e
    :goto_c
    const/4 v0, 0x0

    goto :goto_d

    :cond_1f
    const/4 v0, 0x1

    .line 1555
    :goto_d
    new-instance v4, Lcom/google/android/gms/measurement/internal/zzok;

    const-string v16, "_fi"

    if-eqz v0, :cond_20

    const-wide/16 v10, 0x1

    goto :goto_e

    :cond_20
    const-wide/16 v10, 0x0

    .line 1556
    :goto_e
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    const-string v20, "auto"

    move-object v5, v15

    move-object v15, v4

    move-wide/from16 v17, v13

    invoke-direct/range {v15 .. v20}, Lcom/google/android/gms/measurement/internal/zzok;-><init>(Ljava/lang/String;JLjava/lang/Object;Ljava/lang/String;)V

    .line 1557
    invoke-virtual {v1, v4, v2}, Lcom/google/android/gms/measurement/internal/zznv;->zza(Lcom/google/android/gms/measurement/internal/zzok;Lcom/google/android/gms/measurement/internal/zzp;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_f

    :cond_21
    move-object/from16 v21, v5

    move-object v5, v15

    .line 1560
    :goto_f
    :try_start_8
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zznv;->zzm:Lcom/google/android/gms/measurement/internal/zzhw;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzhw;->zza()Landroid/content/Context;

    move-result-object v0

    .line 1561
    invoke-static {v0}, Lcom/google/android/gms/common/wrappers/Wrappers;->packageManager(Landroid/content/Context;)Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;

    move-result-object v0

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v4
    :try_end_8
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_8 .. :try_end_8} :catch_3
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_10

    :catch_3
    move-exception v0

    .line 1564
    :try_start_9
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzj()Lcom/google/android/gms/measurement/internal/zzgi;

    move-result-object v4

    .line 1565
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzgi;->zzg()Lcom/google/android/gms/measurement/internal/zzgk;

    move-result-object v4

    const-string v7, "Application info is null, first open report might be inaccurate. appId"

    .line 1566
    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/zzgi;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 1567
    invoke-virtual {v4, v7, v3, v0}, Lcom/google/android/gms/measurement/internal/zzgk;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v4, 0x0

    :goto_10
    if-eqz v4, :cond_1b

    .line 1569
    iget v0, v4, Landroid/content/pm/ApplicationInfo;->flags:I

    const/4 v3, 0x1

    and-int/2addr v0, v3

    if-eqz v0, :cond_22

    const-wide/16 v10, 0x1

    .line 1570
    invoke-virtual {v6, v12, v10, v11}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    goto :goto_11

    :cond_22
    const-wide/16 v10, 0x1

    .line 1571
    :goto_11
    iget v0, v4, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_1b

    .line 1572
    invoke-virtual {v6, v5, v10, v11}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    goto/16 :goto_a

    :goto_12
    cmp-long v0, v8, v3

    if-ltz v0, :cond_23

    move-object/from16 v3, v21

    .line 1574
    invoke-virtual {v6, v3, v8, v9}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1575
    :cond_23
    new-instance v0, Lcom/google/android/gms/measurement/internal/zzbh;

    const-string v16, "_f"

    new-instance v3, Lcom/google/android/gms/measurement/internal/zzbc;

    invoke-direct {v3, v6}, Lcom/google/android/gms/measurement/internal/zzbc;-><init>(Landroid/os/Bundle;)V

    const-string v18, "auto"

    move-object v15, v0

    move-object/from16 v17, v3

    move-wide/from16 v19, v13

    invoke-direct/range {v15 .. v20}, Lcom/google/android/gms/measurement/internal/zzbh;-><init>(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzbc;Ljava/lang/String;J)V

    .line 1576
    invoke-direct {v1, v0, v2}, Lcom/google/android/gms/measurement/internal/zznv;->zzb(Lcom/google/android/gms/measurement/internal/zzbh;Lcom/google/android/gms/measurement/internal/zzp;)V

    goto/16 :goto_13

    :cond_24
    move-object v5, v15

    const/4 v6, 0x1

    if-ne v9, v6, :cond_27

    .line 1578
    new-instance v0, Lcom/google/android/gms/measurement/internal/zzok;

    const-string v16, "_fvt"

    .line 1579
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    const-string v20, "auto"

    move-object v15, v0

    move-wide/from16 v17, v13

    invoke-direct/range {v15 .. v20}, Lcom/google/android/gms/measurement/internal/zzok;-><init>(Ljava/lang/String;JLjava/lang/Object;Ljava/lang/String;)V

    .line 1580
    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/measurement/internal/zznv;->zza(Lcom/google/android/gms/measurement/internal/zzok;Lcom/google/android/gms/measurement/internal/zzp;)V

    .line 1583
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzl()Lcom/google/android/gms/measurement/internal/zzhp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zziy;->zzt()V

    .line 1584
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzs()V

    .line 1585
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-wide/16 v6, 0x1

    .line 1586
    invoke-virtual {v0, v5, v6, v7}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1587
    invoke-virtual {v0, v12, v6, v7}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1588
    invoke-virtual {v0, v4, v6, v7}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1589
    iget-boolean v4, v2, Lcom/google/android/gms/measurement/internal/zzp;->zzo:Z

    if-eqz v4, :cond_25

    .line 1590
    invoke-virtual {v0, v3, v6, v7}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1591
    :cond_25
    new-instance v3, Lcom/google/android/gms/measurement/internal/zzbh;

    const-string v16, "_v"

    new-instance v4, Lcom/google/android/gms/measurement/internal/zzbc;

    invoke-direct {v4, v0}, Lcom/google/android/gms/measurement/internal/zzbc;-><init>(Landroid/os/Bundle;)V

    const-string v18, "auto"

    move-object v15, v3

    move-object/from16 v17, v4

    move-wide/from16 v19, v13

    invoke-direct/range {v15 .. v20}, Lcom/google/android/gms/measurement/internal/zzbh;-><init>(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzbc;Ljava/lang/String;J)V

    .line 1592
    invoke-direct {v1, v3, v2}, Lcom/google/android/gms/measurement/internal/zznv;->zzb(Lcom/google/android/gms/measurement/internal/zzbh;Lcom/google/android/gms/measurement/internal/zzp;)V

    goto :goto_13

    .line 1593
    :cond_26
    iget-boolean v0, v2, Lcom/google/android/gms/measurement/internal/zzp;->zzi:Z

    if-eqz v0, :cond_27

    .line 1595
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1596
    new-instance v3, Lcom/google/android/gms/measurement/internal/zzbh;

    const-string v16, "_cd"

    new-instance v4, Lcom/google/android/gms/measurement/internal/zzbc;

    invoke-direct {v4, v0}, Lcom/google/android/gms/measurement/internal/zzbc;-><init>(Landroid/os/Bundle;)V

    const-string v18, "auto"

    move-object v15, v3

    move-object/from16 v17, v4

    move-wide/from16 v19, v13

    invoke-direct/range {v15 .. v20}, Lcom/google/android/gms/measurement/internal/zzbh;-><init>(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzbc;Ljava/lang/String;J)V

    .line 1597
    invoke-direct {v1, v3, v2}, Lcom/google/android/gms/measurement/internal/zznv;->zzb(Lcom/google/android/gms/measurement/internal/zzbh;Lcom/google/android/gms/measurement/internal/zzp;)V

    .line 1598
    :cond_27
    :goto_13
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzf()Lcom/google/android/gms/measurement/internal/zzam;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzam;->zzw()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 1599
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzf()Lcom/google/android/gms/measurement/internal/zzam;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzam;->zzu()V

    return-void

    :catchall_0
    move-exception v0

    .line 1601
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzf()Lcom/google/android/gms/measurement/internal/zzam;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzam;->zzu()V

    .line 1602
    throw v0
.end method

.method public final zze()Lcom/google/android/gms/measurement/internal/zzah;
    .locals 1

    .line 215
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zznv;->zzm:Lcom/google/android/gms/measurement/internal/zzhw;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/measurement/internal/zzhw;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzhw;->zzf()Lcom/google/android/gms/measurement/internal/zzah;

    move-result-object v0

    return-object v0
.end method

.method final zze(Lcom/google/android/gms/measurement/internal/zzp;)V
    .locals 7

    .line 1704
    const-string v0, "app_id=?"

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zznv;->zzz:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 1705
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/google/android/gms/measurement/internal/zznv;->zzaa:Ljava/util/List;

    .line 1706
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zznv;->zzz:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1707
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzf()Lcom/google/android/gms/measurement/internal/zzam;

    move-result-object v1

    iget-object v2, p1, Lcom/google/android/gms/measurement/internal/zzp;->zza:Ljava/lang/String;

    invoke-static {v2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1708
    invoke-static {v2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 1709
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zziy;->zzt()V

    .line 1710
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zznr;->zzal()V

    .line 1711
    :try_start_0
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzam;->e_()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    const/4 v4, 0x1

    .line 1712
    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    .line 1713
    const-string v5, "apps"

    invoke-virtual {v3, v5, v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v5

    .line 1714
    const-string v6, "events"

    invoke-virtual {v3, v6, v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v6

    add-int/2addr v5, v6

    .line 1715
    const-string v6, "events_snapshot"

    invoke-virtual {v3, v6, v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v6

    add-int/2addr v5, v6

    .line 1716
    const-string v6, "user_attributes"

    invoke-virtual {v3, v6, v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v6

    add-int/2addr v5, v6

    .line 1717
    const-string v6, "conditional_properties"

    invoke-virtual {v3, v6, v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v6

    add-int/2addr v5, v6

    .line 1718
    const-string v6, "raw_events"

    invoke-virtual {v3, v6, v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v6

    add-int/2addr v5, v6

    .line 1719
    const-string v6, "raw_events_metadata"

    invoke-virtual {v3, v6, v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v6

    add-int/2addr v5, v6

    .line 1720
    const-string v6, "queue"

    invoke-virtual {v3, v6, v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v6

    add-int/2addr v5, v6

    .line 1721
    const-string v6, "audience_filter_values"

    invoke-virtual {v3, v6, v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v6

    add-int/2addr v5, v6

    .line 1722
    const-string v6, "main_event_params"

    invoke-virtual {v3, v6, v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v6

    add-int/2addr v5, v6

    .line 1723
    const-string v6, "default_event_params"

    invoke-virtual {v3, v6, v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v6

    add-int/2addr v5, v6

    .line 1724
    const-string v6, "trigger_uris"

    invoke-virtual {v3, v6, v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v6

    add-int/2addr v5, v6

    .line 1725
    const-string v6, "upload_queue"

    invoke-virtual {v3, v6, v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    add-int/2addr v5, v0

    if-lez v5, :cond_1

    .line 1727
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zziy;->zzj()Lcom/google/android/gms/measurement/internal/zzgi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgi;->zzp()Lcom/google/android/gms/measurement/internal/zzgk;

    move-result-object v0

    const-string v3, "Reset analytics data. app, records"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v2, v4}, Lcom/google/android/gms/measurement/internal/zzgk;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1730
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zziy;->zzj()Lcom/google/android/gms/measurement/internal/zzgi;

    move-result-object v1

    .line 1731
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzgi;->zzg()Lcom/google/android/gms/measurement/internal/zzgk;

    move-result-object v1

    const-string v3, "Error resetting analytics data. appId, error"

    .line 1732
    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/zzgi;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v3, v2, v0}, Lcom/google/android/gms/measurement/internal/zzgk;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1733
    :cond_1
    :goto_0
    iget-boolean v0, p1, Lcom/google/android/gms/measurement/internal/zzp;->zzh:Z

    if-eqz v0, :cond_2

    .line 1734
    invoke-virtual {p0, p1}, Lcom/google/android/gms/measurement/internal/zznv;->zzd(Lcom/google/android/gms/measurement/internal/zzp;)V

    :cond_2
    return-void
.end method

.method public final zzf()Lcom/google/android/gms/measurement/internal/zzam;
    .locals 1

    .line 216
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zznv;->zzd:Lcom/google/android/gms/measurement/internal/zzam;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zznv;->zza(Lcom/google/android/gms/measurement/internal/zznr;)Lcom/google/android/gms/measurement/internal/zznr;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/measurement/internal/zzam;

    return-object v0
.end method

.method final zzf(Lcom/google/android/gms/measurement/internal/zzp;)V
    .locals 14

    .line 1737
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzl()Lcom/google/android/gms/measurement/internal/zzhp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zziy;->zzt()V

    .line 1738
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzs()V

    .line 1739
    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzp;->zza:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 1740
    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzp;->zzz:Ljava/lang/String;

    .line 1741
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzaz;->zza(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzaz;

    move-result-object v0

    .line 1742
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzj()Lcom/google/android/gms/measurement/internal/zzgi;

    move-result-object v1

    .line 1743
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzgi;->zzp()Lcom/google/android/gms/measurement/internal/zzgk;

    move-result-object v1

    const-string v2, "Setting DMA consent for package"

    iget-object v3, p1, Lcom/google/android/gms/measurement/internal/zzp;->zza:Ljava/lang/String;

    .line 1744
    invoke-virtual {v1, v2, v3, v0}, Lcom/google/android/gms/measurement/internal/zzgk;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1745
    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/zzp;->zza:Ljava/lang/String;

    .line 1747
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzl()Lcom/google/android/gms/measurement/internal/zzhp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zziy;->zzt()V

    .line 1748
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzs()V

    .line 1749
    invoke-virtual {p0, p1}, Lcom/google/android/gms/measurement/internal/zznv;->zza(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    const/16 v2, 0x64

    .line 1751
    invoke-static {v1, v2}, Lcom/google/android/gms/measurement/internal/zzaz;->zza(Landroid/os/Bundle;I)Lcom/google/android/gms/measurement/internal/zzaz;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzaz;->zzc()Lcom/google/android/gms/measurement/internal/zzjb;

    move-result-object v1

    .line 1752
    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/zznv;->zzad:Ljava/util/Map;

    invoke-interface {v3, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1753
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzf()Lcom/google/android/gms/measurement/internal/zzam;

    move-result-object v3

    invoke-virtual {v3, p1, v0}, Lcom/google/android/gms/measurement/internal/zzam;->zza(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzaz;)V

    .line 1754
    invoke-virtual {p0, p1}, Lcom/google/android/gms/measurement/internal/zznv;->zza(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 1756
    invoke-static {v0, v2}, Lcom/google/android/gms/measurement/internal/zzaz;->zza(Landroid/os/Bundle;I)Lcom/google/android/gms/measurement/internal/zzaz;

    move-result-object v0

    .line 1757
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzaz;->zzc()Lcom/google/android/gms/measurement/internal/zzjb;

    move-result-object v0

    .line 1760
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzl()Lcom/google/android/gms/measurement/internal/zzhp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zziy;->zzt()V

    .line 1761
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzs()V

    .line 1762
    sget-object v2, Lcom/google/android/gms/measurement/internal/zzjb;->zzc:Lcom/google/android/gms/measurement/internal/zzjb;

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ne v1, v2, :cond_0

    sget-object v2, Lcom/google/android/gms/measurement/internal/zzjb;->zzd:Lcom/google/android/gms/measurement/internal/zzjb;

    if-ne v0, v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    move v2, v4

    .line 1763
    :goto_0
    sget-object v5, Lcom/google/android/gms/measurement/internal/zzjb;->zzd:Lcom/google/android/gms/measurement/internal/zzjb;

    if-ne v1, v5, :cond_1

    sget-object v1, Lcom/google/android/gms/measurement/internal/zzjb;->zzc:Lcom/google/android/gms/measurement/internal/zzjb;

    if-ne v0, v1, :cond_1

    move v0, v3

    goto :goto_1

    :cond_1
    move v0, v4

    .line 1764
    :goto_1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zze()Lcom/google/android/gms/measurement/internal/zzah;

    move-result-object v1

    sget-object v5, Lcom/google/android/gms/measurement/internal/zzbj;->zzcp:Lcom/google/android/gms/measurement/internal/zzfz;

    invoke-virtual {v1, v5}, Lcom/google/android/gms/measurement/internal/zzah;->zza(Lcom/google/android/gms/measurement/internal/zzfz;)Z

    move-result v1

    if-eqz v1, :cond_4

    if-nez v2, :cond_3

    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    move v3, v4

    :cond_3
    :goto_2
    move v2, v3

    :cond_4
    if-eqz v2, :cond_6

    .line 1768
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzj()Lcom/google/android/gms/measurement/internal/zzgi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgi;->zzp()Lcom/google/android/gms/measurement/internal/zzgk;

    move-result-object v0

    const-string v1, "Generated _dcu event for"

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/measurement/internal/zzgk;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1769
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1771
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzf()Lcom/google/android/gms/measurement/internal/zzam;

    move-result-object v4

    .line 1772
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzx()J

    move-result-wide v5

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v7, p1

    .line 1773
    invoke-virtual/range {v4 .. v13}, Lcom/google/android/gms/measurement/internal/zzam;->zza(JLjava/lang/String;ZZZZZZ)Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object v1

    .line 1774
    iget-wide v1, v1, Lcom/google/android/gms/measurement/internal/zzar;->zzf:J

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zze()Lcom/google/android/gms/measurement/internal/zzah;

    move-result-object v3

    .line 1775
    sget-object v4, Lcom/google/android/gms/measurement/internal/zzbj;->zzay:Lcom/google/android/gms/measurement/internal/zzfz;

    invoke-virtual {v3, p1, v4}, Lcom/google/android/gms/measurement/internal/zzah;->zzb(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzfz;)I

    move-result v3

    int-to-long v3, v3

    cmp-long v1, v1, v3

    if-gez v1, :cond_5

    .line 1777
    const-string v1, "_r"

    const-wide/16 v2, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1779
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzf()Lcom/google/android/gms/measurement/internal/zzam;

    move-result-object v4

    .line 1780
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzx()J

    move-result-wide v5

    const/4 v12, 0x0

    const/4 v13, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v7, p1

    .line 1781
    invoke-virtual/range {v4 .. v13}, Lcom/google/android/gms/measurement/internal/zzam;->zza(JLjava/lang/String;ZZZZZZ)Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object v1

    .line 1782
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzj()Lcom/google/android/gms/measurement/internal/zzgi;

    move-result-object v2

    .line 1783
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzgi;->zzp()Lcom/google/android/gms/measurement/internal/zzgk;

    move-result-object v2

    iget-wide v3, v1, Lcom/google/android/gms/measurement/internal/zzar;->zzf:J

    .line 1784
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v3, "_dcu realtime event count"

    invoke-virtual {v2, v3, p1, v1}, Lcom/google/android/gms/measurement/internal/zzgk;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1785
    :cond_5
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zznv;->zzah:Lcom/google/android/gms/measurement/internal/zzoo;

    const-string v2, "_dcu"

    invoke-interface {v1, p1, v2, v0}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_6
    return-void
.end method

.method public final zzg()Lcom/google/android/gms/measurement/internal/zzgh;
    .locals 1

    .line 297
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zznv;->zzm:Lcom/google/android/gms/measurement/internal/zzhw;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzhw;->zzk()Lcom/google/android/gms/measurement/internal/zzgh;

    move-result-object v0

    return-object v0
.end method

.method final zzg(Lcom/google/android/gms/measurement/internal/zzp;)V
    .locals 5

    .line 1794
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzl()Lcom/google/android/gms/measurement/internal/zzhp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zziy;->zzt()V

    .line 1795
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzs()V

    .line 1796
    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzp;->zza:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 1797
    iget v0, p1, Lcom/google/android/gms/measurement/internal/zzp;->zzy:I

    .line 1798
    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzp;->zzt:Ljava/lang/String;

    .line 1799
    invoke-static {v1, v0}, Lcom/google/android/gms/measurement/internal/zzjc;->zza(Ljava/lang/String;I)Lcom/google/android/gms/measurement/internal/zzjc;

    move-result-object v0

    .line 1800
    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzp;->zza:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/google/android/gms/measurement/internal/zznv;->zzb(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzjc;

    move-result-object v1

    .line 1801
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzj()Lcom/google/android/gms/measurement/internal/zzgi;

    move-result-object v2

    .line 1802
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzgi;->zzp()Lcom/google/android/gms/measurement/internal/zzgk;

    move-result-object v2

    const-string v3, "Setting storage consent for package"

    iget-object v4, p1, Lcom/google/android/gms/measurement/internal/zzp;->zza:Ljava/lang/String;

    .line 1803
    invoke-virtual {v2, v3, v4, v0}, Lcom/google/android/gms/measurement/internal/zzgk;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1804
    iget-object v2, p1, Lcom/google/android/gms/measurement/internal/zzp;->zza:Ljava/lang/String;

    invoke-direct {p0, v2, v0}, Lcom/google/android/gms/measurement/internal/zznv;->zza(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzjc;)V

    .line 1805
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzpd;->zza()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1806
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zze()Lcom/google/android/gms/measurement/internal/zzah;

    move-result-object v2

    sget-object v3, Lcom/google/android/gms/measurement/internal/zzbj;->zzdc:Lcom/google/android/gms/measurement/internal/zzfz;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/measurement/internal/zzah;->zza(Lcom/google/android/gms/measurement/internal/zzfz;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1807
    :cond_0
    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzjc;->zzc(Lcom/google/android/gms/measurement/internal/zzjc;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1808
    invoke-virtual {p0, p1}, Lcom/google/android/gms/measurement/internal/zznv;->zze(Lcom/google/android/gms/measurement/internal/zzp;)V

    :cond_1
    return-void
.end method

.method public final zzh()Lcom/google/android/gms/measurement/internal/zzgp;
    .locals 1

    .line 299
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zznv;->zzc:Lcom/google/android/gms/measurement/internal/zzgp;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zznv;->zza(Lcom/google/android/gms/measurement/internal/zznr;)Lcom/google/android/gms/measurement/internal/zznr;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/measurement/internal/zzgp;

    return-object v0
.end method

.method public final zzi()Lcom/google/android/gms/measurement/internal/zzhg;
    .locals 1

    .line 303
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zznv;->zzb:Lcom/google/android/gms/measurement/internal/zzhg;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zznv;->zza(Lcom/google/android/gms/measurement/internal/zznr;)Lcom/google/android/gms/measurement/internal/zznr;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/measurement/internal/zzhg;

    return-object v0
.end method

.method public final zzj()Lcom/google/android/gms/measurement/internal/zzgi;
    .locals 1

    .line 298
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zznv;->zzm:Lcom/google/android/gms/measurement/internal/zzhw;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/measurement/internal/zzhw;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzhw;->zzj()Lcom/google/android/gms/measurement/internal/zzgi;

    move-result-object v0

    return-object v0
.end method

.method final zzk()Lcom/google/android/gms/measurement/internal/zzhw;
    .locals 1

    .line 305
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zznv;->zzm:Lcom/google/android/gms/measurement/internal/zzhw;

    return-object v0
.end method

.method public final zzl()Lcom/google/android/gms/measurement/internal/zzhp;
    .locals 1

    .line 304
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zznv;->zzm:Lcom/google/android/gms/measurement/internal/zzhw;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/measurement/internal/zzhw;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzhw;->zzl()Lcom/google/android/gms/measurement/internal/zzhp;

    move-result-object v0

    return-object v0
.end method

.method public final zzm()Lcom/google/android/gms/measurement/internal/zzlf;
    .locals 1

    .line 316
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zznv;->zzi:Lcom/google/android/gms/measurement/internal/zzlf;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zznv;->zza(Lcom/google/android/gms/measurement/internal/zznr;)Lcom/google/android/gms/measurement/internal/zznr;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/measurement/internal/zzlf;

    return-object v0
.end method

.method public final zzn()Lcom/google/android/gms/measurement/internal/zzms;
    .locals 1

    .line 317
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zznv;->zzj:Lcom/google/android/gms/measurement/internal/zzms;

    return-object v0
.end method

.method public final zzo()Lcom/google/android/gms/measurement/internal/zznq;
    .locals 1

    .line 324
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zznv;->zzk:Lcom/google/android/gms/measurement/internal/zznq;

    return-object v0
.end method

.method public final zzp()Lcom/google/android/gms/measurement/internal/zzol;
    .locals 1

    .line 337
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zznv;->zzh:Lcom/google/android/gms/measurement/internal/zzol;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zznv;->zza(Lcom/google/android/gms/measurement/internal/zznr;)Lcom/google/android/gms/measurement/internal/zznr;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/measurement/internal/zzol;

    return-object v0
.end method

.method public final zzq()Lcom/google/android/gms/measurement/internal/zzop;
    .locals 1

    .line 338
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zznv;->zzm:Lcom/google/android/gms/measurement/internal/zzhw;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/measurement/internal/zzhw;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzhw;->zzt()Lcom/google/android/gms/measurement/internal/zzop;

    move-result-object v0

    return-object v0
.end method

.method final zzr()V
    .locals 4

    .line 473
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzl()Lcom/google/android/gms/measurement/internal/zzhp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zziy;->zzt()V

    .line 474
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzs()V

    .line 475
    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zznv;->zzo:Z

    if-nez v0, :cond_2

    const/4 v0, 0x1

    .line 476
    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zznv;->zzo:Z

    .line 477
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzaf()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 479
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zznv;->zzy:Ljava/nio/channels/FileChannel;

    .line 480
    invoke-direct {p0, v0}, Lcom/google/android/gms/measurement/internal/zznv;->zza(Ljava/nio/channels/FileChannel;)I

    move-result v0

    .line 481
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zznv;->zzm:Lcom/google/android/gms/measurement/internal/zzhw;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzhw;->zzh()Lcom/google/android/gms/measurement/internal/zzgc;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzgc;->zzab()I

    move-result v1

    .line 484
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzl()Lcom/google/android/gms/measurement/internal/zzhp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zziy;->zzt()V

    if-le v0, v1, :cond_0

    .line 486
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzj()Lcom/google/android/gms/measurement/internal/zzgi;

    move-result-object v2

    .line 487
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzgi;->zzg()Lcom/google/android/gms/measurement/internal/zzgk;

    move-result-object v2

    .line 488
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 489
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 490
    const-string v3, "Panic: can\'t downgrade version. Previous, current version"

    invoke-virtual {v2, v3, v0, v1}, Lcom/google/android/gms/measurement/internal/zzgk;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    if-ge v0, v1, :cond_2

    .line 494
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zznv;->zzy:Ljava/nio/channels/FileChannel;

    .line 495
    invoke-direct {p0, v1, v2}, Lcom/google/android/gms/measurement/internal/zznv;->zza(ILjava/nio/channels/FileChannel;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 496
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzj()Lcom/google/android/gms/measurement/internal/zzgi;

    move-result-object v2

    .line 497
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzgi;->zzp()Lcom/google/android/gms/measurement/internal/zzgk;

    move-result-object v2

    .line 498
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v3, "Storage version upgraded. Previous, current version"

    invoke-virtual {v2, v3, v0, v1}, Lcom/google/android/gms/measurement/internal/zzgk;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 499
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzj()Lcom/google/android/gms/measurement/internal/zzgi;

    move-result-object v2

    .line 500
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzgi;->zzg()Lcom/google/android/gms/measurement/internal/zzgk;

    move-result-object v2

    .line 501
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 502
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 503
    const-string v3, "Storage version upgrade failed. Previous, current version"

    invoke-virtual {v2, v3, v0, v1}, Lcom/google/android/gms/measurement/internal/zzgk;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    :goto_0
    return-void
.end method

.method final zzs()V
    .locals 2

    .line 508
    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zznv;->zzn:Z

    if-eqz v0, :cond_0

    return-void

    .line 509
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "UploadController is not initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method final zzt()V
    .locals 1

    .line 1014
    iget v0, p0, Lcom/google/android/gms/measurement/internal/zznv;->zzt:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/measurement/internal/zznv;->zzt:I

    return-void
.end method

.method final zzu()V
    .locals 1

    .line 1603
    iget v0, p0, Lcom/google/android/gms/measurement/internal/zznv;->zzs:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/measurement/internal/zznv;->zzs:I

    return-void
.end method

.method protected final zzv()V
    .locals 8

    .line 1816
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzl()Lcom/google/android/gms/measurement/internal/zzhp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zziy;->zzt()V

    .line 1817
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzf()Lcom/google/android/gms/measurement/internal/zzam;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzam;->zzv()V

    .line 1818
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzf()Lcom/google/android/gms/measurement/internal/zzam;

    move-result-object v0

    .line 1819
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zziy;->zzt()V

    .line 1820
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zznr;->zzal()V

    .line 1821
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzam;->zzaa()Z

    move-result v1

    const-wide/16 v2, 0x0

    if-eqz v1, :cond_1

    sget-object v1, Lcom/google/android/gms/measurement/internal/zzbj;->zzbh:Lcom/google/android/gms/measurement/internal/zzfz;

    const/4 v4, 0x0

    .line 1822
    invoke-virtual {v1, v4}, Lcom/google/android/gms/measurement/internal/zzfz;->zza(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 1823
    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    cmp-long v1, v5, v2

    if-nez v1, :cond_0

    goto :goto_0

    .line 1825
    :cond_0
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzam;->e_()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const/4 v5, 0x2

    .line 1826
    new-array v5, v5, [Ljava/lang/String;

    .line 1827
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zziy;->zzb()Lcom/google/android/gms/common/util/Clock;

    move-result-object v6

    invoke-interface {v6}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    sget-object v6, Lcom/google/android/gms/measurement/internal/zzbj;->zzbh:Lcom/google/android/gms/measurement/internal/zzfz;

    .line 1828
    invoke-virtual {v6, v4}, Lcom/google/android/gms/measurement/internal/zzfz;->zza(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 1829
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x1

    aput-object v4, v5, v6

    .line 1830
    const-string v4, "trigger_uris"

    const-string v6, "abs(timestamp_millis - ?) > cast(? as integer)"

    .line 1831
    invoke-virtual {v1, v4, v6, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_1

    .line 1833
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zziy;->zzj()Lcom/google/android/gms/measurement/internal/zzgi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgi;->zzp()Lcom/google/android/gms/measurement/internal/zzgk;

    move-result-object v0

    const-string v4, "Deleted stale trigger uris. rowsDeleted"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Lcom/google/android/gms/measurement/internal/zzgk;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1835
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zznv;->zzj:Lcom/google/android/gms/measurement/internal/zzms;

    .line 1836
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzms;->zzd:Lcom/google/android/gms/measurement/internal/zzgz;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgz;->zza()J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    .line 1838
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zznv;->zzj:Lcom/google/android/gms/measurement/internal/zzms;

    .line 1839
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzms;->zzd:Lcom/google/android/gms/measurement/internal/zzgz;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzb()Lcom/google/android/gms/common/util/Clock;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzgz;->zza(J)V

    .line 1840
    :cond_2
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzac()V

    return-void
.end method

.method final zzw()V
    .locals 25

    move-object/from16 v8, p0

    .line 2167
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzl()Lcom/google/android/gms/measurement/internal/zzhp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zziy;->zzt()V

    .line 2168
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzs()V

    const/4 v0, 0x1

    .line 2169
    iput-boolean v0, v8, Lcom/google/android/gms/measurement/internal/zznv;->zzw:Z

    const/4 v9, 0x0

    .line 2170
    :try_start_0
    iget-object v1, v8, Lcom/google/android/gms/measurement/internal/zznv;->zzm:Lcom/google/android/gms/measurement/internal/zzhw;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzhw;->zzr()Lcom/google/android/gms/measurement/internal/zzlp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzlp;->zzab()Ljava/lang/Boolean;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v1, :cond_0

    .line 2172
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzj()Lcom/google/android/gms/measurement/internal/zzgi;

    move-result-object v0

    .line 2173
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgi;->zzu()Lcom/google/android/gms/measurement/internal/zzgk;

    move-result-object v0

    const-string v1, "Upload data called on the client side before use of service was decided"

    .line 2174
    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzgk;->zza(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2175
    iput-boolean v9, v8, Lcom/google/android/gms/measurement/internal/zznv;->zzw:Z

    .line 2176
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzaa()V

    return-void

    :catchall_0
    move-exception v0

    move v1, v9

    goto/16 :goto_13

    .line 2178
    :cond_0
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v1, :cond_1

    .line 2179
    :try_start_3
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzj()Lcom/google/android/gms/measurement/internal/zzgi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgi;->zzg()Lcom/google/android/gms/measurement/internal/zzgk;

    move-result-object v0

    const-string v1, "Upload called in the client side when service should be used"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzgk;->zza(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2180
    iput-boolean v9, v8, Lcom/google/android/gms/measurement/internal/zznv;->zzw:Z

    .line 2181
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzaa()V

    return-void

    .line 2183
    :cond_1
    :try_start_4
    iget-wide v1, v8, Lcom/google/android/gms/measurement/internal/zznv;->zzp:J
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_2

    .line 2184
    :try_start_5
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzac()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 2185
    iput-boolean v9, v8, Lcom/google/android/gms/measurement/internal/zznv;->zzw:Z

    .line 2186
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzaa()V

    return-void

    .line 2188
    :cond_2
    :try_start_6
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzae()Z

    move-result v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    if-eqz v1, :cond_3

    .line 2189
    :try_start_7
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzj()Lcom/google/android/gms/measurement/internal/zzgi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgi;->zzp()Lcom/google/android/gms/measurement/internal/zzgk;

    move-result-object v0

    const-string v1, "Uploading requested multiple times"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzgk;->zza(Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 2190
    iput-boolean v9, v8, Lcom/google/android/gms/measurement/internal/zznv;->zzw:Z

    .line 2191
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzaa()V

    return-void

    .line 2193
    :cond_3
    :try_start_8
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzh()Lcom/google/android/gms/measurement/internal/zzgp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzgp;->zzu()Z

    move-result v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    if-nez v1, :cond_4

    .line 2194
    :try_start_9
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzj()Lcom/google/android/gms/measurement/internal/zzgi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgi;->zzp()Lcom/google/android/gms/measurement/internal/zzgk;

    move-result-object v0

    const-string v1, "Network not connected, ignoring upload request"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzgk;->zza(Ljava/lang/String;)V

    .line 2195
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzac()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 2196
    iput-boolean v9, v8, Lcom/google/android/gms/measurement/internal/zznv;->zzw:Z

    .line 2197
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzaa()V

    return-void

    .line 2199
    :cond_4
    :try_start_a
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzb()Lcom/google/android/gms/common/util/Clock;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v1

    .line 2200
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zze()Lcom/google/android/gms/measurement/internal/zzah;

    move-result-object v5

    sget-object v6, Lcom/google/android/gms/measurement/internal/zzbj;->zzau:Lcom/google/android/gms/measurement/internal/zzfz;

    const/4 v7, 0x0

    invoke-virtual {v5, v7, v6}, Lcom/google/android/gms/measurement/internal/zzah;->zzb(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzfz;)I

    move-result v5

    .line 2201
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zze()Lcom/google/android/gms/measurement/internal/zzah;

    invoke-static {}, Lcom/google/android/gms/measurement/internal/zzah;->zzh()J

    move-result-wide v10
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    sub-long v10, v1, v10

    move v6, v9

    :goto_0
    if-ge v6, v5, :cond_5

    .line 2203
    :try_start_b
    invoke-direct {v8, v7, v10, v11}, Lcom/google/android/gms/measurement/internal/zznv;->zza(Ljava/lang/String;J)Z

    move-result v12
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    if-eqz v12, :cond_5

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 2205
    :cond_5
    :try_start_c
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzrl;->zza()Z

    move-result v5
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    if-eqz v5, :cond_6

    .line 2206
    :try_start_d
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzab()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .line 2208
    :cond_6
    :try_start_e
    iget-object v5, v8, Lcom/google/android/gms/measurement/internal/zznv;->zzj:Lcom/google/android/gms/measurement/internal/zzms;

    .line 2209
    iget-object v5, v5, Lcom/google/android/gms/measurement/internal/zzms;->zzd:Lcom/google/android/gms/measurement/internal/zzgz;

    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzgz;->zza()J

    move-result-wide v5
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    cmp-long v3, v5, v3

    if-eqz v3, :cond_7

    .line 2211
    :try_start_f
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzj()Lcom/google/android/gms/measurement/internal/zzgi;

    move-result-object v3

    .line 2212
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzgi;->zzc()Lcom/google/android/gms/measurement/internal/zzgk;

    move-result-object v3

    const-string v4, "Uploading events. Elapsed time since last upload attempt (ms)"

    sub-long v5, v1, v5

    .line 2213
    invoke-static {v5, v6}, Ljava/lang/Math;->abs(J)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    .line 2214
    invoke-virtual {v3, v4, v5}, Lcom/google/android/gms/measurement/internal/zzgk;->zza(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    .line 2215
    :cond_7
    :try_start_10
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzf()Lcom/google/android/gms/measurement/internal/zzam;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzam;->f_()Ljava/lang/String;

    move-result-object v6

    .line 2216
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const-wide/16 v4, -0x1

    if-nez v3, :cond_2e

    .line 2217
    iget-wide v10, v8, Lcom/google/android/gms/measurement/internal/zznv;->zzab:J
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_1

    cmp-long v3, v10, v4

    if-nez v3, :cond_8

    .line 2218
    :try_start_11
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzf()Lcom/google/android/gms/measurement/internal/zzam;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzam;->b_()J

    move-result-wide v3

    iput-wide v3, v8, Lcom/google/android/gms/measurement/internal/zznv;->zzab:J
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    .line 2219
    :cond_8
    :try_start_12
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zze()Lcom/google/android/gms/measurement/internal/zzah;

    move-result-object v3

    .line 2220
    sget-object v4, Lcom/google/android/gms/measurement/internal/zzbj;->zzg:Lcom/google/android/gms/measurement/internal/zzfz;

    invoke-virtual {v3, v6, v4}, Lcom/google/android/gms/measurement/internal/zzah;->zzb(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzfz;)I

    move-result v3

    .line 2222
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zze()Lcom/google/android/gms/measurement/internal/zzah;

    move-result-object v4

    .line 2223
    sget-object v5, Lcom/google/android/gms/measurement/internal/zzbj;->zzh:Lcom/google/android/gms/measurement/internal/zzfz;

    invoke-virtual {v4, v6, v5}, Lcom/google/android/gms/measurement/internal/zzah;->zzb(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzfz;)I

    move-result v4

    invoke-static {v9, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 2226
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzf()Lcom/google/android/gms/measurement/internal/zzam;

    move-result-object v5

    invoke-virtual {v5, v6, v3, v4}, Lcom/google/android/gms/measurement/internal/zzam;->zza(Ljava/lang/String;II)Ljava/util/List;

    move-result-object v3

    .line 2227
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2f

    .line 2228
    invoke-virtual {v8, v6}, Lcom/google/android/gms/measurement/internal/zznv;->zzb(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzjc;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzjc;->zzi()Z

    move-result v4
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_1

    if-eqz v4, :cond_c

    .line 2230
    :try_start_13
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_9
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_a

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/Pair;

    .line 2231
    iget-object v5, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Lcom/google/android/gms/internal/measurement/zzgn$zzk;

    .line 2232
    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzgn$zzk;->zzan()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_9

    .line 2233
    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzgn$zzk;->zzan()Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :cond_a
    move-object v4, v7

    :goto_1
    if-eqz v4, :cond_c

    move v5, v9

    .line 2237
    :goto_2
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v10

    if-ge v5, v10, :cond_c

    .line 2238
    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/util/Pair;

    iget-object v10, v10, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v10, Lcom/google/android/gms/internal/measurement/zzgn$zzk;

    .line 2239
    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/zzgn$zzk;->zzan()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_b

    .line 2240
    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/zzgn$zzk;->zzan()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_b

    .line 2241
    invoke-interface {v3, v9, v5}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v3
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_0

    goto :goto_3

    :cond_b
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 2244
    :cond_c
    :goto_3
    :try_start_14
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzgn$zzj;->zzb()Lcom/google/android/gms/internal/measurement/zzgn$zzj$zza;

    move-result-object v4

    .line 2245
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    .line 2246
    new-instance v10, Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v11

    invoke-direct {v10, v11}, Ljava/util/ArrayList;-><init>(I)V

    .line 2248
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zze()Lcom/google/android/gms/measurement/internal/zzah;

    move-result-object v11

    invoke-virtual {v11, v6}, Lcom/google/android/gms/measurement/internal/zzah;->zzj(Ljava/lang/String;)Z

    move-result v11
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_1

    if-eqz v11, :cond_d

    .line 2249
    :try_start_15
    invoke-virtual {v8, v6}, Lcom/google/android/gms/measurement/internal/zznv;->zzb(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzjc;

    move-result-object v11

    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/zzjc;->zzi()Z

    move-result v11
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_0

    if-eqz v11, :cond_d

    move v11, v0

    goto :goto_4

    :cond_d
    move v11, v9

    .line 2250
    :goto_4
    :try_start_16
    invoke-virtual {v8, v6}, Lcom/google/android/gms/measurement/internal/zznv;->zzb(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzjc;

    move-result-object v12

    invoke-virtual {v12}, Lcom/google/android/gms/measurement/internal/zzjc;->zzi()Z

    move-result v12

    .line 2252
    invoke-virtual {v8, v6}, Lcom/google/android/gms/measurement/internal/zznv;->zzb(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzjc;

    move-result-object v13

    invoke-virtual {v13}, Lcom/google/android/gms/measurement/internal/zzjc;->zzj()Z

    move-result v13

    .line 2253
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzrq;->zza()Z

    move-result v14
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_1

    if-eqz v14, :cond_e

    .line 2254
    :try_start_17
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zze()Lcom/google/android/gms/measurement/internal/zzah;

    move-result-object v14

    sget-object v15, Lcom/google/android/gms/measurement/internal/zzbj;->zzbv:Lcom/google/android/gms/measurement/internal/zzfz;

    invoke-virtual {v14, v6, v15}, Lcom/google/android/gms/measurement/internal/zzah;->zze(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzfz;)Z

    move-result v14
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_0

    if-eqz v14, :cond_e

    move v14, v0

    goto :goto_5

    :cond_e
    move v14, v9

    .line 2256
    :goto_5
    :try_start_18
    iget-object v15, v8, Lcom/google/android/gms/measurement/internal/zznv;->zzk:Lcom/google/android/gms/measurement/internal/zznq;

    .line 2257
    invoke-virtual {v15, v6}, Lcom/google/android/gms/measurement/internal/zznq;->zza(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzns;

    move-result-object v16

    move v15, v9

    :goto_6
    if-ge v15, v5, :cond_21

    .line 2259
    invoke-interface {v3, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v7, v17

    check-cast v7, Landroid/util/Pair;

    iget-object v7, v7, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v7, Lcom/google/android/gms/internal/measurement/zzgn$zzk;

    .line 2260
    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzlc;->zzcd()Lcom/google/android/gms/internal/measurement/zzlc$zzb;

    move-result-object v7

    .line 2261
    move-object/from16 v17, v7

    check-cast v17, Lcom/google/android/gms/internal/measurement/zzlc$zzb;

    check-cast v7, Lcom/google/android/gms/internal/measurement/zzgn$zzk$zza;

    .line 2262
    invoke-interface {v3, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v0, v17

    check-cast v0, Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2264
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zze()Lcom/google/android/gms/measurement/internal/zzah;

    move-object v0, v10

    const-wide/32 v9, 0x18e71

    invoke-virtual {v7, v9, v10}, Lcom/google/android/gms/internal/measurement/zzgn$zzk$zza;->zzl(J)Lcom/google/android/gms/internal/measurement/zzgn$zzk$zza;

    move-result-object v9

    .line 2265
    invoke-virtual {v9, v1, v2}, Lcom/google/android/gms/internal/measurement/zzgn$zzk$zza;->zzk(J)Lcom/google/android/gms/internal/measurement/zzgn$zzk$zza;

    move-result-object v9

    const/4 v10, 0x0

    .line 2267
    invoke-virtual {v9, v10}, Lcom/google/android/gms/internal/measurement/zzgn$zzk$zza;->zzd(Z)Lcom/google/android/gms/internal/measurement/zzgn$zzk$zza;

    if-nez v11, :cond_f

    .line 2269
    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzgn$zzk$zza;->zzk()Lcom/google/android/gms/internal/measurement/zzgn$zzk$zza;

    :cond_f
    if-nez v12, :cond_10

    .line 2271
    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzgn$zzk$zza;->zzq()Lcom/google/android/gms/internal/measurement/zzgn$zzk$zza;

    .line 2272
    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzgn$zzk$zza;->zzn()Lcom/google/android/gms/internal/measurement/zzgn$zzk$zza;

    :cond_10
    if-nez v13, :cond_11

    .line 2274
    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzgn$zzk$zza;->zzh()Lcom/google/android/gms/internal/measurement/zzgn$zzk$zza;

    .line 2275
    :cond_11
    invoke-virtual {v8, v6, v7}, Lcom/google/android/gms/measurement/internal/zznv;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/zzgn$zzk$zza;)V

    if-nez v14, :cond_12

    .line 2277
    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzgn$zzk$zza;->zzr()Lcom/google/android/gms/internal/measurement/zzgn$zzk$zza;

    .line 2278
    :cond_12
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzpd;->zza()Z

    move-result v9

    if-eqz v9, :cond_13

    .line 2279
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zze()Lcom/google/android/gms/measurement/internal/zzah;

    move-result-object v9

    sget-object v10, Lcom/google/android/gms/measurement/internal/zzbj;->zzdd:Lcom/google/android/gms/measurement/internal/zzfz;

    invoke-virtual {v9, v10}, Lcom/google/android/gms/measurement/internal/zzah;->zza(Lcom/google/android/gms/measurement/internal/zzfz;)Z

    move-result v9

    if-eqz v9, :cond_13

    if-nez v13, :cond_13

    .line 2281
    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzgn$zzk$zza;->zzi()Lcom/google/android/gms/internal/measurement/zzgn$zzk$zza;

    .line 2282
    :cond_13
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzpo;->zza()Z

    move-result v9

    if-eqz v9, :cond_1d

    .line 2283
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zze()Lcom/google/android/gms/measurement/internal/zzah;

    move-result-object v9

    sget-object v10, Lcom/google/android/gms/measurement/internal/zzbj;->zzcr:Lcom/google/android/gms/measurement/internal/zzfz;

    invoke-virtual {v9, v10}, Lcom/google/android/gms/measurement/internal/zzah;->zza(Lcom/google/android/gms/measurement/internal/zzfz;)Z

    move-result v9

    if-eqz v9, :cond_1d

    .line 2285
    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzgn$zzk$zza;->zzz()Ljava/lang/String;

    move-result-object v9

    .line 2287
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_15

    const-string v10, "00000000-0000-0000-0000-000000000000"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_14

    goto :goto_7

    :cond_14
    move-object/from16 v18, v3

    move/from16 v19, v11

    move/from16 v23, v12

    move/from16 v22, v13

    move/from16 v24, v14

    goto/16 :goto_9

    .line 2288
    :cond_15
    :goto_7
    new-instance v9, Ljava/util/ArrayList;

    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzgn$zzk$zza;->zzaa()Ljava/util/List;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 2290
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    move-object/from16 v18, v3

    move/from16 v19, v11

    const/4 v3, 0x0

    const/4 v11, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    .line 2293
    :goto_8
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_1a

    .line 2294
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v22

    move/from16 v23, v12

    move-object/from16 v12, v22

    check-cast v12, Lcom/google/android/gms/internal/measurement/zzgn$zzf;

    move/from16 v22, v13

    .line 2295
    const-string v13, "_fx"

    move/from16 v24, v14

    invoke-virtual {v12}, Lcom/google/android/gms/internal/measurement/zzgn$zzf;->zzg()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_16

    .line 2297
    invoke-interface {v10}, Ljava/util/Iterator;->remove()V

    move/from16 v13, v22

    move/from16 v12, v23

    move/from16 v14, v24

    const/16 v20, 0x1

    const/16 v21, 0x1

    goto :goto_8

    .line 2299
    :cond_16
    const-string v13, "_f"

    invoke-virtual {v12}, Lcom/google/android/gms/internal/measurement/zzgn$zzf;->zzg()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_19

    .line 2301
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zze()Lcom/google/android/gms/measurement/internal/zzah;

    move-result-object v13

    sget-object v14, Lcom/google/android/gms/measurement/internal/zzbj;->zzcz:Lcom/google/android/gms/measurement/internal/zzfz;

    invoke-virtual {v13, v14}, Lcom/google/android/gms/measurement/internal/zzah;->zza(Lcom/google/android/gms/measurement/internal/zzfz;)Z

    move-result v13

    if-eqz v13, :cond_18

    .line 2303
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzp()Lcom/google/android/gms/measurement/internal/zzol;

    const-string v13, "_pfo"

    .line 2304
    invoke-static {v12, v13}, Lcom/google/android/gms/measurement/internal/zzol;->zza(Lcom/google/android/gms/internal/measurement/zzgn$zzf;Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzgn$zzh;

    move-result-object v13

    if-eqz v13, :cond_17

    .line 2306
    invoke-virtual {v13}, Lcom/google/android/gms/internal/measurement/zzgn$zzh;->zzd()J

    move-result-wide v13

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 2308
    :cond_17
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzp()Lcom/google/android/gms/measurement/internal/zzol;

    const-string v13, "_uwa"

    .line 2309
    invoke-static {v12, v13}, Lcom/google/android/gms/measurement/internal/zzol;->zza(Lcom/google/android/gms/internal/measurement/zzgn$zzf;Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzgn$zzh;

    move-result-object v12

    if-eqz v12, :cond_18

    .line 2311
    invoke-virtual {v12}, Lcom/google/android/gms/internal/measurement/zzgn$zzh;->zzd()J

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    :cond_18
    const/16 v21, 0x1

    :cond_19
    move/from16 v13, v22

    move/from16 v12, v23

    move/from16 v14, v24

    goto :goto_8

    :cond_1a
    move/from16 v23, v12

    move/from16 v22, v13

    move/from16 v24, v14

    if-eqz v20, :cond_1b

    .line 2314
    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzgn$zzk$zza;->zzl()Lcom/google/android/gms/internal/measurement/zzgn$zzk$zza;

    .line 2315
    invoke-virtual {v7, v9}, Lcom/google/android/gms/internal/measurement/zzgn$zzk$zza;->zzb(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/measurement/zzgn$zzk$zza;

    :cond_1b
    if-eqz v21, :cond_1c

    .line 2318
    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzgn$zzk$zza;->zzt()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x1

    .line 2319
    invoke-direct {v8, v9, v10, v3, v11}, Lcom/google/android/gms/measurement/internal/zznv;->zza(Ljava/lang/String;ZLjava/lang/Long;Ljava/lang/Long;)V

    .line 2320
    :cond_1c
    :goto_9
    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzgn$zzk$zza;->zzc()I

    move-result v3

    if-eqz v3, :cond_20

    goto :goto_a

    :cond_1d
    move-object/from16 v18, v3

    move/from16 v19, v11

    move/from16 v23, v12

    move/from16 v22, v13

    move/from16 v24, v14

    .line 2321
    :goto_a
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zze()Lcom/google/android/gms/measurement/internal/zzah;

    move-result-object v3

    sget-object v9, Lcom/google/android/gms/measurement/internal/zzbj;->zzbl:Lcom/google/android/gms/measurement/internal/zzfz;

    invoke-virtual {v3, v6, v9}, Lcom/google/android/gms/measurement/internal/zzah;->zze(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzfz;)Z

    move-result v3

    if-eqz v3, :cond_1e

    .line 2322
    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzlc$zzb;->zzai()Lcom/google/android/gms/internal/measurement/zzml;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/measurement/zzlc;

    check-cast v3, Lcom/google/android/gms/internal/measurement/zzgn$zzk;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzji;->zzca()[B

    move-result-object v3

    .line 2323
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzp()Lcom/google/android/gms/measurement/internal/zzol;

    move-result-object v9

    invoke-virtual {v9, v3}, Lcom/google/android/gms/measurement/internal/zzol;->zza([B)J

    move-result-wide v9

    invoke-virtual {v7, v9, v10}, Lcom/google/android/gms/internal/measurement/zzgn$zzk$zza;->zza(J)Lcom/google/android/gms/internal/measurement/zzgn$zzk$zza;

    .line 2324
    :cond_1e
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzrw;->zza()Z

    move-result v3

    if-eqz v3, :cond_1f

    .line 2325
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zze()Lcom/google/android/gms/measurement/internal/zzah;

    move-result-object v3

    sget-object v9, Lcom/google/android/gms/measurement/internal/zzbj;->zzbw:Lcom/google/android/gms/measurement/internal/zzfz;

    invoke-virtual {v3, v9}, Lcom/google/android/gms/measurement/internal/zzah;->zza(Lcom/google/android/gms/measurement/internal/zzfz;)Z

    move-result v3

    if-eqz v3, :cond_1f

    .line 2326
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzq()Lcom/google/android/gms/measurement/internal/zzop;

    invoke-static {v6}, Lcom/google/android/gms/measurement/internal/zzop;->zzf(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1f

    .line 2327
    invoke-virtual/range {v16 .. v16}, Lcom/google/android/gms/measurement/internal/zzns;->zza()Lcom/google/android/gms/measurement/internal/zznt;

    move-result-object v3

    sget-object v9, Lcom/google/android/gms/measurement/internal/zznt;->zzc:Lcom/google/android/gms/measurement/internal/zznt;

    if-ne v3, v9, :cond_1f

    .line 2328
    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzgn$zzk$zza;->zzk()Lcom/google/android/gms/internal/measurement/zzgn$zzk$zza;

    .line 2329
    :cond_1f
    invoke-virtual {v4, v7}, Lcom/google/android/gms/internal/measurement/zzgn$zzj$zza;->zza(Lcom/google/android/gms/internal/measurement/zzgn$zzk$zza;)Lcom/google/android/gms/internal/measurement/zzgn$zzj$zza;

    :cond_20
    add-int/lit8 v15, v15, 0x1

    move-object v10, v0

    move-object/from16 v3, v18

    move/from16 v11, v19

    move/from16 v13, v22

    move/from16 v12, v23

    move/from16 v14, v24

    const/4 v0, 0x1

    const/4 v7, 0x0

    const/4 v9, 0x0

    goto/16 :goto_6

    :cond_21
    move-object v0, v10

    .line 2331
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzpo;->zza()Z

    move-result v3

    if-eqz v3, :cond_22

    .line 2332
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zze()Lcom/google/android/gms/measurement/internal/zzah;

    move-result-object v3

    sget-object v7, Lcom/google/android/gms/measurement/internal/zzbj;->zzcr:Lcom/google/android/gms/measurement/internal/zzfz;

    invoke-virtual {v3, v7}, Lcom/google/android/gms/measurement/internal/zzah;->zza(Lcom/google/android/gms/measurement/internal/zzfz;)Z

    move-result v3

    if-eqz v3, :cond_22

    .line 2333
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzgn$zzj$zza;->zza()I

    move-result v3

    if-nez v3, :cond_22

    .line 2334
    invoke-direct {v8, v0}, Lcom/google/android/gms/measurement/internal/zznv;->zza(Ljava/util/List;)V

    .line 2336
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v7

    const/4 v2, 0x0

    const/16 v3, 0xcc

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v1, p0

    .line 2337
    invoke-virtual/range {v1 .. v7}, Lcom/google/android/gms/measurement/internal/zznv;->zza(ZILjava/lang/Throwable;[BLjava/lang/String;Ljava/util/List;)V
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_1

    const/4 v1, 0x0

    .line 2338
    iput-boolean v1, v8, Lcom/google/android/gms/measurement/internal/zznv;->zzw:Z

    .line 2339
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzaa()V

    return-void

    .line 2341
    :cond_22
    :try_start_19
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzlc$zzb;->zzai()Lcom/google/android/gms/internal/measurement/zzml;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/measurement/zzlc;

    check-cast v3, Lcom/google/android/gms/internal/measurement/zzgn$zzj;

    .line 2342
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 2343
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zze()Lcom/google/android/gms/measurement/internal/zzah;

    move-result-object v9

    sget-object v10, Lcom/google/android/gms/measurement/internal/zzbj;->zzbw:Lcom/google/android/gms/measurement/internal/zzfz;

    invoke-virtual {v9, v10}, Lcom/google/android/gms/measurement/internal/zzah;->zza(Lcom/google/android/gms/measurement/internal/zzfz;)Z

    move-result v9

    if-eqz v9, :cond_2b

    .line 2344
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzq()Lcom/google/android/gms/measurement/internal/zzop;

    invoke-static {v6}, Lcom/google/android/gms/measurement/internal/zzop;->zzf(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_2b

    .line 2345
    invoke-virtual/range {v16 .. v16}, Lcom/google/android/gms/measurement/internal/zzns;->zza()Lcom/google/android/gms/measurement/internal/zznt;

    move-result-object v9

    sget-object v10, Lcom/google/android/gms/measurement/internal/zznt;->zzc:Lcom/google/android/gms/measurement/internal/zznt;

    if-ne v9, v10, :cond_2b

    .line 2346
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzlc$zzb;->zzai()Lcom/google/android/gms/internal/measurement/zzml;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/measurement/zzlc;

    check-cast v3, Lcom/google/android/gms/internal/measurement/zzgn$zzj;

    .line 2347
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzgn$zzj;->zzf()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_23
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_24

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/android/gms/internal/measurement/zzgn$zzk;

    .line 2348
    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/zzgn$zzk;->zzbh()Z

    move-result v9

    if-eqz v9, :cond_23

    .line 2352
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_b

    :cond_24
    const/4 v3, 0x0

    .line 2353
    :goto_b
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzlc$zzb;->zzai()Lcom/google/android/gms/internal/measurement/zzml;

    move-result-object v9

    check-cast v9, Lcom/google/android/gms/internal/measurement/zzlc;

    check-cast v9, Lcom/google/android/gms/internal/measurement/zzgn$zzj;

    .line 2355
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzl()Lcom/google/android/gms/measurement/internal/zzhp;

    move-result-object v10

    invoke-virtual {v10}, Lcom/google/android/gms/measurement/internal/zziy;->zzt()V

    .line 2356
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzs()V

    .line 2357
    invoke-static {v9}, Lcom/google/android/gms/internal/measurement/zzgn$zzj;->zza(Lcom/google/android/gms/internal/measurement/zzgn$zzj;)Lcom/google/android/gms/internal/measurement/zzgn$zzj$zza;

    move-result-object v10

    .line 2358
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_25

    .line 2359
    invoke-virtual {v10, v3}, Lcom/google/android/gms/internal/measurement/zzgn$zzj$zza;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzgn$zzj$zza;

    .line 2360
    :cond_25
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzi()Lcom/google/android/gms/measurement/internal/zzhg;

    move-result-object v11

    invoke-virtual {v11, v6}, Lcom/google/android/gms/measurement/internal/zzhg;->zzf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 2361
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_26

    .line 2362
    invoke-virtual {v10, v11}, Lcom/google/android/gms/internal/measurement/zzgn$zzj$zza;->zzb(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzgn$zzj$zza;

    .line 2363
    :cond_26
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 2364
    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/zzgn$zzj;->zzf()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_c
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_27

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/google/android/gms/internal/measurement/zzgn$zzk;

    .line 2365
    invoke-static {v12}, Lcom/google/android/gms/internal/measurement/zzgn$zzk;->zza(Lcom/google/android/gms/internal/measurement/zzgn$zzk;)Lcom/google/android/gms/internal/measurement/zzgn$zzk$zza;

    move-result-object v12

    .line 2366
    invoke-virtual {v12}, Lcom/google/android/gms/internal/measurement/zzgn$zzk$zza;->zzk()Lcom/google/android/gms/internal/measurement/zzgn$zzk$zza;

    .line 2367
    invoke-virtual {v12}, Lcom/google/android/gms/internal/measurement/zzlc$zzb;->zzai()Lcom/google/android/gms/internal/measurement/zzml;

    move-result-object v12

    check-cast v12, Lcom/google/android/gms/internal/measurement/zzlc;

    check-cast v12, Lcom/google/android/gms/internal/measurement/zzgn$zzk;

    invoke-interface {v11, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_c

    .line 2369
    :cond_27
    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/zzgn$zzj$zza;->zzb()Lcom/google/android/gms/internal/measurement/zzgn$zzj$zza;

    .line 2370
    invoke-virtual {v10, v11}, Lcom/google/android/gms/internal/measurement/zzgn$zzj$zza;->zza(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/measurement/zzgn$zzj$zza;

    .line 2371
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzj()Lcom/google/android/gms/measurement/internal/zzgi;

    move-result-object v9

    .line 2372
    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/zzgi;->zzp()Lcom/google/android/gms/measurement/internal/zzgk;

    move-result-object v9

    const-string v11, "Processed MeasurementBatch for sGTM with sgtmJoinId"

    .line 2373
    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/zzgn$zzj$zza;->zzc()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v11, v12}, Lcom/google/android/gms/measurement/internal/zzgk;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2374
    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/zzlc$zzb;->zzai()Lcom/google/android/gms/internal/measurement/zzml;

    move-result-object v9

    check-cast v9, Lcom/google/android/gms/internal/measurement/zzlc;

    check-cast v9, Lcom/google/android/gms/internal/measurement/zzgn$zzj;

    .line 2376
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_2a

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zze()Lcom/google/android/gms/measurement/internal/zzah;

    move-result-object v10

    sget-object v11, Lcom/google/android/gms/measurement/internal/zzbj;->zzca:Lcom/google/android/gms/measurement/internal/zzfz;

    invoke-virtual {v10, v11}, Lcom/google/android/gms/measurement/internal/zzah;->zza(Lcom/google/android/gms/measurement/internal/zzfz;)Z

    move-result v10

    if-eqz v10, :cond_2a

    .line 2377
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzlc$zzb;->zzai()Lcom/google/android/gms/internal/measurement/zzml;

    move-result-object v10

    check-cast v10, Lcom/google/android/gms/internal/measurement/zzlc;

    check-cast v10, Lcom/google/android/gms/internal/measurement/zzgn$zzj;

    .line 2379
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzl()Lcom/google/android/gms/measurement/internal/zzhp;

    move-result-object v11

    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/zziy;->zzt()V

    .line 2380
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzs()V

    .line 2381
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzgn$zzj;->zzb()Lcom/google/android/gms/internal/measurement/zzgn$zzj$zza;

    move-result-object v11

    .line 2382
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzj()Lcom/google/android/gms/measurement/internal/zzgi;

    move-result-object v12

    invoke-virtual {v12}, Lcom/google/android/gms/measurement/internal/zzgi;->zzp()Lcom/google/android/gms/measurement/internal/zzgk;

    move-result-object v12

    const-string v13, "Processing Google Signal, sgtmJoinId"

    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/zzgn$zzj;->zzd()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Lcom/google/android/gms/measurement/internal/zzgk;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2383
    invoke-virtual {v11, v3}, Lcom/google/android/gms/internal/measurement/zzgn$zzj$zza;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzgn$zzj$zza;

    .line 2384
    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/zzgn$zzj;->zzf()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_28

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/google/android/gms/internal/measurement/zzgn$zzk;

    .line 2386
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzgn$zzk;->zzw()Lcom/google/android/gms/internal/measurement/zzgn$zzk$zza;

    move-result-object v12

    .line 2387
    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/zzgn$zzk;->zzah()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/google/android/gms/internal/measurement/zzgn$zzk$zza;->zzj(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzgn$zzk$zza;

    move-result-object v12

    .line 2388
    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/zzgn$zzk;->zzd()I

    move-result v10

    invoke-virtual {v12, v10}, Lcom/google/android/gms/internal/measurement/zzgn$zzk$zza;->zzg(I)Lcom/google/android/gms/internal/measurement/zzgn$zzk$zza;

    move-result-object v10

    .line 2389
    invoke-virtual {v11, v10}, Lcom/google/android/gms/internal/measurement/zzgn$zzj$zza;->zza(Lcom/google/android/gms/internal/measurement/zzgn$zzk$zza;)Lcom/google/android/gms/internal/measurement/zzgn$zzj$zza;

    goto :goto_d

    .line 2391
    :cond_28
    invoke-virtual {v11}, Lcom/google/android/gms/internal/measurement/zzlc$zzb;->zzai()Lcom/google/android/gms/internal/measurement/zzml;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/measurement/zzlc;

    check-cast v3, Lcom/google/android/gms/internal/measurement/zzgn$zzj;

    .line 2394
    iget-object v10, v8, Lcom/google/android/gms/measurement/internal/zznv;->zzk:Lcom/google/android/gms/measurement/internal/zznq;

    .line 2396
    invoke-virtual {v10}, Lcom/google/android/gms/measurement/internal/zzno;->zzm()Lcom/google/android/gms/measurement/internal/zzhg;

    move-result-object v10

    invoke-virtual {v10, v6}, Lcom/google/android/gms/measurement/internal/zzhg;->zzf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 2397
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_29

    .line 2398
    sget-object v11, Lcom/google/android/gms/measurement/internal/zzbj;->zzr:Lcom/google/android/gms/measurement/internal/zzfz;

    const/4 v12, 0x0

    .line 2399
    invoke-virtual {v11, v12}, Lcom/google/android/gms/measurement/internal/zzfz;->zza(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    .line 2400
    check-cast v11, Ljava/lang/String;

    invoke-static {v11}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v11

    .line 2401
    invoke-virtual {v11}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v12

    .line 2402
    invoke-virtual {v11}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v11

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v13, "."

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v12, v10}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 2403
    new-instance v10, Lcom/google/android/gms/measurement/internal/zzns;

    invoke-virtual {v12}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v11

    invoke-virtual {v11}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v11

    sget-object v12, Lcom/google/android/gms/measurement/internal/zznt;->zzb:Lcom/google/android/gms/measurement/internal/zznt;

    invoke-direct {v10, v11, v12}, Lcom/google/android/gms/measurement/internal/zzns;-><init>(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zznt;)V

    const/4 v12, 0x0

    goto :goto_e

    .line 2404
    :cond_29
    new-instance v10, Lcom/google/android/gms/measurement/internal/zzns;

    sget-object v11, Lcom/google/android/gms/measurement/internal/zzbj;->zzr:Lcom/google/android/gms/measurement/internal/zzfz;

    const/4 v12, 0x0

    .line 2405
    invoke-virtual {v11, v12}, Lcom/google/android/gms/measurement/internal/zzfz;->zza(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    .line 2406
    check-cast v11, Ljava/lang/String;

    sget-object v13, Lcom/google/android/gms/measurement/internal/zznt;->zzb:Lcom/google/android/gms/measurement/internal/zznt;

    invoke-direct {v10, v11, v13}, Lcom/google/android/gms/measurement/internal/zzns;-><init>(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zznt;)V

    .line 2407
    :goto_e
    invoke-static {v3, v10}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v3

    .line 2408
    invoke-interface {v7, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_f

    :cond_2a
    const/4 v12, 0x0

    :goto_f
    move-object v3, v9

    goto :goto_10

    :cond_2b
    const/4 v12, 0x0

    .line 2410
    :goto_10
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzj()Lcom/google/android/gms/measurement/internal/zzgi;

    move-result-object v9

    const/4 v10, 0x2

    invoke-virtual {v9, v10}, Lcom/google/android/gms/measurement/internal/zzgi;->zza(I)Z

    move-result v9

    if-eqz v9, :cond_2c

    .line 2411
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzp()Lcom/google/android/gms/measurement/internal/zzol;

    move-result-object v9

    invoke-virtual {v9, v3}, Lcom/google/android/gms/measurement/internal/zzol;->zza(Lcom/google/android/gms/internal/measurement/zzgn$zzj;)Ljava/lang/String;

    move-result-object v9

    goto :goto_11

    :cond_2c
    move-object v9, v12

    .line 2412
    :goto_11
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzp()Lcom/google/android/gms/measurement/internal/zzol;

    .line 2413
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzji;->zzca()[B

    move-result-object v13
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_1

    .line 2415
    :try_start_1a
    invoke-direct {v8, v0}, Lcom/google/android/gms/measurement/internal/zznv;->zza(Ljava/util/List;)V

    .line 2417
    iget-object v0, v8, Lcom/google/android/gms/measurement/internal/zznv;->zzj:Lcom/google/android/gms/measurement/internal/zzms;

    .line 2418
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzms;->zze:Lcom/google/android/gms/measurement/internal/zzgz;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzgz;->zza(J)V

    .line 2419
    const-string v0, "?"

    if-lez v5, :cond_2d

    const/4 v1, 0x0

    .line 2421
    invoke-virtual {v4, v1}, Lcom/google/android/gms/internal/measurement/zzgn$zzj$zza;->zza(I)Lcom/google/android/gms/internal/measurement/zzgn$zzk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzgn$zzk;->zzz()Ljava/lang/String;

    move-result-object v0

    .line 2422
    :cond_2d
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzj()Lcom/google/android/gms/measurement/internal/zzgi;

    move-result-object v1

    .line 2423
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzgi;->zzp()Lcom/google/android/gms/measurement/internal/zzgk;

    move-result-object v1

    const-string v2, "Uploading data. app, uncompressed size, data"

    array-length v3, v13

    .line 2424
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v0, v3, v9}, Lcom/google/android/gms/measurement/internal/zzgk;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v0, 0x1

    .line 2425
    iput-boolean v0, v8, Lcom/google/android/gms/measurement/internal/zznv;->zzv:Z

    .line 2426
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzh()Lcom/google/android/gms/measurement/internal/zzgp;

    move-result-object v10

    new-instance v12, Ljava/net/URL;

    .line 2427
    invoke-virtual/range {v16 .. v16}, Lcom/google/android/gms/measurement/internal/zzns;->zzb()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v12, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 2428
    invoke-virtual/range {v16 .. v16}, Lcom/google/android/gms/measurement/internal/zzns;->zzc()Ljava/util/Map;

    move-result-object v14

    new-instance v15, Lcom/google/android/gms/measurement/internal/zznw;

    invoke-direct {v15, v8, v6, v7}, Lcom/google/android/gms/measurement/internal/zznw;-><init>(Lcom/google/android/gms/measurement/internal/zznv;Ljava/lang/String;Ljava/util/List;)V

    move-object v11, v6

    .line 2429
    invoke-virtual/range {v10 .. v15}, Lcom/google/android/gms/measurement/internal/zzgp;->zza(Ljava/lang/String;Ljava/net/URL;[BLjava/util/Map;Lcom/google/android/gms/measurement/internal/zzgo;)V
    :try_end_1a
    .catch Ljava/net/MalformedURLException; {:try_start_1a .. :try_end_1a} :catch_0
    .catchall {:try_start_1a .. :try_end_1a} :catchall_1

    goto :goto_12

    .line 2432
    :catch_0
    :try_start_1b
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzj()Lcom/google/android/gms/measurement/internal/zzgi;

    move-result-object v0

    .line 2433
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgi;->zzg()Lcom/google/android/gms/measurement/internal/zzgk;

    move-result-object v0

    const-string v1, "Failed to parse upload URL. Not uploading. appId"

    .line 2434
    invoke-static {v6}, Lcom/google/android/gms/measurement/internal/zzgi;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 2435
    invoke-virtual/range {v16 .. v16}, Lcom/google/android/gms/measurement/internal/zzns;->zzb()Ljava/lang/String;

    move-result-object v3

    .line 2436
    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/measurement/internal/zzgk;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_12

    .line 2438
    :cond_2e
    iput-wide v4, v8, Lcom/google/android/gms/measurement/internal/zznv;->zzab:J

    .line 2440
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzf()Lcom/google/android/gms/measurement/internal/zzam;

    move-result-object v0

    .line 2441
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zze()Lcom/google/android/gms/measurement/internal/zzah;

    invoke-static {}, Lcom/google/android/gms/measurement/internal/zzah;->zzh()J

    move-result-wide v3

    sub-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzam;->zza(J)Ljava/lang/String;

    move-result-object v0

    .line 2442
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2f

    .line 2443
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzf()Lcom/google/android/gms/measurement/internal/zzam;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/measurement/internal/zzam;->zze(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzh;

    move-result-object v0

    if-eqz v0, :cond_2f

    .line 2445
    invoke-direct {v8, v0}, Lcom/google/android/gms/measurement/internal/zznv;->zzb(Lcom/google/android/gms/measurement/internal/zzh;)V
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_1

    :cond_2f
    :goto_12
    const/4 v1, 0x0

    .line 2446
    iput-boolean v1, v8, Lcom/google/android/gms/measurement/internal/zznv;->zzw:Z

    .line 2447
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzaa()V

    return-void

    :catchall_1
    move-exception v0

    const/4 v1, 0x0

    .line 2449
    :goto_13
    iput-boolean v1, v8, Lcom/google/android/gms/measurement/internal/zznv;->zzw:Z

    .line 2450
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzaa()V

    .line 2451
    throw v0
.end method
