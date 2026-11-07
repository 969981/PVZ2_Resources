.class public Lcom/tencent/connect/auth/AuthDialog;
.super Landroid/app/Dialog;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/connect/auth/AuthDialog$TimeOutRunable;,
        Lcom/tencent/connect/auth/AuthDialog$LoginWebViewClient;,
        Lcom/tencent/connect/auth/AuthDialog$OnTimeListener;,
        Lcom/tencent/connect/auth/AuthDialog$THandler;
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Lcom/tencent/connect/auth/AuthDialog$OnTimeListener;

.field private c:Lcom/tencent/tauth/IUiListener;

.field private d:Landroid/os/Handler;

.field private e:Landroid/widget/FrameLayout;

.field private f:Landroid/widget/LinearLayout;

.field private g:Landroid/widget/FrameLayout;

.field private h:Landroid/widget/ProgressBar;

.field private i:Ljava/lang/String;

.field private j:Lcom/tencent/open/c/c;

.field private k:Landroid/content/Context;

.field private l:Lcom/tencent/open/web/security/b;

.field private m:Z

.field private n:I

.field private o:Ljava/lang/String;

.field private p:Ljava/lang/String;

.field private q:J

.field private r:J

.field private s:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 76
    const-string v0, "/"

    const-string v1, "openSDK_LOG.AuthDialog"

    const-string v2, "-->load lib success:"

    const-string v3, "-->fail, because so is not exists:"

    const-string v4, "-->load lib fail, because context is null:"

    :try_start_0
    invoke-static {}, Lcom/tencent/open/utils/Global;->getContext()Landroid/content/Context;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 78
    new-instance v4, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/tencent/connect/auth/AuthAgent;->SECURE_LIB_NAME:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 79
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 80
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v3, Lcom/tencent/connect/auth/AuthAgent;->SECURE_LIB_NAME:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/System;->load(Ljava/lang/String;)V

    .line 81
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/tencent/connect/auth/AuthAgent;->SECURE_LIB_NAME:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/open/a/f;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 83
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/tencent/connect/auth/AuthAgent;->SECURE_LIB_NAME:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/open/a/f;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 86
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/tencent/connect/auth/AuthAgent;->SECURE_LIB_NAME:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/open/a/f;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 89
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "-->load lib error:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/tencent/connect/auth/AuthAgent;->SECURE_LIB_NAME:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/tencent/open/a/f;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/tencent/tauth/IUiListener;Lcom/tencent/connect/auth/QQToken;)V
    .locals 8

    const v0, 0x1030010

    .line 128
    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    const/4 v0, 0x0

    .line 115
    iput-boolean v0, p0, Lcom/tencent/connect/auth/AuthDialog;->m:Z

    const-wide/16 v0, 0x0

    .line 122
    iput-wide v0, p0, Lcom/tencent/connect/auth/AuthDialog;->q:J

    const-wide/16 v0, 0x7530

    .line 124
    iput-wide v0, p0, Lcom/tencent/connect/auth/AuthDialog;->r:J

    .line 129
    iput-object p1, p0, Lcom/tencent/connect/auth/AuthDialog;->k:Landroid/content/Context;

    .line 130
    iput-object p3, p0, Lcom/tencent/connect/auth/AuthDialog;->a:Ljava/lang/String;

    .line 131
    new-instance v0, Lcom/tencent/connect/auth/AuthDialog$OnTimeListener;

    invoke-virtual {p5}, Lcom/tencent/connect/auth/QQToken;->getAppId()Ljava/lang/String;

    move-result-object v6

    move-object v2, v0

    move-object v3, p0

    move-object v4, p2

    move-object v5, p3

    move-object v7, p4

    invoke-direct/range {v2 .. v7}, Lcom/tencent/connect/auth/AuthDialog$OnTimeListener;-><init>(Lcom/tencent/connect/auth/AuthDialog;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/tencent/tauth/IUiListener;)V

    iput-object v0, p0, Lcom/tencent/connect/auth/AuthDialog;->b:Lcom/tencent/connect/auth/AuthDialog$OnTimeListener;

    .line 132
    new-instance p3, Lcom/tencent/connect/auth/AuthDialog$THandler;

    iget-object p5, p0, Lcom/tencent/connect/auth/AuthDialog;->b:Lcom/tencent/connect/auth/AuthDialog$OnTimeListener;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {p3, p0, p5, p1}, Lcom/tencent/connect/auth/AuthDialog$THandler;-><init>(Lcom/tencent/connect/auth/AuthDialog;Lcom/tencent/connect/auth/AuthDialog$OnTimeListener;Landroid/os/Looper;)V

    iput-object p3, p0, Lcom/tencent/connect/auth/AuthDialog;->d:Landroid/os/Handler;

    .line 133
    iput-object p4, p0, Lcom/tencent/connect/auth/AuthDialog;->c:Lcom/tencent/tauth/IUiListener;

    .line 134
    iput-object p2, p0, Lcom/tencent/connect/auth/AuthDialog;->i:Ljava/lang/String;

    .line 135
    new-instance p1, Lcom/tencent/open/web/security/b;

    invoke-direct {p1}, Lcom/tencent/open/web/security/b;-><init>()V

    iput-object p1, p0, Lcom/tencent/connect/auth/AuthDialog;->l:Lcom/tencent/open/web/security/b;

    .line 137
    invoke-virtual {p0}, Lcom/tencent/connect/auth/AuthDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 p2, 0x20

    invoke-virtual {p1, p2}, Landroid/view/Window;->setSoftInputMode(I)V

    return-void
.end method

.method static synthetic a(Lcom/tencent/connect/auth/AuthDialog;J)J
    .locals 0

    .line 61
    iput-wide p1, p0, Lcom/tencent/connect/auth/AuthDialog;->q:J

    return-wide p1
.end method

.method static synthetic a(Lcom/tencent/connect/auth/AuthDialog;)Landroid/content/Context;
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/tencent/connect/auth/AuthDialog;->k:Landroid/content/Context;

    return-object p0
.end method

.method private a()Ljava/lang/String;
    .locals 3

    .line 467
    iget-object v0, p0, Lcom/tencent/connect/auth/AuthDialog;->a:Ljava/lang/String;

    const-string v1, "?"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 468
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "http://qzs.qq.com/open/mobile/login/qzsjump.html?"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 469
    const-string v1, "openSDK_LOG.AuthDialog"

    const-string v2, "-->generateDownloadUrl, url: http://qzs.qq.com/open/mobile/login/qzsjump.html?"

    invoke-static {v1, v2}, Lcom/tencent/open/a/f;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method static synthetic a(Lcom/tencent/connect/auth/AuthDialog;Ljava/lang/Object;)Ljava/lang/String;
    .locals 2

    .line 61
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/tencent/connect/auth/AuthDialog;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/connect/auth/AuthDialog;->a:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic a(Lcom/tencent/connect/auth/AuthDialog;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 61
    invoke-direct {p0, p1}, Lcom/tencent/connect/auth/AuthDialog;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private a(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 254
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 255
    iget-object p1, p0, Lcom/tencent/connect/auth/AuthDialog;->p:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/tencent/connect/auth/AuthDialog;->p:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    const/4 v1, 0x4

    if-lt p1, v1, :cond_0

    .line 256
    iget-object p1, p0, Lcom/tencent/connect/auth/AuthDialog;->p:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v2, v1

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 261
    const-string v1, "_u_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 264
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method static synthetic a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 61
    invoke-static {p0, p1}, Lcom/tencent/connect/auth/AuthDialog;->b(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/tencent/connect/auth/AuthDialog;Z)Z
    .locals 0

    .line 61
    iput-boolean p1, p0, Lcom/tencent/connect/auth/AuthDialog;->m:Z

    return p1
.end method

.method static synthetic b(Lcom/tencent/connect/auth/AuthDialog;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 61
    iput-object p1, p0, Lcom/tencent/connect/auth/AuthDialog;->p:Ljava/lang/String;

    return-object p1
.end method

.method private b()V
    .locals 3

    .line 474
    invoke-direct {p0}, Lcom/tencent/connect/auth/AuthDialog;->c()V

    .line 475
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 478
    new-instance v1, Lcom/tencent/open/c/c;

    iget-object v2, p0, Lcom/tencent/connect/auth/AuthDialog;->k:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/tencent/open/c/c;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/tencent/connect/auth/AuthDialog;->j:Lcom/tencent/open/c/c;

    .line 479
    invoke-virtual {v1, v0}, Lcom/tencent/open/c/c;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 481
    new-instance v1, Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/tencent/connect/auth/AuthDialog;->k:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/tencent/connect/auth/AuthDialog;->e:Landroid/widget/FrameLayout;

    const/16 v1, 0x11

    .line 482
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 483
    iget-object v1, p0, Lcom/tencent/connect/auth/AuthDialog;->e:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 485
    iget-object v0, p0, Lcom/tencent/connect/auth/AuthDialog;->e:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/tencent/connect/auth/AuthDialog;->j:Lcom/tencent/open/c/c;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 486
    iget-object v0, p0, Lcom/tencent/connect/auth/AuthDialog;->e:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/tencent/connect/auth/AuthDialog;->g:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 488
    iget-object v0, p0, Lcom/tencent/connect/auth/AuthDialog;->e:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v0}, Lcom/tencent/connect/auth/AuthDialog;->setContentView(Landroid/view/View;)V

    return-void
.end method

.method private static b(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .line 639
    :try_start_0
    invoke-static {p1}, Lcom/tencent/open/utils/Util;->parseJson(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    .line 640
    const-string v0, "type"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 642
    const-string v1, "msg"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 643
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    .line 644
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 646
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method static synthetic b(Lcom/tencent/connect/auth/AuthDialog;)Z
    .locals 0

    .line 61
    invoke-direct {p0}, Lcom/tencent/connect/auth/AuthDialog;->e()Z

    move-result p0

    return p0
.end method

.method static synthetic c(Lcom/tencent/connect/auth/AuthDialog;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 61
    iput-object p1, p0, Lcom/tencent/connect/auth/AuthDialog;->o:Ljava/lang/String;

    return-object p1
.end method

.method private c()V
    .locals 5

    .line 492
    new-instance v0, Landroid/widget/ProgressBar;

    iget-object v1, p0, Lcom/tencent/connect/auth/AuthDialog;->k:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/tencent/connect/auth/AuthDialog;->h:Landroid/widget/ProgressBar;

    .line 493
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 496
    iget-object v2, p0, Lcom/tencent/connect/auth/AuthDialog;->h:Landroid/widget/ProgressBar;

    invoke-virtual {v2, v0}, Landroid/widget/ProgressBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 497
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/tencent/connect/auth/AuthDialog;->k:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/tencent/connect/auth/AuthDialog;->f:Landroid/widget/LinearLayout;

    .line 499
    iget-object v0, p0, Lcom/tencent/connect/auth/AuthDialog;->i:Ljava/lang/String;

    const-string v2, "action_login"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 500
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v2, 0x10

    .line 503
    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    const/4 v2, 0x5

    .line 504
    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 505
    new-instance v2, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/tencent/connect/auth/AuthDialog;->k:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 506
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    .line 507
    const-string v4, "zh"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 508
    const-string v3, "\u767b\u5f55\u4e2d..."

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 510
    :cond_0
    const-string v3, "Logging in..."

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    const/16 v3, 0xff

    .line 512
    invoke-static {v3, v3, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v3, 0x41900000    # 18.0f

    .line 513
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextSize(F)V

    .line 514
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    .line 517
    :goto_1
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v3, 0x11

    .line 520
    iput v3, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 521
    iget-object v4, p0, Lcom/tencent/connect/auth/AuthDialog;->f:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 522
    iget-object v0, p0, Lcom/tencent/connect/auth/AuthDialog;->f:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/tencent/connect/auth/AuthDialog;->h:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    if-eqz v2, :cond_2

    .line 524
    iget-object v0, p0, Lcom/tencent/connect/auth/AuthDialog;->f:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 526
    :cond_2
    new-instance v0, Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/tencent/connect/auth/AuthDialog;->k:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/tencent/connect/auth/AuthDialog;->g:Landroid/widget/FrameLayout;

    .line 527
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v0, v2, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0x50

    .line 530
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 531
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    const/16 v1, 0x28

    .line 532
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 533
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 534
    iput v3, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 535
    iget-object v1, p0, Lcom/tencent/connect/auth/AuthDialog;->g:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 536
    iget-object v0, p0, Lcom/tencent/connect/auth/AuthDialog;->g:Landroid/widget/FrameLayout;

    const/high16 v1, 0x1080000

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    .line 537
    iget-object v0, p0, Lcom/tencent/connect/auth/AuthDialog;->g:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/tencent/connect/auth/AuthDialog;->f:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method static synthetic c(Lcom/tencent/connect/auth/AuthDialog;)Z
    .locals 0

    .line 61
    iget-boolean p0, p0, Lcom/tencent/connect/auth/AuthDialog;->m:Z

    return p0
.end method

.method static synthetic d(Lcom/tencent/connect/auth/AuthDialog;)Ljava/lang/String;
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/tencent/connect/auth/AuthDialog;->a:Ljava/lang/String;

    return-object p0
.end method

.method private d()V
    .locals 5

    .line 545
    iget-object v0, p0, Lcom/tencent/connect/auth/AuthDialog;->j:Lcom/tencent/open/c/c;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/tencent/open/c/c;->setVerticalScrollBarEnabled(Z)V

    .line 546
    iget-object v0, p0, Lcom/tencent/connect/auth/AuthDialog;->j:Lcom/tencent/open/c/c;

    invoke-virtual {v0, v1}, Lcom/tencent/open/c/c;->setHorizontalScrollBarEnabled(Z)V

    .line 547
    iget-object v0, p0, Lcom/tencent/connect/auth/AuthDialog;->j:Lcom/tencent/open/c/c;

    new-instance v2, Lcom/tencent/connect/auth/AuthDialog$LoginWebViewClient;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/tencent/connect/auth/AuthDialog$LoginWebViewClient;-><init>(Lcom/tencent/connect/auth/AuthDialog;Lcom/tencent/connect/auth/AuthDialog$1;)V

    invoke-virtual {v0, v2}, Lcom/tencent/open/c/c;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 548
    iget-object v0, p0, Lcom/tencent/connect/auth/AuthDialog;->j:Lcom/tencent/open/c/c;

    new-instance v2, Landroid/webkit/WebChromeClient;

    invoke-direct {v2}, Landroid/webkit/WebChromeClient;-><init>()V

    invoke-virtual {v0, v2}, Lcom/tencent/open/c/c;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 549
    iget-object v0, p0, Lcom/tencent/connect/auth/AuthDialog;->j:Lcom/tencent/open/c/c;

    invoke-virtual {v0}, Lcom/tencent/open/c/c;->clearFormData()V

    .line 552
    iget-object v0, p0, Lcom/tencent/connect/auth/AuthDialog;->j:Lcom/tencent/open/c/c;

    invoke-virtual {v0}, Lcom/tencent/open/c/c;->clearSslPreferences()V

    .line 553
    iget-object v0, p0, Lcom/tencent/connect/auth/AuthDialog;->j:Lcom/tencent/open/c/c;

    new-instance v2, Lcom/tencent/connect/auth/AuthDialog$1;

    invoke-direct {v2, p0}, Lcom/tencent/connect/auth/AuthDialog$1;-><init>(Lcom/tencent/connect/auth/AuthDialog;)V

    invoke-virtual {v0, v2}, Lcom/tencent/open/c/c;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 561
    iget-object v0, p0, Lcom/tencent/connect/auth/AuthDialog;->j:Lcom/tencent/open/c/c;

    new-instance v2, Lcom/tencent/connect/auth/AuthDialog$2;

    invoke-direct {v2, p0}, Lcom/tencent/connect/auth/AuthDialog$2;-><init>(Lcom/tencent/connect/auth/AuthDialog;)V

    invoke-virtual {v0, v2}, Lcom/tencent/open/c/c;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 578
    iget-object v0, p0, Lcom/tencent/connect/auth/AuthDialog;->j:Lcom/tencent/open/c/c;

    invoke-virtual {v0}, Lcom/tencent/open/c/c;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    .line 579
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setSavePassword(Z)V

    .line 580
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setSaveFormData(Z)V

    const/4 v2, -0x1

    .line 582
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    .line 585
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setNeedInitialFocus(Z)V

    const/4 v2, 0x1

    .line 586
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 587
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 589
    sget-object v3, Landroid/webkit/WebSettings$RenderPriority;->HIGH:Landroid/webkit/WebSettings$RenderPriority;

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setRenderPriority(Landroid/webkit/WebSettings$RenderPriority;)V

    .line 590
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 592
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setDatabaseEnabled(Z)V

    .line 593
    iget-object v3, p0, Lcom/tencent/connect/auth/AuthDialog;->k:Landroid/content/Context;

    const-string v4, "databases"

    invoke-virtual {v3, v4, v1}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setDatabasePath(Ljava/lang/String;)V

    .line 595
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 597
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "-->mUrl : "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/tencent/connect/auth/AuthDialog;->a:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "openSDK_LOG.AuthDialog"

    invoke-static {v2, v0}, Lcom/tencent/open/a/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 598
    iget-object v0, p0, Lcom/tencent/connect/auth/AuthDialog;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/connect/auth/AuthDialog;->o:Ljava/lang/String;

    .line 599
    iget-object v2, p0, Lcom/tencent/connect/auth/AuthDialog;->j:Lcom/tencent/open/c/c;

    invoke-virtual {v2, v0}, Lcom/tencent/open/c/c;->loadUrl(Ljava/lang/String;)V

    .line 600
    iget-object v0, p0, Lcom/tencent/connect/auth/AuthDialog;->j:Lcom/tencent/open/c/c;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Lcom/tencent/open/c/c;->setVisibility(I)V

    .line 601
    iget-object v0, p0, Lcom/tencent/connect/auth/AuthDialog;->j:Lcom/tencent/open/c/c;

    invoke-virtual {v0}, Lcom/tencent/open/c/c;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setSavePassword(Z)V

    .line 603
    iget-object v0, p0, Lcom/tencent/connect/auth/AuthDialog;->l:Lcom/tencent/open/web/security/b;

    new-instance v2, Lcom/tencent/open/web/security/SecureJsInterface;

    invoke-direct {v2}, Lcom/tencent/open/web/security/SecureJsInterface;-><init>()V

    const-string v3, "SecureJsInterface"

    invoke-virtual {v0, v2, v3}, Lcom/tencent/open/web/security/b;->a(Lcom/tencent/open/a$b;Ljava/lang/String;)V

    .line 605
    sput-boolean v1, Lcom/tencent/open/web/security/SecureJsInterface;->isPWDEdit:Z

    .line 607
    new-instance v0, Lcom/tencent/connect/auth/AuthDialog$3;

    invoke-direct {v0, p0}, Lcom/tencent/connect/auth/AuthDialog$3;-><init>(Lcom/tencent/connect/auth/AuthDialog;)V

    invoke-super {p0, v0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    return-void
.end method

.method static synthetic e(Lcom/tencent/connect/auth/AuthDialog;)Lcom/tencent/open/c/c;
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/tencent/connect/auth/AuthDialog;->j:Lcom/tencent/open/c/c;

    return-object p0
.end method

.method private e()Z
    .locals 6

    .line 620
    invoke-static {}, Lcom/tencent/connect/auth/AuthMap;->getInstance()Lcom/tencent/connect/auth/AuthMap;

    move-result-object v0

    .line 621
    invoke-virtual {v0}, Lcom/tencent/connect/auth/AuthMap;->makeKey()Ljava/lang/String;

    move-result-object v1

    .line 622
    new-instance v2, Lcom/tencent/connect/auth/AuthMap$Auth;

    invoke-direct {v2}, Lcom/tencent/connect/auth/AuthMap$Auth;-><init>()V

    .line 623
    iget-object v3, p0, Lcom/tencent/connect/auth/AuthDialog;->c:Lcom/tencent/tauth/IUiListener;

    iput-object v3, v2, Lcom/tencent/connect/auth/AuthMap$Auth;->listener:Lcom/tencent/tauth/IUiListener;

    .line 624
    iput-object p0, v2, Lcom/tencent/connect/auth/AuthMap$Auth;->dialog:Lcom/tencent/connect/auth/AuthDialog;

    .line 625
    iput-object v1, v2, Lcom/tencent/connect/auth/AuthMap$Auth;->key:Ljava/lang/String;

    .line 626
    invoke-virtual {v0, v2}, Lcom/tencent/connect/auth/AuthMap;->set(Lcom/tencent/connect/auth/AuthMap$Auth;)Ljava/lang/String;

    move-result-object v0

    .line 627
    iget-object v2, p0, Lcom/tencent/connect/auth/AuthDialog;->a:Ljava/lang/String;

    const-string v3, "?"

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {v2, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 628
    iget-object v4, p0, Lcom/tencent/connect/auth/AuthDialog;->a:Ljava/lang/String;

    invoke-static {v4}, Lcom/tencent/open/utils/Util;->parseUrl(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    .line 629
    const-string v5, "token_key"

    invoke-virtual {v4, v5, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 630
    const-string v1, "serial"

    invoke-virtual {v4, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 631
    const-string v0, "browser"

    const-string v1, "1"

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 632
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v4}, Lcom/tencent/open/utils/Util;->encodeUrl(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/connect/auth/AuthDialog;->a:Ljava/lang/String;

    .line 633
    iget-object v1, p0, Lcom/tencent/connect/auth/AuthDialog;->k:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/tencent/open/utils/Util;->openBrowser(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic f(Lcom/tencent/connect/auth/AuthDialog;)Lcom/tencent/connect/auth/AuthDialog$OnTimeListener;
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/tencent/connect/auth/AuthDialog;->b:Lcom/tencent/connect/auth/AuthDialog$OnTimeListener;

    return-object p0
.end method

.method static synthetic g(Lcom/tencent/connect/auth/AuthDialog;)Landroid/widget/FrameLayout;
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/tencent/connect/auth/AuthDialog;->g:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static synthetic h(Lcom/tencent/connect/auth/AuthDialog;)Lcom/tencent/open/web/security/b;
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/tencent/connect/auth/AuthDialog;->l:Lcom/tencent/open/web/security/b;

    return-object p0
.end method

.method static synthetic i(Lcom/tencent/connect/auth/AuthDialog;)Ljava/lang/String;
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/tencent/connect/auth/AuthDialog;->o:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic j(Lcom/tencent/connect/auth/AuthDialog;)J
    .locals 2

    .line 61
    iget-wide v0, p0, Lcom/tencent/connect/auth/AuthDialog;->q:J

    return-wide v0
.end method

.method static synthetic k(Lcom/tencent/connect/auth/AuthDialog;)I
    .locals 0

    .line 61
    iget p0, p0, Lcom/tencent/connect/auth/AuthDialog;->n:I

    return p0
.end method

.method static synthetic l(Lcom/tencent/connect/auth/AuthDialog;)J
    .locals 2

    .line 61
    iget-wide v0, p0, Lcom/tencent/connect/auth/AuthDialog;->r:J

    return-wide v0
.end method

.method static synthetic m(Lcom/tencent/connect/auth/AuthDialog;)I
    .locals 2

    .line 61
    iget v0, p0, Lcom/tencent/connect/auth/AuthDialog;->n:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/tencent/connect/auth/AuthDialog;->n:I

    return v0
.end method

.method static synthetic n(Lcom/tencent/connect/auth/AuthDialog;)Landroid/os/Handler;
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/tencent/connect/auth/AuthDialog;->d:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic o(Lcom/tencent/connect/auth/AuthDialog;)Ljava/lang/String;
    .locals 0

    .line 61
    invoke-direct {p0}, Lcom/tencent/connect/auth/AuthDialog;->a()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic p(Lcom/tencent/connect/auth/AuthDialog;)Ljava/util/HashMap;
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/tencent/connect/auth/AuthDialog;->s:Ljava/util/HashMap;

    return-object p0
.end method


# virtual methods
.method public callJs(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 651
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "javascript:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "("

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ");void("

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ");"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 652
    iget-object p2, p0, Lcom/tencent/connect/auth/AuthDialog;->j:Lcom/tencent/open/c/c;

    invoke-virtual {p2, p1}, Lcom/tencent/open/c/c;->loadUrl(Ljava/lang/String;)V

    return-void
.end method

.method public dismiss()V
    .locals 2

    .line 658
    iget-object v0, p0, Lcom/tencent/connect/auth/AuthDialog;->s:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 659
    iget-object v0, p0, Lcom/tencent/connect/auth/AuthDialog;->d:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 660
    invoke-virtual {p0}, Lcom/tencent/connect/auth/AuthDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 661
    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    .line 663
    :cond_0
    iget-object v0, p0, Lcom/tencent/connect/auth/AuthDialog;->j:Lcom/tencent/open/c/c;

    if-eqz v0, :cond_1

    .line 664
    invoke-virtual {v0}, Lcom/tencent/open/c/c;->destroy()V

    .line 665
    iput-object v1, p0, Lcom/tencent/connect/auth/AuthDialog;->j:Lcom/tencent/open/c/c;

    :cond_1
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .line 152
    iget-boolean v0, p0, Lcom/tencent/connect/auth/AuthDialog;->m:Z

    if-nez v0, :cond_0

    .line 153
    iget-object v0, p0, Lcom/tencent/connect/auth/AuthDialog;->b:Lcom/tencent/connect/auth/AuthDialog$OnTimeListener;

    invoke-virtual {v0}, Lcom/tencent/connect/auth/AuthDialog$OnTimeListener;->onCancel()V

    .line 155
    :cond_0
    invoke-super {p0}, Landroid/app/Dialog;->onBackPressed()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    const/4 v0, 0x1

    .line 142
    invoke-virtual {p0, v0}, Lcom/tencent/connect/auth/AuthDialog;->requestWindowFeature(I)Z

    .line 143
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 144
    invoke-direct {p0}, Lcom/tencent/connect/auth/AuthDialog;->b()V

    .line 145
    invoke-direct {p0}, Lcom/tencent/connect/auth/AuthDialog;->d()V

    .line 147
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/tencent/connect/auth/AuthDialog;->s:Ljava/util/HashMap;

    return-void
.end method

.method protected onStop()V
    .locals 0

    .line 160
    invoke-super {p0}, Landroid/app/Dialog;->onStop()V

    return-void
.end method
