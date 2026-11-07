.class public Lgbsdk/common/host/abqn;
.super Ljava/lang/Object;
.source "PatchSharePref.java"


# static fields
.field private static final vE:Ljava/lang/String; = "patch_sdk_key"

.field private static final vQ:Ljava/lang/String; = ";"

.field private static xc:Ljava/lang/String;

.field private static xd:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static xe:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 38
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lgbsdk/common/host/abqn;->xd:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static X(Landroid/content/Context;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lgbsdk/common/host/abqo;",
            ">;"
        }
    .end annotation

    if-eqz p0, :cond_a

    .line 61
    invoke-static {}, Lgbsdk/common/host/abqn;->di()V

    .line 62
    sget-object v0, Lgbsdk/common/host/abqn;->xd:Ljava/util/Map;

    if-eqz v0, :cond_9

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_9

    const-string v0, "Frankie"

    const-string v1, "getPatchesFromSp"

    .line 65
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    sget-object v0, Lgbsdk/common/host/abqn;->xc:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v2, "patch_sdk_key"

    const-string v3, ""

    .line 67
    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 68
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 69
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0

    :cond_0
    const-string v2, ";"

    .line 71
    invoke-static {v0, v2}, Lgbsdk/common/host/abqh;->G(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 72
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    .line 75
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 77
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 78
    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_6

    .line 79
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lgbsdk/common/host/abqo;

    if-eqz v4, :cond_2

    .line 80
    invoke-virtual {v4}, Lgbsdk/common/host/abqo;->getName()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_3

    goto :goto_0

    .line 83
    :cond_3
    invoke-virtual {v4}, Lgbsdk/common/host/abqo;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lgbsdk/common/host/abqh;->bn(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v6

    if-nez v6, :cond_4

    goto :goto_0

    .line 87
    :cond_4
    iget-object v7, v6, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v7, Ljava/lang/String;

    .line 88
    iget-object v6, v6, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    if-nez v7, :cond_5

    goto :goto_0

    .line 92
    :cond_5
    sget-object v8, Lgbsdk/common/host/abqn;->xd:Ljava/util/Map;

    invoke-interface {v8, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 93
    invoke-static {v6, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 95
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    .line 96
    invoke-virtual {v4}, Lgbsdk/common/host/abqo;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x1

    goto :goto_0

    :cond_6
    if-eqz v1, :cond_7

    .line 100
    invoke-static {p0, v0, v5}, Lgbsdk/common/host/abqn;->a(Landroid/content/Context;Ljava/util/List;Z)V

    .line 101
    invoke-interface {v3}, Ljava/util/Set;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_7

    .line 102
    sget-object p0, Lgbsdk/common/host/abqn;->xc:Ljava/lang/String;

    invoke-static {p0, v3}, Lgbsdk/common/host/aboz;->a(Ljava/lang/String;Ljava/util/Set;)V

    :cond_7
    return-object v0

    .line 73
    :cond_8
    :goto_1
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0

    .line 63
    :cond_9
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "UPDATE_VERSION_CODE could not be null"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 59
    :cond_a
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "Context could not be null"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static Y(Landroid/content/Context;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lgbsdk/common/host/abqo;",
            ">;"
        }
    .end annotation

    const-string v0, ";"

    const-string v1, ""

    const-string v2, "patch_sdk_key"

    const-string v3, "Frankie"

    if-nez p0, :cond_0

    .line 123
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0

    :cond_0
    :try_start_0
    const-string v4, "getPatchesFromProvider"

    .line 126
    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "content://"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ".frankie"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 128
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "query"

    const/4 v7, 0x0

    invoke-virtual {v5, v4, v6, v7, v7}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 131
    invoke-virtual {v4, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_1
    move-object v4, v1

    .line 133
    :goto_0
    invoke-static {v4, v0}, Lgbsdk/common/host/abqh;->G(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception v4

    const-string v5, "getPatchesFromProvider failed"

    .line 135
    invoke-static {v3, v5, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 138
    :try_start_1
    sget-object v4, Lgbsdk/common/host/abqn;->xc:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-virtual {p0, v4, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 139
    invoke-interface {p0, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 140
    invoke-static {p0, v0}, Lgbsdk/common/host/abqh;->G(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-object p0

    :catchall_1
    move-exception p0

    .line 142
    invoke-static {v3, v5, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 143
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method

.method public static Z(Landroid/content/Context;)V
    .locals 2

    .line 173
    sget-object v0, Lgbsdk/common/host/abqn;->xc:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 174
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "patch_sdk_key"

    const-string v1, ""

    .line 175
    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 176
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/util/List;Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lgbsdk/common/host/abqo;",
            ">;Z)V"
        }
    .end annotation

    if-nez p2, :cond_0

    return-void

    :cond_0
    if-eqz p0, :cond_3

    .line 157
    sget-object p2, Lgbsdk/common/host/abqn;->xc:Ljava/lang/String;

    const/4 v0, 0x0

    invoke-virtual {p0, p2, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p2

    const-string v1, ";"

    .line 158
    invoke-static {p1, v1}, Lgbsdk/common/host/abqh;->b(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "patch_sdk_key"

    const-string v2, ""

    .line 159
    invoke-interface {p2, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    return-void

    .line 164
    :cond_1
    invoke-interface {p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    if-nez p1, :cond_2

    move-object p1, v2

    .line 165
    :cond_2
    invoke-interface {p2, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 166
    invoke-interface {p2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 168
    invoke-static {p0, v0}, Lgbsdk/common/host/abqn;->c(Landroid/content/Context;Z)V

    const-string p0, "Frankie"

    const-string p1, "savePatchesList, sp changed! notifySubProcess"

    .line 169
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 154
    :cond_3
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "Context could not be null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static a(Ljava/util/List;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lgbsdk/common/host/abqo;",
            ">;Z)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x0

    if-eqz p0, :cond_1

    .line 225
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_1

    .line 226
    sput-boolean p1, Lgbsdk/common/host/abqn;->xe:Z

    return-void

    :cond_1
    if-eqz p0, :cond_3

    .line 230
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 231
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_4

    .line 232
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgbsdk/common/host/abqo;

    iget-boolean v0, v0, Lgbsdk/common/host/abqo;->isSupportSubProcess:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    .line 233
    sput-boolean v0, Lgbsdk/common/host/abqn;->xe:Z

    :cond_2
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 239
    :cond_3
    sput-boolean p1, Lgbsdk/common/host/abqn;->xe:Z

    .line 241
    :cond_4
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "checkNeedNotifySubProcess:"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean p1, Lgbsdk/common/host/abqn;->xe:Z

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Frankie"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static aa(Landroid/content/Context;)Z
    .locals 3

    const-string v0, "Frankie"

    const/4 v1, 0x0

    .line 270
    :try_start_0
    sget-object v2, Lgbsdk/common/host/abqn;->xc:Ljava/lang/String;

    invoke-virtual {p0, v2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    const-string p0, "try to get sp successfully!"

    .line 271
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p0

    const-string v2, "try to get sp failed"

    .line 274
    invoke-static {v0, v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v1
.end method

.method public static b(Landroid/content/Context;Z)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Z)",
            "Ljava/util/List<",
            "Lgbsdk/common/host/abqo;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 48
    invoke-static {p0}, Lgbsdk/common/host/abqn;->X(Landroid/content/Context;)Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 50
    :cond_0
    invoke-static {p0}, Lgbsdk/common/host/abqn;->Y(Landroid/content/Context;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static c(Landroid/content/Context;Z)V
    .locals 2

    if-nez p1, :cond_0

    if-nez p1, :cond_1

    .line 188
    :try_start_0
    sget-boolean p1, Lgbsdk/common/host/abqn;->xe:Z

    if-eqz p1, :cond_1

    .line 189
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "content://"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ".frankie"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 190
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "notify"

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1, v1}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "Frankie"

    const-string p1, "sharePref notifySubProcess error!"

    .line 193
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method

.method private static di()V
    .locals 1

    .line 110
    sget-object v0, Lgbsdk/common/host/abqn;->xd:Ljava/util/Map;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 111
    :cond_0
    invoke-static {}, Lcom/bytedance/frankie/Frankie;->getInstance()Lcom/bytedance/frankie/Frankie;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/frankie/Frankie;->getSdkVersionMap()Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lgbsdk/common/host/abqn;->xd:Ljava/util/Map;

    .line 113
    :cond_1
    sget-object v0, Lgbsdk/common/host/abqn;->xd:Ljava/util/Map;

    if-nez v0, :cond_2

    .line 114
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lgbsdk/common/host/abqn;->xd:Ljava/util/Map;

    :cond_2
    return-void
.end method

.method public static init()V
    .locals 1

    .line 43
    invoke-static {}, Lcom/bytedance/frankie/Frankie;->getInstance()Lcom/bytedance/frankie/Frankie;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/frankie/Frankie;->getFrankieConfig()Lcom/bytedance/frankie/IFrankieConfig;

    move-result-object v0

    invoke-interface {v0}, Lcom/bytedance/frankie/IFrankieConfig;->getPatchDirName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lgbsdk/common/host/abqn;->xc:Ljava/lang/String;

    return-void
.end method

.method public static p(Ljava/util/List;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lgbsdk/common/host/abqo;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x1

    if-eqz p0, :cond_0

    .line 204
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-gtz v1, :cond_0

    return v0

    :cond_0
    const-string v1, "Frankie"

    if-eqz p0, :cond_2

    .line 209
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lgbsdk/common/host/abqo;

    if-eqz v2, :cond_1

    .line 210
    iget-boolean v2, v2, Lgbsdk/common/host/abqo;->isSupportSubProcess:Z

    if-eqz v2, :cond_1

    const-string p0, "isSupportSubProcess:true"

    .line 211
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_2
    const-string p0, "isSupportSubProcess:false"

    .line 216
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public static q(Ljava/util/List;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lgbsdk/common/host/abqo;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x1

    const-string v1, "Frankie"

    if-eqz p0, :cond_0

    .line 246
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-gtz v2, :cond_0

    const-string p0, "list.size()==0;isAsyncLoad:true"

    .line 247
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_0
    if-eqz p0, :cond_2

    .line 251
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lgbsdk/common/host/abqo;

    if-eqz v2, :cond_1

    .line 252
    iget-boolean v2, v2, Lgbsdk/common/host/abqo;->xb:Z

    if-nez v2, :cond_1

    const-string p0, "isAsyncLoad:false"

    .line 253
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    :cond_2
    const-string p0, "isAsyncLoad:true"

    .line 258
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method
