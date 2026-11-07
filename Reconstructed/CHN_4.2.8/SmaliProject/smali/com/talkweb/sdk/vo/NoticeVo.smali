.class public Lcom/talkweb/sdk/vo/NoticeVo;
.super Ljava/lang/Object;
.source "NoticeVo.java"


# instance fields
.field private thirdService:Lcom/talkweb/sdk/service/pay/third/ThirdPayService;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getThirdService()Lcom/talkweb/sdk/service/pay/third/ThirdPayService;
    .locals 1

    .line 10
    iget-object v0, p0, Lcom/talkweb/sdk/vo/NoticeVo;->thirdService:Lcom/talkweb/sdk/service/pay/third/ThirdPayService;

    return-object v0
.end method

.method public setThirdService(Lcom/talkweb/sdk/service/pay/third/ThirdPayService;)V
    .locals 0

    .line 14
    iput-object p1, p0, Lcom/talkweb/sdk/vo/NoticeVo;->thirdService:Lcom/talkweb/sdk/service/pay/third/ThirdPayService;

    return-void
.end method
