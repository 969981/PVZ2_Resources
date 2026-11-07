.class public Lcn/sharesdk/douyin/bdopen/DouYinHandlerActivity;
.super Landroid/app/Activity;
.source "DouYinHandlerActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 18
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcom/mob/tools/log/NLog;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "douyin callback Start"

    invoke-virtual {v0, v3, v2}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    const v0, 0x103000f

    .line 19
    invoke-virtual {p0, v0}, Lcn/sharesdk/douyin/bdopen/DouYinHandlerActivity;->setTheme(I)V

    .line 24
    :try_start_0
    invoke-virtual {p0}, Lcn/sharesdk/douyin/bdopen/DouYinHandlerActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v2, -0x80000000

    invoke-virtual {v0, v2}, Landroid/view/Window;->addFlags(I)V

    .line 25
    invoke-virtual {p0}, Lcn/sharesdk/douyin/bdopen/DouYinHandlerActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 27
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 28
    invoke-virtual {p0}, Lcn/sharesdk/douyin/bdopen/DouYinHandlerActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    .line 29
    invoke-static {}, Lcn/sharesdk/douyin/c;->a()Lcn/sharesdk/douyin/c;

    move-result-object v0

    .line 30
    invoke-virtual {v0, p1}, Lcn/sharesdk/douyin/c;->a(Landroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 32
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcom/mob/tools/log/NLog;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    .line 34
    :goto_0
    invoke-virtual {p0}, Lcn/sharesdk/douyin/bdopen/DouYinHandlerActivity;->finish()V

    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 3

    .line 46
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcom/mob/tools/log/NLog;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "douyin callback"

    invoke-virtual {v0, v2, v1}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 47
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 48
    invoke-virtual {p0, p1}, Lcn/sharesdk/douyin/bdopen/DouYinHandlerActivity;->setIntent(Landroid/content/Intent;)V

    .line 50
    :try_start_0
    invoke-virtual {p0}, Lcn/sharesdk/douyin/bdopen/DouYinHandlerActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    .line 51
    invoke-static {}, Lcn/sharesdk/douyin/c;->a()Lcn/sharesdk/douyin/c;

    move-result-object v0

    .line 52
    invoke-virtual {v0, p1}, Lcn/sharesdk/douyin/c;->a(Landroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 54
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcom/mob/tools/log/NLog;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    .line 56
    :goto_0
    invoke-virtual {p0}, Lcn/sharesdk/douyin/bdopen/DouYinHandlerActivity;->finish()V

    return-void
.end method

.method public setRequestedOrientation(I)V
    .locals 2

    .line 39
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-ne v0, v1, :cond_0

    return-void

    .line 42
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    return-void
.end method
