.class public final synthetic Lgbsdk/optional/applog/abia$ac;
.super Lkotlin/jvm/internal/FunctionReferenceImpl;
.source "AppLogEventHandler.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgbsdk/optional/applog/abia;->addParamsInfo(Ljava/lang/String;Lcom/bytedance/ttgame/tob/optional/applog/api/IAppLogEventHandler$IParamsAddHandler;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1001
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/FunctionReferenceImpl;",
        "Lkotlin/jvm/functions/Function0<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x1,
        0x6,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static a:Lcom/meituan/robust/ChangeQuickRedirect;


# direct methods
.method constructor <init>(Ljava/lang/Object;)V
    .locals 7

    const-class v3, Lcom/bytedance/ttgame/tob/optional/applog/api/IAppLogEventHandler$IParamsAddHandler;

    const/4 v1, 0x0

    const-string v4, "getParamsValue"

    const-string v5, "getParamsValue()Ljava/lang/Object;"

    const/4 v6, 0x0

    move-object v0, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 4

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    sget-object v2, Lgbsdk/optional/applog/abia$ac;->a:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "60cc89a71b6c0068a04f18a454609993"

    invoke-static {v1, p0, v2, v0, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/meituan/robust/PatchProxyResult;->result:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Object;

    return-object v0

    .line 58
    :cond_0
    iget-object v0, p0, Lgbsdk/optional/applog/abia$ac;->receiver:Ljava/lang/Object;

    check-cast v0, Lcom/bytedance/ttgame/tob/optional/applog/api/IAppLogEventHandler$IParamsAddHandler;

    invoke-interface {v0}, Lcom/bytedance/ttgame/tob/optional/applog/api/IAppLogEventHandler$IParamsAddHandler;->getParamsValue()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
