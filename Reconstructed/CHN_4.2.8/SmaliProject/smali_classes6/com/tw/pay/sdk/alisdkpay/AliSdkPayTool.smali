.class public Lcom/tw/pay/sdk/alisdkpay/AliSdkPayTool;
.super Ljava/lang/Object;
.source "AliSdkPayTool.java"


# static fields
.field private static final SDK_CHECK_FLAG:I = 0x2

.field private static final SDK_PAY_FLAG:I = 0x1

.field private static alipayTool:Lcom/tw/pay/sdk/alisdkpay/AliSdkPayTool;


# instance fields
.field private callback:Lcom/tw/pay/sdk/callback/TwCallback;

.field private code:Ljava/lang/String;

.field private context:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Lcom/tw/pay/sdk/alisdkpay/AliSdkPayTool$1;

    invoke-direct {v0, p0}, Lcom/tw/pay/sdk/alisdkpay/AliSdkPayTool$1;-><init>(Lcom/tw/pay/sdk/alisdkpay/AliSdkPayTool;)V

    iput-object v0, p0, Lcom/tw/pay/sdk/alisdkpay/AliSdkPayTool;->mHandler:Landroid/os/Handler;

    .line 81
    iput-object p1, p0, Lcom/tw/pay/sdk/alisdkpay/AliSdkPayTool;->context:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Lcom/tw/pay/sdk/alisdkpay/AliSdkPayTool;)Ljava/lang/String;
    .locals 0

    .line 14
    iget-object p0, p0, Lcom/tw/pay/sdk/alisdkpay/AliSdkPayTool;->code:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$002(Lcom/tw/pay/sdk/alisdkpay/AliSdkPayTool;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 14
    iput-object p1, p0, Lcom/tw/pay/sdk/alisdkpay/AliSdkPayTool;->code:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$100(Lcom/tw/pay/sdk/alisdkpay/AliSdkPayTool;)Lcom/tw/pay/sdk/callback/TwCallback;
    .locals 0

    .line 14
    iget-object p0, p0, Lcom/tw/pay/sdk/alisdkpay/AliSdkPayTool;->callback:Lcom/tw/pay/sdk/callback/TwCallback;

    return-object p0
.end method

.method static synthetic access$200(Lcom/tw/pay/sdk/alisdkpay/AliSdkPayTool;)Landroid/content/Context;
    .locals 0

    .line 14
    iget-object p0, p0, Lcom/tw/pay/sdk/alisdkpay/AliSdkPayTool;->context:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$300(Lcom/tw/pay/sdk/alisdkpay/AliSdkPayTool;)Landroid/os/Handler;
    .locals 0

    .line 14
    iget-object p0, p0, Lcom/tw/pay/sdk/alisdkpay/AliSdkPayTool;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/tw/pay/sdk/alisdkpay/AliSdkPayTool;
    .locals 2

    .line 70
    sget-object v0, Lcom/tw/pay/sdk/alisdkpay/AliSdkPayTool;->alipayTool:Lcom/tw/pay/sdk/alisdkpay/AliSdkPayTool;

    if-nez v0, :cond_1

    .line 71
    const-class v0, Lcom/tw/pay/sdk/alisdkpay/AliSdkPayTool;

    monitor-enter v0

    .line 72
    :try_start_0
    sget-object v1, Lcom/tw/pay/sdk/alisdkpay/AliSdkPayTool;->alipayTool:Lcom/tw/pay/sdk/alisdkpay/AliSdkPayTool;

    if-nez v1, :cond_0

    .line 73
    new-instance v1, Lcom/tw/pay/sdk/alisdkpay/AliSdkPayTool;

    invoke-direct {v1, p0}, Lcom/tw/pay/sdk/alisdkpay/AliSdkPayTool;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/tw/pay/sdk/alisdkpay/AliSdkPayTool;->alipayTool:Lcom/tw/pay/sdk/alisdkpay/AliSdkPayTool;

    .line 75
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 77
    :cond_1
    :goto_0
    sget-object p0, Lcom/tw/pay/sdk/alisdkpay/AliSdkPayTool;->alipayTool:Lcom/tw/pay/sdk/alisdkpay/AliSdkPayTool;

    return-object p0
.end method


# virtual methods
.method public alipayPay(Ljava/lang/String;Lcom/tw/pay/sdk/callback/TwCallback;)V
    .locals 0

    .line 86
    iput-object p2, p0, Lcom/tw/pay/sdk/alisdkpay/AliSdkPayTool;->callback:Lcom/tw/pay/sdk/callback/TwCallback;

    .line 88
    :try_start_0
    new-instance p2, Lcom/tw/pay/sdk/alisdkpay/AliSdkPayTool$2;

    invoke-direct {p2, p0, p1}, Lcom/tw/pay/sdk/alisdkpay/AliSdkPayTool$2;-><init>(Lcom/tw/pay/sdk/alisdkpay/AliSdkPayTool;Ljava/lang/String;)V

    .line 106
    new-instance p1, Ljava/lang/Thread;

    invoke-direct {p1, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 107
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 109
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method
