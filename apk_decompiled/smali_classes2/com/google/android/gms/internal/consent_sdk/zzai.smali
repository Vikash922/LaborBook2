.class final Lcom/google/android/gms/internal/consent_sdk/zzai;
.super Ljava/lang/Object;
.source "com.google.android.ump:user-messaging-platform@@3.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/consent_sdk/zzat;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/consent_sdk/zzaf;

.field private final zzb:Lcom/google/android/gms/internal/consent_sdk/zzdn;

.field private final zzc:Lcom/google/android/gms/internal/consent_sdk/zzdn;

.field private final zzd:Lcom/google/android/gms/internal/consent_sdk/zzdn;

.field private final zze:Lcom/google/android/gms/internal/consent_sdk/zzdn;

.field private final zzf:Lcom/google/android/gms/internal/consent_sdk/zzdn;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/consent_sdk/zzaf;Lcom/google/android/gms/internal/consent_sdk/zzbm;Lcom/google/android/gms/internal/consent_sdk/zzaj;)V
    .locals 11

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/consent_sdk/zzai;->zza:Lcom/google/android/gms/internal/consent_sdk/zzaf;

    invoke-static {p1}, Lcom/google/android/gms/internal/consent_sdk/zzaf;->zze(Lcom/google/android/gms/internal/consent_sdk/zzaf;)Lcom/google/android/gms/internal/consent_sdk/zzdn;

    move-result-object p3

    new-instance v0, Lcom/google/android/gms/internal/consent_sdk/zzbu;

    invoke-direct {v0, p3}, Lcom/google/android/gms/internal/consent_sdk/zzbu;-><init>(Lcom/google/android/gms/internal/consent_sdk/zzdp;)V

    invoke-static {v0}, Lcom/google/android/gms/internal/consent_sdk/zzdj;->zzb(Lcom/google/android/gms/internal/consent_sdk/zzdn;)Lcom/google/android/gms/internal/consent_sdk/zzdn;

    move-result-object p3

    iput-object p3, p0, Lcom/google/android/gms/internal/consent_sdk/zzai;->zzb:Lcom/google/android/gms/internal/consent_sdk/zzdn;

    invoke-static {p2}, Lcom/google/android/gms/internal/consent_sdk/zzdl;->zzb(Ljava/lang/Object;)Lcom/google/android/gms/internal/consent_sdk/zzdk;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/internal/consent_sdk/zzai;->zzc:Lcom/google/android/gms/internal/consent_sdk/zzdn;

    new-instance v0, Lcom/google/android/gms/internal/consent_sdk/zzdi;

    invoke-direct {v0}, Lcom/google/android/gms/internal/consent_sdk/zzdi;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/consent_sdk/zzai;->zzd:Lcom/google/android/gms/internal/consent_sdk/zzdn;

    invoke-static {p1}, Lcom/google/android/gms/internal/consent_sdk/zzaf;->zze(Lcom/google/android/gms/internal/consent_sdk/zzaf;)Lcom/google/android/gms/internal/consent_sdk/zzdn;

    move-result-object v2

    invoke-static {}, Lcom/google/android/gms/internal/consent_sdk/zzao;->zza()Lcom/google/android/gms/internal/consent_sdk/zzap;

    move-result-object v4

    invoke-static {}, Lcom/google/android/gms/internal/consent_sdk/zzaq;->zza()Lcom/google/android/gms/internal/consent_sdk/zzar;

    move-result-object v5

    invoke-static {p1}, Lcom/google/android/gms/internal/consent_sdk/zzaf;->zzf(Lcom/google/android/gms/internal/consent_sdk/zzaf;)Lcom/google/android/gms/internal/consent_sdk/zzdn;

    move-result-object v6

    invoke-static {p1}, Lcom/google/android/gms/internal/consent_sdk/zzaf;->zzh(Lcom/google/android/gms/internal/consent_sdk/zzaf;)Lcom/google/android/gms/internal/consent_sdk/zzdn;

    move-result-object v7

    invoke-static {p1}, Lcom/google/android/gms/internal/consent_sdk/zzaf;->zzi(Lcom/google/android/gms/internal/consent_sdk/zzaf;)Lcom/google/android/gms/internal/consent_sdk/zzdn;

    move-result-object v9

    new-instance v10, Lcom/google/android/gms/internal/consent_sdk/zzby;

    move-object v1, v10

    move-object v3, p3

    move-object v8, v0

    invoke-direct/range {v1 .. v9}, Lcom/google/android/gms/internal/consent_sdk/zzby;-><init>(Lcom/google/android/gms/internal/consent_sdk/zzdp;Lcom/google/android/gms/internal/consent_sdk/zzdp;Lcom/google/android/gms/internal/consent_sdk/zzdp;Lcom/google/android/gms/internal/consent_sdk/zzdp;Lcom/google/android/gms/internal/consent_sdk/zzdp;Lcom/google/android/gms/internal/consent_sdk/zzdp;Lcom/google/android/gms/internal/consent_sdk/zzdp;Lcom/google/android/gms/internal/consent_sdk/zzdp;)V

    iput-object v10, p0, Lcom/google/android/gms/internal/consent_sdk/zzai;->zze:Lcom/google/android/gms/internal/consent_sdk/zzdn;

    invoke-static {}, Lcom/google/android/gms/internal/consent_sdk/zzao;->zza()Lcom/google/android/gms/internal/consent_sdk/zzap;

    move-result-object v1

    new-instance v7, Lcom/google/android/gms/internal/consent_sdk/zzbs;

    invoke-direct {v7, p3, v1, v10}, Lcom/google/android/gms/internal/consent_sdk/zzbs;-><init>(Lcom/google/android/gms/internal/consent_sdk/zzdp;Lcom/google/android/gms/internal/consent_sdk/zzdp;Lcom/google/android/gms/internal/consent_sdk/zzdp;)V

    iput-object v7, p0, Lcom/google/android/gms/internal/consent_sdk/zzai;->zzf:Lcom/google/android/gms/internal/consent_sdk/zzdn;

    invoke-static {p1}, Lcom/google/android/gms/internal/consent_sdk/zzaf;->zze(Lcom/google/android/gms/internal/consent_sdk/zzaf;)Lcom/google/android/gms/internal/consent_sdk/zzdn;

    move-result-object v2

    invoke-static {p1}, Lcom/google/android/gms/internal/consent_sdk/zzaf;->zzg(Lcom/google/android/gms/internal/consent_sdk/zzaf;)Lcom/google/android/gms/internal/consent_sdk/zzdn;

    move-result-object v3

    invoke-static {p1}, Lcom/google/android/gms/internal/consent_sdk/zzaf;->zzi(Lcom/google/android/gms/internal/consent_sdk/zzaf;)Lcom/google/android/gms/internal/consent_sdk/zzdn;

    move-result-object v5

    new-instance p1, Lcom/google/android/gms/internal/consent_sdk/zzaz;

    move-object v1, p1

    move-object v4, p3

    move-object v6, p2

    invoke-direct/range {v1 .. v7}, Lcom/google/android/gms/internal/consent_sdk/zzaz;-><init>(Lcom/google/android/gms/internal/consent_sdk/zzdp;Lcom/google/android/gms/internal/consent_sdk/zzdp;Lcom/google/android/gms/internal/consent_sdk/zzdp;Lcom/google/android/gms/internal/consent_sdk/zzdp;Lcom/google/android/gms/internal/consent_sdk/zzdp;Lcom/google/android/gms/internal/consent_sdk/zzdp;)V

    invoke-static {p1}, Lcom/google/android/gms/internal/consent_sdk/zzdj;->zzb(Lcom/google/android/gms/internal/consent_sdk/zzdn;)Lcom/google/android/gms/internal/consent_sdk/zzdn;

    move-result-object p1

    .line 2
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/consent_sdk/zzdi;->zzb(Lcom/google/android/gms/internal/consent_sdk/zzdn;Lcom/google/android/gms/internal/consent_sdk/zzdn;)V

    return-void
.end method


# virtual methods
.method public final zza()Lcom/google/android/gms/internal/consent_sdk/zzay;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/consent_sdk/zzai;->zzd:Lcom/google/android/gms/internal/consent_sdk/zzdn;

    invoke-interface {v0}, Lcom/google/android/gms/internal/consent_sdk/zzdn;->zza()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/consent_sdk/zzay;

    return-object v0
.end method
