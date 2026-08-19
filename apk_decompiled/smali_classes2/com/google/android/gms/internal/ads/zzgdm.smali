.class public final Lcom/google/android/gms/internal/ads/zzgdm;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.2.0"


# instance fields
.field private zza:Z

.field private final zzb:Lcom/google/android/gms/internal/ads/zzgdj;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzgdh;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final zzd:Lcom/google/android/gms/internal/ads/zzgdv;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private zze:Lcom/google/android/gms/internal/ads/zzgdn;

.field private zzf:Lcom/google/android/gms/internal/ads/zzgdo;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzgdv;Lcom/google/android/gms/internal/ads/zzgdq;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object p2, Lcom/google/android/gms/internal/ads/zzgdj;->zza:Lcom/google/android/gms/internal/ads/zzgdj;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzgdm;->zzb:Lcom/google/android/gms/internal/ads/zzgdj;

    const/4 p2, 0x0

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzgdm;->zze:Lcom/google/android/gms/internal/ads/zzgdn;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzgdm;->zzf:Lcom/google/android/gms/internal/ads/zzgdo;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzgdm;->zzc:Lcom/google/android/gms/internal/ads/zzgdh;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgdm;->zzd:Lcom/google/android/gms/internal/ads/zzgdv;

    return-void
.end method

.method static bridge synthetic zza(Lcom/google/android/gms/internal/ads/zzgdm;)Lcom/google/android/gms/internal/ads/zzgdh;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzgdm;->zzc:Lcom/google/android/gms/internal/ads/zzgdh;

    const/4 p0, 0x0

    return-object p0
.end method

.method static bridge synthetic zzb(Lcom/google/android/gms/internal/ads/zzgdm;)Lcom/google/android/gms/internal/ads/zzgdj;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzgdm;->zzb:Lcom/google/android/gms/internal/ads/zzgdj;

    return-object p0
.end method

.method static bridge synthetic zze(Lcom/google/android/gms/internal/ads/zzgdm;)Lcom/google/android/gms/internal/ads/zzgdn;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzgdm;->zze:Lcom/google/android/gms/internal/ads/zzgdn;

    return-object p0
.end method

.method static bridge synthetic zzf(Lcom/google/android/gms/internal/ads/zzgdm;)Lcom/google/android/gms/internal/ads/zzgdo;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzgdm;->zzf:Lcom/google/android/gms/internal/ads/zzgdo;

    return-object p0
.end method

.method static bridge synthetic zzg(Lcom/google/android/gms/internal/ads/zzgdm;)Lcom/google/android/gms/internal/ads/zzgdv;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzgdm;->zzd:Lcom/google/android/gms/internal/ads/zzgdv;

    return-object p0
.end method

.method static bridge synthetic zzh(Lcom/google/android/gms/internal/ads/zzgdm;Lcom/google/android/gms/internal/ads/zzgdo;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgdm;->zzf:Lcom/google/android/gms/internal/ads/zzgdo;

    return-void
.end method

.method static bridge synthetic zzi(Lcom/google/android/gms/internal/ads/zzgdm;Z)V
    .locals 0

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzgdm;->zza:Z

    return-void
.end method

.method static bridge synthetic zzj(Lcom/google/android/gms/internal/ads/zzgdm;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/gms/internal/ads/zzgdm;->zza:Z

    return p0
.end method


# virtual methods
.method public final zzc()Lcom/google/android/gms/internal/ads/zzgdm;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgdm;->zzf:Lcom/google/android/gms/internal/ads/zzgdo;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgdo;->zzc(Lcom/google/android/gms/internal/ads/zzgdo;)V

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzgdm;->zza:Z

    return-object p0
.end method

.method public final zzd()Lcom/google/android/gms/internal/ads/zzgdm;
    .locals 1

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgdn;->zzb()Lcom/google/android/gms/internal/ads/zzgdn;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzgdm;->zze:Lcom/google/android/gms/internal/ads/zzgdn;

    return-object p0
.end method
