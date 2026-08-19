.class public Lcom/google/android/gms/internal/measurement/zzlt;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-base@@22.1.0"


# instance fields
.field private volatile zza:Lcom/google/android/gms/internal/measurement/zzml;

.field private volatile zzb:Lcom/google/android/gms/internal/measurement/zzjs;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final zzb(Lcom/google/android/gms/internal/measurement/zzml;)Lcom/google/android/gms/internal/measurement/zzml;
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzlt;->zza:Lcom/google/android/gms/internal/measurement/zzml;

    if-nez v0, :cond_1

    .line 19
    monitor-enter p0

    .line 20
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzlt;->zza:Lcom/google/android/gms/internal/measurement/zzml;

    if-eqz v0, :cond_0

    .line 21
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 22
    :cond_0
    :try_start_1
    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzlt;->zza:Lcom/google/android/gms/internal/measurement/zzml;

    .line 23
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzjs;->zza:Lcom/google/android/gms/internal/measurement/zzjs;

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzlt;->zzb:Lcom/google/android/gms/internal/measurement/zzjs;
    :try_end_1
    .catch Lcom/google/android/gms/internal/measurement/zzlk; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 26
    :catch_0
    :try_start_2
    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzlt;->zza:Lcom/google/android/gms/internal/measurement/zzml;

    .line 27
    sget-object p1, Lcom/google/android/gms/internal/measurement/zzjs;->zza:Lcom/google/android/gms/internal/measurement/zzjs;

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzlt;->zzb:Lcom/google/android/gms/internal/measurement/zzjs;

    .line 28
    :goto_0
    monitor-exit p0

    goto :goto_1

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1

    .line 29
    :cond_1
    :goto_1
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzlt;->zza:Lcom/google/android/gms/internal/measurement/zzml;

    return-object p1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    .line 37
    :cond_0
    instance-of v0, p1, Lcom/google/android/gms/internal/measurement/zzlt;

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return p1

    .line 39
    :cond_1
    check-cast p1, Lcom/google/android/gms/internal/measurement/zzlt;

    .line 40
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzlt;->zza:Lcom/google/android/gms/internal/measurement/zzml;

    .line 41
    iget-object v1, p1, Lcom/google/android/gms/internal/measurement/zzlt;->zza:Lcom/google/android/gms/internal/measurement/zzml;

    if-nez v0, :cond_2

    if-nez v1, :cond_2

    .line 43
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzlt;->zzb()Lcom/google/android/gms/internal/measurement/zzjs;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzlt;->zzb()Lcom/google/android/gms/internal/measurement/zzjs;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/zzjs;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_2
    if-eqz v0, :cond_3

    if-eqz v1, :cond_3

    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_3
    if-eqz v0, :cond_4

    .line 47
    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zzml;->zzck()Lcom/google/android/gms/internal/measurement/zzml;

    move-result-object v1

    invoke-direct {p1, v1}, Lcom/google/android/gms/internal/measurement/zzlt;->zzb(Lcom/google/android/gms/internal/measurement/zzml;)Lcom/google/android/gms/internal/measurement/zzml;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 48
    :cond_4
    invoke-interface {v1}, Lcom/google/android/gms/internal/measurement/zzml;->zzck()Lcom/google/android/gms/internal/measurement/zzml;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/measurement/zzlt;->zzb(Lcom/google/android/gms/internal/measurement/zzml;)Lcom/google/android/gms/internal/measurement/zzml;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public hashCode()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final zza()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzlt;->zzb:Lcom/google/android/gms/internal/measurement/zzjs;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzlt;->zzb:Lcom/google/android/gms/internal/measurement/zzjs;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzjs;->zzb()I

    move-result v0

    return v0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzlt;->zza:Lcom/google/android/gms/internal/measurement/zzml;

    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzlt;->zza:Lcom/google/android/gms/internal/measurement/zzml;

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zzml;->zzcb()I

    move-result v0

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public final zza(Lcom/google/android/gms/internal/measurement/zzml;)Lcom/google/android/gms/internal/measurement/zzml;
    .locals 2

    .line 30
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzlt;->zza:Lcom/google/android/gms/internal/measurement/zzml;

    const/4 v1, 0x0

    .line 31
    iput-object v1, p0, Lcom/google/android/gms/internal/measurement/zzlt;->zzb:Lcom/google/android/gms/internal/measurement/zzjs;

    .line 32
    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzlt;->zza:Lcom/google/android/gms/internal/measurement/zzml;

    return-object v0
.end method

.method public final zzb()Lcom/google/android/gms/internal/measurement/zzjs;
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzlt;->zzb:Lcom/google/android/gms/internal/measurement/zzjs;

    if-eqz v0, :cond_0

    .line 8
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzlt;->zzb:Lcom/google/android/gms/internal/measurement/zzjs;

    return-object v0

    .line 9
    :cond_0
    monitor-enter p0

    .line 10
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzlt;->zzb:Lcom/google/android/gms/internal/measurement/zzjs;

    if-eqz v0, :cond_1

    .line 11
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzlt;->zzb:Lcom/google/android/gms/internal/measurement/zzjs;

    monitor-exit p0

    return-object v0

    .line 12
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzlt;->zza:Lcom/google/android/gms/internal/measurement/zzml;

    if-nez v0, :cond_2

    .line 13
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzjs;->zza:Lcom/google/android/gms/internal/measurement/zzjs;

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzlt;->zzb:Lcom/google/android/gms/internal/measurement/zzjs;

    goto :goto_0

    .line 14
    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzlt;->zza:Lcom/google/android/gms/internal/measurement/zzml;

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zzml;->zzbz()Lcom/google/android/gms/internal/measurement/zzjs;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzlt;->zzb:Lcom/google/android/gms/internal/measurement/zzjs;

    .line 15
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzlt;->zzb:Lcom/google/android/gms/internal/measurement/zzjs;

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    .line 16
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
