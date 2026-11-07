.class Lcom/tw/pay/sdk/alipay/MobileSecurePayer$1;
.super Ljava/lang/Object;
.source "MobileSecurePayer.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tw/pay/sdk/alipay/MobileSecurePayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tw/pay/sdk/alipay/MobileSecurePayer;


# direct methods
.method constructor <init>(Lcom/tw/pay/sdk/alipay/MobileSecurePayer;)V
    .locals 0

    .line 39
    iput-object p1, p0, Lcom/tw/pay/sdk/alipay/MobileSecurePayer$1;->this$0:Lcom/tw/pay/sdk/alipay/MobileSecurePayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1

    .line 45
    iget-object p1, p0, Lcom/tw/pay/sdk/alipay/MobileSecurePayer$1;->this$0:Lcom/tw/pay/sdk/alipay/MobileSecurePayer;

    iget-object p1, p1, Lcom/tw/pay/sdk/alipay/MobileSecurePayer;->lock:Ljava/lang/Integer;

    monitor-enter p1

    .line 46
    :try_start_0
    iget-object v0, p0, Lcom/tw/pay/sdk/alipay/MobileSecurePayer$1;->this$0:Lcom/tw/pay/sdk/alipay/MobileSecurePayer;

    invoke-static {p2}, Lcom/alipay/android/app/IAlixPay$Stub;->asInterface(Landroid/os/IBinder;)Lcom/alipay/android/app/IAlixPay;

    move-result-object p2

    iput-object p2, v0, Lcom/tw/pay/sdk/alipay/MobileSecurePayer;->mAlixPay:Lcom/alipay/android/app/IAlixPay;

    .line 47
    iget-object p2, p0, Lcom/tw/pay/sdk/alipay/MobileSecurePayer$1;->this$0:Lcom/tw/pay/sdk/alipay/MobileSecurePayer;

    iget-object p2, p2, Lcom/tw/pay/sdk/alipay/MobileSecurePayer;->lock:Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Object;->notify()V

    .line 48
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    .line 52
    iget-object p1, p0, Lcom/tw/pay/sdk/alipay/MobileSecurePayer$1;->this$0:Lcom/tw/pay/sdk/alipay/MobileSecurePayer;

    const/4 v0, 0x0

    iput-object v0, p1, Lcom/tw/pay/sdk/alipay/MobileSecurePayer;->mAlixPay:Lcom/alipay/android/app/IAlixPay;

    return-void
.end method
