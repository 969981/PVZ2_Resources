.class Lcn/sharesdk/framework/f$4;
.super Ljava/lang/Thread;
.source "PlatformImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/sharesdk/framework/f;->c(ILjava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Ljava/lang/Object;

.field final synthetic c:Lcn/sharesdk/framework/f;


# direct methods
.method constructor <init>(Lcn/sharesdk/framework/f;ILjava/lang/Object;)V
    .locals 0

    .line 396
    iput-object p1, p0, Lcn/sharesdk/framework/f$4;->c:Lcn/sharesdk/framework/f;

    iput p2, p0, Lcn/sharesdk/framework/f$4;->a:I

    iput-object p3, p0, Lcn/sharesdk/framework/f$4;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const-string v0, "The user is using the non-privacy version newThreadJob 002 "

    .line 400
    :try_start_0
    invoke-static {}, Lcom/mob/MobSDK;->isForb()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 401
    iget-object v0, p0, Lcn/sharesdk/framework/f$4;->c:Lcn/sharesdk/framework/f;

    invoke-static {v0}, Lcn/sharesdk/framework/f;->b(Lcn/sharesdk/framework/f;)Lcn/sharesdk/framework/d;

    move-result-object v1

    iget v2, p0, Lcn/sharesdk/framework/f$4;->a:I

    invoke-static {v0, v1, v2}, Lcn/sharesdk/framework/f;->a(Lcn/sharesdk/framework/f;Lcn/sharesdk/framework/d;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    goto/16 :goto_1

    .line 404
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/mob/MobSDK;->isAuth()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    .line 425
    iget-object v1, p0, Lcn/sharesdk/framework/f$4;->c:Lcn/sharesdk/framework/f;

    invoke-static {v1}, Lcn/sharesdk/framework/f;->b(Lcn/sharesdk/framework/f;)Lcn/sharesdk/framework/d;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 426
    iget-object v1, p0, Lcn/sharesdk/framework/f$4;->c:Lcn/sharesdk/framework/f;

    invoke-static {v1}, Lcn/sharesdk/framework/f;->b(Lcn/sharesdk/framework/f;)Lcn/sharesdk/framework/d;

    move-result-object v1

    iget-object v2, p0, Lcn/sharesdk/framework/f$4;->c:Lcn/sharesdk/framework/f;

    invoke-static {v2}, Lcn/sharesdk/framework/f;->a(Lcn/sharesdk/framework/f;)Lcn/sharesdk/framework/Platform;

    move-result-object v2

    iget v3, p0, Lcn/sharesdk/framework/f$4;->a:I

    new-instance v4, Lcom/mob/commons/dialog/PolicyThrowable;

    invoke-direct {v4}, Lcom/mob/commons/dialog/PolicyThrowable;-><init>()V

    invoke-virtual {v1, v2, v3, v4}, Lcn/sharesdk/framework/d;->onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V

    goto/16 :goto_1

    .line 409
    :cond_1
    invoke-static {}, Lcn/sharesdk/framework/a;->a()Z

    move-result v1

    if-nez v1, :cond_2

    .line 410
    iget-object v1, p0, Lcn/sharesdk/framework/f$4;->c:Lcn/sharesdk/framework/f;

    invoke-static {v1}, Lcn/sharesdk/framework/f;->b(Lcn/sharesdk/framework/f;)Lcn/sharesdk/framework/d;

    move-result-object v2

    iget v3, p0, Lcn/sharesdk/framework/f$4;->a:I

    invoke-static {v1, v2, v3}, Lcn/sharesdk/framework/f;->b(Lcn/sharesdk/framework/f;Lcn/sharesdk/framework/d;I)V

    goto/16 :goto_1

    .line 412
    :cond_2
    iget-object v1, p0, Lcn/sharesdk/framework/f$4;->c:Lcn/sharesdk/framework/f;

    invoke-static {v1}, Lcn/sharesdk/framework/f;->a(Lcn/sharesdk/framework/f;)Lcn/sharesdk/framework/Platform;

    move-result-object v1

    iget v2, p0, Lcn/sharesdk/framework/f$4;->a:I

    iget-object v3, p0, Lcn/sharesdk/framework/f$4;->b:Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Lcn/sharesdk/framework/Platform;->checkAuthorize(ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 413
    iget-object v1, p0, Lcn/sharesdk/framework/f$4;->c:Lcn/sharesdk/framework/f;

    iget v2, p0, Lcn/sharesdk/framework/f$4;->a:I

    iget-object v3, p0, Lcn/sharesdk/framework/f$4;->b:Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Lcn/sharesdk/framework/f;->b(ILjava/lang/Object;)V

    .line 415
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcom/mob/tools/log/NLog;

    move-result-object v1

    const-string v2, "The user is using the privacy version without a popup newThreadJob 002"

    invoke-virtual {v1, v2}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 434
    :catchall_0
    :try_start_2
    invoke-static {}, Lcn/sharesdk/framework/ProvicyCanContinue;->a()Lcn/sharesdk/framework/ProvicyCanContinue;

    move-result-object v1

    new-instance v2, Lcn/sharesdk/framework/f$4$1;

    invoke-direct {v2, p0}, Lcn/sharesdk/framework/f$4$1;-><init>(Lcn/sharesdk/framework/f$4;)V

    invoke-virtual {v1, v2}, Lcn/sharesdk/framework/ProvicyCanContinue;->a(Lcn/sharesdk/framework/ProvicyCanContinue$OnBusinessListener;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v1

    .line 464
    :try_start_3
    invoke-static {}, Lcn/sharesdk/framework/a;->a()Z

    move-result v2

    if-nez v2, :cond_3

    .line 465
    iget-object v2, p0, Lcn/sharesdk/framework/f$4;->c:Lcn/sharesdk/framework/f;

    invoke-static {v2}, Lcn/sharesdk/framework/f;->b(Lcn/sharesdk/framework/f;)Lcn/sharesdk/framework/d;

    move-result-object v3

    iget v4, p0, Lcn/sharesdk/framework/f$4;->a:I

    invoke-static {v2, v3, v4}, Lcn/sharesdk/framework/f;->b(Lcn/sharesdk/framework/f;Lcn/sharesdk/framework/d;I)V

    goto :goto_0

    .line 467
    :cond_3
    iget-object v2, p0, Lcn/sharesdk/framework/f$4;->c:Lcn/sharesdk/framework/f;

    invoke-static {v2}, Lcn/sharesdk/framework/f;->a(Lcn/sharesdk/framework/f;)Lcn/sharesdk/framework/Platform;

    move-result-object v2

    iget v3, p0, Lcn/sharesdk/framework/f$4;->a:I

    iget-object v4, p0, Lcn/sharesdk/framework/f$4;->b:Ljava/lang/Object;

    invoke-virtual {v2, v3, v4}, Lcn/sharesdk/framework/Platform;->checkAuthorize(ILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 468
    iget-object v2, p0, Lcn/sharesdk/framework/f$4;->c:Lcn/sharesdk/framework/f;

    iget v3, p0, Lcn/sharesdk/framework/f$4;->a:I

    iget-object v4, p0, Lcn/sharesdk/framework/f$4;->b:Ljava/lang/Object;

    invoke-virtual {v2, v3, v4}, Lcn/sharesdk/framework/f;->b(ILjava/lang/Object;)V

    .line 472
    :cond_4
    :goto_0
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcom/mob/tools/log/NLog;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception v0

    .line 478
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcom/mob/tools/log/NLog;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "new Thread(getThreadName(action)) "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v0, v2}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    :cond_5
    :goto_1
    return-void
.end method
