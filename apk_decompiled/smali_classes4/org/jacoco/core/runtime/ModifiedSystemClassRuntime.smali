.class public Lorg/jacoco/core/runtime/ModifiedSystemClassRuntime;
.super Lorg/jacoco/core/runtime/AbstractRuntime;
.source "ModifiedSystemClassRuntime.java"


# static fields
.field private static final ACCESS_FIELD_TYPE:Ljava/lang/String; = "Ljava/lang/Object;"


# instance fields
.field private final accessFieldName:Ljava/lang/String;

.field private final systemClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private final systemClassName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/Class;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 57
    invoke-direct {p0}, Lorg/jacoco/core/runtime/AbstractRuntime;-><init>()V

    .line 58
    iput-object p1, p0, Lorg/jacoco/core/runtime/ModifiedSystemClassRuntime;->systemClass:Ljava/lang/Class;

    .line 59
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    const/16 v0, 0x2e

    const/16 v1, 0x2f

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/jacoco/core/runtime/ModifiedSystemClassRuntime;->systemClassName:Ljava/lang/String;

    .line 60
    iput-object p2, p0, Lorg/jacoco/core/runtime/ModifiedSystemClassRuntime;->accessFieldName:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lorg/objectweb/asm/ClassVisitor;Ljava/lang/String;)V
    .locals 0

    .line 36
    invoke-static {p0, p1}, Lorg/jacoco/core/runtime/ModifiedSystemClassRuntime;->createDataField(Lorg/objectweb/asm/ClassVisitor;Ljava/lang/String;)V

    return-void
.end method

.method private static createDataField(Lorg/objectweb/asm/ClassVisitor;Ljava/lang/String;)V
    .locals 6

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v1, 0x1089

    .line 174
    const-string v3, "Ljava/lang/Object;"

    move-object v0, p0

    move-object v2, p1

    invoke-virtual/range {v0 .. v5}, Lorg/objectweb/asm/ClassVisitor;->visitField(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lorg/objectweb/asm/FieldVisitor;

    return-void
.end method

.method public static createFor(Ljava/lang/instrument/Instrumentation;Ljava/lang/String;)Lorg/jacoco/core/runtime/IRuntime;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 101
    const-string v0, "$jacocoAccess"

    invoke-static {p0, p1, v0}, Lorg/jacoco/core/runtime/ModifiedSystemClassRuntime;->createFor(Ljava/lang/instrument/Instrumentation;Ljava/lang/String;Ljava/lang/String;)Lorg/jacoco/core/runtime/IRuntime;

    move-result-object p0

    return-object p0
.end method

.method public static createFor(Ljava/lang/instrument/Instrumentation;Ljava/lang/String;Ljava/lang/String;)Lorg/jacoco/core/runtime/IRuntime;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 123
    new-instance v0, Lorg/jacoco/core/runtime/ModifiedSystemClassRuntime$1;

    invoke-direct {v0, p1, p2}, Lorg/jacoco/core/runtime/ModifiedSystemClassRuntime$1;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    invoke-interface {p0, v0}, Ljava/lang/instrument/Instrumentation;->addTransformer(Ljava/lang/instrument/ClassFileTransformer;)V

    const/16 v1, 0x2f

    const/16 v2, 0x2e

    .line 135
    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 136
    invoke-interface {p0, v0}, Ljava/lang/instrument/Instrumentation;->removeTransformer(Ljava/lang/instrument/ClassFileTransformer;)Z

    .line 138
    :try_start_0
    invoke-virtual {v1, p2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    .line 144
    new-instance p0, Lorg/jacoco/core/runtime/ModifiedSystemClassRuntime;

    invoke-direct {p0, v1, p2}, Lorg/jacoco/core/runtime/ModifiedSystemClassRuntime;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    return-object p0

    :catch_0
    move-exception p0

    .line 140
    new-instance p2, Ljava/lang/RuntimeException;

    const-string v0, "Class %s could not be instrumented."

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public static instrument([BLjava/lang/String;)[B
    .locals 3

    .line 158
    invoke-static {p0}, Lorg/jacoco/core/internal/instr/InstrSupport;->classReaderFor([B)Lorg/objectweb/asm/ClassReader;

    move-result-object p0

    .line 159
    new-instance v0, Lorg/objectweb/asm/ClassWriter;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/objectweb/asm/ClassWriter;-><init>(Lorg/objectweb/asm/ClassReader;I)V

    .line 160
    new-instance v1, Lorg/jacoco/core/runtime/ModifiedSystemClassRuntime$2;

    const/high16 v2, 0x90000

    invoke-direct {v1, v2, v0, p1}, Lorg/jacoco/core/runtime/ModifiedSystemClassRuntime$2;-><init>(ILorg/objectweb/asm/ClassVisitor;Ljava/lang/String;)V

    const/16 p1, 0x8

    invoke-virtual {p0, v1, p1}, Lorg/objectweb/asm/ClassReader;->accept(Lorg/objectweb/asm/ClassVisitor;I)V

    .line 169
    invoke-virtual {v0}, Lorg/objectweb/asm/ClassWriter;->toByteArray()[B

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public generateDataAccessor(JLjava/lang/String;ILorg/objectweb/asm/MethodVisitor;)I
    .locals 4

    .line 77
    iget-object v0, p0, Lorg/jacoco/core/runtime/ModifiedSystemClassRuntime;->systemClassName:Ljava/lang/String;

    iget-object v1, p0, Lorg/jacoco/core/runtime/ModifiedSystemClassRuntime;->accessFieldName:Ljava/lang/String;

    const-string v2, "Ljava/lang/Object;"

    const/16 v3, 0xb2

    invoke-virtual {p5, v3, v0, v1, v2}, Lorg/objectweb/asm/MethodVisitor;->visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    invoke-static {p1, p2, p3, p4, p5}, Lorg/jacoco/core/runtime/RuntimeData;->generateAccessCall(JLjava/lang/String;ILorg/objectweb/asm/MethodVisitor;)V

    const/4 p1, 0x6

    return p1
.end method

.method public shutdown()V
    .locals 0

    return-void
.end method

.method public startup(Lorg/jacoco/core/runtime/RuntimeData;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 65
    invoke-super {p0, p1}, Lorg/jacoco/core/runtime/AbstractRuntime;->startup(Lorg/jacoco/core/runtime/RuntimeData;)V

    .line 66
    iget-object v0, p0, Lorg/jacoco/core/runtime/ModifiedSystemClassRuntime;->systemClass:Ljava/lang/Class;

    iget-object v1, p0, Lorg/jacoco/core/runtime/ModifiedSystemClassRuntime;->accessFieldName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x0

    .line 67
    invoke-virtual {v0, v1, p1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method
