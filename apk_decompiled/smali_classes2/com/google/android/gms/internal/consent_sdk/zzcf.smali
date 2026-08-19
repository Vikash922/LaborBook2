.class public final Lcom/google/android/gms/internal/consent_sdk/zzcf;
.super Ljava/lang/Object;
.source "com.google.android.ump:user-messaging-platform@@3.1.0"


# instance fields
.field public zza:Ljava/lang/String;

.field public zzb:Lcom/google/android/gms/internal/consent_sdk/zzcb;

.field public zzc:Ljava/lang/String;

.field public zzd:Ljava/lang/Boolean;

.field public zze:Ljava/util/Map;

.field public zzf:Lcom/google/android/gms/internal/consent_sdk/zzcd;

.field public zzg:Lcom/google/android/gms/internal/consent_sdk/zzbz;

.field public zzh:Lcom/google/android/gms/internal/consent_sdk/zzce;

.field public zzi:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/consent_sdk/zzcf;->zze:Ljava/util/Map;

    .line 2
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/consent_sdk/zzcf;->zzi:Ljava/util/List;

    return-void
.end method
