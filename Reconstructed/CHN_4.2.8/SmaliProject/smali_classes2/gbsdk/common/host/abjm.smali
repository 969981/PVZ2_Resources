.class public Lgbsdk/common/host/abjm;
.super Ljava/lang/Object;
.source "CommonParamConfig.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgbsdk/common/host/abjm$ab;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "CommonParamConfig"

.field public static final hI:Ljava/lang/String; = "equal_match"

.field public static final hJ:Ljava/lang/String; = "prefix_match"

.field public static final hK:Ljava/lang/String; = "pattern_match"

.field private static final hL:Ljava/lang/String; = "host_group"

.field private static final hM:Ljava/lang/String; = "min_params_exclude"

.field private static final hN:Ljava/lang/String; = "L0_path"

.field private static final hO:Ljava/lang/String; = "L1_path"

.field private static final hP:Ljava/lang/String; = "equal_group"

.field private static final hQ:Ljava/lang/String; = "prefix_group"

.field private static final hR:Ljava/lang/String; = "pattern_group"


# instance fields
.field public hA:Ljava/util/concurrent/CopyOnWriteArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public hB:Ljava/util/concurrent/CopyOnWriteArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public hC:Ljava/util/concurrent/CopyOnWriteArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public hD:Ljava/util/concurrent/CopyOnWriteArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArraySet<",
            "Ljava/util/regex/Pattern;",
            ">;"
        }
    .end annotation
.end field

.field public hE:Ljava/util/concurrent/CopyOnWriteArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public hF:Ljava/util/concurrent/CopyOnWriteArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public hG:Ljava/util/concurrent/CopyOnWriteArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArraySet<",
            "Ljava/util/regex/Pattern;",
            ">;"
        }
    .end annotation
.end field

.field public hH:Ljava/util/concurrent/CopyOnWriteArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public volatile hy:Z

.field public volatile hz:Z

.field private volatile mLocalConfig:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lgbsdk/common/host/abjm$ab;)V
    .locals 1

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iget-boolean v0, p1, Lgbsdk/common/host/abjm$ab;->hy:Z

    iput-boolean v0, p0, Lgbsdk/common/host/abjm;->hy:Z

    .line 48
    iget-boolean v0, p1, Lgbsdk/common/host/abjm$ab;->hS:Z

    iput-boolean v0, p0, Lgbsdk/common/host/abjm;->hz:Z

    .line 49
    iget-object v0, p1, Lgbsdk/common/host/abjm$ab;->hA:Ljava/util/concurrent/CopyOnWriteArraySet;

    iput-object v0, p0, Lgbsdk/common/host/abjm;->hA:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 50
    iget-object v0, p1, Lgbsdk/common/host/abjm$ab;->hB:Ljava/util/concurrent/CopyOnWriteArraySet;

    iput-object v0, p0, Lgbsdk/common/host/abjm;->hB:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 51
    iget-object v0, p1, Lgbsdk/common/host/abjm$ab;->hC:Ljava/util/concurrent/CopyOnWriteArraySet;

    iput-object v0, p0, Lgbsdk/common/host/abjm;->hC:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 52
    iget-object v0, p1, Lgbsdk/common/host/abjm$ab;->hD:Ljava/util/concurrent/CopyOnWriteArraySet;

    iput-object v0, p0, Lgbsdk/common/host/abjm;->hD:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 53
    iget-object v0, p1, Lgbsdk/common/host/abjm$ab;->hE:Ljava/util/concurrent/CopyOnWriteArraySet;

    iput-object v0, p0, Lgbsdk/common/host/abjm;->hE:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 54
    iget-object v0, p1, Lgbsdk/common/host/abjm$ab;->hF:Ljava/util/concurrent/CopyOnWriteArraySet;

    iput-object v0, p0, Lgbsdk/common/host/abjm;->hF:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 55
    iget-object v0, p1, Lgbsdk/common/host/abjm$ab;->hG:Ljava/util/concurrent/CopyOnWriteArraySet;

    iput-object v0, p0, Lgbsdk/common/host/abjm;->hG:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 56
    iget-object p1, p1, Lgbsdk/common/host/abjm$ab;->hH:Ljava/util/concurrent/CopyOnWriteArraySet;

    iput-object p1, p0, Lgbsdk/common/host/abjm;->hH:Ljava/util/concurrent/CopyOnWriteArraySet;

    return-void
.end method

.method private static a(Lorg/json/JSONArray;Ljava/util/Set;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            "Ljava/util/Set<",
            "Ljava/util/regex/Pattern;",
            ">;)V"
        }
    .end annotation

    if-eqz p0, :cond_3

    if-nez p1, :cond_0

    goto :goto_2

    .line 264
    :cond_0
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 265
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/regex/Pattern;

    .line 266
    invoke-virtual {v2}, Ljava/util/regex/Pattern;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 270
    :goto_1
    :try_start_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 271
    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 272
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    const/4 v3, 0x2

    .line 273
    invoke-static {v2, v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :catch_0
    :cond_3
    :goto_2
    return-void
.end method

.method private static b(Lorg/json/JSONArray;Ljava/util/Set;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-eqz p0, :cond_1

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    .line 287
    :goto_0
    :try_start_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 288
    invoke-virtual {p0, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 289
    invoke-interface {p1, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    :cond_1
    :goto_1
    return-void
.end method

.method public static bv()Lgbsdk/common/host/abjm$ab;
    .locals 1

    .line 60
    new-instance v0, Lgbsdk/common/host/abjm$ab;

    invoke-direct {v0}, Lgbsdk/common/host/abjm$ab;-><init>()V

    return-object v0
.end method

.method public static e(Ljava/util/List;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "*>;)Z"
        }
    .end annotation

    if-eqz p0, :cond_1

    .line 297
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public onNetConfigChanged(Ljava/lang/String;)V
    .locals 6

    .line 225
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onNetConfigChanged config: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CommonParamConfig"

    invoke-static {v1, v0}, Lcom/bytedance/common/utility/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 230
    :cond_0
    iget-object v0, p0, Lgbsdk/common/host/abjm;->mLocalConfig:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lgbsdk/common/host/abjm;->mLocalConfig:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p1, "Config is same with local config, do not parse."

    .line 231
    invoke-static {v1, p1}, Lcom/bytedance/common/utility/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 236
    :cond_1
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 238
    iput-object p1, p0, Lgbsdk/common/host/abjm;->mLocalConfig:Ljava/lang/String;

    const-string p1, "host_group"

    .line 239
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    iget-object v1, p0, Lgbsdk/common/host/abjm;->hA:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-static {p1, v1}, Lgbsdk/common/host/abjm;->b(Lorg/json/JSONArray;Ljava/util/Set;)V

    const-string p1, "min_params_exclude"

    .line 240
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    iget-object v1, p0, Lgbsdk/common/host/abjm;->hH:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-static {p1, v1}, Lgbsdk/common/host/abjm;->b(Lorg/json/JSONArray;Ljava/util/Set;)V

    const-string p1, "L0_path"

    .line 241
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v1, "pattern_group"

    const-string v2, "prefix_group"

    const-string v3, "equal_group"

    if-eqz p1, :cond_2

    .line 243
    :try_start_1
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    iget-object v5, p0, Lgbsdk/common/host/abjm;->hB:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-static {v4, v5}, Lgbsdk/common/host/abjm;->b(Lorg/json/JSONArray;Ljava/util/Set;)V

    .line 244
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    iget-object v5, p0, Lgbsdk/common/host/abjm;->hC:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-static {v4, v5}, Lgbsdk/common/host/abjm;->b(Lorg/json/JSONArray;Ljava/util/Set;)V

    .line 245
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    iget-object v4, p0, Lgbsdk/common/host/abjm;->hD:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-static {p1, v4}, Lgbsdk/common/host/abjm;->a(Lorg/json/JSONArray;Ljava/util/Set;)V

    :cond_2
    const-string p1, "L1_path"

    .line 248
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 250
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    iget-object v3, p0, Lgbsdk/common/host/abjm;->hE:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-static {v0, v3}, Lgbsdk/common/host/abjm;->b(Lorg/json/JSONArray;Ljava/util/Set;)V

    .line 251
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    iget-object v2, p0, Lgbsdk/common/host/abjm;->hF:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-static {v0, v2}, Lgbsdk/common/host/abjm;->b(Lorg/json/JSONArray;Ljava/util/Set;)V

    .line 252
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    iget-object v0, p0, Lgbsdk/common/host/abjm;->hG:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-static {p1, v0}, Lgbsdk/common/host/abjm;->a(Lorg/json/JSONArray;Ljava/util/Set;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    :cond_3
    return-void
.end method
