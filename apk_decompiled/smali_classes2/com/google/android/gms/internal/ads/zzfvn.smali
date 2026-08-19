.class final Lcom/google/android/gms/internal/ads/zzfvn;
.super Lcom/google/android/gms/internal/ads/zzfvl;
.source "com.google.android.gms:play-services-ads@@24.2.0"

# interfaces
.implements Ljava/util/ListIterator;


# instance fields
.field final synthetic zzd:Lcom/google/android/gms/internal/ads/zzfvo;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzfvo;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfvn;->zzd:Lcom/google/android/gms/internal/ads/zzfvo;

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzfvl;-><init>(Lcom/google/android/gms/internal/ads/zzfvm;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzfvo;I)V
    .locals 1

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfvn;->zzd:Lcom/google/android/gms/internal/ads/zzfvo;

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzfvm;->zzb:Ljava/util/Collection;

    check-cast v0, Ljava/util/List;

    .line 3
    invoke-interface {v0, p2}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzfvl;-><init>(Lcom/google/android/gms/internal/ads/zzfvm;Ljava/util/Iterator;)V

    return-void
.end method


# virtual methods
.method public final add(Ljava/lang/Object;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfvn;->zzd:Lcom/google/android/gms/internal/ads/zzfvo;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfvo;->isEmpty()Z

    move-result v1

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzfvl;->zza()V

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzfvl;->zza:Ljava/util/Iterator;

    .line 3
    check-cast v2, Ljava/util/ListIterator;

    .line 4
    invoke-interface {v2, p1}, Ljava/util/ListIterator;->add(Ljava/lang/Object;)V

    iget-object p1, v0, Lcom/google/android/gms/internal/ads/zzfvo;->zzf:Lcom/google/android/gms/internal/ads/zzfvp;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzfvp;->zzd(Lcom/google/android/gms/internal/ads/zzfvp;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    .line 5
    invoke-static {p1, v2}, Lcom/google/android/gms/internal/ads/zzfvp;->zzn(Lcom/google/android/gms/internal/ads/zzfvp;I)V

    if-eqz v1, :cond_0

    .line 6
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfvm;->zza()V

    :cond_0
    return-void
.end method

.method public final hasPrevious()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzfvl;->zza()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfvl;->zza:Ljava/util/Iterator;

    .line 2
    check-cast v0, Ljava/util/ListIterator;

    .line 3
    invoke-interface {v0}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v0

    return v0
.end method

.method public final nextIndex()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzfvl;->zza()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfvl;->zza:Ljava/util/Iterator;

    .line 2
    check-cast v0, Ljava/util/ListIterator;

    .line 3
    invoke-interface {v0}, Ljava/util/ListIterator;->nextIndex()I

    move-result v0

    return v0
.end method

.method public final previous()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzfvl;->zza()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfvl;->zza:Ljava/util/Iterator;

    .line 2
    check-cast v0, Ljava/util/ListIterator;

    .line 3
    invoke-interface {v0}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final previousIndex()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzfvl;->zza()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfvl;->zza:Ljava/util/Iterator;

    .line 2
    check-cast v0, Ljava/util/ListIterator;

    .line 3
    invoke-interface {v0}, Ljava/util/ListIterator;->previousIndex()I

    move-result v0

    return v0
.end method

.method public final set(Ljava/lang/Object;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzfvl;->zza()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfvl;->zza:Ljava/util/Iterator;

    .line 2
    check-cast v0, Ljava/util/ListIterator;

    .line 3
    invoke-interface {v0, p1}, Ljava/util/ListIterator;->set(Ljava/lang/Object;)V

    return-void
.end method
