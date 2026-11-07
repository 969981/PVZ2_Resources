.class public Lcn/sharesdk/framework/h;
.super Ljava/lang/Object;
.source "ShareSDKCore.java"


# direct methods
.method public static a(Ljava/lang/String;II)Landroid/graphics/Bitmap;
    .locals 8

    .line 195
    invoke-static {}, Lcn/sharesdk/framework/utils/m;->a()Lcn/sharesdk/framework/utils/m;

    const/high16 v6, -0x1000000

    const/4 v7, -0x1

    .line 196
    const-string v3, "UTF_8"

    const-string v4, "H"

    const-string v5, "2"

    move-object v0, p0

    move v1, p1

    move v2, p2

    invoke-static/range {v0 .. v7}, Lcn/sharesdk/framework/utils/m;->a(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static a()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcn/sharesdk/framework/Platform;",
            ">;"
        }
    .end annotation

    .line 40
    invoke-static {}, Lcn/sharesdk/framework/h;->f()Ljava/util/ArrayList;

    move-result-object v0

    .line 41
    invoke-static {v0}, Lcn/sharesdk/framework/h;->a(Ljava/util/ArrayList;)V

    return-object v0
.end method

.method public static a(Ljava/util/HashMap;)Ljava/util/HashMap;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_5

    .line 335
    invoke-virtual {p0}, Ljava/util/HashMap;->size()I

    move-result v1

    if-gtz v1, :cond_0

    goto :goto_2

    .line 340
    :cond_0
    const-string v1, "fakelist"

    invoke-virtual {p0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/ArrayList;

    if-nez p0, :cond_1

    return-object v0

    .line 345
    :cond_1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 346
    const-string v1, "ShareSDK"

    const-string v2, "parseDevInfo"

    invoke-static {v1, v2}, Lcom/mob/commons/eventrecoder/EventRecorder;->addBegin(Ljava/lang/String;Ljava/lang/String;)V

    .line 347
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashMap;

    if-nez v3, :cond_2

    goto :goto_0

    .line 351
    :cond_2
    const-string v4, "snsplat"

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, -0x1

    .line 354
    :try_start_0
    invoke-static {v4}, Lcom/mob/tools/utils/ResHelper;->parseInt(Ljava/lang/String;)I

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v4

    .line 356
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcom/mob/tools/log/NLog;

    move-result-object v6

    invoke-virtual {v6, v4}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I

    move v4, v5

    :goto_1
    if-ne v4, v5, :cond_3

    goto :goto_0

    .line 363
    :cond_3
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 365
    :cond_4
    invoke-static {v1, v2}, Lcom/mob/commons/eventrecoder/EventRecorder;->addEnd(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    :goto_2
    return-object v0
.end method

.method public static a(ILcn/sharesdk/framework/Platform;)V
    .locals 2

    .line 303
    new-instance v0, Lcn/sharesdk/framework/b/b/d;

    invoke-direct {v0}, Lcn/sharesdk/framework/b/b/d;-><init>()V

    const/4 v1, 0x1

    if-eq p0, v1, :cond_4

    const/4 v1, 0x2

    if-eq p0, v1, :cond_3

    const/4 v1, 0x3

    if-eq p0, v1, :cond_2

    const/4 v1, 0x4

    if-eq p0, v1, :cond_1

    const/4 v1, 0x5

    if-eq p0, v1, :cond_0

    goto :goto_0

    .line 309
    :cond_0
    const-string p0, "SHARESDK_CANCEL_SHARE"

    iput-object p0, v0, Lcn/sharesdk/framework/b/b/d;->a:Ljava/lang/String;

    goto :goto_0

    .line 308
    :cond_1
    const-string p0, "SHARESDK_FAILED_SHARE"

    iput-object p0, v0, Lcn/sharesdk/framework/b/b/d;->a:Ljava/lang/String;

    goto :goto_0

    .line 307
    :cond_2
    const-string p0, "SHARESDK_EDIT_SHARE"

    iput-object p0, v0, Lcn/sharesdk/framework/b/b/d;->a:Ljava/lang/String;

    goto :goto_0

    .line 306
    :cond_3
    const-string p0, "SHARESDK_CANCEL_SHAREMENU"

    iput-object p0, v0, Lcn/sharesdk/framework/b/b/d;->a:Ljava/lang/String;

    goto :goto_0

    .line 305
    :cond_4
    const-string p0, "SHARESDK_ENTER_SHAREMENU"

    iput-object p0, v0, Lcn/sharesdk/framework/b/b/d;->a:Ljava/lang/String;

    :goto_0
    if-eqz p1, :cond_5

    .line 313
    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform;->getPlatformId()I

    move-result p0

    iput p0, v0, Lcn/sharesdk/framework/b/b/d;->b:I

    .line 315
    :cond_5
    invoke-static {}, Lcn/sharesdk/framework/b/d;->a()Lcn/sharesdk/framework/b/d;

    move-result-object p0

    if-eqz p0, :cond_6

    .line 317
    invoke-virtual {p0, v0}, Lcn/sharesdk/framework/b/d;->a(Lcn/sharesdk/framework/b/b/c;)V

    :cond_6
    return-void
.end method

.method public static a(Landroid/app/Activity;)V
    .locals 1

    .line 142
    invoke-static {}, Lcn/sharesdk/framework/authorize/b;->c()Lcn/sharesdk/framework/authorize/b;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 144
    invoke-virtual {v0, p0}, Lcn/sharesdk/framework/authorize/b;->a(Landroid/app/Activity;)V

    :cond_0
    return-void
.end method

.method public static a(Landroid/content/Context;Lcn/sharesdk/framework/loopshare/watermark/ReadQrImageListener;)V
    .locals 0

    .line 181
    invoke-static {p0, p1}, Lcn/sharesdk/framework/loopshare/watermark/FirstPic;->a(Landroid/content/Context;Lcn/sharesdk/framework/loopshare/watermark/ReadQrImageListener;)V

    return-void
.end method

.method public static a(Landroid/os/Handler;)V
    .locals 1

    .line 277
    invoke-static {}, Lcn/sharesdk/framework/b/d;->a()Lcn/sharesdk/framework/b/d;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 279
    invoke-virtual {v0, p0}, Lcn/sharesdk/framework/b/d;->a(Landroid/os/Handler;)V

    .line 280
    invoke-virtual {v0}, Lcn/sharesdk/framework/b/d;->e()V

    :cond_0
    return-void
.end method

.method public static a(Lcn/sharesdk/framework/loopshare/LoopShareResultListener;)V
    .locals 3

    .line 242
    :try_start_0
    invoke-static {}, Lcn/sharesdk/framework/loopshare/MobLinkAPI;->a()Lcn/sharesdk/framework/loopshare/MobLinkAPI;

    .line 243
    invoke-static {p0}, Lcn/sharesdk/framework/loopshare/MobLinkAPI;->b(Lcn/sharesdk/framework/loopshare/LoopShareResultListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 245
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcom/mob/tools/log/NLog;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ShareSDKCore prepareLoopShare "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v1}, Lcom/mob/tools/log/NLog;->e(Ljava/lang/Object;[Ljava/lang/Object;)I

    :goto_0
    return-void
.end method

.method public static a(Ljava/lang/String;I)V
    .locals 2

    .line 322
    invoke-static {}, Lcn/sharesdk/framework/b/d;->a()Lcn/sharesdk/framework/b/d;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 327
    :cond_0
    new-instance v1, Lcn/sharesdk/framework/b/b/a;

    invoke-direct {v1}, Lcn/sharesdk/framework/b/b/a;-><init>()V

    .line 328
    iput-object p0, v1, Lcn/sharesdk/framework/b/b/a;->b:Ljava/lang/String;

    .line 329
    iput p1, v1, Lcn/sharesdk/framework/b/b/a;->a:I

    .line 330
    invoke-virtual {v0, v1}, Lcn/sharesdk/framework/b/d;->a(Lcn/sharesdk/framework/b/b/c;)V

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcn/sharesdk/framework/loopshare/watermark/WaterMarkListener;)V
    .locals 0

    .line 188
    invoke-static {p0, p1, p2, p3, p4}, Lcn/sharesdk/framework/loopshare/watermark/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcn/sharesdk/framework/loopshare/watermark/WaterMarkListener;)V

    return-void
.end method

.method public static a(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcn/sharesdk/framework/Platform;",
            ">;)V"
        }
    .end annotation

    if-nez p0, :cond_0

    return-void

    .line 130
    :cond_0
    new-instance v0, Lcn/sharesdk/framework/h$1;

    invoke-direct {v0}, Lcn/sharesdk/framework/h$1;-><init>()V

    .line 138
    invoke-static {p0, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-void
.end method

.method public static a(Ljava/util/HashMap;Lcn/sharesdk/framework/loopshare/MoblinkActionListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcn/sharesdk/framework/loopshare/MoblinkActionListener;",
            ")V"
        }
    .end annotation

    .line 204
    :try_start_0
    invoke-static {}, Lcn/sharesdk/framework/loopshare/MobLinkAPI;->a()Lcn/sharesdk/framework/loopshare/MobLinkAPI;

    .line 205
    invoke-static {p0, p1}, Lcn/sharesdk/framework/loopshare/MobLinkAPI;->a(Ljava/util/HashMap;Lcn/sharesdk/framework/loopshare/MoblinkActionListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 207
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcom/mob/tools/log/NLog;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ShareSDKCore mobLinkGetMobID "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p1, p0, v0}, Lcom/mob/tools/log/NLog;->e(Ljava/lang/Object;[Ljava/lang/Object;)I

    :goto_0
    return-void
.end method

.method public static a(Ljava/util/HashMap;Ljava/lang/String;Lcn/sharesdk/framework/loopshare/LoopSharePasswordListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            "Lcn/sharesdk/framework/loopshare/LoopSharePasswordListener;",
            ")V"
        }
    .end annotation

    .line 217
    :try_start_0
    invoke-static {}, Lcn/sharesdk/framework/loopshare/MobLinkAPI;->a()Lcn/sharesdk/framework/loopshare/MobLinkAPI;

    .line 218
    invoke-static {p0, p1, p2}, Lcn/sharesdk/framework/loopshare/MobLinkAPI;->a(Ljava/util/HashMap;Ljava/lang/String;Lcn/sharesdk/framework/loopshare/LoopSharePasswordListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 220
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcom/mob/tools/log/NLog;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "ShareSDKCore preparePassWord "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/Object;

    invoke-virtual {p1, p0, p2}, Lcom/mob/tools/log/NLog;->e(Ljava/lang/Object;[Ljava/lang/Object;)I

    :goto_0
    return-void
.end method

.method public static a(Z)V
    .locals 1

    .line 154
    invoke-static {}, Lcn/sharesdk/framework/authorize/b;->c()Lcn/sharesdk/framework/authorize/b;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 156
    invoke-virtual {v0, p0}, Lcn/sharesdk/framework/authorize/b;->a(Z)V

    :cond_0
    return-void
.end method

.method public static a(ZLcn/sharesdk/framework/loopshare/LoopSharePasswordListener;)V
    .locals 2

    .line 229
    :try_start_0
    invoke-static {}, Lcn/sharesdk/framework/loopshare/MobLinkAPI;->a()Lcn/sharesdk/framework/loopshare/MobLinkAPI;

    .line 230
    invoke-static {p0, p1}, Lcn/sharesdk/framework/loopshare/MobLinkAPI;->a(ZLcn/sharesdk/framework/loopshare/LoopSharePasswordListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 232
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcom/mob/tools/log/NLog;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ShareSDKCore readPassWord "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p1, p0, v0}, Lcom/mob/tools/log/NLog;->e(Ljava/lang/Object;[Ljava/lang/Object;)I

    :goto_0
    return-void
.end method

.method public static b()Landroid/app/Activity;
    .locals 1

    .line 149
    invoke-static {}, Lcn/sharesdk/framework/authorize/b;->c()Lcn/sharesdk/framework/authorize/b;

    move-result-object v0

    .line 150
    invoke-virtual {v0}, Lcn/sharesdk/framework/authorize/b;->b()Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method public static b(Z)V
    .locals 1

    .line 166
    invoke-static {}, Lcn/sharesdk/framework/authorize/f;->c()Lcn/sharesdk/framework/authorize/f;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 168
    invoke-virtual {v0, p0}, Lcn/sharesdk/framework/authorize/f;->a(Z)V

    :cond_0
    return-void
.end method

.method public static c()Z
    .locals 1

    .line 161
    invoke-static {}, Lcn/sharesdk/framework/authorize/b;->c()Lcn/sharesdk/framework/authorize/b;

    move-result-object v0

    .line 162
    invoke-virtual {v0}, Lcn/sharesdk/framework/authorize/b;->a()Z

    move-result v0

    return v0
.end method

.method public static d()Z
    .locals 1

    .line 173
    invoke-static {}, Lcn/sharesdk/framework/authorize/f;->c()Lcn/sharesdk/framework/authorize/f;

    move-result-object v0

    .line 174
    invoke-virtual {v0}, Lcn/sharesdk/framework/authorize/f;->a()Z

    move-result v0

    return v0
.end method

.method public static e()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 265
    invoke-static {}, Lcn/sharesdk/framework/loopshare/MobLinkAPI;->a()Lcn/sharesdk/framework/loopshare/MobLinkAPI;

    .line 266
    invoke-static {}, Lcn/sharesdk/framework/loopshare/MobLinkAPI;->d()Ljava/util/HashMap;

    move-result-object v0

    return-object v0
.end method

.method private static f()Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcn/sharesdk/framework/Platform;",
            ">;"
        }
    .end annotation

    const/16 v0, 0x37

    .line 46
    new-array v1, v0, [Ljava/lang/String;

    const-string v2, "cn.sharesdk.douban.Douban"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x1

    const-string v4, "cn.sharesdk.evernote.Evernote"

    aput-object v4, v1, v2

    const/4 v2, 0x2

    const-string v4, "cn.sharesdk.facebook.Facebook"

    aput-object v4, v1, v2

    const/4 v2, 0x3

    const-string v4, "cn.sharesdk.renren.Renren"

    aput-object v4, v1, v2

    const/4 v2, 0x4

    const-string v4, "cn.sharesdk.sina.weibo.SinaWeibo"

    aput-object v4, v1, v2

    const/4 v2, 0x5

    const-string v4, "cn.sharesdk.kaixin.KaiXin"

    aput-object v4, v1, v2

    const/4 v2, 0x6

    const-string v4, "cn.sharesdk.linkedin.LinkedIn"

    aput-object v4, v1, v2

    const/4 v2, 0x7

    const-string v4, "cn.sharesdk.system.email.Email"

    aput-object v4, v1, v2

    const/16 v2, 0x8

    const-string v4, "cn.sharesdk.system.text.ShortMessage"

    aput-object v4, v1, v2

    const/16 v2, 0x9

    const-string v4, "cn.sharesdk.tencent.qq.QQ"

    aput-object v4, v1, v2

    const/16 v2, 0xa

    const-string v4, "cn.sharesdk.tencent.qzone.QZone"

    aput-object v4, v1, v2

    const/16 v2, 0xb

    const-string v4, "cn.sharesdk.tencent.weibo.TencentWeibo"

    aput-object v4, v1, v2

    const/16 v2, 0xc

    const-string v4, "cn.sharesdk.twitter.Twitter"

    aput-object v4, v1, v2

    const/16 v2, 0xd

    const-string v4, "cn.sharesdk.wechat.friends.Wechat"

    aput-object v4, v1, v2

    const/16 v2, 0xe

    const-string v4, "cn.sharesdk.wechat.moments.WechatMoments"

    aput-object v4, v1, v2

    const/16 v2, 0xf

    const-string v4, "cn.sharesdk.wechat.favorite.WechatFavorite"

    aput-object v4, v1, v2

    const/16 v2, 0x10

    const-string v4, "cn.sharesdk.youdao.YouDao"

    aput-object v4, v1, v2

    const/16 v2, 0x11

    const-string v4, "cn.sharesdk.google.GooglePlus"

    aput-object v4, v1, v2

    const/16 v2, 0x12

    const-string v4, "cn.sharesdk.foursquare.FourSquare"

    aput-object v4, v1, v2

    const/16 v2, 0x13

    const-string v4, "cn.sharesdk.pinterest.Pinterest"

    aput-object v4, v1, v2

    const/16 v2, 0x14

    const-string v4, "cn.sharesdk.flickr.Flickr"

    aput-object v4, v1, v2

    const/16 v2, 0x15

    const-string v4, "cn.sharesdk.tumblr.Tumblr"

    aput-object v4, v1, v2

    const/16 v2, 0x16

    const-string v4, "cn.sharesdk.dropbox.Dropbox"

    aput-object v4, v1, v2

    const/16 v2, 0x17

    const-string v4, "cn.sharesdk.vkontakte.VKontakte"

    aput-object v4, v1, v2

    const/16 v2, 0x18

    const-string v4, "cn.sharesdk.instagram.Instagram"

    aput-object v4, v1, v2

    const/16 v2, 0x19

    const-string v4, "cn.sharesdk.yixin.friends.Yixin"

    aput-object v4, v1, v2

    const/16 v2, 0x1a

    const-string v4, "cn.sharesdk.yixin.moments.YixinMoments"

    aput-object v4, v1, v2

    const/16 v2, 0x1b

    const-string v4, "cn.sharesdk.mingdao.Mingdao"

    aput-object v4, v1, v2

    const/16 v2, 0x1c

    const-string v4, "cn.sharesdk.line.Line"

    aput-object v4, v1, v2

    const/16 v2, 0x1d

    const-string v4, "cn.sharesdk.kakao.story.KakaoStory"

    aput-object v4, v1, v2

    const/16 v2, 0x1e

    const-string v4, "cn.sharesdk.kakao.talk.KakaoTalk"

    aput-object v4, v1, v2

    const/16 v2, 0x1f

    const-string v4, "cn.sharesdk.whatsapp.WhatsApp"

    aput-object v4, v1, v2

    const/16 v2, 0x20

    const-string v4, "cn.sharesdk.pocket.Pocket"

    aput-object v4, v1, v2

    const/16 v2, 0x21

    const-string v4, "cn.sharesdk.instapaper.Instapaper"

    aput-object v4, v1, v2

    const/16 v2, 0x22

    const-string v4, "cn.sharesdk.facebookmessenger.FacebookMessenger"

    aput-object v4, v1, v2

    const/16 v2, 0x23

    const-string v4, "cn.sharesdk.alipay.friends.Alipay"

    aput-object v4, v1, v2

    const/16 v2, 0x24

    const-string v4, "cn.sharesdk.alipay.moments.AlipayMoments"

    aput-object v4, v1, v2

    const/16 v2, 0x25

    const-string v4, "cn.sharesdk.dingding.friends.Dingding"

    aput-object v4, v1, v2

    const/16 v2, 0x26

    const-string v4, "cn.sharesdk.youtube.Youtube"

    aput-object v4, v1, v2

    const/16 v2, 0x27

    const-string v4, "cn.sharesdk.meipai.Meipai"

    aput-object v4, v1, v2

    const/16 v2, 0x28

    const-string v4, "cn.sharesdk.telegram.Telegram"

    aput-object v4, v1, v2

    const/16 v2, 0x29

    const-string v4, "cn.sharesdk.cmcc.Cmcc"

    aput-object v4, v1, v2

    const/16 v2, 0x2a

    const-string v4, "cn.sharesdk.reddit.Reddit"

    aput-object v4, v1, v2

    const/16 v2, 0x2b

    const-string v4, "cn.sharesdk.telecom.Telecom"

    aput-object v4, v1, v2

    const/16 v2, 0x2c

    const-string v4, "cn.sharesdk.accountkit.Accountkit"

    aput-object v4, v1, v2

    const/16 v2, 0x2d

    const-string v4, "cn.sharesdk.douyin.Douyin"

    aput-object v4, v1, v2

    const/16 v2, 0x2e

    const-string v4, "cn.sharesdk.wework.Wework"

    aput-object v4, v1, v2

    const/16 v2, 0x2f

    const-string v4, "cn.sharesdk.oasis.Oasis"

    aput-object v4, v1, v2

    const/16 v2, 0x30

    const-string v4, "cn.sharesdk.hwaccount.HWAccount"

    aput-object v4, v1, v2

    const/16 v2, 0x31

    const-string v4, "cn.sharesdk.xmaccount.XMAccount"

    aput-object v4, v1, v2

    const/16 v2, 0x32

    const-string v4, "cn.sharesdk.snapchat.Snapchat"

    aput-object v4, v1, v2

    const/16 v2, 0x33

    const-string v4, "cn.sharesdk.littleredbook.Littleredbook"

    aput-object v4, v1, v2

    const/16 v2, 0x34

    const-string v4, "cn.sharesdk.kuaishou.Kuaishou"

    aput-object v4, v1, v2

    const/16 v2, 0x35

    const-string v4, "cn.sharesdk.watermelonvideo.Watermelonvideo"

    aput-object v4, v1, v2

    const/16 v2, 0x36

    const-string v4, "cn.sharesdk.tiktok.Tiktok"

    aput-object v4, v1, v2

    .line 111
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    if-ge v3, v0, :cond_0

    .line 112
    aget-object v4, v1, v3

    .line 116
    :try_start_0
    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v4

    .line 117
    check-cast v4, Lcn/sharesdk/framework/Platform;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v4

    .line 119
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcom/mob/tools/log/NLog;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-object v2
.end method
