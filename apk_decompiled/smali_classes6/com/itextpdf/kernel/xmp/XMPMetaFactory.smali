.class public final Lcom/itextpdf/kernel/xmp/XMPMetaFactory;
.super Ljava/lang/Object;
.source "XMPMetaFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/itextpdf/kernel/xmp/XMPMetaFactory$XMPVersionInfoImpl;
    }
.end annotation


# static fields
.field private static schema:Lcom/itextpdf/kernel/xmp/XMPSchemaRegistry;

.field private static final staticLock:Ljava/lang/Object;

.field private static versionInfo:Lcom/itextpdf/kernel/xmp/XMPVersionInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 50
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/itextpdf/kernel/xmp/XMPMetaFactory;->staticLock:Ljava/lang/Object;

    .line 55
    new-instance v0, Lcom/itextpdf/kernel/xmp/impl/XMPSchemaRegistryImpl;

    invoke-direct {v0}, Lcom/itextpdf/kernel/xmp/impl/XMPSchemaRegistryImpl;-><init>()V

    sput-object v0, Lcom/itextpdf/kernel/xmp/XMPMetaFactory;->schema:Lcom/itextpdf/kernel/xmp/XMPSchemaRegistry;

    const/4 v0, 0x0

    .line 59
    sput-object v0, Lcom/itextpdf/kernel/xmp/XMPMetaFactory;->versionInfo:Lcom/itextpdf/kernel/xmp/XMPVersionInfo;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static assertImplementation(Lcom/itextpdf/kernel/xmp/XMPMeta;)V
    .locals 1

    .line 231
    instance-of p0, p0, Lcom/itextpdf/kernel/xmp/impl/XMPMetaImpl;

    if-eqz p0, :cond_0

    return-void

    .line 232
    :cond_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "The serializing service works onlywith the XMPMeta implementation of this library"

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static create()Lcom/itextpdf/kernel/xmp/XMPMeta;
    .locals 1

    .line 79
    new-instance v0, Lcom/itextpdf/kernel/xmp/impl/XMPMetaImpl;

    invoke-direct {v0}, Lcom/itextpdf/kernel/xmp/impl/XMPMetaImpl;-><init>()V

    return-object v0
.end method

.method public static getSchemaRegistry()Lcom/itextpdf/kernel/xmp/XMPSchemaRegistry;
    .locals 1

    .line 72
    sget-object v0, Lcom/itextpdf/kernel/xmp/XMPMetaFactory;->schema:Lcom/itextpdf/kernel/xmp/XMPSchemaRegistry;

    return-object v0
.end method

.method public static getVersionInfo()Lcom/itextpdf/kernel/xmp/XMPVersionInfo;
    .locals 9

    .line 253
    sget-object v0, Lcom/itextpdf/kernel/xmp/XMPMetaFactory;->staticLock:Ljava/lang/Object;

    monitor-enter v0

    .line 254
    :try_start_0
    sget-object v1, Lcom/itextpdf/kernel/xmp/XMPMetaFactory;->versionInfo:Lcom/itextpdf/kernel/xmp/XMPVersionInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v1, :cond_0

    .line 265
    :try_start_1
    new-instance v1, Lcom/itextpdf/kernel/xmp/XMPMetaFactory$XMPVersionInfoImpl;

    const-string v8, "Adobe XMP Core 5.1.0-jc003"

    const/4 v3, 0x5

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x3

    const/4 v7, 0x0

    move-object v2, v1

    invoke-direct/range {v2 .. v8}, Lcom/itextpdf/kernel/xmp/XMPMetaFactory$XMPVersionInfoImpl;-><init>(IIIIZLjava/lang/String;)V

    sput-object v1, Lcom/itextpdf/kernel/xmp/XMPMetaFactory;->versionInfo:Lcom/itextpdf/kernel/xmp/XMPVersionInfo;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 268
    :try_start_2
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v2, v1}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 271
    :cond_0
    :goto_0
    sget-object v1, Lcom/itextpdf/kernel/xmp/XMPMetaFactory;->versionInfo:Lcom/itextpdf/kernel/xmp/XMPVersionInfo;

    monitor-exit v0

    return-object v1

    :catchall_1
    move-exception v1

    .line 272
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method public static parse(Ljava/io/InputStream;)Lcom/itextpdf/kernel/xmp/XMPMeta;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/itextpdf/kernel/xmp/XMPException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 91
    invoke-static {p0, v0}, Lcom/itextpdf/kernel/xmp/XMPMetaFactory;->parse(Ljava/io/InputStream;Lcom/itextpdf/kernel/xmp/options/ParseOptions;)Lcom/itextpdf/kernel/xmp/XMPMeta;

    move-result-object p0

    return-object p0
.end method

.method public static parse(Ljava/io/InputStream;Lcom/itextpdf/kernel/xmp/options/ParseOptions;)Lcom/itextpdf/kernel/xmp/XMPMeta;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/itextpdf/kernel/xmp/XMPException;
        }
    .end annotation

    .line 117
    invoke-static {p0, p1}, Lcom/itextpdf/kernel/xmp/impl/XMPMetaParser;->parse(Ljava/lang/Object;Lcom/itextpdf/kernel/xmp/options/ParseOptions;)Lcom/itextpdf/kernel/xmp/XMPMeta;

    move-result-object p0

    return-object p0
.end method

.method public static parseFromBuffer([B)Lcom/itextpdf/kernel/xmp/XMPMeta;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/itextpdf/kernel/xmp/XMPException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 155
    invoke-static {p0, v0}, Lcom/itextpdf/kernel/xmp/XMPMetaFactory;->parseFromBuffer([BLcom/itextpdf/kernel/xmp/options/ParseOptions;)Lcom/itextpdf/kernel/xmp/XMPMeta;

    move-result-object p0

    return-object p0
.end method

.method public static parseFromBuffer([BLcom/itextpdf/kernel/xmp/options/ParseOptions;)Lcom/itextpdf/kernel/xmp/XMPMeta;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/itextpdf/kernel/xmp/XMPException;
        }
    .end annotation

    .line 169
    invoke-static {p0, p1}, Lcom/itextpdf/kernel/xmp/impl/XMPMetaParser;->parse(Ljava/lang/Object;Lcom/itextpdf/kernel/xmp/options/ParseOptions;)Lcom/itextpdf/kernel/xmp/XMPMeta;

    move-result-object p0

    return-object p0
.end method

.method public static parseFromString(Ljava/lang/String;)Lcom/itextpdf/kernel/xmp/XMPMeta;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/itextpdf/kernel/xmp/XMPException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 129
    invoke-static {p0, v0}, Lcom/itextpdf/kernel/xmp/XMPMetaFactory;->parseFromString(Ljava/lang/String;Lcom/itextpdf/kernel/xmp/options/ParseOptions;)Lcom/itextpdf/kernel/xmp/XMPMeta;

    move-result-object p0

    return-object p0
.end method

.method public static parseFromString(Ljava/lang/String;Lcom/itextpdf/kernel/xmp/options/ParseOptions;)Lcom/itextpdf/kernel/xmp/XMPMeta;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/itextpdf/kernel/xmp/XMPException;
        }
    .end annotation

    .line 143
    invoke-static {p0, p1}, Lcom/itextpdf/kernel/xmp/impl/XMPMetaParser;->parse(Ljava/lang/Object;Lcom/itextpdf/kernel/xmp/options/ParseOptions;)Lcom/itextpdf/kernel/xmp/XMPMeta;

    move-result-object p0

    return-object p0
.end method

.method public static reset()V
    .locals 1

    .line 243
    new-instance v0, Lcom/itextpdf/kernel/xmp/impl/XMPSchemaRegistryImpl;

    invoke-direct {v0}, Lcom/itextpdf/kernel/xmp/impl/XMPSchemaRegistryImpl;-><init>()V

    sput-object v0, Lcom/itextpdf/kernel/xmp/XMPMetaFactory;->schema:Lcom/itextpdf/kernel/xmp/XMPSchemaRegistry;

    return-void
.end method

.method public static serialize(Lcom/itextpdf/kernel/xmp/XMPMeta;Ljava/io/OutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/itextpdf/kernel/xmp/XMPException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 181
    invoke-static {p0, p1, v0}, Lcom/itextpdf/kernel/xmp/XMPMetaFactory;->serialize(Lcom/itextpdf/kernel/xmp/XMPMeta;Ljava/io/OutputStream;Lcom/itextpdf/kernel/xmp/options/SerializeOptions;)V

    return-void
.end method

.method public static serialize(Lcom/itextpdf/kernel/xmp/XMPMeta;Ljava/io/OutputStream;Lcom/itextpdf/kernel/xmp/options/SerializeOptions;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/itextpdf/kernel/xmp/XMPException;
        }
    .end annotation

    .line 194
    invoke-static {p0}, Lcom/itextpdf/kernel/xmp/XMPMetaFactory;->assertImplementation(Lcom/itextpdf/kernel/xmp/XMPMeta;)V

    .line 195
    check-cast p0, Lcom/itextpdf/kernel/xmp/impl/XMPMetaImpl;

    invoke-static {p0, p1, p2}, Lcom/itextpdf/kernel/xmp/impl/XMPSerializerHelper;->serialize(Lcom/itextpdf/kernel/xmp/impl/XMPMetaImpl;Ljava/io/OutputStream;Lcom/itextpdf/kernel/xmp/options/SerializeOptions;)V

    return-void
.end method

.method public static serializeToBuffer(Lcom/itextpdf/kernel/xmp/XMPMeta;Lcom/itextpdf/kernel/xmp/options/SerializeOptions;)[B
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/itextpdf/kernel/xmp/XMPException;
        }
    .end annotation

    .line 208
    invoke-static {p0}, Lcom/itextpdf/kernel/xmp/XMPMetaFactory;->assertImplementation(Lcom/itextpdf/kernel/xmp/XMPMeta;)V

    .line 209
    check-cast p0, Lcom/itextpdf/kernel/xmp/impl/XMPMetaImpl;

    invoke-static {p0, p1}, Lcom/itextpdf/kernel/xmp/impl/XMPSerializerHelper;->serializeToBuffer(Lcom/itextpdf/kernel/xmp/impl/XMPMetaImpl;Lcom/itextpdf/kernel/xmp/options/SerializeOptions;)[B

    move-result-object p0

    return-object p0
.end method

.method public static serializeToString(Lcom/itextpdf/kernel/xmp/XMPMeta;Lcom/itextpdf/kernel/xmp/options/SerializeOptions;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/itextpdf/kernel/xmp/XMPException;
        }
    .end annotation

    .line 223
    invoke-static {p0}, Lcom/itextpdf/kernel/xmp/XMPMetaFactory;->assertImplementation(Lcom/itextpdf/kernel/xmp/XMPMeta;)V

    .line 224
    check-cast p0, Lcom/itextpdf/kernel/xmp/impl/XMPMetaImpl;

    invoke-static {p0, p1}, Lcom/itextpdf/kernel/xmp/impl/XMPSerializerHelper;->serializeToString(Lcom/itextpdf/kernel/xmp/impl/XMPMetaImpl;Lcom/itextpdf/kernel/xmp/options/SerializeOptions;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
