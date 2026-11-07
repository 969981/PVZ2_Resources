.class Lcom/talkweb/twOfflineSdk/ui/TwMultiPayDialog$2;
.super Ljava/lang/Object;
.source "TwMultiPayDialog.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/talkweb/twOfflineSdk/ui/TwMultiPayDialog;->setGridView(Lcom/talkweb/twOfflineSdk/bean/Goods;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/talkweb/twOfflineSdk/ui/TwMultiPayDialog;

.field final synthetic val$good:Lcom/talkweb/twOfflineSdk/bean/Goods;


# direct methods
.method constructor <init>(Lcom/talkweb/twOfflineSdk/ui/TwMultiPayDialog;Lcom/talkweb/twOfflineSdk/bean/Goods;)V
    .locals 0

    .line 175
    iput-object p1, p0, Lcom/talkweb/twOfflineSdk/ui/TwMultiPayDialog$2;->this$0:Lcom/talkweb/twOfflineSdk/ui/TwMultiPayDialog;

    iput-object p2, p0, Lcom/talkweb/twOfflineSdk/ui/TwMultiPayDialog$2;->val$good:Lcom/talkweb/twOfflineSdk/bean/Goods;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 180
    invoke-static {}, Lcom/talkweb/twOfflineSdk/ui/TwMultiPayDialog;->access$200()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 181
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "\u8c03\u7528\u65f6\u95f4\u5c11\u4e8e"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/talkweb/twOfflineSdk/ui/TwMultiPayDialog;->access$300()J

    move-result-wide p2

    const-wide/16 p4, 0x3e8

    div-long/2addr p2, p4

    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, "\u79d2"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/talkweb/twOfflineSdk/tools/LogUtils;->i(Ljava/lang/String;)V

    return-void

    .line 184
    :cond_0
    iget-object p1, p0, Lcom/talkweb/twOfflineSdk/ui/TwMultiPayDialog$2;->val$good:Lcom/talkweb/twOfflineSdk/bean/Goods;

    invoke-virtual {p1}, Lcom/talkweb/twOfflineSdk/bean/Goods;->getPayWayList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/talkweb/twOfflineSdk/bean/PayWay;

    if-eqz p1, :cond_1

    .line 188
    :try_start_0
    iget-object p2, p0, Lcom/talkweb/twOfflineSdk/ui/TwMultiPayDialog$2;->this$0:Lcom/talkweb/twOfflineSdk/ui/TwMultiPayDialog;

    .line 189
    invoke-static {p2}, Lcom/talkweb/twOfflineSdk/ui/TwMultiPayDialog;->access$000(Lcom/talkweb/twOfflineSdk/ui/TwMultiPayDialog;)Landroid/app/Activity;

    move-result-object p2

    invoke-static {p2}, Lcom/talkweb/twOfflineSdk/tools/SDKConfig;->getTwOfflineSDKInstance(Landroid/content/Context;)Lcom/talkweb/twOfflineSdk/sdk/TwOfflineSDKImpl;

    move-result-object p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p3, 0x1

    .line 196
    invoke-static {p3}, Lcom/talkweb/twOfflineSdk/ui/TwMultiPayDialog;->access$202(Z)Z

    .line 197
    iget-object p3, p0, Lcom/talkweb/twOfflineSdk/ui/TwMultiPayDialog$2;->this$0:Lcom/talkweb/twOfflineSdk/ui/TwMultiPayDialog;

    invoke-static {p3}, Lcom/talkweb/twOfflineSdk/ui/TwMultiPayDialog;->access$000(Lcom/talkweb/twOfflineSdk/ui/TwMultiPayDialog;)Landroid/app/Activity;

    move-result-object p3

    new-instance p4, Lcom/talkweb/twOfflineSdk/ui/TwMultiPayDialog$2$1;

    invoke-direct {p4, p0}, Lcom/talkweb/twOfflineSdk/ui/TwMultiPayDialog$2$1;-><init>(Lcom/talkweb/twOfflineSdk/ui/TwMultiPayDialog$2;)V

    invoke-virtual {p3, p4}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 211
    iget-object p3, p0, Lcom/talkweb/twOfflineSdk/ui/TwMultiPayDialog$2;->val$good:Lcom/talkweb/twOfflineSdk/bean/Goods;

    iget-object p4, p0, Lcom/talkweb/twOfflineSdk/ui/TwMultiPayDialog$2;->this$0:Lcom/talkweb/twOfflineSdk/ui/TwMultiPayDialog;

    invoke-static {p4}, Lcom/talkweb/twOfflineSdk/ui/TwMultiPayDialog;->access$100(Lcom/talkweb/twOfflineSdk/ui/TwMultiPayDialog;)Ljava/lang/String;

    move-result-object p4

    iget-object p5, p0, Lcom/talkweb/twOfflineSdk/ui/TwMultiPayDialog$2;->this$0:Lcom/talkweb/twOfflineSdk/ui/TwMultiPayDialog;

    invoke-static {p5}, Lcom/talkweb/twOfflineSdk/ui/TwMultiPayDialog;->access$000(Lcom/talkweb/twOfflineSdk/ui/TwMultiPayDialog;)Landroid/app/Activity;

    move-result-object p5

    invoke-virtual {p2, p1, p3, p4, p5}, Lcom/talkweb/twOfflineSdk/sdk/TwOfflineSDKImpl;->pay(Lcom/talkweb/twOfflineSdk/bean/PayWay;Lcom/talkweb/twOfflineSdk/bean/Goods;Ljava/lang/String;Landroid/app/Activity;)V

    goto :goto_0

    :catch_0
    move-exception p1

    .line 191
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "\u521d\u59cb\u5316\u5931\u8d25\uff1a"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/talkweb/twOfflineSdk/tools/LogUtils;->e(Ljava/lang/String;)V

    const/16 p1, 0xfa1

    const-string p2, ""

    .line 192
    invoke-static {p1, p2}, Lcom/talkweb/twOfflineSdk/callback/CallbackManager;->onInitCallBack(ILjava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method
