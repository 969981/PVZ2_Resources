.class public Lcom/talkweb/twOfflineSdk/bean/LoginTypeBean;
.super Ljava/lang/Object;
.source "LoginTypeBean.java"


# instance fields
.field private loginType:I

.field private loginTypeName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getLoginType()I
    .locals 1

    .line 21
    iget v0, p0, Lcom/talkweb/twOfflineSdk/bean/LoginTypeBean;->loginType:I

    return v0
.end method

.method public getLoginTypeName()Ljava/lang/String;
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/talkweb/twOfflineSdk/bean/LoginTypeBean;->loginTypeName:Ljava/lang/String;

    return-object v0
.end method

.method public setLoginType(I)V
    .locals 0

    .line 25
    iput p1, p0, Lcom/talkweb/twOfflineSdk/bean/LoginTypeBean;->loginType:I

    return-void
.end method

.method public setLoginTypeName(Ljava/lang/String;)V
    .locals 0

    .line 33
    iput-object p1, p0, Lcom/talkweb/twOfflineSdk/bean/LoginTypeBean;->loginTypeName:Ljava/lang/String;

    return-void
.end method
