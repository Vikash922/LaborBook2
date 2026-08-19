.class public Lcom/google/android/gms/internal/ads/zzegn;
.super Lcom/google/android/gms/internal/ads/zzeho;
.source "com.google.android.gms:play-services-ads@@24.2.0"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzddl;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzcva;Lcom/google/android/gms/internal/ads/zzdda;Lcom/google/android/gms/internal/ads/zzcvu;Lcom/google/android/gms/internal/ads/zzcwj;Lcom/google/android/gms/internal/ads/zzcwo;Lcom/google/android/gms/internal/ads/zzcvp;Lcom/google/android/gms/internal/ads/zzczz;Lcom/google/android/gms/internal/ads/zzddx;Lcom/google/android/gms/internal/ads/zzcxi;Lcom/google/android/gms/internal/ads/zzddl;Lcom/google/android/gms/internal/ads/zzczv;)V
    .locals 11

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p7

    move-object/from16 v7, p9

    move-object/from16 v8, p8

    move-object/from16 v9, p11

    move-object/from16 v10, p6

    .line 1
    invoke-direct/range {v0 .. v10}, Lcom/google/android/gms/internal/ads/zzeho;-><init>(Lcom/google/android/gms/internal/ads/zzcva;Lcom/google/android/gms/internal/ads/zzdda;Lcom/google/android/gms/internal/ads/zzcvu;Lcom/google/android/gms/internal/ads/zzcwj;Lcom/google/android/gms/internal/ads/zzcwo;Lcom/google/android/gms/internal/ads/zzczz;Lcom/google/android/gms/internal/ads/zzcxi;Lcom/google/android/gms/internal/ads/zzddx;Lcom/google/android/gms/internal/ads/zzczv;Lcom/google/android/gms/internal/ads/zzcvp;)V

    move-object/from16 v1, p10

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzegn;->zza:Lcom/google/android/gms/internal/ads/zzddl;

    return-void
.end method


# virtual methods
.method public final zzs(Lcom/google/android/gms/internal/ads/zzbvw;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzegn;->zza:Lcom/google/android/gms/internal/ads/zzddl;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzddl;->zza(Lcom/google/android/gms/internal/ads/zzbvw;)V

    return-void
.end method

.method public final zzt(Lcom/google/android/gms/internal/ads/zzbwa;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzbvw;

    .line 2
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzbwa;->zzf()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzbwa;->zze()I

    move-result p1

    invoke-direct {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzbvw;-><init>(Ljava/lang/String;I)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzegn;->zza:Lcom/google/android/gms/internal/ads/zzddl;

    .line 1
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzddl;->zza(Lcom/google/android/gms/internal/ads/zzbvw;)V

    return-void
.end method

.method public final zzu()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzegn;->zza:Lcom/google/android/gms/internal/ads/zzddl;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzddl;->zza(Lcom/google/android/gms/internal/ads/zzbvw;)V

    return-void
.end method

.method public final zzv()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzegn;->zza:Lcom/google/android/gms/internal/ads/zzddl;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzddl;->zzb()V

    return-void
.end method

.method public final zzw()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzegn;->zza:Lcom/google/android/gms/internal/ads/zzddl;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzddl;->zzb()V

    return-void
.end method

.method public final zzz()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzegn;->zza:Lcom/google/android/gms/internal/ads/zzddl;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzddl;->zzc()V

    return-void
.end method
