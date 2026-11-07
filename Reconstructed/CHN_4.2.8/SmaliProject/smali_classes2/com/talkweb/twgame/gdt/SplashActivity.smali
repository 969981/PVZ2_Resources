.class public Lcom/talkweb/twgame/gdt/SplashActivity;
.super Landroid/app/Activity;
.source "SplashActivity.java"

# interfaces
.implements Lcom/qq/e/ads/splash/SplashADListener;


# static fields
.field private static final SKIP_TEXT:Ljava/lang/String; = "\u70b9\u51fb\u8df3\u8fc7 %d"

.field public static posId:Ljava/lang/String;


# instance fields
.field public canJump:Z

.field private container:Landroid/view/ViewGroup;

.field private fetchSplashADTime:J

.field private handler:Landroid/os/Handler;

.field private minSplashTimeWhenNoAD:I

.field private splashAD:Lcom/qq/e/ads/splash/SplashAD;

.field private splashHolder:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 31
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x0

    .line 39
    iput-boolean v0, p0, Lcom/talkweb/twgame/gdt/SplashActivity;->canJump:Z

    const/16 v0, 0x7d0

    .line 47
    iput v0, p0, Lcom/talkweb/twgame/gdt/SplashActivity;->minSplashTimeWhenNoAD:I

    const-wide/16 v0, 0x0

    .line 51
    iput-wide v0, p0, Lcom/talkweb/twgame/gdt/SplashActivity;->fetchSplashADTime:J

    .line 52
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/talkweb/twgame/gdt/SplashActivity;->handler:Landroid/os/Handler;

    return-void
.end method

.method private checkAndRequestPermission(Landroid/app/Activity;)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "activity"
        }
    .end annotation

    .line 135
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "android.permission.READ_PHONE_STATE"

    .line 136
    invoke-static {p1, v1}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_0

    .line 137
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 140
    invoke-static {p1, v1}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_1

    .line 141
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    const-string v1, "android.permission.ACCESS_FINE_LOCATION"

    .line 144
    invoke-static {p1, v1}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_2

    .line 145
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 149
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_3

    .line 150
    iget-object v4, p0, Lcom/talkweb/twgame/gdt/SplashActivity;->container:Landroid/view/ViewGroup;

    sget-object v5, Lcom/talkweb/twgame/gdt/SplashActivity;->posId:Ljava/lang/String;

    const/4 v7, 0x0

    move-object v2, p0

    move-object v3, p0

    move-object v6, p0

    invoke-direct/range {v2 .. v7}, Lcom/talkweb/twgame/gdt/SplashActivity;->fetchSplashAD(Landroid/app/Activity;Landroid/view/ViewGroup;Ljava/lang/String;Lcom/qq/e/ads/splash/SplashADListener;I)V

    goto :goto_0

    .line 153
    :cond_3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    .line 154
    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    const/16 v0, 0x400

    .line 155
    invoke-static {p1, v1, v0}, Landroidx/core/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    :goto_0
    return-void
.end method

.method private fetchSplashAD(Landroid/app/Activity;Landroid/view/ViewGroup;Ljava/lang/String;Lcom/qq/e/ads/splash/SplashADListener;I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "activity",
            "adContainer",
            "posId",
            "adListener",
            "fetchDelay"
        }
    .end annotation

    .line 169
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/talkweb/twgame/gdt/SplashActivity;->fetchSplashADTime:J

    .line 171
    new-instance p2, Lcom/qq/e/ads/splash/SplashAD;

    invoke-direct {p2, p1, p3, p4, p5}, Lcom/qq/e/ads/splash/SplashAD;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/qq/e/ads/splash/SplashADListener;I)V

    iput-object p2, p0, Lcom/talkweb/twgame/gdt/SplashActivity;->splashAD:Lcom/qq/e/ads/splash/SplashAD;

    .line 172
    invoke-virtual {p2}, Lcom/qq/e/ads/splash/SplashAD;->fetchAdOnly()V

    return-void
.end method

.method private hasAllPermissionsGranted([I)Z
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "grantResults"
        }
    .end annotation

    .line 160
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget v3, p1, v2

    const/4 v4, -0x1

    if-ne v3, v4, :cond_0

    return v1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method private next()V
    .locals 1

    .line 191
    iget-boolean v0, p0, Lcom/talkweb/twgame/gdt/SplashActivity;->canJump:Z

    if-eqz v0, :cond_0

    .line 193
    invoke-virtual {p0}, Lcom/talkweb/twgame/gdt/SplashActivity;->finish()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 195
    iput-boolean v0, p0, Lcom/talkweb/twgame/gdt/SplashActivity;->canJump:Z

    :goto_0
    return-void
.end method


# virtual methods
.method public onADClicked()V
    .locals 0

    return-void
.end method

.method public onADDismissed()V
    .locals 1

    const-string v0, "SplashADDismissed"

    .line 79
    invoke-static {v0}, Lcom/talkweb/twgame/tools/LogUtils;->i(Ljava/lang/String;)V

    .line 80
    invoke-direct {p0}, Lcom/talkweb/twgame/gdt/SplashActivity;->next()V

    return-void
.end method

.method public onADExposure()V
    .locals 1

    const-string v0, "SplashADExposure"

    .line 126
    invoke-static {v0}, Lcom/talkweb/twgame/tools/LogUtils;->i(Ljava/lang/String;)V

    return-void
.end method

.method public onADLoaded(J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "l"
        }
    .end annotation

    const-string p1, "onADLoaded"

    .line 131
    invoke-static {p1}, Lcom/talkweb/twgame/tools/LogUtils;->d(Ljava/lang/String;)V

    return-void
.end method

.method public onADPresent()V
    .locals 2

    const-string v0, "AD_DEMO"

    const-string v1, "SplashADPresent"

    .line 109
    invoke-static {v0, v1}, Lcom/talkweb/twgame/tools/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onADTick(J)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "l"
        }
    .end annotation

    .line 121
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SplashADTick "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "ms"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/talkweb/twgame/tools/LogUtils;->i(Ljava/lang/String;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "savedInstanceState"
        }
    .end annotation

    .line 57
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const-string p1, "activity_splash"

    .line 58
    invoke-static {p0, p1}, Lcom/talkweb/twgame/tools/Resource;->getLayout(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/talkweb/twgame/gdt/SplashActivity;->setContentView(I)V

    const-string p1, "splash_container"

    .line 59
    invoke-static {p0, p1}, Lcom/talkweb/twgame/tools/Resource;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/talkweb/twgame/gdt/SplashActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lcom/talkweb/twgame/gdt/SplashActivity;->container:Landroid/view/ViewGroup;

    const-string p1, "splash_holder"

    .line 60
    invoke-static {p0, p1}, Lcom/talkweb/twgame/tools/Resource;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/talkweb/twgame/gdt/SplashActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/talkweb/twgame/gdt/SplashActivity;->splashHolder:Landroid/widget/ImageView;

    .line 61
    invoke-virtual {p0}, Lcom/talkweb/twgame/gdt/SplashActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "need_logo"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 67
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x17

    if-lt p1, v0, :cond_0

    .line 68
    invoke-direct {p0, p0}, Lcom/talkweb/twgame/gdt/SplashActivity;->checkAndRequestPermission(Landroid/app/Activity;)V

    goto :goto_0

    .line 71
    :cond_0
    iget-object v3, p0, Lcom/talkweb/twgame/gdt/SplashActivity;->container:Landroid/view/ViewGroup;

    sget-object v4, Lcom/talkweb/twgame/gdt/SplashActivity;->posId:Ljava/lang/String;

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p0

    move-object v5, p0

    invoke-direct/range {v1 .. v6}, Lcom/talkweb/twgame/gdt/SplashActivity;->fetchSplashAD(Landroid/app/Activity;Landroid/view/ViewGroup;Ljava/lang/String;Lcom/qq/e/ads/splash/SplashADListener;I)V

    :goto_0
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 225
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 226
    iget-object v0, p0, Lcom/talkweb/twgame/gdt/SplashActivity;->handler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "keyCode",
            "event"
        }
    .end annotation

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 207
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public onNoAD(Lcom/qq/e/comm/util/AdError;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "adError"
        }
    .end annotation

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 87
    invoke-virtual {p1}, Lcom/qq/e/comm/util/AdError;->getErrorCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 88
    invoke-virtual {p1}, Lcom/qq/e/comm/util/AdError;->getErrorMsg()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const-string p1, "LoadSplashADFail, eCode=%d, errorMsg=%s"

    .line 87
    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "AD_DEMO"

    .line 85
    invoke-static {v0, p1}, Lcom/talkweb/twgame/tools/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/talkweb/twgame/gdt/SplashActivity;->fetchSplashADTime:J

    sub-long/2addr v0, v2

    .line 95
    iget p1, p0, Lcom/talkweb/twgame/gdt/SplashActivity;->minSplashTimeWhenNoAD:I

    int-to-long v2, p1

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_0
    int-to-long v2, p1

    sub-long v0, v2, v0

    .line 98
    :goto_0
    iget-object p1, p0, Lcom/talkweb/twgame/gdt/SplashActivity;->handler:Landroid/os/Handler;

    new-instance v2, Lcom/talkweb/twgame/gdt/SplashActivity$1;

    invoke-direct {v2, p0}, Lcom/talkweb/twgame/gdt/SplashActivity$1;-><init>(Lcom/talkweb/twgame/gdt/SplashActivity;)V

    invoke-virtual {p1, v2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method protected onPause()V
    .locals 1

    .line 212
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    const/4 v0, 0x0

    .line 213
    iput-boolean v0, p0, Lcom/talkweb/twgame/gdt/SplashActivity;->canJump:Z

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "requestCode",
            "permissions",
            "grantResults"
        }
    .end annotation

    .line 177
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    const/16 p2, 0x400

    if-ne p1, p2, :cond_0

    .line 178
    invoke-direct {p0, p3}, Lcom/talkweb/twgame/gdt/SplashActivity;->hasAllPermissionsGranted([I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 179
    iget-object v2, p0, Lcom/talkweb/twgame/gdt/SplashActivity;->container:Landroid/view/ViewGroup;

    sget-object v3, Lcom/talkweb/twgame/gdt/SplashActivity;->posId:Ljava/lang/String;

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p0

    move-object v4, p0

    invoke-direct/range {v0 .. v5}, Lcom/talkweb/twgame/gdt/SplashActivity;->fetchSplashAD(Landroid/app/Activity;Landroid/view/ViewGroup;Ljava/lang/String;Lcom/qq/e/ads/splash/SplashADListener;I)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    const-string p2, "\u5e94\u7528\u7f3a\u5c11\u5fc5\u8981\u7684\u6743\u9650\uff01\u8bf7\u70b9\u51fb\"\u6743\u9650\"\uff0c\u6253\u5f00\u6240\u9700\u8981\u7684\u6743\u9650\u3002"

    .line 182
    invoke-static {p0, p2, p1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 183
    new-instance p1, Landroid/content/Intent;

    const-string p2, "android.settings.APPLICATION_DETAILS_SETTINGS"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 184
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "package:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p0}, Lcom/talkweb/twgame/gdt/SplashActivity;->getPackageName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 185
    invoke-virtual {p0, p1}, Lcom/talkweb/twgame/gdt/SplashActivity;->startActivity(Landroid/content/Intent;)V

    .line 186
    invoke-virtual {p0}, Lcom/talkweb/twgame/gdt/SplashActivity;->finish()V

    :goto_0
    return-void
.end method

.method protected onResume()V
    .locals 1

    .line 217
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 218
    iget-boolean v0, p0, Lcom/talkweb/twgame/gdt/SplashActivity;->canJump:Z

    if-eqz v0, :cond_0

    .line 219
    invoke-direct {p0}, Lcom/talkweb/twgame/gdt/SplashActivity;->next()V

    :cond_0
    const/4 v0, 0x1

    .line 221
    iput-boolean v0, p0, Lcom/talkweb/twgame/gdt/SplashActivity;->canJump:Z

    return-void
.end method
