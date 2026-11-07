.class public Lcn/sharesdk/framework/f;
.super Ljava/lang/Object;
.source "PlatformImpl.java"


# instance fields
.field private a:Lcn/sharesdk/framework/Platform;

.field private b:Lcn/sharesdk/framework/PlatformDb;

.field private c:Lcn/sharesdk/framework/d;

.field private d:I

.field private e:I

.field private f:Z

.field private g:Z

.field private h:Z


# direct methods
.method public constructor <init>(Lcn/sharesdk/framework/Platform;)V
    .locals 2

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 28
    iput-boolean v0, p0, Lcn/sharesdk/framework/f;->g:Z

    .line 32
    iput-object p1, p0, Lcn/sharesdk/framework/f;->a:Lcn/sharesdk/framework/Platform;

    .line 33
    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform;->getName()Ljava/lang/String;

    move-result-object v0

    .line 34
    new-instance v1, Lcn/sharesdk/framework/PlatformDb;

    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform;->getVersion()I

    move-result p1

    invoke-direct {v1, v0, p1}, Lcn/sharesdk/framework/PlatformDb;-><init>(Ljava/lang/String;I)V

    iput-object v1, p0, Lcn/sharesdk/framework/f;->b:Lcn/sharesdk/framework/PlatformDb;

    .line 35
    invoke-virtual {p0, v0}, Lcn/sharesdk/framework/f;->a(Ljava/lang/String;)V

    .line 36
    new-instance p1, Lcn/sharesdk/framework/d;

    invoke-direct {p1}, Lcn/sharesdk/framework/d;-><init>()V

    iput-object p1, p0, Lcn/sharesdk/framework/f;->c:Lcn/sharesdk/framework/d;

    .line 38
    invoke-static {}, Lcn/sharesdk/framework/c;->a()Lcn/sharesdk/framework/c;

    return-void
.end method

.method static synthetic a(Lcn/sharesdk/framework/f;)Lcn/sharesdk/framework/Platform;
    .locals 0

    .line 21
    iget-object p0, p0, Lcn/sharesdk/framework/f;->a:Lcn/sharesdk/framework/Platform;

    return-object p0
.end method

.method private a(I)Ljava/lang/String;
    .locals 2

    .line 108
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ShareSDK_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcn/sharesdk/framework/f;->a:Lcn/sharesdk/framework/Platform;

    invoke-virtual {v1}, Lcn/sharesdk/framework/Platform;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0, p1}, Lcn/sharesdk/framework/f;->b(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private a(Lcn/sharesdk/framework/d;I)V
    .locals 2

    if-eqz p1, :cond_0

    .line 328
    iget-object v0, p0, Lcn/sharesdk/framework/f;->a:Lcn/sharesdk/framework/Platform;

    new-instance v1, Lcom/mob/commons/ForbThrowable;

    invoke-direct {v1}, Lcom/mob/commons/ForbThrowable;-><init>()V

    invoke-virtual {p1, v0, p2, v1}, Lcn/sharesdk/framework/d;->onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method static synthetic a(Lcn/sharesdk/framework/f;Lcn/sharesdk/framework/Platform$ShareParams;)V
    .locals 0

    .line 21
    invoke-direct {p0, p1}, Lcn/sharesdk/framework/f;->c(Lcn/sharesdk/framework/Platform$ShareParams;)V

    return-void
.end method

.method static synthetic a(Lcn/sharesdk/framework/f;Lcn/sharesdk/framework/d;I)V
    .locals 0

    .line 21
    invoke-direct {p0, p1, p2}, Lcn/sharesdk/framework/f;->a(Lcn/sharesdk/framework/d;I)V

    return-void
.end method

.method static synthetic a(Lcn/sharesdk/framework/f;[Ljava/lang/String;)V
    .locals 0

    .line 21
    invoke-direct {p0, p1}, Lcn/sharesdk/framework/f;->b([Ljava/lang/String;)V

    return-void
.end method

.method static synthetic b(Lcn/sharesdk/framework/f;)Lcn/sharesdk/framework/d;
    .locals 0

    .line 21
    iget-object p0, p0, Lcn/sharesdk/framework/f;->c:Lcn/sharesdk/framework/d;

    return-object p0
.end method

.method private b(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    .line 132
    const-string p1, "ACTION_CUSTOMER"

    return-object p1

    .line 130
    :pswitch_0
    const-string p1, "ACTION_GETTING_FOLLOWER_LIST"

    return-object p1

    .line 128
    :pswitch_1
    const-string p1, "ACTION_GETTING_BILATERAL_LIST"

    return-object p1

    .line 126
    :pswitch_2
    const-string p1, "ACTION_SHARE"

    return-object p1

    .line 124
    :pswitch_3
    const-string p1, "ACTION_USER_INFOR"

    return-object p1

    .line 122
    :pswitch_4
    const-string p1, "ACTION_TIMELINE"

    return-object p1

    .line 118
    :pswitch_5
    const-string p1, "ACTION_FOLLOWING_USER"

    return-object p1

    .line 120
    :pswitch_6
    const-string p1, "ACTION_SENDING_DIRECT_MESSAGE"

    return-object p1

    .line 116
    :cond_0
    const-string p1, "ACTION_GETTING_FRIEND_LIST"

    return-object p1

    .line 114
    :cond_1
    const-string p1, "ACTION_AUTHORIZING"

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private b(Lcn/sharesdk/framework/d;I)V
    .locals 3

    if-eqz p1, :cond_0

    .line 337
    iget-object v0, p0, Lcn/sharesdk/framework/f;->a:Lcn/sharesdk/framework/Platform;

    new-instance v1, Ljava/lang/Throwable;

    const-string v2, "\'appkey\' is illegal"

    invoke-direct {v1, v2}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0, p2, v1}, Lcn/sharesdk/framework/d;->onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method static synthetic b(Lcn/sharesdk/framework/f;Lcn/sharesdk/framework/d;I)V
    .locals 0

    .line 21
    invoke-direct {p0, p1, p2}, Lcn/sharesdk/framework/f;->b(Lcn/sharesdk/framework/d;I)V

    return-void
.end method

.method private b([Ljava/lang/String;)V
    .locals 2

    .line 538
    new-instance v0, Lcn/sharesdk/framework/f$7;

    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcn/sharesdk/framework/f;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcn/sharesdk/framework/f$7;-><init>(Lcn/sharesdk/framework/f;Ljava/lang/String;)V

    .line 572
    invoke-virtual {v0}, Lcn/sharesdk/framework/f$7;->start()V

    .line 574
    new-instance v0, Lcn/sharesdk/framework/f$8;

    invoke-direct {v0, p0, p1}, Lcn/sharesdk/framework/f$8;-><init>(Lcn/sharesdk/framework/f;[Ljava/lang/String;)V

    .line 649
    invoke-virtual {v0}, Lcn/sharesdk/framework/f$8;->start()V

    return-void
.end method

.method private c(Lcn/sharesdk/framework/Platform$ShareParams;)V
    .locals 3

    const/16 v0, 0x9

    if-nez p1, :cond_1

    .line 692
    :try_start_0
    iget-object p1, p0, Lcn/sharesdk/framework/f;->c:Lcn/sharesdk/framework/d;

    if-eqz p1, :cond_0

    .line 693
    iget-object v1, p0, Lcn/sharesdk/framework/f;->a:Lcn/sharesdk/framework/Platform;

    new-instance v2, Ljava/lang/NullPointerException;

    invoke-direct {v2}, Ljava/lang/NullPointerException;-><init>()V

    invoke-virtual {p1, v1, v0, v2}, Lcn/sharesdk/framework/d;->onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    .line 698
    :cond_1
    :try_start_1
    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform$ShareParams;->getOpenCustomEven()Z

    move-result v1

    if-nez v1, :cond_2

    .line 699
    iget-object v1, p0, Lcn/sharesdk/framework/f;->a:Lcn/sharesdk/framework/Platform;

    const/4 v2, 0x3

    invoke-static {v2, v1}, Lcn/sharesdk/framework/ShareSDK;->logDemoEvent(ILcn/sharesdk/framework/Platform;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 703
    :catchall_1
    :cond_2
    :try_start_2
    invoke-virtual {p0, v0, p1}, Lcn/sharesdk/framework/f;->c(ILjava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 705
    :goto_0
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcom/mob/tools/log/NLog;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mob/tools/log/NLog;->e(Ljava/lang/Throwable;)I

    :goto_1
    return-void
.end method

.method static synthetic c(Lcn/sharesdk/framework/f;)Z
    .locals 0

    .line 21
    invoke-direct {p0}, Lcn/sharesdk/framework/f;->j()Z

    move-result p0

    return p0
.end method

.method private j()Z
    .locals 6

    .line 142
    invoke-static {}, Lcn/sharesdk/framework/ShareSDK;->a()Z

    move-result v0

    const-string v1, "false"

    const/4 v2, 0x0

    const-string v3, "covert_url"

    const/4 v4, 0x1

    if-eqz v0, :cond_1

    .line 144
    iget-object v0, p0, Lcn/sharesdk/framework/f;->a:Lcn/sharesdk/framework/Platform;

    invoke-virtual {v0}, Lcn/sharesdk/framework/Platform;->getPlatformId()I

    move-result v0

    invoke-virtual {p0, v0, v3, v2}, Lcn/sharesdk/framework/f;->a(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 146
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 148
    :cond_0
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/2addr v0, v4

    iput-boolean v0, p0, Lcn/sharesdk/framework/f;->g:Z

    .line 150
    iget-object v0, p0, Lcn/sharesdk/framework/f;->a:Lcn/sharesdk/framework/Platform;

    invoke-virtual {v0}, Lcn/sharesdk/framework/Platform;->setNetworkDevinfo()V

    return v4

    :cond_1
    const/4 v0, 0x0

    .line 156
    :try_start_0
    invoke-static {}, Lcn/sharesdk/framework/ShareSDK;->b()Z

    move-result v5

    if-nez v5, :cond_2

    return v0

    .line 161
    :cond_2
    iget-object v5, p0, Lcn/sharesdk/framework/f;->a:Lcn/sharesdk/framework/Platform;

    invoke-virtual {v5}, Lcn/sharesdk/framework/Platform;->getPlatformId()I

    move-result v5

    invoke-virtual {p0, v5, v3, v2}, Lcn/sharesdk/framework/f;->a(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 163
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 165
    :cond_3
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    xor-int/2addr v1, v4

    iput-boolean v1, p0, Lcn/sharesdk/framework/f;->g:Z

    .line 166
    iget-object v1, p0, Lcn/sharesdk/framework/f;->a:Lcn/sharesdk/framework/Platform;

    invoke-virtual {v1}, Lcn/sharesdk/framework/Platform;->setNetworkDevinfo()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v4

    :catchall_0
    move-exception v1

    .line 169
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcom/mob/tools/log/NLog;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I

    return v0
.end method

.method private k()Ljava/lang/String;
    .locals 6

    .line 764
    const-string v0, "|"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 766
    :try_start_0
    const-string v2, "TencentWeibo"

    iget-object v3, p0, Lcn/sharesdk/framework/f;->a:Lcn/sharesdk/framework/Platform;

    invoke-virtual {v3}, Lcn/sharesdk/framework/Platform;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v3, "utf-8"

    if-eqz v2, :cond_0

    .line 767
    :try_start_1
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcom/mob/tools/log/NLog;

    move-result-object v2

    const-string v4, "user id %s ==>>"

    invoke-virtual {p0}, Lcn/sharesdk/framework/f;->g()Lcn/sharesdk/framework/PlatformDb;

    move-result-object v5

    invoke-virtual {v5}, Lcn/sharesdk/framework/PlatformDb;->getUserName()Ljava/lang/String;

    move-result-object v5

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lcom/mob/tools/log/NLog;->i(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 768
    invoke-virtual {p0}, Lcn/sharesdk/framework/f;->g()Lcn/sharesdk/framework/PlatformDb;

    move-result-object v2

    invoke-virtual {v2}, Lcn/sharesdk/framework/PlatformDb;->getUserName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v3}, Lcom/mob/tools/utils/Data;->urlEncode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 770
    :cond_0
    invoke-virtual {p0}, Lcn/sharesdk/framework/f;->g()Lcn/sharesdk/framework/PlatformDb;

    move-result-object v2

    invoke-virtual {v2}, Lcn/sharesdk/framework/PlatformDb;->getUserId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v3}, Lcom/mob/tools/utils/Data;->urlEncode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 772
    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcn/sharesdk/framework/f;->g()Lcn/sharesdk/framework/PlatformDb;

    move-result-object v4

    const-string v5, "secretType"

    invoke-virtual {v4, v5}, Lcn/sharesdk/framework/PlatformDb;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v3}, Lcom/mob/tools/utils/Data;->urlEncode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 773
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcn/sharesdk/framework/f;->g()Lcn/sharesdk/framework/PlatformDb;

    move-result-object v4

    const-string v5, "gender"

    invoke-virtual {v4, v5}, Lcn/sharesdk/framework/PlatformDb;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v3}, Lcom/mob/tools/utils/Data;->urlEncode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 774
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcn/sharesdk/framework/f;->g()Lcn/sharesdk/framework/PlatformDb;

    move-result-object v4

    const-string v5, "birthday"

    invoke-virtual {v4, v5}, Lcn/sharesdk/framework/PlatformDb;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v3}, Lcom/mob/tools/utils/Data;->urlEncode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 775
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcn/sharesdk/framework/f;->g()Lcn/sharesdk/framework/PlatformDb;

    move-result-object v4

    const-string v5, "educationJSONArrayStr"

    invoke-virtual {v4, v5}, Lcn/sharesdk/framework/PlatformDb;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v3}, Lcom/mob/tools/utils/Data;->urlEncode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 776
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcn/sharesdk/framework/f;->g()Lcn/sharesdk/framework/PlatformDb;

    move-result-object v2

    const-string v4, "workJSONArrayStr"

    invoke-virtual {v2, v4}, Lcn/sharesdk/framework/PlatformDb;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v3}, Lcom/mob/tools/utils/Data;->urlEncode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    .line 778
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcom/mob/tools/log/NLog;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I

    .line 781
    :goto_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 76
    iget v0, p0, Lcn/sharesdk/framework/f;->d:I

    return v0
.end method

.method public a(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 184
    invoke-static {p1, p2}, Lcn/sharesdk/framework/ShareSDK;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 185
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_0

    const-string p2, "null"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 186
    :cond_0
    iget-object p1, p0, Lcn/sharesdk/framework/f;->a:Lcn/sharesdk/framework/Platform;

    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2, p3}, Lcn/sharesdk/framework/Platform;->getDevinfo(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_1
    return-object p1
.end method

.method public a(Landroid/graphics/Bitmap;)Ljava/lang/String;
    .locals 0

    .line 793
    invoke-static {p1}, Lcn/sharesdk/framework/ShareSDK;->a(Landroid/graphics/Bitmap;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 6

    .line 740
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 741
    iget-boolean v2, p0, Lcn/sharesdk/framework/f;->g:Z

    const/4 v3, 0x0

    const-string v4, "getShortLintk use time: "

    if-nez v2, :cond_0

    .line 742
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcom/mob/tools/log/NLog;

    move-result-object p2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v0

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    invoke-virtual {p2, v0, v1}, Lcom/mob/tools/log/NLog;->i(Ljava/lang/Object;[Ljava/lang/Object;)I

    return-object p1

    .line 746
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 747
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcom/mob/tools/log/NLog;

    move-result-object p2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v0

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    invoke-virtual {p2, v0, v1}, Lcom/mob/tools/log/NLog;->i(Ljava/lang/Object;[Ljava/lang/Object;)I

    return-object p1

    .line 751
    :cond_1
    iget-object v2, p0, Lcn/sharesdk/framework/f;->a:Lcn/sharesdk/framework/Platform;

    .line 752
    invoke-virtual {v2}, Lcn/sharesdk/framework/Platform;->getPlatformId()I

    move-result v2

    invoke-direct {p0}, Lcn/sharesdk/framework/f;->k()Ljava/lang/String;

    move-result-object v5

    .line 751
    invoke-static {p1, p2, v2, v5}, Lcn/sharesdk/framework/ShareSDK;->a(Ljava/lang/String;ZILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 753
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcom/mob/tools/log/NLog;

    move-result-object p2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v0

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    invoke-virtual {p2, v0, v1}, Lcom/mob/tools/log/NLog;->i(Ljava/lang/Object;[Ljava/lang/Object;)I

    return-object p1
.end method

.method public a(IILjava/lang/String;)V
    .locals 0

    .line 722
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {p1, p2, p3}, [Ljava/lang/Object;

    move-result-object p1

    const/4 p2, 0x2

    invoke-virtual {p0, p2, p1}, Lcn/sharesdk/framework/f;->c(ILjava/lang/Object;)V

    return-void
.end method

.method public a(ILjava/lang/Object;)V
    .locals 2

    .line 192
    iget-object v0, p0, Lcn/sharesdk/framework/f;->c:Lcn/sharesdk/framework/d;

    iget-object v1, p0, Lcn/sharesdk/framework/f;->a:Lcn/sharesdk/framework/Platform;

    invoke-virtual {v0, v1, p1, p2}, Lcn/sharesdk/framework/d;->a(Lcn/sharesdk/framework/Platform;ILjava/lang/Object;)V

    return-void
.end method

.method public a(Lcn/sharesdk/framework/Platform$ShareParams;)V
    .locals 3

    if-nez p1, :cond_1

    .line 487
    iget-object p1, p0, Lcn/sharesdk/framework/f;->c:Lcn/sharesdk/framework/d;

    if-eqz p1, :cond_0

    .line 488
    iget-object v0, p0, Lcn/sharesdk/framework/f;->a:Lcn/sharesdk/framework/Platform;

    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    const/16 v2, 0x9

    invoke-virtual {p1, v0, v2, v1}, Lcn/sharesdk/framework/d;->onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V

    :cond_0
    return-void

    .line 493
    :cond_1
    new-instance v0, Lcn/sharesdk/framework/f$5;

    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcn/sharesdk/framework/f;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1}, Lcn/sharesdk/framework/f$5;-><init>(Lcn/sharesdk/framework/f;Ljava/lang/String;Lcn/sharesdk/framework/Platform$ShareParams;)V

    .line 502
    invoke-virtual {v0}, Lcn/sharesdk/framework/f$5;->start()V

    return-void
.end method

.method public a(Lcn/sharesdk/framework/PlatformActionListener;)V
    .locals 1

    .line 84
    iget-object v0, p0, Lcn/sharesdk/framework/f;->c:Lcn/sharesdk/framework/d;

    invoke-virtual {v0, p1}, Lcn/sharesdk/framework/d;->a(Lcn/sharesdk/framework/PlatformActionListener;)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 4

    .line 42
    const-string v0, "Id"

    invoke-static {p1, v0}, Lcn/sharesdk/framework/ShareSDK;->getDevinfo(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 44
    :try_start_0
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mob/tools/utils/ResHelper;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcn/sharesdk/framework/f;->d:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 46
    :catchall_0
    iget-object v0, p0, Lcn/sharesdk/framework/f;->a:Lcn/sharesdk/framework/Platform;

    instance-of v0, v0, Lcn/sharesdk/framework/CustomPlatform;

    if-nez v0, :cond_0

    .line 47
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcom/mob/tools/log/NLog;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcn/sharesdk/framework/f;->a:Lcn/sharesdk/framework/Platform;

    invoke-virtual {v3}, Lcn/sharesdk/framework/Platform;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " failed to parse Id, this will cause method getId() always returens 0"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 51
    :cond_0
    :goto_0
    const-string v0, "SortId"

    invoke-static {p1, v0}, Lcn/sharesdk/framework/ShareSDK;->getDevinfo(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 53
    :try_start_1
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mob/tools/utils/ResHelper;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcn/sharesdk/framework/f;->e:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    .line 55
    :catchall_1
    iget-object v0, p0, Lcn/sharesdk/framework/f;->a:Lcn/sharesdk/framework/Platform;

    instance-of v0, v0, Lcn/sharesdk/framework/CustomPlatform;

    if-nez v0, :cond_1

    .line 56
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcom/mob/tools/log/NLog;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcn/sharesdk/framework/f;->a:Lcn/sharesdk/framework/Platform;

    invoke-virtual {v3}, Lcn/sharesdk/framework/Platform;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " failed to parse SortId, this won\'t cause any problem, don\'t worry"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 60
    :cond_1
    :goto_1
    const-string v0, "Enable"

    invoke-static {p1, v0}, Lcn/sharesdk/framework/ShareSDK;->getDevinfo(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    .line 63
    iput-boolean v0, p0, Lcn/sharesdk/framework/f;->h:Z

    .line 64
    iget-object v0, p0, Lcn/sharesdk/framework/f;->a:Lcn/sharesdk/framework/Platform;

    instance-of v0, v0, Lcn/sharesdk/framework/CustomPlatform;

    if-nez v0, :cond_3

    .line 65
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcom/mob/tools/log/NLog;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcn/sharesdk/framework/f;->a:Lcn/sharesdk/framework/Platform;

    invoke-virtual {v3}, Lcn/sharesdk/framework/Platform;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " failed to parse Enable, this will cause platform always be enable"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v1}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    goto :goto_2

    .line 68
    :cond_2
    const-string v1, "true"

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcn/sharesdk/framework/f;->h:Z

    .line 72
    :cond_3
    :goto_2
    iget-object v0, p0, Lcn/sharesdk/framework/f;->a:Lcn/sharesdk/framework/Platform;

    invoke-virtual {v0, p1}, Lcn/sharesdk/framework/Platform;->initDevInfo(Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/lang/String;II)V
    .locals 0

    .line 714
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    filled-new-array {p2, p3, p1}, [Ljava/lang/Object;

    move-result-object p1

    const/4 p2, 0x7

    invoke-virtual {p0, p2, p1}, Lcn/sharesdk/framework/f;->c(ILjava/lang/Object;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;SLjava/util/HashMap;Ljava/util/HashMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "S",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/high16 v0, 0xa0000

    or-int/2addr p3, v0

    .line 728
    filled-new-array {p1, p2, p4, p5}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p3, p1}, Lcn/sharesdk/framework/f;->c(ILjava/lang/Object;)V

    return-void
.end method

.method public a(Z)V
    .locals 0

    .line 96
    iput-boolean p1, p0, Lcn/sharesdk/framework/f;->f:Z

    return-void
.end method

.method public a([Ljava/lang/String;)V
    .locals 3

    .line 507
    :try_start_0
    invoke-static {}, Lcom/mob/MobSDK;->isGppVer()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcn/sharesdk/framework/b/a/e;->a()Lcn/sharesdk/framework/b/a/e;

    move-result-object v0

    const-string v1, "no_use_gpp"

    invoke-virtual {v0, v1}, Lcn/sharesdk/framework/b/a/e;->h(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 508
    invoke-static {}, Lcn/sharesdk/framework/b/a/e;->a()Lcn/sharesdk/framework/b/a/e;

    move-result-object v0

    const-string v1, "gpp_ver_sent"

    invoke-virtual {v0, v1}, Lcn/sharesdk/framework/b/a/e;->h(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 509
    new-instance v0, Lcn/sharesdk/framework/AgreementDialog;

    invoke-direct {v0}, Lcn/sharesdk/framework/AgreementDialog;-><init>()V

    .line 510
    new-instance v1, Lcn/sharesdk/framework/f$6;

    invoke-direct {v1, p0, p1}, Lcn/sharesdk/framework/f$6;-><init>(Lcn/sharesdk/framework/f;[Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcn/sharesdk/framework/AgreementDialog;->a(Lcn/sharesdk/framework/AgreementDialog$OnDialogDismiss;)V

    .line 524
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcn/sharesdk/framework/AgreementDialog;->show(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    .line 526
    :cond_0
    invoke-direct {p0, p1}, Lcn/sharesdk/framework/f;->b([Ljava/lang/String;)V

    goto :goto_0

    .line 529
    :cond_1
    invoke-direct {p0, p1}, Lcn/sharesdk/framework/f;->b([Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 532
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcom/mob/tools/log/NLog;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I

    .line 533
    invoke-direct {p0, p1}, Lcn/sharesdk/framework/f;->b([Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public b()I
    .locals 1

    .line 80
    iget v0, p0, Lcn/sharesdk/framework/f;->e:I

    return v0
.end method

.method protected b(ILjava/lang/Object;)V
    .locals 9

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eq p1, v1, :cond_9

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-eq p1, v2, :cond_8

    packed-switch p1, :pswitch_data_0

    .line 314
    check-cast p2, [Ljava/lang/Object;

    check-cast p2, [Ljava/lang/Object;

    .line 315
    aget-object v0, p2, v3

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 316
    aget-object v0, p2, v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 318
    aget-object v0, p2, v2

    move-object v7, v0

    check-cast v7, Ljava/util/HashMap;

    const/4 v0, 0x3

    .line 320
    aget-object p2, p2, v0

    move-object v8, p2

    check-cast v8, Ljava/util/HashMap;

    .line 321
    iget-object v3, p0, Lcn/sharesdk/framework/f;->a:Lcn/sharesdk/framework/Platform;

    move v6, p1

    invoke-virtual/range {v3 .. v8}, Lcn/sharesdk/framework/Platform;->doCustomerProtocol(Ljava/lang/String;Ljava/lang/String;ILjava/util/HashMap;Ljava/util/HashMap;)V

    goto/16 :goto_3

    .line 213
    :pswitch_0
    check-cast p2, Lcn/sharesdk/framework/Platform$ShareParams;

    .line 214
    invoke-virtual {p2}, Lcn/sharesdk/framework/Platform$ShareParams;->toMap()Ljava/util/HashMap;

    move-result-object p1

    .line 215
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getFields()[Ljava/lang/reflect/Field;

    move-result-object v2

    array-length v4, v2

    move v5, v3

    :goto_0
    if-ge v5, v4, :cond_1

    aget-object v6, v2, v5

    .line 216
    invoke-virtual {v6}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    if-nez v7, :cond_0

    .line 217
    invoke-virtual {v6, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 220
    :try_start_0
    invoke-virtual {v6, p2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v7

    .line 222
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcom/mob/tools/log/NLog;

    move-result-object v8

    invoke-virtual {v8, v7}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I

    move-object v7, v0

    :goto_1
    if-eqz v7, :cond_0

    .line 226
    invoke-virtual {v6}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 230
    :cond_1
    iget-object p1, p0, Lcn/sharesdk/framework/f;->c:Lcn/sharesdk/framework/d;

    instance-of v0, p1, Lcn/sharesdk/framework/d;

    if-eqz v0, :cond_2

    .line 231
    iget-object v0, p0, Lcn/sharesdk/framework/f;->a:Lcn/sharesdk/framework/Platform;

    invoke-virtual {p1, v0, p2}, Lcn/sharesdk/framework/d;->a(Lcn/sharesdk/framework/Platform;Lcn/sharesdk/framework/Platform$ShareParams;)V

    .line 236
    :cond_2
    :try_start_1
    invoke-virtual {p2}, Lcn/sharesdk/framework/Platform$ShareParams;->getLoopshareCustomParams()Ljava/util/HashMap;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/HashMap;->size()I

    move-result p1

    if-lez p1, :cond_6

    invoke-virtual {p2}, Lcn/sharesdk/framework/Platform$ShareParams;->getLoopshareCustomParams()Ljava/util/HashMap;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 237
    iget-object p1, p0, Lcn/sharesdk/framework/f;->a:Lcn/sharesdk/framework/Platform;

    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "QQ"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/16 v0, 0x9

    if-eqz p1, :cond_4

    .line 238
    invoke-virtual {p2}, Lcn/sharesdk/framework/Platform$ShareParams;->getTitleUrl()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 239
    invoke-virtual {p2}, Lcn/sharesdk/framework/Platform$ShareParams;->getLoopshareCustomParams()Ljava/util/HashMap;

    move-result-object p1

    new-instance v0, Lcn/sharesdk/framework/f$1;

    invoke-direct {v0, p0, p2}, Lcn/sharesdk/framework/f$1;-><init>(Lcn/sharesdk/framework/f;Lcn/sharesdk/framework/Platform$ShareParams;)V

    invoke-static {p1, v0}, Lcn/sharesdk/framework/ShareSDK;->mobLinkGetMobID(Ljava/util/HashMap;Lcn/sharesdk/framework/loopshare/MoblinkActionListener;)V

    goto/16 :goto_3

    .line 264
    :cond_3
    iget-object p1, p0, Lcn/sharesdk/framework/f;->c:Lcn/sharesdk/framework/d;

    if-eqz p1, :cond_a

    .line 265
    new-instance p1, Ljava/lang/Throwable;

    const-string p2, "TitleUrl cannot be empty if setLoopshareCustomParams is used in QQ"

    invoke-direct {p1, p2}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    .line 266
    iget-object p2, p0, Lcn/sharesdk/framework/f;->c:Lcn/sharesdk/framework/d;

    iget-object v1, p0, Lcn/sharesdk/framework/f;->a:Lcn/sharesdk/framework/Platform;

    invoke-virtual {p2, v1, v0, p1}, Lcn/sharesdk/framework/d;->onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V

    goto/16 :goto_3

    .line 268
    :cond_4
    invoke-virtual {p2}, Lcn/sharesdk/framework/Platform$ShareParams;->getUrl()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_5

    .line 269
    iget-object p1, p0, Lcn/sharesdk/framework/f;->c:Lcn/sharesdk/framework/d;

    if-eqz p1, :cond_a

    .line 270
    invoke-virtual {p2}, Lcn/sharesdk/framework/Platform$ShareParams;->getLoopshareCustomParams()Ljava/util/HashMap;

    move-result-object p1

    new-instance v0, Lcn/sharesdk/framework/f$2;

    invoke-direct {v0, p0, p2}, Lcn/sharesdk/framework/f$2;-><init>(Lcn/sharesdk/framework/f;Lcn/sharesdk/framework/Platform$ShareParams;)V

    invoke-static {p1, v0}, Lcn/sharesdk/framework/ShareSDK;->mobLinkGetMobID(Ljava/util/HashMap;Lcn/sharesdk/framework/loopshare/MoblinkActionListener;)V

    goto/16 :goto_3

    .line 295
    :cond_5
    iget-object p1, p0, Lcn/sharesdk/framework/f;->c:Lcn/sharesdk/framework/d;

    if-eqz p1, :cond_a

    .line 296
    new-instance p1, Ljava/lang/Throwable;

    const-string p2, "SetUrl cannot be empty if setLoopshareCustomParams is used"

    invoke-direct {p1, p2}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    .line 297
    iget-object p2, p0, Lcn/sharesdk/framework/f;->c:Lcn/sharesdk/framework/d;

    iget-object v1, p0, Lcn/sharesdk/framework/f;->a:Lcn/sharesdk/framework/Platform;

    invoke-virtual {p2, v1, v0, p1}, Lcn/sharesdk/framework/d;->onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V

    goto/16 :goto_3

    .line 300
    :cond_6
    iget-object p1, p0, Lcn/sharesdk/framework/f;->a:Lcn/sharesdk/framework/Platform;

    invoke-virtual {p1, p2}, Lcn/sharesdk/framework/Platform;->doShare(Lcn/sharesdk/framework/Platform$ShareParams;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto/16 :goto_3

    :catchall_1
    move-exception p1

    .line 303
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcom/mob/tools/log/NLog;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "PlatformImpl platform.doshare() "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v0, v3, [Ljava/lang/Object;

    invoke-virtual {p2, p1, v0}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    goto :goto_3

    .line 210
    :pswitch_1
    iget-object p1, p0, Lcn/sharesdk/framework/f;->a:Lcn/sharesdk/framework/Platform;

    if-nez p2, :cond_7

    goto :goto_2

    :cond_7
    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    :goto_2
    invoke-virtual {p1, v0}, Lcn/sharesdk/framework/Platform;->userInfor(Ljava/lang/String;)V

    goto :goto_3

    .line 206
    :pswitch_2
    check-cast p2, [Ljava/lang/Object;

    check-cast p2, [Ljava/lang/Object;

    .line 207
    iget-object p1, p0, Lcn/sharesdk/framework/f;->a:Lcn/sharesdk/framework/Platform;

    aget-object v0, p2, v3

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aget-object v1, p2, v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    aget-object p2, p2, v2

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p1, v0, v1, p2}, Lcn/sharesdk/framework/Platform;->timeline(IILjava/lang/String;)V

    goto :goto_3

    .line 203
    :pswitch_3
    iget-object p1, p0, Lcn/sharesdk/framework/f;->a:Lcn/sharesdk/framework/Platform;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcn/sharesdk/framework/Platform;->follow(Ljava/lang/String;)V

    goto :goto_3

    .line 310
    :cond_8
    check-cast p2, [Ljava/lang/Object;

    check-cast p2, [Ljava/lang/Object;

    .line 311
    iget-object p1, p0, Lcn/sharesdk/framework/f;->a:Lcn/sharesdk/framework/Platform;

    aget-object v0, p2, v3

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aget-object v1, p2, v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    aget-object p2, p2, v2

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p1, v0, v1, p2}, Lcn/sharesdk/framework/Platform;->getFriendList(IILjava/lang/String;)V

    goto :goto_3

    .line 198
    :cond_9
    iget-object p1, p0, Lcn/sharesdk/framework/f;->c:Lcn/sharesdk/framework/d;

    if-eqz p1, :cond_a

    .line 199
    iget-object p2, p0, Lcn/sharesdk/framework/f;->a:Lcn/sharesdk/framework/Platform;

    invoke-virtual {p1, p2, v1, v0}, Lcn/sharesdk/framework/d;->onComplete(Lcn/sharesdk/framework/Platform;ILjava/util/HashMap;)V

    :cond_a
    :goto_3
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public b(Lcn/sharesdk/framework/Platform$ShareParams;)V
    .locals 3

    .line 654
    :try_start_0
    invoke-static {}, Lcom/mob/MobSDK;->isGppVer()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcn/sharesdk/framework/b/a/e;->a()Lcn/sharesdk/framework/b/a/e;

    move-result-object v0

    const-string v1, "no_use_gpp"

    invoke-virtual {v0, v1}, Lcn/sharesdk/framework/b/a/e;->h(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 655
    invoke-static {}, Lcn/sharesdk/framework/b/a/e;->a()Lcn/sharesdk/framework/b/a/e;

    move-result-object v0

    const-string v1, "gpp_ver_sent"

    invoke-virtual {v0, v1}, Lcn/sharesdk/framework/b/a/e;->h(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 656
    new-instance v0, Lcn/sharesdk/framework/AgreementDialog;

    invoke-direct {v0}, Lcn/sharesdk/framework/AgreementDialog;-><init>()V

    .line 657
    new-instance v1, Lcn/sharesdk/framework/f$9;

    invoke-direct {v1, p0, p1}, Lcn/sharesdk/framework/f$9;-><init>(Lcn/sharesdk/framework/f;Lcn/sharesdk/framework/Platform$ShareParams;)V

    invoke-virtual {v0, v1}, Lcn/sharesdk/framework/AgreementDialog;->a(Lcn/sharesdk/framework/AgreementDialog$OnDialogDismiss;)V

    .line 671
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcn/sharesdk/framework/AgreementDialog;->show(Landroid/content/Context;Landroid/content/Intent;)V

    return-void

    .line 674
    :cond_0
    invoke-direct {p0, p1}, Lcn/sharesdk/framework/f;->c(Lcn/sharesdk/framework/Platform$ShareParams;)V

    goto :goto_0

    .line 677
    :cond_1
    invoke-direct {p0, p1}, Lcn/sharesdk/framework/f;->c(Lcn/sharesdk/framework/Platform$ShareParams;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 680
    :catchall_0
    invoke-direct {p0, p1}, Lcn/sharesdk/framework/f;->c(Lcn/sharesdk/framework/Platform$ShareParams;)V

    :goto_0
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x6

    .line 710
    invoke-virtual {p0, v0, p1}, Lcn/sharesdk/framework/f;->c(ILjava/lang/Object;)V

    return-void
.end method

.method public c()Lcn/sharesdk/framework/PlatformActionListener;
    .locals 1

    .line 88
    iget-object v0, p0, Lcn/sharesdk/framework/f;->c:Lcn/sharesdk/framework/d;

    invoke-virtual {v0}, Lcn/sharesdk/framework/d;->a()Lcn/sharesdk/framework/PlatformActionListener;

    move-result-object v0

    return-object v0
.end method

.method protected c(ILjava/lang/Object;)V
    .locals 2

    .line 357
    new-instance v0, Lcn/sharesdk/framework/f$3;

    invoke-direct {p0, p1}, Lcn/sharesdk/framework/f;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcn/sharesdk/framework/f$3;-><init>(Lcn/sharesdk/framework/f;Ljava/lang/String;)V

    .line 394
    invoke-virtual {v0}, Lcn/sharesdk/framework/f$3;->start()V

    .line 396
    new-instance v0, Lcn/sharesdk/framework/f$4;

    invoke-direct {v0, p0, p1, p2}, Lcn/sharesdk/framework/f$4;-><init>(Lcn/sharesdk/framework/f;ILjava/lang/Object;)V

    .line 481
    invoke-virtual {v0}, Lcn/sharesdk/framework/f$4;->start()V

    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 1

    const/16 v0, 0x8

    .line 718
    invoke-virtual {p0, v0, p1}, Lcn/sharesdk/framework/f;->c(ILjava/lang/Object;)V

    return-void
.end method

.method public d(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 789
    invoke-static {p1}, Lcn/sharesdk/framework/ShareSDK;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public d()Z
    .locals 1

    .line 92
    iget-object v0, p0, Lcn/sharesdk/framework/f;->b:Lcn/sharesdk/framework/PlatformDb;

    invoke-virtual {v0}, Lcn/sharesdk/framework/PlatformDb;->isValid()Z

    move-result v0

    return v0
.end method

.method public e()Z
    .locals 1

    .line 100
    iget-boolean v0, p0, Lcn/sharesdk/framework/f;->f:Z

    return v0
.end method

.method public f()Z
    .locals 1

    .line 104
    iget-boolean v0, p0, Lcn/sharesdk/framework/f;->h:Z

    return v0
.end method

.method public g()Lcn/sharesdk/framework/PlatformDb;
    .locals 1

    .line 732
    iget-object v0, p0, Lcn/sharesdk/framework/f;->b:Lcn/sharesdk/framework/PlatformDb;

    return-object v0
.end method

.method public h()V
    .locals 1

    .line 736
    iget-object v0, p0, Lcn/sharesdk/framework/f;->b:Lcn/sharesdk/framework/PlatformDb;

    invoke-virtual {v0}, Lcn/sharesdk/framework/PlatformDb;->removeAccount()V

    return-void
.end method

.method protected i()Lcn/sharesdk/framework/PlatformActionListener;
    .locals 1

    .line 785
    iget-object v0, p0, Lcn/sharesdk/framework/f;->c:Lcn/sharesdk/framework/d;

    return-object v0
.end method
