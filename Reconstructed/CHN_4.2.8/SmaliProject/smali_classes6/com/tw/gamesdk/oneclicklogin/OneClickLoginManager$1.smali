.class Lcom/tw/gamesdk/oneclicklogin/OneClickLoginManager$1;
.super Ljava/lang/Object;
.source "OneClickLoginManager.java"

# interfaces
.implements Lcom/mobile/auth/gatewayauth/TokenResultListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tw/gamesdk/oneclicklogin/OneClickLoginManager;->init(Landroid/content/Context;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tw/gamesdk/oneclicklogin/OneClickLoginManager;


# direct methods
.method constructor <init>(Lcom/tw/gamesdk/oneclicklogin/OneClickLoginManager;)V
    .locals 0

    .line 107
    iput-object p1, p0, Lcom/tw/gamesdk/oneclicklogin/OneClickLoginManager$1;->this$0:Lcom/tw/gamesdk/oneclicklogin/OneClickLoginManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTokenFailed(Ljava/lang/String;)V
    .locals 2

    .line 115
    iget-object v0, p0, Lcom/tw/gamesdk/oneclicklogin/OneClickLoginManager$1;->this$0:Lcom/tw/gamesdk/oneclicklogin/OneClickLoginManager;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/tw/gamesdk/oneclicklogin/OneClickLoginManager;->access$000(Lcom/tw/gamesdk/oneclicklogin/OneClickLoginManager;Ljava/lang/String;Z)V

    return-void
.end method

.method public onTokenSuccess(Ljava/lang/String;)V
    .locals 2

    .line 110
    iget-object v0, p0, Lcom/tw/gamesdk/oneclicklogin/OneClickLoginManager$1;->this$0:Lcom/tw/gamesdk/oneclicklogin/OneClickLoginManager;

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Lcom/tw/gamesdk/oneclicklogin/OneClickLoginManager;->access$000(Lcom/tw/gamesdk/oneclicklogin/OneClickLoginManager;Ljava/lang/String;Z)V

    return-void
.end method
