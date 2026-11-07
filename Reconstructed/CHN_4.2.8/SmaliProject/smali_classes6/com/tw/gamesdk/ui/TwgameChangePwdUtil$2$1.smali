.class Lcom/tw/gamesdk/ui/TwgameChangePwdUtil$2$1;
.super Ljava/lang/Object;
.source "TwgameChangePwdUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tw/gamesdk/ui/TwgameChangePwdUtil$2;->onFailure()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/tw/gamesdk/ui/TwgameChangePwdUtil$2;


# direct methods
.method constructor <init>(Lcom/tw/gamesdk/ui/TwgameChangePwdUtil$2;)V
    .locals 0

    .line 162
    iput-object p1, p0, Lcom/tw/gamesdk/ui/TwgameChangePwdUtil$2$1;->this$1:Lcom/tw/gamesdk/ui/TwgameChangePwdUtil$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 165
    sget-object v0, Lcom/tw/gamesdk/core/TwGameBaseDialog;->baseDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 166
    iget-object v0, p0, Lcom/tw/gamesdk/ui/TwgameChangePwdUtil$2$1;->this$1:Lcom/tw/gamesdk/ui/TwgameChangePwdUtil$2;

    iget-object v0, v0, Lcom/tw/gamesdk/ui/TwgameChangePwdUtil$2;->this$0:Lcom/tw/gamesdk/ui/TwgameChangePwdUtil;

    invoke-static {v0}, Lcom/tw/gamesdk/ui/TwgameChangePwdUtil;->access$000(Lcom/tw/gamesdk/ui/TwgameChangePwdUtil;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "token\u8fc7\u671f\uff0c\u8bf7\u91cd\u65b0\u767b\u5f55\u6e38\u620f\u540e\u518d\u8bd5"

    invoke-static {v0, v1}, Lcom/tw/pay/sdk/tool/Tools;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method
