.class final Lcom/google/android/gms/internal/ads/zzyg;
.super Lcom/google/android/gms/internal/ads/zzyi;
.source "com.google.android.gms:play-services-ads@@24.2.0"

# interfaces
.implements Ljava/lang/Comparable;


# instance fields
.field private final zze:I

.field private final zzf:Z

.field private final zzg:Z

.field private final zzh:Z

.field private final zzi:I

.field private final zzj:I

.field private final zzk:I

.field private final zzl:I

.field private final zzm:Z


# direct methods
.method public constructor <init>(ILcom/google/android/gms/internal/ads/zzbm;ILcom/google/android/gms/internal/ads/zzyb;ILjava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzyi;-><init>(ILcom/google/android/gms/internal/ads/zzbm;I)V

    const/4 p1, 0x0

    invoke-static {p5, p1}, Lcom/google/android/gms/internal/ads/zzlv;->zza(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/google/android/gms/internal/ads/zzyg;->zzf:Z

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzyg;->zzd:Lcom/google/android/gms/internal/ads/zzz;

    .line 2
    iget p2, p2, Lcom/google/android/gms/internal/ads/zzz;->zze:I

    iget p3, p4, Lcom/google/android/gms/internal/ads/zzyb;->zzy:I

    and-int/lit8 p3, p2, 0x1

    const/4 v0, 0x1

    if-eq v0, p3, :cond_0

    move p3, p1

    goto :goto_0

    :cond_0
    move p3, v0

    :goto_0
    iput-boolean p3, p0, Lcom/google/android/gms/internal/ads/zzyg;->zzg:Z

    and-int/lit8 p2, p2, 0x2

    if-eqz p2, :cond_1

    move p2, v0

    goto :goto_1

    :cond_1
    move p2, p1

    :goto_1
    iput-boolean p2, p0, Lcom/google/android/gms/internal/ads/zzyg;->zzh:Z

    if-eqz p7, :cond_2

    .line 3
    invoke-static {p7}, Lcom/google/android/gms/internal/ads/zzfww;->zzo(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfww;

    move-result-object p2

    goto :goto_2

    .line 4
    :cond_2
    iget-object p2, p4, Lcom/google/android/gms/internal/ads/zzyb;->zzv:Lcom/google/android/gms/internal/ads/zzfww;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzfww;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_3

    const-string p2, ""

    .line 5
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzfww;->zzo(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfww;

    move-result-object p2

    goto :goto_2

    .line 6
    :cond_3
    iget-object p2, p4, Lcom/google/android/gms/internal/ads/zzyb;->zzv:Lcom/google/android/gms/internal/ads/zzfww;

    :goto_2
    move p3, p1

    .line 7
    :goto_3
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzfww;->size()I

    move-result v1

    if-ge p3, v1, :cond_5

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzyg;->zzd:Lcom/google/android/gms/internal/ads/zzz;

    .line 8
    invoke-virtual {p2, p3}, Lcom/google/android/gms/internal/ads/zzfww;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-boolean v3, p4, Lcom/google/android/gms/internal/ads/zzyb;->zzz:Z

    .line 9
    invoke-static {v1, v2, p1}, Lcom/google/android/gms/internal/ads/zzyn;->zzc(Lcom/google/android/gms/internal/ads/zzz;Ljava/lang/String;Z)I

    move-result v1

    if-lez v1, :cond_4

    goto :goto_4

    :cond_4
    add-int/lit8 p3, p3, 0x1

    goto :goto_3

    :cond_5
    const p3, 0x7fffffff

    move v1, p1

    :goto_4
    iput p3, p0, Lcom/google/android/gms/internal/ads/zzyg;->zzi:I

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzyg;->zzj:I

    const/16 p2, 0x440

    if-eqz p7, :cond_6

    move p3, p2

    goto :goto_5

    .line 10
    :cond_6
    iget p3, p4, Lcom/google/android/gms/internal/ads/zzyb;->zzw:I

    move p3, p1

    .line 9
    :goto_5
    iget-object p7, p0, Lcom/google/android/gms/internal/ads/zzyg;->zzd:Lcom/google/android/gms/internal/ads/zzz;

    .line 11
    iget p7, p7, Lcom/google/android/gms/internal/ads/zzz;->zzf:I

    invoke-static {p7, p3}, Lcom/google/android/gms/internal/ads/zzyn;->zzb(II)I

    move-result p3

    iput p3, p0, Lcom/google/android/gms/internal/ads/zzyg;->zzk:I

    iget-object p7, p0, Lcom/google/android/gms/internal/ads/zzyg;->zzd:Lcom/google/android/gms/internal/ads/zzz;

    .line 12
    iget p7, p7, Lcom/google/android/gms/internal/ads/zzz;->zzf:I

    and-int/2addr p2, p7

    if-eqz p2, :cond_7

    move p2, v0

    goto :goto_6

    :cond_7
    move p2, p1

    :goto_6
    iput-boolean p2, p0, Lcom/google/android/gms/internal/ads/zzyg;->zzm:Z

    .line 13
    invoke-static {p6}, Lcom/google/android/gms/internal/ads/zzyn;->zzh(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_8

    move p2, v0

    goto :goto_7

    :cond_8
    move p2, p1

    :goto_7
    iget-object p7, p0, Lcom/google/android/gms/internal/ads/zzyg;->zzd:Lcom/google/android/gms/internal/ads/zzz;

    .line 14
    invoke-static {p7, p6, p2}, Lcom/google/android/gms/internal/ads/zzyn;->zzc(Lcom/google/android/gms/internal/ads/zzz;Ljava/lang/String;Z)I

    move-result p2

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzyg;->zzl:I

    if-gtz v1, :cond_b

    .line 15
    iget-object p6, p4, Lcom/google/android/gms/internal/ads/zzyb;->zzv:Lcom/google/android/gms/internal/ads/zzfww;

    .line 16
    invoke-virtual {p6}, Lcom/google/android/gms/internal/ads/zzfww;->isEmpty()Z

    move-result p6

    if-eqz p6, :cond_9

    if-gtz p3, :cond_b

    :cond_9
    iget-boolean p3, p0, Lcom/google/android/gms/internal/ads/zzyg;->zzg:Z

    if-nez p3, :cond_b

    iget-boolean p3, p0, Lcom/google/android/gms/internal/ads/zzyg;->zzh:Z

    if-eqz p3, :cond_a

    if-lez p2, :cond_a

    goto :goto_8

    :cond_a
    move p2, p1

    goto :goto_9

    :cond_b
    :goto_8
    move p2, v0

    .line 17
    :goto_9
    iget-boolean p3, p4, Lcom/google/android/gms/internal/ads/zzyb;->zzR:Z

    invoke-static {p5, p3}, Lcom/google/android/gms/internal/ads/zzlv;->zza(IZ)Z

    move-result p3

    if-eqz p3, :cond_c

    if-eqz p2, :cond_c

    move p1, v0

    :cond_c
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzyg;->zze:I

    return-void
.end method


# virtual methods
.method public final bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/ads/zzyg;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzyg;->zza(Lcom/google/android/gms/internal/ads/zzyg;)I

    move-result p1

    return p1
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzyg;)I
    .locals 5

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfwl;->zzj()Lcom/google/android/gms/internal/ads/zzfwl;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzyg;->zzf:Z

    iget-boolean v2, p1, Lcom/google/android/gms/internal/ads/zzyg;->zzf:Z

    .line 2
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzfwl;->zzd(ZZ)Lcom/google/android/gms/internal/ads/zzfwl;

    move-result-object v0

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzyg;->zzi:I

    .line 3
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p1, Lcom/google/android/gms/internal/ads/zzyg;->zzi:I

    .line 4
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfyh;->zzc()Lcom/google/android/gms/internal/ads/zzfyh;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzfyh;->zza()Lcom/google/android/gms/internal/ads/zzfyh;

    move-result-object v3

    .line 5
    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzfwl;->zzc(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lcom/google/android/gms/internal/ads/zzfwl;

    move-result-object v0

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzyg;->zzj:I

    iget v2, p1, Lcom/google/android/gms/internal/ads/zzyg;->zzj:I

    .line 6
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzfwl;->zzb(II)Lcom/google/android/gms/internal/ads/zzfwl;

    move-result-object v0

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzyg;->zzk:I

    iget v3, p1, Lcom/google/android/gms/internal/ads/zzyg;->zzk:I

    .line 7
    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/ads/zzfwl;->zzb(II)Lcom/google/android/gms/internal/ads/zzfwl;

    move-result-object v0

    iget-boolean v3, p0, Lcom/google/android/gms/internal/ads/zzyg;->zzg:Z

    iget-boolean v4, p1, Lcom/google/android/gms/internal/ads/zzyg;->zzg:Z

    .line 8
    invoke-virtual {v0, v3, v4}, Lcom/google/android/gms/internal/ads/zzfwl;->zzd(ZZ)Lcom/google/android/gms/internal/ads/zzfwl;

    move-result-object v0

    iget-boolean v3, p0, Lcom/google/android/gms/internal/ads/zzyg;->zzh:Z

    .line 9
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iget-boolean v4, p1, Lcom/google/android/gms/internal/ads/zzyg;->zzh:Z

    .line 10
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    if-nez v1, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfyh;->zzc()Lcom/google/android/gms/internal/ads/zzfyh;

    move-result-object v1

    goto :goto_0

    .line 13
    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfyh;->zzc()Lcom/google/android/gms/internal/ads/zzfyh;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzfyh;->zza()Lcom/google/android/gms/internal/ads/zzfyh;

    move-result-object v1

    .line 11
    :goto_0
    invoke-virtual {v0, v3, v4, v1}, Lcom/google/android/gms/internal/ads/zzfwl;->zzc(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lcom/google/android/gms/internal/ads/zzfwl;

    move-result-object v0

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzyg;->zzl:I

    iget v3, p1, Lcom/google/android/gms/internal/ads/zzyg;->zzl:I

    .line 12
    invoke-virtual {v0, v1, v3}, Lcom/google/android/gms/internal/ads/zzfwl;->zzb(II)Lcom/google/android/gms/internal/ads/zzfwl;

    move-result-object v0

    if-nez v2, :cond_1

    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzyg;->zzm:Z

    .line 13
    iget-boolean p1, p1, Lcom/google/android/gms/internal/ads/zzyg;->zzm:Z

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzfwl;->zze(ZZ)Lcom/google/android/gms/internal/ads/zzfwl;

    move-result-object v0

    :cond_1
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfwl;->zza()I

    move-result p1

    return p1
.end method

.method public final zzb()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzyg;->zze:I

    return v0
.end method

.method public final bridge synthetic zzc(Lcom/google/android/gms/internal/ads/zzyi;)Z
    .locals 0

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/ads/zzyg;

    const/4 p1, 0x0

    return p1
.end method
