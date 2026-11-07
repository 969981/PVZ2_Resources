.class public Lgbsdk/optional/applog/abhn;
.super Lgbsdk/optional/applog/abho;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgbsdk/optional/applog/abho<",
        "Lgbsdk/optional/applog/abew;",
        ">;"
    }
.end annotation


# static fields
.field public static a:Lcom/meituan/robust/ChangeQuickRedirect;


# instance fields
.field public final e:Lgbsdk/optional/applog/abhv;

.field public final f:Lgbsdk/optional/applog/abhu;


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "com.hihonor.id"

    invoke-direct {p0, v0}, Lgbsdk/optional/applog/abho;-><init>(Ljava/lang/String;)V

    new-instance v0, Lgbsdk/optional/applog/abhv;

    invoke-direct {v0}, Lgbsdk/optional/applog/abhv;-><init>()V

    iput-object v0, p0, Lgbsdk/optional/applog/abhn;->e:Lgbsdk/optional/applog/abhv;

    new-instance v0, Lgbsdk/optional/applog/abhu;

    invoke-direct {v0}, Lgbsdk/optional/applog/abhu;-><init>()V

    iput-object v0, p0, Lgbsdk/optional/applog/abhn;->f:Lgbsdk/optional/applog/abhu;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    const-string v0, "HONOR"

    return-object v0
.end method

.method public b(Landroid/content/Context;)Lgbsdk/optional/applog/abfa$ab;
    .locals 5

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    sget-object v3, Lgbsdk/optional/applog/abhn;->a:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v4, "ff34c031e14c9943100b02c95381605d"

    invoke-static {v1, p0, v3, v2, v4}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object p1, v1, Lcom/meituan/robust/PatchProxyResult;->result:Ljava/lang/Object;

    check-cast p1, Lgbsdk/optional/applog/abfa$ab;

    return-object p1

    :cond_0
    invoke-virtual {p0, p1}, Lgbsdk/optional/applog/abhn;->c(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0}, Lgbsdk/optional/applog/abhn;->b()Lgbsdk/optional/applog/abfo$ac;

    move-result-object v3

    new-instance v4, Lgbsdk/optional/applog/abfo;

    invoke-direct {v4, p1, v1, v3}, Lgbsdk/optional/applog/abfo;-><init>(Landroid/content/Context;Landroid/content/Intent;Lgbsdk/optional/applog/abfo$ac;)V

    invoke-virtual {v4}, Lgbsdk/optional/applog/abfo;->a()Ljava/lang/Object;

    new-instance p1, Lgbsdk/optional/applog/abfa$ab;

    invoke-direct {p1}, Lgbsdk/optional/applog/abfa$ab;-><init>()V

    iget-object v1, p0, Lgbsdk/optional/applog/abhn;->e:Lgbsdk/optional/applog/abhv;

    .line 1
    iget-object v1, v1, Lgbsdk/optional/applog/abhv;->c:Ljava/lang/String;

    .line 2
    iput-object v1, p1, Lgbsdk/optional/applog/abfa$ab;->b:Ljava/lang/String;

    iget-object v1, p0, Lgbsdk/optional/applog/abhn;->f:Lgbsdk/optional/applog/abhu;

    .line 3
    iget-boolean v1, v1, Lgbsdk/optional/applog/abhu;->c:Z

    .line 4
    iput-boolean v1, p1, Lgbsdk/optional/applog/abfa$ab;->c:Z

    invoke-static {}, Lcom/bytedance/applog/log/LoggerImpl;->global()Lcom/bytedance/applog/log/IAppLogLogger;

    move-result-object v1

    new-array v0, v0, [Ljava/lang/Object;

    const-string v3, "getOaid "

    invoke-static {v3}, Lgbsdk/optional/applog/ab;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lgbsdk/optional/applog/abfa$ab;->b:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    const-string v2, "honor# "

    invoke-interface {v1, v2, v0}, Lcom/bytedance/applog/log/IAppLogLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    return-object p1
.end method

.method public b()Lgbsdk/optional/applog/abfo$ac;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lgbsdk/optional/applog/abfo$ac<",
            "Lgbsdk/optional/applog/abew;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    sget-object v2, Lgbsdk/optional/applog/abhn;->a:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "04d8efb59d2e34037d4e63d7457754a6"

    invoke-static {v1, p0, v2, v0, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/meituan/robust/PatchProxyResult;->result:Ljava/lang/Object;

    check-cast v0, Lgbsdk/optional/applog/abfo$ac;

    return-object v0

    :cond_0
    new-instance v0, Lgbsdk/optional/applog/abhn$ab;

    invoke-direct {v0, p0}, Lgbsdk/optional/applog/abhn$ab;-><init>(Lgbsdk/optional/applog/abhn;)V

    return-object v0
.end method

.method public c(Landroid/content/Context;)Landroid/content/Intent;
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    sget-object p1, Lgbsdk/optional/applog/abhn;->a:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v2, "7d4256bf087bcc2b0177c88961cc75c9"

    invoke-static {v0, p0, p1, v1, v2}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p1, Lcom/meituan/robust/PatchProxyResult;->result:Ljava/lang/Object;

    check-cast p1, Landroid/content/Intent;

    return-object p1

    :cond_0
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string v0, "com.hihonor.id.HnOaIdService"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "com.hihonor.id"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    return-object p1
.end method
