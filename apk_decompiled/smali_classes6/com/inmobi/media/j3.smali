.class public final Lcom/inmobi/media/j3;
.super Lcom/inmobi/media/l3;
.source "SourceFile"


# static fields
.field public static final d:Lcom/inmobi/media/j3;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/inmobi/media/j3;

    invoke-direct {v0}, Lcom/inmobi/media/j3;-><init>()V

    sput-object v0, Lcom/inmobi/media/j3;->d:Lcom/inmobi/media/j3;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    const-string v0, "inmobi"

    invoke-direct {p0, v0}, Lcom/inmobi/media/l3;-><init>(Ljava/lang/String;)V

    return-void
.end method
