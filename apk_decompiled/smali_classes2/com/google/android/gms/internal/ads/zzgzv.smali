.class final Lcom/google/android/gms/internal/ads/zzgzv;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-api@@24.2.0"


# instance fields
.field private final zza:Ljava/util/ArrayDeque;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzgzv;->zza:Ljava/util/ArrayDeque;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzgzx;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/util/ArrayDeque;

    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgzv;->zza:Ljava/util/ArrayDeque;

    return-void
.end method

.method static bridge synthetic zza(Lcom/google/android/gms/internal/ads/zzgzv;Lcom/google/android/gms/internal/ads/zzgwn;Lcom/google/android/gms/internal/ads/zzgwn;)Lcom/google/android/gms/internal/ads/zzgwn;
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzgzv;->zzb(Lcom/google/android/gms/internal/ads/zzgwn;)V

    .line 2
    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/ads/zzgzv;->zzb(Lcom/google/android/gms/internal/ads/zzgwn;)V

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzgzv;->zza:Ljava/util/ArrayDeque;

    .line 3
    invoke-virtual {p0}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzgwn;

    .line 4
    :goto_0
    invoke-virtual {p0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_0

    .line 5
    invoke-virtual {p0}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/internal/ads/zzgwn;

    .line 6
    new-instance v0, Lcom/google/android/gms/internal/ads/zzgzy;

    const/4 v1, 0x0

    invoke-direct {v0, p2, p1, v1}, Lcom/google/android/gms/internal/ads/zzgzy;-><init>(Lcom/google/android/gms/internal/ads/zzgwn;Lcom/google/android/gms/internal/ads/zzgwn;Lcom/google/android/gms/internal/ads/zzgzx;)V

    move-object p1, v0

    goto :goto_0

    :cond_0
    return-object p1
.end method

.method private final zzb(Lcom/google/android/gms/internal/ads/zzgwn;)V
    .locals 6

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzgwn;->zzh()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzgwn;->zzd()I

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgzv;->zzc(I)I

    move-result v0

    add-int/lit8 v1, v0, 0x1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzgzv;->zza:Ljava/util/ArrayDeque;

    .line 3
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzgzy;->zzc(I)I

    move-result v1

    .line 4
    invoke-virtual {v2}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/ads/zzgwn;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzgwn;->zzd()I

    move-result v3

    if-lt v3, v1, :cond_0

    goto :goto_2

    .line 6
    :cond_0
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgzy;->zzc(I)I

    move-result v0

    .line 7
    invoke-virtual {v2}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzgwn;

    .line 8
    :goto_0
    invoke-virtual {v2}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_1

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/ads/zzgwn;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzgwn;->zzd()I

    move-result v3

    if-ge v3, v0, :cond_1

    .line 9
    invoke-virtual {v2}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/ads/zzgwn;

    new-instance v5, Lcom/google/android/gms/internal/ads/zzgzy;

    .line 10
    invoke-direct {v5, v3, v1, v4}, Lcom/google/android/gms/internal/ads/zzgzy;-><init>(Lcom/google/android/gms/internal/ads/zzgwn;Lcom/google/android/gms/internal/ads/zzgwn;Lcom/google/android/gms/internal/ads/zzgzx;)V

    move-object v1, v5

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzgzy;

    .line 11
    invoke-direct {v0, v1, p1, v4}, Lcom/google/android/gms/internal/ads/zzgzy;-><init>(Lcom/google/android/gms/internal/ads/zzgwn;Lcom/google/android/gms/internal/ads/zzgwn;Lcom/google/android/gms/internal/ads/zzgzx;)V

    .line 12
    :goto_1
    invoke-virtual {v2}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_2

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgwn;->zzd()I

    move-result p1

    .line 13
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzgzv;->zzc(I)I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    .line 14
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzgzy;->zzc(I)I

    move-result p1

    .line 15
    invoke-virtual {v2}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzgwn;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzgwn;->zzd()I

    move-result v1

    if-ge v1, p1, :cond_2

    .line 16
    invoke-virtual {v2}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzgwn;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzgzy;

    .line 17
    invoke-direct {v1, p1, v0, v4}, Lcom/google/android/gms/internal/ads/zzgzy;-><init>(Lcom/google/android/gms/internal/ads/zzgwn;Lcom/google/android/gms/internal/ads/zzgwn;Lcom/google/android/gms/internal/ads/zzgzx;)V

    move-object v0, v1

    goto :goto_1

    .line 18
    :cond_2
    invoke-virtual {v2, v0}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    return-void

    .line 5
    :cond_3
    :goto_2
    invoke-virtual {v2, p1}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    return-void

    .line 18
    :cond_4
    instance-of v0, p1, Lcom/google/android/gms/internal/ads/zzgzy;

    if-eqz v0, :cond_5

    .line 19
    check-cast p1, Lcom/google/android/gms/internal/ads/zzgzy;

    .line 20
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzgzy;->zzg(Lcom/google/android/gms/internal/ads/zzgzy;)Lcom/google/android/gms/internal/ads/zzgwn;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzgzv;->zzb(Lcom/google/android/gms/internal/ads/zzgwn;)V

    .line 21
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzgzy;->zzB(Lcom/google/android/gms/internal/ads/zzgzy;)Lcom/google/android/gms/internal/ads/zzgwn;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzgzv;->zzb(Lcom/google/android/gms/internal/ads/zzgwn;)V

    return-void

    .line 18
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 22
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "Has a new type of ByteString been created? Found "

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static final zzc(I)I
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzgzy;->zza:[I

    invoke-static {v0, p0}, Ljava/util/Arrays;->binarySearch([II)I

    move-result p0

    if-gez p0, :cond_0

    add-int/lit8 p0, p0, 0x1

    neg-int p0, p0

    add-int/lit8 p0, p0, -0x1

    :cond_0
    return p0
.end method
