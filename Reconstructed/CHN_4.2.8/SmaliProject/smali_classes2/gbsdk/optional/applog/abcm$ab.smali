.class public Lgbsdk/optional/applog/abcm$ab;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgbsdk/optional/applog/abcm;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lgbsdk/optional/applog/abcm;


# direct methods
.method public constructor <init>(Lgbsdk/optional/applog/abcm;)V
    .locals 0

    iput-object p1, p0, Lgbsdk/optional/applog/abcm$ab;->a:Lgbsdk/optional/applog/abcm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    invoke-static {}, Lcom/bytedance/applog/log/LoggerImpl;->global()Lcom/bytedance/applog/log/IAppLogLogger;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x1

    const-string v3, "Oaid#init switch thread"

    invoke-interface {v0, v2, v3, v1}, Lcom/bytedance/applog/log/IAppLogLogger;->debug(ILjava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lgbsdk/optional/applog/abcm$ab;->a:Lgbsdk/optional/applog/abcm;

    invoke-static {v0}, Lgbsdk/optional/applog/abcm;->a(Lgbsdk/optional/applog/abcm;)V

    return-void
.end method
