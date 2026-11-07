.class public final Lgbsdk/optional/applog/abbq$ab;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgbsdk/optional/applog/abbq;-><init>(Lcom/bytedance/applog/InitConfig;Landroid/content/Context;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lcom/bytedance/applog/store/kv/IKVStore;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lcom/bytedance/applog/InitConfig;

.field public final synthetic b:Landroid/content/Context;

.field public final synthetic c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/bytedance/applog/InitConfig;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lgbsdk/optional/applog/abbq$ab;->a:Lcom/bytedance/applog/InitConfig;

    iput-object p2, p0, Lgbsdk/optional/applog/abbq$ab;->b:Landroid/content/Context;

    iput-object p3, p0, Lgbsdk/optional/applog/abbq$ab;->c:Ljava/lang/String;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object v0, p0, Lgbsdk/optional/applog/abbq$ab;->a:Lcom/bytedance/applog/InitConfig;

    iget-object v1, p0, Lgbsdk/optional/applog/abbq$ab;->b:Landroid/content/Context;

    iget-object v2, p0, Lgbsdk/optional/applog/abbq$ab;->c:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lgbsdk/optional/applog/abeb;->a(Lcom/bytedance/applog/InitConfig;Landroid/content/Context;Ljava/lang/String;)Lcom/bytedance/applog/store/kv/IKVStore;

    move-result-object v0

    return-object v0
.end method
