.class public Lorg/jacoco/core/runtime/LoggerRuntime;
.super Lorg/jacoco/core/runtime/AbstractRuntime;
.source "LoggerRuntime.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jacoco/core/runtime/LoggerRuntime$RuntimeHandler;
    }
.end annotation


# static fields
.field private static final CHANNEL:Ljava/lang/String; = "jacoco-runtime"


# instance fields
.field private final handler:Ljava/util/logging/Handler;

.field private final key:Ljava/lang/String;

.field private final logger:Ljava/util/logging/Logger;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 49
    invoke-direct {p0}, Lorg/jacoco/core/runtime/AbstractRuntime;-><init>()V

    .line 50
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/jacoco/core/runtime/LoggerRuntime;->key:Ljava/lang/String;

    .line 51
    invoke-direct {p0}, Lorg/jacoco/core/runtime/LoggerRuntime;->configureLogger()Ljava/util/logging/Logger;

    move-result-object v0

    iput-object v0, p0, Lorg/jacoco/core/runtime/LoggerRuntime;->logger:Ljava/util/logging/Logger;

    .line 52
    new-instance v0, Lorg/jacoco/core/runtime/LoggerRuntime$RuntimeHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/jacoco/core/runtime/LoggerRuntime$RuntimeHandler;-><init>(Lorg/jacoco/core/runtime/LoggerRuntime;Lorg/jacoco/core/runtime/LoggerRuntime$1;)V

    iput-object v0, p0, Lorg/jacoco/core/runtime/LoggerRuntime;->handler:Ljava/util/logging/Handler;

    return-void
.end method

.method static synthetic access$100(Lorg/jacoco/core/runtime/LoggerRuntime;)Ljava/lang/String;
    .locals 0

    .line 35
    iget-object p0, p0, Lorg/jacoco/core/runtime/LoggerRuntime;->key:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$200(Lorg/jacoco/core/runtime/LoggerRuntime;)Ljava/util/logging/Handler;
    .locals 0

    .line 35
    iget-object p0, p0, Lorg/jacoco/core/runtime/LoggerRuntime;->handler:Ljava/util/logging/Handler;

    return-object p0
.end method

.method static synthetic access$300(Lorg/jacoco/core/runtime/LoggerRuntime;)Ljava/util/logging/Logger;
    .locals 0

    .line 35
    iget-object p0, p0, Lorg/jacoco/core/runtime/LoggerRuntime;->logger:Ljava/util/logging/Logger;

    return-object p0
.end method

.method private configureLogger()Ljava/util/logging/Logger;
    .locals 2

    .line 56
    const-string v0, "jacoco-runtime"

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    const/4 v1, 0x0

    .line 57
    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->setUseParentHandlers(Z)V

    .line 58
    sget-object v1, Ljava/util/logging/Level;->ALL:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->setLevel(Ljava/util/logging/Level;)V

    return-object v0
.end method


# virtual methods
.method public generateDataAccessor(JLjava/lang/String;ILorg/objectweb/asm/MethodVisitor;)I
    .locals 6

    .line 80
    invoke-static {p1, p2, p3, p4, p5}, Lorg/jacoco/core/runtime/RuntimeData;->generateArgumentArray(JLjava/lang/String;ILorg/objectweb/asm/MethodVisitor;)V

    const/16 p1, 0x59

    .line 84
    invoke-virtual {p5, p1}, Lorg/objectweb/asm/MethodVisitor;->visitInsn(I)V

    .line 91
    const-string p1, "jacoco-runtime"

    invoke-virtual {p5, p1}, Lorg/objectweb/asm/MethodVisitor;->visitLdcInsn(Ljava/lang/Object;)V

    .line 92
    const-string v4, "(Ljava/lang/String;)Ljava/util/logging/Logger;"

    const/4 v5, 0x0

    const/16 v1, 0xb8

    const-string v2, "java/util/logging/Logger"

    const-string v3, "getLogger"

    move-object v0, p5

    invoke-virtual/range {v0 .. v5}, Lorg/objectweb/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    const/16 p1, 0x5f

    .line 100
    invoke-virtual {p5, p1}, Lorg/objectweb/asm/MethodVisitor;->visitInsn(I)V

    .line 106
    const-string p2, "INFO"

    const-string p3, "Ljava/util/logging/Level;"

    const/16 p4, 0xb2

    const-string v0, "java/util/logging/Level"

    invoke-virtual {p5, p4, v0, p2, p3}, Lorg/objectweb/asm/MethodVisitor;->visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    invoke-virtual {p5, p1}, Lorg/objectweb/asm/MethodVisitor;->visitInsn(I)V

    .line 121
    iget-object p2, p0, Lorg/jacoco/core/runtime/LoggerRuntime;->key:Ljava/lang/String;

    invoke-virtual {p5, p2}, Lorg/objectweb/asm/MethodVisitor;->visitLdcInsn(Ljava/lang/Object;)V

    .line 129
    invoke-virtual {p5, p1}, Lorg/objectweb/asm/MethodVisitor;->visitInsn(I)V

    .line 137
    const-string v4, "(Ljava/util/logging/Level;Ljava/lang/String;[Ljava/lang/Object;)V"

    const/16 v1, 0xb6

    const-string v2, "java/util/logging/Logger"

    const-string v3, "log"

    move-object v0, p5

    invoke-virtual/range {v0 .. v5}, Lorg/objectweb/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 p1, 0x3

    .line 146
    invoke-virtual {p5, p1}, Lorg/objectweb/asm/MethodVisitor;->visitInsn(I)V

    const/16 p1, 0x32

    .line 147
    invoke-virtual {p5, p1}, Lorg/objectweb/asm/MethodVisitor;->visitInsn(I)V

    const/16 p1, 0xc0

    .line 148
    const-string p2, "[Z"

    invoke-virtual {p5, p1, p2}, Lorg/objectweb/asm/MethodVisitor;->visitTypeInsn(ILjava/lang/String;)V

    const/4 p1, 0x5

    return p1
.end method

.method public shutdown()V
    .locals 2

    .line 162
    iget-object v0, p0, Lorg/jacoco/core/runtime/LoggerRuntime;->logger:Ljava/util/logging/Logger;

    iget-object v1, p0, Lorg/jacoco/core/runtime/LoggerRuntime;->handler:Ljava/util/logging/Handler;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->removeHandler(Ljava/util/logging/Handler;)V

    return-void
.end method

.method public startup(Lorg/jacoco/core/runtime/RuntimeData;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 157
    invoke-super {p0, p1}, Lorg/jacoco/core/runtime/AbstractRuntime;->startup(Lorg/jacoco/core/runtime/RuntimeData;)V

    .line 158
    iget-object p1, p0, Lorg/jacoco/core/runtime/LoggerRuntime;->logger:Ljava/util/logging/Logger;

    iget-object v0, p0, Lorg/jacoco/core/runtime/LoggerRuntime;->handler:Ljava/util/logging/Handler;

    invoke-virtual {p1, v0}, Ljava/util/logging/Logger;->addHandler(Ljava/util/logging/Handler;)V

    return-void
.end method
