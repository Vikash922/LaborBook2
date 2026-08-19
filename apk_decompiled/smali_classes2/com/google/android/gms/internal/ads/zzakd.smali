.class final Lcom/google/android/gms/internal/ads/zzakd;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.2.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzaei;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzaei;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzajy;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzek;

.field private zzd:I

.field private zze:I

.field private zzf:[B

.field private zzg:Lcom/google/android/gms/internal/ads/zzaka;

.field private zzh:Lcom/google/android/gms/internal/ads/zzz;

.field private zzi:Z


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzaei;Lcom/google/android/gms/internal/ads/zzajy;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzakd;->zza:Lcom/google/android/gms/internal/ads/zzaei;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzakd;->zzb:Lcom/google/android/gms/internal/ads/zzajy;

    const/4 p1, 0x0

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzakd;->zzd:I

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzakd;->zze:I

    sget-object p1, Lcom/google/android/gms/internal/ads/zzeu;->zzc:[B

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzakd;->zzf:[B

    .line 2
    new-instance p1, Lcom/google/android/gms/internal/ads/zzek;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzek;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzakd;->zzc:Lcom/google/android/gms/internal/ads/zzek;

    return-void
.end method

.method public static synthetic zza(Lcom/google/android/gms/internal/ads/zzakd;JILcom/google/android/gms/internal/ads/zzajs;)V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzakd;->zzh:Lcom/google/android/gms/internal/ads/zzz;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdc;->zzb(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-object v0, p4, Lcom/google/android/gms/internal/ads/zzajs;->zza:Lcom/google/android/gms/internal/ads/zzfww;

    iget-wide v1, p4, Lcom/google/android/gms/internal/ads/zzajs;->zzc:J

    new-instance v3, Ljava/util/ArrayList;

    .line 3
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 4
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 5
    check-cast v4, Lcom/google/android/gms/internal/ads/zzcu;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzcu;->zza()Landroid/os/Bundle;

    move-result-object v4

    .line 6
    move-object v5, v4

    check-cast v5, Landroid/os/Bundle;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/os/Bundle;

    .line 7
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v4, "c"

    .line 8
    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    const-string v3, "d"

    .line 9
    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 10
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 11
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 12
    invoke-virtual {v1}, Landroid/os/Parcel;->marshall()[B

    move-result-object v0

    .line 13
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzakd;->zzc:Lcom/google/android/gms/internal/ads/zzek;

    .line 14
    array-length v6, v0

    invoke-virtual {v1, v0, v6}, Lcom/google/android/gms/internal/ads/zzek;->zzJ([BI)V

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzakd;->zza:Lcom/google/android/gms/internal/ads/zzaei;

    .line 15
    invoke-interface {v2, v1, v6}, Lcom/google/android/gms/internal/ads/zzaei;->zzr(Lcom/google/android/gms/internal/ads/zzek;I)V

    .line 16
    iget-wide v0, p4, Lcom/google/android/gms/internal/ads/zzajs;->zzb:J

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p4, v0, v3

    const/4 v3, 0x1

    const-wide v4, 0x7fffffffffffffffL

    if-nez p4, :cond_2

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzakd;->zzh:Lcom/google/android/gms/internal/ads/zzz;

    .line 17
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzz;->zzt:J

    cmp-long p0, v0, v4

    if-nez p0, :cond_1

    move p0, v3

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    :goto_1
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzdc;->zzf(Z)V

    goto :goto_2

    .line 19
    :cond_2
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzakd;->zzh:Lcom/google/android/gms/internal/ads/zzz;

    .line 18
    iget-wide v7, p0, Lcom/google/android/gms/internal/ads/zzz;->zzt:J

    cmp-long p0, v7, v4

    if-nez p0, :cond_3

    add-long/2addr p1, v0

    goto :goto_2

    :cond_3
    add-long p1, v0, v7

    :goto_2
    or-int/lit8 v5, p3, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-wide v3, p1

    .line 19
    invoke-interface/range {v2 .. v8}, Lcom/google/android/gms/internal/ads/zzaei;->zzt(JIIILcom/google/android/gms/internal/ads/zzaeh;)V

    return-void
.end method

.method private final zzc(I)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzakd;->zzf:[B

    array-length v0, v0

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzakd;->zze:I

    sub-int/2addr v0, v1

    if-lt v0, p1, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzakd;->zzd:I

    sub-int/2addr v1, v0

    add-int v0, v1, v1

    add-int/2addr p1, v1

    .line 2
    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzakd;->zzf:[B

    .line 3
    array-length v2, v0

    if-gt p1, v2, :cond_1

    move-object p1, v0

    goto :goto_0

    .line 4
    :cond_1
    new-array p1, p1, [B

    .line 3
    :goto_0
    iget v2, p0, Lcom/google/android/gms/internal/ads/zzakd;->zzd:I

    const/4 v3, 0x0

    .line 4
    invoke-static {v0, v2, p1, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput v3, p0, Lcom/google/android/gms/internal/ads/zzakd;->zzd:I

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzakd;->zze:I

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzakd;->zzf:[B

    return-void
.end method


# virtual methods
.method public final zzb(Z)V
    .locals 0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzakd;->zzi:Z

    return-void
.end method

.method public final synthetic zzf(Lcom/google/android/gms/internal/ads/zzl;IZ)I
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzaeg;->zza(Lcom/google/android/gms/internal/ads/zzaei;Lcom/google/android/gms/internal/ads/zzl;IZ)I

    move-result p1

    return p1
.end method

.method public final zzg(Lcom/google/android/gms/internal/ads/zzl;IZI)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object p4, p0, Lcom/google/android/gms/internal/ads/zzakd;->zzg:Lcom/google/android/gms/internal/ads/zzaka;

    if-nez p4, :cond_0

    iget-object p4, p0, Lcom/google/android/gms/internal/ads/zzakd;->zza:Lcom/google/android/gms/internal/ads/zzaei;

    const/4 v0, 0x0

    invoke-interface {p4, p1, p2, p3, v0}, Lcom/google/android/gms/internal/ads/zzaei;->zzg(Lcom/google/android/gms/internal/ads/zzl;IZI)I

    move-result p1

    return p1

    .line 2
    :cond_0
    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/ads/zzakd;->zzc(I)V

    iget-object p4, p0, Lcom/google/android/gms/internal/ads/zzakd;->zzf:[B

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzakd;->zze:I

    .line 3
    invoke-interface {p1, p4, v0, p2}, Lcom/google/android/gms/internal/ads/zzl;->zza([BII)I

    move-result p1

    const/4 p2, -0x1

    if-ne p1, p2, :cond_2

    if-eqz p3, :cond_1

    return p2

    .line 4
    :cond_1
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1

    :cond_2
    iget p2, p0, Lcom/google/android/gms/internal/ads/zzakd;->zze:I

    add-int/2addr p2, p1

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzakd;->zze:I

    return p1
.end method

.method public final synthetic zzl(J)V
    .locals 0

    return-void
.end method

.method public final zzm(Lcom/google/android/gms/internal/ads/zzz;)V
    .locals 5

    .line 1
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzz;->zzo:Ljava/lang/String;

    .line 14
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzay;->zzb(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzdc;->zzd(Z)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzakd;->zzh:Lcom/google/android/gms/internal/ads/zzz;

    .line 3
    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/ads/zzz;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzakd;->zzh:Lcom/google/android/gms/internal/ads/zzz;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzakd;->zzb:Lcom/google/android/gms/internal/ads/zzajy;

    .line 4
    invoke-interface {v1, p1}, Lcom/google/android/gms/internal/ads/zzajy;->zzc(Lcom/google/android/gms/internal/ads/zzz;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 5
    invoke-interface {v1, p1}, Lcom/google/android/gms/internal/ads/zzajy;->zzb(Lcom/google/android/gms/internal/ads/zzz;)Lcom/google/android/gms/internal/ads/zzaka;

    move-result-object v1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzakd;->zzg:Lcom/google/android/gms/internal/ads/zzaka;

    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzakd;->zzg:Lcom/google/android/gms/internal/ads/zzaka;

    if-nez v1, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzakd;->zza:Lcom/google/android/gms/internal/ads/zzaei;

    .line 6
    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzaei;->zzm(Lcom/google/android/gms/internal/ads/zzz;)V

    return-void

    :cond_3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzakd;->zza:Lcom/google/android/gms/internal/ads/zzaei;

    .line 7
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzz;->zzb()Lcom/google/android/gms/internal/ads/zzx;

    move-result-object v2

    const-string v3, "application/x-media3-cues"

    .line 8
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzx;->zzad(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzx;

    .line 9
    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/zzx;->zzC(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzx;

    const-wide v3, 0x7fffffffffffffffL

    .line 10
    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzx;->zzah(J)Lcom/google/android/gms/internal/ads/zzx;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzakd;->zzb:Lcom/google/android/gms/internal/ads/zzajy;

    .line 11
    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzajy;->zza(Lcom/google/android/gms/internal/ads/zzz;)I

    move-result p1

    invoke-virtual {v2, p1}, Lcom/google/android/gms/internal/ads/zzx;->zzG(I)Lcom/google/android/gms/internal/ads/zzx;

    .line 12
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzx;->zzaj()Lcom/google/android/gms/internal/ads/zzz;

    move-result-object p1

    .line 13
    invoke-interface {v1, p1}, Lcom/google/android/gms/internal/ads/zzaei;->zzm(Lcom/google/android/gms/internal/ads/zzz;)V

    return-void
.end method

.method public final synthetic zzr(Lcom/google/android/gms/internal/ads/zzek;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzaeg;->zzb(Lcom/google/android/gms/internal/ads/zzaei;Lcom/google/android/gms/internal/ads/zzek;I)V

    return-void
.end method

.method public final zzs(Lcom/google/android/gms/internal/ads/zzek;II)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzakd;->zzg:Lcom/google/android/gms/internal/ads/zzaka;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzakd;->zza:Lcom/google/android/gms/internal/ads/zzaei;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzaei;->zzs(Lcom/google/android/gms/internal/ads/zzek;II)V

    return-void

    .line 2
    :cond_0
    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/ads/zzakd;->zzc(I)V

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzakd;->zzf:[B

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzakd;->zze:I

    .line 3
    invoke-virtual {p1, p3, v0, p2}, Lcom/google/android/gms/internal/ads/zzek;->zzH([BII)V

    iget p1, p0, Lcom/google/android/gms/internal/ads/zzakd;->zze:I

    add-int/2addr p1, p2

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzakd;->zze:I

    return-void
.end method

.method public final zzt(JIIILcom/google/android/gms/internal/ads/zzaeh;)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzakd;->zzg:Lcom/google/android/gms/internal/ads/zzaka;

    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzakd;->zza:Lcom/google/android/gms/internal/ads/zzaei;

    move-wide v2, p1

    move v4, p3

    move v5, p4

    move v6, p5

    move-object v7, p6

    invoke-interface/range {v1 .. v7}, Lcom/google/android/gms/internal/ads/zzaei;->zzt(JIIILcom/google/android/gms/internal/ads/zzaeh;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    if-nez p6, :cond_1

    const/4 p6, 0x1

    goto :goto_0

    :cond_1
    move p6, v0

    :goto_0
    const-string v1, "DRM on subtitles is not supported"

    .line 2
    invoke-static {p6, v1}, Lcom/google/android/gms/internal/ads/zzdc;->zze(ZLjava/lang/Object;)V

    iget p6, p0, Lcom/google/android/gms/internal/ads/zzakd;->zze:I

    sub-int/2addr p6, p5

    sub-int/2addr p6, p4

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzakd;->zzg:Lcom/google/android/gms/internal/ads/zzaka;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzakd;->zzf:[B

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzajz;->zza()Lcom/google/android/gms/internal/ads/zzajz;

    move-result-object v5

    new-instance v6, Lcom/google/android/gms/internal/ads/zzakc;

    invoke-direct {v6, p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzakc;-><init>(Lcom/google/android/gms/internal/ads/zzakd;JI)V

    move v3, p6

    move v4, p4

    .line 3
    invoke-interface/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/zzaka;->zza([BIILcom/google/android/gms/internal/ads/zzajz;Lcom/google/android/gms/internal/ads/zzdk;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    iget-boolean p2, p0, Lcom/google/android/gms/internal/ads/zzakd;->zzi:Z

    if-eqz p2, :cond_3

    .line 5
    const-string p2, "SubtitleTranscodingTO"

    const-string p3, "Parsing subtitles failed, ignoring sample."

    .line 4
    invoke-static {p2, p3, p1}, Lcom/google/android/gms/internal/ads/zzdx;->zzg(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    add-int/2addr p6, p4

    .line 3
    iput p6, p0, Lcom/google/android/gms/internal/ads/zzakd;->zzd:I

    iget p1, p0, Lcom/google/android/gms/internal/ads/zzakd;->zze:I

    if-ne p6, p1, :cond_2

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzakd;->zzd:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzakd;->zze:I

    :cond_2
    return-void

    .line 5
    :cond_3
    throw p1
.end method
