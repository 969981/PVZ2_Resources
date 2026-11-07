.class public Lcom/talkweb/secondlock/core/MockSecondLockApi;
.super Ljava/lang/Object;
.source "MockSecondLockApi.java"

# interfaces
.implements Lcom/talkweb/secondlock/core/SecondLockApi;


# static fields
.field private static final TAG:Ljava/lang/String; = "SecondLockMock"


# instance fields
.field private mBindCode:Ljava/lang/String;

.field private mBound:Z

.field private mBoundPhone:Ljava/lang/String;

.field private mHasPassword:Z

.field private mLockedRemainSec:I

.field private mPassword:Ljava/lang/String;

.field private mRebindNewCode:Ljava/lang/String;

.field private mRebindOldCode:Ljava/lang/String;

.field private mResetCode:Ljava/lang/String;

.field private mSpEnabled:Z

.field private mVerifyAttempts:I

.field private final networkApi:Lcom/talkweb/secondlock/core/NetworkSecondLockApi;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 33
    iput-boolean v0, p0, Lcom/talkweb/secondlock/core/MockSecondLockApi;->mBound:Z

    const-string v1, ""

    .line 34
    iput-object v1, p0, Lcom/talkweb/secondlock/core/MockSecondLockApi;->mBoundPhone:Ljava/lang/String;

    .line 35
    iput-boolean v0, p0, Lcom/talkweb/secondlock/core/MockSecondLockApi;->mHasPassword:Z

    .line 36
    iput-boolean v0, p0, Lcom/talkweb/secondlock/core/MockSecondLockApi;->mSpEnabled:Z

    .line 37
    iput v0, p0, Lcom/talkweb/secondlock/core/MockSecondLockApi;->mLockedRemainSec:I

    .line 40
    iput-object v1, p0, Lcom/talkweb/secondlock/core/MockSecondLockApi;->mPassword:Ljava/lang/String;

    const/4 v0, 0x5

    .line 43
    iput v0, p0, Lcom/talkweb/secondlock/core/MockSecondLockApi;->mVerifyAttempts:I

    .line 46
    iput-object v1, p0, Lcom/talkweb/secondlock/core/MockSecondLockApi;->mBindCode:Ljava/lang/String;

    .line 49
    iput-object v1, p0, Lcom/talkweb/secondlock/core/MockSecondLockApi;->mResetCode:Ljava/lang/String;

    .line 52
    iput-object v1, p0, Lcom/talkweb/secondlock/core/MockSecondLockApi;->mRebindOldCode:Ljava/lang/String;

    .line 55
    iput-object v1, p0, Lcom/talkweb/secondlock/core/MockSecondLockApi;->mRebindNewCode:Ljava/lang/String;

    const/4 v0, 0x0

    .line 59
    iput-object v0, p0, Lcom/talkweb/secondlock/core/MockSecondLockApi;->networkApi:Lcom/talkweb/secondlock/core/NetworkSecondLockApi;

    return-void
.end method

.method public constructor <init>(Lcom/talkweb/network/config/NetworkConfig;)V
    .locals 2

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 33
    iput-boolean v0, p0, Lcom/talkweb/secondlock/core/MockSecondLockApi;->mBound:Z

    const-string v1, ""

    .line 34
    iput-object v1, p0, Lcom/talkweb/secondlock/core/MockSecondLockApi;->mBoundPhone:Ljava/lang/String;

    .line 35
    iput-boolean v0, p0, Lcom/talkweb/secondlock/core/MockSecondLockApi;->mHasPassword:Z

    .line 36
    iput-boolean v0, p0, Lcom/talkweb/secondlock/core/MockSecondLockApi;->mSpEnabled:Z

    .line 37
    iput v0, p0, Lcom/talkweb/secondlock/core/MockSecondLockApi;->mLockedRemainSec:I

    .line 40
    iput-object v1, p0, Lcom/talkweb/secondlock/core/MockSecondLockApi;->mPassword:Ljava/lang/String;

    const/4 v0, 0x5

    .line 43
    iput v0, p0, Lcom/talkweb/secondlock/core/MockSecondLockApi;->mVerifyAttempts:I

    .line 46
    iput-object v1, p0, Lcom/talkweb/secondlock/core/MockSecondLockApi;->mBindCode:Ljava/lang/String;

    .line 49
    iput-object v1, p0, Lcom/talkweb/secondlock/core/MockSecondLockApi;->mResetCode:Ljava/lang/String;

    .line 52
    iput-object v1, p0, Lcom/talkweb/secondlock/core/MockSecondLockApi;->mRebindOldCode:Ljava/lang/String;

    .line 55
    iput-object v1, p0, Lcom/talkweb/secondlock/core/MockSecondLockApi;->mRebindNewCode:Ljava/lang/String;

    .line 64
    new-instance v0, Lcom/talkweb/secondlock/core/NetworkSecondLockApi;

    invoke-direct {v0, p1}, Lcom/talkweb/secondlock/core/NetworkSecondLockApi;-><init>(Lcom/talkweb/network/config/NetworkConfig;)V

    iput-object v0, p0, Lcom/talkweb/secondlock/core/MockSecondLockApi;->networkApi:Lcom/talkweb/secondlock/core/NetworkSecondLockApi;

    return-void
.end method

.method private static generateCode()Ljava/lang/String;
    .locals 4

    .line 326
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    const-wide v2, 0x412b774000000000L    # 900000.0

    mul-double/2addr v0, v2

    double-to-int v0, v0

    const v1, 0x186a0

    add-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bindPhone(Ljava/lang/String;Ljava/lang/String;Lcom/talkweb/secondlock/core/SecondLockApi$SecondLockCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/talkweb/secondlock/core/SecondLockApi$SecondLockCallback<",
            "Lcom/talkweb/secondlock/core/SecondLockApi$BindResp;",
            ">;)V"
        }
    .end annotation

    .line 109
    iget-object v0, p0, Lcom/talkweb/secondlock/core/MockSecondLockApi;->networkApi:Lcom/talkweb/secondlock/core/NetworkSecondLockApi;

    const-string v1, "SecondLockMock"

    if-nez v0, :cond_2

    if-eqz p2, :cond_1

    .line 111
    iget-object v0, p0, Lcom/talkweb/secondlock/core/MockSecondLockApi;->mBindCode:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    goto :goto_0

    .line 115
    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "\u3010Mock\u3011\u624b\u673a\u53f7\u7ed1\u5b9a\u6210\u529f\uff1a"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p2, 0x1

    .line 116
    iput-boolean p2, p0, Lcom/talkweb/secondlock/core/MockSecondLockApi;->mBound:Z

    .line 117
    iput-object p1, p0, Lcom/talkweb/secondlock/core/MockSecondLockApi;->mBoundPhone:Ljava/lang/String;

    .line 118
    new-instance p1, Lcom/talkweb/secondlock/core/SecondLockApi$BindResp;

    invoke-direct {p1}, Lcom/talkweb/secondlock/core/SecondLockApi$BindResp;-><init>()V

    invoke-interface {p3, p1}, Lcom/talkweb/secondlock/core/SecondLockApi$SecondLockCallback;->onSuccess(Ljava/lang/Object;)V

    return-void

    :cond_1
    :goto_0
    const-string p1, "\u9a8c\u8bc1\u7801\u9519\u8bef"

    .line 112
    invoke-interface {p3, p1}, Lcom/talkweb/secondlock/core/SecondLockApi$SecondLockCallback;->onError(Ljava/lang/String;)V

    return-void

    :cond_2
    const-string v0, "\u3010Mock\u3011\u8f6c\u53d1\u771f\u5b9e\u7ed1\u5b9a\u8bf7\u6c42 /usp/bind"

    .line 122
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    iget-object v0, p0, Lcom/talkweb/secondlock/core/MockSecondLockApi;->networkApi:Lcom/talkweb/secondlock/core/NetworkSecondLockApi;

    invoke-virtual {v0, p1, p2, p3}, Lcom/talkweb/secondlock/core/NetworkSecondLockApi;->bindPhone(Ljava/lang/String;Ljava/lang/String;Lcom/talkweb/secondlock/core/SecondLockApi$SecondLockCallback;)V

    return-void
.end method

.method public queryState(Lcom/talkweb/secondlock/core/SecondLockApi$SecondLockCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/talkweb/secondlock/core/SecondLockApi$SecondLockCallback<",
            "Lcom/talkweb/secondlock/core/SecondLockApi$StateResp;",
            ">;)V"
        }
    .end annotation

    .line 77
    iget-object v0, p0, Lcom/talkweb/secondlock/core/MockSecondLockApi;->networkApi:Lcom/talkweb/secondlock/core/NetworkSecondLockApi;

    const-string v1, "SecondLockMock"

    if-eqz v0, :cond_0

    const-string v0, "\u3010Mock\u3011queryState \u8f6c\u53d1\u81f3\u771f\u5b9e\u7f51\u7edc\u8bf7\u6c42 /usp/state"

    .line 78
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    iget-object v0, p0, Lcom/talkweb/secondlock/core/MockSecondLockApi;->networkApi:Lcom/talkweb/secondlock/core/NetworkSecondLockApi;

    invoke-virtual {v0, p1}, Lcom/talkweb/secondlock/core/NetworkSecondLockApi;->queryState(Lcom/talkweb/secondlock/core/SecondLockApi$SecondLockCallback;)V

    return-void

    :cond_0
    const-string v0, "\u3010Mock\u3011\u67e5\u8be2\u4e8c\u7ea7\u5bc6\u7801\u72b6\u6001\uff08\u672c\u5730\uff09"

    .line 82
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    new-instance v0, Lcom/talkweb/secondlock/core/SecondLockApi$StateResp;

    invoke-direct {v0}, Lcom/talkweb/secondlock/core/SecondLockApi$StateResp;-><init>()V

    .line 84
    iget-boolean v1, p0, Lcom/talkweb/secondlock/core/MockSecondLockApi;->mBound:Z

    iput-boolean v1, v0, Lcom/talkweb/secondlock/core/SecondLockApi$StateResp;->phoneBound:Z

    .line 85
    iget-boolean v1, p0, Lcom/talkweb/secondlock/core/MockSecondLockApi;->mBound:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/talkweb/secondlock/core/MockSecondLockApi;->mBoundPhone:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const-string v1, ""

    :goto_0
    iput-object v1, v0, Lcom/talkweb/secondlock/core/SecondLockApi$StateResp;->phoneMasked:Ljava/lang/String;

    .line 86
    iget-boolean v1, p0, Lcom/talkweb/secondlock/core/MockSecondLockApi;->mHasPassword:Z

    iput-boolean v1, v0, Lcom/talkweb/secondlock/core/SecondLockApi$StateResp;->hasPassword:Z

    .line 87
    iget-boolean v1, p0, Lcom/talkweb/secondlock/core/MockSecondLockApi;->mSpEnabled:Z

    iput-boolean v1, v0, Lcom/talkweb/secondlock/core/SecondLockApi$StateResp;->spEnabled:Z

    .line 88
    iget v1, p0, Lcom/talkweb/secondlock/core/MockSecondLockApi;->mLockedRemainSec:I

    iput v1, v0, Lcom/talkweb/secondlock/core/SecondLockApi$StateResp;->lockedRemainSec:I

    .line 89
    invoke-interface {p1, v0}, Lcom/talkweb/secondlock/core/SecondLockApi$SecondLockCallback;->onSuccess(Ljava/lang/Object;)V

    return-void
.end method

.method public rebind(Ljava/lang/String;Ljava/lang/String;Lcom/talkweb/secondlock/core/SecondLockApi$SecondLockCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/talkweb/secondlock/core/SecondLockApi$SecondLockCallback<",
            "Lcom/talkweb/secondlock/core/SecondLockApi$RebindResp;",
            ">;)V"
        }
    .end annotation

    .line 308
    iget-object v0, p0, Lcom/talkweb/secondlock/core/MockSecondLockApi;->networkApi:Lcom/talkweb/secondlock/core/NetworkSecondLockApi;

    const-string v1, "SecondLockMock"

    if-eqz v0, :cond_0

    const-string v0, "\u3010Mock\u3011rebind \u8f6c\u53d1\u81f3\u771f\u5b9e\u7f51\u7edc\u8bf7\u6c42 /usp/rebind"

    .line 309
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    iget-object v0, p0, Lcom/talkweb/secondlock/core/MockSecondLockApi;->networkApi:Lcom/talkweb/secondlock/core/NetworkSecondLockApi;

    invoke-virtual {v0, p1, p2, p3}, Lcom/talkweb/secondlock/core/NetworkSecondLockApi;->rebind(Ljava/lang/String;Ljava/lang/String;Lcom/talkweb/secondlock/core/SecondLockApi$SecondLockCallback;)V

    return-void

    :cond_0
    if-eqz p2, :cond_2

    .line 313
    iget-object v0, p0, Lcom/talkweb/secondlock/core/MockSecondLockApi;->mRebindNewCode:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    goto :goto_0

    .line 317
    :cond_1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "\u3010Mock\u3011\u6362\u7ed1\u624b\u673a\u53f7\u6210\u529f\uff1a"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p2, 0x1

    .line 318
    iput-boolean p2, p0, Lcom/talkweb/secondlock/core/MockSecondLockApi;->mBound:Z

    .line 319
    iput-object p1, p0, Lcom/talkweb/secondlock/core/MockSecondLockApi;->mBoundPhone:Ljava/lang/String;

    .line 320
    new-instance p1, Lcom/talkweb/secondlock/core/SecondLockApi$RebindResp;

    invoke-direct {p1}, Lcom/talkweb/secondlock/core/SecondLockApi$RebindResp;-><init>()V

    invoke-interface {p3, p1}, Lcom/talkweb/secondlock/core/SecondLockApi$SecondLockCallback;->onSuccess(Ljava/lang/Object;)V

    return-void

    :cond_2
    :goto_0
    const-string p1, "\u9a8c\u8bc1\u7801\u9519\u8bef"

    .line 314
    invoke-interface {p3, p1}, Lcom/talkweb/secondlock/core/SecondLockApi$SecondLockCallback;->onError(Ljava/lang/String;)V

    return-void
.end method

.method public resetPassword(Ljava/lang/String;Ljava/lang/String;Lcom/talkweb/secondlock/core/SecondLockApi$SecondLockCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/talkweb/secondlock/core/SecondLockApi$SecondLockCallback<",
            "Lcom/talkweb/secondlock/core/SecondLockApi$ResetResp;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_3

    .line 232
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    goto :goto_0

    .line 236
    :cond_0
    invoke-static {p2}, Lcom/talkweb/secondlock/SecondLockUtil;->isValidPassword(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string p1, "\u65b0\u5bc6\u7801\u987b\u4e3a 6 \u4f4d\u6570\u5b57"

    .line 237
    invoke-interface {p3, p1}, Lcom/talkweb/secondlock/core/SecondLockApi$SecondLockCallback;->onError(Ljava/lang/String;)V

    return-void

    .line 240
    :cond_1
    iget-object v0, p0, Lcom/talkweb/secondlock/core/MockSecondLockApi;->networkApi:Lcom/talkweb/secondlock/core/NetworkSecondLockApi;

    const-string v1, "SecondLockMock"

    if-eqz v0, :cond_2

    const-string v0, "\u3010Mock\u3011queryState \u8f6c\u53d1\u81f3\u771f\u5b9e\u7f51\u7edc\u8bf7\u6c42 /usp/reset"

    .line 241
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    iget-object v0, p0, Lcom/talkweb/secondlock/core/MockSecondLockApi;->networkApi:Lcom/talkweb/secondlock/core/NetworkSecondLockApi;

    invoke-virtual {v0, p1, p2, p3}, Lcom/talkweb/secondlock/core/NetworkSecondLockApi;->resetPassword(Ljava/lang/String;Ljava/lang/String;Lcom/talkweb/secondlock/core/SecondLockApi$SecondLockCallback;)V

    return-void

    :cond_2
    const-string p1, "\u3010Mock\u3011\u627e\u56de/\u4fee\u6539\u4e8c\u7ea7\u5bc6\u7801\u6210\u529f"

    .line 245
    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    .line 246
    iput-boolean p1, p0, Lcom/talkweb/secondlock/core/MockSecondLockApi;->mHasPassword:Z

    .line 247
    iput-object p2, p0, Lcom/talkweb/secondlock/core/MockSecondLockApi;->mPassword:Ljava/lang/String;

    .line 248
    iput-boolean p1, p0, Lcom/talkweb/secondlock/core/MockSecondLockApi;->mSpEnabled:Z

    const/4 p1, 0x0

    .line 249
    iput p1, p0, Lcom/talkweb/secondlock/core/MockSecondLockApi;->mLockedRemainSec:I

    const/4 p1, 0x5

    .line 250
    iput p1, p0, Lcom/talkweb/secondlock/core/MockSecondLockApi;->mVerifyAttempts:I

    .line 251
    new-instance p1, Lcom/talkweb/secondlock/core/SecondLockApi$ResetResp;

    invoke-direct {p1}, Lcom/talkweb/secondlock/core/SecondLockApi$ResetResp;-><init>()V

    invoke-interface {p3, p1}, Lcom/talkweb/secondlock/core/SecondLockApi$SecondLockCallback;->onSuccess(Ljava/lang/Object;)V

    return-void

    :cond_3
    :goto_0
    const-string p1, "\u9a8c\u8bc1\u7801\u683c\u5f0f\u4e0d\u6b63\u786e"

    .line 233
    invoke-interface {p3, p1}, Lcom/talkweb/secondlock/core/SecondLockApi$SecondLockCallback;->onError(Ljava/lang/String;)V

    return-void
.end method

.method public sendBindSmsCode(Ljava/lang/String;Lcom/talkweb/secondlock/core/SecondLockApi$SecondLockCallback;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/talkweb/secondlock/core/SecondLockApi$SecondLockCallback<",
            "Lcom/talkweb/secondlock/core/SecondLockApi$SendCodeResp;",
            ">;)V"
        }
    .end annotation

    .line 94
    iget-object v0, p0, Lcom/talkweb/secondlock/core/MockSecondLockApi;->networkApi:Lcom/talkweb/secondlock/core/NetworkSecondLockApi;

    const-string v1, "SecondLockMock"

    if-eqz v0, :cond_0

    const-string v0, "\u3010Mock\u3011queryState \u8f6c\u53d1\u81f3\u771f\u5b9e\u7f51\u7edc\u8bf7\u6c42 /usp/bind/code"

    .line 95
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    iget-object v0, p0, Lcom/talkweb/secondlock/core/MockSecondLockApi;->networkApi:Lcom/talkweb/secondlock/core/NetworkSecondLockApi;

    invoke-virtual {v0, p1, p2}, Lcom/talkweb/secondlock/core/NetworkSecondLockApi;->sendBindSmsCode(Ljava/lang/String;Lcom/talkweb/secondlock/core/SecondLockApi$SecondLockCallback;)V

    return-void

    .line 99
    :cond_0
    invoke-static {}, Lcom/talkweb/secondlock/core/MockSecondLockApi;->generateCode()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/talkweb/secondlock/core/MockSecondLockApi;->mBindCode:Ljava/lang/String;

    .line 100
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u3010Mock\u3011\u5df2\u5411 "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " \u53d1\u9001\u7ed1\u5b9a\u9a8c\u8bc1\u7801\uff08\u6f14\u793a\u9a8c\u8bc1\u7801\uff1a"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/talkweb/secondlock/core/MockSecondLockApi;->mBindCode:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\uff09"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    new-instance p1, Lcom/talkweb/secondlock/core/SecondLockApi$SendCodeResp;

    invoke-direct {p1}, Lcom/talkweb/secondlock/core/SecondLockApi$SendCodeResp;-><init>()V

    const/16 v0, 0x3c

    .line 102
    iput v0, p1, Lcom/talkweb/secondlock/core/SecondLockApi$SendCodeResp;->cooldownSec:I

    .line 103
    invoke-interface {p2, p1}, Lcom/talkweb/secondlock/core/SecondLockApi$SecondLockCallback;->onSuccess(Ljava/lang/Object;)V

    return-void
.end method

.method public sendRebindNewCode(Ljava/lang/String;Lcom/talkweb/secondlock/core/SecondLockApi$SecondLockCallback;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/talkweb/secondlock/core/SecondLockApi$SecondLockCallback<",
            "Lcom/talkweb/secondlock/core/SecondLockApi$SendCodeResp;",
            ">;)V"
        }
    .end annotation

    .line 289
    iget-object v0, p0, Lcom/talkweb/secondlock/core/MockSecondLockApi;->networkApi:Lcom/talkweb/secondlock/core/NetworkSecondLockApi;

    const-string v1, "SecondLockMock"

    if-eqz v0, :cond_0

    const-string v0, "\u3010Mock\u3011sendRebindNewCode \u8f6c\u53d1\u81f3\u771f\u5b9e\u7f51\u7edc\u8bf7\u6c42 /usp/rebind/new/code"

    .line 290
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    iget-object v0, p0, Lcom/talkweb/secondlock/core/MockSecondLockApi;->networkApi:Lcom/talkweb/secondlock/core/NetworkSecondLockApi;

    invoke-virtual {v0, p1, p2}, Lcom/talkweb/secondlock/core/NetworkSecondLockApi;->sendRebindNewCode(Ljava/lang/String;Lcom/talkweb/secondlock/core/SecondLockApi$SecondLockCallback;)V

    return-void

    .line 294
    :cond_0
    iget-boolean v0, p0, Lcom/talkweb/secondlock/core/MockSecondLockApi;->mBound:Z

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/talkweb/secondlock/core/MockSecondLockApi;->mBoundPhone:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p1, "\u65b0\u624b\u673a\u53f7\u4e0d\u80fd\u4e0e\u5f53\u524d\u7ed1\u5b9a\u53f7\u7801\u76f8\u540c"

    .line 295
    invoke-interface {p2, p1}, Lcom/talkweb/secondlock/core/SecondLockApi$SecondLockCallback;->onError(Ljava/lang/String;)V

    return-void

    .line 298
    :cond_1
    invoke-static {}, Lcom/talkweb/secondlock/core/MockSecondLockApi;->generateCode()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/talkweb/secondlock/core/MockSecondLockApi;->mRebindNewCode:Ljava/lang/String;

    .line 299
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u3010Mock\u3011\u5df2\u5411\u65b0\u624b\u673a\u53f7 "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " \u53d1\u9001\u6362\u7ed1\u9a8c\u8bc1\u7801\uff08\u6f14\u793a\u9a8c\u8bc1\u7801\uff1a"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/talkweb/secondlock/core/MockSecondLockApi;->mRebindNewCode:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\uff09"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    new-instance p1, Lcom/talkweb/secondlock/core/SecondLockApi$SendCodeResp;

    invoke-direct {p1}, Lcom/talkweb/secondlock/core/SecondLockApi$SendCodeResp;-><init>()V

    const/16 v0, 0x3c

    .line 301
    iput v0, p1, Lcom/talkweb/secondlock/core/SecondLockApi$SendCodeResp;->cooldownSec:I

    .line 302
    invoke-interface {p2, p1}, Lcom/talkweb/secondlock/core/SecondLockApi$SecondLockCallback;->onSuccess(Ljava/lang/Object;)V

    return-void
.end method

.method public sendRebindOldCode(Lcom/talkweb/secondlock/core/SecondLockApi$SecondLockCallback;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/talkweb/secondlock/core/SecondLockApi$SecondLockCallback<",
            "Lcom/talkweb/secondlock/core/SecondLockApi$SendCodeResp;",
            ">;)V"
        }
    .end annotation

    .line 258
    iget-object v0, p0, Lcom/talkweb/secondlock/core/MockSecondLockApi;->networkApi:Lcom/talkweb/secondlock/core/NetworkSecondLockApi;

    const-string v1, "SecondLockMock"

    if-eqz v0, :cond_0

    const-string v0, "\u3010Mock\u3011sendRebindOldCode \u8f6c\u53d1\u81f3\u771f\u5b9e\u7f51\u7edc\u8bf7\u6c42 /usp/rebind/old/code"

    .line 259
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    iget-object v0, p0, Lcom/talkweb/secondlock/core/MockSecondLockApi;->networkApi:Lcom/talkweb/secondlock/core/NetworkSecondLockApi;

    invoke-virtual {v0, p1}, Lcom/talkweb/secondlock/core/NetworkSecondLockApi;->sendRebindOldCode(Lcom/talkweb/secondlock/core/SecondLockApi$SecondLockCallback;)V

    return-void

    .line 263
    :cond_0
    invoke-static {}, Lcom/talkweb/secondlock/core/MockSecondLockApi;->generateCode()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/talkweb/secondlock/core/MockSecondLockApi;->mRebindOldCode:Ljava/lang/String;

    .line 264
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u3010Mock\u3011\u5df2\u5411\u539f\u7ed1\u5b9a\u624b\u673a\u53d1\u9001\u6362\u7ed1\u9a8c\u8bc1\u7801\uff08\u6f14\u793a\u9a8c\u8bc1\u7801\uff1a"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/talkweb/secondlock/core/MockSecondLockApi;->mRebindOldCode:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\uff09"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    new-instance v0, Lcom/talkweb/secondlock/core/SecondLockApi$SendCodeResp;

    invoke-direct {v0}, Lcom/talkweb/secondlock/core/SecondLockApi$SendCodeResp;-><init>()V

    const/16 v1, 0x3c

    .line 266
    iput v1, v0, Lcom/talkweb/secondlock/core/SecondLockApi$SendCodeResp;->cooldownSec:I

    .line 267
    invoke-interface {p1, v0}, Lcom/talkweb/secondlock/core/SecondLockApi$SecondLockCallback;->onSuccess(Ljava/lang/Object;)V

    return-void
.end method

.method public sendResetSmsCode(Ljava/lang/String;Lcom/talkweb/secondlock/core/SecondLockApi$SecondLockCallback;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/talkweb/secondlock/core/SecondLockApi$SecondLockCallback<",
            "Lcom/talkweb/secondlock/core/SecondLockApi$SendCodeResp;",
            ">;)V"
        }
    .end annotation

    .line 201
    iget-object v0, p0, Lcom/talkweb/secondlock/core/MockSecondLockApi;->networkApi:Lcom/talkweb/secondlock/core/NetworkSecondLockApi;

    const-string v1, "SecondLockMock"

    if-eqz v0, :cond_0

    const-string v0, "\u3010Mock\u3011sendResetSmsCode \u8f6c\u53d1\u81f3\u771f\u5b9e\u7f51\u7edc\u8bf7\u6c42 /usp/reset/code"

    .line 202
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    iget-object v0, p0, Lcom/talkweb/secondlock/core/MockSecondLockApi;->networkApi:Lcom/talkweb/secondlock/core/NetworkSecondLockApi;

    invoke-virtual {v0, p1, p2}, Lcom/talkweb/secondlock/core/NetworkSecondLockApi;->sendResetSmsCode(Ljava/lang/String;Lcom/talkweb/secondlock/core/SecondLockApi$SecondLockCallback;)V

    return-void

    .line 206
    :cond_0
    invoke-static {}, Lcom/talkweb/secondlock/core/MockSecondLockApi;->generateCode()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/talkweb/secondlock/core/MockSecondLockApi;->mResetCode:Ljava/lang/String;

    .line 207
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u3010Mock\u3011\u5df2\u5411 "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " \u53d1\u9001\u627e\u56de\u6539\u5bc6\u9a8c\u8bc1\u7801\uff08\u6f14\u793a\u9a8c\u8bc1\u7801\uff1a"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/talkweb/secondlock/core/MockSecondLockApi;->mResetCode:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\uff09"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    new-instance p1, Lcom/talkweb/secondlock/core/SecondLockApi$SendCodeResp;

    invoke-direct {p1}, Lcom/talkweb/secondlock/core/SecondLockApi$SendCodeResp;-><init>()V

    const/16 v0, 0x3c

    .line 209
    iput v0, p1, Lcom/talkweb/secondlock/core/SecondLockApi$SendCodeResp;->cooldownSec:I

    .line 210
    invoke-interface {p2, p1}, Lcom/talkweb/secondlock/core/SecondLockApi$SecondLockCallback;->onSuccess(Ljava/lang/Object;)V

    return-void
.end method

.method public setCommonParams(Lcom/talkweb/secondlock/core/UspCommonParams;)V
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/talkweb/secondlock/core/MockSecondLockApi;->networkApi:Lcom/talkweb/secondlock/core/NetworkSecondLockApi;

    if-eqz v0, :cond_0

    .line 71
    invoke-virtual {v0, p1}, Lcom/talkweb/secondlock/core/NetworkSecondLockApi;->setCommonParams(Lcom/talkweb/secondlock/core/UspCommonParams;)V

    :cond_0
    return-void
.end method

.method public setPassword(Ljava/lang/String;Lcom/talkweb/secondlock/core/SecondLockApi$SecondLockCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/talkweb/secondlock/core/SecondLockApi$SecondLockCallback<",
            "Lcom/talkweb/secondlock/core/SecondLockApi$SetPasswordResp;",
            ">;)V"
        }
    .end annotation

    .line 128
    invoke-static {p1}, Lcom/talkweb/secondlock/SecondLockUtil;->isValidPassword(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string p1, "\u5bc6\u7801\u987b\u4e3a 6 \u4f4d\u6570\u5b57"

    .line 129
    invoke-interface {p2, p1}, Lcom/talkweb/secondlock/core/SecondLockApi$SecondLockCallback;->onError(Ljava/lang/String;)V

    return-void

    .line 132
    :cond_0
    iget-object v0, p0, Lcom/talkweb/secondlock/core/MockSecondLockApi;->networkApi:Lcom/talkweb/secondlock/core/NetworkSecondLockApi;

    const-string v1, "SecondLockMock"

    if-eqz v0, :cond_1

    const-string v0, "\u3010Mock\u3011queryState \u8f6c\u53d1\u81f3\u771f\u5b9e\u7f51\u7edc\u8bf7\u6c42 /usp/set"

    .line 133
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    iget-object v0, p0, Lcom/talkweb/secondlock/core/MockSecondLockApi;->networkApi:Lcom/talkweb/secondlock/core/NetworkSecondLockApi;

    invoke-virtual {v0, p1, p2}, Lcom/talkweb/secondlock/core/NetworkSecondLockApi;->setPassword(Ljava/lang/String;Lcom/talkweb/secondlock/core/SecondLockApi$SecondLockCallback;)V

    return-void

    :cond_1
    const-string v0, "\u3010Mock\u3011\u9996\u6b21\u8bbe\u7f6e\u4e8c\u7ea7\u5bc6\u7801\u6210\u529f"

    .line 137
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 138
    iput-boolean v0, p0, Lcom/talkweb/secondlock/core/MockSecondLockApi;->mHasPassword:Z

    .line 139
    iput-object p1, p0, Lcom/talkweb/secondlock/core/MockSecondLockApi;->mPassword:Ljava/lang/String;

    .line 140
    iput-boolean v0, p0, Lcom/talkweb/secondlock/core/MockSecondLockApi;->mSpEnabled:Z

    const/4 p1, 0x0

    .line 141
    iput p1, p0, Lcom/talkweb/secondlock/core/MockSecondLockApi;->mLockedRemainSec:I

    const/4 p1, 0x5

    .line 142
    iput p1, p0, Lcom/talkweb/secondlock/core/MockSecondLockApi;->mVerifyAttempts:I

    .line 143
    new-instance p1, Lcom/talkweb/secondlock/core/SecondLockApi$SetPasswordResp;

    invoke-direct {p1}, Lcom/talkweb/secondlock/core/SecondLockApi$SetPasswordResp;-><init>()V

    invoke-interface {p2, p1}, Lcom/talkweb/secondlock/core/SecondLockApi$SecondLockCallback;->onSuccess(Ljava/lang/Object;)V

    return-void
.end method

.method public togglePassword(ZLcom/talkweb/secondlock/core/SecondLockApi$SecondLockCallback;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lcom/talkweb/secondlock/core/SecondLockApi$SecondLockCallback<",
            "Lcom/talkweb/secondlock/core/SecondLockApi$ToggleResp;",
            ">;)V"
        }
    .end annotation

    .line 185
    iget-object v0, p0, Lcom/talkweb/secondlock/core/MockSecondLockApi;->networkApi:Lcom/talkweb/secondlock/core/NetworkSecondLockApi;

    const-string v1, "SecondLockMock"

    if-eqz v0, :cond_0

    const-string v0, "\u3010Mock\u3011queryState \u8f6c\u53d1\u81f3\u771f\u5b9e\u7f51\u7edc\u8bf7\u6c42 /usp/toggle"

    .line 186
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    iget-object v0, p0, Lcom/talkweb/secondlock/core/MockSecondLockApi;->networkApi:Lcom/talkweb/secondlock/core/NetworkSecondLockApi;

    invoke-virtual {v0, p1, p2}, Lcom/talkweb/secondlock/core/NetworkSecondLockApi;->togglePassword(ZLcom/talkweb/secondlock/core/SecondLockApi$SecondLockCallback;)V

    return-void

    .line 190
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u3010Mock\u3011\u4e8c\u7ea7\u5bc6\u7801\u4fdd\u62a4\u5f00\u5173\uff1a"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    iput-boolean p1, p0, Lcom/talkweb/secondlock/core/MockSecondLockApi;->mSpEnabled:Z

    .line 192
    new-instance v0, Lcom/talkweb/secondlock/core/SecondLockApi$ToggleResp;

    invoke-direct {v0}, Lcom/talkweb/secondlock/core/SecondLockApi$ToggleResp;-><init>()V

    .line 193
    iput-boolean p1, v0, Lcom/talkweb/secondlock/core/SecondLockApi$ToggleResp;->spEnabled:Z

    .line 194
    invoke-interface {p2, v0}, Lcom/talkweb/secondlock/core/SecondLockApi$SecondLockCallback;->onSuccess(Ljava/lang/Object;)V

    return-void
.end method

.method public verifyPassword(Ljava/lang/String;Lcom/talkweb/secondlock/core/SecondLockApi$SecondLockCallback;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/talkweb/secondlock/core/SecondLockApi$SecondLockCallback<",
            "Lcom/talkweb/secondlock/core/SecondLockApi$VerifyPasswordResp;",
            ">;)V"
        }
    .end annotation

    .line 148
    invoke-static {p1}, Lcom/talkweb/secondlock/SecondLockUtil;->isValidPassword(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string p1, "\u5bc6\u7801\u987b\u4e3a 6 \u4f4d\u6570\u5b57"

    .line 149
    invoke-interface {p2, p1}, Lcom/talkweb/secondlock/core/SecondLockApi$SecondLockCallback;->onError(Ljava/lang/String;)V

    return-void

    .line 152
    :cond_0
    iget-object v0, p0, Lcom/talkweb/secondlock/core/MockSecondLockApi;->networkApi:Lcom/talkweb/secondlock/core/NetworkSecondLockApi;

    const-string v1, "SecondLockMock"

    if-eqz v0, :cond_1

    const-string v0, "\u3010Mock\u3011queryState \u8f6c\u53d1\u81f3\u771f\u5b9e\u7f51\u7edc\u8bf7\u6c42 /usp/verify"

    .line 153
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    iget-object v0, p0, Lcom/talkweb/secondlock/core/MockSecondLockApi;->networkApi:Lcom/talkweb/secondlock/core/NetworkSecondLockApi;

    invoke-virtual {v0, p1, p2}, Lcom/talkweb/secondlock/core/NetworkSecondLockApi;->verifyPassword(Ljava/lang/String;Lcom/talkweb/secondlock/core/SecondLockApi$SecondLockCallback;)V

    return-void

    .line 157
    :cond_1
    iget v0, p0, Lcom/talkweb/secondlock/core/MockSecondLockApi;->mLockedRemainSec:I

    const-string v2, "\u4e8c\u7ea7\u5bc6\u7801\u5df2\u9501\u5b9a"

    if-lez v0, :cond_2

    .line 158
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "\u3010Mock\u3011\u4e8c\u7ea7\u5bc6\u7801\u5df2\u9501\u5b9a\uff0c\u5269\u4f59 "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/talkweb/secondlock/core/MockSecondLockApi;->mLockedRemainSec:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " \u79d2"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    new-instance p1, Lcom/talkweb/secondlock/core/SecondLockApi$VerifyPasswordResp;

    invoke-direct {p1}, Lcom/talkweb/secondlock/core/SecondLockApi$VerifyPasswordResp;-><init>()V

    .line 160
    iget v0, p0, Lcom/talkweb/secondlock/core/MockSecondLockApi;->mLockedRemainSec:I

    iput v0, p1, Lcom/talkweb/secondlock/core/SecondLockApi$VerifyPasswordResp;->lockedRemainSec:I

    .line 161
    invoke-interface {p2, v2, p1}, Lcom/talkweb/secondlock/core/SecondLockApi$SecondLockCallback;->onError(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    .line 164
    :cond_2
    iget-object v0, p0, Lcom/talkweb/secondlock/core/MockSecondLockApi;->mPassword:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/talkweb/secondlock/core/MockSecondLockApi;->mPassword:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    const-string p1, "\u3010Mock\u3011\u4e8c\u7ea7\u5bc6\u7801\u9a8c\u8bc1\u6210\u529f"

    .line 177
    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x5

    .line 178
    iput p1, p0, Lcom/talkweb/secondlock/core/MockSecondLockApi;->mVerifyAttempts:I

    const/4 p1, 0x0

    .line 179
    iput p1, p0, Lcom/talkweb/secondlock/core/MockSecondLockApi;->mLockedRemainSec:I

    .line 180
    new-instance p1, Lcom/talkweb/secondlock/core/SecondLockApi$VerifyPasswordResp;

    invoke-direct {p1}, Lcom/talkweb/secondlock/core/SecondLockApi$VerifyPasswordResp;-><init>()V

    invoke-interface {p2, p1}, Lcom/talkweb/secondlock/core/SecondLockApi$SecondLockCallback;->onSuccess(Ljava/lang/Object;)V

    return-void

    .line 165
    :cond_4
    :goto_0
    iget p1, p0, Lcom/talkweb/secondlock/core/MockSecondLockApi;->mVerifyAttempts:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/talkweb/secondlock/core/MockSecondLockApi;->mVerifyAttempts:I

    .line 166
    new-instance p1, Lcom/talkweb/secondlock/core/SecondLockApi$VerifyPasswordResp;

    invoke-direct {p1}, Lcom/talkweb/secondlock/core/SecondLockApi$VerifyPasswordResp;-><init>()V

    .line 167
    iget v0, p0, Lcom/talkweb/secondlock/core/MockSecondLockApi;->mVerifyAttempts:I

    if-gtz v0, :cond_5

    const v0, 0x15180

    .line 168
    iput v0, p0, Lcom/talkweb/secondlock/core/MockSecondLockApi;->mLockedRemainSec:I

    .line 169
    iput v0, p1, Lcom/talkweb/secondlock/core/SecondLockApi$VerifyPasswordResp;->lockedRemainSec:I

    .line 170
    invoke-interface {p2, v2, p1}, Lcom/talkweb/secondlock/core/SecondLockApi$SecondLockCallback;->onError(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    .line 172
    :cond_5
    iput v0, p1, Lcom/talkweb/secondlock/core/SecondLockApi$VerifyPasswordResp;->remainAttempts:I

    const-string v0, "\u5bc6\u7801\u9519\u8bef"

    .line 173
    invoke-interface {p2, v0, p1}, Lcom/talkweb/secondlock/core/SecondLockApi$SecondLockCallback;->onError(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_1
    return-void
.end method

.method public verifyRebindOldCode(Ljava/lang/String;Lcom/talkweb/secondlock/core/SecondLockApi$SecondLockCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/talkweb/secondlock/core/SecondLockApi$SecondLockCallback<",
            "Lcom/talkweb/secondlock/core/SecondLockApi$RebindVerifyResp;",
            ">;)V"
        }
    .end annotation

    .line 273
    iget-object v0, p0, Lcom/talkweb/secondlock/core/MockSecondLockApi;->networkApi:Lcom/talkweb/secondlock/core/NetworkSecondLockApi;

    const-string v1, "SecondLockMock"

    if-eqz v0, :cond_0

    const-string v0, "\u3010Mock\u3011verifyRebindOldCode \u8f6c\u53d1\u81f3\u771f\u5b9e\u7f51\u7edc\u8bf7\u6c42 /usp/rebind/old/verify"

    .line 274
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    iget-object v0, p0, Lcom/talkweb/secondlock/core/MockSecondLockApi;->networkApi:Lcom/talkweb/secondlock/core/NetworkSecondLockApi;

    invoke-virtual {v0, p1, p2}, Lcom/talkweb/secondlock/core/NetworkSecondLockApi;->verifyRebindOldCode(Ljava/lang/String;Lcom/talkweb/secondlock/core/SecondLockApi$SecondLockCallback;)V

    return-void

    :cond_0
    if-eqz p1, :cond_2

    .line 278
    iget-object v0, p0, Lcom/talkweb/secondlock/core/MockSecondLockApi;->mRebindOldCode:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const-string p1, "\u3010Mock\u3011\u6362\u7ed1\u539f\u624b\u673a\u53f7\u9a8c\u8bc1\u7801\u6821\u9a8c\u901a\u8fc7"

    .line 282
    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    new-instance p1, Lcom/talkweb/secondlock/core/SecondLockApi$RebindVerifyResp;

    invoke-direct {p1}, Lcom/talkweb/secondlock/core/SecondLockApi$RebindVerifyResp;-><init>()V

    invoke-interface {p2, p1}, Lcom/talkweb/secondlock/core/SecondLockApi$SecondLockCallback;->onSuccess(Ljava/lang/Object;)V

    return-void

    :cond_2
    :goto_0
    const-string p1, "\u9a8c\u8bc1\u7801\u9519\u8bef"

    .line 279
    invoke-interface {p2, p1}, Lcom/talkweb/secondlock/core/SecondLockApi$SecondLockCallback;->onError(Ljava/lang/String;)V

    return-void
.end method

.method public verifyResetCode(Ljava/lang/String;Ljava/lang/String;Lcom/talkweb/secondlock/core/SecondLockApi$SecondLockCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/talkweb/secondlock/core/SecondLockApi$SecondLockCallback<",
            "Lcom/talkweb/secondlock/core/SecondLockApi$ResetVerifyResp;",
            ">;)V"
        }
    .end annotation

    .line 216
    iget-object v0, p0, Lcom/talkweb/secondlock/core/MockSecondLockApi;->networkApi:Lcom/talkweb/secondlock/core/NetworkSecondLockApi;

    const-string v1, "SecondLockMock"

    if-eqz v0, :cond_0

    const-string v0, "\u3010Mock\u3011verifyResetCode \u8f6c\u53d1\u81f3\u771f\u5b9e\u7f51\u7edc\u8bf7\u6c42 /usp/reset/verify"

    .line 217
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    iget-object v0, p0, Lcom/talkweb/secondlock/core/MockSecondLockApi;->networkApi:Lcom/talkweb/secondlock/core/NetworkSecondLockApi;

    invoke-virtual {v0, p1, p2, p3}, Lcom/talkweb/secondlock/core/NetworkSecondLockApi;->verifyResetCode(Ljava/lang/String;Ljava/lang/String;Lcom/talkweb/secondlock/core/SecondLockApi$SecondLockCallback;)V

    return-void

    :cond_0
    if-eqz p2, :cond_2

    .line 221
    iget-object p1, p0, Lcom/talkweb/secondlock/core/MockSecondLockApi;->mResetCode:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const-string p1, "\u3010Mock\u3011\u627e\u56de\u6539\u5bc6\u9a8c\u8bc1\u7801\u6821\u9a8c\u901a\u8fc7"

    .line 225
    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    new-instance p1, Lcom/talkweb/secondlock/core/SecondLockApi$ResetVerifyResp;

    invoke-direct {p1}, Lcom/talkweb/secondlock/core/SecondLockApi$ResetVerifyResp;-><init>()V

    invoke-interface {p3, p1}, Lcom/talkweb/secondlock/core/SecondLockApi$SecondLockCallback;->onSuccess(Ljava/lang/Object;)V

    return-void

    :cond_2
    :goto_0
    const-string p1, "\u9a8c\u8bc1\u7801\u9519\u8bef"

    .line 222
    invoke-interface {p3, p1}, Lcom/talkweb/secondlock/core/SecondLockApi$SecondLockCallback;->onError(Ljava/lang/String;)V

    return-void
.end method
