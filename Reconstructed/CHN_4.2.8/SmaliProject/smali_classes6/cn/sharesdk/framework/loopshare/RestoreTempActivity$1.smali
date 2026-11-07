.class Lcn/sharesdk/framework/loopshare/RestoreTempActivity$1;
.super Ljava/lang/Object;
.source "RestoreTempActivity.java"

# interfaces
.implements Lcn/sharesdk/loopshare/SceneRestorable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/sharesdk/framework/loopshare/RestoreTempActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/sharesdk/framework/loopshare/RestoreTempActivity;


# direct methods
.method constructor <init>(Lcn/sharesdk/framework/loopshare/RestoreTempActivity;)V
    .locals 0

    .line 28
    iput-object p1, p0, Lcn/sharesdk/framework/loopshare/RestoreTempActivity$1;->this$0:Lcn/sharesdk/framework/loopshare/RestoreTempActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onReturnSceneData(Lcn/sharesdk/loopshare/Scene;)V
    .locals 6

    const-string v0, "LoopShare RestoreTempActivity save json is okd "

    if-eqz p1, :cond_3

    .line 32
    invoke-virtual {p1}, Lcn/sharesdk/loopshare/Scene;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 33
    invoke-virtual {p1}, Lcn/sharesdk/loopshare/Scene;->getParams()Ljava/util/HashMap;

    move-result-object p1

    .line 34
    const-string v2, "targetAction_And"

    invoke-virtual {p1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 35
    invoke-virtual {p1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    const-string v2, "targetAction_iOS"

    invoke-virtual {p1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x0

    .line 44
    :try_start_0
    const-string v3, "path"

    invoke-virtual {p1, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    new-instance v1, Lcom/mob/tools/utils/Hashon;

    invoke-direct {v1}, Lcom/mob/tools/utils/Hashon;-><init>()V

    invoke-virtual {v1, p1}, Lcom/mob/tools/utils/Hashon;->fromHashMap(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v1

    .line 50
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 51
    new-instance v3, Lcn/sharesdk/framework/loopshare/a;

    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "sharesdk_moblink_sp"

    invoke-direct {v3, v4, v5}, Lcn/sharesdk/framework/loopshare/a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 52
    const-string v4, "share_restore_extra"

    invoke-virtual {v3, v4, v1}, Lcn/sharesdk/framework/loopshare/a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 53
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcom/mob/tools/log/NLog;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    invoke-virtual {v3, v0, v1}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 57
    :cond_0
    invoke-static {}, Lcn/sharesdk/framework/loopshare/MobLinkAPI;->b()Lcn/sharesdk/framework/loopshare/LoopShareResultListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 58
    invoke-static {}, Lcn/sharesdk/framework/loopshare/MobLinkAPI;->b()Lcn/sharesdk/framework/loopshare/LoopShareResultListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcn/sharesdk/framework/loopshare/LoopShareResultListener;->onResult(Ljava/lang/Object;)V

    .line 59
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcom/mob/tools/log/NLog;

    move-result-object p1

    const-string v0, "LoopShare RestoreTempActivity onResult is OK"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-virtual {p1, v0, v1}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 62
    :cond_1
    iget-object p1, p0, Lcn/sharesdk/framework/loopshare/RestoreTempActivity$1;->this$0:Lcn/sharesdk/framework/loopshare/RestoreTempActivity;

    invoke-virtual {p1}, Lcn/sharesdk/framework/loopshare/RestoreTempActivity;->finish()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 64
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcom/mob/tools/log/NLog;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "LoopShare RestoreTempActivity onReturnSceneData catch "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 65
    invoke-static {}, Lcn/sharesdk/framework/loopshare/MobLinkAPI;->b()Lcn/sharesdk/framework/loopshare/LoopShareResultListener;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 66
    invoke-static {}, Lcn/sharesdk/framework/loopshare/MobLinkAPI;->b()Lcn/sharesdk/framework/loopshare/LoopShareResultListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcn/sharesdk/framework/loopshare/LoopShareResultListener;->onError(Ljava/lang/Throwable;)V

    .line 68
    :cond_2
    iget-object p1, p0, Lcn/sharesdk/framework/loopshare/RestoreTempActivity$1;->this$0:Lcn/sharesdk/framework/loopshare/RestoreTempActivity;

    invoke-virtual {p1}, Lcn/sharesdk/framework/loopshare/RestoreTempActivity;->finish()V

    :cond_3
    :goto_0
    return-void
.end method
