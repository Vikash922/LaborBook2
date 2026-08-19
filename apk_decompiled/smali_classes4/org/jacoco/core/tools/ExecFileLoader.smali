.class public Lorg/jacoco/core/tools/ExecFileLoader;
.super Ljava/lang/Object;
.source "ExecFileLoader.java"


# instance fields
.field private final executionData:Lorg/jacoco/core/data/ExecutionDataStore;

.field private final sessionInfos:Lorg/jacoco/core/data/SessionInfoStore;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Lorg/jacoco/core/data/SessionInfoStore;

    invoke-direct {v0}, Lorg/jacoco/core/data/SessionInfoStore;-><init>()V

    iput-object v0, p0, Lorg/jacoco/core/tools/ExecFileLoader;->sessionInfos:Lorg/jacoco/core/data/SessionInfoStore;

    .line 44
    new-instance v0, Lorg/jacoco/core/data/ExecutionDataStore;

    invoke-direct {v0}, Lorg/jacoco/core/data/ExecutionDataStore;-><init>()V

    iput-object v0, p0, Lorg/jacoco/core/tools/ExecFileLoader;->executionData:Lorg/jacoco/core/data/ExecutionDataStore;

    return-void
.end method


# virtual methods
.method public getExecutionDataStore()Lorg/jacoco/core/data/ExecutionDataStore;
    .locals 1

    .line 139
    iget-object v0, p0, Lorg/jacoco/core/tools/ExecFileLoader;->executionData:Lorg/jacoco/core/data/ExecutionDataStore;

    return-object v0
.end method

.method public getSessionInfoStore()Lorg/jacoco/core/data/SessionInfoStore;
    .locals 1

    .line 130
    iget-object v0, p0, Lorg/jacoco/core/tools/ExecFileLoader;->sessionInfos:Lorg/jacoco/core/data/SessionInfoStore;

    return-object v0
.end method

.method public load(Ljava/io/File;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 72
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 74
    :try_start_0
    invoke-virtual {p0, v0}, Lorg/jacoco/core/tools/ExecFileLoader;->load(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 76
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    throw p1
.end method

.method public load(Ljava/io/InputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 56
    new-instance v0, Lorg/jacoco/core/data/ExecutionDataReader;

    new-instance v1, Ljava/io/BufferedInputStream;

    invoke-direct {v1, p1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v1}, Lorg/jacoco/core/data/ExecutionDataReader;-><init>(Ljava/io/InputStream;)V

    .line 58
    iget-object p1, p0, Lorg/jacoco/core/tools/ExecFileLoader;->executionData:Lorg/jacoco/core/data/ExecutionDataStore;

    invoke-virtual {v0, p1}, Lorg/jacoco/core/data/ExecutionDataReader;->setExecutionDataVisitor(Lorg/jacoco/core/data/IExecutionDataVisitor;)V

    .line 59
    iget-object p1, p0, Lorg/jacoco/core/tools/ExecFileLoader;->sessionInfos:Lorg/jacoco/core/data/SessionInfoStore;

    invoke-virtual {v0, p1}, Lorg/jacoco/core/data/ExecutionDataReader;->setSessionInfoVisitor(Lorg/jacoco/core/data/ISessionInfoVisitor;)V

    .line 60
    invoke-virtual {v0}, Lorg/jacoco/core/data/ExecutionDataReader;->read()Z

    return-void
.end method

.method public save(Ljava/io/File;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 108
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 110
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 112
    :cond_0
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p1, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    .line 114
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object p1

    invoke-virtual {p1}, Ljava/nio/channels/FileChannel;->lock()Ljava/nio/channels/FileLock;

    .line 115
    new-instance p1, Ljava/io/BufferedOutputStream;

    invoke-direct {p1, v0}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 118
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/jacoco/core/tools/ExecFileLoader;->save(Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 120
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V

    return-void

    :catchall_0
    move-exception p2

    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V

    throw p2
.end method

.method public save(Ljava/io/OutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 89
    new-instance v0, Lorg/jacoco/core/data/ExecutionDataWriter;

    invoke-direct {v0, p1}, Lorg/jacoco/core/data/ExecutionDataWriter;-><init>(Ljava/io/OutputStream;)V

    .line 90
    iget-object p1, p0, Lorg/jacoco/core/tools/ExecFileLoader;->sessionInfos:Lorg/jacoco/core/data/SessionInfoStore;

    invoke-virtual {p1, v0}, Lorg/jacoco/core/data/SessionInfoStore;->accept(Lorg/jacoco/core/data/ISessionInfoVisitor;)V

    .line 91
    iget-object p1, p0, Lorg/jacoco/core/tools/ExecFileLoader;->executionData:Lorg/jacoco/core/data/ExecutionDataStore;

    invoke-virtual {p1, v0}, Lorg/jacoco/core/data/ExecutionDataStore;->accept(Lorg/jacoco/core/data/IExecutionDataVisitor;)V

    return-void
.end method
