.class public Lgbsdk/common/host/aboo;
.super Ljava/lang/Object;
.source "HumeSDK.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "HumeSDK"

.field public static changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect; = null

.field private static final xY:I = 0x71777778

.field private static final xZ:I = -0x6699999a

.field private static final ya:I = 0x71777777

.field private static yb:[Ljava/lang/String;

.field private static volatile yc:Z

.field private static yd:Lgbsdk/common/host/abon;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    .line 30
    sput-object v0, Lgbsdk/common/host/aboo;->yb:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lgbsdk/common/host/abon;)V
    .locals 0

    .line 44
    sput-object p0, Lgbsdk/common/host/aboo;->yd:Lgbsdk/common/host/abon;

    const/4 p0, 0x0

    .line 45
    sput-boolean p0, Lgbsdk/common/host/aboo;->yc:Z

    return-void
.end method

.method public static ad(Landroid/content/Context;)Ljava/lang/String;
    .locals 6

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    sget-object v3, Lgbsdk/common/host/aboo;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const/4 v4, 0x0

    const-string v5, "c5d025f212c15401b82a51dc0b7df7f5"

    invoke-static {v1, v4, v3, v0, v5}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object p0, v1, Lcom/meituan/robust/PatchProxyResult;->result:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    return-object p0

    .line 63
    :cond_0
    sget-boolean v1, Lgbsdk/common/host/aboo;->yc:Z

    if-nez v1, :cond_1

    .line 64
    invoke-static {p0}, Lgbsdk/common/host/aboo;->af(Landroid/content/Context;)V

    .line 65
    sput-boolean v0, Lgbsdk/common/host/aboo;->yc:Z

    .line 67
    :cond_1
    sget-object p0, Lgbsdk/common/host/aboo;->yb:[Ljava/lang/String;

    aget-object p0, p0, v2

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_2

    .line 68
    sget-object p0, Lgbsdk/common/host/aboo;->yb:[Ljava/lang/String;

    aget-object p0, p0, v2

    return-object p0

    .line 69
    :cond_2
    sget-object p0, Lgbsdk/common/host/aboo;->yb:[Ljava/lang/String;

    aget-object p0, p0, v0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_3

    .line 70
    sget-object p0, Lgbsdk/common/host/aboo;->yb:[Ljava/lang/String;

    aget-object p0, p0, v0

    return-object p0

    :cond_3
    const-string p0, ""

    return-object p0
.end method

.method private static ae(Landroid/content/Context;)Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    sget-object v2, Lgbsdk/common/host/aboo;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const/4 v3, 0x0

    const-string v4, "115d46d92b9a734f3ec81a6141e19c16"

    invoke-static {v1, v3, v2, v0, v4}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object p0, v1, Lcom/meituan/robust/PatchProxyResult;->result:Ljava/lang/Object;

    check-cast p0, Ljava/util/Map;

    return-object p0

    .line 77
    :cond_0
    sget-boolean v1, Lgbsdk/common/host/aboo;->yc:Z

    if-nez v1, :cond_1

    .line 78
    invoke-static {p0}, Lgbsdk/common/host/aboo;->af(Landroid/content/Context;)V

    .line 79
    sput-boolean v0, Lgbsdk/common/host/aboo;->yc:Z

    .line 81
    :cond_1
    sget-object p0, Lgbsdk/common/host/aboo;->yb:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object p0, p0, v0

    invoke-static {p0}, Lgbsdk/common/host/aboo;->bC(Ljava/lang/String;)Ljava/util/Map;

    move-result-object p0

    if-nez p0, :cond_2

    .line 82
    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    :cond_2
    return-object p0
.end method

.method private static af(Landroid/content/Context;)V
    .locals 7

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    sget-object v3, Lgbsdk/common/host/aboo;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const/4 v4, 0x0

    const-string v5, "268f0004091b1c3a1faeee8aaa8f5d15"

    invoke-static {v1, v4, v3, v0, v5}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x3

    new-array v3, v1, [I

    .line 87
    fill-array-data v3, :array_0

    .line 88
    invoke-static {p0}, Lgbsdk/common/host/aboo;->ag(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    .line 89
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    const-string v5, ""

    if-eqz v4, :cond_1

    .line 90
    filled-new-array {v5, v5, v5}, [Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lgbsdk/common/host/aboo;->yb:[Ljava/lang/String;

    .line 92
    :cond_1
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 94
    invoke-static {v4, v3}, Lgbsdk/common/host/abop;->a(Ljava/io/File;[I)[Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_2

    goto :goto_0

    .line 95
    :cond_2
    sget-object p0, Lgbsdk/common/host/aboo;->yb:[Ljava/lang/String;

    :goto_0
    sput-object p0, Lgbsdk/common/host/aboo;->yb:[Ljava/lang/String;

    .line 96
    array-length v3, p0

    const/4 v6, 0x2

    if-lt v3, v6, :cond_4

    aget-object p0, p0, v2

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_4

    sget-object p0, Lgbsdk/common/host/aboo;->yb:[Ljava/lang/String;

    aget-object p0, p0, v0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_4

    .line 98
    invoke-static {v4}, Lgbsdk/common/host/abpk;->D(Ljava/io/File;)Ljava/lang/String;

    move-result-object p0

    .line 99
    sget-object v0, Lgbsdk/common/host/aboo;->yb:[Ljava/lang/String;

    if-nez p0, :cond_3

    move-object p0, v5

    :cond_3
    aput-object p0, v0, v2

    .line 102
    :cond_4
    sget-object p0, Lgbsdk/common/host/aboo;->yb:[Ljava/lang/String;

    array-length v0, p0

    if-lt v0, v1, :cond_6

    aget-object p0, p0, v6

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_6

    .line 103
    sget-object p0, Lgbsdk/common/host/aboo;->yb:[Ljava/lang/String;

    aget-object p0, p0, v6

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    const/4 v0, 0x4

    if-le p0, v0, :cond_5

    .line 105
    sget-object v0, Lgbsdk/common/host/aboo;->yb:[Ljava/lang/String;

    aget-object v1, v0, v6

    sub-int/2addr p0, v6

    invoke-virtual {v1, v6, p0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    aput-object p0, v0, v6

    goto :goto_1

    .line 107
    :cond_5
    sget-object p0, Lgbsdk/common/host/aboo;->yb:[Ljava/lang/String;

    aput-object v5, p0, v6

    :cond_6
    :goto_1
    return-void

    :array_0
    .array-data 4
        -0x6699999a
        0x71777777
        0x71777778
    .end array-data
.end method

.method private static ag(Landroid/content/Context;)Ljava/lang/String;
    .locals 5

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    sget-object v2, Lgbsdk/common/host/aboo;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const/4 v3, 0x0

    const-string v4, "2742e633c9e5ab998ef4a87704f65526"

    invoke-static {v1, v3, v2, v0, v4}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, v0, Lcom/meituan/robust/PatchProxyResult;->result:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    return-object p0

    .line 114
    :cond_0
    sget-object v0, Lgbsdk/common/host/aboo;->yd:Lgbsdk/common/host/abon;

    if-eqz v0, :cond_1

    .line 116
    :try_start_0
    invoke-interface {v0, p0}, Lgbsdk/common/host/abon;->ah(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 118
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    move-object v0, v3

    .line 121
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 123
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    if-nez p0, :cond_2

    return-object v3

    .line 127
    :cond_2
    iget-object v0, p0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p0

    .line 129
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_3
    :goto_1
    return-object v0
.end method

.method private static bC(Ljava/lang/String;)Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    sget-object v2, Lgbsdk/common/host/aboo;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const/4 v3, 0x0

    const-string v4, "19a6699d0b84a27b42afbd53445f0a43"

    invoke-static {v1, v3, v2, v0, v4}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, v0, Lcom/meituan/robust/PatchProxyResult;->result:Ljava/lang/Object;

    check-cast p0, Ljava/util/Map;

    return-object p0

    .line 136
    :cond_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-object v3

    .line 140
    :cond_1
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 141
    invoke-virtual {v0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object p0

    .line 142
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 143
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 144
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 145
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_2
    return-object v1

    :catch_0
    move-exception p0

    .line 151
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    :catch_1
    move-exception p0

    .line 149
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    :goto_1
    return-object v3
.end method

.method public static getChannel(Landroid/content/Context;)Ljava/lang/String;
    .locals 5

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    sget-object v2, Lgbsdk/common/host/aboo;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const/4 v3, 0x0

    const-string v4, "063442b73c847eff24a9cf32a1bb9304"

    invoke-static {v1, v3, v2, v0, v4}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object p0, v1, Lcom/meituan/robust/PatchProxyResult;->result:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    return-object p0

    .line 50
    :cond_0
    sget-boolean v1, Lgbsdk/common/host/aboo;->yc:Z

    if-nez v1, :cond_1

    .line 51
    invoke-static {p0}, Lgbsdk/common/host/aboo;->af(Landroid/content/Context;)V

    .line 52
    sput-boolean v0, Lgbsdk/common/host/aboo;->yc:Z

    .line 54
    :cond_1
    invoke-static {p0}, Lgbsdk/common/host/aboo;->ad(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lgbsdk/common/host/aboo;->bC(Ljava/lang/String;)Ljava/util/Map;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 55
    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_2

    const-string v0, "hume_channel_id"

    .line 56
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0

    :cond_2
    const-string p0, ""

    return-object p0
.end method

.method public static getVersion()Ljava/lang/String;
    .locals 1

    const-string v0, "1.1.0"

    return-object v0
.end method
