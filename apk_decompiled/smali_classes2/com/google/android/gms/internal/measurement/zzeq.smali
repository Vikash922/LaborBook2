.class final Lcom/google/android/gms/internal/measurement/zzeq;
.super Lcom/google/android/gms/internal/measurement/zzdv$zzb;
.source "com.google.android.gms:play-services-measurement-sdk-api@@22.1.0"


# instance fields
.field private final synthetic zzc:Lcom/google/android/gms/internal/measurement/zzdi;

.field private final synthetic zzd:Lcom/google/android/gms/internal/measurement/zzdv;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/measurement/zzdv;Lcom/google/android/gms/internal/measurement/zzdi;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/google/android/gms/internal/measurement/zzeq;->zzc:Lcom/google/android/gms/internal/measurement/zzdi;

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzeq;->zzd:Lcom/google/android/gms/internal/measurement/zzdv;

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/measurement/zzdv$zzb;-><init>(Lcom/google/android/gms/internal/measurement/zzdv;)V

    return-void
.end method


# virtual methods
.method final zza()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzeq;->zzd:Lcom/google/android/gms/internal/measurement/zzdv;

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzdv;->zza(Lcom/google/android/gms/internal/measurement/zzdv;)Lcom/google/android/gms/internal/measurement/zzdk;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzdk;

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzeq;->zzc:Lcom/google/android/gms/internal/measurement/zzdi;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/measurement/zzdk;->getCurrentScreenName(Lcom/google/android/gms/internal/measurement/zzdl;)V

    return-void
.end method

.method protected final zzb()V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzeq;->zzc:Lcom/google/android/gms/internal/measurement/zzdi;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/measurement/zzdi;->zza(Landroid/os/Bundle;)V

    return-void
.end method
