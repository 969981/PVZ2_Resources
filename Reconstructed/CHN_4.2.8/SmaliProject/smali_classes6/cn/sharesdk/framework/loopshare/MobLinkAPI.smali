.class public Lcn/sharesdk/framework/loopshare/MobLinkAPI;
.super Ljava/lang/Object;
.source "MobLinkAPI.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/sharesdk/framework/loopshare/MobLinkAPI$SceneListener;
    }
.end annotation


# static fields
.field private static a:Lcn/sharesdk/framework/loopshare/MoblinkActionListener;

.field private static b:Lcn/sharesdk/framework/loopshare/LoopShareResultListener;

.field private static c:Lcn/sharesdk/framework/loopshare/LoopSharePasswordListener;

.field private static volatile d:Lcn/sharesdk/framework/loopshare/MobLinkAPI;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcn/sharesdk/framework/loopshare/MobLinkAPI;
    .locals 3

    .line 40
    const-class v0, Lcn/sharesdk/framework/loopshare/MobLinkAPI;

    monitor-enter v0

    .line 41
    :try_start_0
    sget-object v1, Lcn/sharesdk/framework/loopshare/MobLinkAPI;->d:Lcn/sharesdk/framework/loopshare/MobLinkAPI;

    if-nez v1, :cond_1

    .line 42
    const-class v1, Lcn/sharesdk/framework/loopshare/MobLinkAPI;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 43
    :try_start_1
    sget-object v2, Lcn/sharesdk/framework/loopshare/MobLinkAPI;->d:Lcn/sharesdk/framework/loopshare/MobLinkAPI;

    if-nez v2, :cond_0

    .line 44
    new-instance v2, Lcn/sharesdk/framework/loopshare/MobLinkAPI;

    invoke-direct {v2}, Lcn/sharesdk/framework/loopshare/MobLinkAPI;-><init>()V

    sput-object v2, Lcn/sharesdk/framework/loopshare/MobLinkAPI;->d:Lcn/sharesdk/framework/loopshare/MobLinkAPI;

    .line 46
    :cond_0
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v2

    .line 48
    :cond_1
    :goto_0
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 49
    sget-object v0, Lcn/sharesdk/framework/loopshare/MobLinkAPI;->d:Lcn/sharesdk/framework/loopshare/MobLinkAPI;

    return-object v0

    :catchall_1
    move-exception v1

    .line 48
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1
.end method

.method static synthetic a(Lcn/sharesdk/framework/loopshare/MoblinkActionListener;)Lcn/sharesdk/framework/loopshare/MoblinkActionListener;
    .locals 0

    .line 31
    sput-object p0, Lcn/sharesdk/framework/loopshare/MobLinkAPI;->a:Lcn/sharesdk/framework/loopshare/MoblinkActionListener;

    return-object p0
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 108
    const-string v0, "#(.*?)#"

    .line 109
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 110
    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    .line 111
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 112
    invoke-virtual {p0, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 114
    :cond_0
    const-string p0, ""

    return-object p0
.end method

.method public static a(Lcn/sharesdk/framework/loopshare/LoopSharePasswordListener;)V
    .locals 0

    .line 65
    sput-object p0, Lcn/sharesdk/framework/loopshare/MobLinkAPI;->c:Lcn/sharesdk/framework/loopshare/LoopSharePasswordListener;

    return-void
.end method

.method public static a(Lcn/sharesdk/framework/loopshare/LoopShareResultListener;)V
    .locals 0

    .line 57
    sput-object p0, Lcn/sharesdk/framework/loopshare/MobLinkAPI;->b:Lcn/sharesdk/framework/loopshare/LoopShareResultListener;

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

    .line 70
    const-string v0, "params"

    if-eqz p1, :cond_2

    .line 71
    :try_start_0
    sput-object p1, Lcn/sharesdk/framework/loopshare/MobLinkAPI;->a:Lcn/sharesdk/framework/loopshare/MoblinkActionListener;

    .line 72
    new-instance p1, Lcn/sharesdk/loopshare/Scene;

    invoke-direct {p1}, Lcn/sharesdk/loopshare/Scene;-><init>()V

    .line 73
    const-string v1, "path"

    invoke-virtual {p0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcn/sharesdk/loopshare/Scene;->setPath(Ljava/lang/String;)V

    .line 74
    invoke-virtual {p0, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Ljava/util/HashMap;

    if-eqz v1, :cond_0

    .line 75
    invoke-virtual {p0, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/HashMap;

    invoke-virtual {p1, p0}, Lcn/sharesdk/loopshare/Scene;->setParams(Ljava/util/HashMap;)V

    goto :goto_0

    .line 76
    :cond_0
    sget-object p0, Lcn/sharesdk/framework/loopshare/MobLinkAPI;->a:Lcn/sharesdk/framework/loopshare/MoblinkActionListener;

    if-eqz p0, :cond_1

    .line 78
    new-instance p0, Ljava/lang/Throwable;

    const-string p1, "setLoopshareCustomParams: When params is key, value needs to be Hash Map type"

    invoke-direct {p0, p1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    .line 79
    sget-object p1, Lcn/sharesdk/framework/loopshare/MobLinkAPI;->a:Lcn/sharesdk/framework/loopshare/MoblinkActionListener;

    invoke-interface {p1, p0}, Lcn/sharesdk/framework/loopshare/MoblinkActionListener;->onError(Ljava/lang/Throwable;)V

    return-void

    .line 84
    :cond_1
    :goto_0
    new-instance p0, Lcn/sharesdk/framework/loopshare/MobLinkAPI$1;

    invoke-direct {p0}, Lcn/sharesdk/framework/loopshare/MobLinkAPI$1;-><init>()V

    invoke-static {p1, p0}, Lcn/sharesdk/loopshare/MobLink;->getMobID(Lcn/sharesdk/loopshare/Scene;Lcn/sharesdk/loopshare/ActionListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    .line 103
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcom/mob/tools/log/NLog;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "LoopShare MobLinkAPI mobLinkGetMobID"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p1, p0, v0}, Lcom/mob/tools/log/NLog;->e(Ljava/lang/Object;[Ljava/lang/Object;)I

    :cond_2
    :goto_1
    return-void
.end method

.method public static a(Ljava/util/HashMap;Ljava/lang/String;Lcn/sharesdk/framework/loopshare/LoopSharePasswordListener;)V
    .locals 2
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

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    .line 228
    :try_start_0
    invoke-static {p2}, Lcn/sharesdk/framework/loopshare/MobLinkAPI;->a(Lcn/sharesdk/framework/loopshare/LoopSharePasswordListener;)V

    .line 229
    new-instance p2, Lcn/sharesdk/framework/loopshare/MobLinkAPI$3;

    invoke-direct {p2, p1}, Lcn/sharesdk/framework/loopshare/MobLinkAPI$3;-><init>(Ljava/lang/String;)V

    invoke-static {p0, p2}, Lcn/sharesdk/framework/ShareSDK;->mobLinkGetMobID(Ljava/util/HashMap;Lcn/sharesdk/framework/loopshare/MoblinkActionListener;)V

    .line 264
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcom/mob/tools/log/NLog;

    move-result-object p0

    const-string p1, "LoopShare MobLinkAPI preparePassWord is OK"

    new-array p2, v0, [Ljava/lang/Object;

    invoke-virtual {p0, p1, p2}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    goto :goto_0

    .line 266
    :cond_0
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcom/mob/tools/log/NLog;

    move-result-object p0

    const-string p1, "LoopShare MobLinkAPI preparePassWord listener is null"

    new-array p2, v0, [Ljava/lang/Object;

    invoke-virtual {p0, p1, p2}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 269
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcom/mob/tools/log/NLog;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "LoopShare MobLinkAPI preparePassWord "

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-array p2, v0, [Ljava/lang/Object;

    invoke-virtual {p1, p0, p2}, Lcom/mob/tools/log/NLog;->e(Ljava/lang/Object;[Ljava/lang/Object;)I

    :goto_0
    return-void
.end method

.method public static a(ZLcn/sharesdk/framework/loopshare/LoopSharePasswordListener;)V
    .locals 5

    const-string v0, "LoopShare MobLinkAPI readPassWord read mobId is: "

    const/4 v1, 0x0

    if-eqz p1, :cond_6

    .line 123
    invoke-static {p1}, Lcn/sharesdk/framework/loopshare/MobLinkAPI;->a(Lcn/sharesdk/framework/loopshare/LoopSharePasswordListener;)V

    .line 124
    invoke-static {}, Lcn/sharesdk/framework/loopshare/MobLinkAPI;->f()Ljava/lang/String;

    move-result-object p1

    .line 125
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcom/mob/tools/log/NLog;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "LoopShare MobLinkAPI readPassWord clipContent: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v1, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v4}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 129
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 131
    invoke-static {p1}, Lcn/sharesdk/framework/loopshare/MobLinkAPI;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 132
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 133
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcom/mob/tools/log/NLog;

    move-result-object p0

    const-string p1, "LoopShare MobLinkAPI readPassWord Regular match string is null "

    new-array v0, v1, [Ljava/lang/Object;

    invoke-virtual {p0, p1, v0}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 134
    invoke-static {}, Lcn/sharesdk/framework/loopshare/MobLinkAPI;->c()Lcn/sharesdk/framework/loopshare/LoopSharePasswordListener;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 135
    invoke-static {}, Lcn/sharesdk/framework/loopshare/MobLinkAPI;->c()Lcn/sharesdk/framework/loopshare/LoopSharePasswordListener;

    move-result-object p0

    new-instance p1, Ljava/lang/Throwable;

    const-string v0, "readPassWord Regular match string is error"

    invoke-direct {p1, v0}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-interface {p0, p1}, Lcn/sharesdk/framework/loopshare/LoopSharePasswordListener;->onError(Ljava/lang/Throwable;)V

    :cond_0
    return-void

    .line 140
    :cond_1
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcom/mob/tools/log/NLog;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v2, v0, v1}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    if-eqz p0, :cond_2

    .line 143
    invoke-static {}, Lcn/sharesdk/framework/loopshare/MobLinkAPI;->g()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 159
    :cond_2
    new-instance p0, Lcn/sharesdk/framework/loopshare/MobLinkAPI$2;

    invoke-direct {p0}, Lcn/sharesdk/framework/loopshare/MobLinkAPI$2;-><init>()V

    invoke-static {p1, p0}, Lcn/sharesdk/loopshare/utils/b;->a(Ljava/lang/String;Lcn/sharesdk/loopshare/ActionListener;)V

    goto :goto_0

    .line 146
    :cond_3
    :try_start_1
    invoke-static {}, Lcn/sharesdk/framework/loopshare/MobLinkAPI;->c()Lcn/sharesdk/framework/loopshare/LoopSharePasswordListener;

    move-result-object p0

    if-eqz p0, :cond_4

    .line 147
    invoke-static {}, Lcn/sharesdk/framework/loopshare/MobLinkAPI;->c()Lcn/sharesdk/framework/loopshare/LoopSharePasswordListener;

    move-result-object p0

    new-instance p1, Ljava/lang/Throwable;

    const-string v0, "The clipboard is empty"

    invoke-direct {p1, v0}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-interface {p0, p1}, Lcn/sharesdk/framework/loopshare/LoopSharePasswordListener;->onError(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_4
    return-void

    :catchall_0
    move-exception p0

    .line 152
    invoke-static {}, Lcn/sharesdk/framework/loopshare/MobLinkAPI;->c()Lcn/sharesdk/framework/loopshare/LoopSharePasswordListener;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 153
    new-instance p1, Ljava/lang/Throwable;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "readPassWord catch: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    .line 154
    invoke-static {}, Lcn/sharesdk/framework/loopshare/MobLinkAPI;->c()Lcn/sharesdk/framework/loopshare/LoopSharePasswordListener;

    move-result-object p0

    invoke-interface {p0, p1}, Lcn/sharesdk/framework/loopshare/LoopSharePasswordListener;->onError(Ljava/lang/Throwable;)V

    :cond_5
    return-void

    .line 175
    :cond_6
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcom/mob/tools/log/NLog;

    move-result-object p0

    const-string p1, "LoopShare MobLinkAPI readPassWord listener is null"

    new-array v0, v1, [Ljava/lang/Object;

    invoke-virtual {p0, p1, v0}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    :goto_0
    return-void
.end method

.method public static b()Lcn/sharesdk/framework/loopshare/LoopShareResultListener;
    .locals 1

    .line 53
    sget-object v0, Lcn/sharesdk/framework/loopshare/MobLinkAPI;->b:Lcn/sharesdk/framework/loopshare/LoopShareResultListener;

    return-object v0
.end method

.method public static b(Lcn/sharesdk/framework/loopshare/LoopShareResultListener;)V
    .locals 4

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    .line 276
    :try_start_0
    invoke-static {p0}, Lcn/sharesdk/framework/loopshare/MobLinkAPI;->a(Lcn/sharesdk/framework/loopshare/LoopShareResultListener;)V

    .line 280
    :cond_0
    const-string p0, "sdfwe435fdsr34656uthfwer32ufeh439=="

    new-instance v1, Lcn/sharesdk/framework/loopshare/MobLinkAPI$SceneListener;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcn/sharesdk/framework/loopshare/MobLinkAPI$SceneListener;-><init>(Lcn/sharesdk/framework/loopshare/MobLinkAPI$1;)V

    invoke-static {p0, v1}, Lcn/sharesdk/loopshare/MobLink;->registerSpecifiedSchemeListener(Ljava/lang/String;Lcn/sharesdk/loopshare/RestoreSceneListener;)V

    .line 282
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcom/mob/tools/log/NLog;

    move-result-object p0

    const-string v1, "LoopShare MobLinkAPI prepareLoopShare is OK"

    new-array v2, v0, [Ljava/lang/Object;

    invoke-virtual {p0, v1, v2}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 284
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcom/mob/tools/log/NLog;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "LoopShare MobLinkAPI prepareLoopShare "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {v1, p0, v0}, Lcom/mob/tools/log/NLog;->e(Ljava/lang/Object;[Ljava/lang/Object;)I

    :goto_0
    return-void
.end method

.method public static c()Lcn/sharesdk/framework/loopshare/LoopSharePasswordListener;
    .locals 1

    .line 61
    sget-object v0, Lcn/sharesdk/framework/loopshare/MobLinkAPI;->c:Lcn/sharesdk/framework/loopshare/LoopSharePasswordListener;

    return-object v0
.end method

.method public static d()Ljava/util/HashMap;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 290
    :try_start_0
    new-instance v0, Lcn/sharesdk/framework/loopshare/a;

    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "sharesdk_moblink_sp"

    invoke-direct {v0, v1, v2}, Lcn/sharesdk/framework/loopshare/a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 291
    const-string v1, "share_restore_extra"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcn/sharesdk/framework/loopshare/a;->b(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 292
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 293
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 294
    new-instance v1, Lcom/mob/tools/utils/Hashon;

    invoke-direct {v1}, Lcom/mob/tools/utils/Hashon;-><init>()V

    invoke-virtual {v1, v0}, Lcom/mob/tools/utils/Hashon;->fromJson(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    .line 298
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcom/mob/tools/log/NLog;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "LoopShare MobLinkAPI getCustomDataFromLoopShare "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v0, v2}, Lcom/mob/tools/log/NLog;->e(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 300
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    return-object v0
.end method

.method static synthetic e()Lcn/sharesdk/framework/loopshare/MoblinkActionListener;
    .locals 1

    .line 31
    sget-object v0, Lcn/sharesdk/framework/loopshare/MobLinkAPI;->a:Lcn/sharesdk/framework/loopshare/MoblinkActionListener;

    return-object v0
.end method

.method private static f()Ljava/lang/String;
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 185
    :try_start_0
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "clipboard"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ClipboardManager;

    if-eqz v2, :cond_1

    .line 187
    invoke-virtual {v2}, Landroid/content/ClipboardManager;->hasPrimaryClip()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Landroid/content/ClipboardManager;->getPrimaryClip()Landroid/content/ClipData;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ClipData;->getItemCount()I

    move-result v3

    if-lez v3, :cond_1

    .line 188
    invoke-virtual {v2}, Landroid/content/ClipboardManager;->getPrimaryClip()Landroid/content/ClipData;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ClipData$Item;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    .line 189
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 190
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    return-object v0

    :catchall_0
    move-exception v2

    .line 198
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcom/mob/tools/log/NLog;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "LoopShare MobLinkAPI getClipContent catch: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v3, v2, v1}, Lcom/mob/tools/log/NLog;->e(Ljava/lang/Object;[Ljava/lang/Object;)I

    :cond_1
    return-object v0
.end method

.method private static g()V
    .locals 5

    const/4 v0, 0x0

    .line 209
    :try_start_0
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "clipboard"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ClipboardManager;

    if-eqz v1, :cond_0

    .line 211
    invoke-virtual {v1}, Landroid/content/ClipboardManager;->getPrimaryClip()Landroid/content/ClipData;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    const/4 v2, 0x0

    .line 212
    invoke-virtual {v1, v2}, Landroid/content/ClipboardManager;->setText(Ljava/lang/CharSequence;)V

    .line 215
    :cond_0
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcom/mob/tools/log/NLog;

    move-result-object v1

    const-string v2, "LoopShare MobLinkAPI clearClipboard is ok"

    new-array v3, v0, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 217
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcom/mob/tools/log/NLog;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "LoopShare MobLinkAPI clearClipboard catch: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {v2, v1, v0}, Lcom/mob/tools/log/NLog;->e(Ljava/lang/Object;[Ljava/lang/Object;)I

    :goto_0
    return-void
.end method
