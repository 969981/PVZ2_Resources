.class Lcom/tw/pay/sdk/util/TwPayUtil$8;
.super Ljava/lang/Object;
.source "TwPayUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tw/pay/sdk/util/TwPayUtil;->setAppName(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tw/pay/sdk/util/TwPayUtil;

.field final synthetic val$appName:Ljava/lang/String;

.field final synthetic val$appNameTxt:Landroid/widget/TextView;

.field final synthetic val$userIdTxt:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/tw/pay/sdk/util/TwPayUtil;Landroid/widget/TextView;Landroid/widget/TextView;Ljava/lang/String;)V
    .locals 0

    .line 459
    iput-object p1, p0, Lcom/tw/pay/sdk/util/TwPayUtil$8;->this$0:Lcom/tw/pay/sdk/util/TwPayUtil;

    iput-object p2, p0, Lcom/tw/pay/sdk/util/TwPayUtil$8;->val$userIdTxt:Landroid/widget/TextView;

    iput-object p3, p0, Lcom/tw/pay/sdk/util/TwPayUtil$8;->val$appNameTxt:Landroid/widget/TextView;

    iput-object p4, p0, Lcom/tw/pay/sdk/util/TwPayUtil$8;->val$appName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 463
    sget-boolean v0, Lcom/tw/gamesdk/core/GameSDKConstant;->isTapLogin:Z

    if-eqz v0, :cond_0

    .line 464
    iget-object v0, p0, Lcom/tw/pay/sdk/util/TwPayUtil$8;->val$userIdTxt:Landroid/widget/TextView;

    sget-object v1, Lcom/tw/gamesdk/core/GameSDKConstant;->tapLoginUserId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 467
    :cond_0
    iget-object v0, p0, Lcom/tw/pay/sdk/util/TwPayUtil$8;->val$appNameTxt:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/tw/pay/sdk/util/TwPayUtil$8;->val$appName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 468
    iget-object v0, p0, Lcom/tw/pay/sdk/util/TwPayUtil$8;->val$userIdTxt:Landroid/widget/TextView;

    invoke-static {}, Lcom/tw/gamesdk/core/GameSDK;->getInstance()Lcom/tw/gamesdk/core/GameSDK;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tw/gamesdk/core/GameSDK;->getCurrentUser()Lcom/tw/gamesdk/bean/SimpleUserData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tw/gamesdk/bean/SimpleUserData;->getUid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method
