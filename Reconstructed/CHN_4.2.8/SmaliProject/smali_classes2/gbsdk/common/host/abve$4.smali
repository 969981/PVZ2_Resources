.class public final Lgbsdk/common/host/abve$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/apm/applog/IDataObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgbsdk/common/host/abve;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic aLi:Lgbsdk/common/host/abve;


# direct methods
.method constructor <init>(Lgbsdk/common/host/abve;)V
    .locals 0

    .line 203
    iput-object p1, p0, Lgbsdk/common/host/abve$4;->aLi:Lgbsdk/common/host/abve;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAbVidsChange(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final onIdLoaded(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 206
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 207
    invoke-static {}, Lgbsdk/common/host/acam;->hY()Lgbsdk/common/host/acam;

    move-result-object p2

    invoke-virtual {p2, p1}, Lgbsdk/common/host/acam;->d(Ljava/lang/String;)V

    .line 208
    iget-object p1, p0, Lgbsdk/common/host/abve$4;->aLi:Lgbsdk/common/host/abve;

    invoke-static {p1}, Lgbsdk/common/host/abve;->a(Lgbsdk/common/host/abve;)V

    :cond_0
    return-void
.end method

.method public final onRemoteAbConfigGet(ZLorg/json/JSONObject;)V
    .locals 0

    return-void
.end method

.method public final onRemoteConfigGet(ZLorg/json/JSONObject;)V
    .locals 0

    return-void
.end method

.method public final onRemoteIdGet(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 214
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 215
    invoke-static {}, Lgbsdk/common/host/acam;->hY()Lgbsdk/common/host/acam;

    move-result-object p1

    invoke-virtual {p1, p3}, Lgbsdk/common/host/acam;->d(Ljava/lang/String;)V

    .line 216
    iget-object p1, p0, Lgbsdk/common/host/abve$4;->aLi:Lgbsdk/common/host/abve;

    invoke-static {p1}, Lgbsdk/common/host/abve;->a(Lgbsdk/common/host/abve;)V

    :cond_0
    return-void
.end method
