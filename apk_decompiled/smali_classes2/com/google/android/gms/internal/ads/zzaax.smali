.class public final Lcom/google/android/gms/internal/ads/zzaax;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.2.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzcb;


# instance fields
.field private final zza:Landroid/content/Context;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzeq;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzca;

.field private final zzd:Landroid/util/SparseArray;

.field private final zze:Ljava/util/List;

.field private final zzf:Lcom/google/android/gms/internal/ads/zzbv;

.field private final zzg:Lcom/google/android/gms/internal/ads/zzabv;

.field private final zzh:Lcom/google/android/gms/internal/ads/zzdg;

.field private final zzi:Ljava/util/concurrent/CopyOnWriteArraySet;

.field private final zzj:Lcom/google/android/gms/internal/ads/zzz;

.field private zzk:Lcom/google/android/gms/internal/ads/zzdq;

.field private zzl:I

.field private zzm:Landroid/util/Pair;

.field private zzn:I

.field private zzo:I

.field private zzp:J

.field private zzq:J

.field private zzr:I


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzaar;Lcom/google/android/gms/internal/ads/zzaaw;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzaar;->zza(Lcom/google/android/gms/internal/ads/zzaar;)Landroid/content/Context;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzaax;->zza:Landroid/content/Context;

    new-instance p2, Lcom/google/android/gms/internal/ads/zzeq;

    const/16 v0, 0xa

    invoke-direct {p2, v0}, Lcom/google/android/gms/internal/ads/zzeq;-><init>(I)V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzaax;->zzb:Lcom/google/android/gms/internal/ads/zzeq;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzaar;->zzc(Lcom/google/android/gms/internal/ads/zzaar;)Lcom/google/android/gms/internal/ads/zzca;

    move-result-object p2

    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzdc;->zzb(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, p2

    check-cast v0, Lcom/google/android/gms/internal/ads/zzca;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzaax;->zzc:Lcom/google/android/gms/internal/ads/zzca;

    new-instance p2, Landroid/util/SparseArray;

    .line 2
    invoke-direct {p2}, Landroid/util/SparseArray;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzaax;->zzd:Landroid/util/SparseArray;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzaar;->zzh(Lcom/google/android/gms/internal/ads/zzaar;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzaax;->zze:Ljava/util/List;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzaar;->zzb(Lcom/google/android/gms/internal/ads/zzaar;)Lcom/google/android/gms/internal/ads/zzbv;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzaax;->zzf:Lcom/google/android/gms/internal/ads/zzbv;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzaar;->zzd(Lcom/google/android/gms/internal/ads/zzaar;)Lcom/google/android/gms/internal/ads/zzdg;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzaax;->zzh:Lcom/google/android/gms/internal/ads/zzdg;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzaae;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzaar;->zzg(Lcom/google/android/gms/internal/ads/zzaar;)Lcom/google/android/gms/internal/ads/zzabb;

    move-result-object p1

    .line 3
    invoke-direct {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzaae;-><init>(Lcom/google/android/gms/internal/ads/zzabb;Lcom/google/android/gms/internal/ads/zzdg;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzaax;->zzg:Lcom/google/android/gms/internal/ads/zzabv;

    .line 4
    new-instance p1, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaax;->zzi:Ljava/util/concurrent/CopyOnWriteArraySet;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzx;

    .line 5
    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzx;-><init>()V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzx;->zzaj()Lcom/google/android/gms/internal/ads/zzz;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaax;->zzj:Lcom/google/android/gms/internal/ads/zzz;

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzaax;->zzp:J

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzaax;->zzq:J

    const/4 p1, -0x1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzaax;->zzr:I

    const/4 p1, 0x0

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzaax;->zzo:I

    return-void
.end method

.method static bridge synthetic zza(Lcom/google/android/gms/internal/ads/zzaax;)I
    .locals 0

    iget p0, p0, Lcom/google/android/gms/internal/ads/zzaax;->zzl:I

    return p0
.end method

.method static bridge synthetic zzb(Lcom/google/android/gms/internal/ads/zzk;)Lcom/google/android/gms/internal/ads/zzk;
    .locals 0

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzaax;->zzu(Lcom/google/android/gms/internal/ads/zzk;)Lcom/google/android/gms/internal/ads/zzk;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic zzc(Lcom/google/android/gms/internal/ads/zzaax;)Lcom/google/android/gms/internal/ads/zzeq;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzaax;->zzb:Lcom/google/android/gms/internal/ads/zzeq;

    return-object p0
.end method

.method static bridge synthetic zzd(Lcom/google/android/gms/internal/ads/zzaax;)Lcom/google/android/gms/internal/ads/zzabv;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzaax;->zzg:Lcom/google/android/gms/internal/ads/zzabv;

    return-object p0
.end method

.method static bridge synthetic zzf(Lcom/google/android/gms/internal/ads/zzaax;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzaax;->zze:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic zzg(Lcom/google/android/gms/internal/ads/zzaax;)V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzaax;->zzn:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzaax;->zzn:I

    return-void
.end method

.method static bridge synthetic zzh(Lcom/google/android/gms/internal/ads/zzaax;J)V
    .locals 0

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzaax;->zzq:J

    return-void
.end method

.method static bridge synthetic zzi(Lcom/google/android/gms/internal/ads/zzaax;I)V
    .locals 0

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzaax;->zzl:I

    return-void
.end method

.method static bridge synthetic zzj(Lcom/google/android/gms/internal/ads/zzaax;Z)V
    .locals 9

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzaax;->zzo:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzaax;->zzn:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzaax;->zzn:I

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzaax;->zzg:Lcom/google/android/gms/internal/ads/zzabv;

    invoke-interface {v2, p1}, Lcom/google/android/gms/internal/ads/zzabv;->zzc(Z)V

    :goto_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaax;->zzb:Lcom/google/android/gms/internal/ads/zzeq;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzeq;->zza()I

    move-result v0

    if-le v0, v1, :cond_0

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzeq;->zzb()Ljava/lang/Object;

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzeq;->zza()I

    move-result v0

    if-ne v0, v1, :cond_1

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzeq;->zzb()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    .line 7
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    move-object v0, p1

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    iget v7, p0, Lcom/google/android/gms/internal/ads/zzaax;->zzl:I

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzaax;->zzj:Lcom/google/android/gms/internal/ads/zzz;

    .line 4
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfww;->zzn()Lcom/google/android/gms/internal/ads/zzfww;

    move-result-object v8

    const/4 v3, 0x1

    .line 5
    invoke-interface/range {v2 .. v8}, Lcom/google/android/gms/internal/ads/zzabv;->zze(ILcom/google/android/gms/internal/ads/zzz;JILjava/util/List;)V

    :cond_1
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzaax;->zzp:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzaax;->zzq:J

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaax;->zzk:Lcom/google/android/gms/internal/ads/zzdq;

    .line 6
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzdc;->zzb(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/ads/zzdq;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzaap;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzaap;-><init>(Lcom/google/android/gms/internal/ads/zzaax;)V

    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/ads/zzdq;->zzi(Ljava/lang/Runnable;)Z

    :cond_2
    return-void
.end method

.method static bridge synthetic zzk(Lcom/google/android/gms/internal/ads/zzaax;JJ)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzaax;->zzg:Lcom/google/android/gms/internal/ads/zzabv;

    invoke-interface {p0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/ads/zzabv;->zzh(JJ)V

    return-void
.end method

.method static bridge synthetic zzl(Lcom/google/android/gms/internal/ads/zzaax;F)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzaax;->zzg:Lcom/google/android/gms/internal/ads/zzabv;

    invoke-interface {p0, p1}, Lcom/google/android/gms/internal/ads/zzabv;->zzj(F)V

    return-void
.end method

.method static bridge synthetic zzm(Lcom/google/android/gms/internal/ads/zzaax;Lcom/google/android/gms/internal/ads/zzaay;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzaax;->zzg:Lcom/google/android/gms/internal/ads/zzabv;

    invoke-interface {p0, p1}, Lcom/google/android/gms/internal/ads/zzabv;->zzl(Lcom/google/android/gms/internal/ads/zzaay;)V

    return-void
.end method

.method static bridge synthetic zzr(Lcom/google/android/gms/internal/ads/zzaax;Z)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzaax;->zzg:Lcom/google/android/gms/internal/ads/zzabv;

    const/4 p1, 0x0

    invoke-interface {p0, p1}, Lcom/google/android/gms/internal/ads/zzabv;->zzn(Z)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic zzs(Lcom/google/android/gms/internal/ads/zzaax;Lcom/google/android/gms/internal/ads/zzz;I)Z
    .locals 12

    .line 1
    iget p2, p0, Lcom/google/android/gms/internal/ads/zzaax;->zzo:I

    if-nez p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzdc;->zzf(Z)V

    iget-object p2, p1, Lcom/google/android/gms/internal/ads/zzz;->zzC:Lcom/google/android/gms/internal/ads/zzk;

    .line 2
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzaax;->zzu(Lcom/google/android/gms/internal/ads/zzk;)Lcom/google/android/gms/internal/ads/zzk;

    move-result-object p2

    .line 3
    iget v0, p2, Lcom/google/android/gms/internal/ads/zzk;->zzd:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_1

    sget v0, Lcom/google/android/gms/internal/ads/zzeu;->zza:I

    const/16 v1, 0x22

    if-ge v0, v1, :cond_1

    .line 4
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzk;->zzc()Lcom/google/android/gms/internal/ads/zzi;

    move-result-object p2

    const/4 v0, 0x6

    invoke-virtual {p2, v0}, Lcom/google/android/gms/internal/ads/zzi;->zzd(I)Lcom/google/android/gms/internal/ads/zzi;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzi;->zzg()Lcom/google/android/gms/internal/ads/zzk;

    move-result-object p2

    :cond_1
    move-object v2, p2

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzaax;->zzh:Lcom/google/android/gms/internal/ads/zzdg;

    .line 5
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdc;->zzb(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Landroid/os/Looper;

    const/4 v11, 0x0

    invoke-interface {p2, v0, v11}, Lcom/google/android/gms/internal/ads/zzdg;->zzd(Landroid/os/Looper;Landroid/os/Handler$Callback;)Lcom/google/android/gms/internal/ads/zzdq;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzaax;->zzk:Lcom/google/android/gms/internal/ads/zzdq;

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaax;->zzc:Lcom/google/android/gms/internal/ads/zzca;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaax;->zza:Landroid/content/Context;

    sget-object v3, Lcom/google/android/gms/internal/ads/zzn;->zza:Lcom/google/android/gms/internal/ads/zzn;

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzaax;->zzk:Lcom/google/android/gms/internal/ads/zzdq;

    .line 6
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v5, Lcom/google/android/gms/internal/ads/zzaaq;

    invoke-direct {v5, p2}, Lcom/google/android/gms/internal/ads/zzaaq;-><init>(Lcom/google/android/gms/internal/ads/zzdq;)V

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzaax;->zzf:Lcom/google/android/gms/internal/ads/zzbv;

    iget-object v7, p0, Lcom/google/android/gms/internal/ads/zzaax;->zze:Ljava/util/List;

    const-wide/16 v8, 0x0

    const/4 v10, 0x0

    move-object v4, p0

    .line 7
    invoke-interface/range {v0 .. v10}, Lcom/google/android/gms/internal/ads/zzca;->zza(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzk;Lcom/google/android/gms/internal/ads/zzn;Lcom/google/android/gms/internal/ads/zzcb;Ljava/util/concurrent/Executor;Lcom/google/android/gms/internal/ads/zzbv;Ljava/util/List;JZ)Lcom/google/android/gms/internal/ads/zzcc;

    .line 8
    throw v11
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzbw; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p0

    new-instance p2, Lcom/google/android/gms/internal/ads/zzabu;

    .line 9
    invoke-direct {p2, p0, p1}, Lcom/google/android/gms/internal/ads/zzabu;-><init>(Ljava/lang/Throwable;Lcom/google/android/gms/internal/ads/zzz;)V

    throw p2
.end method

.method static bridge synthetic zzt(Lcom/google/android/gms/internal/ads/zzaax;)Z
    .locals 1

    iget p0, p0, Lcom/google/android/gms/internal/ads/zzaax;->zzr:I

    const/4 v0, -0x1

    if-eq p0, v0, :cond_0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private static zzu(Lcom/google/android/gms/internal/ads/zzk;)Lcom/google/android/gms/internal/ads/zzk;
    .locals 1

    if-eqz p0, :cond_1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzk;->zzf()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    return-object p0

    :cond_1
    :goto_0
    sget-object p0, Lcom/google/android/gms/internal/ads/zzk;->zza:Lcom/google/android/gms/internal/ads/zzk;

    return-object p0
.end method


# virtual methods
.method public final zze(I)Lcom/google/android/gms/internal/ads/zzabv;
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaax;->zzd:Landroid/util/SparseArray;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/zzeu;->zzH(Landroid/util/SparseArray;I)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzdc;->zzf(Z)V

    new-instance v1, Lcom/google/android/gms/internal/ads/zzaas;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzaax;->zza:Landroid/content/Context;

    .line 2
    invoke-direct {v1, p0, v2, v0}, Lcom/google/android/gms/internal/ads/zzaas;-><init>(Lcom/google/android/gms/internal/ads/zzaax;Landroid/content/Context;I)V

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzaax;->zzi:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 3
    invoke-virtual {v2, v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    .line 4
    invoke-virtual {p1, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-object v1
.end method

.method public final zzn()V
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzel;->zza:Lcom/google/android/gms/internal/ads/zzel;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzel;->zzb()I

    sget-object v0, Lcom/google/android/gms/internal/ads/zzel;->zza:Lcom/google/android/gms/internal/ads/zzel;

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzel;->zza()I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzaax;->zzm:Landroid/util/Pair;

    return-void
.end method

.method public final zzo()V
    .locals 3

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzaax;->zzo:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaax;->zzk:Lcom/google/android/gms/internal/ads/zzdq;

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    invoke-interface {v0, v2}, Lcom/google/android/gms/internal/ads/zzdq;->zzf(Ljava/lang/Object;)V

    :cond_1
    iput-object v2, p0, Lcom/google/android/gms/internal/ads/zzaax;->zzm:Landroid/util/Pair;

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzaax;->zzo:I

    return-void
.end method

.method public final zzp(Landroid/view/Surface;Lcom/google/android/gms/internal/ads/zzel;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaax;->zzm:Landroid/util/Pair;

    if-eqz v0, :cond_0

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Landroid/view/Surface;

    .line 2
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaax;->zzm:Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzel;

    .line 3
    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/ads/zzel;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 4
    :cond_0
    invoke-static {p1, p2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaax;->zzm:Landroid/util/Pair;

    .line 5
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzel;->zzb()I

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzel;->zza()I

    return-void
.end method

.method public final zzq(I)V
    .locals 0

    const/4 p1, 0x1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzaax;->zzr:I

    return-void
.end method
