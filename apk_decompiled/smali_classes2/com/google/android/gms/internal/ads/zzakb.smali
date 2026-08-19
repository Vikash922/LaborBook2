.class public final Lcom/google/android/gms/internal/ads/zzakb;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.2.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzadf;


# instance fields
.field private final zzb:Lcom/google/android/gms/internal/ads/zzadf;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzajy;

.field private final zzd:Landroid/util/SparseArray;

.field private zze:Z


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzadf;Lcom/google/android/gms/internal/ads/zzajy;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzakb;->zzb:Lcom/google/android/gms/internal/ads/zzadf;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzakb;->zzc:Lcom/google/android/gms/internal/ads/zzajy;

    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzakb;->zzd:Landroid/util/SparseArray;

    return-void
.end method


# virtual methods
.method public final zzG()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzakb;->zzb:Lcom/google/android/gms/internal/ads/zzadf;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzadf;->zzG()V

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzakb;->zze:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzakb;->zzd:Landroid/util/SparseArray;

    .line 2
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 3
    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzakd;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzakd;->zzb(Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final zzP(Lcom/google/android/gms/internal/ads/zzaeb;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzakb;->zzb:Lcom/google/android/gms/internal/ads/zzadf;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzadf;->zzP(Lcom/google/android/gms/internal/ads/zzaeb;)V

    return-void
.end method

.method public final zzw(II)Lcom/google/android/gms/internal/ads/zzaei;
    .locals 3

    const/4 v0, 0x3

    if-eq p2, v0, :cond_0

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzakb;->zze:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzakb;->zzb:Lcom/google/android/gms/internal/ads/zzadf;

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzadf;->zzw(II)Lcom/google/android/gms/internal/ads/zzaei;

    move-result-object p1

    return-object p1

    :cond_0
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzakb;->zzd:Landroid/util/SparseArray;

    .line 2
    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzakd;

    if-eqz v1, :cond_1

    return-object v1

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzakb;->zzb:Lcom/google/android/gms/internal/ads/zzadf;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzakd;

    .line 3
    invoke-interface {v1, p1, v0}, Lcom/google/android/gms/internal/ads/zzadf;->zzw(II)Lcom/google/android/gms/internal/ads/zzaei;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzakb;->zzc:Lcom/google/android/gms/internal/ads/zzajy;

    invoke-direct {v2, v0, v1}, Lcom/google/android/gms/internal/ads/zzakd;-><init>(Lcom/google/android/gms/internal/ads/zzaei;Lcom/google/android/gms/internal/ads/zzajy;)V

    .line 4
    invoke-virtual {p2, p1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-object v2
.end method
