.class public Lcom/tw/pay/sdk/alipay/MobileSecurePayer;
.super Ljava/lang/Object;
.source "MobileSecurePayer.java"


# static fields
.field static TAG:Ljava/lang/String; = "MobileSecurePayer"


# instance fields
.field lock:Ljava/lang/Integer;

.field mActivity:Landroid/app/Activity;

.field mAlixPay:Lcom/alipay/android/app/IAlixPay;

.field private mAlixPayConnection:Landroid/content/ServiceConnection;

.field private mCallback:Lcom/alipay/android/app/IRemoteServiceCallback;

.field mbPaying:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 32
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/tw/pay/sdk/alipay/MobileSecurePayer;->lock:Ljava/lang/Integer;

    const/4 v1, 0x0

    .line 33
    iput-object v1, p0, Lcom/tw/pay/sdk/alipay/MobileSecurePayer;->mAlixPay:Lcom/alipay/android/app/IAlixPay;

    .line 34
    iput-boolean v0, p0, Lcom/tw/pay/sdk/alipay/MobileSecurePayer;->mbPaying:Z

    .line 36
    iput-object v1, p0, Lcom/tw/pay/sdk/alipay/MobileSecurePayer;->mActivity:Landroid/app/Activity;

    .line 39
    new-instance v0, Lcom/tw/pay/sdk/alipay/MobileSecurePayer$1;

    invoke-direct {v0, p0}, Lcom/tw/pay/sdk/alipay/MobileSecurePayer$1;-><init>(Lcom/tw/pay/sdk/alipay/MobileSecurePayer;)V

    iput-object v0, p0, Lcom/tw/pay/sdk/alipay/MobileSecurePayer;->mAlixPayConnection:Landroid/content/ServiceConnection;

    .line 149
    new-instance v0, Lcom/tw/pay/sdk/alipay/MobileSecurePayer$3;

    invoke-direct {v0, p0}, Lcom/tw/pay/sdk/alipay/MobileSecurePayer$3;-><init>(Lcom/tw/pay/sdk/alipay/MobileSecurePayer;)V

    iput-object v0, p0, Lcom/tw/pay/sdk/alipay/MobileSecurePayer;->mCallback:Lcom/alipay/android/app/IRemoteServiceCallback;

    return-void
.end method

.method static synthetic access$000(Lcom/tw/pay/sdk/alipay/MobileSecurePayer;)Lcom/alipay/android/app/IRemoteServiceCallback;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/tw/pay/sdk/alipay/MobileSecurePayer;->mCallback:Lcom/alipay/android/app/IRemoteServiceCallback;

    return-object p0
.end method

.method static synthetic access$100(Lcom/tw/pay/sdk/alipay/MobileSecurePayer;)Landroid/content/ServiceConnection;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/tw/pay/sdk/alipay/MobileSecurePayer;->mAlixPayConnection:Landroid/content/ServiceConnection;

    return-object p0
.end method


# virtual methods
.method public pay(Ljava/lang/String;Landroid/os/Handler;ILandroid/app/Activity;)Z
    .locals 3

    .line 71
    iget-boolean v0, p0, Lcom/tw/pay/sdk/alipay/MobileSecurePayer;->mbPaying:Z

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 v0, 0x1

    .line 73
    iput-boolean v0, p0, Lcom/tw/pay/sdk/alipay/MobileSecurePayer;->mbPaying:Z

    .line 76
    iput-object p4, p0, Lcom/tw/pay/sdk/alipay/MobileSecurePayer;->mActivity:Landroid/app/Activity;

    .line 80
    iget-object v1, p0, Lcom/tw/pay/sdk/alipay/MobileSecurePayer;->mAlixPay:Lcom/alipay/android/app/IAlixPay;

    if-nez v1, :cond_1

    .line 84
    invoke-virtual {p4}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p4

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/alipay/android/app/IAlixPay;

    .line 85
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/tw/pay/sdk/alipay/MobileSecurePayer;->mAlixPayConnection:Landroid/content/ServiceConnection;

    .line 84
    invoke-virtual {p4, v1, v2, v0}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 91
    :cond_1
    new-instance p4, Ljava/lang/Thread;

    new-instance v1, Lcom/tw/pay/sdk/alipay/MobileSecurePayer$2;

    invoke-direct {v1, p0, p1, p3, p2}, Lcom/tw/pay/sdk/alipay/MobileSecurePayer$2;-><init>(Lcom/tw/pay/sdk/alipay/MobileSecurePayer;Ljava/lang/String;ILandroid/os/Handler;)V

    invoke-direct {p4, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 140
    invoke-virtual {p4}, Ljava/lang/Thread;->start()V

    return v0
.end method
