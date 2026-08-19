.class public final Lcom/inmobi/media/Cb;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# static fields
.field public static final a:Lcom/inmobi/media/Cb;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/inmobi/media/Cb;

    invoke-direct {v0}, Lcom/inmobi/media/Cb;-><init>()V

    sput-object v0, Lcom/inmobi/media/Cb;->a:Lcom/inmobi/media/Cb;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    new-instance v0, Lcom/inmobi/media/oc;

    invoke-direct {v0}, Lcom/inmobi/media/oc;-><init>()V

    return-object v0
.end method
