.class Lcn/sharesdk/framework/ProvicyCanContinue$1;
.super Lcom/mob/OperationCallback;
.source "ProvicyCanContinue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/sharesdk/framework/ProvicyCanContinue;->a(Lcn/sharesdk/framework/ProvicyCanContinue$OnBusinessListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/mob/OperationCallback<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcn/sharesdk/framework/ProvicyCanContinue$OnBusinessListener;

.field final synthetic b:Lcn/sharesdk/framework/ProvicyCanContinue;


# direct methods
.method constructor <init>(Lcn/sharesdk/framework/ProvicyCanContinue;Lcn/sharesdk/framework/ProvicyCanContinue$OnBusinessListener;)V
    .locals 0

    .line 55
    iput-object p1, p0, Lcn/sharesdk/framework/ProvicyCanContinue$1;->b:Lcn/sharesdk/framework/ProvicyCanContinue;

    iput-object p2, p0, Lcn/sharesdk/framework/ProvicyCanContinue$1;->a:Lcn/sharesdk/framework/ProvicyCanContinue$OnBusinessListener;

    invoke-direct {p0}, Lcom/mob/OperationCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Ljava/lang/Boolean;)V
    .locals 3

    .line 58
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcom/mob/tools/log/NLog;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "canIContinueBusiness: onComplete(), "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "ShareSDK"

    invoke-virtual {v0, v2, v1}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 59
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 61
    iget-object p1, p0, Lcn/sharesdk/framework/ProvicyCanContinue$1;->a:Lcn/sharesdk/framework/ProvicyCanContinue$OnBusinessListener;

    if-eqz p1, :cond_0

    .line 62
    invoke-interface {p1}, Lcn/sharesdk/framework/ProvicyCanContinue$OnBusinessListener;->onContinue()V

    .line 64
    :cond_0
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcom/mob/tools/log/NLog;

    move-result-object p1

    const-string v0, "MobSDK.canIContinueBusiness if "

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    goto :goto_0

    .line 67
    :cond_1
    iget-object p1, p0, Lcn/sharesdk/framework/ProvicyCanContinue$1;->a:Lcn/sharesdk/framework/ProvicyCanContinue$OnBusinessListener;

    if-eqz p1, :cond_2

    .line 68
    invoke-interface {p1}, Lcn/sharesdk/framework/ProvicyCanContinue$OnBusinessListener;->onStop()V

    .line 70
    :cond_2
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcom/mob/tools/log/NLog;

    move-result-object p1

    const-string v0, "MobSDK.canIContinueBusiness else "

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    :goto_0
    return-void
.end method

.method public bridge synthetic onComplete(Ljava/lang/Object;)V
    .locals 0

    .line 55
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcn/sharesdk/framework/ProvicyCanContinue$1;->onComplete(Ljava/lang/Boolean;)V

    return-void
.end method

.method public onFailure(Ljava/lang/Throwable;)V
    .locals 3

    .line 76
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcom/mob/tools/log/NLog;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "canIContinueBusiness: onFailure() "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "ShareSDK"

    invoke-virtual {v0, v2, v1}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 78
    iget-object v0, p0, Lcn/sharesdk/framework/ProvicyCanContinue$1;->a:Lcn/sharesdk/framework/ProvicyCanContinue$OnBusinessListener;

    if-eqz v0, :cond_0

    .line 79
    invoke-interface {v0, p1}, Lcn/sharesdk/framework/ProvicyCanContinue$OnBusinessListener;->onError(Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method
