.class final Lcom/google/android/gms/internal/ads/zzanf;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.2.0"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzamg;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzer;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzej;

.field private zzd:Z

.field private zze:Z

.field private zzf:Z


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzamg;Lcom/google/android/gms/internal/ads/zzer;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzanf;->zza:Lcom/google/android/gms/internal/ads/zzamg;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzanf;->zzb:Lcom/google/android/gms/internal/ads/zzer;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzej;

    const/16 p2, 0x40

    new-array v0, p2, [B

    invoke-direct {p1, v0, p2}, Lcom/google/android/gms/internal/ads/zzej;-><init>([BI)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzanf;->zzc:Lcom/google/android/gms/internal/ads/zzej;

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzek;)V
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzaz;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzanf;->zzc:Lcom/google/android/gms/internal/ads/zzej;

    iget-object v3, v2, Lcom/google/android/gms/internal/ads/zzej;->zza:[B

    const/4 v4, 0x0

    const/4 v5, 0x3

    invoke-virtual {v1, v3, v4, v5}, Lcom/google/android/gms/internal/ads/zzek;->zzH([BII)V

    .line 2
    invoke-virtual {v2, v4}, Lcom/google/android/gms/internal/ads/zzej;->zzl(I)V

    const/16 v3, 0x8

    .line 3
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzej;->zzn(I)V

    .line 4
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzej;->zzp()Z

    move-result v6

    iput-boolean v6, v0, Lcom/google/android/gms/internal/ads/zzanf;->zzd:Z

    .line 5
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzej;->zzp()Z

    move-result v6

    iput-boolean v6, v0, Lcom/google/android/gms/internal/ads/zzanf;->zze:Z

    const/4 v6, 0x6

    .line 6
    invoke-virtual {v2, v6}, Lcom/google/android/gms/internal/ads/zzej;->zzn(I)V

    .line 7
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzej;->zzd(I)I

    move-result v3

    iget-object v6, v2, Lcom/google/android/gms/internal/ads/zzej;->zza:[B

    .line 8
    invoke-virtual {v1, v6, v4, v3}, Lcom/google/android/gms/internal/ads/zzek;->zzH([BII)V

    .line 9
    invoke-virtual {v2, v4}, Lcom/google/android/gms/internal/ads/zzej;->zzl(I)V

    iget-boolean v3, v0, Lcom/google/android/gms/internal/ads/zzanf;->zzd:Z

    const/4 v6, 0x4

    if-eqz v3, :cond_1

    .line 10
    invoke-virtual {v2, v6}, Lcom/google/android/gms/internal/ads/zzej;->zzn(I)V

    .line 11
    invoke-virtual {v2, v5}, Lcom/google/android/gms/internal/ads/zzej;->zzd(I)I

    move-result v3

    int-to-long v7, v3

    const/4 v3, 0x1

    .line 12
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzej;->zzn(I)V

    const/16 v9, 0xf

    .line 13
    invoke-virtual {v2, v9}, Lcom/google/android/gms/internal/ads/zzej;->zzd(I)I

    move-result v10

    shl-int/2addr v10, v9

    .line 14
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzej;->zzn(I)V

    .line 15
    invoke-virtual {v2, v9}, Lcom/google/android/gms/internal/ads/zzej;->zzd(I)I

    move-result v11

    int-to-long v11, v11

    .line 16
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzej;->zzn(I)V

    iget-boolean v13, v0, Lcom/google/android/gms/internal/ads/zzanf;->zzf:Z

    const/16 v14, 0x1e

    if-nez v13, :cond_0

    iget-boolean v13, v0, Lcom/google/android/gms/internal/ads/zzanf;->zze:Z

    if-eqz v13, :cond_0

    .line 17
    invoke-virtual {v2, v6}, Lcom/google/android/gms/internal/ads/zzej;->zzn(I)V

    .line 18
    invoke-virtual {v2, v5}, Lcom/google/android/gms/internal/ads/zzej;->zzd(I)I

    move-result v5

    int-to-long v4, v5

    shl-long/2addr v4, v14

    .line 19
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzej;->zzn(I)V

    .line 20
    invoke-virtual {v2, v9}, Lcom/google/android/gms/internal/ads/zzej;->zzd(I)I

    move-result v15

    shl-int/2addr v15, v9

    .line 21
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzej;->zzn(I)V

    .line 22
    invoke-virtual {v2, v9}, Lcom/google/android/gms/internal/ads/zzej;->zzd(I)I

    move-result v9

    move-wide/from16 v16, v7

    int-to-long v6, v9

    .line 23
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzej;->zzn(I)V

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzanf;->zzb:Lcom/google/android/gms/internal/ads/zzer;

    int-to-long v8, v15

    or-long/2addr v4, v8

    or-long/2addr v4, v6

    .line 24
    invoke-virtual {v2, v4, v5}, Lcom/google/android/gms/internal/ads/zzer;->zzb(J)J

    iput-boolean v3, v0, Lcom/google/android/gms/internal/ads/zzanf;->zzf:Z

    goto :goto_0

    :cond_0
    move-wide/from16 v16, v7

    :goto_0
    shl-long v2, v16, v14

    int-to-long v4, v10

    or-long/2addr v2, v4

    or-long/2addr v2, v11

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzanf;->zzb:Lcom/google/android/gms/internal/ads/zzer;

    .line 25
    invoke-virtual {v4, v2, v3}, Lcom/google/android/gms/internal/ads/zzer;->zzb(J)J

    move-result-wide v2

    goto :goto_1

    :cond_1
    const-wide/16 v2, 0x0

    :goto_1
    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzanf;->zza:Lcom/google/android/gms/internal/ads/zzamg;

    const/4 v5, 0x4

    .line 26
    invoke-interface {v4, v2, v3, v5}, Lcom/google/android/gms/internal/ads/zzamg;->zzd(JI)V

    .line 27
    invoke-interface {v4, v1}, Lcom/google/android/gms/internal/ads/zzamg;->zza(Lcom/google/android/gms/internal/ads/zzek;)V

    const/4 v1, 0x0

    .line 28
    invoke-interface {v4, v1}, Lcom/google/android/gms/internal/ads/zzamg;->zzc(Z)V

    return-void
.end method

.method public final zzb()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzanf;->zzf:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzanf;->zza:Lcom/google/android/gms/internal/ads/zzamg;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzamg;->zze()V

    return-void
.end method
