.class Lcom/tw/gamesdk/ui/TwgameLoginQuickUtil$2;
.super Ljava/lang/Object;
.source "TwgameLoginQuickUtil.java"

# interfaces
.implements Lcom/tw/gamesdk/adapter/PhoneAdapter$OnPhoneItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tw/gamesdk/ui/TwgameLoginQuickUtil;->setupListeners()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tw/gamesdk/ui/TwgameLoginQuickUtil;


# direct methods
.method constructor <init>(Lcom/tw/gamesdk/ui/TwgameLoginQuickUtil;)V
    .locals 0

    .line 132
    iput-object p1, p0, Lcom/tw/gamesdk/ui/TwgameLoginQuickUtil$2;->this$0:Lcom/tw/gamesdk/ui/TwgameLoginQuickUtil;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPhoneItemClick(Ljava/lang/String;)V
    .locals 2

    .line 136
    iget-object v0, p0, Lcom/tw/gamesdk/ui/TwgameLoginQuickUtil$2;->this$0:Lcom/tw/gamesdk/ui/TwgameLoginQuickUtil;

    invoke-static {v0}, Lcom/tw/gamesdk/ui/TwgameLoginQuickUtil;->access$100(Lcom/tw/gamesdk/ui/TwgameLoginQuickUtil;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/tw/gamesdk/core/UserDataManager;->getInstance(Landroid/content/Context;)Lcom/tw/gamesdk/core/UserDataManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tw/gamesdk/core/UserDataManager;->getUser(Ljava/lang/String;)Lcom/tw/gamesdk/bean/SimpleUserData;

    move-result-object v0

    .line 137
    iget-object v1, p0, Lcom/tw/gamesdk/ui/TwgameLoginQuickUtil$2;->this$0:Lcom/tw/gamesdk/ui/TwgameLoginQuickUtil;

    invoke-static {v1}, Lcom/tw/gamesdk/ui/TwgameLoginQuickUtil;->access$100(Lcom/tw/gamesdk/ui/TwgameLoginQuickUtil;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/tw/gamesdk/core/UserDataManager;->getInstance(Landroid/content/Context;)Lcom/tw/gamesdk/core/UserDataManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/tw/gamesdk/core/UserDataManager;->setCurrentUser(Ljava/lang/String;)V

    .line 138
    invoke-static {}, Lcom/tw/gamesdk/core/GameSDK;->getInstance()Lcom/tw/gamesdk/core/GameSDK;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/tw/gamesdk/core/GameSDK;->updateUserInfo(Lcom/tw/gamesdk/bean/SimpleUserData;)V

    .line 139
    iget-object p1, p0, Lcom/tw/gamesdk/ui/TwgameLoginQuickUtil$2;->this$0:Lcom/tw/gamesdk/ui/TwgameLoginQuickUtil;

    invoke-virtual {v0}, Lcom/tw/gamesdk/bean/SimpleUserData;->getPhone()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/tw/gamesdk/ui/TwgameLoginQuickUtil;->onPhoneSelected(Ljava/lang/String;)V

    return-void
.end method

.method public onUserItemClean(Ljava/lang/String;I)V
    .locals 1

    .line 144
    iget-object p2, p0, Lcom/tw/gamesdk/ui/TwgameLoginQuickUtil$2;->this$0:Lcom/tw/gamesdk/ui/TwgameLoginQuickUtil;

    invoke-static {p2}, Lcom/tw/gamesdk/ui/TwgameLoginQuickUtil;->access$100(Lcom/tw/gamesdk/ui/TwgameLoginQuickUtil;)Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/tw/gamesdk/core/UserDataManager;->getInstance(Landroid/content/Context;)Lcom/tw/gamesdk/core/UserDataManager;

    move-result-object p2

    invoke-virtual {p2}, Lcom/tw/gamesdk/core/UserDataManager;->getAllUsers()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    const/4 v0, 0x1

    if-gt p2, v0, :cond_0

    .line 145
    sget-object p1, Lcom/tw/gamesdk/core/TwGameBaseDialog;->activity:Landroid/app/Activity;

    const-string p2, "\u8bf7\u81f3\u5c11\u4fdd\u7559\u4e00\u4e2a\u8d26\u53f7!"

    invoke-static {p2, p1}, Lcom/tw/pay/sdk/tool/Tools;->makeToast(Ljava/lang/String;Landroid/app/Activity;)V

    return-void

    .line 148
    :cond_0
    iget-object p2, p0, Lcom/tw/gamesdk/ui/TwgameLoginQuickUtil$2;->this$0:Lcom/tw/gamesdk/ui/TwgameLoginQuickUtil;

    invoke-static {p2}, Lcom/tw/gamesdk/ui/TwgameLoginQuickUtil;->access$100(Lcom/tw/gamesdk/ui/TwgameLoginQuickUtil;)Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/tw/gamesdk/core/UserDataManager;->getInstance(Landroid/content/Context;)Lcom/tw/gamesdk/core/UserDataManager;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/tw/gamesdk/core/UserDataManager;->deleteUser(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 150
    iget-object p1, p0, Lcom/tw/gamesdk/ui/TwgameLoginQuickUtil$2;->this$0:Lcom/tw/gamesdk/ui/TwgameLoginQuickUtil;

    invoke-static {p1}, Lcom/tw/gamesdk/ui/TwgameLoginQuickUtil;->access$100(Lcom/tw/gamesdk/ui/TwgameLoginQuickUtil;)Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/tw/gamesdk/core/UserDataManager;->getInstance(Landroid/content/Context;)Lcom/tw/gamesdk/core/UserDataManager;

    move-result-object p2

    invoke-virtual {p2}, Lcom/tw/gamesdk/core/UserDataManager;->getAllUsers()Ljava/util/List;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/tw/gamesdk/ui/TwgameLoginQuickUtil;->updatePhoneList(Ljava/util/List;)V

    :cond_1
    return-void
.end method
