.class public Lcom/talkweb/twOfflineSdk/bean/ApkVersion;
.super Ljava/lang/Object;
.source "ApkVersion.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x42298a0765c7adabL


# instance fields
.field public url:Ljava/lang/String;

.field public version:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getUrl()Ljava/lang/String;
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/talkweb/twOfflineSdk/bean/ApkVersion;->url:Ljava/lang/String;

    return-object v0
.end method

.method public getVersion()I
    .locals 1

    .line 15
    iget v0, p0, Lcom/talkweb/twOfflineSdk/bean/ApkVersion;->version:I

    return v0
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0

    .line 24
    iput-object p1, p0, Lcom/talkweb/twOfflineSdk/bean/ApkVersion;->url:Ljava/lang/String;

    return-void
.end method

.method public setVersion(I)V
    .locals 0

    .line 18
    iput p1, p0, Lcom/talkweb/twOfflineSdk/bean/ApkVersion;->version:I

    return-void
.end method
