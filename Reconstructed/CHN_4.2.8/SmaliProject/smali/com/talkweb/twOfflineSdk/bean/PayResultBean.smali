.class public Lcom/talkweb/twOfflineSdk/bean/PayResultBean;
.super Ljava/lang/Object;
.source "PayResultBean.java"


# instance fields
.field public channelId:Ljava/lang/String;

.field public code:I

.field public isOnlinePay:Z

.field public msg:Ljava/lang/String;

.field public orderId:Ljava/lang/String;

.field public payCode:Ljava/lang/String;

.field public payType:Ljava/lang/String;

.field public tradeId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "unknown"

    .line 38
    iput-object v0, p0, Lcom/talkweb/twOfflineSdk/bean/PayResultBean;->payType:Ljava/lang/String;

    .line 43
    iput-object v0, p0, Lcom/talkweb/twOfflineSdk/bean/PayResultBean;->channelId:Ljava/lang/String;

    const/4 v0, 0x0

    .line 48
    iput-boolean v0, p0, Lcom/talkweb/twOfflineSdk/bean/PayResultBean;->isOnlinePay:Z

    return-void
.end method
