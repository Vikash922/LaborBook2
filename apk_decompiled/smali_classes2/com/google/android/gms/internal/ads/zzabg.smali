.class final Lcom/google/android/gms/internal/ads/zzabg;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.2.0"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzabb;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzaaz;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzeq;

.field private final zzd:Lcom/google/android/gms/internal/ads/zzeq;

.field private final zze:Lcom/google/android/gms/internal/ads/zzdz;

.field private zzf:J

.field private zzg:Lcom/google/android/gms/internal/ads/zzcd;

.field private zzh:J

.field private final zzi:Lcom/google/android/gms/internal/ads/zzaac;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzaac;Lcom/google/android/gms/internal/ads/zzabb;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzabg;->zzi:Lcom/google/android/gms/internal/ads/zzaac;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzabg;->zza:Lcom/google/android/gms/internal/ads/zzabb;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzaaz;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzaaz;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzabg;->zzb:Lcom/google/android/gms/internal/ads/zzaaz;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzeq;

    const/16 p2, 0xa

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/zzeq;-><init>(I)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzabg;->zzc:Lcom/google/android/gms/internal/ads/zzeq;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzeq;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/zzeq;-><init>(I)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzabg;->zzd:Lcom/google/android/gms/internal/ads/zzeq;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzdz;

    const/16 p2, 0x10

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/zzdz;-><init>(I)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzabg;->zze:Lcom/google/android/gms/internal/ads/zzdz;

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzabg;->zzf:J

    .line 2
    sget-object p1, Lcom/google/android/gms/internal/ads/zzcd;->zza:Lcom/google/android/gms/internal/ads/zzcd;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzabg;->zzg:Lcom/google/android/gms/internal/ads/zzcd;

    return-void
.end method

.method private static zze(Lcom/google/android/gms/internal/ads/zzeq;)Ljava/lang/Object;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzeq;->zza()I

    move-result v0

    const/4 v1, 0x1

    if-lez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdc;->zzd(Z)V

    :goto_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzeq;->zza()I

    move-result v0

    if-le v0, v1, :cond_1

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzeq;->zzb()Ljava/lang/Object;

    goto :goto_1

    .line 3
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzeq;->zzb()Ljava/lang/Object;

    move-result-object p0

    .line 4
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object p0
.end method


# virtual methods
.method public final zza()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzabg;->zze:Lcom/google/android/gms/internal/ads/zzdz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdz;->zzc()V

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzabg;->zzf:J

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzabg;->zzd:Lcom/google/android/gms/internal/ads/zzeq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzeq;->zza()I

    move-result v1

    if-lez v1, :cond_0

    .line 2
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzabg;->zze(Lcom/google/android/gms/internal/ads/zzeq;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzabg;->zzh:J

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzabg;->zzc:Lcom/google/android/gms/internal/ads/zzeq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzeq;->zza()I

    move-result v1

    if-lez v1, :cond_1

    .line 3
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzabg;->zze(Lcom/google/android/gms/internal/ads/zzeq;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzcd;

    const-wide/16 v2, 0x0

    .line 4
    invoke-virtual {v0, v2, v3, v1}, Lcom/google/android/gms/internal/ads/zzeq;->zzd(JLjava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public final zzb(IJ)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzabg;->zze:Lcom/google/android/gms/internal/ads/zzdz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdz;->zzd()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzabg;->zza:Lcom/google/android/gms/internal/ads/zzabb;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzabb;->zzf(I)V

    iput-wide p2, p0, Lcom/google/android/gms/internal/ads/zzabg;->zzh:J

    return-void

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzabg;->zzd:Lcom/google/android/gms/internal/ads/zzeq;

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzabg;->zzf:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, v0, v2

    if-nez v2, :cond_1

    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_1
    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    .line 2
    :goto_0
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    .line 3
    invoke-virtual {p1, v0, v1, p2}, Lcom/google/android/gms/internal/ads/zzeq;->zzd(JLjava/lang/Object;)V

    return-void
.end method

.method public final zzc(II)V
    .locals 5

    .line 1
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzabg;->zzf:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_0
    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    :goto_0
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzabg;->zzc:Lcom/google/android/gms/internal/ads/zzeq;

    new-instance v3, Lcom/google/android/gms/internal/ads/zzcd;

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v3, p1, p2, v4}, Lcom/google/android/gms/internal/ads/zzcd;-><init>(IIF)V

    .line 2
    invoke-virtual {v2, v0, v1, v3}, Lcom/google/android/gms/internal/ads/zzeq;->zzd(JLjava/lang/Object;)V

    return-void
.end method

.method public final zzd(JJ)V
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzii;
        }
    .end annotation

    move-object/from16 v0, p0

    .line 1
    :cond_0
    :goto_0
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzabg;->zze:Lcom/google/android/gms/internal/ads/zzdz;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzdz;->zzd()Z

    move-result v2

    if-nez v2, :cond_6

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzabg;->zzd:Lcom/google/android/gms/internal/ads/zzeq;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzdz;->zza()J

    move-result-wide v4

    .line 2
    invoke-virtual {v2, v4, v5}, Lcom/google/android/gms/internal/ads/zzeq;->zzc(J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    const/4 v15, 0x2

    if-eqz v2, :cond_1

    .line 3
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    iget-wide v8, v0, Lcom/google/android/gms/internal/ads/zzabg;->zzh:J

    cmp-long v3, v6, v8

    if-eqz v3, :cond_1

    .line 4
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/google/android/gms/internal/ads/zzabg;->zzh:J

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzabg;->zza:Lcom/google/android/gms/internal/ads/zzabb;

    .line 5
    invoke-virtual {v2, v15}, Lcom/google/android/gms/internal/ads/zzabb;->zzf(I)V

    :cond_1
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzabg;->zza:Lcom/google/android/gms/internal/ads/zzabb;

    iget-wide v10, v0, Lcom/google/android/gms/internal/ads/zzabg;->zzh:J

    iget-object v14, v0, Lcom/google/android/gms/internal/ads/zzabg;->zzb:Lcom/google/android/gms/internal/ads/zzaaz;

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object v3, v2

    move-wide/from16 v6, p1

    move-wide/from16 v8, p3

    move-object/from16 v16, v14

    .line 6
    invoke-virtual/range {v3 .. v14}, Lcom/google/android/gms/internal/ads/zzabb;->zza(JJJJZZLcom/google/android/gms/internal/ads/zzaaz;)I

    move-result v3

    if-eqz v3, :cond_3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_3

    if-eq v3, v15, :cond_2

    const/4 v2, 0x3

    if-eq v3, v2, :cond_2

    const/4 v1, 0x4

    if-eq v3, v1, :cond_0

    goto :goto_2

    .line 7
    :cond_2
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzdz;->zzb()J

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzabg;->zzi:Lcom/google/android/gms/internal/ads/zzaac;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzaac;->zza:Lcom/google/android/gms/internal/ads/zzaae;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzaae;->zzb(Lcom/google/android/gms/internal/ads/zzaae;)Ljava/util/Queue;

    move-result-object v1

    .line 8
    invoke-interface {v1}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzabt;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzabt;->zza()V

    goto :goto_0

    .line 9
    :cond_3
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzdz;->zzb()J

    move-result-wide v5

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzabg;->zzc:Lcom/google/android/gms/internal/ads/zzeq;

    .line 10
    invoke-virtual {v1, v5, v6}, Lcom/google/android/gms/internal/ads/zzeq;->zzc(J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzcd;

    if-eqz v1, :cond_4

    sget-object v4, Lcom/google/android/gms/internal/ads/zzcd;->zza:Lcom/google/android/gms/internal/ads/zzcd;

    .line 11
    invoke-virtual {v1, v4}, Lcom/google/android/gms/internal/ads/zzcd;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzabg;->zzg:Lcom/google/android/gms/internal/ads/zzcd;

    .line 12
    invoke-virtual {v1, v4}, Lcom/google/android/gms/internal/ads/zzcd;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzabg;->zzg:Lcom/google/android/gms/internal/ads/zzcd;

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzabg;->zzi:Lcom/google/android/gms/internal/ads/zzaac;

    .line 13
    invoke-virtual {v4, v1}, Lcom/google/android/gms/internal/ads/zzaac;->zza(Lcom/google/android/gms/internal/ads/zzcd;)V

    :cond_4
    if-nez v3, :cond_5

    .line 14
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v3

    goto :goto_1

    .line 16
    :cond_5
    invoke-virtual/range {v16 .. v16}, Lcom/google/android/gms/internal/ads/zzaaz;->zzd()J

    move-result-wide v3

    .line 14
    :goto_1
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzabg;->zzi:Lcom/google/android/gms/internal/ads/zzaac;

    .line 15
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzabb;->zzn()Z

    move-result v7

    move-object v2, v1

    .line 16
    invoke-virtual/range {v2 .. v7}, Lcom/google/android/gms/internal/ads/zzaac;->zzb(JJZ)V

    goto/16 :goto_0

    :cond_6
    :goto_2
    return-void
.end method
