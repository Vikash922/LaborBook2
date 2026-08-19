.class public final Lcom/google/android/gms/internal/ads/zzya;
.super Lcom/google/android/gms/internal/ads/zzbq;
.source "com.google.android.gms:play-services-ads@@24.2.0"


# instance fields
.field private zza:Z

.field private zzb:Z

.field private zzc:Z

.field private zzd:Z

.field private zze:Z

.field private zzf:Z

.field private zzg:Z

.field private final zzh:Landroid/util/SparseArray;

.field private final zzi:Landroid/util/SparseBooleanArray;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbq;-><init>()V

    new-instance v0, Landroid/util/SparseArray;

    .line 2
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzya;->zzh:Landroid/util/SparseArray;

    new-instance v0, Landroid/util/SparseBooleanArray;

    .line 3
    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzya;->zzi:Landroid/util/SparseBooleanArray;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzya;->zza:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzya;->zzb:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzya;->zzc:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzya;->zzd:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzya;->zze:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzya;->zzf:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzya;->zzg:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzyb;Lcom/google/android/gms/internal/ads/zzym;)V
    .locals 5

    .line 4
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzbq;-><init>(Lcom/google/android/gms/internal/ads/zzbr;)V

    iget-boolean p2, p1, Lcom/google/android/gms/internal/ads/zzyb;->zzG:Z

    iput-boolean p2, p0, Lcom/google/android/gms/internal/ads/zzya;->zza:Z

    iget-boolean p2, p1, Lcom/google/android/gms/internal/ads/zzyb;->zzI:Z

    iput-boolean p2, p0, Lcom/google/android/gms/internal/ads/zzya;->zzb:Z

    iget-boolean p2, p1, Lcom/google/android/gms/internal/ads/zzyb;->zzK:Z

    iput-boolean p2, p0, Lcom/google/android/gms/internal/ads/zzya;->zzc:Z

    iget-boolean p2, p1, Lcom/google/android/gms/internal/ads/zzyb;->zzP:Z

    iput-boolean p2, p0, Lcom/google/android/gms/internal/ads/zzya;->zzd:Z

    iget-boolean p2, p1, Lcom/google/android/gms/internal/ads/zzyb;->zzQ:Z

    iput-boolean p2, p0, Lcom/google/android/gms/internal/ads/zzya;->zze:Z

    iget-boolean p2, p1, Lcom/google/android/gms/internal/ads/zzyb;->zzR:Z

    iput-boolean p2, p0, Lcom/google/android/gms/internal/ads/zzya;->zzf:Z

    iget-boolean p2, p1, Lcom/google/android/gms/internal/ads/zzyb;->zzT:Z

    iput-boolean p2, p0, Lcom/google/android/gms/internal/ads/zzya;->zzg:Z

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzyb;->zza(Lcom/google/android/gms/internal/ads/zzyb;)Landroid/util/SparseArray;

    move-result-object p2

    new-instance v0, Landroid/util/SparseArray;

    .line 5
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    const/4 v1, 0x0

    .line 6
    :goto_0
    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 7
    invoke-virtual {p2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    new-instance v3, Ljava/util/HashMap;

    invoke-virtual {p2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    invoke-direct {v3, v4}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzya;->zzh:Landroid/util/SparseArray;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzyb;->zzb(Lcom/google/android/gms/internal/ads/zzyb;)Landroid/util/SparseBooleanArray;

    move-result-object p1

    .line 8
    invoke-virtual {p1}, Landroid/util/SparseBooleanArray;->clone()Landroid/util/SparseBooleanArray;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzya;->zzi:Landroid/util/SparseBooleanArray;

    return-void
.end method

.method static bridge synthetic zzA(Lcom/google/android/gms/internal/ads/zzya;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/gms/internal/ads/zzya;->zzb:Z

    return p0
.end method

.method static bridge synthetic zzB(Lcom/google/android/gms/internal/ads/zzya;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/gms/internal/ads/zzya;->zze:Z

    return p0
.end method

.method static bridge synthetic zzC(Lcom/google/android/gms/internal/ads/zzya;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/gms/internal/ads/zzya;->zzc:Z

    return p0
.end method

.method static bridge synthetic zzD(Lcom/google/android/gms/internal/ads/zzya;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/gms/internal/ads/zzya;->zzf:Z

    return p0
.end method

.method static bridge synthetic zzE(Lcom/google/android/gms/internal/ads/zzya;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/gms/internal/ads/zzya;->zza:Z

    return p0
.end method

.method static bridge synthetic zzu(Lcom/google/android/gms/internal/ads/zzya;)Landroid/util/SparseArray;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzya;->zzh:Landroid/util/SparseArray;

    return-object p0
.end method

.method static bridge synthetic zzv(Lcom/google/android/gms/internal/ads/zzya;)Landroid/util/SparseBooleanArray;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzya;->zzi:Landroid/util/SparseBooleanArray;

    return-object p0
.end method

.method static bridge synthetic zzy(Lcom/google/android/gms/internal/ads/zzya;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/gms/internal/ads/zzya;->zzd:Z

    return p0
.end method

.method static bridge synthetic zzz(Lcom/google/android/gms/internal/ads/zzya;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/gms/internal/ads/zzya;->zzg:Z

    return p0
.end method


# virtual methods
.method protected final zzw(Lcom/google/android/gms/internal/ads/zzbr;)Lcom/google/android/gms/internal/ads/zzya;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/ads/zzbq;->zzj(Lcom/google/android/gms/internal/ads/zzbr;)Lcom/google/android/gms/internal/ads/zzbq;

    return-object p0
.end method

.method public final zzx(IZ)Lcom/google/android/gms/internal/ads/zzya;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzya;->zzi:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v1

    if-ne v1, p2, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    const/4 p2, 0x1

    .line 2
    invoke-virtual {v0, p1, p2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    goto :goto_0

    .line 3
    :cond_1
    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->delete(I)V

    :goto_0
    return-object p0
.end method
