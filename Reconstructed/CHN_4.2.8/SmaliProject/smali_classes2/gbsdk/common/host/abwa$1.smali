.class public final Lgbsdk/common/host/abwa$1;
.super Ljava/lang/Object;
.source "HttpURLConnClient.java"

# interfaces
.implements Lgbsdk/common/host/abjn;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgbsdk/common/host/abwa;->a(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lgbsdk/common/host/abwd;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field final synthetic aID:Ljava/lang/String;

.field final synthetic aIE:Ljava/net/HttpURLConnection;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/net/HttpURLConnection;)V
    .locals 0

    .line 121
    iput-object p1, p0, Lgbsdk/common/host/abwa$1;->aID:Ljava/lang/String;

    iput-object p2, p0, Lgbsdk/common/host/abwa$1;->aIE:Ljava/net/HttpURLConnection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abort()V
    .locals 1

    .line 135
    :try_start_0
    iget-object v0, p0, Lgbsdk/common/host/abwa$1;->aIE:Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_0

    .line 136
    iget-object v0, p0, Lgbsdk/common/host/abwa$1;->aIE:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_0
    return-void
.end method

.method public bu()Ljava/net/URI;
    .locals 1

    .line 125
    :try_start_0
    iget-object v0, p0, Lgbsdk/common/host/abwa$1;->aID:Ljava/lang/String;

    invoke-static {v0}, Lcom/bytedance/frameworks/baselib/network/http/util/URIUtils;->safeCreateUri(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const/4 v0, 0x0

    return-object v0
.end method
