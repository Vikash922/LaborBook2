.class public abstract Lcom/google/android/gms/internal/ads/zzfwl;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.2.0"


# static fields
.field private static final zza:Lcom/google/android/gms/internal/ads/zzfwl;

.field private static final zzb:Lcom/google/android/gms/internal/ads/zzfwl;

.field private static final zzc:Lcom/google/android/gms/internal/ads/zzfwl;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzfwi;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzfwi;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzfwl;->zza:Lcom/google/android/gms/internal/ads/zzfwl;

    .line 2
    new-instance v0, Lcom/google/android/gms/internal/ads/zzfwj;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzfwj;-><init>(I)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzfwl;->zzb:Lcom/google/android/gms/internal/ads/zzfwl;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzfwj;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzfwj;-><init>(I)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzfwl;->zzc:Lcom/google/android/gms/internal/ads/zzfwl;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzfwk;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static bridge synthetic zzg()Lcom/google/android/gms/internal/ads/zzfwl;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzfwl;->zza:Lcom/google/android/gms/internal/ads/zzfwl;

    return-object v0
.end method

.method static bridge synthetic zzh()Lcom/google/android/gms/internal/ads/zzfwl;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzfwl;->zzc:Lcom/google/android/gms/internal/ads/zzfwl;

    return-object v0
.end method

.method static bridge synthetic zzi()Lcom/google/android/gms/internal/ads/zzfwl;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzfwl;->zzb:Lcom/google/android/gms/internal/ads/zzfwl;

    return-object v0
.end method

.method public static zzj()Lcom/google/android/gms/internal/ads/zzfwl;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzfwl;->zza:Lcom/google/android/gms/internal/ads/zzfwl;

    return-object v0
.end method


# virtual methods
.method public abstract zza()I
.end method

.method public abstract zzb(II)Lcom/google/android/gms/internal/ads/zzfwl;
.end method

.method public abstract zzc(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lcom/google/android/gms/internal/ads/zzfwl;
.end method

.method public abstract zzd(ZZ)Lcom/google/android/gms/internal/ads/zzfwl;
.end method

.method public abstract zze(ZZ)Lcom/google/android/gms/internal/ads/zzfwl;
.end method
