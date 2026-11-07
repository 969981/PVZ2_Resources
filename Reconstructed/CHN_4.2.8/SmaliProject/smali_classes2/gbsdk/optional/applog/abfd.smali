.class public final Lgbsdk/optional/applog/abfd;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static a:Lcom/meituan/robust/ChangeQuickRedirect;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)Lgbsdk/optional/applog/abfa;
    .locals 9

    const-string v0, ""

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    sget-object v4, Lgbsdk/optional/applog/abfd;->a:Lcom/meituan/robust/ChangeQuickRedirect;

    const/4 v5, 0x0

    const-string v6, "d6d846521ff666935c9b8f68ed256a4e"

    invoke-static {v2, v5, v4, v1, v6}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object p0, v2, Lcom/meituan/robust/PatchProxyResult;->result:Ljava/lang/Object;

    check-cast p0, Lgbsdk/optional/applog/abfa;

    return-object p0

    :cond_0
    invoke-static {}, Lgbsdk/optional/applog/abbe;->f()Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance p0, Lgbsdk/optional/applog/abhi;

    new-instance v0, Lgbsdk/optional/applog/abig;

    invoke-direct {v0}, Lgbsdk/optional/applog/abig;-><init>()V

    invoke-direct {p0, v0}, Lgbsdk/optional/applog/abhi;-><init>(Lgbsdk/optional/applog/abfa;)V

    return-object p0

    .line 1
    :cond_1
    sget-object v2, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string v4, "XIAOMI"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    sget-object v2, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    sget-object v2, Landroid/os/Build;->BRAND:Ljava/lang/String;

    const-string v4, "REDMI"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v2, 0x1

    :goto_1
    if-eqz v2, :cond_4

    .line 2
    invoke-static {}, Lgbsdk/optional/applog/abig;->b()Z

    move-result v2

    if-eqz v2, :cond_4

    new-instance p0, Lgbsdk/optional/applog/abig;

    invoke-direct {p0}, Lgbsdk/optional/applog/abig;-><init>()V

    return-object p0

    .line 3
    :cond_4
    sget-object v2, Lgbsdk/optional/applog/abhj;->b:Lgbsdk/optional/applog/abdk;

    new-array v4, v3, [Ljava/lang/Object;

    invoke-virtual {v2, v4}, Lgbsdk/optional/applog/abdk;->b([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 4
    new-instance p0, Lgbsdk/optional/applog/abhj;

    invoke-direct {p0}, Lgbsdk/optional/applog/abhj;-><init>()V

    return-object p0

    :cond_5
    invoke-static {}, Lgbsdk/optional/applog/abbe;->c()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-static {}, Lgbsdk/optional/applog/abbe;->d()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-static {}, Lcom/bytedance/applog/log/LoggerImpl;->global()Lcom/bytedance/applog/log/IAppLogLogger;

    move-result-object p0

    new-array v0, v3, [Ljava/lang/Object;

    const-string v1, "honor# Oaid#old honor oaid"

    invoke-interface {p0, v1, v0}, Lcom/bytedance/applog/log/IAppLogLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance p0, Lgbsdk/optional/applog/abhl;

    invoke-direct {p0}, Lgbsdk/optional/applog/abhl;-><init>()V

    return-object p0

    :cond_6
    invoke-static {}, Lgbsdk/optional/applog/abbe;->c()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-static {}, Lgbsdk/optional/applog/abbe;->d()Z

    move-result v2

    if-nez v2, :cond_7

    invoke-static {}, Lcom/bytedance/applog/log/LoggerImpl;->global()Lcom/bytedance/applog/log/IAppLogLogger;

    move-result-object p0

    new-array v0, v3, [Ljava/lang/Object;

    const-string v1, "honor# Oaid#new honor oaid"

    invoke-interface {p0, v1, v0}, Lcom/bytedance/applog/log/IAppLogLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance p0, Lgbsdk/optional/applog/abhn;

    invoke-direct {p0}, Lgbsdk/optional/applog/abhn;-><init>()V

    return-object p0

    :cond_7
    invoke-static {}, Lgbsdk/optional/applog/abbe;->b()Z

    move-result v2

    if-eqz v2, :cond_8

    new-instance p0, Lgbsdk/optional/applog/abhl;

    invoke-direct {p0}, Lgbsdk/optional/applog/abhl;-><init>()V

    return-object p0

    .line 5
    :cond_8
    sget-object v2, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string v4, "OnePlus"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 6
    new-instance p0, Lgbsdk/optional/applog/abhi;

    .line 7
    invoke-direct {p0, v5}, Lgbsdk/optional/applog/abhi;-><init>(Lgbsdk/optional/applog/abfa;)V

    return-object p0

    .line 8
    :cond_9
    sget-object v2, Landroid/os/Build;->BRAND:Ljava/lang/String;

    if-nez v2, :cond_a

    const/4 v2, 0x0

    goto :goto_2

    :cond_a
    sget-object v4, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v2, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "meizu"

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    :goto_2
    if-eqz v2, :cond_b

    .line 9
    new-instance p0, Lgbsdk/optional/applog/abhh;

    invoke-direct {p0}, Lgbsdk/optional/applog/abhh;-><init>()V

    return-object p0

    :cond_b
    const-string v2, "android.os.SystemProperties"

    .line 10
    :try_start_0
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v4, "get"

    const/4 v6, 0x2

    :try_start_1
    new-array v7, v6, [Ljava/lang/Class;

    const-class v8, Ljava/lang/String;

    aput-object v8, v7, v3

    const-class v8, Ljava/lang/String;

    aput-object v8, v7, v1

    invoke-virtual {v2, v4, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    new-array v6, v6, [Ljava/lang/Object;

    const-string v7, "ro.build.uiversion"

    aput-object v7, v6, v3

    aput-object v0, v6, v1

    invoke-virtual {v4, v2, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {}, Lcom/bytedance/applog/log/LoggerImpl;->global()Lcom/bytedance/applog/log/IAppLogLogger;

    move-result-object v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Current 360OS UI: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-array v7, v3, [Ljava/lang/Object;

    invoke-interface {v4, v6, v7}, Lcom/bytedance/applog/log/IAppLogLogger;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz v2, :cond_c

    const-string v4, "360UI"

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_c

    const/4 v2, 0x1

    goto :goto_3

    :catchall_0
    invoke-static {}, Lcom/bytedance/applog/log/LoggerImpl;->global()Lcom/bytedance/applog/log/IAppLogLogger;

    move-result-object v2

    new-array v4, v3, [Ljava/lang/Object;

    const-string v6, "Current OS isn\'t 360OS."

    invoke-interface {v2, v6, v4}, Lcom/bytedance/applog/log/IAppLogLogger;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_c
    const/4 v2, 0x0

    :goto_3
    if-eqz v2, :cond_d

    .line 11
    invoke-static {}, Lcom/bytedance/applog/log/LoggerImpl;->global()Lcom/bytedance/applog/log/IAppLogLogger;

    move-result-object p0

    new-array v0, v3, [Ljava/lang/Object;

    const-string v1, "Oaid#Qiku360OaidImpl"

    invoke-interface {p0, v1, v0}, Lcom/bytedance/applog/log/IAppLogLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance p0, Lgbsdk/optional/applog/abie;

    invoke-direct {p0}, Lgbsdk/optional/applog/abie;-><init>()V

    return-object p0

    :cond_d
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1c

    if-le v2, v4, :cond_19

    .line 12
    sget-object v2, Landroid/os/Build;->BRAND:Ljava/lang/String;

    const-string v4, "samsung"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_f

    sget-object v2, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_e

    goto :goto_4

    :cond_e
    const/4 v2, 0x0

    goto :goto_5

    :cond_f
    :goto_4
    const/4 v2, 0x1

    :goto_5
    if-eqz v2, :cond_10

    .line 13
    new-instance p0, Lgbsdk/optional/applog/abid;

    invoke-direct {p0}, Lgbsdk/optional/applog/abid;-><init>()V

    return-object p0

    .line 14
    :cond_10
    sget-object v2, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    if-nez v2, :cond_11

    move-object v2, v0

    goto :goto_6

    :cond_11
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 15
    :goto_6
    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    const-string v4, "NUBIA"

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 16
    new-instance p0, Lgbsdk/optional/applog/abhg;

    invoke-direct {p0}, Lgbsdk/optional/applog/abhg;-><init>()V

    return-object p0

    .line 17
    :cond_12
    sget-object v2, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    const-string v5, "VIBEUI_V2"

    if-nez v4, :cond_13

    invoke-virtual {v2, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    goto :goto_7

    :cond_13
    const-string v2, "ro.build.version.incremental"

    invoke-static {v2}, Lgbsdk/optional/applog/abbe;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_14

    invoke-virtual {v2, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_14

    goto :goto_7

    :cond_14
    const/4 v1, 0x0

    :goto_7
    if-eqz v1, :cond_15

    .line 18
    new-instance p0, Lgbsdk/optional/applog/abhm;

    invoke-direct {p0}, Lgbsdk/optional/applog/abhm;-><init>()V

    return-object p0

    .line 19
    :cond_15
    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    if-nez v1, :cond_16

    goto :goto_8

    :cond_16
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 20
    :goto_8
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ASUS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 21
    new-instance p0, Lgbsdk/optional/applog/abhp;

    invoke-direct {p0}, Lgbsdk/optional/applog/abhp;-><init>()V

    return-object p0

    :cond_17
    new-instance v0, Lgbsdk/optional/applog/abhq;

    invoke-direct {v0, p0}, Lgbsdk/optional/applog/abhq;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p0}, Lgbsdk/optional/applog/abho;->a(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_18

    return-object v0

    :cond_18
    new-instance p0, Lgbsdk/optional/applog/abhr;

    invoke-direct {p0}, Lgbsdk/optional/applog/abhr;-><init>()V

    return-object p0

    :cond_19
    invoke-static {}, Lgbsdk/optional/applog/abbe;->e()Z

    move-result v0

    if-nez v0, :cond_1a

    invoke-static {p0}, Lgbsdk/optional/applog/abhl;->c(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_1a

    new-instance p0, Lgbsdk/optional/applog/abhl;

    invoke-direct {p0}, Lgbsdk/optional/applog/abhl;-><init>()V

    return-object p0

    :cond_1a
    return-object v5
.end method
