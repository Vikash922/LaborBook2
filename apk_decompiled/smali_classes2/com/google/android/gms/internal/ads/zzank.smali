.class public final Lcom/google/android/gms/internal/ads/zzank;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.2.0"


# instance fields
.field private final zza:Ljava/util/List;

.field private final zzb:Ljava/lang/String;

.field private final zzc:[Lcom/google/android/gms/internal/ads/zzaei;

.field private final zzd:Lcom/google/android/gms/internal/ads/zzfu;


# direct methods
.method public constructor <init>(Ljava/util/List;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzank;->zza:Ljava/util/List;

    const-string p2, "video/mp2t"

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzank;->zzb:Ljava/lang/String;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [Lcom/google/android/gms/internal/ads/zzaei;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzank;->zzc:[Lcom/google/android/gms/internal/ads/zzaei;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzfu;

    new-instance p2, Lcom/google/android/gms/internal/ads/zzanj;

    .line 2
    invoke-direct {p2, p0}, Lcom/google/android/gms/internal/ads/zzanj;-><init>(Lcom/google/android/gms/internal/ads/zzank;)V

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/zzfu;-><init>(Lcom/google/android/gms/internal/ads/zzft;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzank;->zzd:Lcom/google/android/gms/internal/ads/zzfu;

    return-void
.end method

.method public static synthetic zza(Lcom/google/android/gms/internal/ads/zzank;JLcom/google/android/gms/internal/ads/zzek;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzank;->zzc:[Lcom/google/android/gms/internal/ads/zzaei;

    invoke-static {p1, p2, p3, p0}, Lcom/google/android/gms/internal/ads/zzaco;->zza(JLcom/google/android/gms/internal/ads/zzek;[Lcom/google/android/gms/internal/ads/zzaei;)V

    return-void
.end method


# virtual methods
.method public final zzb()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzank;->zzd:Lcom/google/android/gms/internal/ads/zzfu;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfu;->zzd()V

    return-void
.end method

.method public final zzc(JLcom/google/android/gms/internal/ads/zzek;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzank;->zzd:Lcom/google/android/gms/internal/ads/zzfu;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzfu;->zzb(JLcom/google/android/gms/internal/ads/zzek;)V

    return-void
.end method

.method public final zzd(Lcom/google/android/gms/internal/ads/zzadf;Lcom/google/android/gms/internal/ads/zzanu;)V
    .locals 9

    const/4 v0, 0x0

    move v1, v0

    .line 1
    :goto_0
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzank;->zzc:[Lcom/google/android/gms/internal/ads/zzaei;

    array-length v3, v2

    if-ge v1, v3, :cond_3

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzanu;->zzc()V

    .line 2
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzanu;->zza()I

    move-result v3

    const/4 v4, 0x3

    invoke-interface {p1, v3, v4}, Lcom/google/android/gms/internal/ads/zzadf;->zzw(II)Lcom/google/android/gms/internal/ads/zzaei;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzank;->zza:Ljava/util/List;

    .line 3
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/ads/zzz;

    .line 4
    iget-object v5, v4, Lcom/google/android/gms/internal/ads/zzz;->zzo:Ljava/lang/String;

    const-string v6, "application/cea-608"

    .line 5
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    const/4 v7, 0x1

    if-nez v6, :cond_1

    const-string v6, "application/cea-708"

    .line 6
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    goto :goto_1

    :cond_0
    move v7, v0

    :cond_1
    :goto_1
    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const-string v8, "Invalid closed caption MIME type provided: "

    invoke-virtual {v8, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 7
    invoke-static {v7, v6}, Lcom/google/android/gms/internal/ads/zzdc;->zze(ZLjava/lang/Object;)V

    .line 8
    iget-object v6, v4, Lcom/google/android/gms/internal/ads/zzz;->zza:Ljava/lang/String;

    if-nez v6, :cond_2

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzanu;->zzb()Ljava/lang/String;

    move-result-object v6

    :cond_2
    new-instance v7, Lcom/google/android/gms/internal/ads/zzx;

    .line 9
    invoke-direct {v7}, Lcom/google/android/gms/internal/ads/zzx;-><init>()V

    .line 10
    invoke-virtual {v7, v6}, Lcom/google/android/gms/internal/ads/zzx;->zzO(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzx;

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzank;->zzb:Ljava/lang/String;

    .line 11
    invoke-virtual {v7, v6}, Lcom/google/android/gms/internal/ads/zzx;->zzE(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzx;

    .line 12
    invoke-virtual {v7, v5}, Lcom/google/android/gms/internal/ads/zzx;->zzad(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzx;

    iget v5, v4, Lcom/google/android/gms/internal/ads/zzz;->zze:I

    .line 13
    invoke-virtual {v7, v5}, Lcom/google/android/gms/internal/ads/zzx;->zzaf(I)Lcom/google/android/gms/internal/ads/zzx;

    iget-object v5, v4, Lcom/google/android/gms/internal/ads/zzz;->zzd:Ljava/lang/String;

    .line 14
    invoke-virtual {v7, v5}, Lcom/google/android/gms/internal/ads/zzx;->zzS(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzx;

    iget v5, v4, Lcom/google/android/gms/internal/ads/zzz;->zzJ:I

    .line 15
    invoke-virtual {v7, v5}, Lcom/google/android/gms/internal/ads/zzx;->zzz(I)Lcom/google/android/gms/internal/ads/zzx;

    iget-object v4, v4, Lcom/google/android/gms/internal/ads/zzz;->zzr:Ljava/util/List;

    .line 16
    invoke-virtual {v7, v4}, Lcom/google/android/gms/internal/ads/zzx;->zzP(Ljava/util/List;)Lcom/google/android/gms/internal/ads/zzx;

    .line 17
    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/zzx;->zzaj()Lcom/google/android/gms/internal/ads/zzz;

    move-result-object v4

    .line 9
    invoke-interface {v3, v4}, Lcom/google/android/gms/internal/ads/zzaei;->zzm(Lcom/google/android/gms/internal/ads/zzz;)V

    .line 18
    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public final zze()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzank;->zzd:Lcom/google/android/gms/internal/ads/zzfu;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfu;->zzd()V

    return-void
.end method

.method public final zzf(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzank;->zzd:Lcom/google/android/gms/internal/ads/zzfu;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzfu;->zze(I)V

    return-void
.end method
