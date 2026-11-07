.class public Lgbsdk/common/host/aboj;
.super Ljava/lang/Object;
.source "MonitorConfigure.java"


# static fields
.field private static b:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lgbsdk/common/host/abok;",
            ">;"
        }
    .end annotation
.end field

.field private static uB:Lgbsdk/common/host/abok;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 19
    new-instance v0, Lgbsdk/common/host/abno;

    invoke-direct {v0}, Lgbsdk/common/host/abno;-><init>()V

    sput-object v0, Lgbsdk/common/host/aboj;->uB:Lgbsdk/common/host/abok;

    .line 21
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lgbsdk/common/host/aboj;->b:Ljava/util/concurrent/ConcurrentHashMap;

    .line 23
    sget-object v1, Lgbsdk/common/host/aboj;->uB:Lgbsdk/common/host/abok;

    const-string v2, "default"

    invoke-virtual {v0, v2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static C(Ljava/lang/String;)I
    .locals 1

    .line 101
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lgbsdk/common/host/aboj;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 102
    sget-object v0, Lgbsdk/common/host/aboj;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lgbsdk/common/host/abok;

    invoke-interface {p0}, Lgbsdk/common/host/abok;->reportFailRepeatCount()I

    move-result p0

    return p0

    .line 104
    :cond_0
    sget-object p0, Lgbsdk/common/host/aboj;->uB:Lgbsdk/common/host/abok;

    invoke-interface {p0}, Lgbsdk/common/host/abok;->reportFailRepeatCount()I

    move-result p0

    return p0
.end method

.method public static F(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 73
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lgbsdk/common/host/aboj;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 74
    sget-object v0, Lgbsdk/common/host/aboj;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lgbsdk/common/host/abok;

    invoke-interface {p0, p1}, Lgbsdk/common/host/abok;->reportUrl(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 76
    :cond_0
    sget-object p0, Lgbsdk/common/host/aboj;->uB:Lgbsdk/common/host/abok;

    invoke-interface {p0, p1}, Lgbsdk/common/host/abok;->reportUrl(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/lang/String;)I
    .locals 1

    .line 49
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lgbsdk/common/host/aboj;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 50
    sget-object v0, Lgbsdk/common/host/aboj;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lgbsdk/common/host/abok;

    invoke-interface {p0}, Lgbsdk/common/host/abok;->reportInterval()I

    move-result p0

    return p0

    .line 52
    :cond_0
    sget-object p0, Lgbsdk/common/host/aboj;->uB:Lgbsdk/common/host/abok;

    invoke-interface {p0}, Lgbsdk/common/host/abok;->reportInterval()I

    move-result p0

    return p0
.end method

.method public static a(Ljava/lang/String;Lgbsdk/common/host/abok;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 40
    :cond_0
    sget-object v0, Lgbsdk/common/host/aboj;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static b(Ljava/lang/String;)I
    .locals 1

    .line 61
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lgbsdk/common/host/aboj;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 62
    sget-object v0, Lgbsdk/common/host/aboj;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lgbsdk/common/host/abok;

    invoke-interface {p0}, Lgbsdk/common/host/abok;->reportCount()I

    move-result p0

    return p0

    .line 64
    :cond_0
    sget-object p0, Lgbsdk/common/host/aboj;->uB:Lgbsdk/common/host/abok;

    invoke-interface {p0}, Lgbsdk/common/host/abok;->reportCount()I

    move-result p0

    return p0
.end method

.method public static c(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 1

    .line 89
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lgbsdk/common/host/aboj;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 90
    sget-object v0, Lgbsdk/common/host/aboj;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lgbsdk/common/host/abok;

    invoke-interface {p0}, Lgbsdk/common/host/abok;->reportJsonHeaderInfo()Lorg/json/JSONObject;

    move-result-object p0

    return-object p0

    .line 92
    :cond_0
    sget-object p0, Lgbsdk/common/host/aboj;->uB:Lgbsdk/common/host/abok;

    invoke-interface {p0}, Lgbsdk/common/host/abok;->reportJsonHeaderInfo()Lorg/json/JSONObject;

    move-result-object p0

    return-object p0
.end method

.method public static e(Ljava/lang/String;)I
    .locals 1

    .line 113
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lgbsdk/common/host/aboj;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 114
    sget-object v0, Lgbsdk/common/host/aboj;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lgbsdk/common/host/abok;

    invoke-interface {p0}, Lgbsdk/common/host/abok;->reportFailRepeatBaseTime()I

    move-result p0

    :goto_0
    mul-int/lit16 p0, p0, 0x3e8

    return p0

    .line 116
    :cond_0
    sget-object p0, Lgbsdk/common/host/aboj;->uB:Lgbsdk/common/host/abok;

    invoke-interface {p0}, Lgbsdk/common/host/abok;->reportFailRepeatBaseTime()I

    move-result p0

    goto :goto_0
.end method

.method public static f(Ljava/lang/String;)Z
    .locals 1

    .line 128
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lgbsdk/common/host/aboj;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 129
    sget-object v0, Lgbsdk/common/host/aboj;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lgbsdk/common/host/abok;

    invoke-interface {p0}, Lgbsdk/common/host/abok;->getRemoveSwitch()Z

    move-result p0

    return p0

    .line 131
    :cond_0
    sget-object p0, Lgbsdk/common/host/aboj;->uB:Lgbsdk/common/host/abok;

    invoke-interface {p0}, Lgbsdk/common/host/abok;->getRemoveSwitch()Z

    move-result p0

    return p0
.end method
