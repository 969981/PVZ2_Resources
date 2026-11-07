.class final Lcom/tw/gamesdk/oneclicklogin/TwgameLoginDispatchUtil$1;
.super Ljava/lang/Object;
.source "TwgameLoginDispatchUtil.java"

# interfaces
.implements Lcom/tw/gamesdk/oneclicklogin/OneClickPreLoginListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tw/gamesdk/oneclicklogin/TwgameLoginDispatchUtil;->preLoginAndLaunch(Landroid/app/Activity;Lcom/tw/pay/sdk/callback/TwCallback;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$allowTipOnFallback:Z

.field final synthetic val$outer:Lcom/tw/pay/sdk/callback/TwCallback;


# direct methods
.method constructor <init>(Landroid/app/Activity;Lcom/tw/pay/sdk/callback/TwCallback;Z)V
    .locals 0

    .line 50
    iput-object p1, p0, Lcom/tw/gamesdk/oneclicklogin/TwgameLoginDispatchUtil$1;->val$activity:Landroid/app/Activity;

    iput-object p2, p0, Lcom/tw/gamesdk/oneclicklogin/TwgameLoginDispatchUtil$1;->val$outer:Lcom/tw/pay/sdk/callback/TwCallback;

    iput-boolean p3, p0, Lcom/tw/gamesdk/oneclicklogin/TwgameLoginDispatchUtil$1;->val$allowTipOnFallback:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 58
    iget-object p1, p0, Lcom/tw/gamesdk/oneclicklogin/TwgameLoginDispatchUtil$1;->val$activity:Landroid/app/Activity;

    iget-object p2, p0, Lcom/tw/gamesdk/oneclicklogin/TwgameLoginDispatchUtil$1;->val$outer:Lcom/tw/pay/sdk/callback/TwCallback;

    iget-boolean v0, p0, Lcom/tw/gamesdk/oneclicklogin/TwgameLoginDispatchUtil$1;->val$allowTipOnFallback:Z

    invoke-static {p1, p2, v0}, Lcom/tw/gamesdk/oneclicklogin/TwgameLoginDispatchUtil;->access$100(Landroid/content/Context;Lcom/tw/pay/sdk/callback/TwCallback;Z)V

    return-void
.end method

.method public onSuccess()V
    .locals 2

    .line 53
    iget-object v0, p0, Lcom/tw/gamesdk/oneclicklogin/TwgameLoginDispatchUtil$1;->val$activity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/tw/gamesdk/oneclicklogin/TwgameLoginDispatchUtil$1;->val$outer:Lcom/tw/pay/sdk/callback/TwCallback;

    invoke-static {v0, v1}, Lcom/tw/gamesdk/oneclicklogin/TwgameLoginDispatchUtil;->access$000(Landroid/app/Activity;Lcom/tw/pay/sdk/callback/TwCallback;)V

    return-void
.end method
