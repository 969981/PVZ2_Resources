.class Lcom/tw/gamesdk/oneclicklogin/OneClickLoginManager$2;
.super Ljava/lang/Object;
.source "OneClickLoginManager.java"

# interfaces
.implements Lcom/mobile/auth/gatewayauth/PreLoginResultListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tw/gamesdk/oneclicklogin/OneClickLoginManager;->preLogin(Lcom/tw/gamesdk/oneclicklogin/OneClickPreLoginListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tw/gamesdk/oneclicklogin/OneClickLoginManager;

.field final synthetic val$listener:Lcom/tw/gamesdk/oneclicklogin/OneClickPreLoginListener;


# direct methods
.method constructor <init>(Lcom/tw/gamesdk/oneclicklogin/OneClickLoginManager;Lcom/tw/gamesdk/oneclicklogin/OneClickPreLoginListener;)V
    .locals 0

    .line 143
    iput-object p1, p0, Lcom/tw/gamesdk/oneclicklogin/OneClickLoginManager$2;->this$0:Lcom/tw/gamesdk/oneclicklogin/OneClickLoginManager;

    iput-object p2, p0, Lcom/tw/gamesdk/oneclicklogin/OneClickLoginManager$2;->val$listener:Lcom/tw/gamesdk/oneclicklogin/OneClickPreLoginListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTokenFailed(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 153
    iget-object v0, p0, Lcom/tw/gamesdk/oneclicklogin/OneClickLoginManager$2;->val$listener:Lcom/tw/gamesdk/oneclicklogin/OneClickPreLoginListener;

    if-eqz v0, :cond_0

    .line 154
    invoke-interface {v0, p1, p2}, Lcom/tw/gamesdk/oneclicklogin/OneClickPreLoginListener;->onFailure(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onTokenSuccess(Ljava/lang/String;)V
    .locals 0

    .line 146
    iget-object p1, p0, Lcom/tw/gamesdk/oneclicklogin/OneClickLoginManager$2;->val$listener:Lcom/tw/gamesdk/oneclicklogin/OneClickPreLoginListener;

    if-eqz p1, :cond_0

    .line 147
    invoke-interface {p1}, Lcom/tw/gamesdk/oneclicklogin/OneClickPreLoginListener;->onSuccess()V

    :cond_0
    return-void
.end method
