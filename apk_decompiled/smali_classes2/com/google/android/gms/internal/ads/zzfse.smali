.class final Lcom/google/android/gms/internal/ads/zzfse;
.super Lcom/google/android/gms/internal/ads/zzfqx;
.source "com.google.android.gms:play-services-ads@@24.2.0"


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/ads/zzfsf;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzfsk;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzfsf;Lcom/google/android/gms/internal/ads/zzfsk;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfse;->zza:Lcom/google/android/gms/internal/ads/zzfsf;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzfqx;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzfse;->zzb:Lcom/google/android/gms/internal/ads/zzfsk;

    return-void
.end method


# virtual methods
.method public final zzb(Landroid/os/Bundle;)V
    .locals 2

    const/16 v0, 0x1fd6

    .line 1
    const-string v1, "statusCode"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 2
    const-string v1, "sessionToken"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 3
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfsj;->zzc()Lcom/google/android/gms/internal/ads/zzfsi;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzfsi;->zzb(I)Lcom/google/android/gms/internal/ads/zzfsi;

    if-eqz p1, :cond_0

    .line 4
    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/zzfsi;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzfsi;

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzfse;->zzb:Lcom/google/android/gms/internal/ads/zzfsk;

    .line 5
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzfsi;->zzc()Lcom/google/android/gms/internal/ads/zzfsj;

    move-result-object v1

    invoke-interface {p1, v1}, Lcom/google/android/gms/internal/ads/zzfsk;->zza(Lcom/google/android/gms/internal/ads/zzfsj;)V

    const/16 p1, 0x1fdd

    if-ne v0, p1, :cond_1

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzfse;->zza:Lcom/google/android/gms/internal/ads/zzfsf;

    .line 6
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfsf;->zzd()V

    :cond_1
    return-void
.end method
