.class public final Lcom/google/android/gms/internal/measurement/zzfx$zzd;
.super Lcom/google/android/gms/internal/measurement/zzlc;
.source "com.google.android.gms:play-services-measurement@@22.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/measurement/zzmn;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/measurement/zzfx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "zzd"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/measurement/zzfx$zzd$zza;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/measurement/zzlc<",
        "Lcom/google/android/gms/internal/measurement/zzfx$zzd;",
        "Lcom/google/android/gms/internal/measurement/zzfx$zzd$zza;",
        ">;",
        "Lcom/google/android/gms/internal/measurement/zzmn;"
    }
.end annotation


# static fields
.field private static final zzc:Lcom/google/android/gms/internal/measurement/zzfx$zzd;

.field private static volatile zzd:Lcom/google/android/gms/internal/measurement/zzmu;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/measurement/zzmu<",
            "Lcom/google/android/gms/internal/measurement/zzfx$zzd;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private zze:I

.field private zzf:J

.field private zzg:Ljava/lang/String;

.field private zzh:I

.field private zzi:Lcom/google/android/gms/internal/measurement/zzll;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/measurement/zzll<",
            "Lcom/google/android/gms/internal/measurement/zzfx$zzh;",
            ">;"
        }
    .end annotation
.end field

.field private zzj:Lcom/google/android/gms/internal/measurement/zzll;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/measurement/zzll<",
            "Lcom/google/android/gms/internal/measurement/zzfx$zzc;",
            ">;"
        }
    .end annotation
.end field

.field private zzk:Lcom/google/android/gms/internal/measurement/zzll;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/measurement/zzll<",
            "Lcom/google/android/gms/internal/measurement/zzfn$zza;",
            ">;"
        }
    .end annotation
.end field

.field private zzl:Ljava/lang/String;

.field private zzm:Z

.field private zzn:Lcom/google/android/gms/internal/measurement/zzll;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/measurement/zzll<",
            "Lcom/google/android/gms/internal/measurement/zzhg$zzc;",
            ">;"
        }
    .end annotation
.end field

.field private zzo:Lcom/google/android/gms/internal/measurement/zzll;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/measurement/zzll<",
            "Lcom/google/android/gms/internal/measurement/zzfx$zzb;",
            ">;"
        }
    .end annotation
.end field

.field private zzp:Ljava/lang/String;

.field private zzq:Ljava/lang/String;

.field private zzr:Lcom/google/android/gms/internal/measurement/zzfx$zza;

.field private zzs:Lcom/google/android/gms/internal/measurement/zzfx$zzf;

.field private zzt:Lcom/google/android/gms/internal/measurement/zzfx$zzi;

.field private zzu:Lcom/google/android/gms/internal/measurement/zzfx$zzg;

.field private zzv:Lcom/google/android/gms/internal/measurement/zzfx$zze;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 46
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzfx$zzd;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/zzfx$zzd;-><init>()V

    .line 47
    sput-object v0, Lcom/google/android/gms/internal/measurement/zzfx$zzd;->zzc:Lcom/google/android/gms/internal/measurement/zzfx$zzd;

    .line 48
    const-class v1, Lcom/google/android/gms/internal/measurement/zzfx$zzd;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/measurement/zzlc;->zza(Ljava/lang/Class;Lcom/google/android/gms/internal/measurement/zzlc;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 50
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzlc;-><init>()V

    .line 51
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfx$zzd;->zzg:Ljava/lang/String;

    .line 52
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzfx$zzd;->zzch()Lcom/google/android/gms/internal/measurement/zzll;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/measurement/zzfx$zzd;->zzi:Lcom/google/android/gms/internal/measurement/zzll;

    .line 53
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzfx$zzd;->zzch()Lcom/google/android/gms/internal/measurement/zzll;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/measurement/zzfx$zzd;->zzj:Lcom/google/android/gms/internal/measurement/zzll;

    .line 54
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzfx$zzd;->zzch()Lcom/google/android/gms/internal/measurement/zzll;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/measurement/zzfx$zzd;->zzk:Lcom/google/android/gms/internal/measurement/zzll;

    .line 55
    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfx$zzd;->zzl:Ljava/lang/String;

    .line 56
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzfx$zzd;->zzch()Lcom/google/android/gms/internal/measurement/zzll;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/measurement/zzfx$zzd;->zzn:Lcom/google/android/gms/internal/measurement/zzll;

    .line 57
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzfx$zzd;->zzch()Lcom/google/android/gms/internal/measurement/zzll;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/measurement/zzfx$zzd;->zzo:Lcom/google/android/gms/internal/measurement/zzll;

    .line 58
    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfx$zzd;->zzp:Ljava/lang/String;

    .line 59
    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfx$zzd;->zzq:Ljava/lang/String;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/measurement/zzfx$zzd;)V
    .locals 1

    .line 35
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzfx$zzd;->zzch()Lcom/google/android/gms/internal/measurement/zzll;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfx$zzd;->zzk:Lcom/google/android/gms/internal/measurement/zzll;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/measurement/zzfx$zzd;ILcom/google/android/gms/internal/measurement/zzfx$zzc;)V
    .locals 2

    .line 38
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 40
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfx$zzd;->zzj:Lcom/google/android/gms/internal/measurement/zzll;

    .line 41
    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zzll;->zzc()Z

    move-result v1

    if-nez v1, :cond_0

    .line 43
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzlc;->zza(Lcom/google/android/gms/internal/measurement/zzll;)Lcom/google/android/gms/internal/measurement/zzll;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfx$zzd;->zzj:Lcom/google/android/gms/internal/measurement/zzll;

    .line 44
    :cond_0
    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/zzfx$zzd;->zzj:Lcom/google/android/gms/internal/measurement/zzll;

    invoke-interface {p0, p1, p2}, Lcom/google/android/gms/internal/measurement/zzll;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static zze()Lcom/google/android/gms/internal/measurement/zzfx$zzd$zza;
    .locals 1

    .line 6
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzfx$zzd;->zzc:Lcom/google/android/gms/internal/measurement/zzfx$zzd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzlc;->zzcc()Lcom/google/android/gms/internal/measurement/zzlc$zzb;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzfx$zzd$zza;

    return-object v0
.end method

.method static bridge synthetic zzf()Lcom/google/android/gms/internal/measurement/zzfx$zzd;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/measurement/zzfx$zzd;->zzc:Lcom/google/android/gms/internal/measurement/zzfx$zzd;

    return-object v0
.end method

.method public static zzg()Lcom/google/android/gms/internal/measurement/zzfx$zzd;
    .locals 1

    .line 7
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzfx$zzd;->zzc:Lcom/google/android/gms/internal/measurement/zzfx$zzd;

    return-object v0
.end method


# virtual methods
.method public final zza()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfx$zzd;->zzn:Lcom/google/android/gms/internal/measurement/zzll;

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zzll;->size()I

    move-result v0

    return v0
.end method

.method public final zza(I)Lcom/google/android/gms/internal/measurement/zzfx$zzc;
    .locals 1

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfx$zzd;->zzj:Lcom/google/android/gms/internal/measurement/zzll;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/measurement/zzll;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/measurement/zzfx$zzc;

    return-object p1
.end method

.method protected final zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 24

    .line 9
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzfw;->zza:[I

    const/4 v1, 0x1

    add-int/lit8 v2, p1, -0x1

    aget v0, v0, v2

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    .line 27
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    :pswitch_0
    return-object v2

    .line 25
    :pswitch_1
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    return-object v0

    .line 16
    :pswitch_2
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzfx$zzd;->zzd:Lcom/google/android/gms/internal/measurement/zzmu;

    if-nez v0, :cond_1

    .line 18
    const-class v1, Lcom/google/android/gms/internal/measurement/zzfx$zzd;

    monitor-enter v1

    .line 19
    :try_start_0
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzfx$zzd;->zzd:Lcom/google/android/gms/internal/measurement/zzmu;

    if-nez v0, :cond_0

    .line 21
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzlc$zza;

    sget-object v2, Lcom/google/android/gms/internal/measurement/zzfx$zzd;->zzc:Lcom/google/android/gms/internal/measurement/zzfx$zzd;

    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/measurement/zzlc$zza;-><init>(Lcom/google/android/gms/internal/measurement/zzlc;)V

    .line 22
    sput-object v0, Lcom/google/android/gms/internal/measurement/zzfx$zzd;->zzd:Lcom/google/android/gms/internal/measurement/zzmu;

    .line 23
    :cond_0
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :goto_0
    return-object v0

    .line 15
    :pswitch_3
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzfx$zzd;->zzc:Lcom/google/android/gms/internal/measurement/zzfx$zzd;

    return-object v0

    .line 12
    :pswitch_4
    const-string v1, "zze"

    const-string v2, "zzf"

    const-string v3, "zzg"

    const-string v4, "zzh"

    const-string v5, "zzi"

    const-class v6, Lcom/google/android/gms/internal/measurement/zzfx$zzh;

    const-string v7, "zzj"

    const-class v8, Lcom/google/android/gms/internal/measurement/zzfx$zzc;

    const-string v9, "zzk"

    const-class v10, Lcom/google/android/gms/internal/measurement/zzfn$zza;

    const-string v11, "zzl"

    const-string v12, "zzm"

    const-string v13, "zzn"

    const-class v14, Lcom/google/android/gms/internal/measurement/zzhg$zzc;

    const-string v15, "zzo"

    const-class v16, Lcom/google/android/gms/internal/measurement/zzfx$zzb;

    const-string v17, "zzp"

    const-string v18, "zzq"

    const-string v19, "zzr"

    const-string v20, "zzs"

    const-string v21, "zzt"

    const-string v22, "zzu"

    const-string v23, "zzv"

    filled-new-array/range {v1 .. v23}, [Ljava/lang/Object;

    move-result-object v0

    .line 13
    const-string v1, "\u0004\u0011\u0000\u0001\u0001\u0013\u0011\u0000\u0005\u0000\u0001\u1002\u0000\u0002\u1008\u0001\u0003\u1004\u0002\u0004\u001b\u0005\u001b\u0006\u001b\u0007\u1008\u0003\u0008\u1007\u0004\t\u001b\n\u001b\u000b\u1008\u0005\u000e\u1008\u0006\u000f\u1009\u0007\u0010\u1009\u0008\u0011\u1009\t\u0012\u1009\n\u0013\u1009\u000b"

    .line 14
    sget-object v2, Lcom/google/android/gms/internal/measurement/zzfx$zzd;->zzc:Lcom/google/android/gms/internal/measurement/zzfx$zzd;

    invoke-static {v2, v1, v0}, Lcom/google/android/gms/internal/measurement/zzfx$zzd;->zza(Lcom/google/android/gms/internal/measurement/zzml;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 11
    :pswitch_5
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzfx$zzd$zza;

    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/measurement/zzfx$zzd$zza;-><init>(Lcom/google/android/gms/internal/measurement/zzgg;)V

    return-object v0

    .line 10
    :pswitch_6
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzfx$zzd;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/zzfx$zzd;-><init>()V

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final zzb()I
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfx$zzd;->zzj:Lcom/google/android/gms/internal/measurement/zzll;

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zzll;->size()I

    move-result v0

    return v0
.end method

.method public final zzc()J
    .locals 2

    .line 3
    iget-wide v0, p0, Lcom/google/android/gms/internal/measurement/zzfx$zzd;->zzf:J

    return-wide v0
.end method

.method public final zzd()Lcom/google/android/gms/internal/measurement/zzfx$zza;
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfx$zzd;->zzr:Lcom/google/android/gms/internal/measurement/zzfx$zza;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzfx$zza;->zzb()Lcom/google/android/gms/internal/measurement/zzfx$zza;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public final zzh()Lcom/google/android/gms/internal/measurement/zzfx$zzi;
    .locals 1

    .line 8
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfx$zzd;->zzt:Lcom/google/android/gms/internal/measurement/zzfx$zzi;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzfx$zzi;->zzc()Lcom/google/android/gms/internal/measurement/zzfx$zzi;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public final zzi()Ljava/lang/String;
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfx$zzd;->zzg:Ljava/lang/String;

    return-object v0
.end method

.method public final zzj()Ljava/lang/String;
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfx$zzd;->zzp:Ljava/lang/String;

    return-object v0
.end method

.method public final zzk()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/measurement/zzfn$zza;",
            ">;"
        }
    .end annotation

    .line 30
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfx$zzd;->zzk:Lcom/google/android/gms/internal/measurement/zzll;

    return-object v0
.end method

.method public final zzl()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/measurement/zzfx$zzb;",
            ">;"
        }
    .end annotation

    .line 31
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfx$zzd;->zzo:Lcom/google/android/gms/internal/measurement/zzll;

    return-object v0
.end method

.method public final zzm()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/measurement/zzhg$zzc;",
            ">;"
        }
    .end annotation

    .line 32
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfx$zzd;->zzn:Lcom/google/android/gms/internal/measurement/zzll;

    return-object v0
.end method

.method public final zzn()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/measurement/zzfx$zzh;",
            ">;"
        }
    .end annotation

    .line 33
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfx$zzd;->zzi:Lcom/google/android/gms/internal/measurement/zzll;

    return-object v0
.end method

.method public final zzo()Z
    .locals 1

    .line 61
    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/zzfx$zzd;->zzm:Z

    return v0
.end method

.method public final zzp()Z
    .locals 1

    .line 62
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzfx$zzd;->zze:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final zzq()Z
    .locals 1

    .line 63
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzfx$zzd;->zze:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final zzr()Z
    .locals 1

    .line 64
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzfx$zzd;->zze:I

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final zzs()Z
    .locals 2

    .line 65
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzfx$zzd;->zze:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
