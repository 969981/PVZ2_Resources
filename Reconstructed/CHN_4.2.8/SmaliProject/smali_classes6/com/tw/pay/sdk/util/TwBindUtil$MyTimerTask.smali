.class Lcom/tw/pay/sdk/util/TwBindUtil$MyTimerTask;
.super Ljava/util/TimerTask;
.source "TwBindUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tw/pay/sdk/util/TwBindUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyTimerTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tw/pay/sdk/util/TwBindUtil;


# direct methods
.method constructor <init>(Lcom/tw/pay/sdk/util/TwBindUtil;)V
    .locals 0

    .line 444
    iput-object p1, p0, Lcom/tw/pay/sdk/util/TwBindUtil$MyTimerTask;->this$0:Lcom/tw/pay/sdk/util/TwBindUtil;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 448
    iget-object v0, p0, Lcom/tw/pay/sdk/util/TwBindUtil$MyTimerTask;->this$0:Lcom/tw/pay/sdk/util/TwBindUtil;

    invoke-static {v0}, Lcom/tw/pay/sdk/util/TwBindUtil;->access$100(Lcom/tw/pay/sdk/util/TwBindUtil;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcom/tw/pay/sdk/util/TwBindUtil$MyTimerTask$1;

    invoke-direct {v1, p0}, Lcom/tw/pay/sdk/util/TwBindUtil$MyTimerTask$1;-><init>(Lcom/tw/pay/sdk/util/TwBindUtil$MyTimerTask;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
