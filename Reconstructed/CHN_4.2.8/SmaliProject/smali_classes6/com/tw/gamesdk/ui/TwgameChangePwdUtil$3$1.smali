.class Lcom/tw/gamesdk/ui/TwgameChangePwdUtil$3$1;
.super Ljava/lang/Object;
.source "TwgameChangePwdUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tw/gamesdk/ui/TwgameChangePwdUtil$3;->onResponse(ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/tw/gamesdk/ui/TwgameChangePwdUtil$3;


# direct methods
.method constructor <init>(Lcom/tw/gamesdk/ui/TwgameChangePwdUtil$3;)V
    .locals 0

    .line 202
    iput-object p1, p0, Lcom/tw/gamesdk/ui/TwgameChangePwdUtil$3$1;->this$1:Lcom/tw/gamesdk/ui/TwgameChangePwdUtil$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 205
    iget-object v0, p0, Lcom/tw/gamesdk/ui/TwgameChangePwdUtil$3$1;->this$1:Lcom/tw/gamesdk/ui/TwgameChangePwdUtil$3;

    iget-object v0, v0, Lcom/tw/gamesdk/ui/TwgameChangePwdUtil$3;->this$0:Lcom/tw/gamesdk/ui/TwgameChangePwdUtil;

    invoke-static {v0}, Lcom/tw/gamesdk/ui/TwgameChangePwdUtil;->access$000(Lcom/tw/gamesdk/ui/TwgameChangePwdUtil;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/tw/gamesdk/ui/TwgameUsercenterChangeResetPwdUtil;->getTwgameUsercenterChangeResetPwdUtil(Landroid/content/Context;)Lcom/tw/gamesdk/ui/TwgameUsercenterChangeResetPwdUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tw/gamesdk/ui/TwgameUsercenterChangeResetPwdUtil;->doTwgameUsercenterChangeResetPwdDialog()V

    return-void
.end method
