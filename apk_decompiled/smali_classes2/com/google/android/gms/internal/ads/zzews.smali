.class public final Lcom/google/android/gms/internal/ads/zzews;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.2.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzcvf;
.implements Lcom/google/android/gms/internal/ads/zzcxb;
.implements Lcom/google/android/gms/internal/ads/zzeyi;
.implements Lcom/google/android/gms/ads/internal/overlay/zzr;
.implements Lcom/google/android/gms/internal/ads/zzcxo;
.implements Lcom/google/android/gms/internal/ads/zzcvs;
.implements Lcom/google/android/gms/internal/ads/zzddc;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzfcy;

.field private final zzb:Ljava/util/concurrent/atomic/AtomicReference;

.field private final zzc:Ljava/util/concurrent/atomic/AtomicReference;

.field private final zzd:Ljava/util/concurrent/atomic/AtomicReference;

.field private final zze:Ljava/util/concurrent/atomic/AtomicReference;

.field private final zzf:Ljava/util/concurrent/atomic/AtomicReference;

.field private final zzg:Ljava/util/concurrent/atomic/AtomicReference;

.field private zzh:Lcom/google/android/gms/internal/ads/zzews;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzfcy;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzews;->zzb:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    .line 2
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzews;->zzc:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    .line 3
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzews;->zzd:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    .line 4
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzews;->zze:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    .line 5
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzews;->zzf:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    .line 6
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzews;->zzg:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzews;->zzh:Lcom/google/android/gms/internal/ads/zzews;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzews;->zza:Lcom/google/android/gms/internal/ads/zzfcy;

    return-void
.end method

.method public static zzi(Lcom/google/android/gms/internal/ads/zzews;)Lcom/google/android/gms/internal/ads/zzews;
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzews;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzews;->zza:Lcom/google/android/gms/internal/ads/zzfcy;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzews;-><init>(Lcom/google/android/gms/internal/ads/zzfcy;)V

    .line 2
    move-object v1, p0

    check-cast v1, Lcom/google/android/gms/internal/ads/zzews;

    iput-object p0, v0, Lcom/google/android/gms/internal/ads/zzews;->zzh:Lcom/google/android/gms/internal/ads/zzews;

    return-object v0
.end method


# virtual methods
.method public final zzdE()V
    .locals 0

    return-void
.end method

.method public final zzdd()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzews;->zzh:Lcom/google/android/gms/internal/ads/zzews;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzews;->zzdd()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzews;->zzd:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzewj;

    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/zzewj;-><init>()V

    .line 2
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzexz;->zza(Ljava/util/concurrent/atomic/AtomicReference;Lcom/google/android/gms/internal/ads/zzexy;)V

    return-void
.end method

.method public final zzdi()V
    .locals 0

    return-void
.end method

.method public final zzdo()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzews;->zzh:Lcom/google/android/gms/internal/ads/zzews;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzews;->zzdo()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzews;->zzf:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzewg;

    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/zzewg;-><init>()V

    .line 2
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzexz;->zza(Ljava/util/concurrent/atomic/AtomicReference;Lcom/google/android/gms/internal/ads/zzexy;)V

    return-void
.end method

.method public final zzdp()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzews;->zzh:Lcom/google/android/gms/internal/ads/zzews;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzews;->zzdp()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzews;->zzf:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzewr;

    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/zzewr;-><init>()V

    .line 2
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzexz;->zza(Ljava/util/concurrent/atomic/AtomicReference;Lcom/google/android/gms/internal/ads/zzexy;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzews;->zzd:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzewe;

    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/zzewe;-><init>()V

    .line 3
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzexz;->zza(Ljava/util/concurrent/atomic/AtomicReference;Lcom/google/android/gms/internal/ads/zzexy;)V

    new-instance v1, Lcom/google/android/gms/internal/ads/zzewf;

    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/zzewf;-><init>()V

    .line 4
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzexz;->zza(Ljava/util/concurrent/atomic/AtomicReference;Lcom/google/android/gms/internal/ads/zzexy;)V

    return-void
.end method

.method public final zzdr()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzews;->zzh:Lcom/google/android/gms/internal/ads/zzews;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzews;->zzdr()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzews;->zzf:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzewq;

    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/zzewq;-><init>()V

    .line 2
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzexz;->zza(Ljava/util/concurrent/atomic/AtomicReference;Lcom/google/android/gms/internal/ads/zzexy;)V

    return-void
.end method

.method public final zzds(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzews;->zzh:Lcom/google/android/gms/internal/ads/zzews;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzews;->zzds(I)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzews;->zzf:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzewm;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/ads/zzewm;-><init>(I)V

    .line 2
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzexz;->zza(Ljava/util/concurrent/atomic/AtomicReference;Lcom/google/android/gms/internal/ads/zzexy;)V

    return-void
.end method

.method public final zzdz(Lcom/google/android/gms/ads/internal/client/zze;)V
    .locals 2

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzews;->zzh:Lcom/google/android/gms/internal/ads/zzews;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzews;->zzdz(Lcom/google/android/gms/ads/internal/client/zze;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzews;->zzb:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzewn;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/ads/zzewn;-><init>(Lcom/google/android/gms/ads/internal/client/zze;)V

    .line 1
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzexz;->zza(Ljava/util/concurrent/atomic/AtomicReference;Lcom/google/android/gms/internal/ads/zzexy;)V

    new-instance v1, Lcom/google/android/gms/internal/ads/zzewo;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/ads/zzewo;-><init>(Lcom/google/android/gms/ads/internal/client/zze;)V

    .line 2
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzexz;->zza(Ljava/util/concurrent/atomic/AtomicReference;Lcom/google/android/gms/internal/ads/zzexy;)V

    return-void
.end method

.method public final zzg()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzews;->zzh:Lcom/google/android/gms/internal/ads/zzews;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzews;->zzg()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzews;->zze:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzewp;

    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/zzewp;-><init>()V

    .line 2
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzexz;->zza(Ljava/util/concurrent/atomic/AtomicReference;Lcom/google/android/gms/internal/ads/zzexy;)V

    return-void
.end method

.method public final zzh(Lcom/google/android/gms/ads/internal/client/zzt;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzews;->zzh:Lcom/google/android/gms/internal/ads/zzews;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzews;->zzh(Lcom/google/android/gms/ads/internal/client/zzt;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzews;->zzg:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzewd;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/ads/zzewd;-><init>(Lcom/google/android/gms/ads/internal/client/zzt;)V

    .line 2
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzexz;->zza(Ljava/util/concurrent/atomic/AtomicReference;Lcom/google/android/gms/internal/ads/zzexy;)V

    return-void
.end method

.method public final zzj()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzews;->zzh:Lcom/google/android/gms/internal/ads/zzews;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzews;->zzj()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzews;->zza:Lcom/google/android/gms/internal/ads/zzfcy;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfcy;->zza()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzews;->zzc:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzewk;

    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/zzewk;-><init>()V

    .line 3
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzexz;->zza(Ljava/util/concurrent/atomic/AtomicReference;Lcom/google/android/gms/internal/ads/zzexy;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzews;->zzd:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzewl;

    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/zzewl;-><init>()V

    .line 4
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzexz;->zza(Ljava/util/concurrent/atomic/AtomicReference;Lcom/google/android/gms/internal/ads/zzexy;)V

    return-void
.end method

.method public final zzk(Lcom/google/android/gms/internal/ads/zzbaa;)V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzews;->zzh:Lcom/google/android/gms/internal/ads/zzews;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzews;->zzk(Lcom/google/android/gms/internal/ads/zzbaa;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzews;->zzb:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzewi;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/ads/zzewi;-><init>(Lcom/google/android/gms/internal/ads/zzbaa;)V

    .line 1
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzexz;->zza(Ljava/util/concurrent/atomic/AtomicReference;Lcom/google/android/gms/internal/ads/zzexy;)V

    return-void
.end method

.method public final zzl(Lcom/google/android/gms/internal/ads/zzeyi;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/ads/zzews;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzews;->zzh:Lcom/google/android/gms/internal/ads/zzews;

    return-void
.end method

.method public final zzm(Lcom/google/android/gms/ads/internal/overlay/zzr;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzews;->zzf:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public final zzn(Lcom/google/android/gms/ads/internal/client/zzdq;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzews;->zzg:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public final zzo(Lcom/google/android/gms/internal/ads/zzbad;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzews;->zzb:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public final zzp(Lcom/google/android/gms/internal/ads/zzbah;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzews;->zzd:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public final zzr(Lcom/google/android/gms/ads/internal/client/zze;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzews;->zzh:Lcom/google/android/gms/internal/ads/zzews;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzews;->zzr(Lcom/google/android/gms/ads/internal/client/zze;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzews;->zzd:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzewh;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/ads/zzewh;-><init>(Lcom/google/android/gms/ads/internal/client/zze;)V

    .line 2
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzexz;->zza(Ljava/util/concurrent/atomic/AtomicReference;Lcom/google/android/gms/internal/ads/zzexy;)V

    return-void
.end method

.method public final zzu()V
    .locals 0

    return-void
.end method
