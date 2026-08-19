.class public final Lcom/google/android/gms/ads/internal/client/zzbb;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-api@@24.2.0"


# static fields
.field public static final synthetic zza:I

.field private static final zzb:Lcom/google/android/gms/ads/internal/client/zzbb;


# instance fields
.field private final zzc:Lcom/google/android/gms/ads/internal/util/client/zzf;

.field private final zzd:Lcom/google/android/gms/ads/internal/client/zzaz;

.field private final zze:Ljava/lang/String;

.field private final zzf:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

.field private final zzg:Ljava/util/Random;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/ads/internal/client/zzbb;

    invoke-direct {v0}, Lcom/google/android/gms/ads/internal/client/zzbb;-><init>()V

    sput-object v0, Lcom/google/android/gms/ads/internal/client/zzbb;->zzb:Lcom/google/android/gms/ads/internal/client/zzbb;

    return-void
.end method

.method protected constructor <init>()V
    .locals 11

    .line 1
    new-instance v0, Lcom/google/android/gms/ads/internal/util/client/zzf;

    invoke-direct {v0}, Lcom/google/android/gms/ads/internal/util/client/zzf;-><init>()V

    new-instance v10, Lcom/google/android/gms/ads/internal/client/zzaz;

    new-instance v2, Lcom/google/android/gms/ads/internal/client/zzk;

    invoke-direct {v2}, Lcom/google/android/gms/ads/internal/client/zzk;-><init>()V

    new-instance v3, Lcom/google/android/gms/ads/internal/client/zzi;

    invoke-direct {v3}, Lcom/google/android/gms/ads/internal/client/zzi;-><init>()V

    new-instance v4, Lcom/google/android/gms/ads/internal/client/zzfa;

    invoke-direct {v4}, Lcom/google/android/gms/ads/internal/client/zzfa;-><init>()V

    new-instance v5, Lcom/google/android/gms/internal/ads/zzbhp;

    invoke-direct {v5}, Lcom/google/android/gms/internal/ads/zzbhp;-><init>()V

    new-instance v6, Lcom/google/android/gms/internal/ads/zzbwp;

    invoke-direct {v6}, Lcom/google/android/gms/internal/ads/zzbwp;-><init>()V

    new-instance v7, Lcom/google/android/gms/internal/ads/zzbsv;

    invoke-direct {v7}, Lcom/google/android/gms/internal/ads/zzbsv;-><init>()V

    new-instance v8, Lcom/google/android/gms/internal/ads/zzbhq;

    invoke-direct {v8}, Lcom/google/android/gms/internal/ads/zzbhq;-><init>()V

    new-instance v9, Lcom/google/android/gms/ads/internal/client/zzl;

    invoke-direct {v9}, Lcom/google/android/gms/ads/internal/client/zzl;-><init>()V

    move-object v1, v10

    invoke-direct/range {v1 .. v9}, Lcom/google/android/gms/ads/internal/client/zzaz;-><init>(Lcom/google/android/gms/ads/internal/client/zzk;Lcom/google/android/gms/ads/internal/client/zzi;Lcom/google/android/gms/ads/internal/client/zzfa;Lcom/google/android/gms/internal/ads/zzbhp;Lcom/google/android/gms/internal/ads/zzbwp;Lcom/google/android/gms/internal/ads/zzbsv;Lcom/google/android/gms/internal/ads/zzbhq;Lcom/google/android/gms/ads/internal/client/zzl;)V

    .line 2
    invoke-static {}, Lcom/google/android/gms/ads/internal/util/client/zzf;->zzf()Ljava/lang/String;

    move-result-object v1

    .line 3
    new-instance v2, Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    const v3, 0xefc3650

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-direct {v2, v5, v3, v4}, Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;-><init>(IIZ)V

    new-instance v3, Ljava/util/Random;

    .line 4
    invoke-direct {v3}, Ljava/util/Random;-><init>()V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzbb;->zzc:Lcom/google/android/gms/ads/internal/util/client/zzf;

    iput-object v10, p0, Lcom/google/android/gms/ads/internal/client/zzbb;->zzd:Lcom/google/android/gms/ads/internal/client/zzaz;

    iput-object v1, p0, Lcom/google/android/gms/ads/internal/client/zzbb;->zze:Ljava/lang/String;

    iput-object v2, p0, Lcom/google/android/gms/ads/internal/client/zzbb;->zzf:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    iput-object v3, p0, Lcom/google/android/gms/ads/internal/client/zzbb;->zzg:Ljava/util/Random;

    return-void
.end method

.method public static zza()Lcom/google/android/gms/ads/internal/client/zzaz;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/ads/internal/client/zzbb;->zzb:Lcom/google/android/gms/ads/internal/client/zzbb;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/client/zzbb;->zzd:Lcom/google/android/gms/ads/internal/client/zzaz;

    return-object v0
.end method

.method public static zzb()Lcom/google/android/gms/ads/internal/util/client/zzf;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/ads/internal/client/zzbb;->zzb:Lcom/google/android/gms/ads/internal/client/zzbb;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/client/zzbb;->zzc:Lcom/google/android/gms/ads/internal/util/client/zzf;

    return-object v0
.end method

.method public static zzc()Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/ads/internal/client/zzbb;->zzb:Lcom/google/android/gms/ads/internal/client/zzbb;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/client/zzbb;->zzf:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    return-object v0
.end method

.method public static zzd()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/ads/internal/client/zzbb;->zzb:Lcom/google/android/gms/ads/internal/client/zzbb;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/client/zzbb;->zze:Ljava/lang/String;

    return-object v0
.end method

.method public static zze()Ljava/util/Random;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/ads/internal/client/zzbb;->zzb:Lcom/google/android/gms/ads/internal/client/zzbb;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/client/zzbb;->zzg:Ljava/util/Random;

    return-object v0
.end method
