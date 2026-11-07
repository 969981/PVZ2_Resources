.class public Lgbsdk/common/host/abpt$2;
.super Lgbsdk/common/host/abpo;
.source "PatchManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgbsdk/common/host/abpt;->b(Ljava/util/List;Lcom/meituan/robust/PatchExecutor$PatchExecuteListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic wi:Lgbsdk/common/host/abpt;


# direct methods
.method constructor <init>(Lgbsdk/common/host/abpt;)V
    .locals 0

    .line 218
    iput-object p1, p0, Lgbsdk/common/host/abpt$2;->wi:Lgbsdk/common/host/abpt;

    invoke-direct {p0}, Lgbsdk/common/host/abpo;-><init>()V

    return-void
.end method


# virtual methods
.method protected dd()Losdk/okhttp3/OkHttpClient;
    .locals 4

    .line 221
    new-instance v0, Losdk/okhttp3/OkHttpClient$Builder;

    invoke-direct {v0}, Losdk/okhttp3/OkHttpClient$Builder;-><init>()V

    .line 222
    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/32 v2, 0xea60

    invoke-virtual {v0, v2, v3, v1}, Losdk/okhttp3/OkHttpClient$Builder;->connectTimeout(JLjava/util/concurrent/TimeUnit;)Losdk/okhttp3/OkHttpClient$Builder;

    .line 223
    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v1}, Losdk/okhttp3/OkHttpClient$Builder;->readTimeout(JLjava/util/concurrent/TimeUnit;)Losdk/okhttp3/OkHttpClient$Builder;

    const/4 v1, 0x1

    .line 224
    invoke-virtual {v0, v1}, Losdk/okhttp3/OkHttpClient$Builder;->followRedirects(Z)Losdk/okhttp3/OkHttpClient$Builder;

    .line 225
    invoke-virtual {v0}, Losdk/okhttp3/OkHttpClient$Builder;->build()Losdk/okhttp3/OkHttpClient;

    move-result-object v0

    return-object v0
.end method
