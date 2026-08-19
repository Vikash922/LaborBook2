.class final Lcom/google/android/gms/measurement/internal/zzlj;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-impl@@22.1.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zza:Landroid/os/Bundle;

.field private final synthetic zzb:Lcom/google/android/gms/measurement/internal/zzlh;

.field private final synthetic zzc:Lcom/google/android/gms/measurement/internal/zzlh;

.field private final synthetic zzd:J

.field private final synthetic zze:Lcom/google/android/gms/measurement/internal/zzlg;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzlg;Landroid/os/Bundle;Lcom/google/android/gms/measurement/internal/zzlh;Lcom/google/android/gms/measurement/internal/zzlh;J)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zzlj;->zza:Landroid/os/Bundle;

    iput-object p3, p0, Lcom/google/android/gms/measurement/internal/zzlj;->zzb:Lcom/google/android/gms/measurement/internal/zzlh;

    iput-object p4, p0, Lcom/google/android/gms/measurement/internal/zzlj;->zzc:Lcom/google/android/gms/measurement/internal/zzlh;

    iput-wide p5, p0, Lcom/google/android/gms/measurement/internal/zzlj;->zzd:J

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzlj;->zze:Lcom/google/android/gms/measurement/internal/zzlg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzlj;->zze:Lcom/google/android/gms/measurement/internal/zzlg;

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzlj;->zza:Landroid/os/Bundle;

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzlj;->zzb:Lcom/google/android/gms/measurement/internal/zzlh;

    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/zzlj;->zzc:Lcom/google/android/gms/measurement/internal/zzlh;

    iget-wide v4, p0, Lcom/google/android/gms/measurement/internal/zzlj;->zzd:J

    invoke-static/range {v0 .. v5}, Lcom/google/android/gms/measurement/internal/zzlg;->zza(Lcom/google/android/gms/measurement/internal/zzlg;Landroid/os/Bundle;Lcom/google/android/gms/measurement/internal/zzlh;Lcom/google/android/gms/measurement/internal/zzlh;J)V

    return-void
.end method
