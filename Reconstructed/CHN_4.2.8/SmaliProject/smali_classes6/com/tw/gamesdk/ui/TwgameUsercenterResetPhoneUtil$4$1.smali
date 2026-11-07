.class Lcom/tw/gamesdk/ui/TwgameUsercenterResetPhoneUtil$4$1;
.super Ljava/lang/Object;
.source "TwgameUsercenterResetPhoneUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tw/gamesdk/ui/TwgameUsercenterResetPhoneUtil$4;->onFailure()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/tw/gamesdk/ui/TwgameUsercenterResetPhoneUtil$4;


# direct methods
.method constructor <init>(Lcom/tw/gamesdk/ui/TwgameUsercenterResetPhoneUtil$4;)V
    .locals 0

    .line 202
    iput-object p1, p0, Lcom/tw/gamesdk/ui/TwgameUsercenterResetPhoneUtil$4$1;->this$1:Lcom/tw/gamesdk/ui/TwgameUsercenterResetPhoneUtil$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 205
    sget-object v0, Lcom/tw/gamesdk/core/TwGameBaseDialog;->baseDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 206
    iget-object v0, p0, Lcom/tw/gamesdk/ui/TwgameUsercenterResetPhoneUtil$4$1;->this$1:Lcom/tw/gamesdk/ui/TwgameUsercenterResetPhoneUtil$4;

    iget-object v0, v0, Lcom/tw/gamesdk/ui/TwgameUsercenterResetPhoneUtil$4;->this$0:Lcom/tw/gamesdk/ui/TwgameUsercenterResetPhoneUtil;

    invoke-static {v0}, Lcom/tw/gamesdk/ui/TwgameUsercenterResetPhoneUtil;->access$300(Lcom/tw/gamesdk/ui/TwgameUsercenterResetPhoneUtil;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "token\u8fc7\u671f\uff0c\u8bf7\u91cd\u65b0\u767b\u5f55\u6e38\u620f\u540e\u518d\u8bd5"

    invoke-static {v0, v1}, Lcom/tw/pay/sdk/tool/Tools;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method
