.class public Lcom/alipay/sdk/app/AlipayApi$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/sdk/app/AlipayApi;->registerApp(Landroid/content/Context;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBindingDied(Landroid/content/ComponentName;)V
    .locals 1

    const/4 p1, 0x0

    .line 1
    sput-boolean p1, Lcom/alipay/sdk/app/AlipayApi;->f:Z

    const/4 p1, 0x0

    .line 2
    sput-object p1, Lcom/alipay/sdk/app/AlipayApi;->e:Landroid/content/ServiceConnection;

    const-string p1, "mspl"

    const-string v0, "AlipayApi registerApp onBindingDied"

    .line 3
    invoke-static {p1, v0}, Lcom/alipay/sdk/m/y/g;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onNullBinding(Landroid/content/ComponentName;)V
    .locals 1

    const/4 p1, 0x1

    .line 1
    sput-boolean p1, Lcom/alipay/sdk/app/AlipayApi;->f:Z

    const-string p1, "mspl"

    const-string v0, "AlipayApi registerApp onNullBinding"

    .line 2
    invoke-static {p1, v0}, Lcom/alipay/sdk/m/y/g;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 0

    const-string p1, "mspl"

    const-string p2, "AlipayApi registerApp onServiceConnected"

    .line 1
    invoke-static {p1, p2}, Lcom/alipay/sdk/m/y/g;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 2
    sput-boolean p1, Lcom/alipay/sdk/app/AlipayApi;->f:Z

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    const/4 p1, 0x0

    .line 1
    sput-boolean p1, Lcom/alipay/sdk/app/AlipayApi;->f:Z

    const/4 p1, 0x0

    .line 2
    sput-object p1, Lcom/alipay/sdk/app/AlipayApi;->e:Landroid/content/ServiceConnection;

    const-string p1, "mspl"

    const-string v0, "AlipayApi registerApp onServiceDisconnected"

    .line 3
    invoke-static {p1, v0}, Lcom/alipay/sdk/m/y/g;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
