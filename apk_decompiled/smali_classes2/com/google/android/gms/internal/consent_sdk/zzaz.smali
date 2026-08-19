.class public final Lcom/google/android/gms/internal/consent_sdk/zzaz;
.super Ljava/lang/Object;
.source "com.google.android.ump:user-messaging-platform@@3.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/consent_sdk/zzdk;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/consent_sdk/zzdp;

.field private final zzb:Lcom/google/android/gms/internal/consent_sdk/zzdp;

.field private final zzc:Lcom/google/android/gms/internal/consent_sdk/zzdp;

.field private final zzd:Lcom/google/android/gms/internal/consent_sdk/zzdp;

.field private final zze:Lcom/google/android/gms/internal/consent_sdk/zzdp;

.field private final zzf:Lcom/google/android/gms/internal/consent_sdk/zzdp;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/consent_sdk/zzdp;Lcom/google/android/gms/internal/consent_sdk/zzdp;Lcom/google/android/gms/internal/consent_sdk/zzdp;Lcom/google/android/gms/internal/consent_sdk/zzdp;Lcom/google/android/gms/internal/consent_sdk/zzdp;Lcom/google/android/gms/internal/consent_sdk/zzdp;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/consent_sdk/zzaz;->zza:Lcom/google/android/gms/internal/consent_sdk/zzdp;

    iput-object p2, p0, Lcom/google/android/gms/internal/consent_sdk/zzaz;->zzb:Lcom/google/android/gms/internal/consent_sdk/zzdp;

    iput-object p3, p0, Lcom/google/android/gms/internal/consent_sdk/zzaz;->zzc:Lcom/google/android/gms/internal/consent_sdk/zzdp;

    iput-object p4, p0, Lcom/google/android/gms/internal/consent_sdk/zzaz;->zzd:Lcom/google/android/gms/internal/consent_sdk/zzdp;

    iput-object p5, p0, Lcom/google/android/gms/internal/consent_sdk/zzaz;->zze:Lcom/google/android/gms/internal/consent_sdk/zzdp;

    iput-object p6, p0, Lcom/google/android/gms/internal/consent_sdk/zzaz;->zzf:Lcom/google/android/gms/internal/consent_sdk/zzdp;

    return-void
.end method


# virtual methods
.method public final bridge synthetic zza()Ljava/lang/Object;
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/consent_sdk/zzaz;->zza:Lcom/google/android/gms/internal/consent_sdk/zzdp;

    invoke-interface {v0}, Lcom/google/android/gms/internal/consent_sdk/zzdp;->zza()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/app/Application;

    iget-object v0, p0, Lcom/google/android/gms/internal/consent_sdk/zzaz;->zzb:Lcom/google/android/gms/internal/consent_sdk/zzdp;

    invoke-interface {v0}, Lcom/google/android/gms/internal/consent_sdk/zzdp;->zza()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/google/android/gms/internal/consent_sdk/zzab;

    iget-object v0, p0, Lcom/google/android/gms/internal/consent_sdk/zzaz;->zzc:Lcom/google/android/gms/internal/consent_sdk/zzdp;

    invoke-interface {v0}, Lcom/google/android/gms/internal/consent_sdk/zzdp;->zza()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/google/android/gms/internal/consent_sdk/zzbt;

    iget-object v0, p0, Lcom/google/android/gms/internal/consent_sdk/zzaz;->zzd:Lcom/google/android/gms/internal/consent_sdk/zzdp;

    invoke-interface {v0}, Lcom/google/android/gms/internal/consent_sdk/zzdp;->zza()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/google/android/gms/internal/consent_sdk/zzam;

    iget-object v0, p0, Lcom/google/android/gms/internal/consent_sdk/zzaz;->zze:Lcom/google/android/gms/internal/consent_sdk/zzdp;

    invoke-interface {v0}, Lcom/google/android/gms/internal/consent_sdk/zzdp;->zza()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/google/android/gms/internal/consent_sdk/zzbm;

    iget-object v7, p0, Lcom/google/android/gms/internal/consent_sdk/zzaz;->zzf:Lcom/google/android/gms/internal/consent_sdk/zzdp;

    new-instance v0, Lcom/google/android/gms/internal/consent_sdk/zzay;

    move-object v1, v0

    .line 2
    invoke-direct/range {v1 .. v7}, Lcom/google/android/gms/internal/consent_sdk/zzay;-><init>(Landroid/app/Application;Lcom/google/android/gms/internal/consent_sdk/zzab;Lcom/google/android/gms/internal/consent_sdk/zzbt;Lcom/google/android/gms/internal/consent_sdk/zzam;Lcom/google/android/gms/internal/consent_sdk/zzbm;Lcom/google/android/gms/internal/consent_sdk/zzdp;)V

    return-object v0
.end method
