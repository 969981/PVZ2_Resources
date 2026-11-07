.class Lcom/tw/OnLinePaySdk/tools/Tools$1;
.super Landroid/os/Handler;
.source "Tools.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tw/OnLinePaySdk/tools/Tools;->setChanenlLogo(Landroid/content/Context;ZIILcom/tw/OnLinePaySdk/callback/MyCallBack;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$callBack:Lcom/tw/OnLinePaySdk/callback/MyCallBack;

.field private final synthetic val$dialog:Lcom/tw/OnLinePaySdk/bean/LogoDialog;


# direct methods
.method constructor <init>(Lcom/tw/OnLinePaySdk/callback/MyCallBack;Lcom/tw/OnLinePaySdk/bean/LogoDialog;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tw/OnLinePaySdk/tools/Tools$1;->val$callBack:Lcom/tw/OnLinePaySdk/callback/MyCallBack;

    iput-object p2, p0, Lcom/tw/OnLinePaySdk/tools/Tools$1;->val$dialog:Lcom/tw/OnLinePaySdk/bean/LogoDialog;

    .line 443
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 447
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 448
    iget-object p1, p0, Lcom/tw/OnLinePaySdk/tools/Tools$1;->val$callBack:Lcom/tw/OnLinePaySdk/callback/MyCallBack;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/tw/OnLinePaySdk/callback/MyCallBack;->responseData(Ljava/lang/Object;)V

    .line 449
    iget-object p1, p0, Lcom/tw/OnLinePaySdk/tools/Tools$1;->val$dialog:Lcom/tw/OnLinePaySdk/bean/LogoDialog;

    invoke-virtual {p1}, Lcom/tw/OnLinePaySdk/bean/LogoDialog;->dismiss()V

    return-void
.end method
