.class Lcom/tw/gamesdk/core/TwGameBaseDialog$1;
.super Ljava/lang/Object;
.source "TwGameBaseDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tw/gamesdk/core/TwGameBaseDialog;->activateCode(Lcom/tw/gamesdk/bean/SimpleUserData;Lcom/tw/pay/sdk/callback/TwCallback;Landroid/content/Context;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tw/gamesdk/core/TwGameBaseDialog;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$mTwCallback:Lcom/tw/pay/sdk/callback/TwCallback;

.field final synthetic val$simpleUserData:Lcom/tw/gamesdk/bean/SimpleUserData;


# direct methods
.method constructor <init>(Lcom/tw/gamesdk/core/TwGameBaseDialog;Landroid/content/Context;Lcom/tw/pay/sdk/callback/TwCallback;Lcom/tw/gamesdk/bean/SimpleUserData;)V
    .locals 0

    .line 127
    iput-object p1, p0, Lcom/tw/gamesdk/core/TwGameBaseDialog$1;->this$0:Lcom/tw/gamesdk/core/TwGameBaseDialog;

    iput-object p2, p0, Lcom/tw/gamesdk/core/TwGameBaseDialog$1;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/tw/gamesdk/core/TwGameBaseDialog$1;->val$mTwCallback:Lcom/tw/pay/sdk/callback/TwCallback;

    iput-object p4, p0, Lcom/tw/gamesdk/core/TwGameBaseDialog$1;->val$simpleUserData:Lcom/tw/gamesdk/bean/SimpleUserData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 130
    iget-object v0, p0, Lcom/tw/gamesdk/core/TwGameBaseDialog$1;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lcom/tw/gamesdk/ui/TwgameActivateUtil;->getTwgameActivateUtil(Landroid/content/Context;)Lcom/tw/gamesdk/ui/TwgameActivateUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/tw/gamesdk/core/TwGameBaseDialog$1;->val$mTwCallback:Lcom/tw/pay/sdk/callback/TwCallback;

    iget-object v2, p0, Lcom/tw/gamesdk/core/TwGameBaseDialog$1;->val$simpleUserData:Lcom/tw/gamesdk/bean/SimpleUserData;

    invoke-virtual {v0, v1, v2}, Lcom/tw/gamesdk/ui/TwgameActivateUtil;->doActivateDialog(Lcom/tw/pay/sdk/callback/TwCallback;Lcom/tw/gamesdk/bean/SimpleUserData;)V

    return-void
.end method
