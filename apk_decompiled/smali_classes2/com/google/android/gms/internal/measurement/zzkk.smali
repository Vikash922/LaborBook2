.class final Lcom/google/android/gms/internal/measurement/zzkk;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-base@@22.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/measurement/zzna;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/measurement/zzkg;

.field private zzb:I

.field private zzc:I

.field private zzd:I


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/measurement/zzkg;)V
    .locals 1

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 77
    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzkk;->zzd:I

    .line 78
    const-string v0, "input"

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/measurement/zzle;->zza(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/measurement/zzkg;

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzkk;->zza:Lcom/google/android/gms/internal/measurement/zzkg;

    .line 79
    iput-object p0, p1, Lcom/google/android/gms/internal/measurement/zzkg;->zzc:Lcom/google/android/gms/internal/measurement/zzkk;

    return-void
.end method

.method public static zza(Lcom/google/android/gms/internal/measurement/zzkg;)Lcom/google/android/gms/internal/measurement/zzkk;
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzkg;->zzc:Lcom/google/android/gms/internal/measurement/zzkk;

    if-eqz v0, :cond_0

    .line 40
    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/zzkg;->zzc:Lcom/google/android/gms/internal/measurement/zzkk;

    return-object p0

    .line 41
    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzkk;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/measurement/zzkk;-><init>(Lcom/google/android/gms/internal/measurement/zzkg;)V

    return-object v0
.end method

.method private final zza(Lcom/google/android/gms/internal/measurement/zznd;Lcom/google/android/gms/internal/measurement/zzkp;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/internal/measurement/zznd<",
            "TT;>;",
            "Lcom/google/android/gms/internal/measurement/zzkp;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 64
    invoke-interface {p1}, Lcom/google/android/gms/internal/measurement/zznd;->zza()Ljava/lang/Object;

    move-result-object v0

    .line 65
    invoke-direct {p0, v0, p1, p2}, Lcom/google/android/gms/internal/measurement/zzkk;->zzc(Ljava/lang/Object;Lcom/google/android/gms/internal/measurement/zznd;Lcom/google/android/gms/internal/measurement/zzkp;)V

    .line 66
    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/measurement/zznd;->zzd(Ljava/lang/Object;)V

    return-object v0
.end method

.method private final zza(Lcom/google/android/gms/internal/measurement/zzof;Ljava/lang/Class;Lcom/google/android/gms/internal/measurement/zzkp;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/measurement/zzof;",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/google/android/gms/internal/measurement/zzkp;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 42
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzkj;->zza:[I

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzof;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_0

    .line 63
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "unsupported field type."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 62
    :pswitch_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzkk;->zzo()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    .line 61
    :pswitch_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzkk;->zzj()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 60
    :pswitch_2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzkk;->zzr()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 59
    :pswitch_3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzkk;->zzn()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    .line 58
    :pswitch_4
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzkk;->zzi()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 57
    :pswitch_5
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzkk;->zzm()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    .line 56
    :pswitch_6
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzkk;->zzh()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :pswitch_7
    const/4 p1, 0x2

    .line 53
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/measurement/zzkk;->zzb(I)V

    .line 54
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzmz;->zza()Lcom/google/android/gms/internal/measurement/zzmz;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/measurement/zzmz;->zza(Ljava/lang/Class;)Lcom/google/android/gms/internal/measurement/zznd;

    move-result-object p1

    invoke-direct {p0, p1, p3}, Lcom/google/android/gms/internal/measurement/zzkk;->zzb(Lcom/google/android/gms/internal/measurement/zznd;Lcom/google/android/gms/internal/measurement/zzkp;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 51
    :pswitch_8
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzkk;->zzl()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    .line 50
    :pswitch_9
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzkk;->zzg()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 49
    :pswitch_a
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzkk;->zzb()F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    return-object p1

    .line 48
    :pswitch_b
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzkk;->zzk()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    .line 47
    :pswitch_c
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzkk;->zzf()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 46
    :pswitch_d
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzkk;->zze()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 45
    :pswitch_e
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzkk;->zza()D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    return-object p1

    .line 44
    :pswitch_f
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzkk;->zzp()Lcom/google/android/gms/internal/measurement/zzjs;

    move-result-object p1

    return-object p1

    .line 43
    :pswitch_10
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzkk;->zzs()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private final zza(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 731
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzkk;->zza:Lcom/google/android/gms/internal/measurement/zzkg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzkg;->zzc()I

    move-result v0

    if-ne v0, p1, :cond_0

    return-void

    .line 732
    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzlk;->zzi()Lcom/google/android/gms/internal/measurement/zzlk;

    move-result-object p1

    throw p1
.end method

.method private final zza(Ljava/util/List;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 631
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzkk;->zzb:I

    and-int/lit8 v0, v0, 0x7

    const/4 v1, 0x2

    if-ne v0, v1, :cond_5

    .line 635
    instance-of v0, p1, Lcom/google/android/gms/internal/measurement/zzls;

    if-eqz v0, :cond_2

    if-nez p2, :cond_2

    .line 636
    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzls;

    .line 637
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzkk;->zzp()Lcom/google/android/gms/internal/measurement/zzjs;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/measurement/zzls;->zza(Lcom/google/android/gms/internal/measurement/zzjs;)V

    .line 638
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzkk;->zza:Lcom/google/android/gms/internal/measurement/zzkg;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzkg;->zzt()Z

    move-result p1

    if-eqz p1, :cond_1

    return-void

    .line 640
    :cond_1
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzkk;->zza:Lcom/google/android/gms/internal/measurement/zzkg;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzkg;->zzi()I

    move-result p1

    .line 641
    iget p2, p0, Lcom/google/android/gms/internal/measurement/zzkk;->zzb:I

    if-eq p1, p2, :cond_0

    .line 642
    iput p1, p0, Lcom/google/android/gms/internal/measurement/zzkk;->zzd:I

    return-void

    :cond_2
    if-eqz p2, :cond_3

    .line 645
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzkk;->zzr()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzkk;->zzq()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 646
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzkk;->zza:Lcom/google/android/gms/internal/measurement/zzkg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzkg;->zzt()Z

    move-result v0

    if-eqz v0, :cond_4

    return-void

    .line 648
    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzkk;->zza:Lcom/google/android/gms/internal/measurement/zzkg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzkg;->zzi()I

    move-result v0

    .line 649
    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzkk;->zzb:I

    if-eq v0, v1, :cond_2

    .line 650
    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzkk;->zzd:I

    return-void

    .line 634
    :cond_5
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzlk;->zza()Lcom/google/android/gms/internal/measurement/zzln;

    move-result-object p1

    throw p1
.end method

.method private final zzb(Lcom/google/android/gms/internal/measurement/zznd;Lcom/google/android/gms/internal/measurement/zzkp;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/internal/measurement/zznd<",
            "TT;>;",
            "Lcom/google/android/gms/internal/measurement/zzkp;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 68
    invoke-interface {p1}, Lcom/google/android/gms/internal/measurement/zznd;->zza()Ljava/lang/Object;

    move-result-object v0

    .line 69
    invoke-direct {p0, v0, p1, p2}, Lcom/google/android/gms/internal/measurement/zzkk;->zzd(Ljava/lang/Object;Lcom/google/android/gms/internal/measurement/zznd;Lcom/google/android/gms/internal/measurement/zzkp;)V

    .line 70
    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/measurement/zznd;->zzd(Ljava/lang/Object;)V

    return-object v0
.end method

.method private final zzb(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 734
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzkk;->zzb:I

    and-int/lit8 v0, v0, 0x7

    if-ne v0, p1, :cond_0

    return-void

    .line 737
    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzlk;->zza()Lcom/google/android/gms/internal/measurement/zzln;

    move-result-object p1

    throw p1
.end method

.method private static zzc(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    and-int/lit8 p0, p0, 0x3

    if-nez p0, :cond_0

    return-void

    .line 740
    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzlk;->zzg()Lcom/google/android/gms/internal/measurement/zzlk;

    move-result-object p0

    throw p0
.end method

.method private final zzc(Ljava/lang/Object;Lcom/google/android/gms/internal/measurement/zznd;Lcom/google/android/gms/internal/measurement/zzkp;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lcom/google/android/gms/internal/measurement/zznd<",
            "TT;>;",
            "Lcom/google/android/gms/internal/measurement/zzkp;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 84
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzkk;->zzc:I

    .line 85
    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzkk;->zzb:I

    ushr-int/lit8 v1, v1, 0x3

    shl-int/lit8 v1, v1, 0x3

    or-int/lit8 v1, v1, 0x4

    .line 88
    iput v1, p0, Lcom/google/android/gms/internal/measurement/zzkk;->zzc:I

    .line 89
    :try_start_0
    invoke-interface {p2, p1, p0, p3}, Lcom/google/android/gms/internal/measurement/zznd;->zza(Ljava/lang/Object;Lcom/google/android/gms/internal/measurement/zzna;Lcom/google/android/gms/internal/measurement/zzkp;)V

    .line 90
    iget p1, p0, Lcom/google/android/gms/internal/measurement/zzkk;->zzb:I

    iget p2, p0, Lcom/google/android/gms/internal/measurement/zzkk;->zzc:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne p1, p2, :cond_0

    .line 92
    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzkk;->zzc:I

    return-void

    .line 91
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzlk;->zzg()Lcom/google/android/gms/internal/measurement/zzlk;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    .line 94
    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzkk;->zzc:I

    .line 95
    throw p1
.end method

.method private static zzd(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    and-int/lit8 p0, p0, 0x7

    if-nez p0, :cond_0

    return-void

    .line 743
    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzlk;->zzg()Lcom/google/android/gms/internal/measurement/zzlk;

    move-result-object p0

    throw p0
.end method

.method private final zzd(Ljava/lang/Object;Lcom/google/android/gms/internal/measurement/zznd;Lcom/google/android/gms/internal/measurement/zzkp;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lcom/google/android/gms/internal/measurement/zznd<",
            "TT;>;",
            "Lcom/google/android/gms/internal/measurement/zzkp;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 99
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzkk;->zza:Lcom/google/android/gms/internal/measurement/zzkg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzkg;->zzj()I

    move-result v0

    .line 100
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzkk;->zza:Lcom/google/android/gms/internal/measurement/zzkg;

    iget v1, v1, Lcom/google/android/gms/internal/measurement/zzkg;->zza:I

    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/zzkk;->zza:Lcom/google/android/gms/internal/measurement/zzkg;

    iget v2, v2, Lcom/google/android/gms/internal/measurement/zzkg;->zzb:I

    if-ge v1, v2, :cond_0

    .line 102
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzkk;->zza:Lcom/google/android/gms/internal/measurement/zzkg;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/measurement/zzkg;->zza(I)I

    move-result v0

    .line 103
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzkk;->zza:Lcom/google/android/gms/internal/measurement/zzkg;

    iget v2, v1, Lcom/google/android/gms/internal/measurement/zzkg;->zza:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lcom/google/android/gms/internal/measurement/zzkg;->zza:I

    .line 104
    invoke-interface {p2, p1, p0, p3}, Lcom/google/android/gms/internal/measurement/zznd;->zza(Ljava/lang/Object;Lcom/google/android/gms/internal/measurement/zzna;Lcom/google/android/gms/internal/measurement/zzkp;)V

    .line 105
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzkk;->zza:Lcom/google/android/gms/internal/measurement/zzkg;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/measurement/zzkg;->zzb(I)V

    .line 106
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzkk;->zza:Lcom/google/android/gms/internal/measurement/zzkg;

    iget p2, p1, Lcom/google/android/gms/internal/measurement/zzkg;->zza:I

    add-int/lit8 p2, p2, -0x1

    iput p2, p1, Lcom/google/android/gms/internal/measurement/zzkg;->zza:I

    .line 107
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzkk;->zza:Lcom/google/android/gms/internal/measurement/zzkg;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/measurement/zzkg;->zzc(I)V

    return-void

    .line 101
    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzlk;->zzh()Lcom/google/android/gms/internal/measurement/zzlk;

    move-result-object p1

    throw p1
.end method


# virtual methods
.method public final zza()D
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/measurement/zzkk;->zzb(I)V

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzkk;->zza:Lcom/google/android/gms/internal/measurement/zzkg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzkg;->zza()D

    move-result-wide v0

    return-wide v0
.end method

.method public final zza(Ljava/lang/Object;Lcom/google/android/gms/internal/measurement/zznd;Lcom/google/android/gms/internal/measurement/zzkp;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lcom/google/android/gms/internal/measurement/zznd<",
            "TT;>;",
            "Lcom/google/android/gms/internal/measurement/zzkp;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x3

    .line 81
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/measurement/zzkk;->zzb(I)V

    .line 82
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/internal/measurement/zzkk;->zzc(Ljava/lang/Object;Lcom/google/android/gms/internal/measurement/zznd;Lcom/google/android/gms/internal/measurement/zzkp;)V

    return-void
.end method

.method public final zza(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 109
    instance-of v0, p1, Lcom/google/android/gms/internal/measurement/zzjq;

    const/4 v1, 0x2

    if-eqz v0, :cond_4

    .line 110
    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzjq;

    .line 111
    iget p1, p0, Lcom/google/android/gms/internal/measurement/zzkk;->zzb:I

    and-int/lit8 p1, p1, 0x7

    if-eqz p1, :cond_2

    if-ne p1, v1, :cond_1

    .line 114
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzkk;->zza:Lcom/google/android/gms/internal/measurement/zzkg;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzkg;->zzj()I

    move-result p1

    .line 115
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzkk;->zza:Lcom/google/android/gms/internal/measurement/zzkg;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzkg;->zzc()I

    move-result v1

    add-int/2addr v1, p1

    .line 116
    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzkk;->zza:Lcom/google/android/gms/internal/measurement/zzkg;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzkg;->zzu()Z

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/zzjq;->zza(Z)V

    .line 117
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzkk;->zza:Lcom/google/android/gms/internal/measurement/zzkg;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzkg;->zzc()I

    move-result p1

    if-lt p1, v1, :cond_0

    .line 118
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/measurement/zzkk;->zza(I)V

    return-void

    .line 128
    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzlk;->zza()Lcom/google/android/gms/internal/measurement/zzln;

    move-result-object p1

    throw p1

    .line 120
    :cond_2
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzkk;->zza:Lcom/google/android/gms/internal/measurement/zzkg;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzkg;->zzu()Z

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/zzjq;->zza(Z)V

    .line 121
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzkk;->zza:Lcom/google/android/gms/internal/measurement/zzkg;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzkg;->zzt()Z

    move-result p1

    if-eqz p1, :cond_3

    return-void

    .line 123
    :cond_3
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzkk;->zza:Lcom/google/android/gms/internal/measurement/zzkg;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzkg;->zzi()I

    move-result p1

    .line 124
    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzkk;->zzb:I

    if-eq p1, v1, :cond_2

    .line 125
    iput p1, p0, Lcom/google/android/gms/internal/measurement/zzkk;->zzd:I

    return-void

    .line 129
    :cond_4
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzkk;->zzb:I

    and-int/lit8 v0, v0, 0x7

    if-eqz v0, :cond_7

    if-ne v0, v1, :cond_6

    .line 132
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzkk;->zza:Lcom/google/android/gms/internal/measurement/zzkg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzkg;->zzj()I

    move-result v0

    .line 133
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzkk;->zza:Lcom/google/android/gms/internal/measurement/zzkg;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzkg;->zzc()I

    move-result v1

    add-int/2addr v1, v0

    .line 134
    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzkk;->zza:Lcom/google/android/gms/internal/measurement/zzkg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzkg;->zzu()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 135
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzkk;->zza:Lcom/google/android/gms/internal/measurement/zzkg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzkg;->zzc()I

    move-result v0

    if-lt v0, v1, :cond_5

    .line 136
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/measurement/zzkk;->zza(I)V

    return-void

    .line 146
    :cond_6
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzlk;->zza()Lcom/google/android/gms/internal/measurement/zzln;

    move-result-object p1

    throw p1

    .line 138
    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzkk;->zza:Lcom/google/android/gms/internal/measurement/zzkg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzkg;->zzu()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 139
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzkk;->zza:Lcom/google/android/gms/internal/measurement/zzkg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzkg;->zzt()Z

    move-result v0

    if-eqz v0, :cond_8

    return-void

    .line 141
    :cond_8
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzkk;->zza:Lcom/google/android/gms/internal/measurement/zzkg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzkg;->zzi()I

    move-result v0

    .line 142
    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzkk;->zzb:I

    if-eq v0, v1, :cond_7

    .line 143
    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzkk;->zzd:I

    return-void
.end method

.method public final zza(Ljava/util/List;Lcom/google/android/gms/internal/measurement/zznd;Lcom/google/android/gms/internal/measurement/zzkp;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TT;>;",
            "Lcom/google/android/gms/internal/measurement/zznd<",
            "TT;>;",
            "Lcom/google/android/gms/internal/measurement/zzkp;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 349
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzkk;->zzb:I

    and-int/lit8 v1, v0, 0x7

    const/4 v2, 0x3

    if-ne v1, v2, :cond_3

    .line 354
    :cond_0
    invoke-direct {p0, p2, p3}, Lcom/google/android/gms/internal/measurement/zzkk;->zza(Lcom/google/android/gms/internal/measurement/zznd;Lcom/google/android/gms/internal/measurement/zzkp;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 355
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzkk;->zza:Lcom/google/android/gms/internal/measurement/zzkg;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzkg;->zzt()Z

    move-result v1

    if-nez v1, :cond_2

    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzkk;->zzd:I

    if-eqz v1, :cond_1

    goto :goto_0

    .line 357
    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzkk;->zza:Lcom/google/android/gms/internal/measurement/zzkg;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzkg;->zzi()I

    move-result v1

    if-eq v1, v0, :cond_0

    .line 359
    iput v1, p0, Lcom/google/android/gms/internal/measurement/zzkk;->zzd:I

    :cond_2
    :goto_0
    return-void

    .line 352
    :cond_3
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzlk;->zza()Lcom/google/android/gms/internal/measurement/zzln;

    move-result-object p1

    throw p1
.end method

.method public final zza(Ljava/util/Map;Lcom/google/android/gms/internal/measurement/zzmc;Lcom/google/android/gms/internal/measurement/zzkp;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "TK;TV;>;",
            "Lcom/google/android/gms/internal/measurement/zzmc<",
            "TK;TV;>;",
            "Lcom/google/android/gms/internal/measurement/zzkp;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x2

    .line 438
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/measurement/zzkk;->zzb(I)V

    .line 439
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzkk;->zza:Lcom/google/android/gms/internal/measurement/zzkg;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzkg;->zzj()I

    move-result v1

    .line 440
    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/zzkk;->zza:Lcom/google/android/gms/internal/measurement/zzkg;

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/measurement/zzkg;->zza(I)I

    move-result v1

    .line 441
    iget-object v2, p2, Lcom/google/android/gms/internal/measurement/zzmc;->zzb:Ljava/lang/Object;

    .line 442
    iget-object v3, p2, Lcom/google/android/gms/internal/measurement/zzmc;->zzd:Ljava/lang/Object;

    .line 443
    :goto_0
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzkk;->zzc()I

    move-result v4

    const v5, 0x7fffffff

    if-eq v4, v5, :cond_4

    .line 444
    iget-object v5, p0, Lcom/google/android/gms/internal/measurement/zzkk;->zza:Lcom/google/android/gms/internal/measurement/zzkg;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzkg;->zzt()Z

    move-result v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v5, :cond_4

    const/4 v5, 0x1

    .line 445
    const-string v6, "Unable to parse map entry."

    if-eq v4, v5, :cond_2

    if-eq v4, v0, :cond_1

    .line 452
    :try_start_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzkk;->zzt()Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_0

    .line 453
    :cond_0
    new-instance v4, Lcom/google/android/gms/internal/measurement/zzlk;

    invoke-direct {v4, v6}, Lcom/google/android/gms/internal/measurement/zzlk;-><init>(Ljava/lang/String;)V

    throw v4

    .line 448
    :cond_1
    iget-object v4, p2, Lcom/google/android/gms/internal/measurement/zzmc;->zzc:Lcom/google/android/gms/internal/measurement/zzof;

    iget-object v5, p2, Lcom/google/android/gms/internal/measurement/zzmc;->zzd:Ljava/lang/Object;

    .line 449
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    .line 450
    invoke-direct {p0, v4, v5, p3}, Lcom/google/android/gms/internal/measurement/zzkk;->zza(Lcom/google/android/gms/internal/measurement/zzof;Ljava/lang/Class;Lcom/google/android/gms/internal/measurement/zzkp;)Ljava/lang/Object;

    move-result-object v3

    goto :goto_0

    .line 446
    :cond_2
    iget-object v4, p2, Lcom/google/android/gms/internal/measurement/zzmc;->zza:Lcom/google/android/gms/internal/measurement/zzof;

    const/4 v5, 0x0

    invoke-direct {p0, v4, v5, v5}, Lcom/google/android/gms/internal/measurement/zzkk;->zza(Lcom/google/android/gms/internal/measurement/zzof;Ljava/lang/Class;Lcom/google/android/gms/internal/measurement/zzkp;)Ljava/lang/Object;

    move-result-object v2
    :try_end_1
    .catch Lcom/google/android/gms/internal/measurement/zzln; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 456
    :catch_0
    :try_start_2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzkk;->zzt()Z

    move-result v4

    if-eqz v4, :cond_3

    goto :goto_0

    .line 457
    :cond_3
    new-instance p1, Lcom/google/android/gms/internal/measurement/zzlk;

    invoke-direct {p1, v6}, Lcom/google/android/gms/internal/measurement/zzlk;-><init>(Ljava/lang/String;)V

    throw p1

    .line 459
    :cond_4
    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 460
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzkk;->zza:Lcom/google/android/gms/internal/measurement/zzkg;

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/measurement/zzkg;->zzc(I)V

    return-void

    :catchall_0
    move-exception p1

    .line 462
    iget-object p2, p0, Lcom/google/android/gms/internal/measurement/zzkk;->zza:Lcom/google/android/gms/internal/measurement/zzkg;

    invoke-virtual {p2, v1}, Lcom/google/android/gms/internal/measurement/zzkg;->zzc(I)V

    .line 463
    throw p1
.end method

.method public final zzb()F
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x5

    .line 3
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/measurement/zzkk;->zzb(I)V

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzkk;->zza:Lcom/google/android/gms/internal/measurement/zzkg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzkg;->zzb()F

    move-result v0

    return v0
.end method

.method public final zzb(Ljava/lang/Object;Lcom/google/android/gms/internal/measurement/zznd;Lcom/google/android/gms/internal/measurement/zzkp;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lcom/google/android/gms/internal/measurement/zznd<",
            "TT;>;",
            "Lcom/google/android/gms/internal/measurement/zzkp;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x2

    .line 96
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/measurement/zzkk;->zzb(I)V

    .line 97
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/internal/measurement/zzkk;->zzd(Ljava/lang/Object;Lcom/google/android/gms/internal/measurement/zznd;Lcom/google/android/gms/internal/measurement/zzkp;)V

    return-void
.end method

.method public final zzb(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/measurement/zzjs;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 147
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzkk;->zzb:I

    and-int/lit8 v0, v0, 0x7

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 151
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzkk;->zzp()Lcom/google/android/gms/internal/measurement/zzjs;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 152
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzkk;->zza:Lcom/google/android/gms/internal/measurement/zzkg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzkg;->zzt()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 154
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzkk;->zza:Lcom/google/android/gms/internal/measurement/zzkg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzkg;->zzi()I

    move-result v0

    .line 155
    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzkk;->zzb:I

    if-eq v0, v1, :cond_0

    .line 156
    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzkk;->zzd:I

    return-void

    .line 150
    :cond_2
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzlk;->zza()Lcom/google/android/gms/internal/measurement/zzln;

    move-result-object p1

    throw p1
.end method

.method public final zzb(Ljava/util/List;Lcom/google/android/gms/internal/measurement/zznd;Lcom/google/android/gms/internal/measurement/zzkp;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TT;>;",
            "Lcom/google/android/gms/internal/measurement/zznd<",
            "TT;>;",
            "Lcom/google/android/gms/internal/measurement/zzkp;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 464
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzkk;->zzb:I

    and-int/lit8 v1, v0, 0x7

    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    .line 469
    :cond_0
    invoke-direct {p0, p2, p3}, Lcom/google/android/gms/internal/measurement/zzkk;->zzb(Lcom/google/android/gms/internal/measurement/zznd;Lcom/google/android/gms/internal/measurement/zzkp;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 470
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzkk;->zza:Lcom/google/android/gms/internal/measurement/zzkg;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzkg;->zzt()Z

    move-result v1

    if-nez v1, :cond_2

    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzkk;->zzd:I

    if-eqz v1, :cond_1

    goto :goto_0

    .line 472
    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzkk;->zza:Lcom/google/android/gms/internal/measurement/zzkg;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzkg;->zzi()I

    move-result v1

    if-eq v1, v0, :cond_0

    .line 474
    iput v1, p0, Lcom/google/android/gms/internal/measurement/zzkk;->zzd:I

    :cond_2
    :goto_0
    return-void

    .line 467
    :cond_3
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzlk;->zza()Lcom/google/android/gms/internal/measurement/zzln;

    move-result-object p1

    throw p1
.end method

.method public final zzc()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzkk;->zzd:I

    if-eqz v0, :cond_0

    .line 6
    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzkk;->zzb:I

    const/4 v0, 0x0

    .line 7
    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzkk;->zzd:I

    goto :goto_0

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzkk;->zza:Lcom/google/android/gms/internal/measurement/zzkg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzkg;->zzi()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzkk;->zzb:I

    .line 9
    :goto_0
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzkk;->zzb:I

    if-eqz v0, :cond_2

    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzkk;->zzc:I

    if-ne v0, v1, :cond_1

    goto :goto_1

    :cond_1
    ushr-int/lit8 v0, v0, 0x3

    return v0

    :cond_2
    :goto_1
    const v0, 0x7fffffff

    return v0
.end method

.method public final zzc(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Double;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 159
    instance-of v0, p1, Lcom/google/android/gms/internal/measurement/zzkn;

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eqz v0, :cond_4

    .line 160
    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzkn;

    .line 161
    iget p1, p0, Lcom/google/android/gms/internal/measurement/zzkk;->zzb:I

    and-int/lit8 p1, p1, 0x7

    if-eq p1, v2, :cond_2

    if-ne p1, v1, :cond_1

    .line 164
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzkk;->zza:Lcom/google/android/gms/internal/measurement/zzkg;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzkg;->zzj()I

    move-result p1

    .line 165
    invoke-static {p1}, Lcom/google/android/gms/internal/measurement/zzkk;->zzd(I)V

    .line 166
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzkk;->zza:Lcom/google/android/gms/internal/measurement/zzkg;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzkg;->zzc()I

    move-result v1

    add-int/2addr v1, p1

    .line 167
    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzkk;->zza:Lcom/google/android/gms/internal/measurement/zzkg;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzkg;->zza()D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/measurement/zzkn;->zza(D)V

    .line 168
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzkk;->zza:Lcom/google/android/gms/internal/measurement/zzkg;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzkg;->zzc()I

    move-result p1

    if-lt p1, v1, :cond_0

    return-void

    .line 178
    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzlk;->zza()Lcom/google/android/gms/internal/measurement/zzln;

    move-result-object p1

    throw p1

    .line 170
    :cond_2
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzkk;->zza:Lcom/google/android/gms/internal/measurement/zzkg;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzkg;->zza()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/measurement/zzkn;->zza(D)V

    .line 171
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzkk;->zza:Lcom/google/android/gms/internal/measurement/zzkg;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzkg;->zzt()Z

    move-result p1

    if-eqz p1, :cond_3

    return-void

    .line 173
    :cond_3
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzkk;->zza:Lcom/google/android/gms/internal/measurement/zzkg;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzkg;->zzi()I

    move-result p1

    .line 174
    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzkk;->zzb:I

    if-eq p1, v1, :cond_2

    .line 175
    iput p1, p0, Lcom/google/android/gms/internal/measurement/zzkk;->zzd:I

    return-void

    .line 179
    :cond_4
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzkk;->zzb:I

    and-int/lit8 v0, v0, 0x7

    if-eq v0, v2, :cond_7

    if-ne v0, v1, :cond_6

    .line 182
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzkk;->zza:Lcom/google/android/gms/internal/measurement/zzkg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzkg;->zzj()I

    move-result v0

    .line 183
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzkk;->zzd(I)V

    .line 184
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzkk;->zza:Lcom/google/android/gms/internal/measurement/zzkg;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzkg;->zzc()I

    move-result v1

    add-int/2addr v1, v0

    .line 185
    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzkk;->zza:Lcom/google/android/gms/internal/measurement/zzkg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzkg;->zza()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 186
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzkk;->zza:Lcom/google/android/gms/internal/measurement/zzkg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzkg;->zzc()I

    move-result v0

    if-lt v0, v1, :cond_5

    return-void

    .line 196
    :cond_6
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzlk;->zza()Lcom/google/android/gms/internal/measurement/zzln;

    move-result-object p1

    throw p1

    .line 188
    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzkk;->zza:Lcom/google/android/gms/internal/measurement/zzkg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzkg;->zza()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 189
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzkk;->zza:Lcom/google/android/gms/internal/measurement/zzkg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzkg;->zzt()Z

    move-result v0

    if-eqz v0, :cond_8

    return-void

    .line 191
    :cond_8
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzkk;->zza:Lcom/google/android/gms/internal/measurement/zzkg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzkg;->zzi()I

    move-result v0

    .line 192
    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzkk;->zzb:I

    if-eq v0, v1, :cond_7

    .line 193
    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzkk;->zzd:I

    return-void
.end method

.method public final zzd()I
    .locals 1

    .line 14
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzkk;->zzb:I

    return v0
.end method

.method public final zzd(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 197
    instance-of v0, p1, Lcom/google/android/gms/internal/measurement/zzlf;

    const/4 v1, 0x2

    if-eqz v0, :cond_4

    .line 198
    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzlf;

    .line 199
    iget p1, p0, Lcom/google/android/gms/internal/measurement/zzkk;->zzb:I

    and-int/lit8 p1, p1, 0x7

    if-eqz p1, :cond_2

    if-ne p1, v1, :cond_1

    .line 202
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzkk;->zza:Lcom/google/android/gms/internal/measurement/zzkg;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzkg;->zzj()I

    move-result p1

    .line 203
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzkk;->zza:Lcom/google/android/gms/internal/measurement/zzkg;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzkg;->zzc()I

    move-result v1

    add-int/2addr v1, p1

    .line 204
    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzkk;->zza:Lcom/google/android/gms/internal/measurement/zzkg;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzkg;->zzd()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/zzlf;->zzd(I)V

    .line 205
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzkk;->zza:Lcom/google/android/gms/internal/measurement/zzkg;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzkg;->zzc()I

    move-result p1

    if-lt p1, v1, :cond_0

    .line 206
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/measurement/zzkk;->zza(I)V

    return-void

    .line 216
    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzlk;->zza()Lcom/google/android/gms/internal/measurement/zzln;

    move-result-object p1

    throw p1

    .line 208
    :cond_2
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzkk;->zza:Lcom/google/android/gms/internal/measurement/zzkg;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzkg;->zzd()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/zzlf;->zzd(I)V

    .line 209
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzkk;->zza:Lcom/google/android/gms/internal/measurement/zzkg;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzkg;->zzt()Z

    move-result p1

    if-eqz p1, :cond_3

    return-void

    .line 211
    :cond_3
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzkk;->zza:Lcom/google/android/gms/internal/measurement/zzkg;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzkg;->zzi()I

    move-result p1

    .line 212
    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzkk;->zzb:I

    if-eq p1, v1, :cond_2

    .line 213
    iput p1, p0, Lcom/google/android/gms/internal/measurement/zzkk;->zzd:I

    return-void

    .line 217
    :cond_4
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzkk;->zzb:I

    and-int/lit8 v0, v0, 0x7

    if-eqz v0, :cond_7

    if-ne v0, v1, :cond_6

    .line 220
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzkk;->zza:Lcom/google/android/gms/internal/measurement/zzkg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzkg;->zzj()I

    move-result v0

    .line 221
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzkk;->zza:Lcom/google/android/gms/internal/measurement/zzkg;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzkg;->zzc()I

    move-result v1

    add-int/2addr v1, v0

    .line 222
    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzkk;->zza:Lcom/google/android/gms/internal/measurement/zzkg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzkg;->zzd()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 223
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzkk;->zza:Lcom/google/android/gms/internal/measurement/zzkg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzkg;->zzc()I

    move-result v0

    if-lt v0, v1, :cond_5

    .line 224
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/measurement/zzkk;->zza(I)V

    return-void

    .line 234
    :cond_6
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzlk;->zza()Lcom/google/android/gms/internal/measurement/zzln;

    move-result-object p1

    throw p1

    .line 226
    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzkk;->zza:Lcom/google/android/gms/internal/measurement/zzkg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzkg;->zzd()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 227
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzkk;->zza:Lcom/google/android/gms/internal/measurement/zzkg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzkg;->zzt()Z

    move-result v0

    if-eqz v0, :cond_8

    return-void

    .line 229
    :cond_8
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzkk;->zza:Lcom/google/android/gms/internal/measurement/zzkg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzkg;->zzi()I

    move-result v0

    .line 230
    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzkk;->zzb:I

    if-eq v0, v1, :cond_7

    .line 231
    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzkk;->zzd:I

    return-void
.end method

.method public final zze()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 15
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/measurement/zzkk;->zzb(I)V

    .line 16
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzkk;->zza:Lcom/google/android/gms/internal/measurement/zzkg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzkg;->zzd()I

    move-result v0

    return v0
.end method

.method public final zze(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 235
    instance-of v0, p1, Lcom/google/android/gms/internal/measurement/zzlf;

    const/4 v1, 0x5

    const/4 v2, 0x2

    if-eqz v0, :cond_5

    .line 236
    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzlf;

    .line 237
    iget p1, p0, Lcom/google/android/gms/internal/measurement/zzkk;->zzb:I

    and-int/lit8 p1, p1, 0x7

    if-eq p1, v2, :cond_3

    if-ne p1, v1, :cond_2

    .line 246
    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzkk;->zza:Lcom/google/android/gms/internal/measurement/zzkg;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzkg;->zze()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/zzlf;->zzd(I)V

    .line 247
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzkk;->zza:Lcom/google/android/gms/internal/measurement/zzkg;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzkg;->zzt()Z

    move-result p1

    if-eqz p1, :cond_1

    return-void

    .line 249
    :cond_1
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzkk;->zza:Lcom/google/android/gms/internal/measurement/zzkg;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzkg;->zzi()I

    move-result p1

    .line 250
    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzkk;->zzb:I

    if-eq p1, v1, :cond_0

    .line 251
    iput p1, p0, Lcom/google/android/gms/internal/measurement/zzkk;->zzd:I

    return-void

    .line 254
    :cond_2
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzlk;->zza()Lcom/google/android/gms/internal/measurement/zzln;

    move-result-object p1

    throw p1

    .line 240
    :cond_3
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzkk;->zza:Lcom/google/android/gms/internal/measurement/zzkg;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzkg;->zzj()I

    move-result p1

    .line 241
    invoke-static {p1}, Lcom/google/android/gms/internal/measurement/zzkk;->zzc(I)V

    .line 242
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzkk;->zza:Lcom/google/android/gms/internal/measurement/zzkg;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzkg;->zzc()I

    move-result v1

    add-int v3, v1, p1

    .line 243
    :cond_4
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzkk;->zza:Lcom/google/android/gms/internal/measurement/zzkg;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzkg;->zze()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/zzlf;->zzd(I)V

    .line 244
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzkk;->zza:Lcom/google/android/gms/internal/measurement/zzkg;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzkg;->zzc()I

    move-result p1

    if-lt p1, v3, :cond_4

    return-void

    .line 255
    :cond_5
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzkk;->zzb:I

    and-int/lit8 v0, v0, 0x7

    if-eq v0, v2, :cond_9

    if-ne v0, v1, :cond_8

    .line 264
    :cond_6
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzkk;->zza:Lcom/google/android/gms/internal/measurement/zzkg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzkg;->zze()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 265
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzkk;->zza:Lcom/google/android/gms/internal/measurement/zzkg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzkg;->zzt()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 267
    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzkk;->zza:Lcom/google/android/gms/internal/measurement/zzkg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzkg;->zzi()I

    move-result v0

    .line 268
    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzkk;->zzb:I

    if-eq v0, v1, :cond_6

    .line 269
    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzkk;->zzd:I

    return-void

    .line 272
    :cond_8
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzlk;->zza()Lcom/google/android/gms/internal/measurement/zzln;

    move-result-object p1

    throw p1

    .line 258
    :cond_9
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzkk;->zza:Lcom/google/android/gms/internal/measurement/zzkg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzkg;->zzj()I

    move-result v0

    .line 259
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzkk;->zzc(I)V

    .line 260
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzkk;->zza:Lcom/google/android/gms/internal/measurement/zzkg;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzkg;->zzc()I

    move-result v1

    add-int/2addr v1, v0

    .line 261
    :cond_a
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzkk;->zza:Lcom/google/android/gms/internal/measurement/zzkg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzkg;->zze()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 262
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzkk;->zza:Lcom/google/android/gms/internal/measurement/zzkg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzkg;->zzc()I

    move-result v0

    if-lt v0, v1, :cond_a

    return-void
.end method

.method public final zzf()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x5

    .line 17
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/measurement/zzkk;->zzb(I)V

    .line 18
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzkk;->zza:Lcom/google/android/gms/internal/measurement/zzkg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzkg;->zze()I

    move-result v0

    return v0
.end method

.method public final zzf(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 273
    instance-of v0, p1, Lcom/google/android/gms/internal/measurement/zzlw;

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eqz v0, :cond_4

    .line 274
    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzlw;

    .line 275
    iget p1, p0, Lcom/google/android/gms/internal/measurement/zzkk;->zzb:I

    and-int/lit8 p1, p1, 0x7

    if-eq p1, v2, :cond_2

    if-ne p1, v1, :cond_1

    .line 278
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzkk;->zza:Lcom/google/android/gms/internal/measurement/zzkg;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzkg;->zzj()I

    move-result p1

    .line 279
    invoke-static {p1}, Lcom/google/android/gms/internal/measurement/zzkk;->zzd(I)V

    .line 280
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzkk;->zza:Lcom/google/android/gms/internal/measurement/zzkg;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzkg;->zzc()I

    move-result v1

    add-int/2addr v1, p1

    .line 281
    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzkk;->zza:Lcom/google/android/gms/internal/measurement/zzkg;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzkg;->zzk()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/measurement/zzlw;->zza(J)V

    .line 282
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzkk;->zza:Lcom/google/android/gms/internal/measurement/zzkg;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzkg;->zzc()I

    move-result p1

    if-lt p1, v1, :cond_0

    return-void

    .line 292
    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzlk;->zza()Lcom/google/android/gms/internal/measurement/zzln;

    move-result-object p1

    throw p1

    .line 284
    :cond_2
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzkk;->zza:Lcom/google/android/gms/internal/measurement/zzkg;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzkg;->zzk()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/measurement/zzlw;->zza(J)V

    .line 285
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzkk;->zza:Lcom/google/android/gms/internal/measurement/zzkg;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzkg;->zzt()Z

    move-result p1

    if-eqz p1, :cond_3

    return-void

    .line 287
    :cond_3
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzkk;->zza:Lcom/google/android/gms/internal/measurement/zzkg;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzkg;->zzi()I

    move-result p1

    .line 288
    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzkk;->zzb:I

    if-eq p1, v1, :cond_2

    .line 289
    iput p1, p0, Lcom/google/android/gms/internal/measurement/zzkk;->zzd:I

    return-void

    .line 293
    :cond_4
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzkk;->zzb:I

    and-int/lit8 v0, v0, 0x7

    if-eq v0, v2, :cond_7

    if-ne v0, v1, :cond_6

    .line 296
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzkk;->zza:Lcom/google/android/gms/internal/measurement/zzkg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzkg;->zzj()I

    move-result v0

    .line 297
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzkk;->zzd(I)V

    .line 298
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzkk;->zza:Lcom/google/android/gms/internal/measurement/zzkg;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzkg;->zzc()I

    move-result v1

    add-int/2addr v1, v0

    .line 299
    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzkk;->zza:Lcom/google/android/gms/internal/measurement/zzkg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzkg;->zzk()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 300
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzkk;->zza:Lcom/google/android/gms/internal/measurement/zzkg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzkg;->zzc()I

    move-result v0

    if-lt v0, v1, :cond_5

    return-void

    .line 310
    :cond_6
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzlk;->zza()Lcom/google/android/gms/internal/measurement/zzln;

    move-result-object p1

    throw p1

    .line 302
    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzkk;->zza:Lcom/google/android/gms/internal/measurement/zzkg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzkg;->zzk()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 303
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzkk;->zza:Lcom/google/android/gms/internal/measurement/zzkg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzkg;->zzt()Z

    move-result v0

    if-eqz v0, :cond_8

    return-void

    .line 305
    :cond_8
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzkk;->zza:Lcom/google/android/gms/internal/measurement/zzkg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzkg;->zzi()I

    move-result v0

    .line 306
    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzkk;->zzb:I

    if-eq v0, v1, :cond_7

    .line 307
    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzkk;->zzd:I

    return-void
.end method

.method public final zzg()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 19
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/measurement/zzkk;->zzb(I)V

    .line 20
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzkk;->zza:Lcom/google/android/gms/internal/measurement/zzkg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzkg;->zzf()I

    move-result v0

    return v0
.end method

.method public final zzg(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 311
    instance-of v0, p1, Lcom/google/android/gms/internal/measurement/zzlb;

    const/4 v1, 0x5

    const/4 v2, 0x2

    if-eqz v0, :cond_5

    .line 312
    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzlb;

    .line 313
    iget p1, p0, Lcom/google/android/gms/internal/measurement/zzkk;->zzb:I

    and-int/lit8 p1, p1, 0x7

    if-eq p1, v2, :cond_3

    if-ne p1, v1, :cond_2

    .line 322
    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzkk;->zza:Lcom/google/android/gms/internal/measurement/zzkg;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzkg;->zzb()F

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/zzlb;->zza(F)V

    .line 323
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzkk;->zza:Lcom/google/android/gms/internal/measurement/zzkg;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzkg;->zzt()Z

    move-result p1

    if-eqz p1, :cond_1

    return-void

    .line 325
    :cond_1
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzkk;->zza:Lcom/google/android/gms/internal/measurement/zzkg;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzkg;->zzi()I

    move-result p1

    .line 326
    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzkk;->zzb:I

    if-eq p1, v1, :cond_0

    .line 327
    iput p1, p0, Lcom/google/android/gms/internal/measurement/zzkk;->zzd:I

    return-void

    .line 330
    :cond_2
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzlk;->zza()Lcom/google/android/gms/internal/measurement/zzln;

    move-result-object p1

    throw p1

    .line 316
    :cond_3
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzkk;->zza:Lcom/google/android/gms/internal/measurement/zzkg;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzkg;->zzj()I

    move-result p1

    .line 317
    invoke-static {p1}, Lcom/google/android/gms/internal/measurement/zzkk;->zzc(I)V

    .line 318
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzkk;->zza:Lcom/google/android/gms/internal/measurement/zzkg;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzkg;->zzc()I

    move-result v1

    add-int v3, v1, p1

    .line 319
    :cond_4
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzkk;->zza:Lcom/google/android/gms/internal/measurement/zzkg;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzkg;->zzb()F

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/zzlb;->zza(F)V

    .line 320
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzkk;->zza:Lcom/google/android/gms/internal/measurement/zzkg;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzkg;->zzc()I

    move-result p1

    if-lt p1, v3, :cond_4

    return-void

    .line 331
    :cond_5
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzkk;->zzb:I

    and-int/lit8 v0, v0, 0x7

    if-eq v0, v2, :cond_9

    if-ne v0, v1, :cond_8

    .line 340
    :cond_6
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzkk;->zza:Lcom/google/android/gms/internal/measurement/zzkg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzkg;->zzb()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 341
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzkk;->zza:Lcom/google/android/gms/internal/measurement/zzkg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzkg;->zzt()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 343
    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzkk;->zza:Lcom/google/android/gms/internal/measurement/zzkg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzkg;->zzi()I

    move-result v0

    .line 344
    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzkk;->zzb:I

    if-eq v0, v1, :cond_6

    .line 345
    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzkk;->zzd:I

    return-void

    .line 348
    :cond_8
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzlk;->zza()Lcom/google/android/gms/internal/measurement/zzln;

    move-result-object p1

    throw p1

    .line 334
    :cond_9
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzkk;->zza:Lcom/google/android/gms/internal/measurement/zzkg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzkg;->zzj()I

    move-result v0

    .line 335
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzkk;->zzc(I)V

    .line 336
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzkk;->zza:Lcom/google/android/gms/internal/measurement/zzkg;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzkg;->zzc()I

    move-result v1

    add-int/2addr v1, v0

    .line 337
    :cond_a
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzkk;->zza:Lcom/google/android/gms/internal/measurement/zzkg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzkg;->zzb()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 338
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzkk;->zza:Lcom/google/android/gms/internal/measurement/zzkg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzkg;->zzc()I

    move-result v0

    if-lt v0, v1, :cond_a

    return-void
.end method

.method public final zzh()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x5

    .line 21
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/measurement/zzkk;->zzb(I)V

    .line 22
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzkk;->zza:Lcom/google/android/gms/internal/measurement/zzkg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzkg;->zzg()I

    move-result v0

    return v0
.end method

.method public final zzh(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 362
    instance-of v0, p1, Lcom/google/android/gms/internal/measurement/zzlf;

    const/4 v1, 0x2

    if-eqz v0, :cond_4

    .line 363
    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzlf;

    .line 364
    iget p1, p0, Lcom/google/android/gms/internal/measurement/zzkk;->zzb:I

    and-int/lit8 p1, p1, 0x7

    if-eqz p1, :cond_2

    if-ne p1, v1, :cond_1

    .line 367
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzkk;->zza:Lcom/google/android/gms/internal/measurement/zzkg;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzkg;->zzj()I

    move-result p1

    .line 368
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzkk;->zza:Lcom/google/android/gms/internal/measurement/zzkg;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzkg;->zzc()I

    move-result v1

    add-int/2addr v1, p1

    .line 369
    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzkk;->zza:Lcom/google/android/gms/internal/measurement/zzkg;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzkg;->zzf()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/zzlf;->zzd(I)V

    .line 370
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzkk;->zza:Lcom/google/android/gms/internal/measurement/zzkg;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzkg;->zzc()I

    move-result p1

    if-lt p1, v1, :cond_0

    .line 371
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/measurement/zzkk;->zza(I)V

    return-void

    .line 381
    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzlk;->zza()Lcom/google/android/gms/internal/measurement/zzln;

    move-result-object p1

    throw p1

    .line 373
    :cond_2
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzkk;->zza:Lcom/google/android/gms/internal/measurement/zzkg;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzkg;->zzf()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/zzlf;->zzd(I)V

    .line 374
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzkk;->zza:Lcom/google/android/gms/internal/measurement/zzkg;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzkg;->zzt()Z

    move-result p1

    if-eqz p1, :cond_3

    return-void

    .line 376
    :cond_3
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzkk;->zza:Lcom/google/android/gms/internal/measurement/zzkg;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzkg;->zzi()I

    move-result p1

    .line 377
    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzkk;->zzb:I

    if-eq p1, v1, :cond_2

    .line 378
    iput p1, p0, Lcom/google/android/gms/internal/measurement/zzkk;->zzd:I

    return-void

    .line 382
    :cond_4
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzkk;->zzb:I

    and-int/lit8 v0, v0, 0x7

    if-eqz v0, :cond_7

    if-ne v0, v1, :cond_6

    .line 385
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzkk;->zza:Lcom/google/android/gms/internal/measurement/zzkg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzkg;->zzj()I

    move-result v0

    .line 386
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzkk;->zza:Lcom/google/android/gms/internal/measurement/zzkg;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzkg;->zzc()I

    move-result v1

    add-int/2addr v1, v0

    .line 387
    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzkk;->zza:Lcom/google/android/gms/internal/measurement/zzkg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzkg;->zzf()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 388
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzkk;->zza:Lcom/google/android/gms/internal/measurement/zzkg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzkg;->zzc()I

    move-result v0

    if-lt v0, v1, :cond_5

    .line 389
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/measurement/zzkk;->zza(I)V

    return-void

    .line 399
    :cond_6
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzlk;->zza()Lcom/google/android/gms/internal/measurement/zzln;

    move-result-object p1

    throw p1

    .line 391
    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzkk;->zza:Lcom/google/android/gms/internal/measurement/zzkg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzkg;->zzf()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 392
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzkk;->zza:Lcom/google/android/gms/internal/measurement/zzkg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzkg;->zzt()Z

    move-result v0

    if-eqz v0, :cond_8

    return-void

    .line 394
    :cond_8
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzkk;->zza:Lcom/google/android/gms/internal/measurement/zzkg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzkg;->zzi()I

    move-result v0

    .line 395
    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzkk;->zzb:I

    if-eq v0, v1, :cond_7

    .line 396
    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzkk;->zzd:I

    return-void
.end method

.method public final zzi()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 23
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/measurement/zzkk;->zzb(I)V

    .line 24
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzkk;->zza:Lcom/google/android/gms/internal/measurement/zzkg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzkg;->zzh()I

    move-result v0

    return v0
.end method

.method public final zzi(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 400
    instance-of v0, p1, Lcom/google/android/gms/internal/measurement/zzlw;

    const/4 v1, 0x2

    if-eqz v0, :cond_4

    .line 401
    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzlw;

    .line 402
    iget p1, p0, Lcom/google/android/gms/internal/measurement/zzkk;->zzb:I

    and-int/lit8 p1, p1, 0x7

    if-eqz p1, :cond_2

    if-ne p1, v1, :cond_1

    .line 405
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzkk;->zza:Lcom/google/android/gms/internal/measurement/zzkg;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzkg;->zzj()I

    move-result p1

    .line 406
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzkk;->zza:Lcom/google/android/gms/internal/measurement/zzkg;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzkg;->zzc()I

    move-result v1

    add-int/2addr v1, p1

    .line 407
    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzkk;->zza:Lcom/google/android/gms/internal/measurement/zzkg;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzkg;->zzl()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/measurement/zzlw;->zza(J)V

    .line 408
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzkk;->zza:Lcom/google/android/gms/internal/measurement/zzkg;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzkg;->zzc()I

    move-result p1

    if-lt p1, v1, :cond_0

    .line 409
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/measurement/zzkk;->zza(I)V

    return-void

    .line 419
    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzlk;->zza()Lcom/google/android/gms/internal/measurement/zzln;

    move-result-object p1

    throw p1

    .line 411
    :cond_2
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzkk;->zza:Lcom/google/android/gms/internal/measurement/zzkg;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzkg;->zzl()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/measurement/zzlw;->zza(J)V

    .line 412
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzkk;->zza:Lcom/google/android/gms/internal/measurement/zzkg;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzkg;->zzt()Z

    move-result p1

    if-eqz p1, :cond_3

    return-void

    .line 414
    :cond_3
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzkk;->zza:Lcom/google/android/gms/internal/measurement/zzkg;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzkg;->zzi()I

    move-result p1

    .line 415
    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzkk;->zzb:I

    if-eq p1, v1, :cond_2

    .line 416
    iput p1, p0, Lcom/google/android/gms/internal/measurement/zzkk;->zzd:I

    return-void

    .line 420
    :cond_4
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzkk;->zzb:I

    and-int/lit8 v0, v0, 0x7

    if-eqz v0, :cond_7

    if-ne v0, v1, :cond_6

    .line 423
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzkk;->zza:Lcom/google/android/gms/internal/measurement/zzkg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzkg;->zzj()I

    move-result v0

    .line 424
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzkk;->zza:Lcom/google/android/gms/internal/measurement/zzkg;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzkg;->zzc()I

    move-result v1

    add-int/2addr v1, v0

    .line 425
    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzkk;->zza:Lcom/google/android/gms/internal/measurement/zzkg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzkg;->zzl()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 426
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzkk;->zza:Lcom/google/android/gms/internal/measurement/zzkg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzkg;->zzc()I

    move-result v0

    if-lt v0, v1, :cond_5

    .line 427
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/measurement/zzkk;->zza(I)V

    return-void

    .line 437
    :cond_6
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzlk;->zza()Lcom/google/android/gms/internal/measurement/zzln;

    move-result-object p1

    throw p1

    .line 429
    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzkk;->zza:Lcom/google/android/gms/internal/measurement/zzkg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzkg;->zzl()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 430
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzkk;->zza:Lcom/google/android/gms/internal/measurement/zzkg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzkg;->zzt()Z

    move-result v0

    if-eqz v0, :cond_8

    return-void

    .line 432
    :cond_8
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzkk;->zza:Lcom/google/android/gms/internal/measurement/zzkg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzkg;->zzi()I

    move-result v0

    .line 433
    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzkk;->zzb:I

    if-eq v0, v1, :cond_7

    .line 434
    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzkk;->zzd:I

    return-void
.end method

.method public final zzj()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 25
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/measurement/zzkk;->zzb(I)V

    .line 26
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzkk;->zza:Lcom/google/android/gms/internal/measurement/zzkg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzkg;->zzj()I

    move-result v0

    return v0
.end method

.method public final zzj(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 477
    instance-of v0, p1, Lcom/google/android/gms/internal/measurement/zzlf;

    const/4 v1, 0x5

    const/4 v2, 0x2

    if-eqz v0, :cond_5

    .line 478
    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzlf;

    .line 479
    iget p1, p0, Lcom/google/android/gms/internal/measurement/zzkk;->zzb:I

    and-int/lit8 p1, p1, 0x7

    if-eq p1, v2, :cond_3

    if-ne p1, v1, :cond_2

    .line 488
    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzkk;->zza:Lcom/google/android/gms/internal/measurement/zzkg;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzkg;->zzg()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/zzlf;->zzd(I)V

    .line 489
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzkk;->zza:Lcom/google/android/gms/internal/measurement/zzkg;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzkg;->zzt()Z

    move-result p1

    if-eqz p1, :cond_1

    return-void

    .line 491
    :cond_1
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzkk;->zza:Lcom/google/android/gms/internal/measurement/zzkg;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzkg;->zzi()I

    move-result p1

    .line 492
    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzkk;->zzb:I

    if-eq p1, v1, :cond_0

    .line 493
    iput p1, p0, Lcom/google/android/gms/internal/measurement/zzkk;->zzd:I

    return-void

    .line 496
    :cond_2
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzlk;->zza()Lcom/google/android/gms/internal/measurement/zzln;

    move-result-object p1

    throw p1

    .line 482
    :cond_3
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzkk;->zza:Lcom/google/android/gms/internal/measurement/zzkg;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzkg;->zzj()I

    move-result p1

    .line 483
    invoke-static {p1}, Lcom/google/android/gms/internal/measurement/zzkk;->zzc(I)V

    .line 484
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzkk;->zza:Lcom/google/android/gms/internal/measurement/zzkg;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzkg;->zzc()I

    move-result v1

    add-int v3, v1, p1

    .line 485
    :cond_4
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzkk;->zza:Lcom/google/android/gms/internal/measurement/zzkg;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzkg;->zzg()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/zzlf;->zzd(I)V

    .line 486
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzkk;->zza:Lcom/google/android/gms/internal/measurement/zzkg;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzkg;->zzc()I

    move-result p1

    if-lt p1, v3, :cond_4

    return-void

    .line 497
    :cond_5
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzkk;->zzb:I

    and-int/lit8 v0, v0, 0x7

    if-eq v0, v2, :cond_9

    if-ne v0, v1, :cond_8

    .line 506
    :cond_6
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzkk;->zza:Lcom/google/android/gms/internal/measurement/zzkg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzkg;->zzg()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 507
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzkk;->zza:Lcom/google/android/gms/internal/measurement/zzkg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzkg;->zzt()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 509
    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzkk;->zza:Lcom/google/android/gms/internal/measurement/zzkg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzkg;->zzi()I

    move-result v0

    .line 510
    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzkk;->zzb:I

    if-eq v0, v1, :cond_6

    .line 511
    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzkk;->zzd:I

    return-void

    .line 514
    :cond_8
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzlk;->zza()Lcom/google/android/gms/internal/measurement/zzln;

    move-result-object p1

    throw p1

    .line 500
    :cond_9
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzkk;->zza:Lcom/google/android/gms/internal/measurement/zzkg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzkg;->zzj()I

    move-result v0

    .line 501
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzkk;->zzc(I)V

    .line 502
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzkk;->zza:Lcom/google/android/gms/internal/measurement/zzkg;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzkg;->zzc()I

    move-result v1

    add-int/2addr v1, v0

    .line 503
    :cond_a
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzkk;->zza:Lcom/google/android/gms/internal/measurement/zzkg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzkg;->zzg()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 504
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzkk;->zza:Lcom/google/android/gms/internal/measurement/zzkg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzkg;->zzc()I

    move-result v0

    if-lt v0, v1, :cond_a

    return-void
.end method

.method public final zzk()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 27
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/measurement/zzkk;->zzb(I)V

    .line 28
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzkk;->zza:Lcom/google/android/gms/internal/measurement/zzkg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzkg;->zzk()J

    move-result-wide v0

    return-wide v0
.end method

.method public final zzk(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 515
    instance-of v0, p1, Lcom/google/android/gms/internal/measurement/zzlw;

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eqz v0, :cond_4

    .line 516
    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzlw;

    .line 517
    iget p1, p0, Lcom/google/android/gms/internal/measurement/zzkk;->zzb:I

    and-int/lit8 p1, p1, 0x7

    if-eq p1, v2, :cond_2

    if-ne p1, v1, :cond_1

    .line 520
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzkk;->zza:Lcom/google/android/gms/internal/measurement/zzkg;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzkg;->zzj()I

    move-result p1

    .line 521
    invoke-static {p1}, Lcom/google/android/gms/internal/measurement/zzkk;->zzd(I)V

    .line 522
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzkk;->zza:Lcom/google/android/gms/internal/measurement/zzkg;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzkg;->zzc()I

    move-result v1

    add-int/2addr v1, p1

    .line 523
    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzkk;->zza:Lcom/google/android/gms/internal/measurement/zzkg;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzkg;->zzn()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/measurement/zzlw;->zza(J)V

    .line 524
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzkk;->zza:Lcom/google/android/gms/internal/measurement/zzkg;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzkg;->zzc()I

    move-result p1

    if-lt p1, v1, :cond_0

    return-void

    .line 534
    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzlk;->zza()Lcom/google/android/gms/internal/measurement/zzln;

    move-result-object p1

    throw p1

    .line 526
    :cond_2
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzkk;->zza:Lcom/google/android/gms/internal/measurement/zzkg;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzkg;->zzn()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/measurement/zzlw;->zza(J)V

    .line 527
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzkk;->zza:Lcom/google/android/gms/internal/measurement/zzkg;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzkg;->zzt()Z

    move-result p1

    if-eqz p1, :cond_3

    return-void

    .line 529
    :cond_3
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzkk;->zza:Lcom/google/android/gms/internal/measurement/zzkg;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzkg;->zzi()I

    move-result p1

    .line 530
    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzkk;->zzb:I

    if-eq p1, v1, :cond_2

    .line 531
    iput p1, p0, Lcom/google/android/gms/internal/measurement/zzkk;->zzd:I

    return-void

    .line 535
    :cond_4
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzkk;->zzb:I

    and-int/lit8 v0, v0, 0x7

    if-eq v0, v2, :cond_7

    if-ne v0, v1, :cond_6

    .line 538
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzkk;->zza:Lcom/google/android/gms/internal/measurement/zzkg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzkg;->zzj()I

    move-result v0

    .line 539
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzkk;->zzd(I)V

    .line 540
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzkk;->zza:Lcom/google/android/gms/internal/measurement/zzkg;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzkg;->zzc()I

    move-result v1

    add-int/2addr v1, v0

    .line 541
    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzkk;->zza:Lcom/google/android/gms/internal/measurement/zzkg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzkg;->zzn()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 542
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzkk;->zza:Lcom/google/android/gms/internal/measurement/zzkg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzkg;->zzc()I

    move-result v0

    if-lt v0, v1, :cond_5

    return-void

    .line 552
    :cond_6
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzlk;->zza()Lcom/google/android/gms/internal/measurement/zzln;

    move-result-object p1

    throw p1

    .line 544
    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzkk;->zza:Lcom/google/android/gms/internal/measurement/zzkg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzkg;->zzn()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 545
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzkk;->zza:Lcom/google/android/gms/internal/measurement/zzkg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzkg;->zzt()Z

    move-result v0

    if-eqz v0, :cond_8

    return-void

    .line 547
    :cond_8
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzkk;->zza:Lcom/google/android/gms/internal/measurement/zzkg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzkg;->zzi()I

    move-result v0

    .line 548
    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzkk;->zzb:I

    if-eq v0, v1, :cond_7

    .line 549
    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzkk;->zzd:I

    return-void
.end method

.method public final zzl()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 29
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/measurement/zzkk;->zzb(I)V

    .line 30
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzkk;->zza:Lcom/google/android/gms/internal/measurement/zzkg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzkg;->zzl()J

    move-result-wide v0

    return-wide v0
.end method

.method public final zzl(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 553
    instance-of v0, p1, Lcom/google/android/gms/internal/measurement/zzlf;

    const/4 v1, 0x2

    if-eqz v0, :cond_4

    .line 554
    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzlf;

    .line 555
    iget p1, p0, Lcom/google/android/gms/internal/measurement/zzkk;->zzb:I

    and-int/lit8 p1, p1, 0x7

    if-eqz p1, :cond_2

    if-ne p1, v1, :cond_1

    .line 558
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzkk;->zza:Lcom/google/android/gms/internal/measurement/zzkg;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzkg;->zzj()I

    move-result p1

    .line 559
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzkk;->zza:Lcom/google/android/gms/internal/measurement/zzkg;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzkg;->zzc()I

    move-result v1

    add-int/2addr v1, p1

    .line 560
    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzkk;->zza:Lcom/google/android/gms/internal/measurement/zzkg;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzkg;->zzh()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/zzlf;->zzd(I)V

    .line 561
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzkk;->zza:Lcom/google/android/gms/internal/measurement/zzkg;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzkg;->zzc()I

    move-result p1

    if-lt p1, v1, :cond_0

    .line 562
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/measurement/zzkk;->zza(I)V

    return-void

    .line 572
    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzlk;->zza()Lcom/google/android/gms/internal/measurement/zzln;

    move-result-object p1

    throw p1

    .line 564
    :cond_2
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzkk;->zza:Lcom/google/android/gms/internal/measurement/zzkg;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzkg;->zzh()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/zzlf;->zzd(I)V

    .line 565
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzkk;->zza:Lcom/google/android/gms/internal/measurement/zzkg;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzkg;->zzt()Z

    move-result p1

    if-eqz p1, :cond_3

    return-void

    .line 567
    :cond_3
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzkk;->zza:Lcom/google/android/gms/internal/measurement/zzkg;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzkg;->zzi()I

    move-result p1

    .line 568
    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzkk;->zzb:I

    if-eq p1, v1, :cond_2

    .line 569
    iput p1, p0, Lcom/google/android/gms/internal/measurement/zzkk;->zzd:I

    return-void

    .line 573
    :cond_4
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzkk;->zzb:I

    and-int/lit8 v0, v0, 0x7

    if-eqz v0, :cond_7

    if-ne v0, v1, :cond_6

    .line 576
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzkk;->zza:Lcom/google/android/gms/internal/measurement/zzkg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzkg;->zzj()I

    move-result v0

    .line 577
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzkk;->zza:Lcom/google/android/gms/internal/measurement/zzkg;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzkg;->zzc()I

    move-result v1

    add-int/2addr v1, v0

    .line 578
    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzkk;->zza:Lcom/google/android/gms/internal/measurement/zzkg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzkg;->zzh()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 579
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzkk;->zza:Lcom/google/android/gms/internal/measurement/zzkg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzkg;->zzc()I

    move-result v0

    if-lt v0, v1, :cond_5

    .line 580
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/measurement/zzkk;->zza(I)V

    return-void

    .line 590
    :cond_6
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzlk;->zza()Lcom/google/android/gms/internal/measurement/zzln;

    move-result-object p1

    throw p1

    .line 582
    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzkk;->zza:Lcom/google/android/gms/internal/measurement/zzkg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzkg;->zzh()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 583
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzkk;->zza:Lcom/google/android/gms/internal/measurement/zzkg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzkg;->zzt()Z

    move-result v0

    if-eqz v0, :cond_8

    return-void

    .line 585
    :cond_8
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzkk;->zza:Lcom/google/android/gms/internal/measurement/zzkg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzkg;->zzi()I

    move-result v0

    .line 586
    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzkk;->zzb:I

    if-eq v0, v1, :cond_7

    .line 587
    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzkk;->zzd:I

    return-void
.end method

.method public final zzm()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 31
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/measurement/zzkk;->zzb(I)V

    .line 32
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzkk;->zza:Lcom/google/android/gms/internal/measurement/zzkg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzkg;->zzn()J

    move-result-wide v0

    return-wide v0
.end method

.method public final zzm(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 591
    instance-of v0, p1, Lcom/google/android/gms/internal/measurement/zzlw;

    const/4 v1, 0x2

    if-eqz v0, :cond_4

    .line 592
    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzlw;

    .line 593
    iget p1, p0, Lcom/google/android/gms/internal/measurement/zzkk;->zzb:I

    and-int/lit8 p1, p1, 0x7

    if-eqz p1, :cond_2

    if-ne p1, v1, :cond_1

    .line 596
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzkk;->zza:Lcom/google/android/gms/internal/measurement/zzkg;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzkg;->zzj()I

    move-result p1

    .line 597
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzkk;->zza:Lcom/google/android/gms/internal/measurement/zzkg;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzkg;->zzc()I

    move-result v1

    add-int/2addr v1, p1

    .line 598
    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzkk;->zza:Lcom/google/android/gms/internal/measurement/zzkg;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzkg;->zzo()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/measurement/zzlw;->zza(J)V

    .line 599
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzkk;->zza:Lcom/google/android/gms/internal/measurement/zzkg;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzkg;->zzc()I

    move-result p1

    if-lt p1, v1, :cond_0

    .line 600
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/measurement/zzkk;->zza(I)V

    return-void

    .line 610
    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzlk;->zza()Lcom/google/android/gms/internal/measurement/zzln;

    move-result-object p1

    throw p1

    .line 602
    :cond_2
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzkk;->zza:Lcom/google/android/gms/internal/measurement/zzkg;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzkg;->zzo()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/measurement/zzlw;->zza(J)V

    .line 603
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzkk;->zza:Lcom/google/android/gms/internal/measurement/zzkg;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzkg;->zzt()Z

    move-result p1

    if-eqz p1, :cond_3

    return-void

    .line 605
    :cond_3
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzkk;->zza:Lcom/google/android/gms/internal/measurement/zzkg;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzkg;->zzi()I

    move-result p1

    .line 606
    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzkk;->zzb:I

    if-eq p1, v1, :cond_2

    .line 607
    iput p1, p0, Lcom/google/android/gms/internal/measurement/zzkk;->zzd:I

    return-void

    .line 611
    :cond_4
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzkk;->zzb:I

    and-int/lit8 v0, v0, 0x7

    if-eqz v0, :cond_7

    if-ne v0, v1, :cond_6

    .line 614
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzkk;->zza:Lcom/google/android/gms/internal/measurement/zzkg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzkg;->zzj()I

    move-result v0

    .line 615
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzkk;->zza:Lcom/google/android/gms/internal/measurement/zzkg;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzkg;->zzc()I

    move-result v1

    add-int/2addr v1, v0

    .line 616
    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzkk;->zza:Lcom/google/android/gms/internal/measurement/zzkg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzkg;->zzo()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 617
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzkk;->zza:Lcom/google/android/gms/internal/measurement/zzkg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzkg;->zzc()I

    move-result v0

    if-lt v0, v1, :cond_5

    .line 618
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/measurement/zzkk;->zza(I)V

    return-void

    .line 628
    :cond_6
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzlk;->zza()Lcom/google/android/gms/internal/measurement/zzln;

    move-result-object p1

    throw p1

    .line 620
    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzkk;->zza:Lcom/google/android/gms/internal/measurement/zzkg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzkg;->zzo()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 621
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzkk;->zza:Lcom/google/android/gms/internal/measurement/zzkg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzkg;->zzt()Z

    move-result v0

    if-eqz v0, :cond_8

    return-void

    .line 623
    :cond_8
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzkk;->zza:Lcom/google/android/gms/internal/measurement/zzkg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzkg;->zzi()I

    move-result v0

    .line 624
    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzkk;->zzb:I

    if-eq v0, v1, :cond_7

    .line 625
    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzkk;->zzd:I

    return-void
.end method

.method public final zzn()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 33
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/measurement/zzkk;->zzb(I)V

    .line 34
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzkk;->zza:Lcom/google/android/gms/internal/measurement/zzkg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzkg;->zzo()J

    move-result-wide v0

    return-wide v0
.end method

.method public final zzn(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 629
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/measurement/zzkk;->zza(Ljava/util/List;Z)V

    return-void
.end method

.method public final zzo()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 35
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/measurement/zzkk;->zzb(I)V

    .line 36
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzkk;->zza:Lcom/google/android/gms/internal/measurement/zzkg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzkg;->zzp()J

    move-result-wide v0

    return-wide v0
.end method

.method public final zzo(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 653
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/measurement/zzkk;->zza(Ljava/util/List;Z)V

    return-void
.end method

.method public final zzp()Lcom/google/android/gms/internal/measurement/zzjs;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x2

    .line 37
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/measurement/zzkk;->zzb(I)V

    .line 38
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzkk;->zza:Lcom/google/android/gms/internal/measurement/zzkg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzkg;->zzq()Lcom/google/android/gms/internal/measurement/zzjs;

    move-result-object v0

    return-object v0
.end method

.method public final zzp(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 655
    instance-of v0, p1, Lcom/google/android/gms/internal/measurement/zzlf;

    const/4 v1, 0x2

    if-eqz v0, :cond_4

    .line 656
    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzlf;

    .line 657
    iget p1, p0, Lcom/google/android/gms/internal/measurement/zzkk;->zzb:I

    and-int/lit8 p1, p1, 0x7

    if-eqz p1, :cond_2

    if-ne p1, v1, :cond_1

    .line 660
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzkk;->zza:Lcom/google/android/gms/internal/measurement/zzkg;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzkg;->zzj()I

    move-result p1

    .line 661
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzkk;->zza:Lcom/google/android/gms/internal/measurement/zzkg;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzkg;->zzc()I

    move-result v1

    add-int/2addr v1, p1

    .line 662
    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzkk;->zza:Lcom/google/android/gms/internal/measurement/zzkg;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzkg;->zzj()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/zzlf;->zzd(I)V

    .line 663
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzkk;->zza:Lcom/google/android/gms/internal/measurement/zzkg;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzkg;->zzc()I

    move-result p1

    if-lt p1, v1, :cond_0

    .line 664
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/measurement/zzkk;->zza(I)V

    return-void

    .line 674
    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzlk;->zza()Lcom/google/android/gms/internal/measurement/zzln;

    move-result-object p1

    throw p1

    .line 666
    :cond_2
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzkk;->zza:Lcom/google/android/gms/internal/measurement/zzkg;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzkg;->zzj()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/zzlf;->zzd(I)V

    .line 667
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzkk;->zza:Lcom/google/android/gms/internal/measurement/zzkg;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzkg;->zzt()Z

    move-result p1

    if-eqz p1, :cond_3

    return-void

    .line 669
    :cond_3
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzkk;->zza:Lcom/google/android/gms/internal/measurement/zzkg;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzkg;->zzi()I

    move-result p1

    .line 670
    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzkk;->zzb:I

    if-eq p1, v1, :cond_2

    .line 671
    iput p1, p0, Lcom/google/android/gms/internal/measurement/zzkk;->zzd:I

    return-void

    .line 675
    :cond_4
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzkk;->zzb:I

    and-int/lit8 v0, v0, 0x7

    if-eqz v0, :cond_7

    if-ne v0, v1, :cond_6

    .line 678
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzkk;->zza:Lcom/google/android/gms/internal/measurement/zzkg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzkg;->zzj()I

    move-result v0

    .line 679
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzkk;->zza:Lcom/google/android/gms/internal/measurement/zzkg;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzkg;->zzc()I

    move-result v1

    add-int/2addr v1, v0

    .line 680
    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzkk;->zza:Lcom/google/android/gms/internal/measurement/zzkg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzkg;->zzj()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 681
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzkk;->zza:Lcom/google/android/gms/internal/measurement/zzkg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzkg;->zzc()I

    move-result v0

    if-lt v0, v1, :cond_5

    .line 682
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/measurement/zzkk;->zza(I)V

    return-void

    .line 692
    :cond_6
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzlk;->zza()Lcom/google/android/gms/internal/measurement/zzln;

    move-result-object p1

    throw p1

    .line 684
    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzkk;->zza:Lcom/google/android/gms/internal/measurement/zzkg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzkg;->zzj()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 685
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzkk;->zza:Lcom/google/android/gms/internal/measurement/zzkg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzkg;->zzt()Z

    move-result v0

    if-eqz v0, :cond_8

    return-void

    .line 687
    :cond_8
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzkk;->zza:Lcom/google/android/gms/internal/measurement/zzkg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzkg;->zzi()I

    move-result v0

    .line 688
    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzkk;->zzb:I

    if-eq v0, v1, :cond_7

    .line 689
    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzkk;->zzd:I

    return-void
.end method

.method public final zzq()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x2

    .line 72
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/measurement/zzkk;->zzb(I)V

    .line 73
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzkk;->zza:Lcom/google/android/gms/internal/measurement/zzkg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzkg;->zzr()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zzq(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 693
    instance-of v0, p1, Lcom/google/android/gms/internal/measurement/zzlw;

    const/4 v1, 0x2

    if-eqz v0, :cond_4

    .line 694
    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzlw;

    .line 695
    iget p1, p0, Lcom/google/android/gms/internal/measurement/zzkk;->zzb:I

    and-int/lit8 p1, p1, 0x7

    if-eqz p1, :cond_2

    if-ne p1, v1, :cond_1

    .line 698
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzkk;->zza:Lcom/google/android/gms/internal/measurement/zzkg;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzkg;->zzj()I

    move-result p1

    .line 699
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzkk;->zza:Lcom/google/android/gms/internal/measurement/zzkg;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzkg;->zzc()I

    move-result v1

    add-int/2addr v1, p1

    .line 700
    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzkk;->zza:Lcom/google/android/gms/internal/measurement/zzkg;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzkg;->zzp()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/measurement/zzlw;->zza(J)V

    .line 701
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzkk;->zza:Lcom/google/android/gms/internal/measurement/zzkg;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzkg;->zzc()I

    move-result p1

    if-lt p1, v1, :cond_0

    .line 702
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/measurement/zzkk;->zza(I)V

    return-void

    .line 712
    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzlk;->zza()Lcom/google/android/gms/internal/measurement/zzln;

    move-result-object p1

    throw p1

    .line 704
    :cond_2
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzkk;->zza:Lcom/google/android/gms/internal/measurement/zzkg;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzkg;->zzp()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/measurement/zzlw;->zza(J)V

    .line 705
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzkk;->zza:Lcom/google/android/gms/internal/measurement/zzkg;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzkg;->zzt()Z

    move-result p1

    if-eqz p1, :cond_3

    return-void

    .line 707
    :cond_3
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzkk;->zza:Lcom/google/android/gms/internal/measurement/zzkg;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzkg;->zzi()I

    move-result p1

    .line 708
    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzkk;->zzb:I

    if-eq p1, v1, :cond_2

    .line 709
    iput p1, p0, Lcom/google/android/gms/internal/measurement/zzkk;->zzd:I

    return-void

    .line 713
    :cond_4
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzkk;->zzb:I

    and-int/lit8 v0, v0, 0x7

    if-eqz v0, :cond_7

    if-ne v0, v1, :cond_6

    .line 716
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzkk;->zza:Lcom/google/android/gms/internal/measurement/zzkg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzkg;->zzj()I

    move-result v0

    .line 717
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzkk;->zza:Lcom/google/android/gms/internal/measurement/zzkg;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzkg;->zzc()I

    move-result v1

    add-int/2addr v1, v0

    .line 718
    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzkk;->zza:Lcom/google/android/gms/internal/measurement/zzkg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzkg;->zzp()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 719
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzkk;->zza:Lcom/google/android/gms/internal/measurement/zzkg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzkg;->zzc()I

    move-result v0

    if-lt v0, v1, :cond_5

    .line 720
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/measurement/zzkk;->zza(I)V

    return-void

    .line 730
    :cond_6
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzlk;->zza()Lcom/google/android/gms/internal/measurement/zzln;

    move-result-object p1

    throw p1

    .line 722
    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzkk;->zza:Lcom/google/android/gms/internal/measurement/zzkg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzkg;->zzp()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 723
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzkk;->zza:Lcom/google/android/gms/internal/measurement/zzkg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzkg;->zzt()Z

    move-result v0

    if-eqz v0, :cond_8

    return-void

    .line 725
    :cond_8
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzkk;->zza:Lcom/google/android/gms/internal/measurement/zzkg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzkg;->zzi()I

    move-result v0

    .line 726
    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzkk;->zzb:I

    if-eq v0, v1, :cond_7

    .line 727
    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzkk;->zzd:I

    return-void
.end method

.method public final zzr()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x2

    .line 74
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/measurement/zzkk;->zzb(I)V

    .line 75
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzkk;->zza:Lcom/google/android/gms/internal/measurement/zzkg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzkg;->zzs()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zzs()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 745
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/measurement/zzkk;->zzb(I)V

    .line 746
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzkk;->zza:Lcom/google/android/gms/internal/measurement/zzkg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzkg;->zzu()Z

    move-result v0

    return v0
.end method

.method public final zzt()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 747
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzkk;->zza:Lcom/google/android/gms/internal/measurement/zzkg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzkg;->zzt()Z

    move-result v0

    if-nez v0, :cond_1

    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzkk;->zzb:I

    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzkk;->zzc:I

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 749
    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzkk;->zza:Lcom/google/android/gms/internal/measurement/zzkg;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/measurement/zzkg;->zzd(I)Z

    move-result v0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method
