.class public final Lcom/google/android/gms/internal/ads/zzqt;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.2.0"


# instance fields
.field private final zza:Landroid/content/Context;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzpb;

.field private zzc:Z

.field private final zzd:Lcom/google/android/gms/internal/ads/zzqr;

.field private final zze:Lcom/google/android/gms/internal/ads/zzqs;

.field private zzf:Lcom/google/android/gms/internal/ads/zzqv;

.field private zzg:Lcom/google/android/gms/internal/ads/zzql;


# direct methods
.method public constructor <init>()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzqt;->zza:Landroid/content/Context;

    sget-object v0, Lcom/google/android/gms/internal/ads/zzpb;->zza:Lcom/google/android/gms/internal/ads/zzpb;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzqt;->zzb:Lcom/google/android/gms/internal/ads/zzpb;

    sget-object v0, Lcom/google/android/gms/internal/ads/zzqr;->zza:Lcom/google/android/gms/internal/ads/zzqr;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzqt;->zzd:Lcom/google/android/gms/internal/ads/zzqr;

    sget-object v0, Lcom/google/android/gms/internal/ads/zzqs;->zza:Lcom/google/android/gms/internal/ads/zzqs;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzqt;->zze:Lcom/google/android/gms/internal/ads/zzqs;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzqt;->zza:Landroid/content/Context;

    sget-object p1, Lcom/google/android/gms/internal/ads/zzpb;->zza:Lcom/google/android/gms/internal/ads/zzpb;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzqt;->zzb:Lcom/google/android/gms/internal/ads/zzpb;

    sget-object p1, Lcom/google/android/gms/internal/ads/zzqr;->zza:Lcom/google/android/gms/internal/ads/zzqr;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzqt;->zzd:Lcom/google/android/gms/internal/ads/zzqr;

    sget-object p1, Lcom/google/android/gms/internal/ads/zzqs;->zza:Lcom/google/android/gms/internal/ads/zzqs;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzqt;->zze:Lcom/google/android/gms/internal/ads/zzqs;

    return-void
.end method

.method static bridge synthetic zza(Lcom/google/android/gms/internal/ads/zzqt;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzqt;->zza:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic zzb(Lcom/google/android/gms/internal/ads/zzqt;)Lcom/google/android/gms/internal/ads/zzpb;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzqt;->zzb:Lcom/google/android/gms/internal/ads/zzpb;

    return-object p0
.end method

.method static bridge synthetic zzd(Lcom/google/android/gms/internal/ads/zzqt;)Lcom/google/android/gms/internal/ads/zzqv;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzqt;->zzf:Lcom/google/android/gms/internal/ads/zzqv;

    return-object p0
.end method

.method static bridge synthetic zze(Lcom/google/android/gms/internal/ads/zzqt;)Lcom/google/android/gms/internal/ads/zzql;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzqt;->zzg:Lcom/google/android/gms/internal/ads/zzql;

    return-object p0
.end method


# virtual methods
.method public final zzc()Lcom/google/android/gms/internal/ads/zzrf;
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzqt;->zzc:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdc;->zzf(Z)V

    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzqt;->zzc:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzqt;->zzf:Lcom/google/android/gms/internal/ads/zzqv;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/ads/zzqv;

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/google/android/gms/internal/ads/zzcn;

    .line 2
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzqv;-><init>([Lcom/google/android/gms/internal/ads/zzcn;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzqt;->zzf:Lcom/google/android/gms/internal/ads/zzqv;

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzqt;->zzg:Lcom/google/android/gms/internal/ads/zzql;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzqt;->zza:Landroid/content/Context;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzql;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ads/zzql;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzqt;->zzg:Lcom/google/android/gms/internal/ads/zzql;

    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzrf;

    const/4 v1, 0x0

    .line 3
    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/ads/zzrf;-><init>(Lcom/google/android/gms/internal/ads/zzqt;Lcom/google/android/gms/internal/ads/zzre;)V

    return-object v0
.end method
