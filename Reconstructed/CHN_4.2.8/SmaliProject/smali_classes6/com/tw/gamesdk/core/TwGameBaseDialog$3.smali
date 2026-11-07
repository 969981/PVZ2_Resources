.class Lcom/tw/gamesdk/core/TwGameBaseDialog$3;
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


# direct methods
.method constructor <init>(Lcom/tw/gamesdk/core/TwGameBaseDialog;Landroid/content/Context;)V
    .locals 0

    .line 149
    iput-object p1, p0, Lcom/tw/gamesdk/core/TwGameBaseDialog$3;->this$0:Lcom/tw/gamesdk/core/TwGameBaseDialog;

    iput-object p2, p0, Lcom/tw/gamesdk/core/TwGameBaseDialog$3;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 152
    iget-object v0, p0, Lcom/tw/gamesdk/core/TwGameBaseDialog$3;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lcom/tw/pay/sdk/util/PopupWindowUtil;->getPopupWindowUtil(Landroid/content/Context;)Lcom/tw/pay/sdk/util/PopupWindowUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tw/pay/sdk/util/PopupWindowUtil;->showPopupWindow()V

    return-void
.end method
