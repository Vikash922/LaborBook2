.class public final synthetic Lcom/itextpdf/io/source/ByteBufferRandomAccessSource$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/security/PrivilegedAction;


# instance fields
.field public final synthetic f$0:Ljava/nio/ByteBuffer;


# direct methods
.method public synthetic constructor <init>(Ljava/nio/ByteBuffer;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/itextpdf/io/source/ByteBufferRandomAccessSource$$ExternalSyntheticLambda0;->f$0:Ljava/nio/ByteBuffer;

    return-void
.end method


# virtual methods
.method public final run()Ljava/lang/Object;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/itextpdf/io/source/ByteBufferRandomAccessSource$$ExternalSyntheticLambda0;->f$0:Ljava/nio/ByteBuffer;

    invoke-static {v0}, Lcom/itextpdf/io/source/ByteBufferRandomAccessSource;->lambda$clean$0(Ljava/nio/ByteBuffer;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
