.class public final Lcom/bytedance/ttnet/utils/RetrofitUtils$1;
.super Ljava/lang/Object;
.source "RetrofitUtils.java"

# interfaces
.implements Lgbsdk/common/host/abjn;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/ttnet/utils/RetrofitUtils;->downloadFile(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lgbsdk/common/host/ablj;Ljava/lang/String;Lgbsdk/common/host/ablb;Ljava/util/List;[Ljava/lang/String;[I)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field final synthetic aKt:Ljava/lang/String;

.field final synthetic aKu:Lcom/bytedance/retrofit2/Call;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/bytedance/retrofit2/Call;)V
    .locals 0

    .line 228
    iput-object p1, p0, Lcom/bytedance/ttnet/utils/RetrofitUtils$1;->aKt:Ljava/lang/String;

    iput-object p2, p0, Lcom/bytedance/ttnet/utils/RetrofitUtils$1;->aKu:Lcom/bytedance/retrofit2/Call;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abort()V
    .locals 1

    .line 242
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/ttnet/utils/RetrofitUtils$1;->aKu:Lcom/bytedance/retrofit2/Call;

    if-eqz v0, :cond_0

    .line 243
    iget-object v0, p0, Lcom/bytedance/ttnet/utils/RetrofitUtils$1;->aKu:Lcom/bytedance/retrofit2/Call;

    invoke-interface {v0}, Lcom/bytedance/retrofit2/Call;->cancel()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_0
    return-void
.end method

.method public bu()Ljava/net/URI;
    .locals 1

    .line 232
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/ttnet/utils/RetrofitUtils$1;->aKt:Ljava/lang/String;

    invoke-static {v0}, Lcom/bytedance/frameworks/baselib/network/http/util/URIUtils;->safeCreateUri(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const/4 v0, 0x0

    return-object v0
.end method
