.class public Lcom/talkweb/twOfflineSdk/bean/CacheModel;
.super Ljava/lang/Object;
.source "CacheModel.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x42298a0765c7adb0L


# instance fields
.field public data:Ljava/lang/String;

.field public key:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getData()Ljava/lang/String;
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/talkweb/twOfflineSdk/bean/CacheModel;->data:Ljava/lang/String;

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/talkweb/twOfflineSdk/bean/CacheModel;->key:Ljava/lang/String;

    return-object v0
.end method

.method public setData(Ljava/lang/String;)V
    .locals 0

    .line 39
    iput-object p1, p0, Lcom/talkweb/twOfflineSdk/bean/CacheModel;->data:Ljava/lang/String;

    return-void
.end method

.method public setKey(Ljava/lang/String;)V
    .locals 0

    .line 31
    iput-object p1, p0, Lcom/talkweb/twOfflineSdk/bean/CacheModel;->key:Ljava/lang/String;

    return-void
.end method
