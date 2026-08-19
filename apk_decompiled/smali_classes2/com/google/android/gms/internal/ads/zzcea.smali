.class public final Lcom/google/android/gms/internal/ads/zzcea;
.super Lcom/google/android/gms/internal/ads/zzcam;
.source "com.google.android.gms:play-services-ads@@24.2.0"


# instance fields
.field private final zzc:Lcom/google/android/gms/internal/ads/zzcbh;

.field private zzd:Lcom/google/android/gms/internal/ads/zzceb;

.field private zze:Landroid/net/Uri;

.field private zzf:Lcom/google/android/gms/internal/ads/zzcal;

.field private zzg:Z

.field private zzh:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzcbh;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzcam;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzcea;->zzh:I

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzcea;->zzg:Z

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcea;->zzc:Lcom/google/android/gms/internal/ads/zzcbh;

    .line 2
    invoke-virtual {p2, p0}, Lcom/google/android/gms/internal/ads/zzcbh;->zza(Lcom/google/android/gms/internal/ads/zzcam;)V

    return-void
.end method

.method public static synthetic zzi(Lcom/google/android/gms/internal/ads/zzcea;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcea;->zzf:Lcom/google/android/gms/internal/ads/zzcal;

    if-eqz v0, :cond_1

    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzcea;->zzg:Z

    if-nez v1, :cond_0

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzcal;->zzg()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzcea;->zzg:Z

    :cond_0
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzcea;->zzf:Lcom/google/android/gms/internal/ads/zzcal;

    .line 2
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzcal;->zze()V

    :cond_1
    return-void
.end method

.method public static synthetic zzk(Lcom/google/android/gms/internal/ads/zzcea;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzcea;->zzf:Lcom/google/android/gms/internal/ads/zzcal;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzcal;->zzd()V

    :cond_0
    return-void
.end method

.method public static synthetic zzl(Lcom/google/android/gms/internal/ads/zzcea;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzcea;->zzf:Lcom/google/android/gms/internal/ads/zzcal;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzcal;->zzf()V

    :cond_0
    return-void
.end method

.method private final zzm()Z
    .locals 3
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/EnsuresNonNullIf;
        expression = {
            "immersiveAdPlayer"
        }
        result = true
    .end annotation

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzcea;->zzh:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcea;->zzd:Lcom/google/android/gms/internal/ads/zzceb;

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private final zzv(I)V
    .locals 2

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcea;->zzc:Lcom/google/android/gms/internal/ads/zzcbh;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcbh;->zzc()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcea;->zzb:Lcom/google/android/gms/internal/ads/zzcbk;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcbk;->zzb()V

    goto :goto_0

    :cond_0
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzcea;->zzh:I

    if-ne v1, v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcea;->zzc:Lcom/google/android/gms/internal/ads/zzcbh;

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcbh;->zze()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcea;->zzb:Lcom/google/android/gms/internal/ads/zzcbk;

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcbk;->zzc()V

    .line 2
    :cond_1
    :goto_0
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzcea;->zzh:I

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 3

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "@"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zza()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final zzb()I
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzcea;->zzm()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public final zzc()I
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzcea;->zzm()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public final zzd()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final zze()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final zzf()J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public final zzg()J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public final zzh()J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public final zzj()Ljava/lang/String;
    .locals 1

    const-string v0, "ImmersivePlayer"

    return-object v0
.end method

.method public final zzn()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcea;->zzd:Lcom/google/android/gms/internal/ads/zzceb;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcea;->zzb:Lcom/google/android/gms/internal/ads/zzcbk;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcbk;->zza()F

    :cond_0
    return-void
.end method

.method public final zzo()V
    .locals 2

    .line 1
    const-string v0, "AdImmersivePlayerView pause"

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/zze;->zza(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzcea;->zzm()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcea;->zzd:Lcom/google/android/gms/internal/ads/zzceb;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzceb;->zzd()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcea;->zzd:Lcom/google/android/gms/internal/ads/zzceb;

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzceb;->zza()V

    const/4 v0, 0x5

    .line 4
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzcea;->zzv(I)V

    .line 5
    sget-object v0, Lcom/google/android/gms/ads/internal/util/zzs;->zza:Lcom/google/android/gms/internal/ads/zzfqf;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzcdz;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zzcdz;-><init>(Lcom/google/android/gms/internal/ads/zzcea;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzfqf;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public final zzp()V
    .locals 2

    .line 1
    const-string v0, "AdImmersivePlayerView play"

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/zze;->zza(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzcea;->zzm()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcea;->zzd:Lcom/google/android/gms/internal/ads/zzceb;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzceb;->zzb()V

    const/4 v0, 0x4

    .line 3
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzcea;->zzv(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcea;->zza:Lcom/google/android/gms/internal/ads/zzcba;

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcba;->zzb()V

    .line 5
    sget-object v0, Lcom/google/android/gms/ads/internal/util/zzs;->zza:Lcom/google/android/gms/internal/ads/zzfqf;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzcdy;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zzcdy;-><init>(Lcom/google/android/gms/internal/ads/zzcea;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzfqf;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public final zzq(I)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AdImmersivePlayerView seek "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/zze;->zza(Ljava/lang/String;)V

    return-void
.end method

.method public final zzr(Lcom/google/android/gms/internal/ads/zzcal;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcea;->zzf:Lcom/google/android/gms/internal/ads/zzcal;

    return-void
.end method

.method public final zzs(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcea;->zze:Landroid/net/Uri;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzceb;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcea;->zze:Landroid/net/Uri;

    .line 2
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/ads/zzceb;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcea;->zzd:Lcom/google/android/gms/internal/ads/zzceb;

    const/4 p1, 0x3

    .line 3
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzcea;->zzv(I)V

    .line 4
    sget-object p1, Lcom/google/android/gms/ads/internal/util/zzs;->zza:Lcom/google/android/gms/internal/ads/zzfqf;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzcdx;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzcdx;-><init>(Lcom/google/android/gms/internal/ads/zzcea;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzfqf;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public final zzt()V
    .locals 1

    .line 1
    const-string v0, "AdImmersivePlayerView stop"

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/zze;->zza(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcea;->zzd:Lcom/google/android/gms/internal/ads/zzceb;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzceb;->zzc()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzcea;->zzd:Lcom/google/android/gms/internal/ads/zzceb;

    const/4 v0, 0x1

    .line 3
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzcea;->zzv(I)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcea;->zzc:Lcom/google/android/gms/internal/ads/zzcbh;

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcbh;->zzd()V

    return-void
.end method

.method public final zzu(FF)V
    .locals 0

    return-void
.end method
