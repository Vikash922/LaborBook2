.class final Lcom/google/android/gms/internal/measurement/zznn;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-base@@22.1.0"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;>;"
    }
.end annotation


# instance fields
.field private zza:I

.field private zzb:Z

.field private zzc:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation
.end field

.field private final synthetic zzd:Lcom/google/android/gms/internal/measurement/zzne;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/measurement/zzne;)V
    .locals 0

    .line 11
    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zznn;->zzd:Lcom/google/android/gms/internal/measurement/zzne;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, -0x1

    .line 12
    iput p1, p0, Lcom/google/android/gms/internal/measurement/zznn;->zza:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/measurement/zzne;Lcom/google/android/gms/internal/measurement/zznm;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/measurement/zznn;-><init>(Lcom/google/android/gms/internal/measurement/zzne;)V

    return-void
.end method

.method private final zza()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 8
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zznn;->zzc:Ljava/util/Iterator;

    if-nez v0, :cond_0

    .line 9
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zznn;->zzd:Lcom/google/android/gms/internal/measurement/zzne;

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzne;->zzb(Lcom/google/android/gms/internal/measurement/zzne;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zznn;->zzc:Ljava/util/Iterator;

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zznn;->zzc:Ljava/util/Iterator;

    return-object v0
.end method


# virtual methods
.method public final hasNext()Z
    .locals 3

    .line 22
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zznn;->zza:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/zznn;->zzd:Lcom/google/android/gms/internal/measurement/zzne;

    invoke-static {v2}, Lcom/google/android/gms/internal/measurement/zzne;->zza(Lcom/google/android/gms/internal/measurement/zzne;)I

    move-result v2

    if-lt v0, v2, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zznn;->zzd:Lcom/google/android/gms/internal/measurement/zzne;

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzne;->zzb(Lcom/google/android/gms/internal/measurement/zzne;)Ljava/util/Map;

    move-result-object v0

    .line 23
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zznn;->zza()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    return v1
.end method

.method public final synthetic next()Ljava/lang/Object;
    .locals 2

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/google/android/gms/internal/measurement/zznn;->zzb:Z

    .line 3
    iget v1, p0, Lcom/google/android/gms/internal/measurement/zznn;->zza:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/google/android/gms/internal/measurement/zznn;->zza:I

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zznn;->zzd:Lcom/google/android/gms/internal/measurement/zzne;

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzne;->zza(Lcom/google/android/gms/internal/measurement/zzne;)I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zznn;->zzd:Lcom/google/android/gms/internal/measurement/zzne;

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzne;->zze(Lcom/google/android/gms/internal/measurement/zzne;)[Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lcom/google/android/gms/internal/measurement/zznn;->zza:I

    aget-object v0, v0, v1

    check-cast v0, Lcom/google/android/gms/internal/measurement/zznk;

    return-object v0

    .line 6
    :cond_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zznn;->zza()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    return-object v0
.end method

.method public final remove()V
    .locals 3

    .line 14
    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/zznn;->zzb:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 16
    iput-boolean v0, p0, Lcom/google/android/gms/internal/measurement/zznn;->zzb:Z

    .line 17
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zznn;->zzd:Lcom/google/android/gms/internal/measurement/zzne;

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzne;->zzd(Lcom/google/android/gms/internal/measurement/zzne;)V

    .line 18
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zznn;->zza:I

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zznn;->zzd:Lcom/google/android/gms/internal/measurement/zzne;

    invoke-static {v1}, Lcom/google/android/gms/internal/measurement/zzne;->zza(Lcom/google/android/gms/internal/measurement/zzne;)I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 19
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zznn;->zzd:Lcom/google/android/gms/internal/measurement/zzne;

    iget v1, p0, Lcom/google/android/gms/internal/measurement/zznn;->zza:I

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lcom/google/android/gms/internal/measurement/zznn;->zza:I

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/measurement/zzne;->zza(Lcom/google/android/gms/internal/measurement/zzne;I)Ljava/lang/Object;

    return-void

    .line 20
    :cond_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zznn;->zza()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    return-void

    .line 15
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "remove() was called before next()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
