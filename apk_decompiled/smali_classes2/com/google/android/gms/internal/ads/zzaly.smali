.class public final Lcom/google/android/gms/internal/ads/zzaly;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.2.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzamg;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzej;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzek;

.field private final zzc:Ljava/lang/String;

.field private final zzd:I

.field private final zze:Ljava/lang/String;

.field private zzf:Ljava/lang/String;

.field private zzg:Lcom/google/android/gms/internal/ads/zzaei;

.field private zzh:I

.field private zzi:I

.field private zzj:Z

.field private zzk:J

.field private zzl:Lcom/google/android/gms/internal/ads/zzz;

.field private zzm:I

.field private zzn:J


# direct methods
.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzej;

    const/16 v1, 0x80

    new-array v2, v1, [B

    invoke-direct {v0, v2, v1}, Lcom/google/android/gms/internal/ads/zzej;-><init>([BI)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzaly;->zza:Lcom/google/android/gms/internal/ads/zzej;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzek;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzej;->zza:[B

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ads/zzek;-><init>([B)V

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzaly;->zzb:Lcom/google/android/gms/internal/ads/zzek;

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzaly;->zzh:I

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzaly;->zzn:J

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaly;->zzc:Ljava/lang/String;

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzaly;->zzd:I

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzaly;->zze:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzek;)V
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaly;->zzg:Lcom/google/android/gms/internal/ads/zzaei;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdc;->zzb(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzek;->zza()I

    move-result v0

    if-lez v0, :cond_b

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzaly;->zzh:I

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_6

    if-eq v0, v2, :cond_2

    .line 8
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzek;->zza()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzaly;->zzm:I

    iget v4, p0, Lcom/google/android/gms/internal/ads/zzaly;->zzi:I

    sub-int/2addr v1, v4

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaly;->zzg:Lcom/google/android/gms/internal/ads/zzaei;

    .line 9
    invoke-interface {v1, p1, v0}, Lcom/google/android/gms/internal/ads/zzaei;->zzr(Lcom/google/android/gms/internal/ads/zzek;I)V

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzaly;->zzi:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzaly;->zzi:I

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzaly;->zzm:I

    if-ne v1, v0, :cond_0

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzaly;->zzn:J

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v0, v4

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    move v2, v3

    .line 10
    :goto_1
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzdc;->zzf(Z)V

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzaly;->zzg:Lcom/google/android/gms/internal/ads/zzaei;

    iget-wide v5, p0, Lcom/google/android/gms/internal/ads/zzaly;->zzn:J

    iget v8, p0, Lcom/google/android/gms/internal/ads/zzaly;->zzm:I

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v7, 0x1

    .line 11
    invoke-interface/range {v4 .. v10}, Lcom/google/android/gms/internal/ads/zzaei;->zzt(JIIILcom/google/android/gms/internal/ads/zzaeh;)V

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzaly;->zzn:J

    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/zzaly;->zzk:J

    add-long/2addr v0, v4

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzaly;->zzn:J

    iput v3, p0, Lcom/google/android/gms/internal/ads/zzaly;->zzh:I

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaly;->zzb:Lcom/google/android/gms/internal/ads/zzek;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzek;->zzN()[B

    move-result-object v2

    .line 12
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzek;->zza()I

    move-result v4

    iget v5, p0, Lcom/google/android/gms/internal/ads/zzaly;->zzi:I

    const/16 v6, 0x80

    rsub-int v5, v5, 0x80

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    iget v5, p0, Lcom/google/android/gms/internal/ads/zzaly;->zzi:I

    .line 13
    invoke-virtual {p1, v2, v5, v4}, Lcom/google/android/gms/internal/ads/zzek;->zzH([BII)V

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzaly;->zzi:I

    add-int/2addr v2, v4

    iput v2, p0, Lcom/google/android/gms/internal/ads/zzaly;->zzi:I

    if-ne v2, v6, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzaly;->zza:Lcom/google/android/gms/internal/ads/zzej;

    .line 14
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzej;->zzl(I)V

    .line 15
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzacb;->zze(Lcom/google/android/gms/internal/ads/zzej;)Lcom/google/android/gms/internal/ads/zzabz;

    move-result-object v2

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzaly;->zzl:Lcom/google/android/gms/internal/ads/zzz;

    if-eqz v4, :cond_3

    iget v5, v2, Lcom/google/android/gms/internal/ads/zzabz;->zzc:I

    iget v7, v4, Lcom/google/android/gms/internal/ads/zzz;->zzE:I

    if-ne v5, v7, :cond_3

    iget v5, v2, Lcom/google/android/gms/internal/ads/zzabz;->zzb:I

    iget v7, v4, Lcom/google/android/gms/internal/ads/zzz;->zzF:I

    if-ne v5, v7, :cond_3

    iget-object v5, v2, Lcom/google/android/gms/internal/ads/zzabz;->zza:Ljava/lang/String;

    iget-object v4, v4, Lcom/google/android/gms/internal/ads/zzz;->zzo:Ljava/lang/String;

    .line 16
    invoke-static {v5, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    :cond_3
    new-instance v4, Lcom/google/android/gms/internal/ads/zzx;

    .line 17
    invoke-direct {v4}, Lcom/google/android/gms/internal/ads/zzx;-><init>()V

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzaly;->zzf:Ljava/lang/String;

    .line 18
    invoke-virtual {v4, v5}, Lcom/google/android/gms/internal/ads/zzx;->zzO(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzx;

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzaly;->zze:Ljava/lang/String;

    .line 19
    invoke-virtual {v4, v5}, Lcom/google/android/gms/internal/ads/zzx;->zzE(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzx;

    iget-object v5, v2, Lcom/google/android/gms/internal/ads/zzabz;->zza:Ljava/lang/String;

    .line 20
    invoke-virtual {v4, v5}, Lcom/google/android/gms/internal/ads/zzx;->zzad(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzx;

    iget v7, v2, Lcom/google/android/gms/internal/ads/zzabz;->zzc:I

    .line 21
    invoke-virtual {v4, v7}, Lcom/google/android/gms/internal/ads/zzx;->zzB(I)Lcom/google/android/gms/internal/ads/zzx;

    iget v7, v2, Lcom/google/android/gms/internal/ads/zzabz;->zzb:I

    .line 22
    invoke-virtual {v4, v7}, Lcom/google/android/gms/internal/ads/zzx;->zzae(I)Lcom/google/android/gms/internal/ads/zzx;

    iget-object v7, p0, Lcom/google/android/gms/internal/ads/zzaly;->zzc:Ljava/lang/String;

    .line 23
    invoke-virtual {v4, v7}, Lcom/google/android/gms/internal/ads/zzx;->zzS(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzx;

    iget v7, p0, Lcom/google/android/gms/internal/ads/zzaly;->zzd:I

    .line 24
    invoke-virtual {v4, v7}, Lcom/google/android/gms/internal/ads/zzx;->zzab(I)Lcom/google/android/gms/internal/ads/zzx;

    iget v7, v2, Lcom/google/android/gms/internal/ads/zzabz;->zzf:I

    .line 25
    invoke-virtual {v4, v7}, Lcom/google/android/gms/internal/ads/zzx;->zzY(I)Lcom/google/android/gms/internal/ads/zzx;

    const-string v8, "audio/ac3"

    .line 26
    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 27
    invoke-virtual {v4, v7}, Lcom/google/android/gms/internal/ads/zzx;->zzA(I)Lcom/google/android/gms/internal/ads/zzx;

    .line 28
    :cond_4
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzx;->zzaj()Lcom/google/android/gms/internal/ads/zzz;

    move-result-object v4

    iput-object v4, p0, Lcom/google/android/gms/internal/ads/zzaly;->zzl:Lcom/google/android/gms/internal/ads/zzz;

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzaly;->zzg:Lcom/google/android/gms/internal/ads/zzaei;

    .line 29
    invoke-interface {v5, v4}, Lcom/google/android/gms/internal/ads/zzaei;->zzm(Lcom/google/android/gms/internal/ads/zzz;)V

    :cond_5
    iget v4, v2, Lcom/google/android/gms/internal/ads/zzabz;->zzd:I

    iput v4, p0, Lcom/google/android/gms/internal/ads/zzaly;->zzm:I

    iget v2, v2, Lcom/google/android/gms/internal/ads/zzabz;->zze:I

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzaly;->zzl:Lcom/google/android/gms/internal/ads/zzz;

    .line 30
    iget v4, v4, Lcom/google/android/gms/internal/ads/zzz;->zzF:I

    int-to-long v7, v2

    const-wide/32 v9, 0xf4240

    mul-long/2addr v7, v9

    int-to-long v4, v4

    div-long/2addr v7, v4

    iput-wide v7, p0, Lcom/google/android/gms/internal/ads/zzaly;->zzk:J

    .line 31
    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/zzek;->zzL(I)V

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzaly;->zzg:Lcom/google/android/gms/internal/ads/zzaei;

    .line 32
    invoke-interface {v2, v0, v6}, Lcom/google/android/gms/internal/ads/zzaei;->zzr(Lcom/google/android/gms/internal/ads/zzek;I)V

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzaly;->zzh:I

    goto/16 :goto_0

    .line 3
    :cond_6
    :goto_2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzek;->zza()I

    move-result v0

    if-lez v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzaly;->zzj:Z

    const/16 v4, 0xb

    if-nez v0, :cond_8

    .line 4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzek;->zzm()I

    move-result v0

    if-ne v0, v4, :cond_7

    move v0, v2

    goto :goto_3

    :cond_7
    move v0, v3

    :goto_3
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzaly;->zzj:Z

    goto :goto_2

    .line 5
    :cond_8
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzek;->zzm()I

    move-result v0

    const/16 v5, 0x77

    if-ne v0, v5, :cond_9

    iput-boolean v3, p0, Lcom/google/android/gms/internal/ads/zzaly;->zzj:Z

    iput v2, p0, Lcom/google/android/gms/internal/ads/zzaly;->zzh:I

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaly;->zzb:Lcom/google/android/gms/internal/ads/zzek;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzek;->zzN()[B

    move-result-object v6

    .line 6
    aput-byte v4, v6, v3

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzek;->zzN()[B

    move-result-object v0

    .line 7
    aput-byte v5, v0, v2

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzaly;->zzi:I

    goto/16 :goto_0

    :cond_9
    if-ne v0, v4, :cond_a

    move v0, v2

    goto :goto_4

    :cond_a
    move v0, v3

    :goto_4
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzaly;->zzj:Z

    goto :goto_2

    :cond_b
    return-void
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzadf;Lcom/google/android/gms/internal/ads/zzanu;)V
    .locals 1

    .line 1
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzanu;->zzc()V

    .line 2
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzanu;->zzb()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzaly;->zzf:Ljava/lang/String;

    .line 3
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzanu;->zza()I

    move-result p2

    const/4 v0, 0x1

    invoke-interface {p1, p2, v0}, Lcom/google/android/gms/internal/ads/zzadf;->zzw(II)Lcom/google/android/gms/internal/ads/zzaei;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaly;->zzg:Lcom/google/android/gms/internal/ads/zzaei;

    return-void
.end method

.method public final zzc(Z)V
    .locals 0

    return-void
.end method

.method public final zzd(JI)V
    .locals 0

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzaly;->zzn:J

    return-void
.end method

.method public final zze()V
    .locals 2

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzaly;->zzh:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzaly;->zzi:I

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzaly;->zzj:Z

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzaly;->zzn:J

    return-void
.end method
