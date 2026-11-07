.class final Lcn/sharesdk/framework/loopshare/MobLinkAPI$2;
.super Ljava/lang/Object;
.source "MobLinkAPI.java"

# interfaces
.implements Lcn/sharesdk/loopshare/ActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/sharesdk/framework/loopshare/MobLinkAPI;->a(ZLcn/sharesdk/framework/loopshare/LoopSharePasswordListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcn/sharesdk/loopshare/ActionListener<",
        "Lcn/sharesdk/loopshare/beans/SceneData;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 159
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/Throwable;)V
    .locals 3

    .line 170
    invoke-static {}, Lcn/sharesdk/framework/loopshare/MobLinkAPI;->c()Lcn/sharesdk/framework/loopshare/LoopSharePasswordListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcn/sharesdk/framework/loopshare/LoopSharePasswordListener;->onError(Ljava/lang/Throwable;)V

    .line 171
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcom/mob/tools/log/NLog;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "LoopShare MobLinkAPI readPassWord onError: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p1, v1}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    return-void
.end method

.method public onResult(Lcn/sharesdk/loopshare/beans/SceneData;)V
    .locals 2

    .line 163
    invoke-virtual {p1}, Lcn/sharesdk/loopshare/beans/SceneData;->a()Lcn/sharesdk/loopshare/beans/SceneData$Res;

    move-result-object p1

    iget-object p1, p1, Lcn/sharesdk/loopshare/beans/SceneData$Res;->params:Ljava/util/HashMap;

    .line 164
    invoke-static {}, Lcn/sharesdk/framework/loopshare/MobLinkAPI;->c()Lcn/sharesdk/framework/loopshare/LoopSharePasswordListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcn/sharesdk/framework/loopshare/LoopSharePasswordListener;->onResult(Ljava/lang/Object;)V

    .line 165
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcom/mob/tools/log/NLog;

    move-result-object p1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "LoopShare MobLinkAPI readPassWord onResult is ok"

    invoke-virtual {p1, v1, v0}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    return-void
.end method

.method public bridge synthetic onResult(Ljava/lang/Object;)V
    .locals 0

    .line 159
    check-cast p1, Lcn/sharesdk/loopshare/beans/SceneData;

    invoke-virtual {p0, p1}, Lcn/sharesdk/framework/loopshare/MobLinkAPI$2;->onResult(Lcn/sharesdk/loopshare/beans/SceneData;)V

    return-void
.end method
