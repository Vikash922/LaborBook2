.class final Lcom/google/android/gms/internal/measurement/zzkv;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-base@@22.1.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/google/android/gms/internal/measurement/zzkx<",
        "TT;>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final zzb:Lcom/google/android/gms/internal/measurement/zzkv;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/measurement/zzkv<",
            "*>;"
        }
    .end annotation
.end field


# instance fields
.field final zza:Lcom/google/android/gms/internal/measurement/zzne;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/measurement/zzne<",
            "TT;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private zzc:Z

.field private zzd:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 123
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzkv;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/measurement/zzkv;-><init>(Z)V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzkv;->zzb:Lcom/google/android/gms/internal/measurement/zzkv;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 126
    new-instance v0, Lcom/google/android/gms/internal/measurement/zznh;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/zznh;-><init>()V

    .line 127
    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzkv;->zza:Lcom/google/android/gms/internal/measurement/zzne;

    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/internal/measurement/zzne;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/measurement/zzne<",
            "TT;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 130
    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzkv;->zza:Lcom/google/android/gms/internal/measurement/zzne;

    .line 131
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzkv;->zze()V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 0

    .line 134
    new-instance p1, Lcom/google/android/gms/internal/measurement/zznh;

    invoke-direct {p1}, Lcom/google/android/gms/internal/measurement/zznh;-><init>()V

    .line 135
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/measurement/zzkv;-><init>(Lcom/google/android/gms/internal/measurement/zzne;)V

    .line 136
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzkv;->zze()V

    return-void
.end method

.method public static zza(Lcom/google/android/gms/internal/measurement/zzkx;Ljava/lang/Object;)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/measurement/zzkx<",
            "*>;",
            "Ljava/lang/Object;",
            ")I"
        }
    .end annotation

    .line 34
    invoke-interface {p0}, Lcom/google/android/gms/internal/measurement/zzkx;->zzb()Lcom/google/android/gms/internal/measurement/zzof;

    move-result-object v0

    .line 35
    invoke-interface {p0}, Lcom/google/android/gms/internal/measurement/zzkx;->zza()I

    move-result v1

    .line 36
    invoke-interface {p0}, Lcom/google/android/gms/internal/measurement/zzkx;->zze()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 37
    check-cast p1, Ljava/util/List;

    .line 38
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    .line 39
    invoke-interface {p0}, Lcom/google/android/gms/internal/measurement/zzkx;->zzd()Z

    move-result p0

    const/4 v3, 0x0

    if-eqz p0, :cond_2

    .line 40
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_0

    return v3

    :cond_0
    move p0, v3

    :goto_0
    if-ge v3, v2, :cond_1

    .line 44
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    .line 45
    invoke-static {v0, v4}, Lcom/google/android/gms/internal/measurement/zzkv;->zza(Lcom/google/android/gms/internal/measurement/zzof;Ljava/lang/Object;)I

    move-result v4

    add-int/2addr p0, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 48
    :cond_1
    invoke-static {v1}, Lcom/google/android/gms/internal/measurement/zzkl;->zzi(I)I

    move-result p1

    add-int/2addr p1, p0

    .line 49
    invoke-static {p0}, Lcom/google/android/gms/internal/measurement/zzkl;->zzj(I)I

    move-result p0

    add-int/2addr p1, p0

    return p1

    :cond_2
    move p0, v3

    :goto_1
    if-ge v3, v2, :cond_3

    .line 53
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    .line 54
    invoke-static {v0, v1, v4}, Lcom/google/android/gms/internal/measurement/zzkv;->zza(Lcom/google/android/gms/internal/measurement/zzof;ILjava/lang/Object;)I

    move-result v4

    add-int/2addr p0, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    return p0

    .line 57
    :cond_4
    invoke-static {v0, v1, p1}, Lcom/google/android/gms/internal/measurement/zzkv;->zza(Lcom/google/android/gms/internal/measurement/zzof;ILjava/lang/Object;)I

    move-result p0

    return p0
.end method

.method static zza(Lcom/google/android/gms/internal/measurement/zzof;ILjava/lang/Object;)I
    .locals 1

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/internal/measurement/zzkl;->zzi(I)I

    move-result p1

    .line 2
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzof;->zzj:Lcom/google/android/gms/internal/measurement/zzof;

    if-ne p0, v0, :cond_0

    .line 3
    move-object v0, p2

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzml;

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzle;->zza(Lcom/google/android/gms/internal/measurement/zzml;)Z

    shl-int/lit8 p1, p1, 0x1

    .line 5
    :cond_0
    invoke-static {p0, p2}, Lcom/google/android/gms/internal/measurement/zzkv;->zza(Lcom/google/android/gms/internal/measurement/zzof;Ljava/lang/Object;)I

    move-result p0

    add-int/2addr p1, p0

    return p1
.end method

.method private static zza(Lcom/google/android/gms/internal/measurement/zzof;Ljava/lang/Object;)I
    .locals 1

    .line 6
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzku;->zzb:[I

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzof;->ordinal()I

    move-result p0

    aget p0, v0, p0

    packed-switch p0, :pswitch_data_0

    .line 33
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "There is no way to get here, but the compiler thinks otherwise."

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 30
    :pswitch_0
    instance-of p0, p1, Lcom/google/android/gms/internal/measurement/zzlh;

    if-eqz p0, :cond_0

    .line 31
    check-cast p1, Lcom/google/android/gms/internal/measurement/zzlh;

    invoke-interface {p1}, Lcom/google/android/gms/internal/measurement/zzlh;->zza()I

    move-result p0

    invoke-static {p0}, Lcom/google/android/gms/internal/measurement/zzkl;->zzd(I)I

    move-result p0

    return p0

    .line 32
    :cond_0
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {p0}, Lcom/google/android/gms/internal/measurement/zzkl;->zzd(I)I

    move-result p0

    return p0

    .line 26
    :pswitch_1
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    invoke-static {p0, p1}, Lcom/google/android/gms/internal/measurement/zzkl;->zzf(J)I

    move-result p0

    return p0

    .line 25
    :pswitch_2
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {p0}, Lcom/google/android/gms/internal/measurement/zzkl;->zzh(I)I

    move-result p0

    return p0

    .line 24
    :pswitch_3
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    invoke-static {p0, p1}, Lcom/google/android/gms/internal/measurement/zzkl;->zze(J)I

    move-result p0

    return p0

    .line 23
    :pswitch_4
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {p0}, Lcom/google/android/gms/internal/measurement/zzkl;->zzg(I)I

    move-result p0

    return p0

    .line 22
    :pswitch_5
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {p0}, Lcom/google/android/gms/internal/measurement/zzkl;->zzj(I)I

    move-result p0

    return p0

    .line 16
    :pswitch_6
    instance-of p0, p1, Lcom/google/android/gms/internal/measurement/zzjs;

    if-eqz p0, :cond_1

    .line 17
    check-cast p1, Lcom/google/android/gms/internal/measurement/zzjs;

    invoke-static {p1}, Lcom/google/android/gms/internal/measurement/zzkl;->zzb(Lcom/google/android/gms/internal/measurement/zzjs;)I

    move-result p0

    return p0

    .line 18
    :cond_1
    check-cast p1, [B

    invoke-static {p1}, Lcom/google/android/gms/internal/measurement/zzkl;->zza([B)I

    move-result p0

    return p0

    .line 19
    :pswitch_7
    instance-of p0, p1, Lcom/google/android/gms/internal/measurement/zzjs;

    if-eqz p0, :cond_2

    .line 20
    check-cast p1, Lcom/google/android/gms/internal/measurement/zzjs;

    invoke-static {p1}, Lcom/google/android/gms/internal/measurement/zzkl;->zzb(Lcom/google/android/gms/internal/measurement/zzjs;)I

    move-result p0

    return p0

    .line 21
    :cond_2
    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Lcom/google/android/gms/internal/measurement/zzkl;->zzb(Ljava/lang/String;)I

    move-result p0

    return p0

    .line 27
    :pswitch_8
    instance-of p0, p1, Lcom/google/android/gms/internal/measurement/zzlp;

    if-eqz p0, :cond_3

    .line 28
    check-cast p1, Lcom/google/android/gms/internal/measurement/zzlp;

    invoke-static {p1}, Lcom/google/android/gms/internal/measurement/zzkl;->zza(Lcom/google/android/gms/internal/measurement/zzlt;)I

    move-result p0

    return p0

    .line 29
    :cond_3
    check-cast p1, Lcom/google/android/gms/internal/measurement/zzml;

    invoke-static {p1}, Lcom/google/android/gms/internal/measurement/zzkl;->zzc(Lcom/google/android/gms/internal/measurement/zzml;)I

    move-result p0

    return p0

    .line 15
    :pswitch_9
    check-cast p1, Lcom/google/android/gms/internal/measurement/zzml;

    invoke-static {p1}, Lcom/google/android/gms/internal/measurement/zzkl;->zzb(Lcom/google/android/gms/internal/measurement/zzml;)I

    move-result p0

    return p0

    .line 14
    :pswitch_a
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    invoke-static {p0}, Lcom/google/android/gms/internal/measurement/zzkl;->zza(Z)I

    move-result p0

    return p0

    .line 13
    :pswitch_b
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {p0}, Lcom/google/android/gms/internal/measurement/zzkl;->zze(I)I

    move-result p0

    return p0

    .line 12
    :pswitch_c
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    invoke-static {p0, p1}, Lcom/google/android/gms/internal/measurement/zzkl;->zzc(J)I

    move-result p0

    return p0

    .line 11
    :pswitch_d
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {p0}, Lcom/google/android/gms/internal/measurement/zzkl;->zzf(I)I

    move-result p0

    return p0

    .line 10
    :pswitch_e
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    invoke-static {p0, p1}, Lcom/google/android/gms/internal/measurement/zzkl;->zzg(J)I

    move-result p0

    return p0

    .line 9
    :pswitch_f
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    invoke-static {p0, p1}, Lcom/google/android/gms/internal/measurement/zzkl;->zzd(J)I

    move-result p0

    return p0

    .line 8
    :pswitch_10
    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p0

    invoke-static {p0}, Lcom/google/android/gms/internal/measurement/zzkl;->zza(F)I

    move-result p0

    return p0

    .line 7
    :pswitch_11
    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p0

    invoke-static {p0, p1}, Lcom/google/android/gms/internal/measurement/zzkl;->zza(D)I

    move-result p0

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_11
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

.method private static zza(Ljava/util/Map$Entry;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "TT;",
            "Ljava/lang/Object;",
            ">;)I"
        }
    .end annotation

    .line 67
    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzkx;

    .line 68
    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    .line 69
    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zzkx;->zzc()Lcom/google/android/gms/internal/measurement/zzop;

    move-result-object v2

    sget-object v3, Lcom/google/android/gms/internal/measurement/zzop;->zzi:Lcom/google/android/gms/internal/measurement/zzop;

    if-ne v2, v3, :cond_1

    .line 70
    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zzkx;->zze()Z

    move-result v2

    if-nez v2, :cond_1

    .line 71
    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zzkx;->zzd()Z

    move-result v2

    if-nez v2, :cond_1

    .line 72
    instance-of v0, v1, Lcom/google/android/gms/internal/measurement/zzlp;

    if-eqz v0, :cond_0

    .line 74
    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/measurement/zzkx;

    invoke-interface {p0}, Lcom/google/android/gms/internal/measurement/zzkx;->zza()I

    move-result p0

    check-cast v1, Lcom/google/android/gms/internal/measurement/zzlp;

    .line 75
    invoke-static {p0, v1}, Lcom/google/android/gms/internal/measurement/zzkl;->zza(ILcom/google/android/gms/internal/measurement/zzlt;)I

    move-result p0

    return p0

    .line 77
    :cond_0
    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/measurement/zzkx;

    invoke-interface {p0}, Lcom/google/android/gms/internal/measurement/zzkx;->zza()I

    move-result p0

    check-cast v1, Lcom/google/android/gms/internal/measurement/zzml;

    .line 78
    invoke-static {p0, v1}, Lcom/google/android/gms/internal/measurement/zzkl;->zzb(ILcom/google/android/gms/internal/measurement/zzml;)I

    move-result p0

    return p0

    .line 79
    :cond_1
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/measurement/zzkv;->zza(Lcom/google/android/gms/internal/measurement/zzkx;Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method private final zza(Lcom/google/android/gms/internal/measurement/zzkx;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 104
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzkv;->zza:Lcom/google/android/gms/internal/measurement/zzne;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/zzne;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 105
    instance-of v0, p1, Lcom/google/android/gms/internal/measurement/zzlp;

    if-nez v0, :cond_0

    return-object p1

    .line 106
    :cond_0
    check-cast p1, Lcom/google/android/gms/internal/measurement/zzlp;

    .line 107
    new-instance p1, Ljava/lang/NoSuchMethodError;

    invoke-direct {p1}, Ljava/lang/NoSuchMethodError;-><init>()V

    throw p1
.end method

.method private static zza(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 96
    instance-of v0, p0, Lcom/google/android/gms/internal/measurement/zzmq;

    if-eqz v0, :cond_0

    .line 97
    check-cast p0, Lcom/google/android/gms/internal/measurement/zzmq;

    invoke-interface {p0}, Lcom/google/android/gms/internal/measurement/zzmq;->zza()Lcom/google/android/gms/internal/measurement/zzmq;

    move-result-object p0

    return-object p0

    .line 98
    :cond_0
    instance-of v0, p0, [B

    if-eqz v0, :cond_1

    .line 99
    check-cast p0, [B

    .line 100
    array-length v0, p0

    new-array v0, v0, [B

    .line 101
    array-length v1, p0

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0

    :cond_1
    return-object p0
.end method

.method static zza(Lcom/google/android/gms/internal/measurement/zzkl;Lcom/google/android/gms/internal/measurement/zzof;ILjava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 233
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzof;->zzj:Lcom/google/android/gms/internal/measurement/zzof;

    if-ne p1, v0, :cond_0

    .line 234
    check-cast p3, Lcom/google/android/gms/internal/measurement/zzml;

    invoke-static {p3}, Lcom/google/android/gms/internal/measurement/zzle;->zza(Lcom/google/android/gms/internal/measurement/zzml;)Z

    const/4 p1, 0x3

    .line 236
    invoke-virtual {p0, p2, p1}, Lcom/google/android/gms/internal/measurement/zzkl;->zzc(II)V

    .line 238
    invoke-interface {p3, p0}, Lcom/google/android/gms/internal/measurement/zzml;->zza(Lcom/google/android/gms/internal/measurement/zzkl;)V

    const/4 p1, 0x4

    .line 239
    invoke-virtual {p0, p2, p1}, Lcom/google/android/gms/internal/measurement/zzkl;->zzc(II)V

    return-void

    .line 242
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzof;->zza()I

    move-result v0

    .line 243
    invoke-virtual {p0, p2, v0}, Lcom/google/android/gms/internal/measurement/zzkl;->zzc(II)V

    .line 245
    sget-object p2, Lcom/google/android/gms/internal/measurement/zzku;->zzb:[I

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzof;->ordinal()I

    move-result p1

    aget p1, p2, p1

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_0

    .line 289
    :pswitch_0
    instance-of p1, p3, Lcom/google/android/gms/internal/measurement/zzlh;

    if-eqz p1, :cond_1

    .line 290
    check-cast p3, Lcom/google/android/gms/internal/measurement/zzlh;

    invoke-interface {p3}, Lcom/google/android/gms/internal/measurement/zzlh;->zza()I

    move-result p1

    .line 291
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/measurement/zzkl;->zzb(I)V

    return-void

    .line 293
    :cond_1
    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 294
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/measurement/zzkl;->zzb(I)V

    goto/16 :goto_0

    .line 287
    :pswitch_1
    check-cast p3, Ljava/lang/Long;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/measurement/zzkl;->zzh(J)V

    return-void

    .line 285
    :pswitch_2
    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/measurement/zzkl;->zzk(I)V

    return-void

    .line 282
    :pswitch_3
    check-cast p3, Ljava/lang/Long;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    .line 283
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/measurement/zzkl;->zza(J)V

    return-void

    .line 279
    :pswitch_4
    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 280
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/measurement/zzkl;->zza(I)V

    return-void

    .line 277
    :pswitch_5
    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/measurement/zzkl;->zzc(I)V

    return-void

    .line 272
    :pswitch_6
    instance-of p1, p3, Lcom/google/android/gms/internal/measurement/zzjs;

    if-eqz p1, :cond_2

    .line 273
    check-cast p3, Lcom/google/android/gms/internal/measurement/zzjs;

    invoke-virtual {p0, p3}, Lcom/google/android/gms/internal/measurement/zzkl;->zza(Lcom/google/android/gms/internal/measurement/zzjs;)V

    return-void

    .line 274
    :cond_2
    check-cast p3, [B

    const/4 p1, 0x0

    .line 275
    array-length p2, p3

    invoke-virtual {p0, p3, p1, p2}, Lcom/google/android/gms/internal/measurement/zzkl;->zzb([BII)V

    return-void

    .line 268
    :pswitch_7
    instance-of p1, p3, Lcom/google/android/gms/internal/measurement/zzjs;

    if-eqz p1, :cond_3

    .line 269
    check-cast p3, Lcom/google/android/gms/internal/measurement/zzjs;

    invoke-virtual {p0, p3}, Lcom/google/android/gms/internal/measurement/zzkl;->zza(Lcom/google/android/gms/internal/measurement/zzjs;)V

    return-void

    .line 270
    :cond_3
    check-cast p3, Ljava/lang/String;

    invoke-virtual {p0, p3}, Lcom/google/android/gms/internal/measurement/zzkl;->zza(Ljava/lang/String;)V

    return-void

    .line 266
    :pswitch_8
    check-cast p3, Lcom/google/android/gms/internal/measurement/zzml;

    invoke-virtual {p0, p3}, Lcom/google/android/gms/internal/measurement/zzkl;->zza(Lcom/google/android/gms/internal/measurement/zzml;)V

    return-void

    .line 263
    :pswitch_9
    check-cast p3, Lcom/google/android/gms/internal/measurement/zzml;

    .line 264
    invoke-interface {p3, p0}, Lcom/google/android/gms/internal/measurement/zzml;->zza(Lcom/google/android/gms/internal/measurement/zzkl;)V

    return-void

    .line 261
    :pswitch_a
    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/measurement/zzkl;->zzb(Z)V

    return-void

    .line 259
    :pswitch_b
    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/measurement/zzkl;->zza(I)V

    return-void

    .line 257
    :pswitch_c
    check-cast p3, Ljava/lang/Long;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/measurement/zzkl;->zza(J)V

    return-void

    .line 255
    :pswitch_d
    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/measurement/zzkl;->zzb(I)V

    return-void

    .line 253
    :pswitch_e
    check-cast p3, Ljava/lang/Long;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/measurement/zzkl;->zzb(J)V

    return-void

    .line 250
    :pswitch_f
    check-cast p3, Ljava/lang/Long;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    .line 251
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/measurement/zzkl;->zzb(J)V

    return-void

    .line 248
    :pswitch_10
    check-cast p3, Ljava/lang/Float;

    invoke-virtual {p3}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/measurement/zzkl;->zzb(F)V

    return-void

    .line 246
    :pswitch_11
    check-cast p3, Ljava/lang/Double;

    invoke-virtual {p3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/measurement/zzkl;->zzb(D)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_11
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

.method public static zzb()Lcom/google/android/gms/internal/measurement/zzkv;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/google/android/gms/internal/measurement/zzkx<",
            "TT;>;>()",
            "Lcom/google/android/gms/internal/measurement/zzkv<",
            "TT;>;"
        }
    .end annotation

    .line 81
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzkv;->zzb:Lcom/google/android/gms/internal/measurement/zzkv;

    return-object v0
.end method

.method private final zzb(Lcom/google/android/gms/internal/measurement/zzkx;Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 195
    invoke-interface {p1}, Lcom/google/android/gms/internal/measurement/zzkx;->zze()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 196
    instance-of v0, p2, Ljava/util/List;

    if-eqz v0, :cond_1

    .line 198
    check-cast p2, Ljava/util/List;

    .line 199
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    .line 200
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 202
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    .line 203
    invoke-static {p1, v3}, Lcom/google/android/gms/internal/measurement/zzkv;->zzc(Lcom/google/android/gms/internal/measurement/zzkx;Ljava/lang/Object;)V

    .line 204
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    move-object p2, v1

    goto :goto_1

    .line 197
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Wrong object type used with protocol message reflection."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 208
    :cond_2
    invoke-static {p1, p2}, Lcom/google/android/gms/internal/measurement/zzkv;->zzc(Lcom/google/android/gms/internal/measurement/zzkx;Ljava/lang/Object;)V

    .line 209
    :goto_1
    instance-of v0, p2, Lcom/google/android/gms/internal/measurement/zzlp;

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    .line 210
    iput-boolean v0, p0, Lcom/google/android/gms/internal/measurement/zzkv;->zzd:Z

    .line 211
    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzkv;->zza:Lcom/google/android/gms/internal/measurement/zzne;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/measurement/zzne;->zza(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private final zzb(Ljava/util/Map$Entry;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "TT;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 157
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzkx;

    .line 158
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    .line 159
    instance-of v1, p1, Lcom/google/android/gms/internal/measurement/zzlp;

    .line 160
    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zzkx;->zze()Z

    move-result v2

    if-eqz v2, :cond_3

    if-nez v1, :cond_2

    .line 163
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/measurement/zzkv;->zza(Lcom/google/android/gms/internal/measurement/zzkx;)Ljava/lang/Object;

    move-result-object v1

    .line 164
    check-cast p1, Ljava/util/List;

    .line 165
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-nez v1, :cond_0

    .line 167
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 168
    :cond_0
    move-object v3, v1

    check-cast v3, Ljava/util/List;

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_1

    .line 170
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    .line 171
    invoke-static {v5}, Lcom/google/android/gms/internal/measurement/zzkv;->zza(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 173
    :cond_1
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzkv;->zza:Lcom/google/android/gms/internal/measurement/zzne;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/measurement/zzne;->zza(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 162
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Lazy fields can not be repeated"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 174
    :cond_3
    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zzkx;->zzc()Lcom/google/android/gms/internal/measurement/zzop;

    move-result-object v2

    sget-object v3, Lcom/google/android/gms/internal/measurement/zzop;->zzi:Lcom/google/android/gms/internal/measurement/zzop;

    if-ne v2, v3, :cond_8

    .line 175
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/measurement/zzkv;->zza(Lcom/google/android/gms/internal/measurement/zzkx;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_4

    .line 177
    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/zzkv;->zza:Lcom/google/android/gms/internal/measurement/zzne;

    invoke-static {p1}, Lcom/google/android/gms/internal/measurement/zzkv;->zza(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v2, v0, p1}, Lcom/google/android/gms/internal/measurement/zzne;->zza(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v1, :cond_6

    const/4 p1, 0x1

    .line 179
    iput-boolean p1, p0, Lcom/google/android/gms/internal/measurement/zzkv;->zzd:Z

    return-void

    :cond_4
    if-nez v1, :cond_7

    .line 183
    instance-of v1, v2, Lcom/google/android/gms/internal/measurement/zzmq;

    if-eqz v1, :cond_5

    .line 184
    check-cast v2, Lcom/google/android/gms/internal/measurement/zzmq;

    check-cast p1, Lcom/google/android/gms/internal/measurement/zzmq;

    .line 185
    invoke-interface {v0, v2, p1}, Lcom/google/android/gms/internal/measurement/zzkx;->zza(Lcom/google/android/gms/internal/measurement/zzmq;Lcom/google/android/gms/internal/measurement/zzmq;)Lcom/google/android/gms/internal/measurement/zzmq;

    move-result-object p1

    goto :goto_1

    .line 186
    :cond_5
    check-cast v2, Lcom/google/android/gms/internal/measurement/zzml;

    .line 187
    invoke-interface {v2}, Lcom/google/android/gms/internal/measurement/zzml;->zzcj()Lcom/google/android/gms/internal/measurement/zzmk;

    move-result-object v1

    check-cast p1, Lcom/google/android/gms/internal/measurement/zzml;

    invoke-interface {v0, v1, p1}, Lcom/google/android/gms/internal/measurement/zzkx;->zza(Lcom/google/android/gms/internal/measurement/zzmk;Lcom/google/android/gms/internal/measurement/zzml;)Lcom/google/android/gms/internal/measurement/zzmk;

    move-result-object p1

    .line 188
    invoke-interface {p1}, Lcom/google/android/gms/internal/measurement/zzmk;->zzai()Lcom/google/android/gms/internal/measurement/zzml;

    move-result-object p1

    .line 189
    :goto_1
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzkv;->zza:Lcom/google/android/gms/internal/measurement/zzne;

    invoke-virtual {v1, v0, p1}, Lcom/google/android/gms/internal/measurement/zzne;->zza(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    return-void

    .line 181
    :cond_7
    check-cast p1, Lcom/google/android/gms/internal/measurement/zzlp;

    .line 182
    new-instance p1, Ljava/lang/NoSuchMethodError;

    invoke-direct {p1}, Ljava/lang/NoSuchMethodError;-><init>()V

    throw p1

    :cond_8
    if-nez v1, :cond_9

    .line 193
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzkv;->zza:Lcom/google/android/gms/internal/measurement/zzne;

    invoke-static {p1}, Lcom/google/android/gms/internal/measurement/zzkv;->zza(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v1, v0, p1}, Lcom/google/android/gms/internal/measurement/zzne;->zza(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 192
    :cond_9
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Lazy fields must be message-valued"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static zzb(Ljava/lang/Object;)Z
    .locals 1

    .line 326
    instance-of v0, p0, Lcom/google/android/gms/internal/measurement/zzmn;

    if-eqz v0, :cond_0

    .line 327
    check-cast p0, Lcom/google/android/gms/internal/measurement/zzmn;

    invoke-interface {p0}, Lcom/google/android/gms/internal/measurement/zzmn;->zzcn()Z

    move-result p0

    return p0

    .line 328
    :cond_0
    instance-of p0, p0, Lcom/google/android/gms/internal/measurement/zzlp;

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    return p0

    .line 330
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Wrong object type used with protocol message reflection."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static zzc(Lcom/google/android/gms/internal/measurement/zzkx;Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 213
    invoke-interface {p0}, Lcom/google/android/gms/internal/measurement/zzkx;->zzb()Lcom/google/android/gms/internal/measurement/zzof;

    move-result-object v0

    .line 214
    invoke-static {p1}, Lcom/google/android/gms/internal/measurement/zzle;->zza(Ljava/lang/Object;)Ljava/lang/Object;

    .line 215
    sget-object v1, Lcom/google/android/gms/internal/measurement/zzku;->zza:[I

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzof;->zzb()Lcom/google/android/gms/internal/measurement/zzop;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzop;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    :cond_0
    move v1, v2

    goto :goto_0

    .line 224
    :pswitch_0
    instance-of v0, p1, Lcom/google/android/gms/internal/measurement/zzml;

    if-nez v0, :cond_1

    instance-of v0, p1, Lcom/google/android/gms/internal/measurement/zzlp;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 223
    :pswitch_1
    instance-of v0, p1, Ljava/lang/Integer;

    if-nez v0, :cond_1

    instance-of v0, p1, Lcom/google/android/gms/internal/measurement/zzlh;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 222
    :pswitch_2
    instance-of v0, p1, Lcom/google/android/gms/internal/measurement/zzjs;

    if-nez v0, :cond_1

    instance-of v0, p1, [B

    if-eqz v0, :cond_0

    goto :goto_0

    .line 221
    :pswitch_3
    instance-of v1, p1, Ljava/lang/String;

    goto :goto_0

    .line 220
    :pswitch_4
    instance-of v1, p1, Ljava/lang/Boolean;

    goto :goto_0

    .line 219
    :pswitch_5
    instance-of v1, p1, Ljava/lang/Double;

    goto :goto_0

    .line 218
    :pswitch_6
    instance-of v1, p1, Ljava/lang/Float;

    goto :goto_0

    .line 217
    :pswitch_7
    instance-of v1, p1, Ljava/lang/Long;

    goto :goto_0

    .line 216
    :pswitch_8
    instance-of v1, p1, Ljava/lang/Integer;

    :cond_1
    :goto_0
    if-eqz v1, :cond_2

    return-void

    .line 227
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 228
    invoke-interface {p0}, Lcom/google/android/gms/internal/measurement/zzkx;->zza()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 229
    invoke-interface {p0}, Lcom/google/android/gms/internal/measurement/zzkx;->zzb()Lcom/google/android/gms/internal/measurement/zzof;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzof;->zzb()Lcom/google/android/gms/internal/measurement/zzop;

    move-result-object p0

    .line 230
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    filled-new-array {v1, p0, p1}, [Ljava/lang/Object;

    move-result-object p0

    .line 231
    const-string p1, "Wrong object type used with protocol message reflection.\nField number: %d, field java type: %s, value type: %s\n"

    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
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

.method private static zzc(Ljava/util/Map$Entry;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/google/android/gms/internal/measurement/zzkx<",
            "TT;>;>(",
            "Ljava/util/Map$Entry<",
            "TT;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .line 313
    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzkx;

    .line 314
    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zzkx;->zzc()Lcom/google/android/gms/internal/measurement/zzop;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/internal/measurement/zzop;->zzi:Lcom/google/android/gms/internal/measurement/zzop;

    if-ne v1, v2, :cond_2

    .line 315
    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zzkx;->zze()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 316
    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    .line 317
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    .line 319
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    .line 320
    invoke-static {v3}, Lcom/google/android/gms/internal/measurement/zzkv;->zzb(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    return v1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 324
    :cond_1
    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/internal/measurement/zzkv;->zzb(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_2
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public final synthetic clone()Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 83
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzkv;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/zzkv;-><init>()V

    .line 85
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzkv;->zza:Lcom/google/android/gms/internal/measurement/zzne;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzne;->zza()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 87
    iget-object v3, p0, Lcom/google/android/gms/internal/measurement/zzkv;->zza:Lcom/google/android/gms/internal/measurement/zzne;

    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/measurement/zzne;->zza(I)Ljava/util/Map$Entry;

    move-result-object v3

    .line 88
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/measurement/zzkx;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-direct {v0, v4, v3}, Lcom/google/android/gms/internal/measurement/zzkv;->zzb(Lcom/google/android/gms/internal/measurement/zzkx;Ljava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 90
    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzkv;->zza:Lcom/google/android/gms/internal/measurement/zzne;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzne;->zzb()Ljava/lang/Iterable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 91
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/measurement/zzkx;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-direct {v0, v3, v2}, Lcom/google/android/gms/internal/measurement/zzkv;->zzb(Lcom/google/android/gms/internal/measurement/zzkx;Ljava/lang/Object;)V

    goto :goto_1

    .line 93
    :cond_1
    iget-boolean v1, p0, Lcom/google/android/gms/internal/measurement/zzkv;->zzd:Z

    iput-boolean v1, v0, Lcom/google/android/gms/internal/measurement/zzkv;->zzd:Z

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    .line 298
    :cond_0
    instance-of v0, p1, Lcom/google/android/gms/internal/measurement/zzkv;

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return p1

    .line 300
    :cond_1
    check-cast p1, Lcom/google/android/gms/internal/measurement/zzkv;

    .line 301
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzkv;->zza:Lcom/google/android/gms/internal/measurement/zzne;

    iget-object p1, p1, Lcom/google/android/gms/internal/measurement/zzkv;->zza:Lcom/google/android/gms/internal/measurement/zzne;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/zzne;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final hashCode()I
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzkv;->zza:Lcom/google/android/gms/internal/measurement/zzne;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzne;->hashCode()I

    move-result v0

    return v0
.end method

.method public final zza()I
    .locals 4

    .line 59
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzkv;->zza:Lcom/google/android/gms/internal/measurement/zzne;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzne;->zza()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_0

    .line 61
    iget-object v3, p0, Lcom/google/android/gms/internal/measurement/zzkv;->zza:Lcom/google/android/gms/internal/measurement/zzne;

    invoke-virtual {v3, v1}, Lcom/google/android/gms/internal/measurement/zzne;->zza(I)Ljava/util/Map$Entry;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/gms/internal/measurement/zzkv;->zza(Ljava/util/Map$Entry;)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 63
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzkv;->zza:Lcom/google/android/gms/internal/measurement/zzne;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzne;->zzb()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 64
    invoke-static {v1}, Lcom/google/android/gms/internal/measurement/zzkv;->zza(Ljava/util/Map$Entry;)I

    move-result v1

    add-int/2addr v2, v1

    goto :goto_1

    :cond_1
    return v2
.end method

.method public final zza(Lcom/google/android/gms/internal/measurement/zzkv;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/measurement/zzkv<",
            "TT;>;)V"
        }
    .end annotation

    .line 149
    iget-object v0, p1, Lcom/google/android/gms/internal/measurement/zzkv;->zza:Lcom/google/android/gms/internal/measurement/zzne;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzne;->zza()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 151
    iget-object v2, p1, Lcom/google/android/gms/internal/measurement/zzkv;->zza:Lcom/google/android/gms/internal/measurement/zzne;

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/measurement/zzne;->zza(I)Ljava/util/Map$Entry;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/measurement/zzkv;->zzb(Ljava/util/Map$Entry;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 153
    :cond_0
    iget-object p1, p1, Lcom/google/android/gms/internal/measurement/zzkv;->zza:Lcom/google/android/gms/internal/measurement/zzne;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzne;->zzb()Ljava/lang/Iterable;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 154
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/measurement/zzkv;->zzb(Ljava/util/Map$Entry;)V

    goto :goto_1

    :cond_1
    return-void
.end method

.method final zzc()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TT;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .line 110
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzkv;->zza:Lcom/google/android/gms/internal/measurement/zzne;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzne;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 112
    invoke-static {}, Ljava/util/Collections;->emptyIterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0

    .line 113
    :cond_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/zzkv;->zzd:Z

    if-eqz v0, :cond_1

    .line 114
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzlq;

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzkv;->zza:Lcom/google/android/gms/internal/measurement/zzne;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzne;->zzc()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/measurement/zzlq;-><init>(Ljava/util/Iterator;)V

    return-object v0

    .line 115
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzkv;->zza:Lcom/google/android/gms/internal/measurement/zzne;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzne;->zzc()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public final zzd()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TT;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .line 117
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzkv;->zza:Lcom/google/android/gms/internal/measurement/zzne;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzne;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 119
    invoke-static {}, Ljava/util/Collections;->emptyIterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0

    .line 120
    :cond_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/zzkv;->zzd:Z

    if-eqz v0, :cond_1

    .line 121
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzlq;

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzkv;->zza:Lcom/google/android/gms/internal/measurement/zzne;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzne;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/measurement/zzlq;-><init>(Ljava/util/Iterator;)V

    return-object v0

    .line 122
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzkv;->zza:Lcom/google/android/gms/internal/measurement/zzne;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzne;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public final zze()V
    .locals 4

    .line 138
    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/zzkv;->zzc:Z

    if-eqz v0, :cond_0

    return-void

    .line 140
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzkv;->zza:Lcom/google/android/gms/internal/measurement/zzne;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzne;->zza()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    .line 142
    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/zzkv;->zza:Lcom/google/android/gms/internal/measurement/zzne;

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/measurement/zzne;->zza(I)Ljava/util/Map$Entry;

    move-result-object v2

    .line 143
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Lcom/google/android/gms/internal/measurement/zzlc;

    if-eqz v3, :cond_1

    .line 144
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/zzlc;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzlc;->zzcl()V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 146
    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzkv;->zza:Lcom/google/android/gms/internal/measurement/zzne;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzne;->zzd()V

    const/4 v0, 0x1

    .line 147
    iput-boolean v0, p0, Lcom/google/android/gms/internal/measurement/zzkv;->zzc:Z

    return-void
.end method

.method public final zzf()Z
    .locals 1

    .line 302
    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/zzkv;->zzc:Z

    return v0
.end method

.method public final zzg()Z
    .locals 4

    .line 303
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzkv;->zza:Lcom/google/android/gms/internal/measurement/zzne;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzne;->zza()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    .line 305
    iget-object v3, p0, Lcom/google/android/gms/internal/measurement/zzkv;->zza:Lcom/google/android/gms/internal/measurement/zzne;

    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/measurement/zzne;->zza(I)Ljava/util/Map$Entry;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/gms/internal/measurement/zzkv;->zzc(Ljava/util/Map$Entry;)Z

    move-result v3

    if-nez v3, :cond_0

    return v1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 308
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzkv;->zza:Lcom/google/android/gms/internal/measurement/zzne;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzne;->zzb()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 309
    invoke-static {v2}, Lcom/google/android/gms/internal/measurement/zzkv;->zzc(Ljava/util/Map$Entry;)Z

    move-result v2

    if-nez v2, :cond_2

    return v1

    :cond_3
    const/4 v0, 0x1

    return v0
.end method
